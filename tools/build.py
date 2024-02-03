import subprocess       # for running shell commands
import shutil           # for copying files
import sys              # for exiting the script with an exit code
import re               # for regular expressions when reading symbols file
import os               # for filepath manipulation, getting the file size, reading environment variables
import difflib          # for file diffs
import image            # for creating SSD

# configuration parameters
original_bin_filepaths  = [ "original/___1___" ]
ssd_filepath            = "Boulder.ssd"

aux_files_to_copy=(
    "Code",
    "Screen",
    "Boulder",
)

boot_option = 3     # 0=None, 1=Load, 2=Run, 3=Exec

# generic code
def make_absolute_filepath(relative_filepath):
    # Get path to current working directory
    dirname = os.getcwd()
    return os.path.join(dirname, relative_filepath)

def exit(code, message):
    if code != 0:
        print("ERROR: " + message + " (exit code " + str(code) + ")")
    sys.exit(code)

def safe_copy(source, destination):
    try:
        shutil.copy(source, destination)
    except FileNotFoundError:
        exit(-1, "Could not find file '" + source + "' to copy to '" + destination + "'")
    except:
        exit(-2, "Could not copy file '" + source + "' to '" + destination + "'")

def run(args, error_message, cwd=None):
    # For debugging...
    # print(args)
    p = subprocess.run(args, capture_output=True, cwd=cwd)
    if p.returncode != 0:
        print(f"COMMAND: {' '.join(args)}")
        print(p.stderr.decode())
        exit(p.returncode, error_message)
    return p.stdout

def make_directory(directory):
    run(["mkdir", "-p", directory], "Couldn't create build/disk directory")

# Copy files to disk
def copy_files(files_to_copy):
    for file in files_to_copy:
        safe_copy("original/" + file, "build/disk/" + file)
        safe_copy("original/" + file + ".inf", "build/disk/" + file + ".inf")

def disassemble_binary(python_filename, asm_filename):
    args = ["python3", python_filename, "-a"]
    result_bytes = run(args, "disassemble failed")
    with open(asm_filename, 'wb') as f:
        f.write(result_bytes)

def make_inf(host_filename, bbc_filename, load_address, exec_address, size):
    # Create INF file for !BOOT
    inf_text = r"$." + bbc_filename + "     FFFF" + load_address + " FFFF" + exec_address + " " + hex(size)[2:]
    with open("build/disk/" + host_filename + ".INF", 'w') as f:
        f.write(inf_text)

def create_ssd(disk_title, ssd_filepath, boot_option):
    disk_type = 0       # 0=Acorn DFS or Watford DFS <= 256K
                        # 1=Watford DFS > 256K
                        # 2=Angus Duggan's HDFS(SS)
                        # 3=Angus Duggan's HDFS(DS)
    # 80 tracks, 10 sectors per track
    num_sectors = 800

    ssd_bytes = bytearray(disk_title.upper()[0:7], 'Latin-1')
    for i in range(len(disk_title), 0x106):
        ssd_bytes.append(0)
    ssd_bytes.append((boot_option * 16) + (disk_type * 4) + (num_sectors // 256))
    ssd_bytes.append(num_sectors & 255)
    for i in range(0x108, 0x200):
        ssd_bytes.append(0)
    with open(ssd_filepath, 'wb') as f:
        f.write(ssd_bytes)

def assemble_binary(asm_filepath, dest_filepath):
    # Assemble
    asm_filename = os.path.basename(asm_filepath)
    symbols_filepath = "build/" + asm_filename + "_symbols.txt"
    dest_filename = os.path.basename(dest_filepath)
    bbc_bin_filename = convert_to_bbc_filename(dest_filename)

    args = ["acme",
            "--symbollist", symbols_filepath,
            "-r", "build/" + asm_filename + "_report.txt",
            "-o", dest_filepath,
            asm_filepath]
    run(args, "assembly failed")

    run(["sort", "-o", symbols_filepath, symbols_filepath], "sort failed")

    # Get the 'entry_point' symbol
    # pattern1 = r".*entry_point\t.*\$([0-9a-f][0-9a-f][0-9a-f][0-9a-f])"
    # records = open(symbols_filepath, 'r').readlines()
    # entry_point = -1
    # for line in records:
    #     x = re.search(pattern1, line)
    #     if x:
    #         entry_point = int(x.group(1), 16)
    # if entry_point < 0:
    #     exit(-1, "entry_point not found in symbols file '" + symbols_filepath + "'")

    # Create INF for destination file
    size = os.path.getsize(dest_filepath)
    make_inf(dest_filename, bbc_bin_filename, load_address, exec_address, size)


def prepare_disk(output_bin_filenames, bbc_bin_filename, ssd_filepath):
    if bbc_bin_filename != "":
        bbc_bin_filename = ":CHAIN \"BOULDER\""

    # Write !BOOT file
    boot_text = "*BASIC\rPAGE=&1900\r*FX21\rCLOSE#0" + bbc_bin_filename + "\r"
    with open("build/disk/!BOOT", 'w') as f:
        f.write(boot_text)

    # Create INF file for !BOOT
    size = len(boot_text)
    make_inf("!BOOT", "!BOOT", "FFFF", "FFFF", size)

    # Make an empty SSD with a title
    ssd_title, ssd_extension = os.path.splitext(os.path.basename(ssd_filepath))
    create_ssd(ssd_title, ssd_filepath, boot_option)

    # Add all appropriate files to the SSD
    disk_image = image.DiskImage()
    disk_image.set_disk(ssd_filepath)

    os.chdir("build/disk/")
    disk_image.insert("!BOOT")          # add !BOOT file
    for file in output_bin_filenames:
        disk_image.insert(file)         # add reassembled binary files
    for file in aux_files_to_copy:
        disk_image.insert(file)         # add auxiliary files
    os.chdir("../../")

def check_diffs(bin_filepath1, bin_filepath2):
    with open(bin_filepath1, 'rb') as f1:
        f1 = f1.read()
    with open(bin_filepath2, 'rb') as f2:
        f2 = f2.read()

    # Find and print the diff:
    e = difflib.Differ().compare(f1, f2)
    for i in e:
           if i.startswith("-"):         #if that char start with "-" is not a match
               print(i + "index is different")

def open_disk(ssd_filepath, emulator):
    if emulator == "b2":
        run(["osascript", "-e", "\"quit app 'b2 Debug'\""], "Could not run osascript to quit any existing b2 Debug instance")
        run(["sleep", "1"], "Could not wait for a second")
        run(["open", "-a", "b2 Debug", "--args", "-0", ssd_filepath, "-b"], "Could not launch b2 Debug")
    else:
        run(["open", ssd_filepath], "Could not launch SSD")

def read_inf(filepath):
    with open(filepath, 'r') as f:
        text = f.readlines()

    pattern_inf = r"(.*?) +([0-9a-fA-F]+) +([0-9a-fA-F]+)"
    load_address = ""
    exec_address = ""
    for line in text:
        x = re.search(pattern_inf, line)
        if x:
            load_address = hex(int(x.group(2), 16))[2:]
            exec_address = hex(int(x.group(3), 16))[2:]
    return (load_address, exec_address)

def convert_to_bbc_filename(host_filename):
    filename = host_filename.replace("#slash"   , "/")
    filename = filename.replace("#question"     , "?")
    filename = filename.replace("#less"         , "<")
    filename = filename.replace("#greater"      , ">")
    filename = filename.replace("#backslash"    , "\\")
    filename = filename.replace("#colon"        , ":")
    filename = filename.replace("#star"         , "*")
    filename = filename.replace("#bar"          , "|")
    filename = filename.replace("#quote"        , "\"")
    return filename

def post_process_binary(output_bin_filepath):
    pass
# Example, progressively EORing bytes in 'Thrust':
#    if output_bin_filepath.lower().endswith("thrust3"):
#        # Read file
#        with open(output_bin_filepath, 'rb') as f:
#            thrust3 = f.read()
#        thrust3 = bytearray(thrust3)
#        thrust3_out = bytearray()
#        thrust3_out[:] = thrust3
#
#        # Obfuscate bytes
#        load_addr = 0x1a00
#        for addr in range(0x1a00 - load_addr, 0x56ea - load_addr):
#            thrust3_out[addr + 1] ^= thrust3[addr]
#
#        # Write file
#        with open(output_bin_filepath, 'wb') as f:
#            f.write(thrust3_out)

ssd_filepath = make_absolute_filepath(ssd_filepath)
make_directory("build/disk")
copy_files(aux_files_to_copy)

output_bin_filenames = []
for file in original_bin_filepaths:
    output_bin_filename = os.path.basename(file)                        # e.g. 'ZALAGA#question'
    output_bin_filenames.append(output_bin_filename)
    output_bin_filename_no_extension, _ = os.path.splitext(output_bin_filename)
    output_bin_filepath = "build/disk/" + output_bin_filename           # e.g. 'build/disk/ZALAGA#question'
    bbc_bin_filename    = convert_to_bbc_filename(output_bin_filename)  # e.g. 'ZALAGA?'

    load_address, exec_address = read_inf(file + ".inf")

    asm_filepath = "source/" + output_bin_filename_no_extension + ".asm"
    py_filepath  = "source/" + output_bin_filename_no_extension + ".py"
    disassemble_binary(py_filepath, asm_filepath)
    assemble_binary(asm_filepath, output_bin_filepath)
    post_process_binary(output_bin_filepath)
    check_diffs(file, output_bin_filepath)

# Get BBC filename of file to execute on BOOT
if len(output_bin_filenames) > 0:
    bbc_bin_filename = convert_to_bbc_filename(os.path.basename(original_bin_filepaths[0]))
else:
    bbc_bin_filename = None

prepare_disk(output_bin_filenames, bbc_bin_filename, ssd_filepath)

#emulator = "b2" if os.environ['USER'] == "tobynelson" else "beebem"
#open_disk(ssd_filepath, emulator)
