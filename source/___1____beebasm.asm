;
; Disassembly of Boulderdash, by TobyLobster 2024
; This is a disassembly of the version from http://bbcmicro.co.uk/game.php?id=669
;
; File: ___1___
;

; Constants
inkey_key_b                            = 155
inkey_key_colon                        = 183
inkey_key_escape                       = 143
inkey_key_return                       = 182
inkey_key_slash                        = 151
inkey_key_space                        = 157
inkey_key_x                            = 189
inkey_key_z                            = 158
map_butterfly                          = 14
map_diamond                            = 4
map_earth                              = 1
map_earth_plus_firefly_4x4             = 9
map_exit                               = 6
map_explosion                          = 10
map_fungus                             = 7
map_horizontal_strip                   = 12
map_player1                            = 8
map_player2                            = 15
map_rock1                              = 5
map_rock2                              = 13
map_space                              = 0
map_titanium_wall                      = 3
map_vertical_strip                     = 11
map_wall                               = 2
opcode_dex                             = 202
opcode_inx                             = 232
opcode_lda_abs_y                       = 185
opcode_ldy_abs                         = 172
osbyte_flush_buffer_class              = 15
osbyte_inkey                           = 129
osbyte_read_adc_or_get_buffer_status   = 128
osword_read_clock                      = 1
osword_sound                           = 7
osword_write_clock                     = 2
osword_write_palette                   = 12
sprite_0                               = 50
sprite_1                               = 51
sprite_2                               = 52
sprite_3                               = 53
sprite_4                               = 54
sprite_5                               = 55
sprite_6                               = 56
sprite_7                               = 57
sprite_8                               = 58
sprite_9                               = 59
sprite_boulder1                        = 1
sprite_boulder2                        = 2
sprite_box                             = 9
sprite_butterfly1                      = 22
sprite_butterfly2                      = 23
sprite_butterfly3                      = 24
sprite_comma                           = 63
sprite_dash                            = 61
sprite_diamond1                        = 3
sprite_diamond2                        = 4
sprite_diamond3                        = 5
sprite_diamond4                        = 6
sprite_earth1                          = 29
sprite_earth2                          = 30
sprite_explosion1                      = 12
sprite_explosion2                      = 13
sprite_explosion3                      = 14
sprite_explosion4                      = 15
sprite_firefly1                        = 25
sprite_firefly2                        = 26
sprite_firefly3                        = 27
sprite_firefly4                        = 28
sprite_full_stop                       = 64
sprite_fungus1                         = 20
sprite_fungus2                         = 21
sprite_magic_wall1                     = 16
sprite_magic_wall2                     = 17
sprite_magic_wall3                     = 18
sprite_magic_wall4                     = 19
sprite_pathway                         = 31
sprite_rockford_blinking1              = 32
sprite_rockford_blinking2              = 33
sprite_rockford_blinking3              = 34
sprite_rockford_moving_down1           = 37
sprite_rockford_moving_down2           = 38
sprite_rockford_moving_down3           = 39
sprite_rockford_moving_left1           = 42
sprite_rockford_moving_left2           = 43
sprite_rockford_moving_left3           = 44
sprite_rockford_moving_left4           = 45
sprite_rockford_moving_right1          = 46
sprite_rockford_moving_right2          = 47
sprite_rockford_moving_right3          = 48
sprite_rockford_moving_right4          = 49
sprite_rockford_moving_up1             = 40
sprite_rockford_moving_up2             = 41
sprite_rockford_winking1               = 35
sprite_rockford_winking2               = 36
sprite_slash                           = 62
sprite_space                           = 0
sprite_titanium_wall1                  = 7
sprite_titanium_wall2                  = 8
sprite_wall1                           = 10
sprite_wall2                           = 11
sprite_white                           = 60
total_caves                            = 20

; Memory locations
l0000                                   = &0000
data_set_ptr_low                        = &0046
sound0_active_flag                      = &0046
data_set_ptr_high                       = &0047
sound1_active_flag                      = &0047
remember_y                              = &0048
sound2_active_flag                      = &0048
sound3_active_flag                      = &0049
sound4_active_flag                      = &004a
sound5_active_flag                      = &004b
sound6_active_flag                      = &004c
sound7_active_flag                      = &004d
pause_counter                           = &004e
l0050                                   = &0050
fungus_timer                            = &0051
l0052                                   = &0052
l0053                                   = &0053
l0054                                   = &0054
fungus_growth_interval                  = &0055
l0056                                   = &0056
fungus_counter                          = &0057
ticks_since_last_direction_key_pressed  = &0058
countdown_while_switching_palette       = &0059
tick_counter                            = &005a
l005b                                   = &005b
sub_second_ticks                        = &005c
previous_direction_keys                 = &005d
just_pressed_direction_keys             = &005e
l005f                                   = &005f
l0060                                   = &0060
keys_to_process                         = &0062
neighbour_cell_contents                 = &0064
demo_mode_tick_count                    = &0065
l0066                                   = &0066
demo_key_duration                       = &0067
status_text_address_low                 = &0069
l006a                                   = &006a
map_rockford_end_position_addr_low      = &006a
map_rockford_end_position_addr_high     = &006b
diamonds_required                       = &006c
time_remaining                          = &006d
bonus_life_available                    = &006f
map_rockford_current_position_addr_low  = &0070
map_rockford_current_position_addr_high = &0071
amount_to_increment_status_bar          = &0072
dissolve_to_solid_flag                  = &0072
l0072                                   = &0072
cell_above_left                         = &0073
grid_column_counter                     = &0073
grid_x                                  = &0073
neighbouring_cell_variable              = &0073
cell_above                              = &0074
cell_above_right                        = &0075
cell_left                               = &0076
cell_current                            = &0077
loop_counter                            = &0077
cell_right                              = &0078
cell_below_left                         = &0079
initial_cell_fill_value                 = &0079
cell_below                              = &007a
cell_below_right                        = &007b
lower_nybble_value                      = &007c
real_keys_pressed                       = &007c
x_loop_counter                          = &007c
visible_top_left_map_x                  = &007e
visible_top_left_map_y                  = &007f
screen_addr2_low                        = &0080
screen_addr2_high                       = &0081
next_ptr_low                            = &0082
next_ptr_high                           = &0083
wait_delay_centiseconds                 = &0084
tile_map_ptr_low                        = &0085
tile_y                                  = &0085
tile_map_ptr_high                       = &0086
tile_x                                  = &0086
cave_number                             = &0087
random_seed                             = &0088
difficulty_level                        = &0089
map_x                                   = &008a
screen_addr1_low                        = &008a
map_y                                   = &008b
screen_addr1_high                       = &008b
map_address_low                         = &008c
ptr_low                                 = &008c
map_address_high                        = &008d
ptr_high                                = &008d
sound_channel                           = &008e
offset_to_sound                         = &008f
l0ba9                                   = &0ba9
grid_of_currently_displayed_sprites     = &0c00
start_of_grid_screen_address            = &5bc0
screen_addr_row_6                       = &5f80
screen_addr_row_28                      = &7b00
screen_addr_row_30                      = &7d80
osword                                  = &fff1
osbyte                                  = &fff4
lfff6                                   = &fff6

    org &1300

; 
; Caves: 20 caves total (16 main caves A-P plus four bonus caves Q-T)
; Difficulty levels: 1-5
; 
; Some definitions:
; * Together a cave letter and difficulty level define a *stage*. A1 is a stage, for
; example.
; * The *tile map* is the 40x23 map of the entire stage.
; * The *grid* is the visible area of sprites, showing a 20x12 section of the tile map.
;   An offscreen cache of what sprites are currently displayed is stored in the
; 'grid_of_currently_displayed_sprites' array.
;   This avoids redrawing a sprite if it's unchanged since the previous tick.
; * The *status bar* is single row at the top of the grid, showing useful status
; information.
; 
; tile_map:
; 
; $00 = empty
; $01 = earth
; $02 = wall
; $03 = titanium wall
; $04 = diamond
; $05 = rock
; $06 = firefly
; $07 = fungus
; $08 = rockford
; $09 = 4x4 earth square with firefly pacing inside
; $0a = animated player exploding
; $0b = Vertical strip (value above is filled down to the next $0b)
; $0c = Horizontal strip
; $0d = magic wall?
; $0e = butterfly
; $0f = player?
; 
; After post processing/during gameplay:
; $08 = flashing titanium wall and earth before player appears
; $18 = flashing exit
; $21 = explosion frame #1
; $11 = explosion frame #2
; $0f = player looking out
; $1f = player walking left
; $2f = player walking right
; 
; $43 = explosion out effect #1
; $33 = explosion out effect #2
; $23 = explosion out effect #3
; $13 = explosion out effect #4
; 
.sprite_addr_space
.initial_clock_value
.pydis_start
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0   ; 1300: 00 00 00... ...            ; Five byte clock value (low byte to high byte)
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                           ; 1314: 00 00 00... ...
.sprite_addr_boulder1
    equb &33, &57, &bf, &2d, &69, &c3, &87, &0f, &88, &4c, &ae, &7f   ; 1320: 33 57 bf... 3W.
    equb &7f, &b7, &3f, &7b, &0b, &0d, &0b, &0d, &2c, &78, &42,   3   ; 132c: 7f b7 3f... ..?
    equb &3d, &1e, &0f, &0f, &0e, &0e, &0c,   8                       ; 1338: 3d 1e 0f... =..
.sprite_addr_boulder2
    equb &33, &57, &af, &4f, &0f, &0f, &0f, &0f, &88, &4c, &ae, &7f   ; 1340: 33 57 af... 3W.
    equb &7f, &37, &3f, &1f, &0b, &0d, &0b, &0d, &0e, &0f,   6,   3   ; 134c: 7f 37 3f... .7?
    equb &0f, &0f, &0f, &0f, &0e, &0e, &0c,   8                       ; 1358: 0f 0f 0f... ...
.sprite_addr_diamond1
    equb &11, &11, &13, &23, &77, &37, &df, &ef,   0,   0, &88, &88   ; 1360: 11 11 13... ...
    equb &4c, &8c, &ce, &ee, &7f, &bf, &57, &67, &33, &33, &11,   1   ; 136c: 4c 8c ce... L..
    equb &6e, &ae, &cc, &cc,   8, &88,   0,   0                       ; 1378: 6e ae cc... n..
.sprite_addr_diamond2
    equb &11, &11, &23, &33, &37, &57, &ef, &7f,   0,   0, &88,   8   ; 1380: 11 11 23... ..#
    equb &8c, &cc, &ee, &6e, &bf, &df, &67, &77, &33, &13,   1, &11   ; 138c: 8c cc ee... ...
    equb &ae, &ce, &cc, &4c, &88, &88,   0,   0                       ; 1398: ae ce cc... ...
.sprite_addr_diamond3
    equb &11,   1, &33, &33, &57, &67, &7f, &bf,   0,   0,   8, &88   ; 13a0: 11 01 33... ..3
    equb &cc, &cc, &6e, &ae, &df, &ef, &77, &37, &13, &23, &11, &11   ; 13ac: cc cc 6e... ..n
    equb &ce, &ee, &4c, &8c, &88, &88,   0,   0                       ; 13b8: ce ee 4c... ..L
.sprite_addr_diamond4
    equb   1, &11, &33, &13, &67, &77, &bf, &df,   0,   0, &88, &88   ; 13c0: 01 11 33... ..3
    equb &cc, &4c, &ae, &ce, &ef, &7f, &37, &57, &23, &33, &11, &11   ; 13cc: cc 4c ae... .L.
    equb &ee, &6e, &8c, &cc, &88,   8,   0,   0                       ; 13d8: ee 6e 8c... .n.
.sprite_addr_titanium_wall1
    equb &0f, &0f,   9,   9, &4d, &4d, &0f, &0f, &0f, &0f,   9,   9   ; 13e0: 0f 0f 09... ...
    equb &4d, &4d, &0f, &0f, &0f, &0f,   9,   9, &4d, &4d, &0f, &0f   ; 13ec: 4d 4d 0f... MM.
    equb &0f, &0f,   9,   9, &4d, &4d, &0f, &0f                       ; 13f8: 0f 0f 09... ...
.sprite_addr_titanium_wall2
.sprite_addr_103
.sprite_addr_104
    equb &0f, &0f,   9,   9, &4d, &4d, &0f, &0f, &0f, &0f,   9,   9   ; 1400: 0f 0f 09... ...
    equb &4d, &4d, &0f, &0f, &0f, &0f,   9,   9, &4d, &4d, &0f, &0f   ; 140c: 4d 4d 0f... MM.
    equb &0f, &0f,   9,   9, &4d, &4d, &0f, &0f                       ; 1418: 0f 0f 09... ...
.sprite_addr_box
    equb &0f, &0f,   8,   8,   8,   8,   8,   8, &0f, &0f,   1,   1   ; 1420: 0f 0f 08... ...
    equb   1,   1,   1,   1,   8,   8,   8,   8,   8,   8, &0f, &0f   ; 142c: 01 01 01... ...
    equb   1,   1,   1,   1,   1,   1, &0f, &0f                       ; 1438: 01 01 01... ...
.sprite_addr_wall1
.sprite_addr_97
    equb &77, &37,   7,   0, &ee, &ee, &0e,   0, &ee, &ee, &0e,   0   ; 1440: 77 37 07... w7.
    equb &77, &37,   7,   0, &77, &37,   7,   0, &ee, &ee, &0e,   0   ; 144c: 77 37 07... w7.
    equb &ee, &ee, &0e,   0, &77, &37,   7,   0                       ; 1458: ee ee 0e... ...
.sprite_addr_wall2
    equb &77, &37,   7,   0, &ee, &ee, &0e,   0, &ee, &ee, &0e,   0   ; 1460: 77 37 07... w7.
    equb &77, &37,   7,   0, &77, &37,   7,   0, &ee, &ee, &0e,   0   ; 146c: 77 37 07... w7.
    equb &ee, &ee, &0e,   0, &77, &37,   7,   0                       ; 1478: ee ee 0e... ...
.sprite_addr_explosion1
    equb   0,   0,   0,   0, &11, &44,   1, &22,   0,   0,   0,   0   ; 1480: 00 00 00... ...
    equb   0, &88,   0, &aa, &10, &13, &22,   0, &11,   0,   0,   0   ; 148c: 00 88 00... ...
    equb &84, &c4,   8,   0,   0,   0,   0,   0                       ; 1498: 84 c4 08... ...
.sprite_addr_explosion2
    equb   0,   0,   0, &11, &88,   1,   0, &44,   0,   0,   0,   0   ; 14a0: 00 00 00... ...
    equb &88,   0, &44, &51, &20,   0,   4, &22, &44, &11,   0,   0   ; 14ac: 88 00 44... ..D
    equb   2,   0, &a2,   8,   0,   0,   0,   0                       ; 14b8: 02 00 a2... ...
.sprite_addr_explosion3
    equb   0,   0, &11,   0,   2,   0,   0,   0,   0,   0,   0, &44   ; 14c0: 00 00 11... ...
    equb   0, &22,   0, &31, &88, &40,   0,   8, &22, &88, &11,   0   ; 14cc: 00 22 00... .".
    equb   0,   1,   0, &80, &15,   0,   0,   0                       ; 14d8: 00 01 00... ...
.sprite_addr_explosion4
    equb   0, &11,   0,   4,   0,   0,   0,   0,   0,   0, &22,   0   ; 14e0: 00 11 00... ...
    equb &11,   0,   0, &10,   0, &80,   0,   0, &22,   0, &88, &11   ; 14ec: 11 00 00... ...
    equb   0,   1,   0,   0, &80, &15,   0,   0                       ; 14f8: 00 01 00... ...
.sprite_addr_magic_wall1
    equb &77, &37,   7, &4c, &ee, &ee, &0e,   0, &ee, &ee, &0e,   0   ; 1500: 77 37 07... w7.
    equb &77, &37,   7, &23, &77, &37,   7, &4c, &ee, &ee, &0e,   0   ; 150c: 77 37 07... w7.
    equb &ee, &ee, &0e,   0, &77, &37,   7, &23                       ; 1518: ee ee 0e... ...
.sprite_addr_magic_wall2
    equb &77, &37,   7, &13, &ee, &ee, &0e,   0, &ee, &ee, &0e,   0   ; 1520: 77 37 07... w7.
    equb &77, &37,   7, &8c, &77, &37,   7, &13, &ee, &ee, &0e,   0   ; 152c: 77 37 07... w7.
    equb &ee, &ee, &0e,   0, &77, &37,   7, &8c                       ; 1538: ee ee 0e... ...
.sprite_addr_magic_wall3
    equb &77, &37,   7,   0, &ee, &ee, &0e, &23, &ee, &ee, &0e, &4c   ; 1540: 77 37 07... w7.
    equb &77, &37,   7,   0, &77, &37,   7,   0, &ee, &ee, &0e, &23   ; 154c: 77 37 07... w7.
    equb &ee, &ee, &0e, &4c, &77, &37,   7,   0                       ; 1558: ee ee 0e... ...
.sprite_addr_magic_wall4
    equb &77, &37,   7,   0, &ee, &ee, &0e, &8c, &ee, &ee, &0e, &13   ; 1560: 77 37 07... w7.
    equb &77, &37,   7,   0, &77, &37,   7,   0, &ee, &ee, &0e, &8c   ; 156c: 77 37 07... w7.
    equb &ee, &ee, &0e, &13, &77, &37,   7,   0                       ; 1578: ee ee 0e... ...
.sprite_addr_fungus1
    equb &2e, &1f, &0f, &8f, &47, &8f, &0f, &0f, &47, &8f, &0f, &0f   ; 1580: 2e 1f 0f... ...
    equb &1f, &0f, &0f, &cf, &cf, &23, &23, &cf, &0f, &1f, &2e, &4c   ; 158c: 1f 0f 0f... ...
    equb &cf, &1f, &1f, &0f, &0f, &8f, &47, &23                       ; 1598: cf 1f 1f... ...
.sprite_addr_fungus2
    equb &1f, &0f, &8f, &47, &23, &47, &8f, &1f, &8f, &0f, &0f, &1f   ; 15a0: 1f 0f 8f... ...
    equb &2e, &1f, &cf, &23, &1f, &cf, &cf, &0f, &0f, &0f, &1f, &2e   ; 15ac: 2e 1f cf... ...
    equb &23, &cf, &0f, &0f, &0f, &0f, &8f, &47                       ; 15b8: 23 cf 0f... #..
.sprite_addr_butterfly1
    equb   0,   8, &88, &88, &8c, &cc, &ce, &ee,   0,   2, &22, &22   ; 15c0: 00 08 88... ...
    equb &26, &66, &6e, &ee, &ff, &ee, &ce, &cc, &8c, &88, &88,   8   ; 15cc: 26 66 6e... &fn
    equb &ee, &ee, &6e, &66, &26, &22, &22,   2                       ; 15d8: ee ee 6e... ..n
.sprite_addr_butterfly2
.sprite_addr_98
    equb   0,   4, &44, &44, &44, &46, &66, &66,   0,   4, &44, &44   ; 15e0: 00 04 44... ..D
    equb &44, &4c, &cc, &cc, &77, &66, &66, &46, &44, &44, &44,   4   ; 15ec: 44 4c cc... DL.
    equb &cc, &cc, &cc, &4c, &44, &44, &44,   4                       ; 15f8: cc cc cc... ...
.sprite_addr_butterfly3
    equb   0,   0,   2, &22, &22, &22, &22, &33,   0,   0,   8, &88   ; 1600: 00 00 02... ...
    equb &88, &88, &88, &88, &33, &33, &22, &22, &22, &22,   2,   0   ; 160c: 88 88 88... ...
    equb &88, &88, &88, &88, &88, &88,   8,   0                       ; 1618: 88 88 88... ...
.sprite_addr_firefly1
    equb &ff, &ff, &f8, &f8, &cb, &cb, &ca, &ca, &ff, &ff, &f1, &f1   ; 1620: ff ff f8... ...
    equb &3d, &3d, &35, &35, &ca, &ca, &cb, &cb, &f8, &f8, &ff, &ff   ; 162c: 3d 3d 35... ==5
    equb &35, &35, &3d, &3d, &f1, &f1, &ff, &ff                       ; 1638: 35 35 3d... 55=
.sprite_addr_firefly2
    equb &f0, &f0, &87, &87, &84, &84, &95, &95, &f0, &f0, &1e, &1e   ; 1640: f0 f0 87... ...
    equb &12, &12, &9a, &9a, &95, &95, &84, &84, &87, &87, &f0, &f0   ; 164c: 12 12 9a... ...
    equb &9a, &9a, &12, &12, &1e, &1e, &f0, &f0                       ; 1658: 9a 9a 12... ...
.sprite_addr_firefly3
    equb &0f, &0f,   8,   8, &3b, &3b, &3a, &3a, &0f, &0f,   1,   1   ; 1660: 0f 0f 08... ...
    equb &cd, &cd, &c5, &c5, &3a, &3a, &3b, &3b,   8,   8, &0f, &0f   ; 166c: cd cd c5... ...
    equb &c5, &c5, &cd, &cd,   1,   1, &0f, &0f                       ; 1678: c5 c5 cd... ...
.sprite_addr_firefly4
    equb   0,   0, &77, &77, &74, &74, &65, &65,   0,   0, &ee, &ee   ; 1680: 00 00 77... ..w
    equb &e2, &e2, &6a, &6a, &65, &65, &74, &74, &77, &77,   0,   0   ; 168c: e2 e2 6a... ..j
    equb &6a, &6a, &e2, &e2, &ee, &ee,   0,   0                       ; 1698: 6a 6a e2... jj.
.sprite_addr_earth1
    equb &20, &c0, &70, &d0, &f0, &a0, &70, &b0, &50, &90, &60, &d0   ; 16a0: 20 c0 70...  .p
    equb &b0, &e0, &b0, &e0, &70, &d0, &e0, &70, &a0, &c0, &b0, &40   ; 16ac: b0 e0 b0... ...
    equb &f0, &e0, &d0, &70, &a0, &d0, &40, &a0                       ; 16b8: f0 e0 d0... ...
.sprite_addr_earth2
    equb &20, &c0, &70, &d0, &f0, &a0, &70, &b0, &50, &90, &60, &d0   ; 16c0: 20 c0 70...  .p
    equb &b0, &e0, &b0, &e0, &70, &d0, &e0, &70, &a0, &c0, &b0, &40   ; 16cc: b0 e0 b0... ...
    equb &f0, &e0, &d0, &70, &a0, &d0, &40, &a0                       ; 16d8: f0 e0 d0... ...
.sprite_addr_pathway
    equb   0, &77,   0,   0,   0, &ee,   0,   0,   0, &66,   0,   0   ; 16e0: 00 77 00... .w.
    equb   0, &aa,   0,   0,   0, &55,   0,   0,   0, &ee,   0,   0   ; 16ec: 00 aa 00... ...
    equb   0, &bb,   0,   0,   0, &99,   0,   0                       ; 16f8: 00 bb 00... ...
.sprite_addr_rockford_blinking1
    equb   0, &22, &33, &55, &55, &33, &11, &13,   0, &44, &cc, &aa   ; 1700: 00 22 33... ."3
    equb &aa, &cc, &88, &8c,   5, &15,   1, &11, &23, &22, &22,   6   ; 170c: aa cc 88... ...
    equb &0a, &8a,   8, &88, &4c, &44, &44,   6                       ; 1718: 0a 8a 08... ...
.sprite_addr_rockford_blinking2
    equb   0, &22, &33, &77, &55, &33, &11, &13,   0, &44, &cc, &ee   ; 1720: 00 22 33... ."3
    equb &aa, &cc, &88, &8c,   5, &15,   1, &11, &23, &22, &22,   6   ; 172c: aa cc 88... ...
    equb &0a, &8a,   8, &88, &4c, &44, &44,   6                       ; 1738: 0a 8a 08... ...
.sprite_addr_rockford_blinking3
    equb   0, &22, &33, &77, &77, &33, &11, &13,   0, &44, &cc, &ee   ; 1740: 00 22 33... ."3
    equb &ee, &cc, &88, &8c,   5, &15,   1, &11, &23, &22, &22,   6   ; 174c: ee cc 88... ...
    equb &0a, &8a,   8, &88, &4c, &44, &44,   6                       ; 1758: 0a 8a 08... ...
.sprite_addr_rockford_winking1
    equb   0, &22, &33, &55, &55, &33, &11, &13,   0, &44, &cc, &ee   ; 1760: 00 22 33... ."3
    equb &aa, &cc, &88, &8c,   5, &15,   1, &11, &23, &22, &22,   6   ; 176c: aa cc 88... ...
    equb &0a, &8a,   8, &88, &4c, &44, &44,   6                       ; 1778: 0a 8a 08... ...
.sprite_addr_rockford_winking2
    equb   0, &22, &33, &55, &55, &33, &11, &13,   0, &44, &cc, &ee   ; 1780: 00 22 33... ."3
    equb &ee, &cc, &88, &8c,   5, &15,   1, &11, &23, &22, &22,   6   ; 178c: ee cc 88... ...
    equb &0a, &8a,   8, &88, &4c, &44, &44,   6                       ; 1798: 0a 8a 08... ...
.sprite_addr_rockford_moving_down1
    equb   0, &22, &33, &55, &55, &33, &11, &13,   0, &44, &cc, &aa   ; 17a0: 00 22 33... ."3
    equb &aa, &cc, &88, &8c,   5, &13,   1, &11, &23, &22, &22,   6   ; 17ac: aa cc 88... ...
    equb &0a, &8c,   8, &88, &4c, &44, &44,   6                       ; 17b8: 0a 8c 08... ...
.sprite_addr_rockford_moving_down2
    equb   0, &22, &33, &55, &55, &33, &11, &13,   0, &44, &cc, &aa   ; 17c0: 00 22 33... ."3
    equb &aa, &cc, &88, &8c,   5, &13,   1, &11, &23, &22,   6,   0   ; 17cc: aa cc 88... ...
    equb &0a, &8c,   8, &88, &4c, &44, &44,   6                       ; 17d8: 0a 8c 08... ...
.sprite_addr_rockford_moving_down3
    equb   0, &22, &33, &77, &55, &33, &11, &13,   0, &44, &cc, &ee   ; 17e0: 00 22 33... ."3
    equb &aa, &cc, &88, &8c,   5, &13,   1, &11, &23, &22, &22,   6   ; 17ec: aa cc 88... ...
    equb &0a, &8c,   8, &88, &4c, &44, &44,   6                       ; 17f8: 0a 8c 08... ...
.sprite_addr_rockford_moving_up1
    equb   0, &22, &33, &77, &77, &33, &11, &13,   0, &44, &cc, &ee   ; 1800: 00 22 33... ."3
    equb &ee, &cc, &88, &8c,   5, &13,   1, &11, &23, &22,   6,   0   ; 180c: ee cc 88... ...
    equb &0a, &8c,   8, &88, &4c, &44, &44,   6                       ; 1818: 0a 8c 08... ...
.sprite_addr_rockford_moving_up2
    equb   0, &22, &33, &77, &77, &33, &11, &13,   0, &44, &cc, &ee   ; 1820: 00 22 33... ."3
    equb &ee, &cc, &88, &8c,   5, &13,   1, &11, &23, &22, &22,   6   ; 182c: ee cc 88... ...
    equb &0a, &8c,   8, &88, &4c, &44, &44,   6                       ; 1838: 0a 8c 08... ...
.sprite_addr_rockford_moving_left1
    equb &11, &33, &55, &55, &33, &11, &11, &13, &88, &cc, &cc, &cc   ; 1840: 11 33 55... .3U
    equb &cc, &88, &88, &88,   1, &11,   1, &11, &23, &44, &44, &0c   ; 184c: cc 88 88... ...
    equb   8, &88,   8, &88, &6e,   1,   1,   0                       ; 1858: 08 88 08... ...
.sprite_addr_rockford_moving_left2
.sprite_addr_100
    equb &11, &33, &55, &55, &33, &11, &11, &13, &88, &cc, &cc, &cc   ; 1860: 11 33 55... .3U
    equb &cc, &88, &88, &88,   1, &11,   1, &11, &23, &22, &22,   6   ; 186c: cc 88 88... ...
    equb   8, &88,   8, &88, &4c, &22,   2,   2                       ; 1878: 08 88 08... ...
.sprite_addr_rockford_moving_left3
.sprite_addr_99
    equb   0, &11, &33, &55, &55, &33, &11, &13,   0, &88, &cc, &cc   ; 1880: 00 11 33... ..3
    equb &cc, &cc, &88, &88,   1, &11,   1, &11,   1, &11, &11,   3   ; 188c: cc cc 88... ...
    equb   8, &88,   8, &88,   8, &88, &cc,   4                       ; 1898: 08 88 08... ...
.sprite_addr_rockford_moving_left4
    equb   0, &11, &33, &55, &55, &33, &11, &13,   0, &88, &cc, &cc   ; 18a0: 00 11 33... ..3
    equb &cc, &cc, &88, &88,   1, &11,   1, &11,   1, &11, &11,   3   ; 18ac: cc cc 88... ...
    equb   8, &88,   8, &88,   8, &88, &88,   8                       ; 18b8: 08 88 08... ...
.sprite_addr_rockford_moving_right1
    equb   0, &11, &33, &33, &33, &33, &11, &11,   0, &88, &cc, &aa   ; 18c0: 00 11 33... ..3
    equb &aa, &cc, &88, &8c,   1, &11,   1, &11,   1, &11, &11,   1   ; 18cc: aa cc 88... ...
    equb   8, &88,   8, &88,   8, &88, &88, &0c                       ; 18d8: 08 88 08... ...
.sprite_addr_rockford_moving_right2
.sprite_addr_102
    equb   0, &11, &33, &33, &33, &33, &11, &11,   0, &88, &cc, &aa   ; 18e0: 00 11 33... ..3
    equb &aa, &cc, &88, &8c,   1, &11,   1, &11,   1, &11, &33,   2   ; 18ec: aa cc 88... ...
    equb   8, &88,   8, &88,   8, &88, &88, &0c                       ; 18f8: 08 88 08... ...
.sprite_addr_rockford_moving_right3
.sprite_addr_101
    equb &11, &33, &33, &33, &33, &11, &11, &11, &88, &cc, &aa, &aa   ; 1900: 11 33 33... .33
    equb &cc, &88, &88, &8c,   1, &11,   1, &11, &23, &44,   4,   4   ; 190c: cc 88 88... ...
    equb   8, &88,   8, &88, &4c, &44, &44,   6                       ; 1918: 08 88 08... ...
.sprite_addr_rockford_moving_right4
    equb &11, &33, &33, &33, &33, &11, &11, &11, &88, &cc, &aa, &aa   ; 1920: 11 33 33... .33
    equb &cc, &88, &88, &8c,   1, &11,   1, &11, &67,   8,   8,   0   ; 192c: cc 88 88... ...
    equb   8, &88,   8, &88, &4c, &22, &22,   3                       ; 1938: 08 88 08... ...
.sprite_addr_0
    equb   0, &33, &34, &67, &68, &6e, &69, &7f,   0, &cc, &c0, &6e   ; 1940: 00 33 34... .34
    equb &68, &ee, &e0, &ee, &78, &7f, &78, &6e, &68, &3f, &34,   7   ; 194c: 68 ee e0... h..
    equb &e0, &6e, &68, &6e, &68, &cc, &c0,   8                       ; 1958: e0 6e 68... .nh
.sprite_addr_1
    equb   0, &11, &12, &33, &34, &17, &12, &13,   0, &88, &80, &88   ; 1960: 00 11 12... ...
    equb &80, &88, &80, &88, &12, &13, &12, &13, &12, &77, &78, &0f   ; 196c: 80 88 80... ...
    equb &80, &88, &80, &88, &80, &ee, &e0, &0c                       ; 1978: 80 88 80... ...
.sprite_addr_2
    equb   0, &33, &34, &67, &68, &0c,   0,   0,   0, &cc, &c0, &6e   ; 1980: 00 33 34... .34
    equb &68, &6e, &68, &cc,   1, &11, &12, &33, &34, &77, &78, &0f   ; 198c: 68 6e 68... hnh
    equb &c0, &88, &80,   0,   0, &ee, &e0, &0c                       ; 1998: c0 88 80... ...
.sprite_addr_3
    equb   0, &33, &34, &67, &68, &0c,   0, &11,   0, &cc, &c0, &6e   ; 19a0: 00 33 34... .34
    equb &68, &6e, &68, &cc, &12,   3,   0, &66, &68, &3f, &34,   7   ; 19ac: 68 6e 68... hnh
    equb &c0, &6e, &68, &6e, &68, &cc, &c0,   8                       ; 19b8: c0 6e 68... .nh
.sprite_addr_4
    equb   0,   0,   1, &11, &12, &33, &34, &67,   0, &cc, &c0, &cc   ; 19c0: 00 00 01... ...
    equb &c0, &cc, &c0, &cc, &69, &7f, &78, &0f,   1,   1,   1,   1   ; 19cc: c0 cc c0... ...
    equb &c0, &ee, &e0, &cc, &c0, &cc, &c0,   8                       ; 19d8: c0 ee e0... ...
.sprite_addr_5
    equb   0, &77, &78, &6f, &68, &7f, &78, &0f,   0, &ee, &e0, &0c   ; 19e0: 00 77 78... .wx
    equb   0, &cc, &c0, &6e,   0,   0,   0, &66, &68, &3f, &34,   7   ; 19ec: 00 cc c0... ...
    equb &68, &6e, &68, &6e, &68, &cc, &c0,   8                       ; 19f8: 68 6e 68... hnh
.sprite_addr_6
    equb   0, &11, &12, &33, &34, &66, &68, &7f,   0, &cc, &c0,   8   ; 1a00: 00 11 12... ...
    equb   0,   0,   0, &cc, &78, &6f, &68, &6e, &68, &3f, &34,   7   ; 1a0c: 00 00 00... ...
    equb &c0, &6e, &68, &6e, &68, &cc, &c0,   8                       ; 1a18: c0 6e 68... .nh
.sprite_addr_7
    equb   0, &77, &78, &0f,   0,   0,   1, &11,   0, &ee, &e0, &6e   ; 1a20: 00 77 78... .wx
    equb &68, &cc, &c0, &88, &12, &33, &34, &37, &34, &37, &34,   6   ; 1a2c: 68 cc c0... h..
    equb &80,   0,   0,   0,   0,   0,   0,   0                       ; 1a38: 80 00 00... ...
.sprite_addr_8
    equb   0, &33, &34, &67, &68, &6e, &68, &3f,   0, &cc, &c0, &6e   ; 1a40: 00 33 34... .34
    equb &68, &6e, &68, &cc, &34, &67, &68, &6e, &68, &3f, &34,   7   ; 1a4c: 68 6e 68... hnh
    equb &c0, &6e, &68, &6e, &68, &cc, &c0,   8                       ; 1a58: c0 6e 68... .nh
.sprite_addr_9
    equb   0, &33, &34, &67, &68, &6e, &68, &3f,   0, &cc, &c0, &6e   ; 1a60: 00 33 34... .34
    equb &68, &6e, &68, &ee, &34,   7,   0,   0,   1, &33, &34,   7   ; 1a6c: 68 6e 68... hnh
    equb &e0, &6e, &68, &cc, &c0, &88, &80,   0                       ; 1a78: e0 6e 68... .nh
.sprite_addr_white
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 1a80: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 1a8c: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 1a98: ff ff ff... ...
.sprite_addr_dash
    equb   0,   0,   0,   0,   0, &77, &78, &0f,   0,   0,   0,   0   ; 1aa0: 00 00 00... ...
    equb   0, &ee, &e0, &0c,   0, &77, &78, &0f,   0,   0,   0,   0   ; 1aac: 00 ee e0... ...
    equb   0, &ee, &e0, &0c,   0,   0,   0,   0                       ; 1ab8: 00 ee e0... ...
.sprite_addr_slash
    equb   0,   0,   0,   0,   0,   1, &10, &13,   0,   0, &60, &6e   ; 1ac0: 00 00 00... ...
    equb &c0, &cc, &80, &88, &30, &37, &60, &6e, &0c,   0,   0,   0   ; 1acc: c0 cc 80... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 1ad8: 00 00 00... ...
.sprite_addr_comma
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 1ae0: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   1,   1, &33, &34,   6   ; 1aec: 00 00 00... ...
    equb   0,   0, &c0, &cc, &c0, &cc,   8,   0                       ; 1af8: 00 00 c0... ...
.sprite_addr_full_stop
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 1b00: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0, &11, &12, &13, &12,   3,   0   ; 1b0c: 00 00 00... ...
    equb   0,   0, &88, &80, &88, &80,   0,   0                       ; 1b18: 00 00 88... ...
.sprite_addr_A
    equb   0, &33, &34, &67, &68, &6e, &68, &7f,   0, &cc, &c0, &6e   ; 1b20: 00 33 34... .34
    equb &68, &6e, &68, &ee, &78, &6f, &68, &6e, &68, &6e, &68, &0c   ; 1b2c: 68 6e 68... hnh
    equb &e0, &6e, &68, &6e, &68, &6e, &68, &0c                       ; 1b38: e0 6e 68... .nh
.sprite_addr_B
    equb   0, &77, &78, &6f, &68, &6e, &68, &7f,   0, &cc, &c0, &6e   ; 1b40: 00 77 78... .wx
    equb &68, &6e, &68, &cc, &78, &6f, &68, &6e, &68, &7f, &78, &0f   ; 1b4c: 68 6e 68... hnh
    equb &c0, &6e, &68, &6e, &68, &cc, &c0,   8                       ; 1b58: c0 6e 68... .nh
.sprite_addr_C
    equb   0, &33, &34, &67, &68, &6e, &68, &6e,   0, &cc, &c0, &6e   ; 1b60: 00 33 34... .34
    equb &68, &0c,   0,   0, &68, &6e, &68, &6e, &68, &3f, &34,   7   ; 1b6c: 68 0c 00... h..
    equb   0,   0,   0, &66, &68, &cc, &c0,   8                       ; 1b78: 00 00 00... ...
.sprite_addr_D
    equb   0, &77, &78, &6f, &69, &6f, &68, &6e,   0, &88, &80, &cc   ; 1b80: 00 77 78... .wx
    equb &c0, &6e, &68, &6e, &68, &6e, &68, &6e, &69, &7f, &78, &0f   ; 1b8c: c0 6e 68... .nh
    equb &68, &6e, &48, &cc, &c0, &88, &80,   0                       ; 1b98: 68 6e 48... hnH
.sprite_addr_E
    equb   0, &77, &78, &6f, &68, &6e, &68, &7f,   0, &ee, &e0, &0c   ; 1ba0: 00 77 78... .wx
    equb   0,   0,   0, &cc, &78, &6f, &68, &6e, &68, &7f, &78, &0f   ; 1bac: 00 00 00... ...
    equb &c0,   8,   0,   0,   0, &ee, &e0, &0c                       ; 1bb8: c0 08 00... ...
.sprite_addr_F
    equb   0, &77, &78, &6f, &68, &6e, &68, &7f,   0, &ee, &e0, &0c   ; 1bc0: 00 77 78... .wx
    equb   0,   0,   0, &cc, &78, &6f, &68, &6e, &68, &6e, &68, &0c   ; 1bcc: 00 00 00... ...
    equb &c0,   8,   0,   0,   0,   0,   0,   0                       ; 1bd8: c0 08 00... ...
.sprite_addr_G
    equb   0, &33, &34, &6f, &68, &6e, &68, &6e,   0, &cc, &c0, &6e   ; 1be0: 00 33 34... .34
    equb &68, &0c,   0, &ee, &69, &6f, &68, &6e, &68, &3f, &34,   7   ; 1bec: 68 0c 00... h..
    equb &e0, &6e, &68, &6e, &68, &cc, &c0,   8                       ; 1bf8: e0 6e 68... .nh
.sprite_addr_H
    equb   0, &66, &68, &6e, &68, &6e, &68, &7f,   0, &66, &68, &6e   ; 1c00: 00 66 68... .fh
    equb &68, &6e, &68, &ee, &78, &6f, &68, &6e, &68, &6e, &68, &0c   ; 1c0c: 68 6e 68... hnh
    equb &e0, &6e, &68, &6e, &68, &6e, &68, &0c                       ; 1c18: e0 6e 68... .nh
.sprite_addr_I
    equb   0, &77, &78, &1f, &12, &13, &12, &13,   0, &ee, &e0, &8c   ; 1c20: 00 77 78... .wx
    equb &80, &88, &80, &88, &12, &13, &12, &13, &12, &77, &78, &0f   ; 1c2c: 80 88 80... ...
    equb &80, &88, &80, &88, &80, &ee, &e0, &0c                       ; 1c38: 80 88 80... ...
.sprite_addr_J
    equb   0, &33, &34,   7,   1,   1,   1,   1,   0, &ee, &e0, &cc   ; 1c40: 00 33 34... .34
    equb &c0, &cc, &c0, &cc,   1,   1,   1, &67, &69, &3f, &34,   7   ; 1c4c: c0 cc c0... ...
    equb &c0, &cc, &c0, &cc, &c0, &88, &80,   0                       ; 1c58: c0 cc c0... ...
.sprite_addr_K
    equb   0, &66, &68, &6e, &69, &7f, &78, &7f,   0, &66, &68, &cc   ; 1c60: 00 66 68... .fh
    equb &c0, &88, &80,   0, &78, &7f, &78, &6f, &69, &6f, &68, &0c   ; 1c6c: c0 88 80... ...
    equb   0, &88, &80, &cc, &c0, &6e, &68, &0c                       ; 1c78: 00 88 80... ...
.sprite_addr_L
    equb   0, &66, &68, &6e, &68, &6e, &68, &6e,   0,   0,   0,   0   ; 1c80: 00 66 68... .fh
    equb   0,   0,   0,   0, &68, &6e, &68, &6e, &68, &7f, &78, &0f   ; 1c8c: 00 00 00... ...
    equb   0,   0,   0,   0,   0, &ee, &e0, &0c                       ; 1c98: 00 00 00... ...
.sprite_addr_M
    equb   0, &66, &68, &7f, &78, &7f, &78, &6f,   0, &33, &34, &77   ; 1ca0: 00 66 68... .fh
    equb &78, &ff, &f0, &bf, &69, &6f, &69, &6f, &68, &6e, &68, &0c   ; 1cac: 78 ff f0... x..
    equb &b4, &bf, &b4, &37, &34, &37, &34,   6                       ; 1cb8: b4 bf b4... ...
.sprite_addr_N
    equb   0, &66, &68, &6e, &68, &7f, &78, &7f,   0, &66, &68, &6e   ; 1cc0: 00 66 68... .fh
    equb &68, &6e, &68, &ee, &78, &6f, &69, &6f, &68, &6e, &68, &0c   ; 1ccc: 68 6e 68... hnh
    equb &e0, &ee, &e0, &6e, &68, &6e, &68, &0c                       ; 1cd8: e0 ee e0... ...
.sprite_addr_O
    equb   0, &33, &34, &66, &68, &6e, &68, &6e,   0, &cc, &c0, &6e   ; 1ce0: 00 33 34... .34
    equb &68, &6e, &68, &6e, &68, &6e, &68, &6e, &68, &3f, &34,   7   ; 1cec: 68 6e 68... hnh
    equb &68, &6e, &68, &6e, &68, &cc, &c0,   8                       ; 1cf8: 68 6e 68... hnh
.sprite_addr_P
    equb   0, &77, &78, &6f, &68, &6e, &68, &7f,   0, &cc, &c0, &6e   ; 1d00: 00 77 78... .wx
    equb &68, &6e, &68, &cc, &78, &6f, &68, &6e, &68, &6e, &68, &0c   ; 1d0c: 68 6e 68... hnh
    equb &c0,   8,   0,   0,   0,   0,   0,   0                       ; 1d18: c0 08 00... ...
.sprite_addr_Q
    equb   0, &33, &34, &66, &68, &6e, &68, &6e,   0, &cc, &c0, &6e   ; 1d20: 00 33 34... .34
    equb &68, &6e, &68, &6e, &68, &6e, &69, &6f, &69, &3f, &34,   6   ; 1d2c: 68 6e 68... hnh
    equb &68, &ae, &a0, &cc, &c0, &6e, &68, &0c                       ; 1d38: 68 ae a0... h..
.sprite_addr_R
    equb   0, &77, &78, &6f, &68, &6e, &68, &7f,   0, &cc, &c0, &6e   ; 1d40: 00 77 78... .wx
    equb &68, &6e, &68, &cc, &78, &6f, &69, &6f, &68, &6e, &68, &0c   ; 1d4c: 68 6e 68... hnh
    equb &c0, &cc, &c0, &6e, &68, &6e, &68, &0c                       ; 1d58: c0 cc c0... ...
.sprite_addr_S
    equb   0, &33, &34, &66, &68, &6e, &68, &3f,   0, &cc, &c0, &6e   ; 1d60: 00 33 34... .34
    equb &68, &0c,   0, &cc, &34,   7,   0, &66, &68, &3f, &34,   7   ; 1d6c: 68 0c 00... h..
    equb &c0, &6e, &68, &6e, &68, &cc, &c0,   8                       ; 1d78: c0 6e 68... .nh
.sprite_addr_T
    equb   0, &77, &78, &1f, &12, &13, &12, &13,   0, &ee, &e0, &8c   ; 1d80: 00 77 78... .wx
    equb &80, &88, &80, &88, &12, &13, &12, &13, &12, &13, &12,   3   ; 1d8c: 80 88 80... ...
    equb &80, &88, &80, &88, &80, &88, &80,   0                       ; 1d98: 80 88 80... ...
.sprite_addr_U
    equb   0, &66, &68, &6e, &68, &6e, &68, &6e,   0, &66, &68, &6e   ; 1da0: 00 66 68... .fh
    equb &68, &6e, &68, &6e, &68, &6e, &68, &6e, &68, &3f, &34,   7   ; 1dac: 68 6e 68... hnh
    equb &68, &6e, &68, &6e, &68, &cc, &c0,   8                       ; 1db8: 68 6e 68... hnh
.sprite_addr_V
    equb   0, &66, &68, &6e, &68, &6e, &68, &6e,   0, &66, &68, &6e   ; 1dc0: 00 66 68... .fh
    equb &68, &6e, &68, &6e, &68, &6e, &68, &3f, &34, &17, &12,   3   ; 1dcc: 68 6e 68... hnh
    equb &68, &6e, &68, &cc, &c0, &88, &80,   0                       ; 1dd8: 68 6e 68... hnh
.sprite_addr_W
    equb   0, &66, &68, &6e, &68, &6e, &69, &6f,   0, &33, &34, &37   ; 1de0: 00 66 68... .fh
    equb &34, &bf, &b4, &bf, &69, &7f, &78, &7f, &78, &6e, &68, &0c   ; 1dec: 34 bf b4... 4..
    equb &b4, &ff, &f0, &7f, &78, &3f, &34,   6                       ; 1df8: b4 ff f0... ...
.sprite_addr_X
    equb   0, &66, &68, &6e, &68, &3f, &34, &17,   0, &66, &68, &6e   ; 1e00: 00 66 68... .fh
    equb &68, &cc, &c0, &88, &12, &33, &34, &67, &68, &6e, &68, &0c   ; 1e0c: 68 cc c0... h..
    equb &80, &cc, &c0, &6e, &68, &6e, &68, &0c                       ; 1e18: 80 cc c0... ...
.sprite_addr_Y
    equb   0, &66, &68, &6e, &68, &6e, &68, &3f,   0, &66, &68, &6e   ; 1e20: 00 66 68... .fh
    equb &68, &6e, &68, &cc, &34, &17, &12, &13, &12, &13, &12,   3   ; 1e2c: 68 6e 68... hnh
    equb &c0, &88, &80, &88, &80, &88, &80,   0                       ; 1e38: c0 88 80... ...
.sprite_addr_Z
    equb   0, &77, &78, &0f,   0,   0,   1, &11,   0, &ee, &e0, &6e   ; 1e40: 00 77 78... .wx
    equb &68, &cc, &c0, &88, &12, &33, &34, &66, &68, &7f, &78, &0f   ; 1e4c: 68 cc c0... h..
    equb &80,   0,   0,   0,   0, &ee, &e0, &0c                       ; 1e58: 80 00 00... ...
.sprite_addr_91
set_clock_value = sprite_addr_91+16
    equb &0d, &63, &9f,   4,   0, &63,   0,   1, &f0,   0, &1f,   0   ; 1e60: 0d 63 9f... .c.
    equb &0c,   0,   0,   0,   5,   0,   0,   0,   0,   0,   0,   0   ; 1e6c: 0c 00 00... ...            ; Five byte clock value (low byte to high byte)
    equb   0, &ee, &e0, &0c,   0,   0,   0,   0                       ; 1e78: 00 ee e0... ...
; Sprites to use for idle animation of rockford. They are encoded into the nybbles of
; each byte. First it cycles through the bottom nybbles until near the end of the idle
; animation, then cycles through through the top nybbles
.idle_animation_data
.sprite_addr_92
    equb      16*(sprite_rockford_moving_up1-0x20) + sprite_rockford_blinking1-0x20; 1e80: 80          .
    equb    16*(sprite_rockford_moving_down3-0x20) + sprite_rockford_blinking1-0x20; 1e81: 70          p
    equb    16*(sprite_rockford_moving_down2-0x20) + sprite_rockford_blinking1-0x20; 1e82: 60          `
    equb    16*(sprite_rockford_moving_down3-0x20) + sprite_rockford_blinking1-0x20; 1e83: 70          p
    equb      16*(sprite_rockford_moving_up1-0x20) + sprite_rockford_blinking2-0x20; 1e84: 81          .
    equb    16*(sprite_rockford_moving_down1-0x20) + sprite_rockford_blinking3-0x20; 1e85: 52          R
    equb    16*(sprite_rockford_moving_down2-0x20) + sprite_rockford_blinking2-0x20; 1e86: 61          a
    equb    16*(sprite_rockford_moving_down1-0x20) + sprite_rockford_blinking1-0x20; 1e87: 50          P
    equb    16*(sprite_rockford_moving_down3-0x20) + sprite_rockford_blinking1-0x20; 1e88: 70          p
    equb      16*(sprite_rockford_moving_up2-0x20) + sprite_rockford_blinking1-0x20; 1e89: 90          .
    equb      16*(sprite_rockford_moving_up2-0x20) + sprite_rockford_blinking3-0x20; 1e8a: 92          .
    equb    16*(sprite_rockford_moving_down3-0x20) + sprite_rockford_blinking1-0x20; 1e8b: 70          p
    equb    16*(sprite_rockford_moving_down1-0x20) + sprite_rockford_blinking3-0x20; 1e8c: 52          R
    equb       16*(sprite_rockford_blinking1-0x20) + sprite_rockford_blinking1-0x20; 1e8d: 00          .
    equb       16*(sprite_rockford_blinking1-0x20) + sprite_rockford_blinking1-0x20; 1e8e: 00          .
    equb       16*(sprite_rockford_blinking1-0x20) + sprite_rockford_blinking1-0x20; 1e8f: 00          .
    equb       16*(sprite_rockford_blinking2-0x20) + sprite_rockford_blinking2-0x20; 1e90: 11          .
    equb       16*(sprite_rockford_blinking3-0x20) + sprite_rockford_blinking3-0x20; 1e91: 22          "
    equb       16*(sprite_rockford_blinking2-0x20) + sprite_rockford_blinking2-0x20; 1e92: 11          .
    equb       16*(sprite_rockford_blinking1-0x20) + sprite_rockford_blinking1-0x20; 1e93: 00          .
    equb       16*(sprite_rockford_blinking1-0x20) + sprite_rockford_blinking1-0x20; 1e94: 00          .
    equb       16*(sprite_rockford_blinking1-0x20) + sprite_rockford_blinking2-0x20; 1e95: 01          .
    equb      16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_up2-0x20; 1e96: 09          .
    equb    16*(sprite_rockford_blinking3-0x20) + sprite_rockford_moving_down3-0x20; 1e97: 27          '
    equb    16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_down1-0x20; 1e98: 05          .
    equb    16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_down1-0x20; 1e99: 05          .
    equb    16*(sprite_rockford_blinking3-0x20) + sprite_rockford_moving_down1-0x20; 1e9a: 25          %
    equb    16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_down1-0x20; 1e9b: 05          .
    equb 16*(sprite_rockford_moving_down1-0x20) + sprite_rockford_moving_down1-0x20; 1e9c: 55          U
    equb   16*(sprite_rockford_moving_down3-0x20) + sprite_rockford_moving_up2-0x20; 1e9d: 79          y
    equb   16*(sprite_rockford_moving_up2-0x20) + sprite_rockford_moving_down1-0x20; 1e9e: 95          .
    equb 16*(sprite_rockford_moving_down3-0x20) + sprite_rockford_moving_down1-0x20; 1e9f: 75          u
.sprite_addr_93
    equb 16*(sprite_rockford_moving_down1-0x20) + sprite_rockford_moving_down1-0x20; 1ea0: 55          U
    equb      16*(sprite_rockford_blinking3-0x20) + sprite_rockford_moving_up1-0x20; 1ea1: 28          (
    equb    16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_down1-0x20; 1ea2: 05          .
    equb    16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_down2-0x20; 1ea3: 06          .
    equb    16*(sprite_rockford_blinking3-0x20) + sprite_rockford_moving_down3-0x20; 1ea4: 27          '
    equb    16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_down1-0x20; 1ea5: 05          .
    equb    16*(sprite_rockford_blinking3-0x20) + sprite_rockford_moving_down1-0x20; 1ea6: 25          %
    equb 16*(sprite_rockford_moving_down1-0x20) + sprite_rockford_moving_down1-0x20; 1ea7: 55          U
    equb 16*(sprite_rockford_moving_down1-0x20) + sprite_rockford_moving_down1-0x20; 1ea8: 55          U
    equb   16*(sprite_rockford_moving_down1-0x20) + sprite_rockford_moving_up2-0x20; 1ea9: 59          Y
    equb 16*(sprite_rockford_moving_down1-0x20) + sprite_rockford_moving_down1-0x20; 1eaa: 55          U
    equb 16*(sprite_rockford_moving_down2-0x20) + sprite_rockford_moving_down1-0x20; 1eab: 65          e
    equb      16*(sprite_rockford_moving_up2-0x20) + sprite_rockford_blinking2-0x20; 1eac: 91          .
    equb    16*(sprite_rockford_moving_down2-0x20) + sprite_rockford_blinking3-0x20; 1ead: 62          b
    equb      16*(sprite_rockford_moving_up2-0x20) + sprite_rockford_blinking2-0x20; 1eae: 91          .
    equb    16*(sprite_rockford_moving_down2-0x20) + sprite_rockford_blinking1-0x20; 1eaf: 60          `
    equb    16*(sprite_rockford_moving_down3-0x20) + sprite_rockford_blinking1-0x20; 1eb0: 70          p
    equb    16*(sprite_rockford_blinking3-0x20) + sprite_rockford_moving_down1-0x20; 1eb1: 25          %
    equb    16*(sprite_rockford_blinking2-0x20) + sprite_rockford_moving_down2-0x20; 1eb2: 16          .
    equb      16*(sprite_rockford_blinking2-0x20) + sprite_rockford_moving_up2-0x20; 1eb3: 19          .
    equb      16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_up1-0x20; 1eb4: 08          .
    equb      16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_up2-0x20; 1eb5: 09          .
    equb    16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_down2-0x20; 1eb6: 06          .
    equb    16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_down1-0x20; 1eb7: 05          .
    equb    16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_down2-0x20; 1eb8: 06          .
    equb    16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_down1-0x20; 1eb9: 05          .
    equb     16*(sprite_rockford_winking1-0x20) + sprite_rockford_moving_down2-0x20; 1eba: 36          6
    equb     16*(sprite_rockford_winking2-0x20) + sprite_rockford_moving_down1-0x20; 1ebb: 45          E
    equb       16*(sprite_rockford_winking2-0x20) + sprite_rockford_moving_up1-0x20; 1ebc: 48          H
    equb     16*(sprite_rockford_winking2-0x20) + sprite_rockford_moving_down3-0x20; 1ebd: 47          G
    equb     16*(sprite_rockford_winking1-0x20) + sprite_rockford_moving_down2-0x20; 1ebe: 36          6
    equb     16*(sprite_rockford_winking1-0x20) + sprite_rockford_moving_down1-0x20; 1ebf: 35          5
.sprite_addr_94
    equb &35, &ff, &fb, &f7, &fd, &fe, &7f, &ff, &b7, &af, &bf, &bf   ; 1ec0: 35 ff fb... 5..
    equb &bf, &bf, &bf, &9f,   8,   8,   4,   8,   4,   8,   4,   1   ; 1ecc: bf bf bf... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 1ed8: ff ff ff... ...

.sprite_addr_95
.unused3
    equb sprite_0                                                     ; 1ee0: 32          2
    equb sprite_0                                                     ; 1ee1: 32          2
    equb sprite_diamond1                                              ; 1ee2: 03          .
    equb sprite_0                                                     ; 1ee3: 32          2
    equb sprite_0                                                     ; 1ee4: 32          2
    equb sprite_space                                                 ; 1ee5: 00          .
    equb sprite_0                                                     ; 1ee6: 32          2
    equb sprite_0                                                     ; 1ee7: 32          2
    equb sprite_0                                                     ; 1ee8: 32          2
    equb sprite_space                                                 ; 1ee9: 00          .
    equb sprite_0                                                     ; 1eea: 32          2
    equb sprite_0                                                     ; 1eeb: 32          2
    equb sprite_0                                                     ; 1eec: 32          2
    equb sprite_space                                                 ; 1eed: 00          .
    equb sprite_0                                                     ; 1eee: 32          2
    equb sprite_0                                                     ; 1eef: 32          2
    equb 2, 5, 4                                                      ; 1ef0: 02 05 04    ...
    equb sprite_space                                                 ; 1ef3: 00          .
    equb sprite_0                                                     ; 1ef4: 32          2
    equb sprite_0                                                     ; 1ef5: 32          2
    equb sprite_0                                                     ; 1ef6: 32          2
    equb sprite_0                                                     ; 1ef7: 32          2
    equb sprite_0                                                     ; 1ef8: 32          2
    equb sprite_0                                                     ; 1ef9: 32          2
    equb &0a                                                          ; 1efa: 0a          .
    equb sprite_space                                                 ; 1efb: 00          .
    equb sprite_space                                                 ; 1efc: 00          .
    equb sprite_space                                                 ; 1efd: 00          .
    equb sprite_space                                                 ; 1efe: 00          .
    equb sprite_0                                                     ; 1eff: 32          2
.sprite_to_next_sprite
    equb sprite_space                                                 ; 1f00: 00          .
    equb sprite_boulder1                                              ; 1f01: 01          .
    equb sprite_boulder2                                              ; 1f02: 02          .
    equb sprite_diamond2                                              ; 1f03: 04          .
    equb sprite_diamond3                                              ; 1f04: 05          .
    equb sprite_diamond4                                              ; 1f05: 06          .
    equb sprite_diamond1                                              ; 1f06: 03          .
    equb &60                                                          ; 1f07: 60          `
    equb sprite_titanium_wall2                                        ; 1f08: 08          .
    equb &67                                                          ; 1f09: 67          g
    equb &61                                                          ; 1f0a: 61          a
    equb sprite_wall2                                                 ; 1f0b: 0b          .
    equb sprite_explosion1                                            ; 1f0c: 0c          .
    equb sprite_explosion2                                            ; 1f0d: 0d          .
    equb sprite_explosion3                                            ; 1f0e: 0e          .
.unused4
    equb &0f, &11, &12, &13, &10, &14, &15, &17, &18, &62, &1a, &1b   ; 1f0f: 0f 11 12... ...
    equb &1c, &1a, &1d, &68, &1f, &20, &21, &22, &23, &24, &25, &26   ; 1f1b: 1c 1a 1d... ...
    equb &27, &28, &29, &2b, &2c, &2d, &63, &2f, &30, &31, &65        ; 1f27: 27 28 29... '()

    equb sprite_0                                                     ; 1f32: 32          2
    equb sprite_0                                                     ; 1f33: 32          2
    equb sprite_diamond1                                              ; 1f34: 03          .
    equb sprite_0                                                     ; 1f35: 32          2
    equb sprite_0                                                     ; 1f36: 32          2
    equb &0a                                                          ; 1f37: 0a          .
    equb sprite_8                                                     ; 1f38: 3a          :
    equb sprite_2                                                     ; 1f39: 34          4
    equb sprite_2                                                     ; 1f3a: 34          4
    equb sprite_space                                                 ; 1f3b: 00          .
    equb sprite_0                                                     ; 1f3c: 32          2
    equb sprite_0                                                     ; 1f3d: 32          2
    equb sprite_0                                                     ; 1f3e: 32          2
    equb sprite_space                                                 ; 1f3f: 00          .
    equb sprite_7                                                     ; 1f40: 39          9
    equb sprite_7                                                     ; 1f41: 39          9
    equb sprite_6                                                     ; 1f42: 38          8
    equb sprite_4                                                     ; 1f43: 36          6
    equb sprite_7                                                     ; 1f44: 39          9
    equb sprite_6                                                     ; 1f45: 38          8
    equs "PLAYER"                                                     ; 1f46: 50 4c 41... PLA
    equb sprite_space                                                 ; 1f4c: 00          .
    equb sprite_1                                                     ; 1f4d: 33          3
    equb sprite_comma                                                 ; 1f4e: 3f          ?
    equb sprite_space                                                 ; 1f4f: 00          .
    equb sprite_3                                                     ; 1f50: 35          5
    equb sprite_space                                                 ; 1f51: 00          .
    equs "MEN"                                                        ; 1f52: 4d 45 4e    MEN
    equb sprite_space                                                 ; 1f55: 00          .
    equs "A"                                                          ; 1f56: 41          A
    equb sprite_slash                                                 ; 1f57: 3e          >
    equb sprite_1                                                     ; 1f58: 33          3
    equb sprite_space                                                 ; 1f59: 00          .

    equb &5a, &5b, &5c, &5d, &5e, &5f,   7, &0a, &16, &64, &2a, &66   ; 1f5a: 5a 5b 5c... Z[\
    equb &2e,   9, &1e, &69, &6a, &6b, &6c, &6d, &6e, &6f, &70, &71   ; 1f66: 2e 09 1e... ...
    equb &72, &73, &74, &75, &76, &77, &78, &79, &7a, &7b, &7c, &7d   ; 1f72: 72 73 74... rst
    equb &7e, &7f                                                     ; 1f7e: 7e 7f       ~.

.cell_type_to_sprite
    equb sprite_space                                                 ; 1f80: 00          .
    equb sprite_earth2                                                ; 1f81: 1e          .
    equb sprite_wall2                                                 ; 1f82: 0b          .
    equb sprite_titanium_wall2                                        ; 1f83: 08          .
    equb sprite_diamond1                                              ; 1f84: 03          .
    equb sprite_boulder1                                              ; 1f85: 01          .
    equb sprite_firefly4                                              ; 1f86: 1c          .
.fungus_animated_sprites1a
    equb sprite_fungus1                                               ; 1f87: 14          .
    equb sprite_earth2                                                ; 1f88: 1e          .
    equb sprite_titanium_wall1                                        ; 1f89: 07          .
    equs "LDA"                                                        ; 1f8a: 4c 44 41    LDA
    equb sprite_wall2                                                 ; 1f8d: 0b          .
    equb sprite_butterfly1                                            ; 1f8e: 16          .
.rockford_sprite
    equb sprite_rockford_moving_down1                                 ; 1f8f: 25          %

    equb sprite_explosion4                                            ; 1f90: 0f          .
    equb sprite_explosion4                                            ; 1f91: 0f          .
    equb sprite_explosion4                                            ; 1f92: 0f          .
    equb sprite_explosion4                                            ; 1f93: 0f          .
    equb sprite_rockford_winking2                                     ; 1f94: 24          $
    equb sprite_rockford_moving_right4                                ; 1f95: 31          1
    equb sprite_firefly4                                              ; 1f96: 1c          .
.fungus_animated_sprites1b
    equb sprite_fungus1                                               ; 1f97: 14          .
    equb sprite_box                                                   ; 1f98: 09          .
    equb sprite_slash                                                 ; 1f99: 3e          >
    equb sprite_firefly4                                              ; 1f9a: 1c          .
    equb sprite_butterfly2                                            ; 1f9b: 17          .
    equb sprite_fungus1                                               ; 1f9c: 14          .
    equb sprite_magic_wall1                                           ; 1f9d: 10          .
    equb sprite_butterfly1                                            ; 1f9e: 16          .
    equb sprite_rockford_moving_left3                                 ; 1f9f: 2c          ,

    equb sprite_explosion3                                            ; 1fa0: 0e          .
    equb sprite_explosion3                                            ; 1fa1: 0e          .
    equb sprite_explosion3                                            ; 1fa2: 0e          .
    equb sprite_explosion3                                            ; 1fa3: 0e          .
    equb sprite_diamond2                                              ; 1fa4: 04          .
    equb sprite_rockford_moving_right4                                ; 1fa5: 31          1
    equb sprite_firefly4                                              ; 1fa6: 1c          .
.fungus_animated_sprites1c
    equb sprite_fungus2                                               ; 1fa7: 15          .
    equb sprite_firefly2                                              ; 1fa8: 1a          .
    equb &61                                                          ; 1fa9: 61          a
    equb sprite_firefly4                                              ; 1faa: 1c          .
    equb sprite_butterfly2                                            ; 1fab: 17          .
    equb sprite_fungus1                                               ; 1fac: 14          .
    equb sprite_wall2                                                 ; 1fad: 0b          .
    equb sprite_butterfly1                                            ; 1fae: 16          .
    equb sprite_rockford_moving_right4                                ; 1faf: 31          1

    equb sprite_explosion2                                            ; 1fb0: 0d          .
    equb sprite_explosion2                                            ; 1fb1: 0d          .
    equb sprite_explosion2                                            ; 1fb2: 0d          .
    equb sprite_explosion2                                            ; 1fb3: 0d          .
    equb sprite_diamond2                                              ; 1fb4: 04          .
    equb sprite_rockford_moving_right4                                ; 1fb5: 31          1
    equb sprite_firefly4                                              ; 1fb6: 1c          .
.fungus_animated_sprites1d
    equb sprite_fungus2                                               ; 1fb7: 15          .
    equb sprite_firefly2                                              ; 1fb8: 1a          .
    equb sprite_wall2                                                 ; 1fb9: 0b          .
    equb sprite_firefly4                                              ; 1fba: 1c          .
    equb sprite_butterfly2                                            ; 1fbb: 17          .
    equb sprite_fungus1                                               ; 1fbc: 14          .
    equb sprite_wall2                                                 ; 1fbd: 0b          .
    equb sprite_butterfly1                                            ; 1fbe: 16          .
    equb sprite_rockford_moving_up1                                   ; 1fbf: 28          (

    equb sprite_explosion1                                            ; 1fc0: 0c          .
    equb sprite_explosion1                                            ; 1fc1: 0c          .
    equb sprite_explosion1                                            ; 1fc2: 0c          .
    equb sprite_explosion1                                            ; 1fc3: 0c          .
    equb sprite_diamond1                                              ; 1fc4: 03          .
    equb sprite_boulder1                                              ; 1fc5: 01          .
    equb sprite_explosion1                                            ; 1fc6: 0c          .
.fungus_animated_sprites2a
    equb sprite_fungus2                                               ; 1fc7: 15          .
    equb sprite_rockford_moving_right4                                ; 1fc8: 31          1
    equb sprite_rockford_blinking1                                    ; 1fc9: 20
    equb sprite_firefly4                                              ; 1fca: 1c          .
    equb sprite_butterfly2                                            ; 1fcb: 17          .
    equs "KB"                                                         ; 1fcc: 4b 42       KB
    equb sprite_butterfly2                                            ; 1fce: 17          .
    equb sprite_rockford_moving_right3                                ; 1fcf: 30          0

    equb sprite_explosion2                                            ; 1fd0: 0d          .
    equb sprite_explosion2                                            ; 1fd1: 0d          .
    equb sprite_explosion2                                            ; 1fd2: 0d          .
    equb sprite_explosion2                                            ; 1fd3: 0d          .
    equb sprite_rockford_winking2                                     ; 1fd4: 24          $
    equb sprite_rockford_moving_right4                                ; 1fd5: 31          1
    equb sprite_firefly2                                              ; 1fd6: 1a          .
.fungus_animated_sprites2b
    equb sprite_fungus1                                               ; 1fd7: 14          .
    equb sprite_rockford_moving_right4                                ; 1fd8: 31          1
    equb sprite_slash                                                 ; 1fd9: 3e          >
    equb sprite_firefly4                                              ; 1fda: 1c          .
    equb sprite_butterfly2                                            ; 1fdb: 17          .
    equb sprite_magic_wall2                                           ; 1fdc: 11          .
    equb sprite_magic_wall2                                           ; 1fdd: 11          .
    equb sprite_butterfly2                                            ; 1fde: 17          .
    equb sprite_rockford_moving_left2                                 ; 1fdf: 2b          +

    equb sprite_explosion3                                            ; 1fe0: 0e          .
    equb sprite_explosion3                                            ; 1fe1: 0e          .
    equb sprite_explosion3                                            ; 1fe2: 0e          .
    equb sprite_explosion3                                            ; 1fe3: 0e          .
    equb sprite_diamond1                                              ; 1fe4: 03          .
    equb sprite_rockford_moving_right4                                ; 1fe5: 31          1
    equb sprite_firefly2                                              ; 1fe6: 1a          .
.fungus_animated_sprites2c
    equb sprite_fungus1                                               ; 1fe7: 14          .
    equb sprite_rockford_moving_right4                                ; 1fe8: 31          1
    equb &61                                                          ; 1fe9: 61          a
    equb sprite_firefly4                                              ; 1fea: 1c          .
    equb sprite_butterfly2                                            ; 1feb: 17          .
    equb sprite_magic_wall2                                           ; 1fec: 11          .
    equb sprite_explosion2                                            ; 1fed: 0d          .
    equb sprite_butterfly2                                            ; 1fee: 17          .
    equb sprite_rockford_moving_up1                                   ; 1fef: 28          (

    equb sprite_explosion4                                            ; 1ff0: 0f          .
    equb sprite_explosion4                                            ; 1ff1: 0f          .
    equb sprite_explosion4                                            ; 1ff2: 0f          .
    equb sprite_explosion4                                            ; 1ff3: 0f          .
    equb sprite_diamond1                                              ; 1ff4: 03          .
    equb sprite_rockford_moving_right4                                ; 1ff5: 31          1
    equb sprite_firefly2                                              ; 1ff6: 1a          .
.fungus_animated_sprites2d
    equb sprite_fungus2                                               ; 1ff7: 15          .
    equb sprite_rockford_moving_right4                                ; 1ff8: 31          1
    equb sprite_wall2                                                 ; 1ff9: 0b          .
    equb sprite_firefly4                                              ; 1ffa: 1c          .
    equb sprite_butterfly2                                            ; 1ffb: 17          .
    equb sprite_earth2                                                ; 1ffc: 1e          .
    equb sprite_explosion1                                            ; 1ffd: 0c          .
    equb sprite_butterfly2                                            ; 1ffe: 17          .
    equb sprite_explosion1                                            ; 1fff: 0c          .

.sprite_addresses_low
    equb <sprite_addr_space                                           ; 2000: 00          .
    equb <sprite_addr_boulder1                                        ; 2001: 20
    equb <sprite_addr_boulder2                                        ; 2002: 40          @
    equb <sprite_addr_diamond1                                        ; 2003: 60          `
    equb <sprite_addr_diamond2                                        ; 2004: 80          .
    equb <sprite_addr_diamond3                                        ; 2005: a0          .
    equb <sprite_addr_diamond4                                        ; 2006: c0          .
.sprite_titanium_addressA
    equb <sprite_addr_titanium_wall1                                  ; 2007: e0          .
    equb <sprite_addr_titanium_wall2                                  ; 2008: 00          .
    equb <sprite_addr_box                                             ; 2009: 20
    equb <sprite_addr_wall1                                           ; 200a: 40          @
    equb <sprite_addr_wall2                                           ; 200b: 60          `
    equb <sprite_addr_explosion1                                      ; 200c: 80          .
    equb <sprite_addr_explosion2                                      ; 200d: a0          .
    equb <sprite_addr_explosion3                                      ; 200e: c0          .
    equb <sprite_addr_explosion4                                      ; 200f: e0          .
    equb <sprite_addr_magic_wall1                                     ; 2010: 00          .
    equb <sprite_addr_magic_wall2                                     ; 2011: 20
    equb <sprite_addr_magic_wall3                                     ; 2012: 40          @
    equb <sprite_addr_magic_wall4                                     ; 2013: 60          `
    equb <sprite_addr_fungus1                                         ; 2014: 80          .
    equb <sprite_addr_fungus2                                         ; 2015: a0          .
    equb <sprite_addr_butterfly1                                      ; 2016: c0          .
    equb <sprite_addr_butterfly2                                      ; 2017: e0          .
    equb <sprite_addr_butterfly3                                      ; 2018: 00          .
    equb <sprite_addr_firefly1                                        ; 2019: 20
    equb <sprite_addr_firefly2                                        ; 201a: 40          @
    equb <sprite_addr_firefly3                                        ; 201b: 60          `
    equb <sprite_addr_firefly4                                        ; 201c: 80          .
    equb <sprite_addr_earth1                                          ; 201d: a0          .
    equb <sprite_addr_earth2                                          ; 201e: c0          .
    equb <sprite_addr_pathway                                         ; 201f: e0          .
    equb <sprite_addr_rockford_blinking1                              ; 2020: 00          .
    equb <sprite_addr_rockford_blinking2                              ; 2021: 20
    equb <sprite_addr_rockford_blinking3                              ; 2022: 40          @
    equb <sprite_addr_rockford_winking1                               ; 2023: 60          `
    equb <sprite_addr_rockford_winking2                               ; 2024: 80          .
    equb <sprite_addr_rockford_moving_down1                           ; 2025: a0          .
    equb <sprite_addr_rockford_moving_down2                           ; 2026: c0          .
    equb <sprite_addr_rockford_moving_down3                           ; 2027: e0          .
    equb <sprite_addr_rockford_moving_up1                             ; 2028: 00          .
    equb <sprite_addr_rockford_moving_up2                             ; 2029: 20
    equb <sprite_addr_rockford_moving_left1                           ; 202a: 40          @
    equb <sprite_addr_rockford_moving_left2                           ; 202b: 60          `
    equb <sprite_addr_rockford_moving_left3                           ; 202c: 80          .
    equb <sprite_addr_rockford_moving_left4                           ; 202d: a0          .
    equb <sprite_addr_rockford_moving_right1                          ; 202e: c0          .
    equb <sprite_addr_rockford_moving_right2                          ; 202f: e0          .
    equb <sprite_addr_rockford_moving_right3                          ; 2030: 00          .
    equb <sprite_addr_rockford_moving_right4                          ; 2031: 20
    equb <sprite_addr_0                                               ; 2032: 40          @
    equb <sprite_addr_1                                               ; 2033: 60          `
    equb <sprite_addr_2                                               ; 2034: 80          .
    equb <sprite_addr_3                                               ; 2035: a0          .
    equb <sprite_addr_4                                               ; 2036: c0          .
    equb <sprite_addr_5                                               ; 2037: e0          .
    equb <sprite_addr_6                                               ; 2038: 00          .
    equb <sprite_addr_7                                               ; 2039: 20
    equb <sprite_addr_8                                               ; 203a: 40          @
    equb <sprite_addr_9                                               ; 203b: 60          `
    equb <sprite_addr_white                                           ; 203c: 80          .
    equb <sprite_addr_dash                                            ; 203d: a0          .
    equb <sprite_addr_slash                                           ; 203e: c0          .
    equb <sprite_addr_comma                                           ; 203f: e0          .
    equb <sprite_addr_full_stop                                       ; 2040: 00          .
    equb <sprite_addr_A                                               ; 2041: 20
    equb <sprite_addr_B                                               ; 2042: 40          @
    equb <sprite_addr_C                                               ; 2043: 60          `
    equb <sprite_addr_D                                               ; 2044: 80          .
    equb <sprite_addr_E                                               ; 2045: a0          .
    equb <sprite_addr_F                                               ; 2046: c0          .
    equb <sprite_addr_G                                               ; 2047: e0          .
    equb <sprite_addr_H                                               ; 2048: 00          .
    equb <sprite_addr_I                                               ; 2049: 20
    equb <sprite_addr_J                                               ; 204a: 40          @
    equb <sprite_addr_K                                               ; 204b: 60          `
    equb <sprite_addr_L                                               ; 204c: 80          .
    equb <sprite_addr_M                                               ; 204d: a0          .
    equb <sprite_addr_N                                               ; 204e: c0          .
    equb <sprite_addr_O                                               ; 204f: e0          .
    equb <sprite_addr_P                                               ; 2050: 00          .
    equb <sprite_addr_Q                                               ; 2051: 20
    equb <sprite_addr_R                                               ; 2052: 40          @
    equb <sprite_addr_S                                               ; 2053: 60          `
    equb <sprite_addr_T                                               ; 2054: 80          .
    equb <sprite_addr_U                                               ; 2055: a0          .
    equb <sprite_addr_V                                               ; 2056: c0          .
    equb <sprite_addr_W                                               ; 2057: e0          .
    equb <sprite_addr_X                                               ; 2058: 00          .
    equb <sprite_addr_Y                                               ; 2059: 20
    equb <sprite_addr_Z                                               ; 205a: 40          @
    equb <sprite_addr_91                                              ; 205b: 60          `
    equb <sprite_addr_92                                              ; 205c: 80          .
    equb <sprite_addr_93                                              ; 205d: a0          .
    equb <sprite_addr_94                                              ; 205e: c0          .
    equb <sprite_addr_95                                              ; 205f: e0          .
.sprite_titanium_addressB
    equb <sprite_addr_titanium_wall1                                  ; 2060: e0          .
    equb <sprite_addr_97                                              ; 2061: 40          @
    equb <sprite_addr_98                                              ; 2062: e0          .
    equb <sprite_addr_99                                              ; 2063: 80          .
    equb <sprite_addr_100                                             ; 2064: 60          `
    equb <sprite_addr_101                                             ; 2065: 00          .
    equb <sprite_addr_102                                             ; 2066: e0          .
    equb <sprite_addr_103                                             ; 2067: 00          .
    equb <sprite_addr_104                                             ; 2068: 00          .
.unused1
    equb &20, &40, &60, &80, &a0, &c0, &e0,   0, &20, &40, &60, &80   ; 2069: 20 40 60...  @`
    equb &a0, &c0, &e0,   0, &20, &40, &60, &80, &a0, &c0, &e0        ; 2075: a0 c0 e0... ...
.sprite_addresses_high
    equb >sprite_addr_space                                           ; 2080: 13          .
    equb >sprite_addr_boulder1                                        ; 2081: 13          .
    equb >sprite_addr_boulder2                                        ; 2082: 13          .
    equb >sprite_addr_diamond1                                        ; 2083: 13          .
    equb >sprite_addr_diamond2                                        ; 2084: 13          .
    equb >sprite_addr_diamond3                                        ; 2085: 13          .
    equb >sprite_addr_diamond4                                        ; 2086: 13          .
    equb >sprite_addr_titanium_wall1                                  ; 2087: 13          .
    equb >sprite_addr_titanium_wall2                                  ; 2088: 14          .
    equb >sprite_addr_box                                             ; 2089: 14          .
    equb >sprite_addr_wall1                                           ; 208a: 14          .
    equb >sprite_addr_wall2                                           ; 208b: 14          .
    equb >sprite_addr_explosion1                                      ; 208c: 14          .
    equb >sprite_addr_explosion2                                      ; 208d: 14          .
    equb >sprite_addr_explosion3                                      ; 208e: 14          .
    equb >sprite_addr_explosion4                                      ; 208f: 14          .
    equb >sprite_addr_magic_wall1                                     ; 2090: 15          .
    equb >sprite_addr_magic_wall2                                     ; 2091: 15          .
    equb >sprite_addr_magic_wall3                                     ; 2092: 15          .
    equb >sprite_addr_magic_wall4                                     ; 2093: 15          .
    equb >sprite_addr_fungus1                                         ; 2094: 15          .
    equb >sprite_addr_fungus2                                         ; 2095: 15          .
    equb >sprite_addr_butterfly1                                      ; 2096: 15          .
    equb >sprite_addr_butterfly2                                      ; 2097: 15          .
    equb >sprite_addr_butterfly3                                      ; 2098: 16          .
    equb >sprite_addr_firefly1                                        ; 2099: 16          .
    equb >sprite_addr_firefly2                                        ; 209a: 16          .
    equb >sprite_addr_firefly3                                        ; 209b: 16          .
    equb >sprite_addr_firefly4                                        ; 209c: 16          .
    equb >sprite_addr_earth1                                          ; 209d: 16          .
    equb >sprite_addr_earth2                                          ; 209e: 16          .
    equb >sprite_addr_pathway                                         ; 209f: 16          .
    equb >sprite_addr_rockford_blinking1                              ; 20a0: 17          .
    equb >sprite_addr_rockford_blinking2                              ; 20a1: 17          .
    equb >sprite_addr_rockford_blinking3                              ; 20a2: 17          .
    equb >sprite_addr_rockford_winking1                               ; 20a3: 17          .
    equb >sprite_addr_rockford_winking2                               ; 20a4: 17          .
    equb >sprite_addr_rockford_moving_down1                           ; 20a5: 17          .
    equb >sprite_addr_rockford_moving_down2                           ; 20a6: 17          .
    equb >sprite_addr_rockford_moving_down3                           ; 20a7: 17          .
    equb >sprite_addr_rockford_moving_up1                             ; 20a8: 18          .
    equb >sprite_addr_rockford_moving_up2                             ; 20a9: 18          .
    equb >sprite_addr_rockford_moving_left1                           ; 20aa: 18          .
    equb >sprite_addr_rockford_moving_left2                           ; 20ab: 18          .
    equb >sprite_addr_rockford_moving_left3                           ; 20ac: 18          .
    equb >sprite_addr_rockford_moving_left4                           ; 20ad: 18          .
    equb >sprite_addr_rockford_moving_right1                          ; 20ae: 18          .
    equb >sprite_addr_rockford_moving_right2                          ; 20af: 18          .
    equb >sprite_addr_rockford_moving_right3                          ; 20b0: 19          .
    equb >sprite_addr_rockford_moving_right4                          ; 20b1: 19          .
    equb >sprite_addr_0                                               ; 20b2: 19          .
    equb >sprite_addr_1                                               ; 20b3: 19          .
    equb >sprite_addr_2                                               ; 20b4: 19          .
    equb >sprite_addr_3                                               ; 20b5: 19          .
    equb >sprite_addr_4                                               ; 20b6: 19          .
    equb >sprite_addr_5                                               ; 20b7: 19          .
    equb >sprite_addr_6                                               ; 20b8: 1a          .
    equb >sprite_addr_7                                               ; 20b9: 1a          .
    equb >sprite_addr_8                                               ; 20ba: 1a          .
    equb >sprite_addr_9                                               ; 20bb: 1a          .
    equb >sprite_addr_white                                           ; 20bc: 1a          .
    equb >sprite_addr_dash                                            ; 20bd: 1a          .
    equb >sprite_addr_slash                                           ; 20be: 1a          .
    equb >sprite_addr_comma                                           ; 20bf: 1a          .
    equb >sprite_addr_full_stop                                       ; 20c0: 1b          .
    equb >sprite_addr_A                                               ; 20c1: 1b          .
    equb >sprite_addr_B                                               ; 20c2: 1b          .
    equb >sprite_addr_C                                               ; 20c3: 1b          .
    equb >sprite_addr_D                                               ; 20c4: 1b          .
    equb >sprite_addr_E                                               ; 20c5: 1b          .
    equb >sprite_addr_F                                               ; 20c6: 1b          .
    equb >sprite_addr_G                                               ; 20c7: 1b          .
    equb >sprite_addr_H                                               ; 20c8: 1c          .
    equb >sprite_addr_I                                               ; 20c9: 1c          .
    equb >sprite_addr_J                                               ; 20ca: 1c          .
    equb >sprite_addr_K                                               ; 20cb: 1c          .
    equb >sprite_addr_L                                               ; 20cc: 1c          .
    equb >sprite_addr_M                                               ; 20cd: 1c          .
    equb >sprite_addr_N                                               ; 20ce: 1c          .
    equb >sprite_addr_O                                               ; 20cf: 1c          .
    equb >sprite_addr_P                                               ; 20d0: 1d          .
    equb >sprite_addr_Q                                               ; 20d1: 1d          .
    equb >sprite_addr_R                                               ; 20d2: 1d          .
    equb >sprite_addr_S                                               ; 20d3: 1d          .
    equb >sprite_addr_T                                               ; 20d4: 1d          .
    equb >sprite_addr_U                                               ; 20d5: 1d          .
    equb >sprite_addr_V                                               ; 20d6: 1d          .
    equb >sprite_addr_W                                               ; 20d7: 1d          .
    equb >sprite_addr_X                                               ; 20d8: 1e          .
    equb >sprite_addr_Y                                               ; 20d9: 1e          .
    equb >sprite_addr_Z                                               ; 20da: 1e          .
    equb >sprite_addr_91                                              ; 20db: 1e          .
    equb >sprite_addr_92                                              ; 20dc: 1e          .
    equb >sprite_addr_93                                              ; 20dd: 1e          .
    equb >sprite_addr_94                                              ; 20de: 1e          .
.unused5
    equb >sprite_addr_95                                              ; 20df: 1e          .
    equb >sprite_addr_titanium_wall1                                  ; 20e0: 13          .
    equb >sprite_addr_97                                              ; 20e1: 14          .
    equb >sprite_addr_98                                              ; 20e2: 15          .
    equb >sprite_addr_99                                              ; 20e3: 18          .
    equb >sprite_addr_100                                             ; 20e4: 18          .
    equb >sprite_addr_101                                             ; 20e5: 19          .
    equb >sprite_addr_102                                             ; 20e6: 18          .
    equb >sprite_addr_103                                             ; 20e7: 14          .
    equb >sprite_addr_104                                             ; 20e8: 14          .
.unused2
    equb &20, &20, &20, &20, &20, &20, &20, &21, &21, &21, &21, &21   ; 20e9: 20 20 20...
    equb &21, &21, &21, &22, &22, &22, &22, &22, &22, &22, &22        ; 20f5: 21 21 21... !!!
.l2100
    equb 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0               ; 2100: 00 00 01... ...
.l2110
    equb 2, 3, 4, 5, 6, 7, 0, 1                                       ; 2110: 02 03 04... ...
.l2118
    equb &b6, &be, &86, &8e, &96, &9e, &a6, &ae                       ; 2118: b6 be 86... ...
.cell_value_to_fill_vertically
    equb   0,   0,   0,   0, &85, &84,   0,   0,   0,   0,   0,   0   ; 2120: 00 00 00... ...
    equb   0,   0,   0,   0                                           ; 212c: 00 00 00... ...

.some_array_of_cells
    equb &84, &84, &84,   0, &84, &84, &84, &84,   0,   0,   0, &84   ; 2130: 84 84 84... ...
    equb &84, &84, &84, &ff                                           ; 213c: 84 84 84... ...
.another_array_of_cells
    equb &b3, &b3, &b3,   0, &b3, &b3, &b3, &b3,   0,   0,   0, &b3   ; 2140: b3 b3 b3... ...
    equb &b3, &b3, &b3, &ff                                           ; 214c: b3 b3 b3... ...
.index_to_cell_type
    equb   4, &44,   6, &16, &26, &36                                 ; 2150: 04 44 06... .D.
.exit_cell_type
    equb &18, &1d, &0e, &1e, &2e, &3e, &2f, &1f,   9                  ; 2156: 18 1d 0e... ...
    equb   9, &0a,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 215f: 09 0a 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 216b: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0                  ; 2177: 00 00 00... ...
.l2180
    equb   0,   0,   0,   0,   0,   0, &46,   0,   0,   0,   0, &7d   ; 2180: 00 00 00... ...
    equb   0, &3d, &4e, &7f, &91, &a1, &e1,   0, &f1, &d1, &b6, &c1   ; 218c: 00 3d 4e... .=N
    equb   0,   0, &d1, &f1, &c1, &71,   0, &71,   0,   0,   0,   0   ; 2198: 00 00 d1... ...
    equb &83, &92, &85, &8a,   0,   0, &8b, &8a, &8a,   0,   0,   0   ; 21a4: 83 92 85... ...
    equb   1,   1,   1, &ff,   1,   1,   1, &ff, &ff, &ff,   0,   0   ; 21b0: 01 01 01... ...
    equb &ff, &ff, &ff,   0                                           ; 21bc: ff ff ff... ...
.handler_table_low
    equb               <handler_basics,               <handler_basics ; 21c0: a5 a5       ..
    equb               <handler_basics,               <handler_basics ; 21c2: a5 a5       ..
    equb                             0,                             0 ; 21c4: 00 00       ..
    equb              <handler_firefly,               <handler_fungus ; 21c6: 00 9e       ..
    equb    <handler_flashing_rockford,       <handler_firefly_in_box ; 21c8: e3 ca       ..
    equb    <handler_flashing_rockford,   <handler_for_vertical_strip ; 21ca: e3 e0       ..
    equb <handler_for_horizontal_strip,           <handler_magic_wall ; 21cc: f0 ae       ..
    equb              <handler_firefly,            <handler_rockford2 ; 21ce: 00 00       ..
.handler_table_high
    equb               >handler_basics,               >handler_basics ; 21d0: 22 22       ""
    equb               >handler_basics,               >handler_basics ; 21d2: 22 22       ""
    equb                             0,                             0 ; 21d4: 00 00       ..
    equb              >handler_firefly,               >handler_fungus ; 21d6: 25 25       %%
    equb    >handler_flashing_rockford,       >handler_firefly_in_box ; 21d8: 26 2b       &+
    equb    >handler_flashing_rockford,   >handler_for_vertical_strip ; 21da: 26 23       &#
    equb >handler_for_horizontal_strip,           >handler_magic_wall ; 21dc: 23 26       #&
    equb              >handler_firefly,            >handler_rockford2 ; 21de: 25 26       %&
.l21e0
    equb &8f, &8f, &84,   0, &f1, &d1, &b6, &b1, &8f, &8f, &d1, &f1   ; 21e0: 8f 8f 84... ...
    equb &b1, &71,   0, &71                                           ; 21ec: b1 71 00... .q.
.l21f0
    equb &ff, &ff,   0,   0, &ff,   1,   0,   0,   0,   0, &ff,   0   ; 21f0: ff ff 00... ...
    equb   0,   0,   0,   1                                           ; 21fc: 00 00 00... ...
.neighbouring_cell_variable_from_direction_index
    equb cell_right                                                   ; 2200: 78          x
    equb cell_left                                                    ; 2201: 76          v
    equb cell_above                                                   ; 2202: 74          t
    equb cell_below                                                   ; 2203: 7a          z
.l2204
    equb &43, &3f,   0, &c1                                           ; 2204: 43 3f 00... C?.
.l2208
    equb &42, &40,   1, &81,   0, &10                                 ; 2208: 42 40 01... B@.
    equs " &@P`p"                                                     ; 220e: 20 26 40...  &@
    equb &80, &90, &a0, &b0,   1, &d0, &e0, &f0                       ; 2214: 80 90 a0... ...
.firefly_cell_values
    equb &76, &78, &74, &74, &78, &76, &7a, &7a                       ; 221c: 76 78 74... vxt
.rockford_cell_value_for_direction
    equb &af, &9f,   0,   0                                           ; 2224: af 9f 00... ...
.inkey_keys_table
    equb inkey_key_escape                                             ; 2228: 8f          .
    equb inkey_key_space                                              ; 2229: 9d          .
    equb inkey_key_b                                                  ; 222a: 9b          .
    equb inkey_key_return                                             ; 222b: b6          .
    equb inkey_key_slash                                              ; 222c: 97          .
    equb inkey_key_colon                                              ; 222d: b7          .
    equb inkey_key_z                                                  ; 222e: 9e          .
    equb inkey_key_x                                                  ; 222f: bd          .


.unused6
    lsr a                                                             ; 2230: 4a          J
    lsr a                                                             ; 2231: 4a          J
    lsr a                                                             ; 2232: 4a          J
    lsr a                                                             ; 2233: 4a          J
    and #3                                                            ; 2234: 29 03       ).
    tax                                                               ; 2236: aa          .
    rts                                                               ; 2237: 60          `

.increment_ptr_and_clear_carry
    inc ptr_low                                                       ; 2238: e6 8c       ..
    bne skip_increment                                                ; 223a: d0 02       ..
    inc ptr_high                                                      ; 223c: e6 8d       ..
.skip_increment
    clc                                                               ; 223e: 18          .
    rts                                                               ; 223f: 60          `

.add_a_to_ptr
    clc                                                               ; 2240: 18          .
    adc ptr_low                                                       ; 2241: 65 8c       e.
    sta ptr_low                                                       ; 2243: 85 8c       ..
    bcc return1                                                       ; 2245: 90 02       ..
    inc ptr_high                                                      ; 2247: e6 8d       ..
.return1
    rts                                                               ; 2249: 60          `

; a small 'pseudo-random' number routine. Generates a sequence of 256 numbers.
.get_next_random_byte
    lda random_seed                                                   ; 224a: a5 88       ..
    asl a                                                             ; 224c: 0a          .
    asl a                                                             ; 224d: 0a          .
    asl a                                                             ; 224e: 0a          .
    asl a                                                             ; 224f: 0a          .
    sec                                                               ; 2250: 38          8
    adc random_seed                                                   ; 2251: 65 88       e.
    sta random_seed                                                   ; 2253: 85 88       ..
    rts                                                               ; 2255: 60          `

    ; Clears the entire map to initial_cell_fill_value.
    ; Clears the visible grid to $ff
.clear_map_and_grid
    lda #<(map_row_1-1)                                               ; 2256: a9 3f       .?
    sta ptr_low                                                       ; 2258: 85 8c       ..
    lda #>(map_row_1-1)                                               ; 225a: a9 50       .P
    sta ptr_high                                                      ; 225c: 85 8d       ..
    ldy #0                                                            ; 225e: a0 00       ..
    ; initial random seed
    ldx #20                                                           ; 2260: a2 14       ..
    stx random_seed                                                   ; 2262: 86 88       ..
.clear_map_loop
    lda cell_right                                                    ; 2264: a5 78       .x
    beq c2274                                                         ; 2266: f0 0c       ..
    jsr get_next_random_byte                                          ; 2268: 20 4a 22     J"
.loop_c226b
    cmp cell_right                                                    ; 226b: c5 78       .x
    bcc c2274                                                         ; 226d: 90 05       ..
    sec                                                               ; 226f: 38          8
    sbc cell_right                                                    ; 2270: e5 78       .x
    bne loop_c226b                                                    ; 2272: d0 f7       ..
.c2274
    sta cell_current                                                  ; 2274: 85 77       .w
.increment_ptr_using_40_bytes_out_of_every_64
    inc ptr_low                                                       ; 2276: e6 8c       ..
    lda ptr_low                                                       ; 2278: a5 8c       ..
    and #&3f                                                          ; 227a: 29 3f       )?
    cmp #&28                                                          ; 227c: c9 28       .(
    bcc c2288                                                         ; 227e: 90 08       ..
    lda #&18                                                          ; 2280: a9 18       ..
    jsr add_a_to_ptr                                                  ; 2282: 20 40 22     @"
    dex                                                               ; 2285: ca          .
    beq return1                                                       ; 2286: f0 c1       ..
.c2288
    dec cell_current                                                  ; 2288: c6 77       .w
    bpl increment_ptr_using_40_bytes_out_of_every_64                  ; 228a: 10 ea       ..
    lda cell_below_left                                               ; 228c: a5 79       .y
    sta (ptr_low),y                                                   ; 228e: 91 8c       ..
    bpl clear_map_loop                                                ; 2290: 10 d2       ..
.reset_grid_of_sprites
    ldx #&f0                                                          ; 2292: a2 f0       ..
    lda #&ff                                                          ; 2294: a9 ff       ..
.reset_grid_of_sprites_loop
    dex                                                               ; 2296: ca          .
    sta grid_of_currently_displayed_sprites,x                         ; 2297: 9d 00 0c    ...
    bne reset_grid_of_sprites_loop                                    ; 229a: d0 fa       ..
    ; clear the current status bar
    ldx #&14                                                          ; 229c: a2 14       ..
.clear_status_bar_loop
    dex                                                               ; 229e: ca          .
    sta current_status_bar_sprites,x                                  ; 229f: 9d 28 50    .(P
    bne clear_status_bar_loop                                         ; 22a2: d0 fa       ..
    rts                                                               ; 22a4: 60          `

.handler_basics
    txa                                                               ; 22a5: 8a          .
    sec                                                               ; 22a6: 38          8
    sbc #&90                                                          ; 22a7: e9 90       ..
    cmp #&10                                                          ; 22a9: c9 10       ..
    bpl not_in_range_so_change_nothing                                ; 22ab: 10 04       ..
    ; cell is in the range $90-$9f, so we look up the replacement in a table
    tax                                                               ; 22ad: aa          .
    lda l21e0,x                                                       ; 22ae: bd e0 21    ..!
.not_in_range_so_change_nothing
    tax                                                               ; 22b1: aa          .
    rts                                                               ; 22b2: 60          `

.reveal_or_hide_more_cells
    ldy #<map_row_0                                                   ; 22b3: a0 00       ..
    sty ptr_low                                                       ; 22b5: 84 8c       ..
    lda #>map_row_0                                                   ; 22b7: a9 50       .P
    sta ptr_high                                                      ; 22b9: 85 8d       ..
    ; loop over all the rows, X is the loop counter
    ldx #22                                                           ; 22bb: a2 16       ..
.loop_over_rows
    lda ptr_low                                                       ; 22bd: a5 8c       ..
    ; rows are stored in the first 40 bytes of every 64 bytes, so skip if we have
    ; exceeded the right range
    and #63                                                           ; 22bf: 29 3f       )?
    cmp #40                                                           ; 22c1: c9 28       .(
    bpl skip_to_next_row                                              ; 22c3: 10 17       ..
    ; progress a counter in a non-obvious pattern
    jsr get_next_random_byte                                          ; 22c5: 20 4a 22     J"
    ; if it's early in the process (tick counter is low), then branch more often so we
    ; reveal/hide the cells in a non-obvious pattern over time
    lsr a                                                             ; 22c8: 4a          J
    lsr a                                                             ; 22c9: 4a          J
    lsr a                                                             ; 22ca: 4a          J
    cmp tick_counter                                                  ; 22cb: c5 5a       .Z
    bne skip_reveal_or_hide                                           ; 22cd: d0 08       ..
    lda (ptr_low),y                                                   ; 22cf: b1 8c       ..
    ; clear the top bit to reveal the cell...
    and #&7f                                                          ; 22d1: 29 7f       ).
    ; ...or set the top bit to hide the cell
    ora dissolve_to_solid_flag                                        ; 22d3: 05 72       .r
    sta (ptr_low),y                                                   ; 22d5: 91 8c       ..
.skip_reveal_or_hide
    jsr increment_ptr_and_clear_carry                                 ; 22d7: 20 38 22     8"
    bcc loop_over_rows                                                ; 22da: 90 e1       ..
    ; move forward to next row. Each row is stored at 64 byte intervals. We have moved
    ; on 40 so far so add the remainder to get to the next row
.skip_to_next_row
    lda #64-40                                                        ; 22dc: a9 18       ..
    jsr add_a_to_ptr                                                  ; 22de: 20 40 22     @"
    dex                                                               ; 22e1: ca          .
    bne loop_over_rows                                                ; 22e2: d0 d9       ..
    ; create some 'random' audio pitches to play while revealing/hiding the map. First
    ; multiply the data set pointer low byte by five and add one
    lda sound0_active_flag                                            ; 22e4: a5 46       .F
    asl a                                                             ; 22e6: 0a          .
    asl a                                                             ; 22e7: 0a          .
    sec                                                               ; 22e8: 38          8
    adc sound0_active_flag                                            ; 22e9: 65 46       eF
    sta sound0_active_flag                                            ; 22eb: 85 46       .F
    ; add the cave number
    ora cave_number                                                   ; 22ed: 05 87       ..
    ; just take some of the bits
    and #&9e                                                          ; 22ef: 29 9e       ).
    ; use as the pitch
    tay                                                               ; 22f1: a8          .
    iny                                                               ; 22f2: c8          .
    ldx #&85                                                          ; 22f3: a2 85       ..
    jsr play_sound_x_pitch_y                                          ; 22f5: 20 2c 2c     ,,
    rts                                                               ; 22f8: 60          `

.unused7
    lda #&eb                                                          ; 22f9: a9 eb       ..
    ; sta $2c16
    equb &8d, &16, &2c                                                ; 22fb: 8d 16 2c    ..,

    rts                                                               ; 22fe: 60          `

.unused8
    rts                                                               ; 22ff: 60          `

; draw a full grid of sprites, updating the current map position first
.draw_grid_of_sprites
    jsr update_map_scroll_position                                    ; 2300: 20 2c 2b     ,+
    jsr update_grid_animations                                        ; 2303: 20 00 28     .(
    lda #>screen_addr_row_6                                           ; 2306: a9 5f       ._
    sta screen_addr1_high                                             ; 2308: 85 8b       ..
    ldy #<screen_addr_row_6                                           ; 230a: a0 80       ..
    lda #opcode_lda_abs_y                                             ; 230c: a9 b9       ..
    sta load_instruction                                              ; 230e: 8d 57 23    .W#
    lda #<grid_of_currently_displayed_sprites                         ; 2311: a9 00       ..
    sta grid_compare_address_low                                      ; 2313: 8d 5c 23    .\#
    sta grid_write_address_low                                        ; 2316: 8d 61 23    .a#
    lda #>grid_of_currently_displayed_sprites                         ; 2319: a9 0c       ..
    sta grid_compare_address_high                                     ; 231b: 8d 5d 23    .]#
    sta grid_write_address_high                                       ; 231e: 8d 62 23    .b#
    ; X = number of cells to draw: 12 rows of 20 cells each (a loop counter)
    ldx #20*12                                                        ; 2321: a2 f0       ..
    bne draw_grid                                                     ; 2323: d0 25       .%             ; ALWAYS branch

.draw_status_bar
    ldy #<start_of_grid_screen_address                                ; 2325: a0 c0       ..
    lda #>start_of_grid_screen_address                                ; 2327: a9 5b       .[
.draw_single_row_of_sprites
    sta screen_addr1_high                                             ; 2329: 85 8b       ..
    lda #>current_status_bar_sprites                                  ; 232b: a9 50       .P
    ldx #<current_status_bar_sprites                                  ; 232d: a2 28       .(
    stx grid_compare_address_low                                      ; 232f: 8e 5c 23    .\#
    stx grid_write_address_low                                        ; 2332: 8e 61 23    .a#
    sta grid_compare_address_high                                     ; 2335: 8d 5d 23    .]#
    sta grid_write_address_high                                       ; 2338: 8d 62 23    .b#
.instruction_for_self_modification
status_text_address_high = instruction_for_self_modification+1
    lda #>tile_map                                                    ; 233b: a9 32       .2
    sta tile_map_ptr_high                                             ; 233d: 85 86       ..
    lda #opcode_ldy_abs                                               ; 233f: a9 ac       ..
    sta load_instruction                                              ; 2341: 8d 57 23    .W#
    ; X is the cell counter (20 for a single row)
    ldx #20                                                           ; 2344: a2 14       ..
    lda status_text_address_low                                       ; 2346: a5 69       .i
    sta tile_map_ptr_low                                              ; 2348: 85 85       ..
.draw_grid
    sty screen_addr1_low                                              ; 234a: 84 8a       ..
.draw_grid_loop
    ldy #0                                                            ; 234c: a0 00       ..
    sty grid_column_counter                                           ; 234e: 84 73       .s
.grid_draw_row_loop
    lda (tile_map_ptr_low),y                                          ; 2350: b1 85       ..
    tay                                                               ; 2352: a8          .
    bpl load_instruction                                              ; 2353: 10 02       ..
    ; Y=9 indicates the titanium wall (while revealing the grid)
    ldy #9                                                            ; 2355: a0 09       ..
    ; this next instruction is either:
    ;     'ldy cell_type_to_sprite' [which in this context is equivalent to a no-op] OR
    ;     'lda cell_type_to_sprite,y'
    ; as set by self-modifying code above
.load_instruction
    ldy cell_type_to_sprite                                           ; 2357: ac 80 1f    ...
    dex                                                               ; 235a: ca          .
.compare_instruction
grid_compare_address_low = compare_instruction+1
grid_compare_address_high = compare_instruction+2
    cmp current_status_bar_sprites,x                                  ; 235b: dd 28 50    .(P
    beq skip_draw_sprite                                              ; 235e: f0 49       .I
.write_instruction
grid_write_address_low = write_instruction+1
grid_write_address_high = write_instruction+2
    sta current_status_bar_sprites,x                                  ; 2360: 9d 28 50    .(P
    tay                                                               ; 2363: a8          .
    clc                                                               ; 2364: 18          .
    lda sprite_addresses_low,y                                        ; 2365: b9 00 20    ..
    sta ptr_low                                                       ; 2368: 85 8c       ..
    adc #&10                                                          ; 236a: 69 10       i.
    sta next_ptr_low                                                  ; 236c: 85 82       ..
    lda sprite_addresses_high,y                                       ; 236e: b9 80 20    ..
    sta ptr_high                                                      ; 2371: 85 8d       ..
    sta next_ptr_high                                                 ; 2373: 85 83       ..
    ; Each sprite is two character rows tall. screen_addr2_low/high is the destination
    ; screen address for the second character row of the sprite
    lda screen_addr1_low                                              ; 2375: a5 8a       ..
    adc #&40                                                          ; 2377: 69 40       i@
    sta screen_addr2_low                                              ; 2379: 85 80       ..
    lda screen_addr1_high                                             ; 237b: a5 8b       ..
    adc #1                                                            ; 237d: 69 01       i.
    sta screen_addr2_high                                             ; 237f: 85 81       ..
    ; This next loop draws a single sprite in the grid.
    ; It draws two character rows at the same time, with 16 bytes in each row.
    ldy #&0f                                                          ; 2381: a0 0f       ..
.draw_sprite_loop
    lda (ptr_low),y                                                   ; 2383: b1 8c       ..
    sta (screen_addr1_low),y                                          ; 2385: 91 8a       ..
    lda (next_ptr_low),y                                              ; 2387: b1 82       ..
    sta (screen_addr2_low),y                                          ; 2389: 91 80       ..
    dey                                                               ; 238b: 88          .
    lda (ptr_low),y                                                   ; 238c: b1 8c       ..
    sta (screen_addr1_low),y                                          ; 238e: 91 8a       ..
    lda (next_ptr_low),y                                              ; 2390: b1 82       ..
    sta (screen_addr2_low),y                                          ; 2392: 91 80       ..
    dey                                                               ; 2394: 88          .
    lda (ptr_low),y                                                   ; 2395: b1 8c       ..
    sta (screen_addr1_low),y                                          ; 2397: 91 8a       ..
    lda (next_ptr_low),y                                              ; 2399: b1 82       ..
    sta (screen_addr2_low),y                                          ; 239b: 91 80       ..
    dey                                                               ; 239d: 88          .
    lda (ptr_low),y                                                   ; 239e: b1 8c       ..
    sta (screen_addr1_low),y                                          ; 23a0: 91 8a       ..
    lda (next_ptr_low),y                                              ; 23a2: b1 82       ..
    sta (screen_addr2_low),y                                          ; 23a4: 91 80       ..
    dey                                                               ; 23a6: 88          .
    bpl draw_sprite_loop                                              ; 23a7: 10 da       ..
    ; move the screen pointer on 16 pixels to next column
.skip_draw_sprite
    clc                                                               ; 23a9: 18          .
    lda screen_addr1_low                                              ; 23aa: a5 8a       ..
    adc #&10                                                          ; 23ac: 69 10       i.
    sta screen_addr1_low                                              ; 23ae: 85 8a       ..
    bcc skip_high_byte2                                               ; 23b0: 90 02       ..
    inc screen_addr1_high                                             ; 23b2: e6 8b       ..
.skip_high_byte2
    inc grid_column_counter                                           ; 23b4: e6 73       .s
    ldy grid_column_counter                                           ; 23b6: a4 73       .s
    cpy #20                                                           ; 23b8: c0 14       ..
    bne grid_draw_row_loop                                            ; 23ba: d0 94       ..
    ; return if we have drawn all the rows (X=0)
    txa                                                               ; 23bc: 8a          .
    beq return2                                                       ; 23bd: f0 1c       ..
    ; move screen pointer on to next row of sprites (two character rows)
    clc                                                               ; 23bf: 18          .
    lda screen_addr1_low                                              ; 23c0: a5 8a       ..
    adc #&40                                                          ; 23c2: 69 40       i@
    sta screen_addr1_low                                              ; 23c4: 85 8a       ..
    lda screen_addr1_high                                             ; 23c6: a5 8b       ..
    adc #1                                                            ; 23c8: 69 01       i.
    sta screen_addr1_high                                             ; 23ca: 85 8b       ..
    ; move tile pointer on to next row (64 bytes)
    lda tile_map_ptr_low                                              ; 23cc: a5 85       ..
    adc #&40                                                          ; 23ce: 69 40       i@
    sta tile_map_ptr_low                                              ; 23d0: 85 85       ..
    lda tile_map_ptr_high                                             ; 23d2: a5 86       ..
    adc #0                                                            ; 23d4: 69 00       i.
    sta tile_map_ptr_high                                             ; 23d6: 85 86       ..
    jmp draw_grid_loop                                                ; 23d8: 4c 4c 23    LL#

.return2
    rts                                                               ; 23db: 60          `

.unused9
    equb &a0,   7, &9a, &a9                                           ; 23dc: a0 07 9a... ...

    ; Handler for filling in a vertical strip. Set the cells between $0b's to the value
    ; above the first $0b.
.handler_for_vertical_strip
    lda #&0b                                                          ; 23e0: a9 0b       ..
    cmp cell_below                                                    ; 23e2: c5 7a       .z
    bne replace_cell_below                                            ; 23e4: d0 02       ..
    lda cell_above                                                    ; 23e6: a5 74       .t
.replace_cell_below
    sta cell_below                                                    ; 23e8: 85 7a       .z
    ; copy cell above to current cell, clearing top bit
    lda cell_above                                                    ; 23ea: a5 74       .t
    and #&7f                                                          ; 23ec: 29 7f       ).
    tax                                                               ; 23ee: aa          .
    rts                                                               ; 23ef: 60          `

.handler_for_horizontal_strip
    txa                                                               ; 23f0: 8a          .
    and #&7f                                                          ; 23f1: 29 7f       ).
    cmp cell_right                                                    ; 23f3: c5 78       .x
    bne c23f9                                                         ; 23f5: d0 02       ..
    lda cell_left                                                     ; 23f7: a5 76       .v
.c23f9
    sta cell_right                                                    ; 23f9: 85 78       .x
    ldx cell_left                                                     ; 23fb: a6 76       .v
    rts                                                               ; 23fd: 60          `

.unused10
    equb &76, &60                                                     ; 23fe: 76 60       v`

    ; set branch offset (self modifying code)
.update_map
    ldy #update_map_space - after_branch                              ; 2400: a0 5f       ._
    bne set_branch_offset                                             ; 2402: d0 02       ..             ; ALWAYS branch

    ; set branch offset (self modifying code)
.preprocess_map
    ldy #mark_cell_above_as_processed_and_move_to_next_cell - after_branch; 2404: a0 26       .&
.set_branch_offset
    sty branch_offset                                                 ; 2406: 8c 3a 24    .:$
    ; twenty rows
    lda #20                                                           ; 2409: a9 14       ..
    sta tile_y                                                        ; 240b: 85 85       ..
    lda #>map_row_0                                                   ; 240d: a9 50       .P
    sta ptr_high                                                      ; 240f: 85 8d       ..
    lda #<map_row_0                                                   ; 2411: a9 00       ..
    sta ptr_low                                                       ; 2413: 85 8c       ..
    ldy #&40                                                          ; 2415: a0 40       .@
    ; loop through the twenty rows of map
.tile_map_y_loop
    lda #38                                                           ; 2417: a9 26       .&             ; 38 columns (cells per row)
    sta tile_x                                                        ; 2419: 85 86       ..
    lda (ptr_low),y                                                   ; 241b: b1 8c       ..
    sta cell_left                                                     ; 241d: 85 76       .v
    ; move to the next cell
    iny                                                               ; 241f: c8          .
    ; read current cell contents into X
    lda (ptr_low),y                                                   ; 2420: b1 8c       ..
    tax                                                               ; 2422: aa          .
    ; loop through the 38 cells in a row of map
    ; read next cell contents into cell_right
.tile_map_x_loop
    ldy #&42                                                          ; 2423: a0 42       .B
    lda (ptr_low),y                                                   ; 2425: b1 8c       ..
    sta cell_right                                                    ; 2427: 85 78       .x
    cpx #map_diamond                                                  ; 2429: e0 04       ..
    bmi mark_cell_above_as_processed_and_move_to_next_cell            ; 242b: 30 34       04
    ; if current cell is already processed (top bit set), then skip to next cell
    txa                                                               ; 242d: 8a          .
    bmi mark_cell_above_as_processed_and_move_to_next_cell            ; 242e: 30 31       01
    ; mark current cell as processed (set top bit)
    ora #&80                                                          ; 2430: 09 80       ..
    tax                                                               ; 2432: aa          .
    ; the lower four bits are the type, each of which has a handler to process it
    and #&0f                                                          ; 2433: 29 0f       ).
    tay                                                               ; 2435: a8          .
    lda handler_table_high,y                                          ; 2436: b9 d0 21    ..!
    ; if we have an empty cell, branch (destination was set depending on where we
    ; entered this routine)
.branch_instruction
branch_offset = branch_instruction+1
    beq update_map_space                                              ; 2439: f0 5f       ._
.after_branch
    sta handler_high                                                  ; 243b: 8d 52 24    .R$
    lda handler_table_low,y                                           ; 243e: b9 c0 21    ..!
    sta handler_low                                                   ; 2441: 8d 51 24    .Q$
    ; read cells into cell_above and cell_below variables
    ldy #1                                                            ; 2444: a0 01       ..
    lda (ptr_low),y                                                   ; 2446: b1 8c       ..
    sta cell_above                                                    ; 2448: 85 74       .t
    ldy #&81                                                          ; 244a: a0 81       ..
    lda (ptr_low),y                                                   ; 244c: b1 8c       ..
    sta cell_below                                                    ; 244e: 85 7a       .z
    ; call the handler for the cell based on the type (0-15)
.jsr_handler_instruction
handler_low = jsr_handler_instruction+1
handler_high = jsr_handler_instruction+2
    jsr handler_firefly                                               ; 2450: 20 00 25     .%
    ; the handler may have changed the surreounding cells. store the new cell down
    lda cell_below                                                    ; 2453: a5 7a       .z
    ldy #&81                                                          ; 2455: a0 81       ..
    sta (ptr_low),y                                                   ; 2457: 91 8c       ..
    ; store the new cell up
    lda cell_above                                                    ; 2459: a5 74       .t
    and #&7f                                                          ; 245b: 29 7f       ).
    ldy #1                                                            ; 245d: a0 01       ..
    bpl move_to_next_cell                                             ; 245f: 10 06       ..             ; ALWAYS branch

.mark_cell_above_as_processed_and_move_to_next_cell
    ldy #1                                                            ; 2461: a0 01       ..
    lda (ptr_low),y                                                   ; 2463: b1 8c       ..
    and #&7f                                                          ; 2465: 29 7f       ).
.move_to_next_cell
    sta (ptr_low),y                                                   ; 2467: 91 8c       ..
    ; store the new cell left back into the map
    lda cell_left                                                     ; 2469: a5 76       .v
    ldy #&40                                                          ; 246b: a0 40       .@
    sta (ptr_low),y                                                   ; 246d: 91 8c       ..
    ; update cell_left with the current cell value (in X)
    stx cell_left                                                     ; 246f: 86 76       .v
    ; update the current cell value x from the cell_right variable
    ldx cell_right                                                    ; 2471: a6 78       .x
    ; move ptr to next position
    inc ptr_low                                                       ; 2473: e6 8c       ..
    ; loop back for the rest of the cells in the row
    dec tile_x                                                        ; 2475: c6 86       ..
    bne tile_map_x_loop                                               ; 2477: d0 aa       ..
    ; store the final previous_cell for the row
    lda cell_left                                                     ; 2479: a5 76       .v
    sta (ptr_low),y                                                   ; 247b: 91 8c       ..
    ; move ptr to the start of the next row. Stride is 64, 38 entries done, so
    ; remainder to add is 64-38=26
    lda #26                                                           ; 247d: a9 1a       ..
    jsr add_a_to_ptr                                                  ; 247f: 20 40 22     @"
    ; loop back for the rest of the rows
    dec tile_y                                                        ; 2482: c6 85       ..
    bne tile_map_y_loop                                               ; 2484: d0 91       ..
    ; clear top bit in final row
    ldy #38                                                           ; 2486: a0 26       .&
.clear_top_bit_on_final_row_loop
    lda map_row_20,y                                                  ; 2488: b9 00 55    ..U
    and #&7f                                                          ; 248b: 29 7f       ).
    sta map_row_20,y                                                  ; 248d: 99 00 55    ..U
    dey                                                               ; 2490: 88          .
    bne clear_top_bit_on_final_row_loop                               ; 2491: d0 f5       ..
    ; clear top bit on end position
    lda (map_rockford_end_position_addr_low),y                        ; 2493: b1 6a       .j
    and #&7f                                                          ; 2495: 29 7f       ).
    sta (map_rockford_end_position_addr_low),y                        ; 2497: 91 6a       .j
    rts                                                               ; 2499: 60          `

    ; get cell below
.update_map_space
    ldy #&81                                                          ; 249a: a0 81       ..
    lda (ptr_low),y                                                   ; 249c: b1 8c       ..
    beq space_below_is_also_a_space                                   ; 249e: f0 34       .4
    ; check current cell
    cpx #&c0                                                          ; 24a0: e0 c0       ..
    bmi not_c0_or_above                                               ; 24a2: 30 03       0.
    jsr process_c0_or_above                                           ; 24a4: 20 db 24     .$
.not_c0_or_above
    and #&4f                                                          ; 24a7: 29 4f       )O
    tay                                                               ; 24a9: a8          .
    asl a                                                             ; 24aa: 0a          .
    bmi mark_cell_above_as_processed_and_move_to_next_cell            ; 24ab: 30 b4       0.
    lda l2100,y                                                       ; 24ad: b9 00 21    ..!
    beq mark_cell_above_as_processed_and_move_to_next_cell            ; 24b0: f0 af       ..
    lda cell_left                                                     ; 24b2: a5 76       .v
    bne c24bc                                                         ; 24b4: d0 06       ..
    ldy #&80                                                          ; 24b6: a0 80       ..
    lda (ptr_low),y                                                   ; 24b8: b1 8c       ..
    beq c24c6                                                         ; 24ba: f0 0a       ..
.c24bc
    lda cell_right                                                    ; 24bc: a5 78       .x
    bne mark_cell_above_as_processed_and_move_to_next_cell            ; 24be: d0 a1       ..
    ldy #&82                                                          ; 24c0: a0 82       ..
    lda (ptr_low),y                                                   ; 24c2: b1 8c       ..
    bne mark_cell_above_as_processed_and_move_to_next_cell            ; 24c4: d0 9b       ..
.c24c6
    txa                                                               ; 24c6: 8a          .
    ora #&40                                                          ; 24c7: 09 40       .@
    sta lfff6,y                                                       ; 24c9: 99 f6 ff    ...
    lda #&80                                                          ; 24cc: a9 80       ..
    sta (ptr_low),y                                                   ; 24ce: 91 8c       ..
.set_to_space
    ldx #&80                                                          ; 24d0: a2 80       ..
    bne mark_cell_above_as_processed_and_move_to_next_cell            ; 24d2: d0 8d       ..             ; ALWAYS branch

; set bit six of the cell below to indicate cell above is also a space
.space_below_is_also_a_space
    txa                                                               ; 24d4: 8a          .
    ora #&40                                                          ; 24d5: 09 40       .@
    sta (ptr_low),y                                                   ; 24d7: 91 8c       ..
    bne set_to_space                                                  ; 24d9: d0 f5       ..             ; ALWAYS branch

.process_c0_or_above
    pha                                                               ; 24db: 48          H
    ; look up table based on type
    and #&0f                                                          ; 24dc: 29 0f       ).
    tay                                                               ; 24de: a8          .
    lda l2180,y                                                       ; 24df: b9 80 21    ..!
    beq dont_store_below                                              ; 24e2: f0 04       ..
    ; store in cell below
    ldy #&81                                                          ; 24e4: a0 81       ..
    sta (ptr_low),y                                                   ; 24e6: 91 8c       ..
.dont_store_below
    txa                                                               ; 24e8: 8a          .
    and #1                                                            ; 24e9: 29 01       ).
    eor #sound5_active_flag                                           ; 24eb: 49 4b       IK
    tay                                                               ; 24ed: a8          .
    ; store $4b or $4c in location $4b or $4c. Flashing animation?
    sta l0000,y                                                       ; 24ee: 99 00 00    ...
    ; mask off the top two bits for the current cell value
    txa                                                               ; 24f1: 8a          .
    and #&bf                                                          ; 24f2: 29 bf       ).
    tax                                                               ; 24f4: aa          .
    pla                                                               ; 24f5: 68          h
    rts                                                               ; 24f6: 60          `

.unused11
    equb &60,   3, &d0,   2, &e6, &4a, &60,   1, &60                  ; 24f7: 60 03 d0... `..

.handler_firefly
    cpx #&c0                                                          ; 2500: e0 c0       ..
    bpl c0_or_above                                                   ; 2502: 10 3e       .>
    ldy #8                                                            ; 2504: a0 08       ..
.loop_c2506
    lda cell_above_left-1,y                                           ; 2506: b9 72 00    .r.
    bne unnecessary_branch                                            ; 2509: d0 00       ..             ; redundant instruction
.unnecessary_branch
    and #7                                                            ; 250b: 29 07       ).
    eor #7                                                            ; 250d: 49 07       I.
    beq c0_or_above                                                   ; 250f: f0 31       .1
    dey                                                               ; 2511: 88          .
    dey                                                               ; 2512: 88          .
    bne loop_c2506                                                    ; 2513: d0 f1       ..
    txa                                                               ; 2515: 8a          .
    lsr a                                                             ; 2516: 4a          J
    lsr a                                                             ; 2517: 4a          J
    lsr a                                                             ; 2518: 4a          J
    and #7                                                            ; 2519: 29 07       ).
    tay                                                               ; 251b: a8          .
    ldx firefly_cell_values,y                                         ; 251c: be 1c 22    .."
    lda l0000,x                                                       ; 251f: b5 00       ..
    beq c2534                                                         ; 2521: f0 11       ..
    lda l2110,y                                                       ; 2523: b9 10 21    ..!
    tay                                                               ; 2526: a8          .
    ldx firefly_cell_values,y                                         ; 2527: be 1c 22    .."
    lda l0000,x                                                       ; 252a: b5 00       ..
    beq c2534                                                         ; 252c: f0 06       ..
    ldx #0                                                            ; 252e: a2 00       ..
    lda l2110,y                                                       ; 2530: b9 10 21    ..!
    tay                                                               ; 2533: a8          .
.c2534
    lda l2118,y                                                       ; 2534: b9 18 21    ..!
    cpx #0                                                            ; 2537: e0 00       ..
    bne c253d                                                         ; 2539: d0 02       ..
    tax                                                               ; 253b: aa          .
    rts                                                               ; 253c: 60          `

.c253d
    sta l0000,x                                                       ; 253d: 95 00       ..
    ldx #0                                                            ; 253f: a2 00       ..
    rts                                                               ; 2541: 60          `

.c0_or_above
    txa                                                               ; 2542: 8a          .
    ldx #<another_array_of_cells                                      ; 2543: a2 40       .@
    and #8                                                            ; 2545: 29 08       ).
    beq c254b                                                         ; 2547: f0 02       ..
    ldx #<some_array_of_cells                                         ; 2549: a2 30       .0
.c254b
    stx l2572                                                         ; 254b: 8e 72 25    .r%
    stx sound6_active_flag                                            ; 254e: 86 4c       .L
    ; read above left cell
    ldy #0                                                            ; 2550: a0 00       ..
    lda (ptr_low),y                                                   ; 2552: b1 8c       ..
    sta cell_above_left                                               ; 2554: 85 73       .s
    ; reset current cell to zero
    sty cell_current                                                  ; 2556: 84 77       .w
    ; read above right cell
    ldy #2                                                            ; 2558: a0 02       ..
    lda (ptr_low),y                                                   ; 255a: b1 8c       ..
    sta cell_above_right                                              ; 255c: 85 75       .u
    ; read below left cell
    ldy #&80                                                          ; 255e: a0 80       ..
    lda (ptr_low),y                                                   ; 2560: b1 8c       ..
    sta cell_below_left                                               ; 2562: 85 79       .y
    ; read below right cell
    ldy #&82                                                          ; 2564: a0 82       ..
    lda (ptr_low),y                                                   ; 2566: b1 8c       ..
    sta cell_below_right                                              ; 2568: 85 7b       .{
    ; loop 9 times
    ldx #9                                                            ; 256a: a2 09       ..
.loop_c256c
    lda cell_above_left-1,x                                           ; 256c: b5 72       .r
    and #&0f                                                          ; 256e: 29 0f       ).
    tay                                                               ; 2570: a8          .
.sub_c2571
l2572 = sub_c2571+1
    lda another_array_of_cells,y                                      ; 2571: b9 40 21    .@!
    beq c2578                                                         ; 2574: f0 02       ..
    sta cell_above_left-1,x                                           ; 2576: 95 72       .r
.c2578
    dex                                                               ; 2578: ca          .
    bne loop_c256c                                                    ; 2579: d0 f1       ..
    ; write to above left cell
    ldy #0                                                            ; 257b: a0 00       ..
    lda cell_above_left                                               ; 257d: a5 73       .s
    and #&7f                                                          ; 257f: 29 7f       ).
    sta (ptr_low),y                                                   ; 2581: 91 8c       ..
    ; write to above right cell
    ldy #2                                                            ; 2583: a0 02       ..
    lda cell_above_right                                              ; 2585: a5 75       .u
    sta (ptr_low),y                                                   ; 2587: 91 8c       ..
    ; write to below left cell
    ldy #&80                                                          ; 2589: a0 80       ..
    lda cell_below_left                                               ; 258b: a5 79       .y
    sta (ptr_low),y                                                   ; 258d: 91 8c       ..
    ; write to below right cell
    ldy #&82                                                          ; 258f: a0 82       ..
    lda cell_below_right                                              ; 2591: a5 7b       .{
    sta (ptr_low),y                                                   ; 2593: 91 8c       ..
    ldx cell_current                                                  ; 2595: a6 77       .w
    rts                                                               ; 2597: 60          `

.unused12
    ldy #&82                                                          ; 2598: a0 82       ..
    lda cell_below_right                                              ; 259a: a5 7b       .{
    sta (ptr_low),y                                                   ; 259c: 91 8c       ..
.handler_fungus
    lda l0054                                                         ; 259e: a5 54       .T
    beq update_fungus                                                 ; 25a0: f0 04       ..
    tax                                                               ; 25a2: aa          .
    sta sound6_active_flag                                            ; 25a3: 85 4c       .L
    rts                                                               ; 25a5: 60          `

.update_fungus
    inc l0056                                                         ; 25a6: e6 56       .V
    lda #&0e                                                          ; 25a8: a9 0e       ..
    bit cell_above                                                    ; 25aa: 24 74       $t
    beq c25ba                                                         ; 25ac: f0 0c       ..
    bit cell_left                                                     ; 25ae: 24 76       $v
    beq c25ba                                                         ; 25b0: f0 08       ..
    bit cell_right                                                    ; 25b2: 24 78       $x
    beq c25ba                                                         ; 25b4: f0 04       ..
    bit cell_below                                                    ; 25b6: 24 7a       $z
    bne return3                                                       ; 25b8: d0 3b       .;
.c25ba
    stx l0060                                                         ; 25ba: 86 60       .`
    stx sound0_active_flag                                            ; 25bc: 86 46       .F
    inc fungus_counter                                                ; 25be: e6 57       .W
    lda fungus_counter                                                ; 25c0: a5 57       .W
    cmp fungus_growth_interval                                        ; 25c2: c5 55       .U
    bne return3                                                       ; 25c4: d0 2f       ./
    lda #0                                                            ; 25c6: a9 00       ..
    sta fungus_counter                                                ; 25c8: 85 57       .W
    txa                                                               ; 25ca: 8a          .
    lsr a                                                             ; 25cb: 4a          J
    lsr a                                                             ; 25cc: 4a          J
    lsr a                                                             ; 25cd: 4a          J
    and #6                                                            ; 25ce: 29 06       ).
    tay                                                               ; 25d0: a8          .
    cpx #&c0                                                          ; 25d1: e0 c0       ..
    bmi c25e2                                                         ; 25d3: 30 0d       0.
    lda cell_above,y                                                  ; 25d5: b9 74 00    .t.
    beq c25e9                                                         ; 25d8: f0 0f       ..
.c25da
    txa                                                               ; 25da: 8a          .
    clc                                                               ; 25db: 18          .
    adc #&10                                                          ; 25dc: 69 10       i.
    and #&7f                                                          ; 25de: 29 7f       ).
    tax                                                               ; 25e0: aa          .
    rts                                                               ; 25e1: 60          `

.c25e2
    lda cell_above,y                                                  ; 25e2: b9 74 00    .t.
    and #&0e                                                          ; 25e5: 29 0e       ).
    bne c25da                                                         ; 25e7: d0 f1       ..
.c25e9
    lda tick_counter                                                  ; 25e9: a5 5a       .Z
    lsr a                                                             ; 25eb: 4a          J
    bcc c25f1                                                         ; 25ec: 90 03       ..
    jsr c25da                                                         ; 25ee: 20 da 25     .%
.c25f1
    txa                                                               ; 25f1: 8a          .
    sta cell_above,y                                                  ; 25f2: 99 74 00    .t.
.return3
    rts                                                               ; 25f5: 60          `

.unused13
    sbc l0ba9,y                                                       ; 25f6: f9 a9 0b    ...
    sta cell_below                                                    ; 25f9: 85 7a       .z
    rts                                                               ; 25fb: 60          `

.unused14
    rts                                                               ; 25fc: 60          `

    equb   0, &60, &4a                                                ; 25fd: 00 60 4a    .`J

.handler_rockford2
    stx l005b                                                         ; 2600: 86 5b       .[
    lda l005f                                                         ; 2602: a5 5f       ._
    bne c2609                                                         ; 2604: d0 03       ..
    inx                                                               ; 2606: e8          .
    bne check_for_direction_key_pressed                               ; 2607: d0 05       ..
.c2609
    ldx #&46                                                          ; 2609: a2 46       .F
    stx l005f                                                         ; 260b: 86 5f       ._
    rts                                                               ; 260d: 60          `

.check_for_direction_key_pressed
    lda keys_to_process                                               ; 260e: a5 62       .b
    and #&f0                                                          ; 2610: 29 f0       ).
    bne direction_key_pressed                                         ; 2612: d0 12       ..
    ldx #&0f                                                          ; 2614: a2 0f       ..
.c2616
    lda #&41                                                          ; 2616: a9 41       .A
.c2618
    sta sound2_active_flag                                            ; 2618: 85 48       .H
    clc                                                               ; 261a: 18          .
    adc ptr_low                                                       ; 261b: 65 8c       e.
    sta map_rockford_current_position_addr_low                        ; 261d: 85 70       .p
    lda ptr_high                                                      ; 261f: a5 8d       ..
    adc #0                                                            ; 2621: 69 00       i.
    sta map_rockford_current_position_addr_high                       ; 2623: 85 71       .q
    rts                                                               ; 2625: 60          `

.direction_key_pressed
    ldx #0                                                            ; 2626: a2 00       ..
    stx ticks_since_last_direction_key_pressed                        ; 2628: 86 58       .X
    dex                                                               ; 262a: ca          .
.get_direction_index_loop
    inx                                                               ; 262b: e8          .
    asl a                                                             ; 262c: 0a          .
    bcc get_direction_index_loop                                      ; 262d: 90 fc       ..
    lda rockford_cell_value_for_direction,x                           ; 262f: bd 24 22    .$"
    beq c2636                                                         ; 2632: f0 02       ..
    sta l0052                                                         ; 2634: 85 52       .R
.c2636
    ldy neighbouring_cell_variable_from_direction_index,x             ; 2636: bc 00 22    .."
    sty neighbouring_cell_variable                                    ; 2639: 84 73       .s
    ; read cell contents from the given neighbouring cell variable y
    lda l0000,y                                                       ; 263b: b9 00 00    ...
    sta neighbour_cell_contents                                       ; 263e: 85 64       .d
    and #&0f                                                          ; 2640: 29 0f       ).
    tay                                                               ; 2642: a8          .
    lda l21f0,y                                                       ; 2643: b9 f0 21    ..!
    beq c2674                                                         ; 2646: f0 2c       .,
    bmi check_for_return_pressed                                      ; 2648: 30 1d       0.
    ldy l2204,x                                                       ; 264a: bc 04 22    .."
    beq c2674                                                         ; 264d: f0 25       .%
    lda (ptr_low),y                                                   ; 264f: b1 8c       ..
    bne c2674                                                         ; 2651: d0 21       .!
    lda neighbour_cell_contents                                       ; 2653: a5 64       .d
    cmp #&45                                                          ; 2655: c9 45       .E
    beq c2674                                                         ; 2657: f0 1b       ..
    dec l0053                                                         ; 2659: c6 53       .S
    bne c2674                                                         ; 265b: d0 17       ..
    ora #&80                                                          ; 265d: 09 80       ..
    sta (ptr_low),y                                                   ; 265f: 91 8c       ..
    lda #4                                                            ; 2661: a9 04       ..
    sta l0053                                                         ; 2663: 85 53       .S
    inc sound4_active_flag                                            ; 2665: e6 4a       .J
.check_for_return_pressed
    lda keys_to_process                                               ; 2667: a5 62       .b
    and #8                                                            ; 2669: 29 08       ).
    beq c2678                                                         ; 266b: f0 0b       ..
    ; return (and direction) is pressed
    ldy neighbouring_cell_variable                                    ; 266d: a4 73       .s
    lda #0                                                            ; 266f: a9 00       ..
    sta l0000,y                                                       ; 2671: 99 00 00    ...
.c2674
    ldx l0052                                                         ; 2674: a6 52       .R
    bne c2616                                                         ; 2676: d0 9e       ..
.c2678
    ldy neighbouring_cell_variable                                    ; 2678: a4 73       .s
    lda l0052                                                         ; 267a: a5 52       .R
    sta l0000,y                                                       ; 267c: 99 00 00    ...
    lda l2208,x                                                       ; 267f: bd 08 22    .."
    dex                                                               ; 2682: ca          .
    beq c2618                                                         ; 2683: f0 93       ..
    ldx #&80                                                          ; 2685: a2 80       ..
    bne c2618                                                         ; 2687: d0 8f       ..             ; ALWAYS branch

.read_keys
    ldx #7                                                            ; 2689: a2 07       ..
    stx cell_current                                                  ; 268b: 86 77       .w
    ldx #0                                                            ; 268d: a2 00       ..
    stx real_keys_pressed                                             ; 268f: 86 7c       .|
.read_keys_loop
    ldx cell_current                                                  ; 2691: a6 77       .w
    lda inkey_keys_table,x                                            ; 2693: bd 28 22    .("
    tax                                                               ; 2696: aa          .
    tay                                                               ; 2697: a8          .
    lda #osbyte_inkey                                                 ; 2698: a9 81       ..
    jsr osbyte                                                        ; 269a: 20 f4 ff     ..            ; Read key within time limit, or read a specific key, or read machine type
    inx                                                               ; 269d: e8          .
    rol real_keys_pressed                                             ; 269e: 26 7c       &|
    dec cell_current                                                  ; 26a0: c6 77       .w
    bpl read_keys_loop                                                ; 26a2: 10 ed       ..
    lda keys_to_process                                               ; 26a4: a5 62       .b
    ora real_keys_pressed                                             ; 26a6: 05 7c       .|
    sta keys_to_process                                               ; 26a8: 85 62       .b
    rts                                                               ; 26aa: 60          `

.unused15
    equb &62, &60, &a6                                                ; 26ab: 62 60 a6    b`.

.handler_magic_wall
    txa                                                               ; 26ae: 8a          .
    ldx l0050                                                         ; 26af: a6 50       .P
    cmp #&bd                                                          ; 26b1: c9 bd       ..
    bne c26da                                                         ; 26b3: d0 25       .%
    lda cell_above                                                    ; 26b5: a5 74       .t
    and #&0f                                                          ; 26b7: 29 0f       ).
    tay                                                               ; 26b9: a8          .
    lda cell_value_to_fill_vertically,y                               ; 26ba: b9 20 21    . !
    beq fill_with_a                                                   ; 26bd: f0 04       ..
    ldy #&80                                                          ; 26bf: a0 80       ..
    sty cell_above                                                    ; 26c1: 84 74       .t
.fill_with_a
    cpx #&2d                                                          ; 26c3: e0 2d       .-
    beq c26d7                                                         ; 26c5: f0 10       ..
    ldy cell_below                                                    ; 26c7: a4 7a       .z
    bne c26cd                                                         ; 26c9: d0 02       ..
    sta cell_below                                                    ; 26cb: 85 7a       .z
.c26cd
    ldx #&1d                                                          ; 26cd: a2 1d       ..
    inc sound1_active_flag                                            ; 26cf: e6 47       .G
    ldy fungus_timer                                                  ; 26d1: a4 51       .Q
    bne c26d7                                                         ; 26d3: d0 02       ..
    ldx #&2d                                                          ; 26d5: a2 2d       .-
.c26d7
    stx l0050                                                         ; 26d7: 86 50       .P
    rts                                                               ; 26d9: 60          `

.c26da
    cpx #&1d                                                          ; 26da: e0 1d       ..
    beq c26cd                                                         ; 26dc: f0 ef       ..
    rts                                                               ; 26de: 60          `

.unused16
    equb &29, &7f, &aa, &e0                                           ; 26df: 29 7f aa... )..

    ; mark rockford cell as visible
.handler_flashing_rockford
    txa                                                               ; 26e3: 8a          .
    and #&7f                                                          ; 26e4: 29 7f       ).
    tax                                                               ; 26e6: aa          .
; branch if on flashing exit
    cpx #&18                                                          ; 26e7: e0 18       ..
    beq return4                                                       ; 26e9: f0 12       ..
    ; wait for flashing rockford animation to finish
    lda #0                                                            ; 26eb: a9 00       ..
    sta keys_to_process                                               ; 26ed: 85 62       .b
    lda tick_counter                                                  ; 26ef: a5 5a       .Z
    cmp #&f0                                                          ; 26f1: c9 f0       ..
    bpl return4                                                       ; 26f3: 10 08       ..
    ; ready to start playing
    ldx #&21                                                          ; 26f5: a2 21       .!
    inc sound4_active_flag                                            ; 26f7: e6 4a       .J
    lda #<status_bar_sprite_numbers                                   ; 26f9: a9 00       ..
    sta status_text_address_low                                       ; 26fb: 85 69       .i
.return4
    rts                                                               ; 26fd: 60          `

.unused17
    equb   0, &24                                                     ; 26fe: 00 24       .$

.start_gameplay
    jsr reset_clock                                                   ; 2700: 20 4d 2a     M*
    lda #1                                                            ; 2703: a9 01       ..
    sta demo_key_duration                                             ; 2705: 85 67       .g
    ; Set A=0
    lsr a                                                             ; 2707: 4a          J
    sta l0066                                                         ; 2708: 85 66       .f
.c270a
    lda #0                                                            ; 270a: a9 00       ..
    ; clear sound
    ldx #7                                                            ; 270c: a2 07       ..
.zero_eight_bytes_loop
    sta sound0_active_flag,x                                          ; 270e: 95 46       .F
    dex                                                               ; 2710: ca          .
    bpl zero_eight_bytes_loop                                         ; 2711: 10 fb       ..
    ; zero variables
    sta status_text_address_low                                       ; 2713: 85 69       .i
    sta l0060                                                         ; 2715: 85 60       .`
    sta neighbour_cell_contents                                       ; 2717: 85 64       .d
    lda #&41                                                          ; 2719: a9 41       .A
    sta sound2_active_flag                                            ; 271b: 85 48       .H
    ldx #0                                                            ; 271d: a2 00       ..
    lda l0056                                                         ; 271f: a5 56       .V
    stx l0056                                                         ; 2721: 86 56       .V
    bne c2727                                                         ; 2723: d0 02       ..
    stx l0054                                                         ; 2725: 86 54       .T
.c2727
    stx l0060                                                         ; 2727: 86 60       .`
    jsr wait_for_13_centiseconds_and_read_keys                        ; 2729: 20 90 2b     .+
    ldx demo_mode_tick_count                                          ; 272c: a6 65       .e
    bmi got_key                                                       ; 272e: 30 22       0"
    lda keys_to_process                                               ; 2730: a5 62       .b
    beq update_demo_mode                                              ; 2732: f0 01       ..
    rts                                                               ; 2734: 60          `

.update_demo_mode
    ldy #<status_bar_sprite_numbers                                   ; 2735: a0 00       ..
    ; flip between status bar and demo mode text every 16 ticks
    lda tick_counter                                                  ; 2737: a5 5a       .Z
    and #&10                                                          ; 2739: 29 10       ).
    beq skip_demo_mode_text                                           ; 273b: f0 02       ..
    ldy #<demonstration_mode_text                                     ; 273d: a0 a0       ..
.skip_demo_mode_text
    sty status_text_address_low                                       ; 273f: 84 69       .i
    lda demonstration_keys,x                                          ; 2741: bd 00 31    ..1
    sta keys_to_process                                               ; 2744: 85 62       .b
    dec demo_key_duration                                             ; 2746: c6 67       .g
    bne got_key                                                       ; 2748: d0 08       ..
    inc demo_mode_tick_count                                          ; 274a: e6 65       .e
    inx                                                               ; 274c: e8          .
    lda demonstration_key_durations,x                                 ; 274d: bd 60 31    .`1
    sta demo_key_duration                                             ; 2750: 85 67       .g
.got_key
    jsr update_map                                                    ; 2752: 20 00 24     .$
    lda neighbour_cell_contents                                       ; 2755: a5 64       .d
    and #&0f                                                          ; 2757: 29 0f       ).
    sta neighbour_cell_contents                                       ; 2759: 85 64       .d
    cmp #8                                                            ; 275b: c9 08       ..
    bne not_rockford                                                  ; 275d: d0 03       ..
    jmp check_for_pause_key                                           ; 275f: 4c 40 30    L@0

.not_rockford
    jsr draw_grid_of_sprites                                          ; 2762: 20 00 23     .#
    jsr draw_status_bar                                               ; 2765: 20 25 23     %#
    jsr sub_c3000                                                     ; 2768: 20 00 30     .0
    lda l005b                                                         ; 276b: a5 5b       .[
    beq time_still_going                                              ; 276d: f0 18       ..
    dec sub_second_ticks                                              ; 276f: c6 5c       .\
    bpl time_still_going                                              ; 2771: 10 14       ..
    ldx #&0b                                                          ; 2773: a2 0b       ..
    stx sub_second_ticks                                              ; 2775: 86 5c       .\
    ; decrement time remaining
    ldy #&0c                                                          ; 2777: a0 0c       ..
    jsr decrement_status_bar_number                                   ; 2779: 20 aa 28     .(
    dec time_remaining                                                ; 277c: c6 6d       .m
    bne time_still_going                                              ; 277e: d0 07       ..
    ; out of time
    lda #<out_of_time_message                                         ; 2780: a9 b4       ..
    sta status_text_address_low                                       ; 2782: 85 69       .i
    jmp check_for_pause_key                                           ; 2784: 4c 40 30    L@0

.time_still_going
    lda neighbour_cell_contents                                       ; 2787: a5 64       .d
    cmp #1                                                            ; 2789: c9 01       ..
    bne skip_earth                                                    ; 278b: d0 02       ..
    ; got earth. play sound 3
    inc sound3_active_flag                                            ; 278d: e6 49       .I
.skip_earth
    cmp #4                                                            ; 278f: c9 04       ..
    bne skip_got_diamond                                              ; 2791: d0 11       ..
    ; got diamond. play sounds
    ldx #&85                                                          ; 2793: a2 85       ..
    ldy #&f0                                                          ; 2795: a0 f0       ..
    jsr play_sound_x_pitch_y                                          ; 2797: 20 2c 2c     ,,
    ldx #&85                                                          ; 279a: a2 85       ..
    ldy #&d2                                                          ; 279c: a0 d2       ..
    jsr play_sound_x_pitch_y                                          ; 279e: 20 2c 2c     ,,
    jsr got_diamond_so_update_status_bar                              ; 27a1: 20 00 2f     ./
.skip_got_diamond
    jsr update_sounds                                                 ; 27a4: 20 80 2c     .,
    ; update tick
    dec tick_counter                                                  ; 27a7: c6 5a       .Z
    lda tick_counter                                                  ; 27a9: a5 5a       .Z
    and #7                                                            ; 27ab: 29 07       ).
    bne c27b7                                                         ; 27ad: d0 08       ..
    lda l0050                                                         ; 27af: a5 50       .P
    cmp #&1d                                                          ; 27b1: c9 1d       ..
    bne c27b7                                                         ; 27b3: d0 02       ..
    dec fungus_timer                                                  ; 27b5: c6 51       .Q
.c27b7
    ldx l005f                                                         ; 27b7: a6 5f       ._
    beq c27c8                                                         ; 27b9: f0 0d       ..
    inx                                                               ; 27bb: e8          .
    stx l005f                                                         ; 27bc: 86 5f       ._
    cpx #&4b                                                          ; 27be: e0 4b       .K
    bmi c27c8                                                         ; 27c0: 30 06       0.
    lda keys_to_process                                               ; 27c2: a5 62       .b
    bne return5                                                       ; 27c4: d0 29       .)
    dec l005f                                                         ; 27c6: c6 5f       ._
.c27c8
    lda keys_to_process                                               ; 27c8: a5 62       .b
    lsr a                                                             ; 27ca: 4a          J
    bcc c27d5                                                         ; 27cb: 90 08       ..
    lda l005f                                                         ; 27cd: a5 5f       ._
    bne c27d5                                                         ; 27cf: d0 04       ..
    lda #&46                                                          ; 27d1: a9 46       .F
    sta l005f                                                         ; 27d3: 85 5f       ._
.c27d5
    lda cave_number                                                   ; 27d5: a5 87       ..
    cmp #&10                                                          ; 27d7: c9 10       ..
    bpl c27ec                                                         ; 27d9: 10 11       ..
    lda previous_direction_keys                                       ; 27db: a5 5d       .]
    and #&b0                                                          ; 27dd: 29 b0       ).
    eor #&b0                                                          ; 27df: 49 b0       I.
    beq c27ec                                                         ; 27e1: f0 09       ..
    lda keys_to_process                                               ; 27e3: a5 62       .b
    and #2                                                            ; 27e5: 29 02       ).
    beq c27ec                                                         ; 27e7: f0 03       ..
    jsr check_for_pause_key                                           ; 27e9: 20 40 30     @0
.c27ec
    jmp c270a                                                         ; 27ec: 4c 0a 27    L.'

.return5
    rts                                                               ; 27ef: 60          `

.unused18
    equb &27, &60, &f0,   6, &d0, &e9, &29, &23,   2, &40, &60, &29   ; 27f0: 27 60 f0... '`.
    equb   8, &f0, &e5, &60                                           ; 27fc: 08 f0 e5... ...

.update_grid_animations
    ldx #&0e                                                          ; 2800: a2 0e       ..
    stx cell_current                                                  ; 2802: 86 77       .w
.update_sprites_to_use_loop
    ldy index_to_cell_type,x                                          ; 2804: bc 50 21    .P!
    ldx cell_type_to_sprite,y                                         ; 2807: be 80 1f    ...
    ; look up the next sprite in the animation sequence
    lda sprite_to_next_sprite,x                                       ; 280a: bd 00 1f    ...
    sta cell_type_to_sprite,y                                         ; 280d: 99 80 1f    ...
    dec cell_current                                                  ; 2810: c6 77       .w
    ldx cell_current                                                  ; 2812: a6 77       .w
    bpl update_sprites_to_use_loop                                    ; 2814: 10 ee       ..
    ; use the tick counter (bottom two bits scaled up by 16) to update fungus animation
    lda tick_counter                                                  ; 2816: a5 5a       .Z
    and #3                                                            ; 2818: 29 03       ).
    asl a                                                             ; 281a: 0a          .
    asl a                                                             ; 281b: 0a          .
    asl a                                                             ; 281c: 0a          .
    asl a                                                             ; 281d: 0a          .
    tax                                                               ; 281e: aa          .
    lda fungus_animated_sprites1a,x                                   ; 281f: bd 87 1f    ...
    eor #1                                                            ; 2822: 49 01       I.
    sta fungus_animated_sprites1a,x                                   ; 2824: 9d 87 1f    ...
    lda fungus_animated_sprites2a,x                                   ; 2827: bd c7 1f    ...
    eor #1                                                            ; 282a: 49 01       I.
    sta fungus_animated_sprites2a,x                                   ; 282c: 9d c7 1f    ...
    ; animate exit
    lda exit_cell_type                                                ; 282f: ad 56 21    .V!
    eor #&10                                                          ; 2832: 49 10       I.
    sta exit_cell_type                                                ; 2834: 8d 56 21    .V!
    ; update rockford idle animation
    lda ticks_since_last_direction_key_pressed                        ; 2837: a5 58       .X
    tay                                                               ; 2839: a8          .
    and #&3f                                                          ; 283a: 29 3f       )?
    tax                                                               ; 283c: aa          .
    lda idle_animation_data,x                                         ; 283d: bd 80 1e    ...
    ; check for nearing the end of the idle animation (range $c0-$ff).
    ; Use the top nybbles of the data if so.
    cpy #&c0                                                          ; 2840: c0 c0       ..
    bcc extract_lower_nybble                                          ; 2842: 90 04       ..
    ; Near the end of the idle animation. Shift the upper nybble into the bottom nybble
    ; to get more idle sprites
    lsr a                                                             ; 2844: 4a          J
    lsr a                                                             ; 2845: 4a          J
    lsr a                                                             ; 2846: 4a          J
    lsr a                                                             ; 2847: 4a          J
.extract_lower_nybble
    and #&0f                                                          ; 2848: 29 0f       ).
    ; set the rockford sprite
    ora #sprite_rockford_blinking1                                    ; 284a: 09 20       .
    sta rockford_sprite                                               ; 284c: 8d 8f 1f    ...
    inc ticks_since_last_direction_key_pressed                        ; 284f: e6 58       .X
    rts                                                               ; 2851: 60          `

.unused19
    equb &8d, &8f, &1f, &e6, &58, &60, &d0,   5, &a5, &5e, &4c, &64   ; 2852: 8d 8f 1f... ...
    equb &28, &25                                                     ; 285e: 28 25       (%

.read_keys_and_resolve_direction_keys
    jsr read_keys                                                     ; 2860: 20 89 26     .&
    ; just get the direction keys (top nybble)
    lda keys_to_process                                               ; 2863: a5 62       .b
    and #&f0                                                          ; 2865: 29 f0       ).
    tax                                                               ; 2867: aa          .
    tay                                                               ; 2868: a8          .
    ; look for any changes of direction. If so use the just pressed directions as input
    eor previous_direction_keys                                       ; 2869: 45 5d       E]
    bne direction_keys_changed                                        ; 286b: d0 05       ..
    ; no new directions were pressed, so use the previous directions from last time.
    lda just_pressed_direction_keys                                   ; 286d: a5 5e       .^
    jmp store_active_direction_keys                                   ; 286f: 4c 77 28    Lw(

.direction_keys_changed
    and keys_to_process                                               ; 2872: 25 62       %b
    bne store_active_direction_keys                                   ; 2874: d0 01       ..
    ; nothing was just pressed, so just use the currently pressed keys
    txa                                                               ; 2876: 8a          .
.store_active_direction_keys
    tax                                                               ; 2877: aa          .
    stx just_pressed_direction_keys                                   ; 2878: 86 5e       .^
    ; remember the special (non-direction keys) only
    lda keys_to_process                                               ; 287a: a5 62       .b
    and #&0f                                                          ; 287c: 29 0f       ).
    sta keys_to_process                                               ; 287e: 85 62       .b
    ; recall the active direction keys, and combine with the special keys
    txa                                                               ; 2880: 8a          .
    and #&f0                                                          ; 2881: 29 f0       ).
    ora keys_to_process                                               ; 2883: 05 62       .b
    sta keys_to_process                                               ; 2885: 85 62       .b
    sty previous_direction_keys                                       ; 2887: 84 5d       .]
    rts                                                               ; 2889: 60          `

.unused20
    equb &bd,   0, &1f, &99, &80, &1f, &c6, &77, &a6, &77, &10, &ee   ; 288a: bd 00 1f... ...
    equb &a5, &5a                                                     ; 2896: a5 5a       .Z

.increment_status_bar_number
    lda tile_map,y                                                    ; 2898: b9 00 32    ..2
    clc                                                               ; 289b: 18          .
    adc #1                                                            ; 289c: 69 01       i.
    cmp #&3c                                                          ; 289e: c9 3c       .<
    bmi finished_change                                               ; 28a0: 30 1a       0.
    lda #sprite_0                                                     ; 28a2: a9 32       .2
    sta tile_map,y                                                    ; 28a4: 99 00 32    ..2
    dey                                                               ; 28a7: 88          .
    bpl increment_status_bar_number                                   ; 28a8: 10 ee       ..
.decrement_status_bar_number
    lda tile_map,y                                                    ; 28aa: b9 00 32    ..2
    sec                                                               ; 28ad: 38          8
    sbc #1                                                            ; 28ae: e9 01       ..
    cmp #sprite_0                                                     ; 28b0: c9 32       .2
    bpl finished_change                                               ; 28b2: 10 08       ..
    lda #&3b                                                          ; 28b4: a9 3b       .;
    sta tile_map,y                                                    ; 28b6: 99 00 32    ..2
    dey                                                               ; 28b9: 88          .
    bpl decrement_status_bar_number                                   ; 28ba: 10 ee       ..
.finished_change
    sta tile_map,y                                                    ; 28bc: 99 00 32    ..2
    rts                                                               ; 28bf: 60          `

.add_a_to_status_bar_number_at_y
    sty real_keys_pressed                                             ; 28c0: 84 7c       .|
    sta amount_to_increment_status_bar                                ; 28c2: 85 72       .r
    cmp #0                                                            ; 28c4: c9 00       ..
    beq finished_add                                                  ; 28c6: f0 09       ..
.increment_number_loop
    jsr increment_status_bar_number                                   ; 28c8: 20 98 28     .(
    ldy real_keys_pressed                                             ; 28cb: a4 7c       .|
    dec amount_to_increment_status_bar                                ; 28cd: c6 72       .r
    bne increment_number_loop                                         ; 28cf: d0 f7       ..
.finished_add
    ldy real_keys_pressed                                             ; 28d1: a4 7c       .|
    rts                                                               ; 28d3: 60          `

.unused21
    equb &81, &22, &20,   1, &41, &78, &76, &74, &7a, &43, &3f,   1   ; 28d4: 81 22 20... ."
    equb &81, &22, &20,   1, &41, &41, &98, &38, &e9, &10, &c9,   4   ; 28e0: 81 22 20... ."
    equb &10,   4, &aa, &bd, &f7, &28,   9, &80, &85, &77, &60,   0   ; 28ec: 10 04 aa... ...
    equb   0, &84,   1, &55, &28, &a5, &98, &0a                       ; 28f8: 00 84 01... ...

.prepare_stage
    lda #0                                                            ; 2900: a9 00       ..
    sta cell_right                                                    ; 2902: 85 78       .x
    ldy cave_number                                                   ; 2904: a4 87       ..
    lda fill_cell_in_lower_nybble_strip_value_to_skip_in_upper_for_each_cave,y; 2906: b9 90 4c    ..L
    and #&0f                                                          ; 2909: 29 0f       ).
    sta cell_below_left                                               ; 290b: 85 79       .y
    jsr clear_map_and_grid                                            ; 290d: 20 56 22     V"
    ; high nybbles in the cave colour arrays store the sprite to use for three basic
    ; block types. copy them into cell_above_left/cell_above/cell_above_right
    ldy cave_number                                                   ; 2910: a4 87       ..
    ldx #1                                                            ; 2912: a2 01       ..
.loop_three_times
    lda colour_1_lower_nybble_block_type_1_upper_for_each_cave,y      ; 2914: b9 a4 4c    ..L
    lsr a                                                             ; 2917: 4a          J
    lsr a                                                             ; 2918: 4a          J
    lsr a                                                             ; 2919: 4a          J
    lsr a                                                             ; 291a: 4a          J
    sta cell_above_left-1,x                                           ; 291b: 95 72       .r
    ; add number of caves to Y, in order to get next block type
    tya                                                               ; 291d: 98          .
    clc                                                               ; 291e: 18          .
    adc #total_caves                                                  ; 291f: 69 14       i.
    tay                                                               ; 2921: a8          .
    ; increment loop counter X
    inx                                                               ; 2922: e8          .
    cpx #4                                                            ; 2923: e0 04       ..
    bne loop_three_times                                              ; 2925: d0 ed       ..
    ; look up which data set needed from the cave number
    ldy cave_number                                                   ; 2927: a4 87       ..
    lda cave_to_data_set,y                                            ; 2929: b9 e0 4c    ..L
    bmi add_strips                                                    ; 292c: 30 54       0T
    tax                                                               ; 292e: aa          .
    ; start with ptr = data_sets
    lda #<data_sets                                                   ; 292f: a9 f4       ..
    sta ptr_low                                                       ; 2931: 85 8c       ..
    lda #>data_sets                                                   ; 2933: a9 4c       .L
    sta ptr_high                                                      ; 2935: 85 8d       ..
    ; Loop counter X is data set number.
    ; Add X * twenty bytes to pointer to get to 'data_set_X' address
    txa                                                               ; 2937: 8a          .
    beq got_data_set_X_address                                        ; 2938: f0 08       ..
.add_twenty_times_x_loop
    lda #total_caves                                                  ; 293a: a9 14       ..
    jsr add_a_to_ptr                                                  ; 293c: 20 40 22     @"
    dex                                                               ; 293f: ca          .
    bne add_twenty_times_x_loop                                       ; 2940: d0 f8       ..
.got_data_set_X_address
    lda ptr_low                                                       ; 2942: a5 8c       ..
    sta sound0_active_flag                                            ; 2944: 85 46       .F
    ; set offset in Y = 4*(difficulty level-1)
    ldx difficulty_level                                              ; 2946: a6 89       ..
    dex                                                               ; 2948: ca          .
    txa                                                               ; 2949: 8a          .
    asl a                                                             ; 294a: 0a          .
    asl a                                                             ; 294b: 0a          .
    tay                                                               ; 294c: a8          .
    lda ptr_high                                                      ; 294d: a5 8d       ..
    sta data_set_ptr_high                                             ; 294f: 85 47       .G
    ; set next_ptr = $4e00+?ptr, and if top bit of (ptr?1) is set, increment high byte
    lda (ptr_low),y                                                   ; 2951: b1 8c       ..
    sta next_ptr_low                                                  ; 2953: 85 82       ..
    lda #&4e                                                          ; 2955: a9 4e       .N
    sta next_ptr_high                                                 ; 2957: 85 83       ..
    ; use the lower seven bits of (ptr?1) as ptr_low
    iny                                                               ; 2959: c8          .
    lda (ptr_low),y                                                   ; 295a: b1 8c       ..
    sty remember_y                                                    ; 295c: 84 48       .H
    bpl store_ptr_low_and_fill_with_basics                            ; 295e: 10 04       ..
    inc next_ptr_high                                                 ; 2960: e6 83       ..
    and #&7f                                                          ; 2962: 29 7f       ).
    ; set ptr_low = (ptr?1) AND &7F
.store_ptr_low_and_fill_with_basics
    sta ptr_low                                                       ; 2964: 85 8c       ..
    jsr fill_with_basics                                              ; 2966: 20 90 2d     .-
    ; reset ptr to the start of the data_set_X
    lda sound0_active_flag                                            ; 2969: a5 46       .F
    sta ptr_low                                                       ; 296b: 85 8c       ..
    lda data_set_ptr_high                                             ; 296d: a5 47       .G
    sta ptr_high                                                      ; 296f: 85 8d       ..
    ; recall Y and read the next two bytes as an address. Can be zero. For details?
    ldy remember_y                                                    ; 2971: a4 48       .H
    iny                                                               ; 2973: c8          .
    lda (ptr_low),y                                                   ; 2974: b1 8c       ..
    sta next_ptr_low                                                  ; 2976: 85 82       ..
    iny                                                               ; 2978: c8          .
    lda (ptr_low),y                                                   ; 2979: b1 8c       ..
    beq add_strips                                                    ; 297b: f0 05       ..
    sta next_ptr_high                                                 ; 297d: 85 83       ..
    jsr add_patches                                                   ; 297f: 20 50 2d     P-
.add_strips
    lda #<strip_data                                                  ; 2982: a9 00       ..
    sta ptr_low                                                       ; 2984: 85 8c       ..
    lda #>strip_data                                                  ; 2986: a9 47       .G
    sta ptr_high                                                      ; 2988: 85 8d       ..
    ; get value to skip when writing strips to the map
    ldy cave_number                                                   ; 298a: a4 87       ..
    lda fill_cell_in_lower_nybble_strip_value_to_skip_in_upper_for_each_cave,y; 298c: b9 90 4c    ..L
    lsr a                                                             ; 298f: 4a          J
    lsr a                                                             ; 2990: 4a          J
    lsr a                                                             ; 2991: 4a          J
    lsr a                                                             ; 2992: 4a          J
    sta cell_current                                                  ; 2993: 85 77       .w
.find_strip_data_for_cave_loop
    dey                                                               ; 2995: 88          .
    bmi found_strip_data_for_cave                                     ; 2996: 30 09       0.
    lda length_of_strip_data_for_each_cave,y                          ; 2998: b9 7c 4c    .|L
    jsr add_a_to_ptr                                                  ; 299b: 20 40 22     @"
    jmp find_strip_data_for_cave_loop                                 ; 299e: 4c 95 29    L.)

.found_strip_data_for_cave
    lda ptr_low                                                       ; 29a1: a5 8c       ..
    sta next_ptr_low                                                  ; 29a3: 85 82       ..
    lda ptr_high                                                      ; 29a5: a5 8d       ..
    sta next_ptr_high                                                 ; 29a7: 85 83       ..
    jsr write_strips                                                  ; 29a9: 20 00 2d     .-
.set_palette
    ldy cave_number                                                   ; 29ac: a4 87       ..
    ldx #1                                                            ; 29ae: a2 01       ..
.set_palette_loop
    lda colour_1_lower_nybble_block_type_1_upper_for_each_cave,y      ; 29b0: b9 a4 4c    ..L
    and #&0f                                                          ; 29b3: 29 0f       ).
    jsr set_palette_colour_ax                                         ; 29b5: 20 35 2a     5*
    tya                                                               ; 29b8: 98          .
    clc                                                               ; 29b9: 18          .
    adc #&14                                                          ; 29ba: 69 14       i.
    tay                                                               ; 29bc: a8          .
    inx                                                               ; 29bd: e8          .
    cpx #4                                                            ; 29be: e0 04       ..
    bne set_palette_loop                                              ; 29c0: d0 ee       ..
    rts                                                               ; 29c2: 60          `

.unused22
    cmp (l0060),y                                                     ; 29c3: d1 60       .`
    beq return6                                                       ; 29c5: f0 0d       ..
    lda #4                                                            ; 29c7: a9 04       ..
    jsr add_a_to_ptr                                                  ; 29c9: 20 40 22     @"
    and #&3f                                                          ; 29cc: 29 3f       )?
    cmp #&28                                                          ; 29ce: c9 28       .(
    bne found_strip_data_for_cave                                     ; 29d0: d0 cf       ..
    ; beq $299c
    equb &f0, &c8                                                     ; 29d2: f0 c8       ..

.return6
    rts                                                               ; 29d4: 60          `

.unused23
    inc screen_addr1_low                                              ; 29d5: e6 8a       ..
    bne c29db                                                         ; 29d7: d0 02       ..
    inc screen_addr1_high                                             ; 29d9: e6 8b       ..
.c29db
    lda cell_below                                                    ; 29db: a5 7a       .z
    ; bne $299a
    equb &d0, &bb                                                     ; 29dd: d0 bb       ..

    rts                                                               ; 29df: 60          `

.unused24
    equb &7a, &d0, &bb, &60, &f0, &16, &8a, &18, &69,   8, &aa, &29   ; 29e0: 7a d0 bb... z..
    equb &3f, &c9, &28, &d0, &d9, &18, &8a, &69, &18, &aa, &90, &d2   ; 29ec: 3f c9 28... ?.(
    equb &e6, &8d, &d0, &ce, &60, &8d, &d0, &cc                       ; 29f8: e6 8d d0... ...

.increment_map_ptr
    inc ptr_low                                                       ; 2a00: e6 8c       ..
    lda ptr_low                                                       ; 2a02: a5 8c       ..
    and #&3f                                                          ; 2a04: 29 3f       )?
    cmp #&28                                                          ; 2a06: c9 28       .(
    bne return7                                                       ; 2a08: d0 0f       ..
    lda ptr_low                                                       ; 2a0a: a5 8c       ..
    and #&c0                                                          ; 2a0c: 29 c0       ).
    clc                                                               ; 2a0e: 18          .
    adc #&40                                                          ; 2a0f: 69 40       i@
    sta ptr_low                                                       ; 2a11: 85 8c       ..
    bcc skip_increment_high_byte2                                     ; 2a13: 90 02       ..
    inc ptr_high                                                      ; 2a15: e6 8d       ..
.skip_increment_high_byte2
    dec x_loop_counter                                                ; 2a17: c6 7c       .|
.return7
    rts                                                               ; 2a19: 60          `

.set_ptr_to_start_of_map
    lda #<map_row_1                                                   ; 2a1a: a9 40       .@
.set_ptr_high_to_start_of_map_with_offset_a
    sta ptr_low                                                       ; 2a1c: 85 8c       ..
.set_ptr_high_to_start_of_map
    lda #>map_row_1                                                   ; 2a1e: a9 50       .P
    sta ptr_high                                                      ; 2a20: 85 8d       ..
    lda #&14                                                          ; 2a22: a9 14       ..
    sta x_loop_counter                                                ; 2a24: 85 7c       .|
    ldy #0                                                            ; 2a26: a0 00       ..
    rts                                                               ; 2a28: 60          `

.palette_block
    equb 0                                                            ; 2a29: 00          .              ; logical colour
    equb 0                                                            ; 2a2a: 00          .              ; physical colour
    equb 0                                                            ; 2a2b: 00          .              ; zero
    equb 0                                                            ; 2a2c: 00          .              ; zero
    equb 0                                                            ; 2a2d: 00          .              ; zero

.increment_next_ptr
    inc next_ptr_low                                                  ; 2a2e: e6 82       ..
    bne return7                                                       ; 2a30: d0 e7       ..
    inc next_ptr_high                                                 ; 2a32: e6 83       ..
    rts                                                               ; 2a34: 60          `

.set_palette_colour_ax
    sta palette_block+1                                               ; 2a35: 8d 2a 2a    .**
    txa                                                               ; 2a38: 8a          .
    pha                                                               ; 2a39: 48          H
    stx palette_block                                                 ; 2a3a: 8e 29 2a    .)*
    tya                                                               ; 2a3d: 98          .
    pha                                                               ; 2a3e: 48          H
    ldx #<(palette_block)                                             ; 2a3f: a2 29       .)
    ldy #>(palette_block)                                             ; 2a41: a0 2a       .*
    lda #osword_write_palette                                         ; 2a43: a9 0c       ..
    jsr osword                                                        ; 2a45: 20 f1 ff     ..            ; Write palette
    pla                                                               ; 2a48: 68          h
    tay                                                               ; 2a49: a8          .
    pla                                                               ; 2a4a: 68          h
    tax                                                               ; 2a4b: aa          .
    rts                                                               ; 2a4c: 60          `

.reset_clock
    ldy #>(sprite_addr_space)                                         ; 2a4d: a0 13       ..
    ldx #<(sprite_addr_space)                                         ; 2a4f: a2 00       ..
    lda #osword_write_clock                                           ; 2a51: a9 02       ..
    jmp osword                                                        ; 2a53: 4c f1 ff    L..            ; Write system clock

; *************************************************************************************
; 
; Animate the flashing spaces on the grid.
; Calculate and set palette colour 3 over a number of frames
; Also checks for awarding a bonus life.
; 
; Sequence of colours to show.
; countdown_while_changing_palette    physical colour to set
;     7                                       7 (white)
;     6                                       6 (cyan)
;     5                                       5 (magenta)
;     4                                       3 (yellow)
;     3                                       7 (white)
;     2                                       6 (cyan)
;     1                                       5 (magenta)
;     0                                       -
; 
.animate_flashing_spaces_and_check_for_bonus_life
    lda countdown_while_switching_palette                             ; 2a56: a5 59       .Y
    beq check_for_bonus_life                                          ; 2a58: f0 1f       ..
    inc sound6_active_flag                                            ; 2a5a: e6 4c       .L
    ldx #3                                                            ; 2a5c: a2 03       ..
    lda countdown_while_switching_palette                             ; 2a5e: a5 59       .Y
    and #7                                                            ; 2a60: 29 07       ).
    ora #4                                                            ; 2a62: 09 04       ..
    cmp #4                                                            ; 2a64: c9 04       ..
    bne skip_setting_physical_colour_to_three                         ; 2a66: d0 02       ..
    ; set logical colour three
    lda #3                                                            ; 2a68: a9 03       ..
.skip_setting_physical_colour_to_three
    jsr set_palette_colour_ax                                         ; 2a6a: 20 35 2a     5*
    dec countdown_while_switching_palette                             ; 2a6d: c6 59       .Y
    bne check_for_bonus_life                                          ; 2a6f: d0 08       ..
    ; restore to spaces
    lda #0                                                            ; 2a71: a9 00       ..
    sta cell_type_to_sprite                                           ; 2a73: 8d 80 1f    ...
    jsr set_palette                                                   ; 2a76: 20 ac 29     .)

    ; a bonus life is awarded every 500 points
.check_for_bonus_life
    lda hundreds_digit_of_score_on_status_bar                         ; 2a79: ad 11 32    ..2
    cmp #sprite_0                                                     ; 2a7c: c9 32       .2
    beq zero_or_five_in_hundreds_column                               ; 2a7e: f0 09       ..
    cmp #sprite_5                                                     ; 2a80: c9 37       .7
    beq zero_or_five_in_hundreds_column                               ; 2a82: f0 05       ..
    lda #&ff                                                          ; 2a84: a9 ff       ..
    sta bonus_life_available                                          ; 2a86: 85 6f       .o
    rts                                                               ; 2a88: 60          `

.zero_or_five_in_hundreds_column
    ldy #&11                                                          ; 2a89: a0 11       ..
.check_for_non_zero_in_top_digits
    lda tile_map,y                                                    ; 2a8b: b9 00 32    ..2
    cmp #sprite_0                                                     ; 2a8e: c9 32       .2
    bne non_zero_digit_found_in_hundreds_column_or_above              ; 2a90: d0 0a       ..
    dey                                                               ; 2a92: 88          .
    cpy #&0d                                                          ; 2a93: c0 0d       ..
    bne check_for_non_zero_in_top_digits                              ; 2a95: d0 f4       ..
    lda #0                                                            ; 2a97: a9 00       ..
    sta bonus_life_available                                          ; 2a99: 85 6f       .o
    rts                                                               ; 2a9b: 60          `

.non_zero_digit_found_in_hundreds_column_or_above
    lda bonus_life_available                                          ; 2a9c: a5 6f       .o
    beq return8                                                       ; 2a9e: f0 14       ..
    ; award bonus life
    lda #0                                                            ; 2aa0: a9 00       ..
    sta bonus_life_available                                          ; 2aa2: 85 6f       .o
    ; set sprite for space to pathway
    lda #sprite_pathway                                               ; 2aa4: a9 1f       ..
    sta cell_type_to_sprite                                           ; 2aa6: 8d 80 1f    ...
    ; start animating colour three
    lda #7                                                            ; 2aa9: a9 07       ..
    sta countdown_while_switching_palette                             ; 2aab: 85 59       .Y
    ; add one to the MEN count
    inc men_number_on_status_bar                                      ; 2aad: ee 1e 32    ..2
    ; show bonus life text (very briefly)
    lda #<bonus_life_text                                             ; 2ab0: a9 64       .d
    sta status_text_address_low                                       ; 2ab2: 85 69       .i
.return8
    rts                                                               ; 2ab4: 60          `

; *************************************************************************************
.draw_big_rockford
    lda #>big_rockford_destination_screen_address                     ; 2ab5: a9 58       .X
    sta ptr_high                                                      ; 2ab7: 85 8d       ..
    ldy #<big_rockford_destination_screen_address                     ; 2ab9: a0 00       ..
    sty ptr_low                                                       ; 2abb: 84 8c       ..
    lda #>big_rockford_sprite                                         ; 2abd: a9 34       .4
    sta next_ptr_high                                                 ; 2abf: 85 83       ..
    sty next_ptr_low                                                  ; 2ac1: 84 82       ..
.draw_big_rockford_loop
    ldx #1                                                            ; 2ac3: a2 01       ..
    jsr get_next_ptr_byte                                             ; 2ac5: 20 eb 2a     .*
    ldy #6                                                            ; 2ac8: a0 06       ..
.check_if_byte_is_an_rle_byte_loop
    cmp rle_bytes_table,y                                             ; 2aca: d9 f8 2a    ..*
    beq get_repeat_count                                              ; 2acd: f0 05       ..
    dey                                                               ; 2acf: 88          .
    bne check_if_byte_is_an_rle_byte_loop                             ; 2ad0: d0 f8       ..
    beq copy_x_bytes_in_rle_loop                                      ; 2ad2: f0 08       ..             ; ALWAYS branch

.get_repeat_count
    ldy #0                                                            ; 2ad4: a0 00       ..
    pha                                                               ; 2ad6: 48          H
    jsr get_next_ptr_byte                                             ; 2ad7: 20 eb 2a     .*
    tax                                                               ; 2ada: aa          .
    pla                                                               ; 2adb: 68          h
.copy_x_bytes_in_rle_loop
    sta (ptr_low),y                                                   ; 2adc: 91 8c       ..
    inc ptr_low                                                       ; 2ade: e6 8c       ..
    bne skip_inc_high                                                 ; 2ae0: d0 04       ..
    inc ptr_high                                                      ; 2ae2: e6 8d       ..
    bmi return9                                                       ; 2ae4: 30 0d       0.
.skip_inc_high
    dex                                                               ; 2ae6: ca          .
    bne copy_x_bytes_in_rle_loop                                      ; 2ae7: d0 f3       ..
    beq draw_big_rockford_loop                                        ; 2ae9: f0 d8       ..             ; ALWAYS branch

.get_next_ptr_byte
    lda (next_ptr_low),y                                              ; 2aeb: b1 82       ..
    inc next_ptr_low                                                  ; 2aed: e6 82       ..
    bne return9                                                       ; 2aef: d0 02       ..
    inc next_ptr_high                                                 ; 2af1: e6 83       ..
.return9
    rts                                                               ; 2af3: 60          `

.unused25
    equb &f0, &e5, &a9,   0                                           ; 2af4: f0 e5 a9... ...

.rle_bytes_table
    equb &85, &48, &10, &ec, &ff, &0f,   0                            ; 2af8: 85 48 10... .H.

.unused26
    equb &27                                                          ; 2aff: 27          '

; *************************************************************************************
.map_address_to_map_xy_position
    lda map_address_high                                              ; 2b00: a5 8d       ..
    and #7                                                            ; 2b02: 29 07       ).
    sta map_y                                                         ; 2b04: 85 8b       ..
    lda map_address_low                                               ; 2b06: a5 8c       ..
    asl a                                                             ; 2b08: 0a          .
    rol map_y                                                         ; 2b09: 26 8b       &.
    asl a                                                             ; 2b0b: 0a          .
    rol map_y                                                         ; 2b0c: 26 8b       &.
    lda map_address_low                                               ; 2b0e: a5 8c       ..
    and #&3f                                                          ; 2b10: 29 3f       )?
    sta map_x                                                         ; 2b12: 85 8a       ..
    rts                                                               ; 2b14: 60          `

.map_xy_position_to_map_address
    lda #0                                                            ; 2b15: a9 00       ..
    sta map_address_low                                               ; 2b17: 85 8c       ..
    lda map_y                                                         ; 2b19: a5 8b       ..
    lsr a                                                             ; 2b1b: 4a          J
    ror map_address_low                                               ; 2b1c: 66 8c       f.
    lsr a                                                             ; 2b1e: 4a          J
    ror map_address_low                                               ; 2b1f: 66 8c       f.
    ora #&50                                                          ; 2b21: 09 50       .P
    sta map_address_high                                              ; 2b23: 85 8d       ..
    lda map_x                                                         ; 2b25: a5 8a       ..
    ora map_address_low                                               ; 2b27: 05 8c       ..
    sta map_address_low                                               ; 2b29: 85 8c       ..
    rts                                                               ; 2b2b: 60          `

; Scrolls the map by setting the tile_map_ptr and visible_top_left_map_x and y
.update_map_scroll_position
    lda map_rockford_current_position_addr_low                        ; 2b2c: a5 70       .p
    sta map_address_low                                               ; 2b2e: 85 8c       ..
    lda map_rockford_current_position_addr_high                       ; 2b30: a5 71       .q
    sta map_address_high                                              ; 2b32: 85 8d       ..
    jsr map_address_to_map_xy_position                                ; 2b34: 20 00 2b     .+
    sec                                                               ; 2b37: 38          8
    sbc visible_top_left_map_x                                        ; 2b38: e5 7e       .~
    ldx visible_top_left_map_x                                        ; 2b3a: a6 7e       .~
    cmp #17                                                           ; 2b3c: c9 11       ..
    bmi check_for_need_to_scroll_left                                 ; 2b3e: 30 05       0.
    cpx #20                                                           ; 2b40: e0 14       ..
    bpl check_for_need_to_scroll_down                                 ; 2b42: 10 0a       ..
    inx                                                               ; 2b44: e8          .
.check_for_need_to_scroll_left
    cmp #3                                                            ; 2b45: c9 03       ..
    bpl check_for_need_to_scroll_down                                 ; 2b47: 10 05       ..
    cpx #1                                                            ; 2b49: e0 01       ..
    bmi check_for_need_to_scroll_down                                 ; 2b4b: 30 01       0.
    dex                                                               ; 2b4d: ca          .
.check_for_need_to_scroll_down
    ldy visible_top_left_map_y                                        ; 2b4e: a4 7f       ..
    lda map_y                                                         ; 2b50: a5 8b       ..
    sec                                                               ; 2b52: 38          8
    sbc visible_top_left_map_y                                        ; 2b53: e5 7f       ..
    cmp #9                                                            ; 2b55: c9 09       ..
    bmi check_for_need_to_scroll_up                                   ; 2b57: 30 05       0.
    cpy #&0a                                                          ; 2b59: c0 0a       ..
    bpl check_for_bonus_stages                                        ; 2b5b: 10 0a       ..
    iny                                                               ; 2b5d: c8          .
.check_for_need_to_scroll_up
    cmp #3                                                            ; 2b5e: c9 03       ..
    bpl check_for_bonus_stages                                        ; 2b60: 10 05       ..
    cpy #1                                                            ; 2b62: c0 01       ..
    bmi check_for_bonus_stages                                        ; 2b64: 30 01       0.
    dey                                                               ; 2b66: 88          .
.check_for_bonus_stages
    lda cave_number                                                   ; 2b67: a5 87       ..
    cmp #&10                                                          ; 2b69: c9 10       ..
    bmi skip_bonus_stage                                              ; 2b6b: 30 04       0.
    ; bonus stage is always situated in top left corner
    lda #0                                                            ; 2b6d: a9 00       ..
    tax                                                               ; 2b6f: aa          .
    tay                                                               ; 2b70: a8          .
.skip_bonus_stage
    stx visible_top_left_map_x                                        ; 2b71: 86 7e       .~
    stx map_x                                                         ; 2b73: 86 8a       ..
    sty visible_top_left_map_y                                        ; 2b75: 84 7f       ..
    sty map_y                                                         ; 2b77: 84 8b       ..
    jsr map_xy_position_to_map_address                                ; 2b79: 20 15 2b     .+
    lda map_address_low                                               ; 2b7c: a5 8c       ..
    sta tile_map_ptr_low                                              ; 2b7e: 85 85       ..
    lda map_address_high                                              ; 2b80: a5 8d       ..
    sta tile_map_ptr_high                                             ; 2b82: 85 86       ..
    rts                                                               ; 2b84: 60          `

.unused27
    equb &86, &60, &a0, &1e, &a2, &fa, &a9,   1, &20, &f1, &ff        ; 2b85: 86 60 a0... .`.

.wait_for_13_centiseconds_and_read_keys
    lda #&0d                                                          ; 2b90: a9 0d       ..
.wait_for_a_centiseconds_and_read_keys
    sta wait_delay_centiseconds                                       ; 2b92: 85 84       ..
.wait_for_centiseconds_and_read_keys
    lda #0                                                            ; 2b94: a9 00       ..
    sta keys_to_process                                               ; 2b96: 85 62       .b
.wait_loop
    jsr read_keys_and_resolve_direction_keys                          ; 2b98: 20 60 28     `(
    ldy #>(set_clock_value)                                           ; 2b9b: a0 1e       ..
    ldx #<(set_clock_value)                                           ; 2b9d: a2 70       .p
    lda #osword_read_clock                                            ; 2b9f: a9 01       ..
    jsr osword                                                        ; 2ba1: 20 f1 ff     ..            ; Read system clock
    lda set_clock_value                                               ; 2ba4: ad 70 1e    .p.
    cmp wait_delay_centiseconds                                       ; 2ba7: c5 84       ..
    bmi wait_loop                                                     ; 2ba9: 30 ed       0.
    lda keys_to_process                                               ; 2bab: a5 62       .b
    and #&f0                                                          ; 2bad: 29 f0       ).
    sta keys_to_process                                               ; 2baf: 85 62       .b
    jsr read_keys_and_resolve_direction_keys                          ; 2bb1: 20 60 28     `(
    jsr animate_flashing_spaces_and_check_for_bonus_life              ; 2bb4: 20 56 2a     V*
    jsr reset_clock                                                   ; 2bb7: 20 4d 2a     M*
    ldx #0                                                            ; 2bba: a2 00       ..
    txa                                                               ; 2bbc: 8a          .
    jmp set_palette_colour_ax                                         ; 2bbd: 4c 35 2a    L5*

.unused28
    equb &a9,   1, &a0, &43, &91, &8c, &a0, &c4, &88, &91             ; 2bc0: a9 01 a0... ...

.handler_firefly_in_box
    lda #1                                                            ; 2bca: a9 01       ..
    ldy #&43                                                          ; 2bcc: a0 43       .C
    sta (ptr_low),y                                                   ; 2bce: 91 8c       ..
    ldy #&c4                                                          ; 2bd0: a0 c4       ..
.c2bd2
    dey                                                               ; 2bd2: 88          .
    sta (ptr_low),y                                                   ; 2bd3: 91 8c       ..
    beq c2bdf                                                         ; 2bd5: f0 08       ..
    cpy #&c0                                                          ; 2bd7: c0 c0       ..
    bne c2bd2                                                         ; 2bd9: d0 f7       ..
    ldy #4                                                            ; 2bdb: a0 04       ..
    bne c2bd2                                                         ; 2bdd: d0 f3       ..
.c2bdf
    ldy #&80                                                          ; 2bdf: a0 80       ..
    sta (ptr_low),y                                                   ; 2be1: 91 8c       ..
    sta cell_left                                                     ; 2be3: 85 76       .v
    sta cell_above                                                    ; 2be5: 85 74       .t
    ldy #&83                                                          ; 2be7: a0 83       ..
    sta (ptr_low),y                                                   ; 2be9: 91 8c       ..
    lsr a                                                             ; 2beb: 4a          J
    dey                                                               ; 2bec: 88          .
    sta (ptr_low),y                                                   ; 2bed: 91 8c       ..
    sta cell_below                                                    ; 2bef: 85 7a       .z
    sta cell_right                                                    ; 2bf1: 85 78       .x
    ldx #6                                                            ; 2bf3: a2 06       ..
    lda cave_number                                                   ; 2bf5: a5 87       ..
    cmp #3                                                            ; 2bf7: c9 03       ..
    bne c2bfd                                                         ; 2bf9: d0 02       ..
    ldx #&2e                                                          ; 2bfb: a2 2e       ..
.c2bfd
    rts                                                               ; 2bfd: 60          `

    equb &cb, &60                                                     ; 2bfe: cb 60       .`

; Sound data packed into single bytes: channel, amplitude, pitch, duration
.in_game_sound_data
    equb &12,   5,   8,   5                                           ; 2c00: 12 05 08... ...
    equb &12, &f7, &c8,   1                                           ; 2c04: 12 f7 c8... ...
    equb   0, &fe,   4,   1                                           ; 2c08: 00 fe 04... ...
    equb   0, &fb,   4,   1                                           ; 2c0c: 00 fb 04... ...
    equb &10,   2,   5,   7                                           ; 2c10: 10 02 05... ...
    equb &13,   1, &dc,   1                                           ; 2c14: 13 01 dc... ...
    equb &10,   4,   7, &1e                                           ; 2c18: 10 04 07... ...
    equb &11,   3, &ff, &28                                           ; 2c1c: 11 03 ff... ...
    equb &12,   1, &c8,   2                                           ; 2c20: 12 01 c8... ...
.in_game_sound_block
    equw &0013                                                        ; 2c24: 13 00       ..             ; channel; Channel (2 bytes)
.in_game_sound_amplitude
    equw 1                                                            ; 2c26: 01 00       ..             ; amplitude; Amplitude (2 bytes)
.in_game_sound_pitch
    equw 143                                                          ; 2c28: 8f 00       ..             ; pitch; Pitch (2 bytes)
.in_game_sound_duration
    equw 1                                                            ; 2c2a: 01 00       ..             ; duration; Duration (2 bytes)

; If X is negative, then play sound (X AND 127) with pitch Y.
; If X is non-negative, play sound X with default pitch.
.play_sound_x_pitch_y
    txa                                                               ; 2c2c: 8a          .
    bmi skip_using_default_pitch1                                     ; 2c2d: 30 02       0.
    ldy #0                                                            ; 2c2f: a0 00       ..
.skip_using_default_pitch1
    and #&7f                                                          ; 2c31: 29 7f       ).
    tax                                                               ; 2c33: aa          .
    cpx #6                                                            ; 2c34: e0 06       ..
    bne play_raw_sound_x_pitch_y                                      ; 2c36: d0 05       ..
    ; sound 6 also plays sound 7
    jsr play_raw_sound_x_pitch_y                                      ; 2c38: 20 3d 2c     =,
    ldx #7                                                            ; 2c3b: a2 07       ..
.play_raw_sound_x_pitch_y
    txa                                                               ; 2c3d: 8a          .
    asl a                                                             ; 2c3e: 0a          .
    asl a                                                             ; 2c3f: 0a          .
    tax                                                               ; 2c40: aa          .
    lda #0                                                            ; 2c41: a9 00       ..
    sta in_game_sound_amplitude+1                                     ; 2c43: 8d 27 2c    .',
    lda in_game_sound_data,x                                          ; 2c46: bd 00 2c    ..,
    sta in_game_sound_block                                           ; 2c49: 8d 24 2c    .$,
    lda in_game_sound_data+1,x                                        ; 2c4c: bd 01 2c    ..,
    sta in_game_sound_amplitude                                       ; 2c4f: 8d 26 2c    .&,
    bpl skip_negative_amplitude                                       ; 2c52: 10 05       ..
    lda #&ff                                                          ; 2c54: a9 ff       ..
    sta in_game_sound_amplitude+1                                     ; 2c56: 8d 27 2c    .',
.skip_negative_amplitude
    tya                                                               ; 2c59: 98          .
    bne skip_using_default_pitch2                                     ; 2c5a: d0 03       ..
    ; use default pitch
    lda in_game_sound_data+2,x                                        ; 2c5c: bd 02 2c    ..,
.skip_using_default_pitch2
    sta in_game_sound_pitch                                           ; 2c5f: 8d 28 2c    .(,
    lda in_game_sound_data+3,x                                        ; 2c62: bd 03 2c    ..,
    sta in_game_sound_duration                                        ; 2c65: 8d 2a 2c    .*,
    ldy #>(in_game_sound_block)                                       ; 2c68: a0 2c       .,
    ldx #<(in_game_sound_block)                                       ; 2c6a: a2 24       .$
    lda #osword_sound                                                 ; 2c6c: a9 07       ..
    jmp osword                                                        ; 2c6e: 4c f1 ff    L..            ; SOUND command

.unused29
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                  ; 2c71: 00 00 00... ...

.update_sounds
    lda sound2_active_flag                                            ; 2c80: a5 48       .H
    eor #&41                                                          ; 2c82: 49 41       IA
    sta sound2_active_flag                                            ; 2c84: 85 48       .H
    lda time_remaining                                                ; 2c86: a5 6d       .m
    cmp #&0b                                                          ; 2c88: c9 0b       ..
    bcs skip_playing_countdown_sounds                                 ; 2c8a: b0 14       ..
    lda sub_second_ticks                                              ; 2c8c: a5 5c       .\
    cmp #&0b                                                          ; 2c8e: c9 0b       ..
    bne skip_playing_countdown_sounds                                 ; 2c90: d0 0e       ..
    ; play rising pitch as time up is approaching
    lda #&dc                                                          ; 2c92: a9 dc       ..
    sbc time_remaining                                                ; 2c94: e5 6d       .m
    sbc time_remaining                                                ; 2c96: e5 6d       .m
    sbc time_remaining                                                ; 2c98: e5 6d       .m
    tay                                                               ; 2c9a: a8          .
    ldx #&88                                                          ; 2c9b: a2 88       ..
    jsr play_sound_x_pitch_y                                          ; 2c9d: 20 2c 2c     ,,
.skip_playing_countdown_sounds
    jsr get_next_random_byte                                          ; 2ca0: 20 4a 22     J"
    and #&0c                                                          ; 2ca3: 29 0c       ).
    sta in_game_sound_data+2                                          ; 2ca5: 8d 02 2c    ..,
    ldx #5                                                            ; 2ca8: a2 05       ..
    jsr play_sound_if_needed                                          ; 2caa: 20 e8 2c     .,
    lda tick_counter                                                  ; 2cad: a5 5a       .Z
    lsr a                                                             ; 2caf: 4a          J
    bcc skip_sound_0                                                  ; 2cb0: 90 05       ..
    ldx #0                                                            ; 2cb2: a2 00       ..
    jsr play_sound_if_needed                                          ; 2cb4: 20 e8 2c     .,
.skip_sound_0
    ldx #1                                                            ; 2cb7: a2 01       ..
    jsr play_sound_if_needed                                          ; 2cb9: 20 e8 2c     .,
    ldx #6                                                            ; 2cbc: a2 06       ..
    jsr play_sound_if_needed                                          ; 2cbe: 20 e8 2c     .,
    lda sound6_active_flag                                            ; 2cc1: a5 4c       .L
    bne return10                                                      ; 2cc3: d0 2a       .*
    ldx #4                                                            ; 2cc5: a2 04       ..
    jsr play_sound_if_needed                                          ; 2cc7: 20 e8 2c     .,
    lda sound4_active_flag                                            ; 2cca: a5 4a       .J
    bne return10                                                      ; 2ccc: d0 21       .!
    ldy #&19                                                          ; 2cce: a0 19       ..
    ldx #&fb                                                          ; 2cd0: a2 fb       ..
    lda #osbyte_read_adc_or_get_buffer_status                         ; 2cd2: a9 80       ..
    jsr osbyte                                                        ; 2cd4: 20 f4 ff     ..            ; Read number of spaces remaining in sound channel 0 (X=251)
    cpx #&0b                                                          ; 2cd7: e0 0b       ..             ; X is the number of spaces remaining in sound channel 0
    bmi return10                                                      ; 2cd9: 30 14       0.
    lda sound4_active_flag                                            ; 2cdb: a5 4a       .J
    ora sound6_active_flag                                            ; 2cdd: 05 4c       .L
    bne return10                                                      ; 2cdf: d0 0e       ..
    ldx #2                                                            ; 2ce1: a2 02       ..
    jsr play_sound_if_needed                                          ; 2ce3: 20 e8 2c     .,
    ldx #3                                                            ; 2ce6: a2 03       ..
.play_sound_if_needed
    lda sound0_active_flag,x                                          ; 2ce8: b5 46       .F
    beq return10                                                      ; 2cea: f0 03       ..
    jmp play_sound_x_pitch_y                                          ; 2cec: 4c 2c 2c    L,,

.return10
    rts                                                               ; 2cef: 60          `

.unused30
    equb &85, &a6, &a8, &91, &70, &60, &a2,   3, &bd, &e3, &20, &18   ; 2cf0: 85 a6 a8... ...
    equb &69,   1, &c9, &0a                                           ; 2cfc: 69 01 c9... i..

.write_strips
    ldy #1                                                            ; 2d00: a0 01       ..
    sty map_y                                                         ; 2d02: 84 8b       ..
    dey                                                               ; 2d04: 88          .
    sty map_x                                                         ; 2d05: 84 8a       ..
    jsr map_xy_position_to_map_address                                ; 2d07: 20 15 2b     .+
.write_next_strip_loop
    lda (next_ptr_low),y                                              ; 2d0a: b1 82       ..
    inc next_ptr_low                                                  ; 2d0c: e6 82       ..
    bne skip_high_byte1                                               ; 2d0e: d0 02       ..
    inc next_ptr_high                                                 ; 2d10: e6 83       ..
    ; remember value
.skip_high_byte1
    pha                                                               ; 2d12: 48          H
    ; get repeat count (from high nybble)
    lsr a                                                             ; 2d13: 4a          J
    lsr a                                                             ; 2d14: 4a          J
    lsr a                                                             ; 2d15: 4a          J
    lsr a                                                             ; 2d16: 4a          J
    tax                                                               ; 2d17: aa          .
    inx                                                               ; 2d18: e8          .
    pla                                                               ; 2d19: 68          h
    and #&0f                                                          ; 2d1a: 29 0f       ).
    sta lower_nybble_value                                            ; 2d1c: 85 7c       .|
.write_strip_loop
    lda lower_nybble_value                                            ; 2d1e: a5 7c       .|
    ; a value of 10 means move to the next row
    cmp #&0a                                                          ; 2d20: c9 0a       ..
    beq move_to_next_row                                              ; 2d22: f0 0e       ..
    ; if it's this cave's skip value, then don't write to the map
    cmp cell_current                                                  ; 2d24: c5 77       .w
    beq skip_write_to_map                                             ; 2d26: f0 02       ..
    sta (map_address_low),y                                           ; 2d28: 91 8c       ..
    ; move the map position one to the right, wrapping to the next row if needed
.skip_write_to_map
    inc map_x                                                         ; 2d2a: e6 8a       ..
    lda map_x                                                         ; 2d2c: a5 8a       ..
    cmp #40                                                           ; 2d2e: c9 28       .(
    bne get_map_address                                               ; 2d30: d0 0a       ..             ; redundant instruction
.move_to_next_row
    sty map_x                                                         ; 2d32: 84 8a       ..
    inc map_y                                                         ; 2d34: e6 8b       ..
    lda map_y                                                         ; 2d36: a5 8b       ..
    cmp #21                                                           ; 2d38: c9 15       ..
    beq return11                                                      ; 2d3a: f0 08       ..
.get_map_address
    jsr map_xy_position_to_map_address                                ; 2d3c: 20 15 2b     .+
    dex                                                               ; 2d3f: ca          .
    bne write_strip_loop                                              ; 2d40: d0 dc       ..
    beq write_next_strip_loop                                         ; 2d42: f0 c6       ..             ; ALWAYS branch

.return11
    rts                                                               ; 2d44: 60          `

.unused31
    equb &31, &15, &41, &15, &11, &25, &31, &12, &21, &15, &21        ; 2d45: 31 15 41... 1.A

.add_patches
    lda #<(map_row_1-1)                                               ; 2d50: a9 3f       .?
    jsr set_ptr_high_to_start_of_map_with_offset_a                    ; 2d52: 20 1c 2a     .*
.c2d55
    lda (next_ptr_low),y                                              ; 2d55: b1 82       ..
    jsr increment_next_ptr                                            ; 2d57: 20 2e 2a     .*
    ; remember the byte read
    pha                                                               ; 2d5a: 48          H
    ; the top five bits are the offset into the map to change.
    lsr a                                                             ; 2d5b: 4a          J
    lsr a                                                             ; 2d5c: 4a          J
    lsr a                                                             ; 2d5d: 4a          J
    tax                                                               ; 2d5e: aa          .
    inx                                                               ; 2d5f: e8          .
    ; add X to ptr (where we only use 40 out of every 64 bytes for the map)
.add_X_to_map_ptr_loop
    jsr increment_map_ptr                                             ; 2d60: 20 00 2a     .*
    beq pull_a_and_return                                             ; 2d63: f0 1a       ..
    dex                                                               ; 2d65: ca          .
    bne add_X_to_map_ptr_loop                                         ; 2d66: d0 f8       ..
    ; recall the byte, and isolate the bottom three bits.
    pla                                                               ; 2d68: 68          h
    and #7                                                            ; 2d69: 29 07       ).
    ; 0 = store value 0
    ; 1 = skip this byte (no change)
    ; 2 = store value 2
    ; 3 = terminator
    ; 4 = store value 4
    ; 5 = store value 5
    ; 6 = store value 6
    ; 7 = store value 1
    cmp #1                                                            ; 2d6b: c9 01       ..
    beq c2d7c                                                         ; 2d6d: f0 0d       ..
    cmp #3                                                            ; 2d6f: c9 03       ..
    bne c2d74                                                         ; 2d71: d0 01       ..
    rts                                                               ; 2d73: 60          `

.c2d74
    cmp #7                                                            ; 2d74: c9 07       ..
    bne c2d7a                                                         ; 2d76: d0 02       ..
    lda #1                                                            ; 2d78: a9 01       ..
.c2d7a
    sta (ptr_low),y                                                   ; 2d7a: 91 8c       ..
.c2d7c
    jmp c2d55                                                         ; 2d7c: 4c 55 2d    LU-

.pull_a_and_return
    pla                                                               ; 2d7f: 68          h
    rts                                                               ; 2d80: 60          `

.unused32
    equb &8a, &69, &18, &aa, &90, &d3, &e6, &8d, &d0, &cf, &60, &15   ; 2d81: 8a 69 18... .i.
    equb &11, &15, &51                                                ; 2d8d: 11 15 51    ..Q

.fill_with_basics
    jsr set_ptr_high_to_start_of_map                                  ; 2d90: 20 1e 2a     .*
    ; read byte from stage. This is done 200 times (40x20 cells, 4 cells per byte)
.read_next_byte_loop
    ldy #0                                                            ; 2d93: a0 00       ..
    lda (next_ptr_low),y                                              ; 2d95: b1 82       ..
    ; increment to next byte
    inc next_ptr_low                                                  ; 2d97: e6 82       ..
    bne skip_increment_high_byte1                                     ; 2d99: d0 02       ..
    inc next_ptr_high                                                 ; 2d9b: e6 83       ..
.skip_increment_high_byte1
    ldx #3                                                            ; 2d9d: a2 03       ..
    stx cell_current                                                  ; 2d9f: 86 77       .w
    ; Extract the top two bits of the stage byte. Each pair of bits holds a type to
    ; write into the cell. We shift down six times to get the index, and put the result
    ; in X.
.loop_for_each_byte
    pha                                                               ; 2da1: 48          H
    lsr a                                                             ; 2da2: 4a          J
    lsr a                                                             ; 2da3: 4a          J
    lsr a                                                             ; 2da4: 4a          J
    lsr a                                                             ; 2da5: 4a          J
    lsr a                                                             ; 2da6: 4a          J
    lsr a                                                             ; 2da7: 4a          J
    tax                                                               ; 2da8: aa          .
    ; if the index is zero, don't write to the map.
    beq c2daf                                                         ; 2da9: f0 04       ..
    ; X=1,2 or 3. Look up the sprite to store in the cell (in the map).
    lda cell_above_left-1,x                                           ; 2dab: b5 72       .r
    sta (ptr_low),y                                                   ; 2dad: 91 8c       ..
.c2daf
    jsr increment_map_ptr                                             ; 2daf: 20 00 2a     .*
    beq pull_and_return2                                              ; 2db2: f0 09       ..
    ; recall the byte and shift twice to start reading the next pair of bits
    pla                                                               ; 2db4: 68          h
    asl a                                                             ; 2db5: 0a          .
    asl a                                                             ; 2db6: 0a          .
    dec cell_current                                                  ; 2db7: c6 77       .w
    bpl loop_for_each_byte                                            ; 2db9: 10 e6       ..
    bmi read_next_byte_loop                                           ; 2dbb: 30 d6       0.             ; ALWAYS branch

.pull_and_return2
    pla                                                               ; 2dbd: 68          h
    rts                                                               ; 2dbe: 60          `

.unused33
    lda #&18                                                          ; 2dbf: a9 18       ..
    jsr add_a_to_ptr                                                  ; 2dc1: 20 40 22     @"
    dec real_keys_pressed                                             ; 2dc4: c6 7c       .|
    bne unused34                                                      ; 2dc6: d0 02       ..
    pla                                                               ; 2dc8: 68          h
    rts                                                               ; 2dc9: 60          `

.unused34
    pla                                                               ; 2dca: 68          h
    asl a                                                             ; 2dcb: 0a          .
    asl a                                                             ; 2dcc: 0a          .
    dec cell_current                                                  ; 2dcd: c6 77       .w
    ; bpl $2da6
    ; bmi $2d98
    equb &10, &d5                                                     ; 2dcf: 10 d5       ..
    equb &30, &c5                                                     ; 2dd1: 30 c5       0.             ; ALWAYS branch

.unused35
    equb &11, &25, &b1, &15, &11, &15, &12, &25, &11, &15, &21, &15   ; 2dd3: 11 25 b1... .%.
    equb &11, &15, &21, &15, &11, &25, &41, &10, &51, &10             ; 2ddf: 11 15 21... ..!
    equb &21, &45, &21                                                ; 2de9: 21 45 21    !E!
    equb &15, &11, &12, &21, &15, &11, &15, &31, &10, &11, &25, &12   ; 2dec: 15 11 12... ...
    equb &51, &15, &11, &25, &16, &25, &11, &15                       ; 2df8: 51 15 11... Q..

.sub_c2e00
    jsr prepare_stage                                                 ; 2e00: 20 00 29     .)
    lda #0                                                            ; 2e03: a9 00       ..
    sta bonus_life_available                                          ; 2e05: 85 6f       .o
    sta cell_type_to_sprite                                           ; 2e07: 8d 80 1f    ...
    ldx #<players_and_men_status_bar                                  ; 2e0a: a2 14       ..
    lda cave_number                                                   ; 2e0c: a5 87       ..
    cmp #&10                                                          ; 2e0e: c9 10       ..
    bmi skip_bonus_life_text                                          ; 2e10: 30 02       0.
    ldx #<bonus_life_text                                             ; 2e12: a2 64       .d
.skip_bonus_life_text
    stx status_text_address_low                                       ; 2e14: 86 69       .i
    lda demo_mode_tick_count                                          ; 2e16: a5 65       .e
    bmi c2e1e                                                         ; 2e18: 30 04       0.
    lda #<demonstration_mode_text                                     ; 2e1a: a9 a0       ..
    sta status_text_address_low                                       ; 2e1c: 85 69       .i
.c2e1e
    ldx #&0f                                                          ; 2e1e: a2 0f       ..
.loop_c2e20
    lda sprite_addr_91,x                                              ; 2e20: bd 60 1e    .`.
    cmp #&63                                                          ; 2e23: c9 63       .c
    beq c2e29                                                         ; 2e25: f0 02       ..
    sta l0050,x                                                       ; 2e27: 95 50       .P
.c2e29
    dex                                                               ; 2e29: ca          .
    bpl loop_c2e20                                                    ; 2e2a: 10 f4       ..
    ; don't process horizontal strips
    lda #0                                                            ; 2e2c: a9 00       ..
    sta handler_table_high+12                                         ; 2e2e: 8d dc 21    ..!
    jsr preprocess_map                                                ; 2e31: 20 04 24     .$
    ; process horizontal strips
    lda #>handler_for_horizontal_strip                                ; 2e34: a9 23       .#
    sta handler_table_high+12                                         ; 2e36: 8d dc 21    ..!
    jsr preprocess_map                                                ; 2e39: 20 04 24     .$
    ; map complete: draw titanium wall borders
    jsr set_ptr_to_start_of_map                                       ; 2e3c: 20 1a 2a     .*
    ; loop over all rows
    ldx #22                                                           ; 2e3f: a2 16       ..
.write_left_and_right_borders_loop
    ldy #39                                                           ; 2e41: a0 27       .'
    ; write the right hand border
    lda #&83                                                          ; 2e43: a9 83       ..
    sta (ptr_low),y                                                   ; 2e45: 91 8c       ..
    dey                                                               ; 2e47: 88          .
.hide_cells_loop
    lda (ptr_low),y                                                   ; 2e48: b1 8c       ..
    ora #&80                                                          ; 2e4a: 09 80       ..
    sta (ptr_low),y                                                   ; 2e4c: 91 8c       ..
    dey                                                               ; 2e4e: 88          .
    bne hide_cells_loop                                               ; 2e4f: d0 f7       ..
    ; write the left hand border
    lda #&83                                                          ; 2e51: a9 83       ..
    sta (ptr_low),y                                                   ; 2e53: 91 8c       ..
    lda #&40                                                          ; 2e55: a9 40       .@
    jsr add_a_to_ptr                                                  ; 2e57: 20 40 22     @"
    dex                                                               ; 2e5a: ca          .
    bne write_left_and_right_borders_loop                             ; 2e5b: d0 e4       ..
    ; write the top and bottom borders
    lda #&83                                                          ; 2e5d: a9 83       ..
    ldx #39                                                           ; 2e5f: a2 27       .'
.write_top_and_bottom_borders_loop
    sta map_row_0,x                                                   ; 2e61: 9d 00 50    ..P
    sta map_row_21,x                                                  ; 2e64: 9d 40 55    .@U
    dex                                                               ; 2e67: ca          .
    bpl write_top_and_bottom_borders_loop                             ; 2e68: 10 f7       ..
    jsr initialise_stage                                              ; 2e6a: 20 50 2f     P/
    jsr play_screen_dissolve_effect                                   ; 2e6d: 20 bf 2e     ..
    jsr start_gameplay                                                ; 2e70: 20 00 27     .'
    lda neighbour_cell_contents                                       ; 2e73: a5 64       .d
    cmp #8                                                            ; 2e75: c9 08       ..
    beq play_scren_dissolve_to_solid                                  ; 2e77: f0 44       .D
    dec men_number_on_status_bar                                      ; 2e79: ce 1e 32    ..2
    lda men_number_on_status_bar                                      ; 2e7c: ad 1e 32    ..2
    cmp #sprite_0                                                     ; 2e7f: c9 32       .2
    bne play_scren_dissolve_to_solid                                  ; 2e81: d0 3a       .:
    lda player_number_on_status_bar                                   ; 2e83: ad 1b 32    ..2
    sta player_number_on_game_over_text                               ; 2e86: 8d 9e 32    ..2
    lda #<game_over_text                                              ; 2e89: a9 8c       ..
    sta status_text_address_low                                       ; 2e8b: 85 69       .i
    ldx #&50                                                          ; 2e8d: a2 50       .P
    lda player_number_on_status_bar                                   ; 2e8f: ad 1b 32    ..2
    cmp #sprite_1                                                     ; 2e92: c9 33       .3
    beq c2e98                                                         ; 2e94: f0 02       ..
    ldx #&5e                                                          ; 2e96: a2 5e       .^
.c2e98
    stx which_status_bar_address1_low                                 ; 2e98: 8e aa 2e    ...
    stx which_status_bar_address2_low                                 ; 2e9b: 8e b8 2e    ...
    ldx #0                                                            ; 2e9e: a2 00       ..
    ldy #0                                                            ; 2ea0: a0 00       ..
.loop_c2ea2
    lda score_on_status_bar,x                                         ; 2ea2: bd 0e 32    ..2
    cpy #0                                                            ; 2ea5: c0 00       ..
    bne store_in_status_bar                                           ; 2ea7: d0 0e       ..
.sub_c2ea9
which_status_bar_address1_low = sub_c2ea9+1
    cmp highscore_high_status_bar,x                                   ; 2ea9: dd 50 32    .P2
    bmi play_scren_dissolve_to_solid                                  ; 2eac: 30 0f       0.
    bne store_in_status_bar                                           ; 2eae: d0 07       ..
.loop_c2eb0
    inx                                                               ; 2eb0: e8          .
    cpx #6                                                            ; 2eb1: e0 06       ..
    bne loop_c2ea2                                                    ; 2eb3: d0 ed       ..
    beq play_scren_dissolve_to_solid                                  ; 2eb5: f0 06       ..             ; ALWAYS branch

.store_in_status_bar
which_status_bar_address2_low = store_in_status_bar+1
    sta highscore_high_status_bar,x                                   ; 2eb7: 9d 50 32    .P2
    iny                                                               ; 2eba: c8          .
    bne loop_c2eb0                                                    ; 2ebb: d0 f3       ..
.play_scren_dissolve_to_solid
    lda #&80                                                          ; 2ebd: a9 80       ..
.play_screen_dissolve_effect
    sta dissolve_to_solid_flag                                        ; 2ebf: 85 72       .r
    lda #&21                                                          ; 2ec1: a9 21       .!
    sta tick_counter                                                  ; 2ec3: 85 5a       .Z
    lda cave_number                                                   ; 2ec5: a5 87       ..
    sta cell_current                                                  ; 2ec7: 85 77       .w
.screen_dissolve_loop
    jsr reveal_or_hide_more_cells                                     ; 2ec9: 20 b3 22     ."
    jsr draw_grid_of_sprites                                          ; 2ecc: 20 00 23     .#
    jsr draw_status_bar                                               ; 2ecf: 20 25 23     %#
    lda tick_counter                                                  ; 2ed2: a5 5a       .Z
    asl a                                                             ; 2ed4: 0a          .
    and #&0f                                                          ; 2ed5: 29 0f       ).
    ora #&e0                                                          ; 2ed7: 09 e0       ..
    sta sprite_titanium_addressA                                      ; 2ed9: 8d 07 20    ..
    sta sprite_titanium_addressB                                      ; 2edc: 8d 60 20    .`
    dec tick_counter                                                  ; 2edf: c6 5a       .Z
    bpl screen_dissolve_loop                                          ; 2ee1: 10 e6       ..
    rts                                                               ; 2ee3: 60          `

.unused36
    equb &60, &20, &c6, &5a, &10, &e6, &60, &28, &25, &26, &25, &28   ; 2ee4: 60 20 c6... ` .
    equb &25, &26, &27, &28, &25, &25, &25, &26, &20, &20, &23, &24   ; 2ef0: 25 26 27... %&'
    equb &24, &24, &23, &20                                           ; 2efc: 24 24 23... $$#

.got_diamond_so_update_status_bar
    ldy #8                                                            ; 2f00: a0 08       ..
    jsr increment_status_bar_number                                   ; 2f02: 20 98 28     .(
    lda total_diamonds_on_status_bar_high_digit                       ; 2f05: ad 03 32    ..2
    sec                                                               ; 2f08: 38          8
    sbc #sprite_0                                                     ; 2f09: e9 32       .2
    ldy #&12                                                          ; 2f0b: a0 12       ..
    jsr add_a_to_status_bar_number_at_y                               ; 2f0d: 20 c0 28     .(
    lda total_diamonds_on_status_bar_low_digit                        ; 2f10: ad 04 32    ..2
    sec                                                               ; 2f13: 38          8
    sbc #sprite_0                                                     ; 2f14: e9 32       .2
    iny                                                               ; 2f16: c8          .
    jsr add_a_to_status_bar_number_at_y                               ; 2f17: 20 c0 28     .(
    dec diamonds_required                                             ; 2f1a: c6 6c       .l
    bne return12                                                      ; 2f1c: d0 29       .)
    lda #7                                                            ; 2f1e: a9 07       ..
    ldx #0                                                            ; 2f20: a2 00       ..
    jsr set_palette_colour_ax                                         ; 2f22: 20 35 2a     5*
    lda #3                                                            ; 2f25: a9 03       ..
    sta tile_map                                                      ; 2f27: 8d 00 32    ..2
    sta required_diamonds_on_status_bar                               ; 2f2a: 8d 01 32    ..2
    ; open the exit
    ldy #0                                                            ; 2f2d: a0 00       ..
    lda #&18                                                          ; 2f2f: a9 18       ..
    sta (map_rockford_end_position_addr_low),y                        ; 2f31: 91 6a       .j
    ; set total diamonds to zero
    lda #sprite_0                                                     ; 2f33: a9 32       .2
    sta total_diamonds_on_status_bar_high_digit                       ; 2f35: 8d 03 32    ..2
    sta total_diamonds_on_status_bar_low_digit                        ; 2f38: 8d 04 32    ..2
    ; show score per diamond on status bar
    ldx cave_number                                                   ; 2f3b: a6 87       ..
    lda diamond_score_after_enough_obtained_for_each_cave,x           ; 2f3d: bd 14 4b    ..K
    ldy #4                                                            ; 2f40: a0 04       ..
    jsr add_a_to_status_bar_number_at_y                               ; 2f42: 20 c0 28     .(
    ; play sound 6
    inc sound6_active_flag                                            ; 2f45: e6 4c       .L
.return12
    rts                                                               ; 2f47: 60          `

.unused37
    equb &91, &6a, &e6, &4c, &60,   0,   0,   0                       ; 2f48: 91 6a e6... .j.

.initialise_stage
    lda #20                                                           ; 2f50: a9 14       ..
    sta visible_top_left_map_x                                        ; 2f52: 85 7e       .~
    lsr a                                                             ; 2f54: 4a          J
    sta visible_top_left_map_y                                        ; 2f55: 85 7f       ..
    ldy #&0d                                                          ; 2f57: a0 0d       ..
.empty_status_bar_loop
    lda zeroed_status_bar,y                                           ; 2f59: b9 f0 32    ..2
    sta tile_map,y                                                    ; 2f5c: 99 00 32    ..2
    dey                                                               ; 2f5f: 88          .
    bpl empty_status_bar_loop                                         ; 2f60: 10 f7       ..
    ldx cave_number                                                   ; 2f62: a6 87       ..
    ; show initial diamond score amount on status bar
    lda diamond_score_before_enough_obtained_for_each_cave,x          ; 2f64: bd 00 4b    ..K
    ldy #4                                                            ; 2f67: a0 04       ..
    jsr add_a_to_status_bar_number_at_y                               ; 2f69: 20 c0 28     .(
    ; show cave letter on status bar
    txa                                                               ; 2f6c: 8a          .
    clc                                                               ; 2f6d: 18          .
    adc #&41                                                          ; 2f6e: 69 41       iA
    sta cave_letter_on_status_bar                                     ; 2f70: 8d 25 32    .%2
    ; show difficulty level on status bar
    lda difficulty_level                                              ; 2f73: a5 89       ..
    clc                                                               ; 2f75: 18          .
    adc #sprite_0                                                     ; 2f76: 69 32       i2
    sta difficulty_level_on_status_bar                                ; 2f78: 8d 27 32    .'2
    ; set the delay between fungus growth
    lda fungus_growth_intervals,x                                     ; 2f7b: bd 54 4c    .TL
    sta fungus_growth_interval                                        ; 2f7e: 85 55       .U
    sta fungus_timer                                                  ; 2f80: 85 51       .Q
    ; put the end tile on the map
    lda end_y,x                                                       ; 2f82: bd 18 4c    ..L
    sta map_y                                                         ; 2f85: 85 8b       ..
    lda end_x,x                                                       ; 2f87: bd 2c 4c    .,L
    sta map_x                                                         ; 2f8a: 85 8a       ..
    jsr map_xy_position_to_map_address                                ; 2f8c: 20 15 2b     .+
    ldy #0                                                            ; 2f8f: a0 00       ..
    lda #3                                                            ; 2f91: a9 03       ..
    sta (map_address_low),y                                           ; 2f93: 91 8c       ..
    lda map_address_low                                               ; 2f95: a5 8c       ..
    sta map_rockford_end_position_addr_low                            ; 2f97: 85 6a       .j
    lda map_address_high                                              ; 2f99: a5 8d       ..
    sta map_rockford_end_position_addr_high                           ; 2f9b: 85 6b       .k
    ; put the start tile on the map
    lda start_y,x                                                     ; 2f9d: bd f0 4b    ..K
    sta map_y                                                         ; 2fa0: 85 8b       ..
    lda start_x,x                                                     ; 2fa2: bd 04 4c    ..L
    sta map_x                                                         ; 2fa5: 85 8a       ..
    jsr map_xy_position_to_map_address                                ; 2fa7: 20 15 2b     .+
    ldy #0                                                            ; 2faa: a0 00       ..
    lda #8                                                            ; 2fac: a9 08       ..
    sta (map_address_low),y                                           ; 2fae: 91 8c       ..
    lda map_address_low                                               ; 2fb0: a5 8c       ..
    sta map_rockford_current_position_addr_low                        ; 2fb2: 85 70       .p
    lda map_address_high                                              ; 2fb4: a5 8d       ..
    sta map_rockford_current_position_addr_high                       ; 2fb6: 85 71       .q
    ; add 40 to the cave number for each difficulty level above one
    ldy difficulty_level                                              ; 2fb8: a4 89       ..
.add_difficulty_level_loop
    cpy #2                                                            ; 2fba: c0 02       ..
    bmi got_offset_to_per_stage_data                                  ; 2fbc: 30 08       0.
    txa                                                               ; 2fbe: 8a          .
    clc                                                               ; 2fbf: 18          .
    adc #40                                                           ; 2fc0: 69 28       i(
    tax                                                               ; 2fc2: aa          .
    dey                                                               ; 2fc3: 88          .
    bne add_difficulty_level_loop                                     ; 2fc4: d0 f4       ..
    ; remember diamonds required
.got_offset_to_per_stage_data
    lda required_diamonds_for_each_cave_difficulty_level_1,x          ; 2fc6: bd 28 4b    .(K
    sta diamonds_required                                             ; 2fc9: 85 6c       .l
    ; show diamonds required on status bar
    ldy #1                                                            ; 2fcb: a0 01       ..
    jsr add_a_to_status_bar_number_at_y                               ; 2fcd: 20 c0 28     .(
    ; remember time remaining
    lda time_limit_for_each_cave_difficulty_level_1,x                 ; 2fd0: bd 3c 4b    .<K
    sta time_remaining                                                ; 2fd3: 85 6d       .m
    ; show time remaining on status bar
    ldy #&0c                                                          ; 2fd5: a0 0c       ..
    jsr add_a_to_status_bar_number_at_y                               ; 2fd7: 20 c0 28     .(
    ; return zero
    lda #0                                                            ; 2fda: a9 00       ..
    rts                                                               ; 2fdc: 60          `

.unused38
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 2fdd: 00 00 00... ...
    equb   0,   0,   0,   0,   0, &81,   0,   0,   0,   0, &84,   0   ; 2fe9: 00 00 00... ...
    equb   0, &86, &81,   0,   0,   1, &81, &d9, &19, &81, &ff        ; 2ff5: 00 86 81... ...

.sub_c3000
    lda l0056                                                         ; 3000: a5 56       .V
    beq c3018                                                         ; 3002: f0 14       ..
    sta sound0_active_flag                                            ; 3004: 85 46       .F
    ldy l0060                                                         ; 3006: a4 60       .`
    bne c3010                                                         ; 3008: d0 06       ..
    inc sound7_active_flag                                            ; 300a: e6 4d       .M
    ldx #&92                                                          ; 300c: a2 92       ..
    bne c3016                                                         ; 300e: d0 06       ..             ; ALWAYS branch

.c3010
    adc #&38                                                          ; 3010: 69 38       i8
    bcc c3018                                                         ; 3012: 90 04       ..
    ldx #&85                                                          ; 3014: a2 85       ..
.c3016
    stx l0054                                                         ; 3016: 86 54       .T
.c3018
    lda time_remaining                                                ; 3018: a5 6d       .m
    cmp #50                                                           ; 301a: c9 32       .2
    bne return13                                                      ; 301c: d0 0d       ..
    lda sub_second_ticks                                              ; 301e: a5 5c       .\
    cmp #7                                                            ; 3020: c9 07       ..
    bne return13                                                      ; 3022: d0 07       ..
    lda #1                                                            ; 3024: a9 01       ..
    sta fungus_growth_interval                                        ; 3026: 85 55       .U
    ; Set A=0
    lsr a                                                             ; 3028: 4a          J
    sta fungus_counter                                                ; 3029: 85 57       .W
.return13
    rts                                                               ; 302b: 60          `

.unused39
    equb &85, &57, &60, &1c, &1f, &1f, &1f, &1f, &1f, &1f, &1f, &1f   ; 302c: 85 57 60... .W`
    equb &1f, &1f, &1f, &1f, &1f, &1f, &1f, &1f                       ; 3038: 1f 1f 1f... ...

.check_for_pause_key
    lda keys_to_process                                               ; 3040: a5 62       .b
    and #2                                                            ; 3042: 29 02       ).
    beq no_pause                                                      ; 3044: f0 26       .&
    ; pause mode. show pause message.
    lda #<pause_message                                               ; 3046: a9 c8       ..
    sta status_text_address_low                                       ; 3048: 85 69       .i
    lda #0                                                            ; 304a: a9 00       ..
    sta pause_counter                                                 ; 304c: 85 4e       .N
.update_while_initially_pressing_pause_loop
    jsr update_during_pause_mode                                      ; 304e: 20 dd 30     .0
    bne update_while_initially_pressing_pause_loop                    ; 3051: d0 fb       ..
.pause_loop
    inc pause_counter                                                 ; 3053: e6 4e       .N
    ldx #<pause_message                                               ; 3055: a2 c8       ..
    ; toggle between showing pause message and regular status bar every 16 ticks
    lda pause_counter                                                 ; 3057: a5 4e       .N
    and #&10                                                          ; 3059: 29 10       ).
    beq skip_showing_players_and_men                                  ; 305b: f0 02       ..
    ldx #<players_and_men_status_bar                                  ; 305d: a2 14       ..
.skip_showing_players_and_men
    stx status_text_address_low                                       ; 305f: 86 69       .i
    jsr sub_c30cf                                                     ; 3061: 20 cf 30     .0
    beq pause_loop                                                    ; 3064: f0 ed       ..
.update_while_finally_pressing_unpause_loop
    jsr update_during_pause_mode                                      ; 3066: 20 dd 30     .0
    bne update_while_finally_pressing_unpause_loop                    ; 3069: d0 fb       ..
    rts                                                               ; 306b: 60          `

.no_pause
    lda neighbour_cell_contents                                       ; 306c: a5 64       .d
    cmp #8                                                            ; 306e: c9 08       ..
    beq c3084                                                         ; 3070: f0 12       ..
    lda #&0e                                                          ; 3072: a9 0e       ..
    sta cell_above                                                    ; 3074: 85 74       .t
    lda #<out_of_time_message                                         ; 3076: a9 b4       ..
    sta status_text_address_low                                       ; 3078: 85 69       .i
.loop_c307a
    jsr sub_c30cf                                                     ; 307a: 20 cf 30     .0
    bne return14                                                      ; 307d: d0 5d       .]
    dec cell_above                                                    ; 307f: c6 74       .t
    bne loop_c307a                                                    ; 3081: d0 f7       ..
    rts                                                               ; 3083: 60          `

.c3084
    ldy #0                                                            ; 3084: a0 00       ..
    lda (map_rockford_current_position_addr_low),y                    ; 3086: b1 70       .p
    and #&7f                                                          ; 3088: 29 7f       ).
    tax                                                               ; 308a: aa          .
    tya                                                               ; 308b: 98          .
    sta (map_rockford_current_position_addr_low),y                    ; 308c: 91 70       .p
    txa                                                               ; 308e: 8a          .
    sta (map_rockford_end_position_addr_low),y                        ; 308f: 91 6a       .j
    jsr draw_grid_of_sprites                                          ; 3091: 20 00 23     .#
    lda time_remaining                                                ; 3094: a5 6d       .m
    beq c30cb                                                         ; 3096: f0 33       .3
.c3098
    ldy #&13                                                          ; 3098: a0 13       ..
    jsr increment_status_bar_number                                   ; 309a: 20 98 28     .(
    ldy #&0c                                                          ; 309d: a0 0c       ..
    jsr decrement_status_bar_number                                   ; 309f: 20 aa 28     .(
    ldx #5                                                            ; 30a2: a2 05       ..
    stx sound5_active_flag                                            ; 30a4: 86 4b       .K
    lda #0                                                            ; 30a6: a9 00       ..
    sta sound6_active_flag                                            ; 30a8: 85 4c       .L
    sta status_text_address_low                                       ; 30aa: 85 69       .i
    lda time_remaining                                                ; 30ac: a5 6d       .m
    and #&1c                                                          ; 30ae: 29 1c       ).
    tay                                                               ; 30b0: a8          .
    iny                                                               ; 30b1: c8          .
    ldx #&88                                                          ; 30b2: a2 88       ..
    jsr play_sound_x_pitch_y                                          ; 30b4: 20 2c 2c     ,,
    jsr animate_flashing_spaces_and_check_for_bonus_life              ; 30b7: 20 56 2a     V*
    jsr draw_grid_of_sprites                                          ; 30ba: 20 00 23     .#
    jsr draw_status_bar                                               ; 30bd: 20 25 23     %#
    lda #2                                                            ; 30c0: a9 02       ..
    sta wait_delay_centiseconds                                       ; 30c2: 85 84       ..
    jsr wait_for_centiseconds_and_read_keys                           ; 30c4: 20 94 2b     .+
    dec time_remaining                                                ; 30c7: c6 6d       .m
    bne c3098                                                         ; 30c9: d0 cd       ..
.c30cb
    lda #<status_bar_sprite_numbers                                   ; 30cb: a9 00       ..
    sta status_text_address_low                                       ; 30cd: 85 69       .i
.sub_c30cf
    jsr draw_grid_of_sprites                                          ; 30cf: 20 00 23     .#
    jsr draw_status_bar                                               ; 30d2: 20 25 23     %#
    jsr wait_for_13_centiseconds_and_read_keys                        ; 30d5: 20 90 2b     .+
    lda keys_to_process                                               ; 30d8: a5 62       .b
    and #2                                                            ; 30da: 29 02       ).
.return14
    rts                                                               ; 30dc: 60          `

.update_during_pause_mode
    jsr draw_status_bar                                               ; 30dd: 20 25 23     %#
    lda #0                                                            ; 30e0: a9 00       ..
    sta wait_delay_centiseconds                                       ; 30e2: 85 84       ..
    jsr wait_for_centiseconds_and_read_keys                           ; 30e4: 20 94 2b     .+
    ; check for pause key
    lda keys_to_process                                               ; 30e7: a5 62       .b
    and #2                                                            ; 30e9: 29 02       ).
    rts                                                               ; 30eb: 60          `

.unused40
    equb &62, &29,   2, &60,   0,   0,   0,   0,   0,   0,   0,   0   ; 30ec: 62 29 02... b).
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 30f8: 00 00 00... ...
.demonstration_keys
    equb   0,   0,   8,   0, &10, &80,   0, &20,   0, &10, &80, &20   ; 3100: 00 00 08... ...
    equb &40,   0, &80, &10, &80,   0, &40,   0, &80, &20, &80,   0   ; 310c: 40 00 80... @..
    equb &10,   0, &40,   0, &10, &80,   0, &10, &80,   0, &10,   0   ; 3118: 10 00 40... ..@
    equb &40, &10, &40,   0, &10, &40,   0, &20, &80, &10,   0, &20   ; 3124: 40 10 40... @.@
    equb &40, &10, &40, &20, &40, &10, &40, &20, &40, &20, &40, &10   ; 3130: 40 10 40... @.@
    equb &40, &10,   0,   8, &88,   8, &10,   0, &80,   0, &10, &40   ; 313c: 40 10 00... @..
    equb   0, &80, &20, &80, &20,   0, &80, &10, &80, &20, &80,   0   ; 3148: 00 80 20... ..
    equb &10, &80,   0, &20, &80,   0, &10,   0, &80, &ff, &ff, &ff   ; 3154: 10 80 00... ...
.demonstration_key_durations
    equb &14, &22,   2, &12,   1,   7,   2,   2,   6,   1, &0b,   1   ; 3160: 14 22 02... .".
    equb   2,   2,   5,   4,   2,   6,   2,   1,   3,   3, &0b,   5   ; 316c: 02 02 05... ...
    equb   2,   5,   2,   5,   3,   2,   7,   3,   3,   4,   1,   3   ; 3178: 02 05 02... ...
    equb   3,   1,   4,   5,   2,   3,   6,   2,   3,   2,   1,   2   ; 3184: 03 01 04... ...
    equb   3,   1,   2,   4,   5,   4,   3,   2,   8,   2,   9,   1   ; 3190: 03 01 02... ...
    equb   2,   4,   3,   1,   2,   3,   2,   1,   2,   1,   5,   2   ; 319c: 02 04 03... ...
    equb   1,   5,   4,   5,   2,   5,   6,   5,   5,   3,   6, &10   ; 31a8: 01 05 04... ...
    equb   3,   5, &0c,   4,   3, &1f,   1, &14, &64, &ff, &ff, &ff   ; 31b4: 03 05 0c... ...

.entry_point
    ldx #0                                                            ; 31c0: a2 00       ..
.loop_c31c2
    lda map_row_16,x                                                  ; 31c2: bd 00 54    ..T
    sta copy_of_credits,x                                             ; 31c5: 9d 00 33    ..3
    dex                                                               ; 31c8: ca          .
    bne loop_c31c2                                                    ; 31c9: d0 f7       ..
.loop_c31cb
    lda #>status_bar_sprite_numbers                                   ; 31cb: a9 32       .2
    sta status_text_address_high                                      ; 31cd: 8d 3c 23    .<#
    jsr show_menu                                                     ; 31d0: 20 00 3a     .:
    ; increment to point to credits text at $3300
    inc status_text_address_high                                      ; 31d3: ee 3c 23    .<#
    lda #<status_bar_sprite_numbers                                   ; 31d6: a9 00       ..
    sta status_text_address_low                                       ; 31d8: 85 69       .i
.show_credits_loop
    jsr draw_status_bar                                               ; 31da: 20 25 23     %#
    jsr wait_for_13_centiseconds_and_read_keys                        ; 31dd: 20 90 2b     .+
    inc status_text_address_low                                       ; 31e0: e6 69       .i
    bne show_credits_loop                                             ; 31e2: d0 f6       ..
    jmp loop_c31cb                                                    ; 31e4: 4c cb 31    L.1

.unused41
    equb &31, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 31e7: 31 ff ff... 1..
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 31f3: ff ff ff... ...
    equb &ff                                                          ; 31ff: ff          .

.tile_map
.status_bar_sprite_numbers
    equb sprite_4                                                     ; 3200: 36          6
.required_diamonds_on_status_bar
    equb sprite_2                                                     ; 3201: 34          4
    equb sprite_diamond1                                              ; 3202: 03          .
.total_diamonds_on_status_bar_high_digit
    equb sprite_1                                                     ; 3203: 33          3
.total_diamonds_on_status_bar_low_digit
    equb sprite_0                                                     ; 3204: 32          2
    equb sprite_space                                                 ; 3205: 00          .
    equb sprite_0                                                     ; 3206: 32          2
    equb sprite_0                                                     ; 3207: 32          2
    equb sprite_0                                                     ; 3208: 32          2
    equb sprite_space                                                 ; 3209: 00          .
    equb sprite_1                                                     ; 320a: 33          3
    equb sprite_3                                                     ; 320b: 35          5
    equb sprite_3                                                     ; 320c: 35          5
    equb sprite_space                                                 ; 320d: 00          .
.score_on_status_bar
    equb sprite_0                                                     ; 320e: 32          2
    equb sprite_0                                                     ; 320f: 32          2
    equb sprite_7                                                     ; 3210: 39          9
.hundreds_digit_of_score_on_status_bar
    equb sprite_9                                                     ; 3211: 3b          ;
    equb sprite_7                                                     ; 3212: 39          9
    equb sprite_8                                                     ; 3213: 3a          :

.players_and_men_status_bar
    equs "PLAYER"                                                     ; 3214: 50 4c 41... PLA
    equb sprite_space                                                 ; 321a: 00          .
.player_number_on_status_bar
    equb sprite_1                                                     ; 321b: 33          3
    equb sprite_comma                                                 ; 321c: 3f          ?
    equb sprite_space                                                 ; 321d: 00          .
.men_number_on_status_bar
    equb sprite_0                                                     ; 321e: 32          2
    equb sprite_space                                                 ; 321f: 00          .
    equs "MEN"                                                        ; 3220: 4d 45 4e    MEN
    equb sprite_space                                                 ; 3223: 00          .
    equb sprite_space                                                 ; 3224: 00          .
.cave_letter_on_status_bar
    equs "N"                                                          ; 3225: 4e          N
    equb sprite_slash                                                 ; 3226: 3e          >
.difficulty_level_on_status_bar
    equb sprite_4                                                     ; 3227: 36          6

.l3228
    equb sprite_6                                                     ; 3228: 38          8
    equb sprite_0                                                     ; 3229: 32          2
    equb sprite_diamond1                                              ; 322a: 03          .
    equb sprite_0                                                     ; 322b: 32          2
    equb sprite_5                                                     ; 322c: 37          7
    equb sprite_space                                                 ; 322d: 00          .
    equb sprite_0                                                     ; 322e: 32          2
    equb sprite_0                                                     ; 322f: 32          2
    equb sprite_0                                                     ; 3230: 32          2
    equb sprite_space                                                 ; 3231: 00          .
    equb sprite_1                                                     ; 3232: 33          3
    equb sprite_5                                                     ; 3233: 37          7
    equb sprite_0                                                     ; 3234: 32          2
    equb sprite_space                                                 ; 3235: 00          .
.l3236
    equb sprite_0                                                     ; 3236: 32          2
    equb sprite_0                                                     ; 3237: 32          2
    equb sprite_0                                                     ; 3238: 32          2
    equb sprite_0                                                     ; 3239: 32          2
    equb sprite_0                                                     ; 323a: 32          2
    equb sprite_0                                                     ; 323b: 32          2

.l323c
    equs "PLAYER"                                                     ; 323c: 50 4c 41... PLA
    equb sprite_space                                                 ; 3242: 00          .
.l3243
    equb sprite_2                                                     ; 3243: 34          4
    equb sprite_comma                                                 ; 3244: 3f          ?
    equb sprite_space                                                 ; 3245: 00          .
.l3246
    equb sprite_0                                                     ; 3246: 32          2
    equb sprite_space                                                 ; 3247: 00          .
    equs "MEN"                                                        ; 3248: 4d 45 4e    MEN
    equb sprite_space                                                 ; 324b: 00          .
    equb sprite_space                                                 ; 324c: 00          .
.l324d
    equb 'B'                                                          ; 324d: 42          B
    equb sprite_slash                                                 ; 324e: 3e          >
.l324f
    equb sprite_4                                                     ; 324f: 36          6

.highscore_high_status_bar
    equb sprite_0                                                     ; 3250: 32          2
    equb sprite_0                                                     ; 3251: 32          2
    equb sprite_0                                                     ; 3252: 32          2
    equb sprite_0                                                     ; 3253: 32          2
    equb sprite_0                                                     ; 3254: 32          2
    equb sprite_0                                                     ; 3255: 32          2
    equb sprite_space                                                 ; 3256: 00          .
    equb sprite_space                                                 ; 3257: 00          .
    equs "HIGH"                                                       ; 3258: 48 49 47... HIG
    equb sprite_space                                                 ; 325c: 00          .
    equb sprite_space                                                 ; 325d: 00          .
    equb sprite_0                                                     ; 325e: 32          2
    equb sprite_0                                                     ; 325f: 32          2
    equb sprite_0                                                     ; 3260: 32          2
    equb sprite_0                                                     ; 3261: 32          2
    equb sprite_0                                                     ; 3262: 32          2
    equb sprite_0                                                     ; 3263: 32          2

.bonus_life_text
    equs "B"                                                          ; 3264: 42          B
    equb sprite_space                                                 ; 3265: 00          .
    equs "O"                                                          ; 3266: 4f          O
    equb sprite_space                                                 ; 3267: 00          .
    equs "N"                                                          ; 3268: 4e          N
    equb sprite_space                                                 ; 3269: 00          .
    equs "U"                                                          ; 326a: 55          U
    equb sprite_space                                                 ; 326b: 00          .
    equs "S"                                                          ; 326c: 53          S
    equb sprite_space                                                 ; 326d: 00          .
    equb sprite_space                                                 ; 326e: 00          .
    equb sprite_space                                                 ; 326f: 00          .
    equb sprite_space                                                 ; 3270: 00          .
    equs "L"                                                          ; 3271: 4c          L
    equb sprite_space                                                 ; 3272: 00          .
    equs "I"                                                          ; 3273: 49          I
    equb sprite_space                                                 ; 3274: 00          .
    equs "F"                                                          ; 3275: 46          F
    equb sprite_space                                                 ; 3276: 00          .
    equs "E"                                                          ; 3277: 45          E

.number_of_players_status_bar
    equb sprite_1                                                     ; 3278: 33          3
    equb sprite_space                                                 ; 3279: 00          .
    equs "PLAYER"                                                     ; 327a: 50 4c 41... PLA
.plural_for_player
    equb sprite_space                                                 ; 3280: 00          .
    equb sprite_space                                                 ; 3281: 00          .
    equb sprite_space                                                 ; 3282: 00          .
    equb sprite_space                                                 ; 3283: 00          .
    equs "CAVE="                                                      ; 3284: 43 41 56... CAV
.cave_letter
    equs "A"                                                          ; 3289: 41          A
    equb sprite_slash                                                 ; 328a: 3e          >
.number_of_players_status_bar_difficulty_level
    equb sprite_1                                                     ; 328b: 33          3

.game_over_text
    equb sprite_space                                                 ; 328c: 00          .
    equs "GAME"                                                       ; 328d: 47 41 4d... GAM
    equb sprite_space                                                 ; 3291: 00          .
    equs "OVER"                                                       ; 3292: 4f 56 45... OVE
    equb sprite_space                                                 ; 3296: 00          .
    equs "PLAYER"                                                     ; 3297: 50 4c 41... PLA
    equb sprite_space                                                 ; 329d: 00          .
.player_number_on_game_over_text
    equb sprite_1                                                     ; 329e: 33          3
    equb sprite_space                                                 ; 329f: 00          .
.demonstration_mode_text
    equb sprite_space                                                 ; 32a0: 00          .
    equs "DEMONSTRATION"                                              ; 32a1: 44 45 4d... DEM
    equb sprite_space                                                 ; 32ae: 00          .
    equs "MODE"                                                       ; 32af: 4d 4f 44... MOD
    equb sprite_space                                                 ; 32b3: 00          .
.out_of_time_message
    equs "O"                                                          ; 32b4: 4f          O
    equb sprite_space                                                 ; 32b5: 00          .
    equs "U"                                                          ; 32b6: 55          U
    equb sprite_space                                                 ; 32b7: 00          .
    equs "T"                                                          ; 32b8: 54          T
    equb sprite_space                                                 ; 32b9: 00          .
    equb sprite_space                                                 ; 32ba: 00          .
    equs "O"                                                          ; 32bb: 4f          O
    equb sprite_space                                                 ; 32bc: 00          .
    equs "F"                                                          ; 32bd: 46          F
    equb sprite_space                                                 ; 32be: 00          .
    equb sprite_space                                                 ; 32bf: 00          .
    equb sprite_space                                                 ; 32c0: 00          .
    equs "T"                                                          ; 32c1: 54          T
    equb sprite_space                                                 ; 32c2: 00          .
    equs "I"                                                          ; 32c3: 49          I
    equb sprite_space                                                 ; 32c4: 00          .
    equs "M"                                                          ; 32c5: 4d          M
    equb sprite_space                                                 ; 32c6: 00          .
    equs "E"                                                          ; 32c7: 45          E
.pause_message
    equs "HIT"                                                        ; 32c8: 48 49 54    HIT
    equb sprite_space                                                 ; 32cb: 00          .
    equs "SPACE"                                                      ; 32cc: 53 50 41... SPA
    equb sprite_space                                                 ; 32d1: 00          .
    equb sprite_space                                                 ; 32d2: 00          .
    equs "TO"                                                         ; 32d3: 54 4f       TO
    equb sprite_space                                                 ; 32d5: 00          .
    equs "RESUME"                                                     ; 32d6: 52 45 53... RES
.highscore_last_status_bar
    equb sprite_0                                                     ; 32dc: 32          2
    equb sprite_0                                                     ; 32dd: 32          2
    equb sprite_0                                                     ; 32de: 32          2
    equb sprite_0                                                     ; 32df: 32          2
    equb sprite_0                                                     ; 32e0: 32          2
    equb sprite_0                                                     ; 32e1: 32          2
    equb sprite_space                                                 ; 32e2: 00          .
    equb sprite_space                                                 ; 32e3: 00          .
    equs "LAST"                                                       ; 32e4: 4c 41 53... LAS
    equb sprite_space                                                 ; 32e8: 00          .
    equb sprite_space                                                 ; 32e9: 00          .
    equb sprite_0                                                     ; 32ea: 32          2
    equb sprite_0                                                     ; 32eb: 32          2
    equb sprite_0                                                     ; 32ec: 32          2
    equb sprite_0                                                     ; 32ed: 32          2
    equb sprite_0                                                     ; 32ee: 32          2
    equb sprite_0                                                     ; 32ef: 32          2
.zeroed_status_bar
    equb sprite_0                                                     ; 32f0: 32          2
    equb sprite_0                                                     ; 32f1: 32          2
    equb sprite_diamond1                                              ; 32f2: 03          .
    equb sprite_0                                                     ; 32f3: 32          2
    equb sprite_0                                                     ; 32f4: 32          2
    equb sprite_space                                                 ; 32f5: 00          .
    equb sprite_0                                                     ; 32f6: 32          2
    equb sprite_0                                                     ; 32f7: 32          2
    equb sprite_0                                                     ; 32f8: 32          2
    equb sprite_space                                                 ; 32f9: 00          .
    equb sprite_0                                                     ; 32fa: 32          2
    equb sprite_0                                                     ; 32fb: 32          2
    equb sprite_0                                                     ; 32fc: 32          2
    equb sprite_space                                                 ; 32fd: 00          .
    equb sprite_0                                                     ; 32fe: 32          2
    equb sprite_0                                                     ; 32ff: 32          2

; 
; Basic program for debugging purposes. Starts the game.
; On startup, this is immediately overwritten by the credits text.
; 
; 10*KEY 1 MO.4|M PAGE=13056 |M|N
; 20 MODE 5
; 30 VDU 23;8202;0;0;0;       (turns off the cursor)
; 40 *FX 178,0,0              (disables keyboard interrupts)
; 50 CALL 12736               (start the code at the regular entry_point)
; 60 *FX 178,255,0            (enables keyboard interrupts)
; 
.copy_of_credits
    equb &0d,   0, &0a                                                ; 3300: 0d 00 0a    ...
    equs " *KEY1 MO.4|M PAGE=13056 |M|N"                              ; 3303: 20 2a 4b...  *K
    equb &0d,   0, &14,   7, &20, &eb, &35, &0d,   0, &1e, &15, &20   ; 3320: 0d 00 14... ...
    equb &ef                                                          ; 332c: ef          .
    equs " 23;8202;0;0;0;"                                            ; 332d: 20 32 33...  23
    equb &0d,   0, &28, &10                                           ; 333c: 0d 00 28... ..(
    equs " *FX 178,0,0"                                               ; 3340: 20 2a 46...  *F
    equb &0d,   0, &32, &0c, &20, &d6                                 ; 334c: 0d 00 32... ..2
    equs " 12736"                                                     ; 3352: 20 31 32...  12
    equb &0d,   0, &3c, &12                                           ; 3358: 0d 00 3c... ..<
    equs " *FX 178,255,0"                                             ; 335c: 20 2a 46...  *F
    equb &0d, &ff                                                     ; 336a: 0d ff       ..

; 
; A fragment of the original source code (unused).
; 
; 80 JSR 10829
; 90 JSR 8850:LDA #220:STA 105
; 100 LDA #123:LDY #0:JSR 9001
; 110 JSR 8850:LDA #80:STA 105
; 120 LDA #125:LDY #128:JSR 9001
; 130 JSR 8850:LDX
; 
; Note there are no hex literals, everything's decimal. Which is unusual.
; 
; Translating this to hex form, we see this is the code at &3a06
; 80 JSR &2A4D
; 90 JSR &2292:LDA #&DC:STA &69
; 100 LDA #&7B:LDY #0:JSR &2329
; 110 JSR &2292:LDA #&50:STA &69
; 120 LDA #&7D:LDY #&80:JSR &2329
; 130 JSR &2292:LDX
; 
.unused42
    equb &50, &0e                                                     ; 336c: 50 0e       P.
    equs " JSR 10829"                                                 ; 336e: 20 4a 53...  JS
    equb &0d,   0, &5a, &1e                                           ; 3378: 0d 00 5a... ..Z
    equs " JSR 8850:LDA #220:STA 105"                                 ; 337c: 20 4a 53...  JS
    equb &0d,   0, &64, &1d                                           ; 3396: 0d 00 64... ..d
    equs " LDA #123:LDY #0:JSR 9001"                                  ; 339a: 20 4c 44...  LD
    equb &0d,   0, &6e, &1d                                           ; 33b3: 0d 00 6e... ..n
    equs " JSR 8850:LDA #80:STA 105"                                  ; 33b7: 20 4a 53...  JS
    equb &0d,   0, &78, &1f                                           ; 33d0: 0d 00 78... ..x
    equs " LDA #125:LDY #128:JSR 9001"                                ; 33d4: 20 4c 44...  LD
    equb &0d,   0, &82, &1b                                           ; 33ef: 0d 00 82... ...
    equs " JSR 8850:LDX"                                              ; 33f3: 20 4a 53...  JS

.big_rockford_sprite
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 3400: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0, &1a, &10,   1, &11,   0   ; 340c: 00 00 00... ...
    equb   2,   3, &21,   0,   2,   8,   6, &ca, &cb, &87, &69,   0   ; 3418: 02 03 21... ..!
    equb   3, &37, &8f, &2d, &6b, &0f,   1,   0,   4, &6c, &3e, &96   ; 3424: 03 37 8f... .7.
    equb &fc,   0,   4, &63, &c7, &96, &f3,   0,   3, &ce, &1f, &4b   ; 3430: fc 00 04... ...
    equb &6d, &0f,   1,   0,   2,   1, &12, &35, &3d, &1e, &69,   0   ; 343c: 6d 0f 01... m..
    equb   2, &80, &88,   0,   2, &0c, &68,   0, &fd, &10,   1,   0   ; 3448: 02 80 88... ...
    equb   2, &32, &11,   1,   7, &69, &32, &b1, &52, &7e, &97, &cb   ; 3454: 02 32 11... .2.
    equb &4f, &2d, &3c, &78, &e1, &2d, &3e, &97, &ad, &78, &f0, &0f   ; 3460: 4f 2d 3c... O-<
    equb   1, &69, &3e, &1e, &5a, &7c, &3e, &96, &78, &0f,   1, &c7   ; 346c: 01 69 3e... .i>
    equb &87, &a5, &e3, &c7, &96, &e1, &0f,   1, &4b, &c7, &9e, &5b   ; 3478: 87 a5 e3... ...
    equb &e1, &f0, &0f,   1, &69, &e7, &9e, &3d, &2f, &4b, &c3, &e1   ; 3484: e1 f0 0f... ...
    equb &78, &c4, &88,   8, &0e, &3e, &2d, &c4, &8e,   0,   6,   8   ; 3490: 78 c4 88... x..
    equb   0, &f3,   1,   0,   4,   1, &47, &4b, &32, &17,   7, &2d   ; 349c: 00 f3 01... ...
    equb &3e, &5a, &cb, &5a, &96, &87, &96, &96, &1e, &1e, &f0, &96   ; 34a8: 3e 5a cb... >Z.
    equb &69, &96, &1e, &4b, &1e, &69, &0f,   1, &87, &4b, &0f,   1   ; 34b4: 69 96 1e... i..
    equb &87, &87, &87, &4b, &0f,   1, &1e, &1e, &2d, &1e, &1e, &1e   ; 34c0: 87 87 87... ...
    equb &1e, &f0, &96, &69, &96, &1e, &4b, &1e, &69, &0f,   1, &87   ; 34cc: 1e f0 96... ...
    equb &87, &0f,   1, &87, &87, &87, &4b, &3e, &2d, &c4, &8e, &0e   ; 34d8: 87 0f 01... ...
    equb &4b, &c7, &a5,   0,   2,   8,   0,   4,   8,   0, &f0,   1   ; 34e4: 4b c7 a5... K..
    equb   1, &12, &13, &10,   4, &e1, &cb, &87, &87, &0f,   4, &2d   ; 34f0: 01 12 13... ...
    equb &3c, &3c, &3d, &3d, &3d, &3d, &3d, &f6, &ff,   2, &ee, &dc   ; 34fc: 3c 3c 3d... <<=
    equb &dc, &b8, &b9, &4b, &87, &87, &87, &87, &87, &96, &87, &2d   ; 3508: dc b8 b9... ...
    equb &3c, &3c, &3d, &3d, &3d, &b5, &79, &f6, &ff,   2, &ee, &dc   ; 3514: 3c 3c 3d... <<=
    equb &dc, &b8, &b9, &4b, &87, &87, &87, &87, &87, &87, &87, &78   ; 3520: dc b8 b9... ...
    equb &3d, &1e, &1e, &0f,   4,   8,   8, &84, &8c, &80, &80, &80   ; 352c: 3d 1e 1e... =..
    equb &80,   0, &f0, &21, &21, &21, &21, &21, &21, &21, &21, &0f   ; 3538: 80 00 f0... ...
    equb   8, &3d, &1e, &0f,   6, &b9, &b8, &e1, &0f,   5, &97, &0f   ; 3544: 08 3d 1e... .=.
    equb   2, &4b, &4b, &2d, &1e, &0f,   1, &79, &bc, &ad, &2d, &4b   ; 3550: 02 4b 4b... .KK
    equb &4b, &87, &0f,   1, &b9, &b8, &e1, &0f,   5, &87, &0f,   5   ; 355c: 4b 87 0f... K..
    equb &a5, &4b, &0f,   8, &48,   8,   0, &f0, &10,   3,   0,   5   ; 3568: a5 4b 0f... .K.
    equb &0f,   3, &87, &87, &43, &21, &10,   1, &0f,   7, &87, &4b   ; 3574: 0f 03 87... ...
    equb &c3, &4b, &a5, &1e, &0f,   7, &87, &78, &0f,   6, &3c, &c3   ; 3580: c3 4b a5... .K.
    equb &0f,   4, &1e, &69, &87, &0f,   3, &69, &87, &0f,   5, &1e   ; 358c: 0f 04 1e... ...
    equb &0f,   3, &1e, &1e, &2c, &48,   1, &80, &80, &80, &80,   0   ; 3598: 0f 03 1e... ...
    equb   0,   0,   5, &52, &30,   0,   6, &0f,   2, &87, &43, &21   ; 35a4: 00 00 05... ...
    equb &21, &10,   1,   0,   1, &0f,   7, &87, &0f,   7, &1e, &0f   ; 35b0: 21 10 01... !..
    equb   2, &1e, &2c, &48,   2, &80,   0,   1, &a4, &c0,   0, &33   ; 35bc: 02 1e 2c... ..,
    equb &11, &33, &77,   0,   4, &88, &cc, &ee, &ff,   1,   0, &d5   ; 35c8: 11 33 77... .3w
    equb &10,   2, &31,   0,   3, &70, &f6, &ff,   3,   0,   1, &10   ; 35d4: 10 02 31... ..1
    equb   1, &f1, &3d, &fc, &f6, &fe, &f7, &f0, &8f, &8f, &cb, &fc   ; 35e0: 01 f1 3d... ..=
    equb &ff,   2, &f3, &f0, &3d, &3d, &3d, &f3, &ff,   2, &fc,   0   ; 35ec: ff 02 f3... ...
    equb   1, &80, &c8, &e8, &fa, &f5, &f7, &9f,   0,   5, &80, &80   ; 35f8: 01 80 c8... ...
    equb &c8,   0, &1d, &11, &33, &77,   0,   1, &11, &33, &77, &ff   ; 3604: c8 00 1d... ...
    equb   1, &dd, &bb, &cc, &ff,   1, &55, &aa, &ff,   2, &55,   0   ; 3610: 01 dd bb... ...
    equb   1, &a0, &ee, &55, &bb, &ff,   2, &77, &55, &20, &88, &44   ; 361c: 01 a0 ee... ...
    equb &ee, &ff,   2, &ee, &bb, &e0,   0,   4, &88, &cc, &22, &73   ; 3628: ee ff 02... ...
    equb   0, &bb, &10,   2, &21, &73, &73, &43, &43, &87, &0f,   3   ; 3634: 00 bb 10... ...
    equb &8f, &cf, &ff,   2, &7e, &3d, &3c, &7a, &d4, &f6, &ff,   1   ; 3640: 8f cf ff... ...
    equb &87, &87, &87, &4b, &4b, &2d, &b5, &fc, &7f, &0f,   5, &ff   ; 364c: 87 87 87... ...
    equb   1, &e3, &8f, &0f,   4, &1f, &ff,   1, &1e, &1f, &1e, &0f   ; 3658: 01 e3 8f... ...
    equb   1, &3e, &6f, &fe, &ff,   1, &c8, &48,   1, &2c, &2c, &2c   ; 3664: 01 3e 6f... .>o
    equb &2c, &fe, &fe,   0, &18, &55, &44, &44, &44, &22, &11, &10   ; 3670: 2c fe fe... ,..
    equb   1, &31, &b8, &a8, &55, &33, &11,   0,   1, &b0, &f3,   0   ; 367c: 01 31 b8... .1.
    equb   1, &aa, &55, &ff,   2, &fe, &f5, &fb, &90, &31, &75, &fb   ; 3688: 01 aa 55... ..U
    equb &fb, &f3, &fd, &ff,   1, &fe, &fe, &fe, &fd, &ed, &ed, &cb   ; 3694: fb f3 fd... ...
    equb &da, &a3, &47, &8f, &1f, &78, &f6, &f6, &fe, &80, &c8, &c8   ; 36a0: da a3 47... ..G
    equb &c8, &80,   0, &aa, &10,   1,   0,   1, &10,   2, &21, &43   ; 36ac: c8 80 00... ...
    equb &43, &87, &0f,   1, &f7, &ff,   2, &3f, &1f, &1f, &1e, &1e   ; 36b8: 43 87 0f... C..
    equb &fe, &fe, &fd, &ec,   1, &fb, &c0, &72, &31, &dc, &b9,   0   ; 36c4: fe fe fd... ...
    equb   1, &fb, &32, &d5, &fe, &64, &96, &da, &cb, &40, &d8, &b1   ; 36d0: 01 fb 32... ..2
    equb &73, &f7, &ff,   2, &f5, &f4, &fb, &db, &c5, &b7, &ff,   3   ; 36dc: 73 f7 ff... s..
    equb &ef, &87, &cb, &ed, &be, &fe, &ff,   1, &9e, &1e, &1e, &1e   ; 36e8: ef 87 cb... ...
    equb &0e, &0e, &fe, &ff,   1, &ef, &8f, &0f,   2, &87, &87,   0   ; 36f4: 0e 0e fe... ...
    equb   1, &80, &80, &80, &48,   4,   0,   5, &10,   1, &31, &f3   ; 3700: 01 80 80... ...
    equb   0,   2, &10,   1, &21, &c3, &cf, &cf, &cf, &73, &72, &f6   ; 370c: 00 02 10... ...
    equb &f6, &f6, &f6, &f7, &7b, &f7, &ff,   4, &fd, &d0, &80, &fb   ; 3718: f6 f6 f6... ...
    equb &ff,   4, &fe, &e0,   0,   1, &ff,   1, &fe, &fd, &f9, &90   ; 3724: ff 04 fe... ...
    equb   0,   3, &f5, &fa, &ff,   3, &f0,   0,   2, &fe, &ec,   2   ; 3730: 00 03 f5... ...
    equb &c8, &80,   0, &ab, &10,   1, &31, &73, &73, &73, &f7, &f7   ; 373c: c8 80 00... ...
    equb &e7, &0f,   1, &cf, &ef, &ef, &fe, &fc, &ef, &0f,   1, &2c   ; 3748: e7 0f 01... ...
    equb &48,   2, &80,   0,   1, &10,   1, &b1, &7b, &31, &10,   1   ; 3754: 48 02 80... H..
    equb &31, &73, &e7, &df, &af, &ce, &d8, &a1, &c3, &cb, &29, &36   ; 3760: 31 73 e7... 1s.
    equb &5e, &fe, &1e, &1e, &2d, &3d, &6b, &ea, &c6, &e7, &9b, &af   ; 376c: 5e fe 1e... ^..
    equb &77, &3f, &df, &7f, &fc, &7b, &9f, &cf, &9d, &0d, &9b, &3e   ; 3778: 77 3f df... w?.
    equb &1a, &e5, &f6, &a6, &96, &96, &96, &3c, &3c, &7a, &97, &b7   ; 3784: 1a e5 f6... ...
    equb &73, &73, &73, &71, &31, &10,   1, &f8, &cb, &c7, &cf, &c7   ; 3790: 73 73 73... sss
    equb &ef, &ef, &f4, &3f, &1f, &1f, &1f, &1e, &2c, &c0,   0,   1   ; 379c: ef ef f4... ...
    equb &ef, &fe, &ec,   1, &c0,   0,   4, &78, &80,   0, &d6, &e7   ; 37a8: ef fe ec... ...
    equb &43, &43, &21, &31, &10,   1,   0,   2, &0f,   3, &3f, &ff   ; 37b4: 43 43 21... CC!
    equb   2, &f7, &73, &2d, &7e, &fe, &ff,   2, &ef, &cf, &8f, &9b   ; 37c0: 02 f7 73... ..s
    equb &8d, &3b, &d6, &79, &6a, &3c, &3d, &bc, &fa, &f7, &bb, &55   ; 37cc: 8d 3b d6... .;.
    equb &e2, &ec,   1, &fa, &df, &8d, &d6, &fa, &fd, &fd, &f3, &ff   ; 37d8: e2 ec 01... ...
    equb   1, &f7, &f6, &fe, &fd, &fd, &fa, &fa, &e1, &e5, &cb, &cb   ; 37e4: 01 f7 f6... ...
    equb &96, &96, &3c, &3d, &79, &5a, &96, &96, &1e, &d2, &fc, &fc   ; 37f0: 96 96 3c... ..<
    equb &fc,   0,   8, &c0,   0, &f7, &31, &10,   1,   0,   6, &0f   ; 37fc: fc 00 08... ...
    equb   2, &87, &52, &30, &31, &31, &31, &7b, &f7, &f6, &fe, &fd   ; 3808: 02 87 52... ..R
    equb &fd, &fb, &fb, &fb, &f7, &ff, &0e, &ed, &fe, &fe, &ff,   5   ; 3814: fd fb fb... ...
    equb &7b, &f7, &ff,   3, &fe, &fc, &f9, &fa, &fa, &da, &96, &b5   ; 3820: 7b f7 ff... {..
    equb &f3, &ff,   2,   0,   4, &80, &80, &80, &80,   0,   0, &31   ; 382c: f3 ff 02... ...
    equb &31, &31, &10,   1,   0,   4, &fb, &fb, &fb, &b0, &31, &31   ; 3838: 31 31 10... 11.
    equb &31, &31, &ff,   4, &f7, &fb, &fd, &fe, &ff,   4, &fd, &fe   ; 3844: 31 31 ff... 11.
    equb &ff,   2, &f6, &f9, &ff,   3, &f0, &ff,   2, &f5, &fd, &fd   ; 3850: ff 02 f6... ...
    equb &fb, &f7, &f7, &f7, &f7, &ff,   2, &fe, &fe, &fe, &fe, &fe   ; 385c: fb f7 f7... ...
    equb &fe, &80, &80,   0,   0,   0, &0e, &31, &31, &31, &31, &31   ; 3868: fe 80 80... ...
    equb &10,   3, &ff,   8, &f7, &f9, &fe, &ff,   1, &fe, &fe, &fe   ; 3874: 10 03 ff... ...
    equb &ec,   1, &fe, &fd, &f3, &b1, &10,   2,   0,   2, &ff,   6   ; 3880: ec 01 fe... ...
    equb &f7, &f7, &ec,   8,   0,   0,   0, &10, &10,   8, &ff,   8   ; 388c: f7 f7 ec... ...
    equb &ec,   8,   0,   8, &f7, &f7, &f7, &f7, &f7, &f7, &f7, &f7   ; 3898: ec 08 00... ...
    equb &ec,   6, &e4, &ec,   1,   0,   0,   0, &10, &10,   8, &ff   ; 38a4: ec 06 e4... ...
    equb   8, &ec,   8,   0,   8, &f7, &f7, &f7, &f7, &f7, &f7, &f7   ; 38b0: 08 ec 08... ...
    equb &f7, &ec,   8,   0,   0,   0, &10, &10,   8, &ff,   8, &ec   ; 38bc: f7 ec 08... ...
    equb   7, &fe,   0,   4, &10,   4, &f7, &f7, &f7, &f7, &ff,   4   ; 38c8: 07 fe 00... ...
    equb &ec,   4, &fe, &fe, &fe, &ec,   1,   0,   0,   0, &0e, &10   ; 38d4: ec 04 fe... ...
    equb   1, &31, &31, &31, &31, &31, &12, &f1, &fd, &f2, &ff,   5   ; 38e0: 01 31 31... .11
    equb &f0, &ff,   1, &f8, &fe, &fe, &fe, &fe, &ec,   1, &d2, &da   ; 38ec: f0 ff 01... ...
    equb &87,   0,   4, &10,   3, &90, &f7, &70, &f3, &b4, &0f,   1   ; 38f8: 87 00 04... ...
    equb &2d, &4b, &4b, &fc, &f3, &f4, &f5, &f5, &f5, &f6, &f6, &d0   ; 3904: 2d 4b 4b... -KK
    equb &ff,   1, &f5, &f2, &e5, &f0, &f5, &f5,   0,   1, &80, &88   ; 3910: ff 01 f5... ...
    equb   0,   1, &c0, &f8, &f5, &f2,   0,   5, &80, &f0, &7a,   0   ; 391c: 00 01 c0... ...
    equb   7, &80,   0, &dc, &11, &12, &61, &f6,   0,   2, &61, &f2   ; 3928: 07 80 00... ...
    equb &fc, &f4, &f4, &7a, &72, &f3, &f5, &f5, &da, &da, &cb, &f0   ; 3934: fc f4 f4... ...
    equb &7a, &f2, &b5, &f9, &da, &f2, &f2, &7b, &e5, &e5, &e5, &cb   ; 3940: 7a f2 b5... z..
    equb &cb, &87, &0f,   1, &2d, &0f,   1, &2d, &1e, &1e, &1e, &2d   ; 394c: cb 87 0f... ...
    equb &0f,   2, &a1, &a1, &a1, &69, &78, &79, &58, &c0, &87, &87   ; 3958: 0f 02 a1... ...
    equb &4b, &0f,   2, &c3, &fc, &f3, &69, &0f,   4, &4b, &d3, &fc   ; 3964: 4b 0f 02... K..
    equb &7a, &7a, &e5, &e5, &69, &ed, &db, &f3, &f5, &f4, &e5, &e5   ; 3970: 7a 7a e5... zz.
    equb &69, &ed, &db, &b7, &e5, &e5, &e5, &e5, &e5, &c3, &da, &96   ; 397c: 69 ed db... i..
    equb &c0, &78, &f3, &f4, &f6, &f4, &fe, &e8,   0, &d8, &f2, &f6   ; 3988: c0 78 f3... .x.
    equb &f2, &f6, &f1, &f7, &70, &73, &7a, &78, &79, &79, &96, &96   ; 3994: f2 f6 f1... ...
    equb &f9, &fa, &7b, &3d, &96, &96, &f8, &f3, &fc, &c0, &b5, &b5   ; 39a0: f9 fa 7b... ..{
    equb &da, &f8, &f7, &f8, &80,   0,   1, &1e, &1e, &f1, &fe, &e0   ; 39ac: da f8 f7... ...
    equb   0,   3, &3c, &f3, &fc, &c0,   0,   4, &c8, &80,   0,   6   ; 39b8: 00 03 3c... ..<
    equb &30,   0,   7, &f3, &30,   0,   6, &fc, &f3, &31, &10,   1   ; 39c4: 30 00 07... 0..
    equb   0,   4, &7e, &f0, &ff,   1, &f0,   0,   4, &3d, &f3, &fe   ; 39d0: 00 04 7e... ..~
    equb &f0,   0,   4, &ec,   1, &c0, &80,   0,   0,   0,   0,   0   ; 39dc: f0 00 04... ...
    equb   0,   0,   0,   0,   0,   0, &9d, &50,   0, &fd, &39, &4f   ; 39e8: 00 00 00... ...
    equb &42, &4f, &4e,   0, &8e, &38, &50,   0,   0, &12, &3a, &4f   ; 39f4: 42 4f 4e... BON

.show_menu
    jsr draw_big_rockford                                             ; 3a00: 20 b5 2a     .*
    jsr reset_tune                                                    ; 3a03: 20 00 57     .W
    jsr reset_clock                                                   ; 3a06: 20 4d 2a     M*
    ; show last score line
    jsr reset_grid_of_sprites                                         ; 3a09: 20 92 22     ."
    lda #<highscore_last_status_bar                                   ; 3a0c: a9 dc       ..
    sta status_text_address_low                                       ; 3a0e: 85 69       .i
    lda #>screen_addr_row_28                                          ; 3a10: a9 7b       .{
    ldy #<screen_addr_row_28                                          ; 3a12: a0 00       ..
    jsr draw_single_row_of_sprites                                    ; 3a14: 20 29 23     )#
    ; show highscore line
    jsr reset_grid_of_sprites                                         ; 3a17: 20 92 22     ."
    lda #<highscore_high_status_bar                                   ; 3a1a: a9 50       .P
    sta status_text_address_low                                       ; 3a1c: 85 69       .i
    lda #>screen_addr_row_30                                          ; 3a1e: a9 7d       .}
    ldy #<screen_addr_row_30                                          ; 3a20: a0 80       ..
    jsr draw_single_row_of_sprites                                    ; 3a22: 20 29 23     )#
; store cave letter and difficulty level number
    jsr reset_grid_of_sprites                                         ; 3a25: 20 92 22     ."
    ldx #0                                                            ; 3a28: a2 00       ..
    ldy #1                                                            ; 3a2a: a0 01       ..
.handle_menu_loop
    lda #0                                                            ; 3a2c: a9 00       ..
    sta map_rockford_end_position_addr_low                            ; 3a2e: 85 6a       .j
    stx cave_number                                                   ; 3a30: 86 87       ..
    sty difficulty_level                                              ; 3a32: 84 89       ..
    txa                                                               ; 3a34: 8a          .
    clc                                                               ; 3a35: 18          .
    adc #'A'                                                          ; 3a36: 69 41       iA
    sta cave_letter                                                   ; 3a38: 8d 89 32    ..2
    tya                                                               ; 3a3b: 98          .
    clc                                                               ; 3a3c: 18          .
    adc #sprite_0                                                     ; 3a3d: 69 32       i2
    sta number_of_players_status_bar_difficulty_level                 ; 3a3f: 8d 8b 32    ..2
    jsr set_palette                                                   ; 3a42: 20 ac 29     .)
.waiting_for_demo_loop
    lda #<number_of_players_status_bar                                ; 3a45: a9 78       .x
    sta status_text_address_low                                       ; 3a47: 85 69       .i
    jsr draw_status_bar                                               ; 3a49: 20 25 23     %#
    jsr update_tune                                                   ; 3a4c: 20 13 57     .W
    lda #9                                                            ; 3a4f: a9 09       ..
    jsr wait_for_a_centiseconds_and_read_keys                         ; 3a51: 20 92 2b     .+
    jsr update_tune                                                   ; 3a54: 20 13 57     .W
    lda #5                                                            ; 3a57: a9 05       ..
    jsr wait_for_a_centiseconds_and_read_keys                         ; 3a59: 20 92 2b     .+
    ldx cave_number                                                   ; 3a5c: a6 87       ..
    ldy difficulty_level                                              ; 3a5e: a4 89       ..
    lda #opcode_inx                                                   ; 3a60: a9 e8       ..
    sta self_modify_move_left_or_right                                ; 3a62: 8d 9e 3a    ..:
    lda keys_to_process                                               ; 3a65: a5 62       .b
    asl a                                                             ; 3a67: 0a          .
    bcs self_modify_move_left_or_right                                ; 3a68: b0 34       .4
    asl a                                                             ; 3a6a: 0a          .
    bcs move_left_to_change_cave                                      ; 3a6b: b0 2c       .,
    asl a                                                             ; 3a6d: 0a          .
    bcs increase_difficulty_level                                     ; 3a6e: b0 3f       .?
    asl a                                                             ; 3a70: 0a          .
    bcs decrease_difficulty_level                                     ; 3a71: b0 44       .D
    asl a                                                             ; 3a73: 0a          .
    bcs toggle_one_or_two_players                                     ; 3a74: b0 48       .H
    asl a                                                             ; 3a76: 0a          .
    bcs return15                                                      ; 3a77: b0 68       .h
    asl a                                                             ; 3a79: 0a          .
    bcs show_rockford_again_and_play_game                             ; 3a7a: b0 55       .U
    dec map_rockford_end_position_addr_low                            ; 3a7c: c6 6a       .j
    bne waiting_for_demo_loop                                         ; 3a7e: d0 c5       ..

    ; demo mode
    ldx #5                                                            ; 3a80: a2 05       ..
    lda #sprite_0                                                     ; 3a82: a9 32       .2
.zero_score_on_status_bar_loop
    sta score_on_status_bar,x                                         ; 3a84: 9d 0e 32    ..2
    dex                                                               ; 3a87: ca          .
    bpl zero_score_on_status_bar_loop                                 ; 3a88: 10 fa       ..
    ldx #0                                                            ; 3a8a: a2 00       ..
    stx cave_number                                                   ; 3a8c: 86 87       ..
    stx demo_mode_tick_count                                          ; 3a8e: 86 65       .e
    inx                                                               ; 3a90: e8          .
    stx difficulty_level                                              ; 3a91: 86 89       ..
    jsr sub_c2e00                                                     ; 3a93: 20 00 2e     ..
    jmp show_menu                                                     ; 3a96: 4c 00 3a    L.:

.move_left_to_change_cave
    lda #opcode_dex                                                   ; 3a99: a9 ca       ..
    sta self_modify_move_left_or_right                                ; 3a9b: 8d 9e 3a    ..:
.self_modify_move_left_or_right
    inx                                                               ; 3a9e: e8          .
    txa                                                               ; 3a9f: 8a          .
    and #&0f                                                          ; 3aa0: 29 0f       ).
    tax                                                               ; 3aa2: aa          .
.store_new_difficulty_level_selected
    sty difficulty_level                                              ; 3aa3: 84 89       ..
    lda number_of_difficuly_levels_available_in_menu_for_each_cave,x  ; 3aa5: bd 68 4c    .hL
    cmp difficulty_level                                              ; 3aa8: c5 89       ..
    bcc self_modify_move_left_or_right                                ; 3aaa: 90 f2       ..
    jmp handle_menu_loop                                              ; 3aac: 4c 2c 3a    L,:

.increase_difficulty_level
    iny                                                               ; 3aaf: c8          .
    cpy #6                                                            ; 3ab0: c0 06       ..
    bne store_new_difficulty_level_selected                           ; 3ab2: d0 ef       ..
    dey                                                               ; 3ab4: 88          .
    bne store_new_difficulty_level_selected                           ; 3ab5: d0 ec       ..
.decrease_difficulty_level
    dey                                                               ; 3ab7: 88          .
    bne dont_go_below_one                                             ; 3ab8: d0 01       ..
    iny                                                               ; 3aba: c8          .
.dont_go_below_one
    jmp handle_menu_loop                                              ; 3abb: 4c 2c 3a    L,:

.toggle_one_or_two_players
    lda number_of_players_status_bar                                  ; 3abe: ad 78 32    .x2
    eor #7                                                            ; 3ac1: 49 07       I.
    sta number_of_players_status_bar                                  ; 3ac3: 8d 78 32    .x2
    lda plural_for_player                                             ; 3ac6: ad 80 32    ..2
    eor #'S'                                                          ; 3ac9: 49 53       IS
    sta plural_for_player                                             ; 3acb: 8d 80 32    ..2
    jmp handle_menu_loop                                              ; 3ace: 4c 2c 3a    L,:

.show_rockford_again_and_play_game
    jsr draw_big_rockford                                             ; 3ad1: 20 b5 2a     .*
    jsr reset_grid_of_sprites                                         ; 3ad4: 20 92 22     ."
    lda #&ff                                                          ; 3ad7: a9 ff       ..
    sta demo_mode_tick_count                                          ; 3ad9: 85 65       .e
    jsr play_game                                                     ; 3adb: 20 00 3b     .;
    jmp show_menu                                                     ; 3ade: 4c 00 3a    L.:

.return15
    rts                                                               ; 3ae1: 60          `

.unused43
    equb &65, &20,   0, &3b, &4c,   0, &3a, &60, &ff, &ff, &ff, &ff   ; 3ae2: 65 20 00... e .
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 3aee: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff                                 ; 3afa: ff ff ff... ...

.play_game
    ldx #&13                                                          ; 3b00: a2 13       ..
.loop_c3b02
    lda default_status_bar,x                                          ; 3b02: bd 68 50    .hP
    sta players_and_men_status_bar,x                                  ; 3b05: 9d 14 32    ..2
    sta l323c,x                                                       ; 3b08: 9d 3c 32    .<2
    dex                                                               ; 3b0b: ca          .
    bpl loop_c3b02                                                    ; 3b0c: 10 f4       ..
    lda #sprite_2                                                     ; 3b0e: a9 34       .4
    sta l3243                                                         ; 3b10: 8d 43 32    .C2
    cmp number_of_players_status_bar                                  ; 3b13: cd 78 32    .x2
    beq c3b1d                                                         ; 3b16: f0 05       ..
    lda #sprite_0                                                     ; 3b18: a9 32       .2
    sta l3246                                                         ; 3b1a: 8d 46 32    .F2
.c3b1d
    lda cave_letter                                                   ; 3b1d: ad 89 32    ..2
    sta cave_letter_on_status_bar                                     ; 3b20: 8d 25 32    .%2
    sta l324d                                                         ; 3b23: 8d 4d 32    .M2
    ldx number_of_players_status_bar_difficulty_level                 ; 3b26: ae 8b 32    ..2
    stx difficulty_level_on_status_bar                                ; 3b29: 8e 27 32    .'2
    stx l324f                                                         ; 3b2c: 8e 4f 32    .O2
    jsr sub_c3bc1                                                     ; 3b2f: 20 c1 3b     .;
    lda #sprite_0                                                     ; 3b32: a9 32       .2
    ldx #5                                                            ; 3b34: a2 05       ..
.loop_c3b36
    sta score_on_status_bar,x                                         ; 3b36: 9d 0e 32    ..2
    sta l3236,x                                                       ; 3b39: 9d 36 32    .62
    dex                                                               ; 3b3c: ca          .
    bpl loop_c3b36                                                    ; 3b3d: 10 f7       ..
.c3b3f
    ldx cave_number                                                   ; 3b3f: a6 87       ..
    lda difficulty_level                                              ; 3b41: a5 89       ..
    cmp number_of_difficuly_levels_available_in_menu_for_each_cave,x  ; 3b43: dd 68 4c    .hL
    bmi skip_adding_new_difficulty_level_to_menu                      ; 3b46: 30 03       0.
    ; add new difficulty level to menu
    sta number_of_difficuly_levels_available_in_menu_for_each_cave,x  ; 3b48: 9d 68 4c    .hL
.skip_adding_new_difficulty_level_to_menu
    jsr sub_c2e00                                                     ; 3b4b: 20 00 2e     ..
    ldy #5                                                            ; 3b4e: a0 05       ..
    lda player_number_on_status_bar                                   ; 3b50: ad 1b 32    ..2
    lsr a                                                             ; 3b53: 4a          J
    bcs c3b58                                                         ; 3b54: b0 02       ..
    ldy #&13                                                          ; 3b56: a0 13       ..
.c3b58
    ldx #5                                                            ; 3b58: a2 05       ..
.loop_c3b5a
    lda score_on_status_bar,x                                         ; 3b5a: bd 0e 32    ..2
    sta highscore_last_status_bar,y                                   ; 3b5d: 99 dc 32    ..2
    dey                                                               ; 3b60: 88          .
    dex                                                               ; 3b61: ca          .
    bpl loop_c3b5a                                                    ; 3b62: 10 f6       ..
    lda neighbour_cell_contents                                       ; 3b64: a5 64       .d
    cmp #8                                                            ; 3b66: c9 08       ..
    beq c3ba1                                                         ; 3b68: f0 37       .7
    lda cave_number                                                   ; 3b6a: a5 87       ..
    cmp #&10                                                          ; 3b6c: c9 10       ..
    bpl c3ba1                                                         ; 3b6e: 10 31       .1
    lda #sprite_0                                                     ; 3b70: a9 32       .2
    cmp men_number_on_status_bar                                      ; 3b72: cd 1e 32    ..2
    bne c3b7c                                                         ; 3b75: d0 05       ..
    cmp l3246                                                         ; 3b77: cd 46 32    .F2
    beq return16                                                      ; 3b7a: f0 50       .P
.c3b7c
    ldx #&27                                                          ; 3b7c: a2 27       .'
.loop_c3b7e
    lda tile_map,x                                                    ; 3b7e: bd 00 32    ..2
    ldy l3228,x                                                       ; 3b81: bc 28 32    .(2
    sta l3228,x                                                       ; 3b84: 9d 28 32    .(2
    tya                                                               ; 3b87: 98          .
    sta tile_map,x                                                    ; 3b88: 9d 00 32    ..2
    dex                                                               ; 3b8b: ca          .
    bpl loop_c3b7e                                                    ; 3b8c: 10 f0       ..
    lda men_number_on_status_bar                                      ; 3b8e: ad 1e 32    ..2
    cmp #sprite_0                                                     ; 3b91: c9 32       .2
    beq c3b7c                                                         ; 3b93: f0 e7       ..
    lda cave_letter_on_status_bar                                     ; 3b95: ad 25 32    .%2
    ldx difficulty_level_on_status_bar                                ; 3b98: ae 27 32    .'2
    jsr sub_c3bc1                                                     ; 3b9b: 20 c1 3b     .;
    jmp c3b3f                                                         ; 3b9e: 4c 3f 3b    L?;

.c3ba1
    ldx cave_number                                                   ; 3ba1: a6 87       ..
    ldy difficulty_level                                              ; 3ba3: a4 89       ..
    lda cave_play_order,x                                             ; 3ba5: bd 40 4c    .@L
    sta cave_number                                                   ; 3ba8: 85 87       ..
    bne c3bb3                                                         ; 3baa: d0 07       ..
    iny                                                               ; 3bac: c8          .
    cpy #6                                                            ; 3bad: c0 06       ..
    bne c3bb3                                                         ; 3baf: d0 02       ..
    ldy #1                                                            ; 3bb1: a0 01       ..
.c3bb3
    sty difficulty_level                                              ; 3bb3: 84 89       ..
    sta cave_number                                                   ; 3bb5: 85 87       ..
    cmp #&10                                                          ; 3bb7: c9 10       ..
    bmi c3b3f                                                         ; 3bb9: 30 84       0.
    inc men_number_on_status_bar                                      ; 3bbb: ee 1e 32    ..2
    jmp c3b3f                                                         ; 3bbe: 4c 3f 3b    L?;

.sub_c3bc1
    sec                                                               ; 3bc1: 38          8
    sbc #'A'                                                          ; 3bc2: e9 41       .A
    sta cave_number                                                   ; 3bc4: 85 87       ..
    txa                                                               ; 3bc6: 8a          .
    sec                                                               ; 3bc7: 38          8
    sbc #sprite_0                                                     ; 3bc8: e9 32       .2
    sta difficulty_level                                              ; 3bca: 85 89       ..
.return16
    rts                                                               ; 3bcc: 60          `

.unused44
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 3bcd: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 3bd9: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 3be5: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &be   ; 3bf1: ff ff ff... ...
    equb   0,   0,   0, &0d,   5, &15,   5, &17, &48, &15, &10, &1e   ; 3bfd: 00 00 00... ...
    equb   8, &58, &1e, &c0, &20,   0, &28, &38, &c0, &80             ; 3c09: 08 58 1e... .X.
    equs "g8(h"                                                       ; 3c13: 67 38 28... g8(
    equb &98, &28, &48, &a8                                           ; 3c17: 98 28 48... .(H
    equs "H`7Pp"                                                      ; 3c1b: 48 60 37... H`7
    equb &98, &70, &f9, &20, &f9, &f9,   6                            ; 3c20: 98 70 f9... .p.
    equs "=nP"                                                        ; 3c27: 3d 6e 50    =nP
    equb &18                                                          ; 3c2a: 18          .
    equs "X_`"                                                        ; 3c2b: 58 5f 60    X_`
    equb &16                                                          ; 3c2e: 16          .
    equs "`hPh"                                                       ; 3c2f: 60 68 50... `hP
    equb &80                                                          ; 3c33: 80          .
    equs "8h~F"                                                       ; 3c34: 38 68 7e... 8h~
    equb &18, &10, &40, &68, &80                                      ; 3c38: 18 10 40... ..@
    equs "(@gn"                                                       ; 3c3d: 28 40 67... (@g
    equb &1f, &70, &98, &70,   3,   8,   8, &f9, &a7, &17, &20, &80   ; 3c41: 1f 70 98... .p.
    equb   5, &f9, &86, &0f, &1d,   7, &f9, &27, &0f, &f9, &37, &f9   ; 3c4d: 05 f9 86... ...
    equb   7,   6, &f9, &f9, &be, &f9, &f9, &77, &f9, &f9, &f9, &bf   ; 3c59: 07 06 f9... ...
    equb &f9, &6f, &8d                                                ; 3c65: f9 6f 8d    .o.
    equs "`?M"                                                        ; 3c68: 60 3f 4d    `?M
    equb &ef, &58, &5e, &d0,   3, &15, &f9, &f9, &95,   5, &f9, &70   ; 3c6b: ef 58 5e... .X^
    equb   5,   5, &f9, &28,   0,   0, &15, &2f, &0f, &f9, &f9, &f9   ; 3c77: 05 05 f9... ...
    equb &57, &1f,   7, &0d, &0f,   7, &f9, &f9, &4f, &f9, &27, &f9   ; 3c83: 57 1f 07... W..
    equb &68, &f9, &f9,   6, &17,   7, &5f, &f9, &88, &ef, &56,   3   ; 3c8f: 68 f9 f9... h..
    equb &38, &f9, &f9, &b7, &f9, &2f, &1f, &f9, &2f, &f9, &f9, &f9   ; 3c9b: 38 f9 f9... 8..
    equb &f9, &f9, &f9, &f9, &6f, &10, &27, &36, &c7,   8, &f9, &f9   ; 3ca7: f9 f9 f9... ...
    equb &f9, &f9, &f9, &f9, &10,   0, &50, &98, &a0, &98, &98,   3   ; 3cb3: f9 f9 f9... ...
    equb &f9, &f9, &f9, &2e, &f9, &f9, &f9, &f9, &f9, &f9, &f9, &f9   ; 3cbf: f9 f9 f9... ...
    equb &f9, &f9, &f9, &f9, &f9, &4e, &ae, &f9, &f9, &f9, &f9, &f9   ; 3ccb: f9 f9 f9... ...
    equb &0e, &4e,   3, &0f, &27,   5, &0f, &0f, &f9, &8f, &f9, &37   ; 3cd7: 0e 4e 03... .N.
    equb &f9, &f9, &78, &f9, &1f, &56, &ad, &37, &f9, &f9, &48,   5   ; 3ce3: f9 f9 78... ..x
    equb &f9, &f9, &f9, &f9,   7, &f9, &f9, &f9, &f9, &c8, &f9, &36   ; 3cef: f9 f9 f9... ...
    equb &ae, &f9, &b6,   3, &28, &57, &10, &47, &88, &0f, &3f, &57   ; 3cfb: ae f9 b6... ...
    equb &98, &16, &f9, &f9, &f9, &f9, &76, &f9, &58, &f9, &f6, &f9   ; 3d07: 98 16 f9... ...
    equb &77, &0f, &f9, &18, &f9, &38, &20, &f9, &20, &f9, &f9, &f9   ; 3d13: 77 0f f9... w..
    equb &f9, &c8, &f9, &30, &f9, &28,   0,   7, &ce, &ae,   3, &98   ; 3d1f: f9 c8 f9... ...
    equb &f9, &38, &f9, &50, &f9, &f9, &f9, &f9, &30, &f9, &20, &10   ; 3d2b: f9 38 f9... .8.
    equb &f9, &ee, &17,   7, &f9, &38, &a8, &f9, &46, &f9, &b0, &f9   ; 3d37: f9 ee 17... ...
    equb &17, &20, &27, &f9, &f9, &f9, &30, &47, &87                  ; 3d43: 17 20 27... . '
    equs "@m0"                                                        ; 3d4c: 40 6d 30    @m0
    equb &f9, &18, &18, &10, &87,   8,   8,   0, &77,   8,   3, &f9   ; 3d4f: f9 18 18... ...
    equb &d0, &f9,   8,   0, &f9, &88, &48,   0, &e0, &f9, &40, &f9   ; 3d5b: d0 f9 08... ...
    equb &70, &b0, &77, &d8, &58, &10, &fd, &f9, &f9, &f9, &80, &17   ; 3d67: 70 b0 77... p.w
    equb   8,   0, &f9, &17,   7, &1f, &f9, &18, &f9, &38, &f9, &78   ; 3d73: 08 00 f9... ...
    equb &f9, &36, &ae, &5f, &1e, &f9, &30, &10,   3, &f9, &f9, &f9   ; 3d7f: f9 36 ae... .6.
    equb &30, &f9, &30, &f9, &f9, &90,   0, &f9, &f9                  ; 3d8b: 30 f9 30... 0.0
    equs "0nfXH"                                                      ; 3d94: 30 6e 66... 0nf
    equb   8, &10                                                     ; 3d99: 08 10       ..
    equs "hm0"                                                        ; 3d9b: 68 6d 30    hm0
    equb &f9, &0f, &f9                                                ; 3d9e: f9 0f f9    ...
    equs "?fP"                                                        ; 3da1: 3f 66 50    ?fP
    equb &f9, &3e, &e0, &f9, &f9, &f9, &f9, &68,   3,   8,   8,   0   ; 3da4: f9 3e e0... .>.
    equb   7, &17, &80,   0, &f9, &c0, &36,   8, &f9                  ; 3db0: 07 17 80... ...
    equs "((H"                                                        ; 3db9: 28 28 48    ((H
    equb &f9, &38, &f9, &60, &f9, &70, &f9, &f9, &f9, &38, &f9, &f9   ; 3dbc: f9 38 f9... .8.
    equb &40, &fe                                                     ; 3dc8: 40 fe       @.
    equs "8n~"                                                        ; 3dca: 38 6e 7e    8n~
    equb &17, &f9, &47, &70,   0, &a7, &0f, &70, &8f, &80, &38, &26   ; 3dcd: 17 f9 47... ..G
    equb &d7,   7, &b6, &68, &17,   8                                 ; 3dd9: d7 07 b6... ...
    equs "x^E"                                                        ; 3ddf: 78 5e 45    x^E
    equb 7, 3                                                         ; 3de2: 07 03       ..
    equs "255:LDX #251:LDA #128"                                      ; 3de4: 32 35 35... 255
    equb &0d,   1, &e0                                                ; 3df9: 0d 01 e0    ...
    equs '"', " JS"                                                   ; 3dfc: 22 20 4a... " J
    equb &0c, &10, &4d, &37, &9f, &f9                                 ; 3e00: 0c 10 4d... ..M
    equs "%8MHX"                                                      ; 3e06: 25 38 4d... %8M
    equb &f9, &30, &98, &14, &10, &5f, &9f, &28, &47,   5,   4, &5f   ; 3e0b: f9 30 98... .0.
    equb   8, &47, &28, &0f, &5d, &0f                                 ; 3e17: 08 47 28... .G(
    equs "xw-"                                                        ; 3e1d: 78 77 2d    xw-
    equb &95, &50, &f9, &88,   5, &f9, &f9,   8                       ; 3e20: 95 50 f9... .P.
    equs "/LH?"                                                       ; 3e28: 2f 4c 48... /LH
    equb &0f, &0d,   7, &20, &50, &f9, &30, &68, &f9, &f9, &68, &20   ; 3e2c: 0f 0d 07... ...
    equb &10, &68, &98, &90, &20, &5f, &18,   8, &f9, &38,   3, &f9   ; 3e38: 10 68 98... .h.
    equb &57, &90, &f9, &f9, &f9, &38, &78, &f9, &38, &f9,   8, &38   ; 3e44: 57 90 f9... W..
    equb &f8, &40, &18, &f9, &68, &a8, &f8, &98, &f9, &f9, &f9, &f9   ; 3e50: f8 40 18... .@.
    equb &70,   0, &f9, &c0, &40, &c8, &e0, &f9, &30, &68, &f0, &70   ; 3e5c: 70 00 f9... p..
    equb   3, &3d, &a5                                                ; 3e68: 03 3d a5    .=.
    equs "EEu"                                                        ; 3e6b: 45 45 75    EEu
    equb &dd, &15, &e5, &f9, &d5, &ad, &ad                            ; 3e6e: dd 15 e5... ...
    equs "ME-]"                                                       ; 3e75: 4d 45 2d... ME-
    equb &15                                                          ; 3e79: 15          .
    equs "mE5"                                                        ; 3e7a: 6d 45 35    mE5
    equb &ad, &8d, &f9, &3d, &ad, &f9, &7d, &f5, &45, &2d, &f9, &25   ; 3e7d: ad 8d f9... ...
    equb &5d, &95, &6d, &3d, &b5, &75, &f9, &5d, &4d, &f9, &45, &15   ; 3e89: 5d 95 6d... ].m
    equb &45, &35, &0d,   5, &95, &8d, &0d,   5, &4d, &15, &0d, &cb   ; 3e95: 45 35 0d... E5.
    equs "EME-"                                                       ; 3ea1: 45 4d 45... EME
    equb &f9, &25, &5d, &95,   5, &65, &3d, &b5, &75, &ad, &ad, &4d   ; 3ea5: f9 25 5d... .%]
    equb &f9, &45, &15, &45, &35, &0d,   5, &f9, &35,   5, &75, &c5   ; 3eb1: f9 45 15... .E.
    equb &85, &f9, &f9                                                ; 3ebd: 85 f9 f9    ...
    equs "-%-E"                                                       ; 3ec0: 2d 25 2d... -%-
    equb &15, &15, &5d, &f9, &b5,   5, &75, &35, &b5, &f9, &f9, &25   ; 3ec4: 15 15 5d... ..]
    equb &bd, &85, &5d, &3d, &15, &8d, &95, &15, &65,   3, &15, &2d   ; 3ed0: bd 85 5d... ..]
    equb &f9, &4d, &15, &e5, &f9, &d5, &ad, &ad                       ; 3edc: f9 4d 15... .M.
    equs "Muu"                                                        ; 3ee4: 4d 75 75    Muu
    equb &b5, &35, &0d, &9d, &8d, &65, &15, &bd, &f9, &f9, &a5        ; 3ee7: b5 35 0d... .5.
    equs "M-E"                                                        ; 3ef2: 4d 2d 45    M-E
    equb &15, &15, &5d, &f9, &25, &8d, &b5, &f9, &2d, &ad,   5,   5   ; 3ef5: 15 15 5d... ..]
    equb &15,   5,   5, &0d, &15, &9d, &3d, &15, &0d, &1d,   5, &0d   ; 3f01: 15 05 05... ...
    equb &a5, &35,   5,   5, &15,   5, &15,   5,   5,   5, &ad, &2d   ; 3f0d: a5 35 05... .5.
    equb &15, &0d, &1d, &0d,   5, &85, &55,   5,   5, &15,   5,   5   ; 3f19: 15 0d 1d... ...
    equb &0d, &15, &0d,   3, &bd, &15, &45, &3d, &0d, &f9, &35, &45   ; 3f25: 0d 15 0d... ...
    equb &f9, &3d, &2d, &f9, &25, &5d, &95,   5, &65, &3d, &b5, &75   ; 3f31: f9 3d 2d... .=-
    equb &f9, &5d, &4d, &f9, &45, &15, &7d, &0d, &9d, &8d, &0d, &6d   ; 3f3d: f9 5d 4d... .]M
    equb &bd, &15, &85, &f9, &f9                                      ; 3f49: bd 15 85... ...
    equs "-%-E"                                                       ; 3f4e: 2d 25 2d... -%-
    equb &15, &15, &5d, &f9, &25, &8d,   5, &6d, &3d, &b5, &75,   3   ; 3f52: 15 15 5d... ..]
    equb &25, &5d, &15, &6d, &f9, &f9, &25, &d5, &15, &45, &3d, &0d   ; 3f5e: 25 5d 15... %].
    equb &8d, &75, &f9, &6d, &75, &e5, &3d, &15, &f9, &f9, &bd, &f9   ; 3f6a: 8d 75 f9... .u.
    equb &f9                                                          ; 3f76: f9          .
    equs "%um}"                                                       ; 3f77: 25 75 6d... %um
    equb &0d, &9d, &8d, &0d, &55, &d5, &15, &85, &0d, &3d, &f5, &45   ; 3f7b: 0d 9d 8d... ...
    equb &f9, &6d, &5d, &f9, &25, &95,   5, &65, &3d, &b5,   3, &f9   ; 3f87: f9 6d 5d... .m]
    equb &60, &50, &e8, &98, &88, &10, &50, &f9, &10,   0, &c0, &f9   ; 3f93: 60 50 e8... `P.
    equb &f9, &58, &0e, &e8, &28, &18,   8, &f9, &68,   0, &c0,   5   ; 3f9f: f9 58 0e... .X.
    equb &60, &70,   8, &a0, &28, &68, &98, &28, &f9,   0, &a8, &37   ; 3fab: 60 70 08... `p.
    equb &c8, &f8,   8,   0, &c0, &f9, &2d, &f9                       ; 3fb7: c8 f8 08... ...
    equs "6=oP"                                                       ; 3fbf: 36 3d 6f... 6=o
    equb   0, &10, &24, &50, &be,   3, &0d,   8, &10,   0, &e8, &28   ; 3fc3: 00 10 24... ..$
    equb &a8, &58,   0, &f9, &a8,   0, &20, &f9, &f9, &10,   0, &f9   ; 3fcf: a8 58 00... .X.
    equb &e8,   0, &70, &18, &38, &d8, &f9, &30, &80,   7,   7, &78   ; 3fdb: e8 00 70... ..p
    equb &85, &38, &1e,   0, &78, &38, &0d, &18, &80, &28, &f9,   8   ; 3fe7: 85 38 1e... .8.
    equb   8, &18                                                     ; 3ff3: 08 18       ..
    equs " / "                                                        ; 3ff5: 20 2f 20     /
    equb &90, &8f,   8, &88, &68, &f9, &18                            ; 3ff8: 90 8f 08... ...
    equs "-U8"                                                        ; 3fff: 2d 55 38    -U8
    equb &15, &40, &95, &0d, &25, &45,   5, &25,   4, &1d, &75, &45   ; 4002: 15 40 95... .@.
    equb &15, &1d, &5d,   5, &38, &18, &83, &28, &10, &50, &f9, &10   ; 400e: 15 1d 5d... ..]
    equb   0, &f9, &e8, &f9, &46, &e8, &28, &18, &68,   0, &16, &c0   ; 401a: 00 f9 e8... ...
    equb &20,   0, &80, &38,   5, &d8, &b0, &f9, &38,   8, &18, &48   ; 4026: 20 00 80...  ..
    equb &a8,   0, &a8, &60, &98, &f8, &f9, &f9, &f9, &46, &ae, &50   ; 4032: a8 00 a8... ...
    equb &1e, &78, &a0,   0,   8, &15, &48, &68,   8, &77, &30,   0   ; 403e: 1e 78 a0... .x.
    equb &c7, &10                                                     ; 404a: c7 10       ..
    equs "T VF"                                                       ; 404c: 54 20 56... T V
    equb   7,   3, &15,   5, &10, &0f, &17,   8, &20,   0, &1f, &0d   ; 4050: 07 03 15... ...
    equb   0,   5, &38, &3d,   7,   5,   0,   7,   8, &45, &18,   7   ; 405c: 00 05 38... ..8
    equb   7, &0d, &2f, &0f,   8, &57,   7, &15, &3f, &35,   7,   5   ; 4068: 07 0d 2f... ../
    equb &17,   0,   5, &25, &15, &15, &0f, &0f,   0, &0f,   7,   7   ; 4074: 17 00 05... ...
    equb &0f, &15, &bf, &4d, &bf, &8f,   0, &40,   0, &a7, &0f, &17   ; 4080: 0f 15 bf... ...
    equb   7, &48, &b7, &10, &1f, &28, &27, &0e, &f9, &f9, &f8, &56   ; 408c: 07 48 b7... .H.
    equb &90, &28, &1f, &68,   0, &17, &0f, &a8,   0, &f0,   5, &d8   ; 4098: 90 28 1f... .(.
    equb   8,   0, &98, &f9, &38, &78, &a8, &48, &9f, &50, &70, &ac   ; 40a4: 08 00 98... ...
    equb &60, &c0, &58,   3, &1e, &96, &10, &f9, &4e, &20,   8,   0   ; 40b0: 60 c0 58... `.X
    equb &f9, &f5, &f9, &37, &bd,   5,   5, &38, &10, &5f, &30, &96   ; 40bc: f9 f5 f9... ...
    equb &0f, &0f, &0d,   7, &30,   0                                 ; 40c8: 0f 0f 0d... ...
    equs "hP`"                                                        ; 40ce: 68 50 60    hP`
    equb &88, &50, &d6, &46,   0, &28, &f9, &68, &a8, &58, &0e, &f9   ; 40d1: 88 50 d6... .P.
    equb &a8, &20, &f8, &f9, &18, &ff, &e8                            ; 40dd: a8 20 f8... . .
    equs "O(X"                                                        ; 40e4: 4f 28 58    O(X
    equb &df,   0, &78,   5,   4,   8, &88,   7, &d0,   0, &27,   7   ; 40e7: df 00 78... ..x
    equb &85,   3, &0c,   4, &0c,   4,   4, &2f, &0d, &37, &24, &0c   ; 40f3: 85 03 0c... ...
    equb &84, &7c,   4, &0f, &ff, &24,   4, &14, &1f, &3c, &9c,   4   ; 40ff: 84 7c 04... .|.
    equb   7,   7,   4, &6f, &af                                      ; 410b: 07 07 04... ...
    equs "<<<"                                                        ; 4110: 3c 3c 3c    <<<
    equb   4,   4, &24,   7, &4c, &4f, &14,   4, &84, &17,   7, &0d   ; 4113: 04 04 24... ..$
    equb   4,   4,   5,   4,   4,   7, &37, &14, &f9, &8f, &ac, &f9   ; 411f: 04 04 05... ...
    equb &3c, &f9, &17, &14, &f9, &f9, &7f, &f9, &d7, &87, &f9, &f9   ; 412b: 3c f9 17... <..
    equb &f9, &bc,   4,   7, &f9, &f7,   7, &8c,   3, &3f, &1f, &8f   ; 4137: f9 bc 04... ...
    equb &af                                                          ; 4143: af          .
    equs "OGW7"                                                       ; 4144: 4f 47 57... OGW
    equb &0d, &6f,   7, &47, &37, &bc, &e7, &6d, &67, &17, &47, &5f   ; 4148: 0d 6f 07... .o.
    equb &7f, &d4, &17, &f7, &f9, &f9, &f9, &f9, &f9, &f9, &27, &f9   ; 4154: 7f d4 17... ...
    equb &5f, &f9, &2f, &f9, &f9, &f9, &f9, &f7, &1f, &f9, &3f,   3   ; 4160: 5f f9 2f... _./
    equb &af, &85, &17, &bf,   7, &2c,   4,   7, &37, &af, &8f, &67   ; 416c: af 85 17... ...
    equb &ac, &27, &17, &87, &74, &f9, &17, &14, &df, &1f, &57, &f9   ; 4178: ac 27 17... .'.
    equb &f9, &f9, &f7, &f9, &b7, &f9, &47, &f9, &47, &f9, &f9, &f9   ; 4184: f9 f9 f7... ...
    equb &f9, &77, &f9, &d7,   7, &9f, &8f,   7,   3, &87, &f9, &74   ; 4190: f9 77 f9... .w.
    equb &dc, &2f, &1f, &3f, &17                                      ; 419c: dc 2f 1f... ./.
    equs "_,W"                                                        ; 41a1: 5f 2c 57    _,W
    equb &9f, &97, &34, &37, &ef,   7, &f9, &f9, &f9, &f9, &f9, &f9   ; 41a4: 9f 97 34... ..4
    equb &f9, &f9, &f9, &f9, &87, &7f,   7, &f9, &f9, &f9, &bc, &0c   ; 41b0: f9 f9 f9... ...
    equb &f9, &24, &24,   4, &f9, &24, &0c,   3, &0f                  ; 41bc: f9 24 24... .$$
    equs "'<o"                                                        ; 41c5: 27 3c 6f    '<o
    equb &8f, &67, &24, &af, &17, &47, &0f, &f9, &bf                  ; 41c8: 8f 67 24... .g$
    equs "'tW"                                                        ; 41d1: 27 74 57    'tW
    equb &1f, &24, &2f, &e7, &9f, &97,   7, &67, &f9, &f9, &f9, &b7   ; 41d4: 1f 24 2f... .$/
    equb &f9, &f9, &87, &7f,   7, &f9, &f9, &f9, &f9, &f9, &f9, &27   ; 41e0: f9 f9 87... ...
    equb &1f, &f9, &f9, &7f,   3, &0d, &0d, &0f,   8,   0,   5, &3d   ; 41ec: 1f f9 f9... ...
    equb &f9, &37, &af, &15,   5, &30, &18                            ; 41f8: f9 37 af... .7.
    equs "_f^"                                                        ; 41ff: 5f 66 5e    _f^
    equb   0, &0f, &0f, &0d,   7,   0, &28,   0, &c0, &60, &88, &38   ; 4202: 00 0f 0f... ...
    equb &68, &c6, &18, &f9, &50, &40, &90, &58, &0e, &18, &40, &28   ; 420e: 68 c6 18... h..
    equb &c0, &30, &10, &f9, &f9, &40, &b7, &f9, &30,   0, &70, &18   ; 421a: c0 30 10... .0.
    equb &38, &e0                                                     ; 4226: 38 e0       8.
    equs "h((X"                                                       ; 4228: 68 28 28... h((
    equb &e0, &28, &20, &17, &45, &38, &18,   6, &78, &38, &0d, &18   ; 422c: e0 28 20... .(
    equb &80, &28, &68, &98,   8,   3                                 ; 4238: 80 28 68... .(h
    equs "N0("                                                        ; 423e: 4e 30 28    N0(
    equb &f9, &10, &58,   8, &d0, &f9                                 ; 4241: f9 10 58... ..X
    equs " H6"                                                        ; 4247: 20 48 36     H6
    equb &f9, &b0, &f9, &40, &e8, &58, &58, &e0, &98, &58, &98, &48   ; 424a: f9 b0 f9... ...
    equb &a0, &28, &68, &c8, &f9, &18, &90, &d0, &f0, &48, &c0, &58   ; 4256: a0 28 68... .(h
    equb &f9, &f9,   6                                                ; 4262: f9 f9 06    ...
    equs "=nP"                                                        ; 4265: 3d 6e 50    =nP
    equb &1e, &58, &d8, &60, &68,   3, &38, &47, &0f,   7, &0d,   7   ; 4268: 1e 58 d8... .X.
    equb   5, &0f                                                     ; 4274: 05 0f       ..
    equs "  V@"                                                       ; 4276: 20 20 56...   V
    equb   6, &70, &68, &80, &28, &a8, &66,   0, &60, &f0, &48, &20   ; 427a: 06 70 68... .ph
    equb &f8, &f9, &18, &b7, &f9, &30,   0, &90, &40, &d0, &70, &28   ; 4286: f8 f9 18... ...
    equb &90, &80, &a8, &80, &10, &a0, &68, &b0, &f9, &38, &20, &f9   ; 4292: 90 80 a8... ...
    equb &f9, &68, &18, &f9, &e0, &10, &40,   3, &58, &f9,   6, &38   ; 429e: f9 68 18... .h.
    equb &20, &98, &58, &18, &f9, &f9, &97, &0d,   5,   5, &30, &18   ; 42aa: 20 98 58...  .X
    equb &90, &2e, &5e,   0                                           ; 42b6: 90 2e 5e... ..^
    equs "80hP"                                                       ; 42ba: 38 30 68... 80h
    equb &f9                                                          ; 42be: f9          .
    equs "HXv@"                                                       ; 42bf: 48 58 76... HXv
    equb   6, &70, &68, &c8, &90, &6e, &f9, &30, &f9, &f9, &b8, &b7   ; 42c3: 06 70 68... .ph
    equb &f9, &30, &78, &18                                           ; 42cf: f9 30 78... .0x
    equs "8`x70"                                                      ; 42d3: 38 60 78... 8`x
    equb   8, &18, &28, &17                                           ; 42d8: 08 18 28... ..(
    equs "H?8X"                                                       ; 42dc: 48 3f 38... H?8
    equb &17, &10, &6f, &70,   6, &2f, &10,   3                       ; 42e0: 17 10 6f... ..o
    equs "PUT"                                                        ; 42e8: 50 55 54    PUT
    equb &0d,   0, &82, &13                                           ; 42eb: 0d 00 82... ...
    equs " LDA 8464,Y:TAY"                                            ; 42ef: 20 4c 44...  LD
    equb &0d,   0, &1d, &4c, &8f, &0f, &0d,   7,   3, &15,   7, &df   ; 42fe: 0d 00 1d... ...
    equb &ac, &b7, &27,   5,   7, &f9, &f9, &7d, &b7, &af, &72, &92   ; 430a: ac b7 27... ..'
    equb &14, &8f, &1d,   7,   3, &0c, &15,   7, &27,   7, &17,   2   ; 4316: 14 8f 1d... ...
    equb &0f,   3, &2f, &dd, &b7, &af, &1d, &b7, &df, &0f, &0d,   7   ; 4322: 0f 03 2f... ../
    equb &f9, &f9, &f9, &f9, &85, &f9, &55, &5d,   5, &ad, &0d, &35   ; 432e: f9 f9 f9... ...
    equb   3                                                          ; 433a: 03          .
    equs "'/_"                                                        ; 433b: 27 2f 5f    '/_
    equb &0f,   7, &f9, &f9, &f9, &ad, &c7, &0f, &f9, &b5, &f9, &f9   ; 433e: 0f 07 f9... ...
    equb &fd, &15, &25, &45, &b5, &15, &0d, &65, &d7,   3, &25,   7   ; 434a: fd 15 25... ..%
    equb &17, &25,   7, &fd,   5, &f9, &f9, &f9, &bf, &f9, &f9, &f9   ; 4356: 17 25 07... .%.
    equb &8d, &1d, &45, &e5, &0d, &15, &0d, &f9,   5, &2d, &45,   5   ; 4362: 8d 1d 45... ..E
    equb   3, &38, &14, &0d,   0, &5f, &18,   7                       ; 436e: 03 38 14... .8.
    equs "w(G"                                                        ; 4376: 77 28 47    w(G
    equb   5,   4, &38, &1f,   8, &47, &28, &0f, &35, &25, &0f, &27   ; 4379: 05 04 38... ..8
    equb &0d,   7, &0f, &2d, &77, &15, &0f,   5, &90, &50, &e8, &98   ; 4385: 0d 07 0f... ...
    equb   5, &f9, &85, &38, &1f                                      ; 4391: 05 f9 85... ...
    equs " /LH?"                                                      ; 4396: 20 2f 4c...  /L
    equb &0f, &0d,   7, &20, &50, &f9, &30, &f9, &60, &f9             ; 439b: 0f 0d 07... ...
    equs "/@ "                                                        ; 43a5: 2f 40 20    /@
    equb &80, &f9, &e8, &cf                                           ; 43a8: 80 f9 e8... ...
    equs "hPg"                                                        ; 43ac: 68 50 67    hPg
    equb &80, &98,   0, &f9, &e0, &20, &c8                            ; 43af: 80 98 00... ...
    equs "X(HM"                                                       ; 43b6: 58 28 48... X(H
    equb   3, &15,   7, &0d, &15, &f9, &b0, &40, &c8, &88, &f9, &88   ; 43ba: 03 15 07... ...
    equb &68, &f0, &70, &20,   0, &f9, &f9, &18, &b8, &78,   8, &f9   ; 43c6: 68 f0 70... h.p
    equb &38, &50, &e8, &98,   0, &f9, &e0, &20, &78, &0d, &f9, &f9   ; 43d2: 38 50 e8... 8P.
    equb &70, &f9, &3d, &90, &58, &f9, &30, &98, &28, &f9, &28, &93   ; 43de: 70 f9 3d... p.=
    equs "8 x"                                                        ; 43ea: 38 20 78    8 x
    equb   8, &f9, &38, &50, &e8, &98,   0, &87, &8f, &c8, &10,   8   ; 43ed: 08 f9 38... ..8
    equb &c8, &5d, &f9, &f9, &f9,   8,   5, &90, &58, &40, &e8, &98   ; 43f9: c8 5d f9... .].
    equb &28, &78, &a8, &90, &a0, &f9, &f9, &38, &50, &e8, &98, &d0   ; 4405: 28 78 a8... (x.
    equb &45, &a8, &f9, &10, &88, &50, &f9, &9b, &17, &17, &0c, &2c   ; 4411: 45 a8 f9... E..
    equb &30, &15,   8,   0, &2d, &2c, &18, &a8, &14,   8, &1d        ; 441d: 30 15 08... 0..
    equs "H(X"                                                        ; 4428: 48 28 58    H(X
    equb &10, &f9, &4f, &f9, &f9, &f9, &f9, &a0, &f9, &2d, &ed, &18   ; 442b: 10 f9 4f... ..O
    equb &4d, &f0, &18, &c8, &98, &20,   0                            ; 4437: 4d f0 18... M..
    equs "Dt7"                                                        ; 443e: 44 74 37    Dt7
    equb &80, &f9, &e8, &f9, &38, &50, &e8, &98,   0, &24, &f9, &98   ; 4441: 80 f9 e8... ...
    equb &35,   8, &c8                                                ; 444d: 35 08 c8    5..
    equs "4PP"                                                        ; 4450: 34 50 50    4PP
    equb   3, &d8, &f9, &f9, &f9, &55, &ed, &18, &4d, &f0, &18, &f9   ; 4453: 03 d8 f9... ...
    equb &e4, &74, &30, &80, &98, &1f, &70, &b0,   0, &f9, &27, &0d   ; 445f: e4 74 30... .t0
    equs "Pxh"                                                        ; 446b: 50 78 68    Pxh
    equb &98,   0, &24, &f9, &f9, &ec, &50, &f9, &88, &34, &f9, &3d   ; 446e: 98 00 24... ..$
    equb &14, &70, &ad, &17,   8, &20, &80, &67, &dc,   3, &77, &9f   ; 447a: 14 70 ad... .p.
    equb &15, &45, &ff, &4f,   5, &6f, &8d, &2f, &27, &8f, &ed, &4f   ; 4486: 15 45 ff... .E.
    equb &57, &ef, &15, &87,   7, &f9, &15, &35, &ad, &0f, &7d, &37   ; 4492: 57 ef 15... W..
    equb &17, &15                                                     ; 449e: 17 15       ..
    equs "G/um"                                                       ; 44a0: 47 2f 75... G/u
    equb &15, &8f, &f9, &67, &f9,   5, &6f, &27,   7, &e5, &57, &3d   ; 44a4: 15 8f f9... ...
    equb &df, &85, &f9, &f9, &f9, &f9, &ef,   3, &2f, &f9, &f9, &65   ; 44b0: df 85 f9... ...
    equb &5f, &15, &37,   7, &65, &65, &1f, &17, &6f,   7, &f9, &37   ; 44bc: 5f 15 37... _.7
    equb &f9, &57, &75, &87,   5, &15                                 ; 44c8: f9 57 75... .Wu
    equs "]?w"                                                        ; 44ce: 5d 3f 77    ]?w
    equb &9f, &5d,   5, &47, &f9, &1d                                 ; 44d1: 9f 5d 05... .].
    equs "'/_"                                                        ; 44d7: 27 2f 5f    '/_
    equb &17, &f9, &f9, &0d, &5f, &2d, &ad, &37, &97, &6d, &6d, &f9   ; 44da: 17 f9 f9... ...
    equb &f9, &0f, &f9, &f9, &8f, &f9, &f9, &6f,   3, &3d,   5, &17   ; 44e6: f9 0f f9... ...
    equb &2d, &f9,   7, &f9, &df, &77, &77,   5, &bf, &d7, &0d,   7   ; 44f2: 2d f9 07... -..
    equb &0f, &f9, &f9, &f9, &f9, &f9, &9f, &4f, &0f, &8f, &17, &c7   ; 44fe: 0f f9 f9... ...
    equb &f9, &f7, &97, &f9, &6f, &e5,   3, &15, &f9, &f9, &f9, &f9   ; 450a: f9 f7 97... ...
    equb &25, &af,   7, &f9, &75, &55, &f9, &f9, &67, &27, &0d, &17   ; 4516: 25 af 07... %..
    equb &2d, &fd,   7, &47, &0f, &f9, &35, &f9, &f9                  ; 4522: 2d fd 07... -..
    equs "O/'"                                                        ; 452b: 4f 2f 27    O/'
    equb &8f, &8f, &0d,   7, &f9, &f9, &87, &f9, &f9, &9f, &f9, &f9   ; 452e: 8f 8f 0d... ...
    equb &55, &2d,   3, &0d, &27,   5,   7,   5,   5, &0d, &9f        ; 453a: 55 2d 03... U-.
    equs "wm/"                                                        ; 4545: 77 6d 2f    wm/
    equb &af, &27, &4f, &a5                                           ; 4548: af 27 4f... .'O
    equs "'/_"                                                        ; 454c: 27 2f 5f    '/_
    equb &17, &b7, &47,   7, &f9,   5, &2f,   7, &27, &2d, &ad, &37   ; 454f: 17 b7 47... ..G
    equb &97, &6d, &f9, &f9, &7f, &15, &77, &57,   5, &15, &25, &5d   ; 455b: 97 6d f9... .m.
    equb &8f, &6f, &f7, &8d, &0f, &d7, &27, &f9, &8f, &2f, &27, &f9   ; 4567: 8f 6f f7... .o.
    equb &f9, &f9, &bf, &f9, &15,   3, &15, &f9, &f0, &f9, &f9, &68   ; 4573: f9 f9 bf... ...
    equb &f9, &2d, &70, &f9, &f9, &f0, &9c, &f9, &ed, &88             ; 457f: f9 2d 70... .-p
    equs "uxu"                                                        ; 4589: 75 78 75    uxu
    equb &c0, &50, &f9, &88,   0,   6, &f9, &40, &15, &4c, &28, &15   ; 458c: c0 50 f9... .P.
    equb &f9, &a4, &0f,   7, &f9, &37, &44, &ec, &20, &18, &3c, &0d   ; 4598: f9 a4 0f... ...
    equb &20,   7, &40,   0,   0, &1d, &5d, &27, &17, &35, &0d,   3   ; 45a4: 20 07 40...  .@
    equb &18, &f9, &f9, &38, &f9, &f9, &f9, &38, &f9, &f9, &f9        ; 45b0: 18 f9 f9... ...
    equs "8xM6"                                                       ; 45bb: 38 78 4d... 8xM
    equb &f9, &c0, &1f, &18                                           ; 45bf: f9 c0 1f... ...
    equs "MHX@"                                                       ; 45c3: 4d 48 58... MHX
    equb &18, &c8, &c0,   0, &f9, &78, &98, &90, &20, &88, &f9, &f9   ; 45c7: 18 c8 c0... ...
    equb &80, &98,   0, &b6, &ae, &58, &40, &c8, &30,   6, &cb, &18   ; 45d3: 80 98 00... ...
    equb &0f, &dd, &f9, &f9, &d8                                      ; 45df: 0f dd f9... ...
    equs ".XP"                                                        ; 45e4: 2e 58 50    .XP
    equb &f9, &30, &f9, &c6, &10, &20,   0                            ; 45e7: f9 30 f9... .0.
    equs "]h "                                                        ; 45ee: 5d 68 20    ]h
    equb &80, &f9, &d8,   8, &f9, &38, &f9, &40, &98,   0, &27, &f9   ; 45f1: 80 f9 d8... ...
    equb &b8, &20, &c8, &58, &28, &f9, &f9, &d8,   0                  ; 45fd: b8 20 c8... . .
    equs "^0XE"                                                       ; 4606: 5e 30 58... ^0X
    equb &f9, &88, &28, &78, &eb, &0d, &4c, &16, &66,   8, &0f, &0d   ; 460a: f9 88 28... ..(
    equb &80, &f9, &f9, &98, &5e, &38,   0, &cd, &20, &f9, &c8, &10   ; 4616: 80 f9 f9... ...
    equb &78,   8, &f9, &38, &50, &f9, &88,   0, &f9, &e0, &20, &c8   ; 4622: 78 08 f9... x..
    equb &58, &28, &f9, &f9, &d8,   5, &58, &30, &f9, &f9, &60, &78   ; 462e: 58 28 f9... X(.
    equb &f9, &40, &28,   3, &65, &f9, &f9, &f9, &e6, &f9, &c5, &f9   ; 463a: f9 40 28... .@(
    equb &f9, &80, &f9, &f9, &f9,   8, &f9, &f9, &f9, &f9, &f9, &1e   ; 4646: f9 80 f9... ...
    equb   5, &58, &f9, &50,   8, &f9, &c8, &20, &f9, &3d, &5e, &10   ; 4652: 05 58 f9... .X.
    equb &20, &d0, &20, &80, &98, &56, &8b, &18, &f9, &a0, &90, &a8   ; 465e: 20 d0 20...  .
    equb &88, &f9, &f8, &f9, &f9, &f9, &b8, &f9, &f9, &48, &38, &98   ; 466a: 88 f9 f8... ...
    equb &58, &60, &f9, &90,   0, &f9, &78, &98, &90, &b0, &f9, &38   ; 4676: 58 60 f9... X`.
    equb &f9, &40, &98, &f9, &c8, &40, &f9, &db, &10, &48, &1f, &98   ; 4682: f9 40 98... .@.
    equb &4c, &3d, &f9, &90, &e8, &98,   5, &b7, &a8, &58, &c4, &48   ; 468e: 4c 3d f9... L=.
    equb &3f, &1d,   7, &20, &50, &f9, &30, &f9, &f9, &f9,   0, &80   ; 469a: 3f 1d 07... ?..
    equb &f9, &30, &20, &88, &f9, &38, &f9, &40, &f9, &f9, &88, &20   ; 46a6: f9 30 20... .0
    equb &2f, &98, &88,   5, &40, &f9, &f9, &88,   5,   3, &f9, &70   ; 46b2: 2f 98 88... /..
    equb &27,   0,   0, &2c,   7, &fd,   0, &7d, &f9, &d8, &0d, &48   ; 46be: 27 00 00... '..
    equb &ff, &f9, &4c, &f9, &28, &f9                                 ; 46ca: ff f9 4c... ..L
    equs ", d"                                                        ; 46d0: 2c 20 64    , d
    equb &9d, &8f, &f9, &30, &38, &f8, &40, &e8, &c8, &78, &f8, &f9   ; 46d3: 9d 8f f9... ...
    equb &58, &88, &cf, &68, &50, &e8, &f8, &f9, &eb                  ; 46df: 58 88 cf... X..
    equs "5526,Y"                                                     ; 46e8: 35 35 32... 552
    equb &0d,   2, &80,   9                                           ; 46ee: 0d 02 80... ...
    equs ".AVEC"                                                      ; 46f2: 2e 41 56... .AV
    equb &0d,   2, &8a, &16                                           ; 46f7: 0d 02 8a... ...
    equs "LDX #"                                                      ; 46fb: 4c 44 58... LDX
.strip_data
.strip_data_for_cave_0
    equb &5a, &f2, &e2, &6a, &81, &f2, &d2, &6a                       ; 4700: 5a f2 e2... Z..
.strip_data_for_cave_1
    equb &71,   2, &61,   2, &21,   0, &21,   2, &61,   2, &e1, &0b   ; 4708: 71 02 61... q.a
    equb &61, &0b, &21, &0b, &21, &0b, &61, &0b, &61, &60, &0c, &f1   ; 4714: 61 0b 21... a.!
    equb &d1, &0c, &2a, &62, &0c, &a1, &0c, &22, &0c, &d1, &0c, &2a   ; 4720: d1 0c 2a... ..*
    equb &60, &0c, &f1, &d1, &0c, &3a, &62, &0c, &a1, &0c, &22, &0c   ; 472c: 60 0c f1... `..
    equb &d1, &0c, &2a, &60, &0c, &f1, &d1, &0c, &3a, &71, &0b, &61   ; 4738: d1 0c 2a... ..*
    equb &0b, &21, &0b, &21, &0b, &61, &0b, &61                       ; 4744: 0b 21 0b... .!.
.strip_data_for_cave_2
    equb &fa, &3a                                                     ; 474c: fa 3a       .:
.strip_data_for_cave_3
    equb &7a, &81,   9, &61,   9, &61,   9, &61,   9, &ba             ; 474e: 7a 81 09... z..
.strip_data_for_cave_4
    equb &6a, &71, &20, &41, &20, &41, &20, &41, &20, &c1, &20, &41   ; 4758: 6a 71 20... jq
    equb &20, &41, &20, &41, &20, &c1,   0,   4,   6, &41,   0,   4   ; 4764: 20 41 20...  A
    equb   6, &41,   0,   4,   6, &41,   0,   4,   6, &3a, &71, &20   ; 4770: 06 41 00... .A.
    equb &41, &20, &41, &20, &41, &20, &c1, &20, &41, &20, &41, &20   ; 477c: 41 20 41... A A
    equb &41, &20, &c1,   0,   4,   6, &41,   0,   4,   6, &41,   0   ; 4788: 41 20 c1... A .
    equb   4,   6, &41,   0,   4,   6, &4a                            ; 4794: 04 06 41... ..A
.strip_data_for_cave_5
    equb &92,   1, &f3, &13,   1, &92, &1b, &70, &0b, &f3, &13, &0b   ; 479b: 92 01 f3... ...
    equb &70, &0b, &20,   6,   4, &60, &f3, &13, &60,   4,   6, &10   ; 47a7: 70 0b 20... p.
    equb &a2, &f3, &13, &a2, &a0, &f3, &13, &c0,   6,   4, &60, &f3   ; 47b3: a2 f3 13... ...
    equb &13, &60,   4,   6, &10, &a2, &f3, &13, &a2, &a0, &f3, &13   ; 47bf: 13 60 04... .`.
    equb &c0,   6,   4, &60, &f3, &13, &60,   4,   6, &10, &a2, &f3   ; 47cb: c0 06 04... ...
    equb &13, &a2, &a0, &f3, &13, &c0,   6,   4, &60, &f3, &13, &60   ; 47d7: 13 a2 a0... ...
    equb   4,   6, &10, &1b, &72, &0b, &f3, &13, &0b, &72, &1b, &6a   ; 47e3: 04 06 10... ...
.strip_data_for_cave_6
    equb &0a, &f1, &f1, &11,   4, &f1, &f1,   1, &b2, &31,   4, &f1   ; 47ef: 0a f1 f1... ...
    equb &f1, &21, &c2, &6a, &f1, &f1, &11,   4, &81,   4, &5a, &f1   ; 47fb: f1 21 c2... .!.
    equb &31,   7, &0a, &31,   4, &f1, &c1,   4, &41                  ; 4807: 31 07 0a... 1..
.strip_data_for_cave_7
    equb &0a, &f0, &f0, &10,   4, &f0, &f0,   0, &b2, &30,   4, &0a   ; 4810: 0a f0 f0... ...
    equb &c2, &4a, &f0, &f0, &10,   4, &f0, &f0,   0, &a2, &1a, &c2   ; 481c: c2 4a f0... .J.
    equb &81, &0a, &b0,   4, &0a, &d0, &7d, &0a, &f0, &20,   4, &4a   ; 4828: 81 0a b0... ...
    equb &4a                                                          ; 4834: 4a          J
.strip_data_for_cave_8
    equb &6a, &43, &62,   1, &42, &63, &52,   1, &52, &63, &0b, &a0   ; 4835: 6a 43 62... jCb
    equb &0b, &63, &0b, &a0, &0b, &73, &ab, &83, &ab, &5a, &f3,   3   ; 4841: 0b 63 0b... .c.
    equb &0b, &62, &0b, &f3, &e3, &f0, &30, &f3, &33,   2, &63,   2   ; 484d: 0b 62 0b... .b.
    equb &f3, &23, &bb,   2, &63,   2, &bb, &63, &c2, &63, &c2, &0a   ; 4859: f3 23 bb... .#.
    equb &73, &0b, &b2, &63, &b2, &0b, &13                            ; 4865: 73 0b b2... s..
.strip_data_for_cave_9
    equb &0a,   1, &b2,   0, &72, &0a,   1,   2, &31,   4, &c1,   4   ; 486c: 0a 01 b2... ...
    equb &0b, &0a,   1,   2,   1,   2,   6,   2,   1, &52,   0, &52   ; 4878: 0b 0a 01... ...
    equb &0a, &5b,   1, &0b,   4, &81,   4, &0b, &0a, &81, &32,   0   ; 4884: 0a 5b 01... .[.
    equb &32, &0a, &81, &0b,   4, &41,   4, &0b, &0a, &a1, &12,   0   ; 4890: 32 0a 81... 2..
    equb &12, &0a, &51, &40, &0b, &20, &0b, &40, &0a, &51, &e0, &0a   ; 489c: 12 0a 51... ..Q
    equb &51, &e6, &0a, &31, &0b, &51, &0b, &22, &0b, &0a, &31,   0   ; 48a8: 51 e6 0a... Q..
    equb &41,   4, &41,   4, &0a, &31,   4, &31, &0b, &62, &0b, &0a   ; 48b4: 41 04 41... A.A
    equb &31, &0b, &21,   4, &81,   4, &0a, &61, &0b, &a2, &0b, &0a   ; 48c0: 31 0b 21... 1.!
    equb &5b,   4, &c1,   4, &0a, &f2, &42, &0b, &2a                  ; 48cc: 5b 04 c1... [..
.strip_data_for_cave_10
    equb &31,   4, &41,   2, &21,   4, &41,   2, &21,   4, &41,   2   ; 48d5: 31 04 41... 1.A
    equb &21,   4, &31,   3, &91, &0b, &81, &0b, &81, &0b, &4a, &f1   ; 48e1: 21 04 31... !.1
    equb &f1, &51,   2,   3, &91, &0b, &81, &0b, &81, &0b, &51,   2   ; 48ed: f1 51 02... .Q.
    equb   1,   3, &41, &82,   1, &82,   1, &82, &11,   2, &11,   3   ; 48f9: 01 03 41... ..A
    equb &f1, &f1, &21,   2, &21,   3, &f1, &f1, &11,   2, &31,   3   ; 4905: f1 f1 21... ..!
    equb &81,   2, &f1, &61,   2, &41,   3, &81, &0b, &11, &f2,   2   ; 4911: 81 02 f1... ...
    equb &21,   2, &51,   3, &f1, &e1,   2, &61,   3, &f1, &d1,   2   ; 491d: 21 02 51... !.Q
    equb &71,   3, &f1, &c1,   2, &81,   3, &f1, &b1,   2, &2a, &31   ; 4929: 71 03 f1... q..
    equb   4, &31, &0b, &0a                                           ; 4935: 04 31 0b... .1.
.strip_data_for_cave_11
    equb &1a, &91,   2, &21,   2, &21,   2, &21,   2, &71,   9, &91   ; 4939: 1a 91 02... ...
    equb &72, &0b, &12,   1, &0b, &21, &0b, &21, &0b, &3a, &11, &a2   ; 4945: 72 0b 12... r..
    equb &f1, &11,   9, &3a, &11, &e2, &0a, &f1, &e1,   9, &2a, &11   ; 4951: f1 11 09... ...
    equb &a2, &3a, &91, &0b, &21, &0b, &21, &0b, &21, &0b, &0a, &0b   ; 495d: a2 3a 91... .:.
    equb &21, &0b, &0a                                                ; 4969: 21 0b 0a    !..
.strip_data_for_cave_12
    equb &f0, &30,   7, &ea, &40, &f2, &d2, &90, &fe, &de, &90, &f5   ; 496c: f0 30 07... .0.
    equb &d5, &90, &f1, &d1, &90, &f1, &d1, &40                       ; 4978: d5 90 f1... ...
.strip_data_for_cave_13
    equb &3a, &f1, &51,   6,   1,   6,   1,   6,   1,   6,   1,   6   ; 4980: 3a f1 51... :.Q
    equb   1,   6, &f1, &c1,   5,   1,   5,   1,   5,   1,   5,   1   ; 498c: 01 06 f1... ...
    equb   5,   1,   5, &2a, &a1,   0, &0b,   0, &0b,   0, &0b,   0   ; 4998: 05 01 05... ...
    equb &0b,   0, &0b, &0e, &0a, &a1, &a0, &0a, &a1, &70, &0e, &10   ; 49a4: 0b 00 0b... ...
    equb &0a, &a1, &a0, &0a, &a1, &50, &0e, &30, &0a, &a1, &a0, &0a   ; 49b0: 0a a1 a0... ...
    equb &a1, &30, &0e, &50, &0a, &a1, &a0, &0a, &a1, &10, &0e, &70   ; 49bc: a1 30 0e... .0.
    equb &0a, &a1, &a0, &0a, &a1, &0e, &0b,   0, &0b,   0, &0b,   0   ; 49c8: 0a a1 a0... ...
    equb &0b,   0, &0b,   0, &1a                                      ; 49d4: 0b 00 0b... ...
.strip_data_for_cave_14
    equb &0a, &10,   2, &f0, &40,   2, &0a, &20,   2, &f0, &20,   2   ; 49d9: 0a 10 02... ...
    equb &0a, &30,   2, &f0,   0,   2, &0a, &40,   2, &e0,   2, &0a   ; 49e5: 0a 30 02... .0.
    equb &50,   2, &c0,   2, &0a, &60,   2, &a0,   2, &0a, &70,   2   ; 49f1: 50 02 c0... P..
    equb &80,   2, &0a, &80,   2, &60,   2, &0a, &90,   2, &40,   2   ; 49fd: 80 02 0a... ...
    equb &0a, &a0,   2, &20,   2, &0a, &b0, &21, &0a, &b0, &2d, &7a   ; 4a09: 0a a0 02... ...
.strip_data_for_cave_15
    equb &6a, &61, &5d, &11, &5d, &0a, &61,   2, &31,   2, &11,   2   ; 4a15: 6a 61 5d... ja]
    equb &31,   2, &0a, &61, &0b, &31, &0b, &11, &0b, &31, &0b, &4a   ; 4a21: 31 02 0a... 1..
    equb &61, &0b, &32, &0b, &11, &0b, &32, &0b, &2a, &81,   9, &61   ; 4a2d: 61 0b 32... a.2
    equb   9, &61,   9, &61,   9, &2a                                 ; 4a39: 09 61 09... .a.
.strip_data_for_cave_16
    equb &f0, &20, &0b, &0a, &90,   5, &0a, &90,   1, &6a, &90, &0e   ; 4a3f: f0 20 0b... . .
    equb &0a, &f3, &23, &0b, &9a                                      ; 4a4b: 0a f3 23... ..#
.strip_data_for_cave_17
    equb   1,   5,   6, &e1,   5, &0b, &0a, &11,   5,   6, &c1,   5   ; 4a50: 01 05 06... ...
    equb &0a,   1,   4,   1,   5,   6, &a1,   5,   1,   4, &0a,   1   ; 4a5c: 0a 01 04... ...
    equb   5,   4,   1,   5,   6, &81,   5,   1,   4,   5, &0a, &11   ; 4a68: 05 04 01... ...
    equb   5,   4,   1,   5,   6, &61,   5,   1,   4,   5, &0a, &21   ; 4a74: 05 04 01... ...
    equb   5,   4,   1,   5,   6, &41,   5,   1,   4,   5, &0a, &31   ; 4a80: 05 04 01... ...
    equb   5,   4,   1,   5,   6, &21,   5,   1,   4,   5, &0a, &41   ; 4a8c: 05 04 01... ...
    equb   5,   4,   1,   5,   6,   1,   5,   1,   4,   5, &0a, &51   ; 4a98: 05 04 01... ...
    equb   5,   4,   1, &15,   1,   4,   5, &0a, &61,   5,   4, &11   ; 4aa4: 05 04 01... ...
    equb   4,   5, &0a, &f3, &23, &0b, &9a                            ; 4ab0: 04 05 0a... ...
.strip_data_for_cave_18
    equb &f0, &20, &0b, &5a, &e0, &36, &0a, &e0, &36, &0a, &e0, &36   ; 4ab7: f0 20 0b... . .
    equb &0a, &e4, &36, &0b, &0a, &f3, &33, &9a                       ; 4ac3: 0a e4 36... ..6
.strip_data_for_cave_19
    equb &a1, &25, &41, &0b, &0a, &a1, &25, &1a, &a1, &2d, &0a, &71   ; 4acb: a1 25 41... .%A
    equb   5, &11, &20, &0a, &81,   5,   1, &20, &0a, &91,   5, &20   ; 4ad7: 05 11 20... ..
    equb &0a, &a1, &2d, &0a, &a1, &20, &0a, &a1, &20, &0a, &f3, &23   ; 4ae3: 0a a1 2d... ..-
    equb &0b, &9a                                                     ; 4aef: 0b 9a       ..
.unused45
    equb &90, &6a, &90, &0e, &0a, &f3, &23, &0b, &9a, &2a,   3, &34   ; 4af1: 90 6a 90... .j.
    equb   3, &3e,   3                                                ; 4afd: 03 3e 03    .>.

; *************************************************************************************
.diamond_score_before_enough_obtained_for_each_cave
    equb 10, 20, 15,  5, 50, 40, 10, 10,  5, 25                       ; 4b00: 0a 14 0f... ...
    equb 50, 20,  5, 10, 10, 10, 30, 10, 10, 30                       ; 4b0a: 32 14 05... 2..
.diamond_score_after_enough_obtained_for_each_cave
    equb 15, 50,  0,  0, 90, 60, 20, 20, 10, 60                       ; 4b14: 0f 32 00... .2.
    equb  0,  0,  8, 20, 20, 20,  0,  0,  0,  0                       ; 4b1e: 00 00 08... ...

.required_diamonds_for_each_cave_difficulty_level_1
    equb 12, 10, 24, 36,  4,  4, 15, 10, 75, 12                       ; 4b28: 0c 0a 18... ...
    equb  6, 19, 50, 30, 20, 12,  6, 16, 14,  6                       ; 4b32: 06 13 32... ..2
.time_limit_for_each_cave_difficulty_level_1
    equb 150, 150, 150, 120, 150, 150, 120, 120, 150, 150             ; 4b3c: 96 96 96... ...
    equb 120, 180, 160, 150, 120, 150,  15,  15,  20,  20             ; 4b46: 78 b4 a0... x..

.required_diamonds_for_each_cave_difficulty_level_2
    equb 12, 11, 23, 36,  5,  5, 20, 15, 75, 12                       ; 4b50: 0c 0b 17... ...
    equb  6, 19, 55, 35, 20, 15,  6, 16, 14,  6                       ; 4b5a: 06 13 37... ..7
.time_limit_for_each_cave_difficulty_level_2
    equb 110, 110, 100, 100, 120, 120, 120, 110, 150, 130             ; 4b64: 6e 6e 64... nnd
    equb 120, 170, 155, 145, 120, 150,  10,  15,  20,  20             ; 4b6e: 78 aa 9b... x..

.required_diamonds_for_each_cave_difficulty_level_3
    equb 12,  9, 24, 36,  6,  6, 25, 20, 80, 12                       ; 4b78: 0c 09 18... ...
    equb  6, 14, 60, 40, 20, 15,  6, 16, 14,  6                       ; 4b82: 06 0e 3c... ..<
.time_limit_for_each_cave_difficulty_level_3
    equb  70,  70,  90,  80,  90, 100, 120, 100, 130, 120             ; 4b8c: 46 46 5a... FFZ
    equb 150, 160, 150, 140, 120, 150,  10,  15,  20,  20             ; 4b96: 96 a0 96... ...

.required_diamonds_for_each_cave_difficulty_level_4
    equb 12, 13, 23, 36,  7,  7, 20, 20, 85, 12                       ; 4ba0: 0c 0d 17... ...
    equb  6, 16, 70, 42, 25, 15,  6, 16, 14,  6                       ; 4baa: 06 10 46... ..F
.time_limit_for_each_cave_difficulty_level_4
    equb  40,  70,  80,  60,  60,  90, 120,  90, 130, 110             ; 4bb4: 28 46 50... (FP
    equb 150, 160, 145, 135, 120, 150,  10,  15,  20,  20             ; 4bbe: 96 a0 91... ...

.required_diamonds_for_each_cave_difficulty_level_5
    equb 12, 10, 21, 36,  8,  8, 25, 20, 90, 12                       ; 4bc8: 0c 0a 15... ...
    equb  6, 21, 80, 45, 30, 12,  6, 16, 14,  6                       ; 4bd2: 06 15 50... ..P
.time_limit_for_each_cave_difficulty_level_5
    equb  30,  70,  70,  50,  30,  80, 120,  80, 120, 100             ; 4bdc: 1e 46 46... .FF
    equb 240, 160, 140, 130, 140, 150,  10,  15,  20,  20             ; 4be6: f0 a0 8c... ...

.start_y
    equb   2, &13,   2,   1,   1, &12,   1,   1, &0a,   1             ; 4bf0: 02 13 02... ...
    equb &12, &12,   1,   1,   1,   1,   3,   2,   1,   1             ; 4bfa: 12 12 01... ...
.start_x
    equb   3, &12,   3,   1,   1,   3, &14, &14,   8, &0d             ; 4c04: 03 12 03... ...
    equb &14,   3, &12,   3, &14,   1,   3,   1,   8,   3             ; 4c0e: 14 03 12... ...
.end_y
    equb &10, &14, &12, &14, &14, &12,   5,   3, &0a, &14             ; 4c18: 10 14 12... ...
    equb &0f, &14,   1, &14, &14,   2, &0a,   2,   5,   8             ; 4c22: 0f 14 01... ...
.end_x
    equb &26, &12, &27, &26, &27, &26, &27,   0,   9, &27             ; 4c2c: 26 12 27... &.'
    equb &26, &27, &0a, &27, &14, &27, &12, &12, &12,   9             ; 4c36: 26 27 0a... &'.
.cave_play_order
    equb  1,  2,  3, 16,  5,  6,  7, 17,  9, 10                       ; 4c40: 01 02 03... ...
    equb 11, 18, 13, 14, 15, 19,  4,  8, 12,  0                       ; 4c4a: 0b 12 0d... ...
.fungus_growth_intervals
    equb  0,  0,  0,  0,  0,  0, 40, 25,  0,  0                       ; 4c54: 00 00 00... ...
    equb  0,  0, 32,  0, 10, 20,  0,  0,  0,  4                       ; 4c5e: 00 00 20... ..
.number_of_difficuly_levels_available_in_menu_for_each_cave
    equb 5, 0, 0, 0, 3, 0, 0, 0, 3, 0                                 ; 4c68: 05 00 00... ...
    equb   0,   0,   3,   0,   0,   0, &80, &80, &80, &80             ; 4c72: 00 00 03... ...
.length_of_strip_data_for_each_cave
    equb   8, &44,   2, &0a, &43, &54, &21, &25, &37, &69             ; 4c7c: 08 44 02... .D.
    equb &64, &33, &14, &59, &3c, &2a, &11, &67, &14, &26             ; 4c86: 64 33 14... d3.
.fill_cell_in_lower_nybble_strip_value_to_skip_in_upper_for_each_cave
    equb &11, &11, &11, &11, &11, &31, &11,   1, &35, &11             ; 4c90: 11 11 11... ...
    equb &11, &11,   1, &11,   1, &11,   0, &11,   0, &11             ; 4c9a: 11 11 01... ...
.colour_1_lower_nybble_block_type_1_upper_for_each_cave
    equb &15, &15, &23, &15,   6, &15,   2,   3, &41,   3             ; 4ca4: 15 15 23... ..#
    equb &56, &15, &12,   6, &51, &16,   2,   5,   4,   5             ; 4cae: 56 15 12... V..
.colour_2_lower_nybble_block_type_2_upper_for_each_cave
    equb &41, &44, &42, &14,   4, &51, &54, &51, &45,   2             ; 4cb8: 41 44 42... ADB
    equb &52, &42, &14,   4, &54, &55,   4,   2,   1,   4             ; 4cc2: 52 42 14... RB.
.colour_3_lower_nybble_block_type_3_upper_for_each_cave
    equb &57, &57, &57, &13,   7, &57, &57, &57, &47,   7             ; 4ccc: 57 57 57... WWW
    equb &57, &57, &57,   7, &57, &57,   6,   7,   7,   7             ; 4cd6: 57 57 57... WWW
.cave_to_data_set
    equb   0,   1,   2,   3, &ff,   4,   5,   6,   7, &ff             ; 4ce0: 00 01 02... ...
    equb   8,   9, &0a, &ff, &0b, &0c, &ff, &ff, &ff, &ff             ; 4cea: 08 09 0a... ...
; *************************************************************************************
.data_set_0
.data_sets
    equb &9d, &43, &6f, &43                                           ; 4cf4: 9d 43 6f... .Co            ; Difficulty 1: basics=0x4e9d, map_start=0x5043, patch_addr=0x436f
    equb &d3, &40, &bb, &43                                           ; 4cf8: d3 40 bb... .@.            ; Difficulty 2: basics=0x4ed3, map_start=0x5040, patch_addr=0x43bb
    equb &21, &c0, &ea, &43                                           ; 4cfc: 21 c0 ea... !..            ; Difficulty 3: basics=0x4f21, map_start=0x5040, patch_addr=0x43ea
    equb &2c, &42, &19, &44                                           ; 4d00: 2c 42 19... ,B.            ; Difficulty 4: basics=0x4e2c, map_start=0x5042, patch_addr=0x4419
    equb &5e, &43, &54, &44                                           ; 4d04: 5e 43 54... ^CT            ; Difficulty 5: basics=0x4e5e, map_start=0x5043, patch_addr=0x4454
.data_set_1
    equb &52, &42, &79, &45                                           ; 4d08: 52 42 79... RBy            ; Difficulty 1: basics=0x4e52, map_start=0x5042, patch_addr=0x4579
    equb &28, &40, &b0, &45                                           ; 4d0c: 28 40 b0... (@.            ; Difficulty 2: basics=0x4e28, map_start=0x5040, patch_addr=0x45b0
    equb &cd, &43, &de, &45                                           ; 4d10: cd 43 de... .C.            ; Difficulty 3: basics=0x4ecd, map_start=0x5043, patch_addr=0x45de
    equb &e7, &43, &0f, &46                                           ; 4d14: e7 43 0f... .C.            ; Difficulty 4: basics=0x4ee7, map_start=0x5043, patch_addr=0x460f
    equb &5a, &43, &3e, &46                                           ; 4d18: 5a 43 3e... ZC>            ; Difficulty 5: basics=0x4e5a, map_start=0x5043, patch_addr=0x463e
.data_set_2
    equb &28, &40,   0,   0                                           ; 4d1c: 28 40 00... (@.            ; Difficulty 1: basics=0x4e28, map_start=0x5040, patch_addr=0x0
    equb &e7, &45,   0, &43                                           ; 4d20: e7 45 00... .E.            ; Difficulty 2: basics=0x4ee7, map_start=0x5045, patch_addr=0x4300
    equb &b1, &41,   0,   0                                           ; 4d24: b1 41 00... .A.            ; Difficulty 3: basics=0x4eb1, map_start=0x5041, patch_addr=0x0
    equb &ac, &41,   7, &43                                           ; 4d28: ac 41 07... .A.            ; Difficulty 4: basics=0x4eac, map_start=0x5041, patch_addr=0x4307
    equb &92, &43, &1b, &43                                           ; 4d2c: 92 43 1b... .C.            ; Difficulty 5: basics=0x4e92, map_start=0x5043, patch_addr=0x431b
.data_set_3
    equb &28, &40, &69, &3e                                           ; 4d30: 28 40 69... (@i            ; Difficulty 1: basics=0x4e28, map_start=0x5040, patch_addr=0x3e69
    equb &28, &40, &a1, &3e                                           ; 4d34: 28 40 a1... (@.            ; Difficulty 2: basics=0x4e28, map_start=0x5040, patch_addr=0x3ea1
    equb &28, &40, &da, &3e                                           ; 4d38: 28 40 da... (@.            ; Difficulty 3: basics=0x4e28, map_start=0x5040, patch_addr=0x3eda
    equb &28, &40, &29, &3f                                           ; 4d3c: 28 40 29... (@)            ; Difficulty 4: basics=0x4e28, map_start=0x5040, patch_addr=0x3f29
    equb &28, &40, &5e, &3f                                           ; 4d40: 28 40 5e... (@^            ; Difficulty 5: basics=0x4e28, map_start=0x5040, patch_addr=0x3f5e
.data_set_4
    equb &28, &40,   0,   0                                           ; 4d44: 28 40 00... (@.            ; Difficulty 1: basics=0x4e28, map_start=0x5040, patch_addr=0x0
    equb &6d, &43,   0,   0                                           ; 4d48: 6d 43 00... mC.            ; Difficulty 2: basics=0x4e6d, map_start=0x5043, patch_addr=0x0
    equb   9, &c3,   0,   0                                           ; 4d4c: 09 c3 00... ...            ; Difficulty 3: basics=0x4f09, map_start=0x5043, patch_addr=0x0
    equb &4d, &41,   0,   0                                           ; 4d50: 4d 41 00... MA.            ; Difficulty 4: basics=0x4e4d, map_start=0x5041, patch_addr=0x0
    equb &0e, &c3,   0,   0                                           ; 4d54: 0e c3 00... ...            ; Difficulty 5: basics=0x4f0e, map_start=0x5043, patch_addr=0x0
.data_set_5
    equb &1b, &41, &ff, &3c                                           ; 4d58: 1b 41 ff... .A.            ; Difficulty 1: basics=0x4e1b, map_start=0x5041, patch_addr=0x3cff
    equb &ee, &42, &2a, &3d                                           ; 4d5c: ee 42 2a... .B*            ; Difficulty 2: basics=0x4eee, map_start=0x5042, patch_addr=0x3d2a
    equb &2a, &41, &5a, &3d                                           ; 4d60: 2a 41 5a... *AZ            ; Difficulty 3: basics=0x4e2a, map_start=0x5041, patch_addr=0x3d5a
    equb &2f, &41, &88, &3d                                           ; 4d64: 2f 41 88... /A.            ; Difficulty 4: basics=0x4e2f, map_start=0x5041, patch_addr=0x3d88
    equb &61, &42, &ad, &3d                                           ; 4d68: 61 42 ad... aB.            ; Difficulty 5: basics=0x4e61, map_start=0x5042, patch_addr=0x3dad
.data_set_6
    equb &cd, &43, &46, &3c                                           ; 4d6c: cd 43 46... .CF            ; Difficulty 1: basics=0x4ecd, map_start=0x5043, patch_addr=0x3c46
    equb &bf, &40, &70, &3c                                           ; 4d70: bf 40 70... .@p            ; Difficulty 2: basics=0x4ebf, map_start=0x5040, patch_addr=0x3c70
    equb &0d, &c0, &9b, &3c                                           ; 4d74: 0d c0 9b... ...            ; Difficulty 3: basics=0x4f0d, map_start=0x5040, patch_addr=0x3c9b
    equb &57, &42, &bf, &3c                                           ; 4d78: 57 42 bf... WB.            ; Difficulty 4: basics=0x4e57, map_start=0x5042, patch_addr=0x3cbf
    equb &37, &40, &da, &3c                                           ; 4d7c: 37 40 da... 7@.            ; Difficulty 5: basics=0x4e37, map_start=0x5040, patch_addr=0x3cda
.data_set_7
    equb &ae, &40, &f5, &40                                           ; 4d80: ae 40 f5... .@.            ; Difficulty 1: basics=0x4eae, map_start=0x5040, patch_addr=0x40f5
    equb &66, &42, &40, &41                                           ; 4d84: 66 42 40... fB@            ; Difficulty 2: basics=0x4e66, map_start=0x5042, patch_addr=0x4140
    equb &dd, &40, &6c, &41                                           ; 4d88: dd 40 6c... .@l            ; Difficulty 3: basics=0x4edd, map_start=0x5040, patch_addr=0x416c
    equb   6, &bf, &99, &41                                           ; 4d8c: 06 bf 99... ...            ; Difficulty 4: basics=0x4f06, map_start=0x503f, patch_addr=0x4199
    equb &82, &3f, &c4, &41                                           ; 4d90: 82 3f c4... .?.            ; Difficulty 5: basics=0x4e82, map_start=0x503f, patch_addr=0x41c4
.data_set_8
    equb &28, &40, &92, &3f                                           ; 4d94: 28 40 92... (@.            ; Difficulty 1: basics=0x4e28, map_start=0x5040, patch_addr=0x3f92
    equb &0d, &c0, &c9, &3f                                           ; 4d98: 0d c0 c9... ...            ; Difficulty 2: basics=0x4f0d, map_start=0x5040, patch_addr=0x3fc9
    equb &46, &42, &15, &40                                           ; 4d9c: 46 42 15... FB.            ; Difficulty 3: basics=0x4e46, map_start=0x5042, patch_addr=0x4015
    equb   9, &41, &52, &40                                           ; 4da0: 09 41 52... .AR            ; Difficulty 4: basics=0x4e09, map_start=0x5041, patch_addr=0x4052
    equb &ae, &40, &b4, &40                                           ; 4da4: ae 40 b4... .@.            ; Difficulty 5: basics=0x4eae, map_start=0x5040, patch_addr=0x40b4
.data_set_9
    equb &28, &40, &65, &46                                           ; 4da8: 28 40 65... (@e            ; Difficulty 1: basics=0x4e28, map_start=0x5040, patch_addr=0x4665
    equb &ae, &42, &8a, &46                                           ; 4dac: ae 42 8a... .B.            ; Difficulty 2: basics=0x4eae, map_start=0x5042, patch_addr=0x468a
    equb &1b, &41, &bc, &46                                           ; 4db0: 1b 41 bc... .A.            ; Difficulty 3: basics=0x4e1b, map_start=0x5041, patch_addr=0x46bc
    equb &72, &41,   0, &3e                                           ; 4db4: 72 41 00... rA.            ; Difficulty 4: basics=0x4e72, map_start=0x5041, patch_addr=0x3e00
    equb &46, &42, &43, &3e                                           ; 4db8: 46 42 43... FBC            ; Difficulty 5: basics=0x4e46, map_start=0x5042, patch_addr=0x3e43
.data_set_10
    equb &28, &40, &84, &44                                           ; 4dbc: 28 40 84... (@.            ; Difficulty 1: basics=0x4e28, map_start=0x5040, patch_addr=0x4484
    equb &cd, &43, &b8, &44                                           ; 4dc0: cd 43 b8... .C.            ; Difficulty 2: basics=0x4ecd, map_start=0x5043, patch_addr=0x44b8
    equb &89, &43, &ef, &44                                           ; 4dc4: 89 43 ef... .C.            ; Difficulty 3: basics=0x4e89, map_start=0x5043, patch_addr=0x44ef
    equb &2d, &c2, &11, &45                                           ; 4dc8: 2d c2 11... -..            ; Difficulty 4: basics=0x4f2d, map_start=0x5042, patch_addr=0x4511
    equb &0d, &c0, &3d, &45                                           ; 4dcc: 0d c0 3d... ..=            ; Difficulty 5: basics=0x4f0d, map_start=0x5040, patch_addr=0x453d
.data_set_11
    equb &cd, &43, &f1, &41                                           ; 4dd0: cd 43 f1... .C.            ; Difficulty 1: basics=0x4ecd, map_start=0x5043, patch_addr=0x41f1
    equb &2f, &40, &3e, &42                                           ; 4dd4: 2f 40 3e... /@>            ; Difficulty 2: basics=0x4e2f, map_start=0x5040, patch_addr=0x423e
    equb &fd, &41, &6e, &42                                           ; 4dd8: fd 41 6e... .An            ; Difficulty 3: basics=0x4efd, map_start=0x5041, patch_addr=0x426e
    equb &b4, &41, &a6, &42                                           ; 4ddc: b4 41 a6... .A.            ; Difficulty 4: basics=0x4eb4, map_start=0x5041, patch_addr=0x42a6
    equb &70, &41,   0, &3c                                           ; 4de0: 70 41 00... pA.            ; Difficulty 5: basics=0x4e70, map_start=0x5041, patch_addr=0x3c00
.data_set_12
    equb &cd, &43, &24, &43                                           ; 4de4: cd 43 24... .C$            ; Difficulty 1: basics=0x4ecd, map_start=0x5043, patch_addr=0x4324
    equb &b3, &3f,   0,   0                                           ; 4de8: b3 3f 00... .?.            ; Difficulty 2: basics=0x4eb3, map_start=0x503f, patch_addr=0x0
    equb &52, &42, &3b, &43                                           ; 4dec: 52 42 3b... RB;            ; Difficulty 3: basics=0x4e52, map_start=0x5042, patch_addr=0x433b
    equb &55, &41,   0,   0                                           ; 4df0: 55 41 00... UA.            ; Difficulty 4: basics=0x4e55, map_start=0x5041, patch_addr=0x0
    equb &26, &3f, &54, &43                                           ; 4df4: 26 3f 54... &?T            ; Difficulty 5: basics=0x4e26, map_start=0x503f, patch_addr=0x4354

.unused46
    equb   9,   4,   0, &0c, &11,   5,   1, &18,   9,   2, &0b, &23   ; 4df8: 09 04 00... ...
    equb &1b,   7,   2, &19, &0c                                      ; 4e04: 1b 07 02... ...

.basics_for_data_set_9_difficulty_4
    equb   0, &0d, &0a,   4,   9,   5,   1, &0c, &17,   7,   2, &18   ; 4e09: 00 0d 0a... ...
    equb &0b,   4,   2,   6,   5,   9                                 ; 4e15: 0b 04 02... ...
.basics_for_data_set_6_difficulty_1
    equb &10, &0f,   0, &15, &c1,   0, &3f, &c3,   4, &c4,   3        ; 4e1b: 10 0f 00... ...
.basics_for_data_set_13_difficulty_5
    equb   1, &0c                                                     ; 4e26: 01 0c       ..
.basics_for_data_set_2_difficulty_2
    equb &31, &47                                                     ; 4e28: 31 47       1G
.basics_for_data_set_6_difficulty_3
    equb &c4, &0d                                                     ; 4e2a: c4 0d       ..
.basics_for_data_set_1_difficulty_4
    equb &c3,   0, &40                                                ; 4e2c: c3 00 40    ..@
.basics_for_data_set_6_difficulty_4
    equb &c0, &0d, &20,   0, &48, &c4,   5, &41                       ; 4e2f: c0 0d 20... ..
.basics_for_data_set_7_difficulty_5
    equb &30, &0c, &33,   1, &1c,   0, &10, &e0, &c0, &10,   3, &17   ; 4e37: 30 0c 33... 0.3
    equb   0,   1, &14                                                ; 4e43: 00 01 14    ...
.basics_for_data_set_9_difficulty_3
    equb &21,   7, &70, &c0, &10, &30,   0                            ; 4e46: 21 07 70... !.p
.basics_for_data_set_5_difficulty_4
    equb &cf,   0,   4, &f1,   1                                      ; 4e4d: cf 00 04... ...
.basics_for_data_set_2_difficulty_1
    equb &0c, &50, &c5                                                ; 4e52: 0c 50 c5    .P.
.basics_for_data_set_13_difficulty_4
    equb &80,   0                                                     ; 4e55: 80 00       ..
.basics_for_data_set_7_difficulty_4
    equb &cf,   0,   4                                                ; 4e57: cf 00 04    ...
.basics_for_data_set_2_difficulty_5
    equb &3c, &30,   4, &0c                                           ; 4e5a: 3c 30 04... <0.
.basics_for_data_set_1_difficulty_5
    equb   0, &33, &c0                                                ; 4e5e: 00 33 c0    .3.
.basics_for_data_set_6_difficulty_5
    equb   3,   9, &40,   3, &14                                      ; 4e61: 03 09 40... ..@
.basics_for_data_set_8_difficulty_2
    equb &33, &c0, &40, &33, &c0,   1, &0c                            ; 4e66: 33 c0 40... 3.@
.basics_for_data_set_5_difficulty_2
    equb &4c,   1,   2                                                ; 4e6d: 4c 01 02    L..
.basics_for_data_set_12_difficulty_5
    equb 0, 8                                                         ; 4e70: 00 08       ..
.basics_for_data_set_10_difficulty_4
    equb &c1, &70, &c4, &40, &70, &8c, &33,   0, &45,   8, &c1, &70   ; 4e72: c1 70 c4... .p.
    equb &c2, &10, &10, &c4                                           ; 4e7e: c2 10 10... ...
.basics_for_data_set_8_difficulty_5
    equb &0c, &50,   3, &dc, &21, &1c, &1c                            ; 4e82: 0c 50 03... .P.
.basics_for_data_set_11_difficulty_3
    equb   4,   8, &c0, &11, &40,   3, &dc, &31, &14                  ; 4e89: 04 08 c0... ...
.basics_for_data_set_3_difficulty_5
    equb   4, &31, &47, &14,   4, &cc                                 ; 4e92: 04 31 47... .1G
    equs "@\0"                                                        ; 4e98: 40 5c 30    @\0
    equb   4, &0c                                                     ; 4e9b: 04 0c       ..
.basics_for_data_set_1_difficulty_1
    equb   0, &53, &14,   4, &cc, &48, &47,   7,   0, &c3, &3c,   1   ; 4e9d: 00 53 14... .S.
    equb   0, &50, &77                                                ; 4ea9: 00 50 77    .Pw
.basics_for_data_set_3_difficulty_4
    equb &0c,   1                                                     ; 4eac: 0c 01       ..
.basics_for_data_set_8_difficulty_1
    equb   2,   1, &34                                                ; 4eae: 02 01 34    ..4
.basics_for_data_set_3_difficulty_3
    equb &0c, &11                                                     ; 4eb1: 0c 11       ..
.basics_for_data_set_13_difficulty_2
    equb &4b                                                          ; 4eb3: 4b          K
.basics_for_data_set_12_difficulty_4
    equb &10, &17,   4, &80, &70, &cc, &0c, &70,   0, &43, &12        ; 4eb4: 10 17 04... ...
.basics_for_data_set_7_difficulty_2
    equb   0, &c5, &0c, &5c,   0, &0c, &70,   0, &41, &c3,   0, &40   ; 4ebf: 00 c5 0c... ...
    equb &c0,   3                                                     ; 4ecb: c0 03       ..
.basics_for_data_set_2_difficulty_3
    equb &3c,   0, &10, &c0,   4, &31                                 ; 4ecd: 3c 00 10... <..
.basics_for_data_set_1_difficulty_2
    equb &43, &14,   4,   3, &3c,   0, &10, &e0, &c0,   0             ; 4ed3: 43 14 04... C..
.basics_for_data_set_8_difficulty_3
    equb &30,   0, &ce,   0, &0c,   5,   7,   8, &43, &3c             ; 4edd: 30 00 ce... 0..
.basics_for_data_set_2_difficulty_4
    equb   4,   0, &ce,   0,   4, &31, &88                            ; 4ee7: 04 00 ce... ...
.basics_for_data_set_6_difficulty_2
    equb &c3,   0, &45,   0, &3d, &c3, &11, &c1, &c0, &70, &cc,   1   ; 4eee: c3 00 45... ..E
    equb &14,   0, &35                                                ; 4efa: 14 00 35    ..5
.basics_for_data_set_12_difficulty_3
    equb &c3,   1, &40, &43, &14, &31, &40, &1f, &c4                  ; 4efd: c3 01 40... ..@
.basics_for_data_set_8_difficulty_4
    equb   5, &c1, &20                                                ; 4f06: 05 c1 20    ..
.basics_for_data_set_5_difficulty_3
    equb &1c,   6,   4, &31                                           ; 4f09: 1c 06 04... ...
.basics_for_data_set_7_difficulty_3
    equb &40                                                          ; 4f0d: 40          @
.basics_for_data_set_5_difficulty_5
    equb &0c, &e0, &84, &70, &70, &84, &31, &c0, &10,   1,   7, &70   ; 4f0e: 0c e0 84... ...
    equb &c0, &10, &20, &13, &40,   1, &16                            ; 4f1a: c0 10 20... ..
.basics_for_data_set_1_difficulty_3
    equb &b1,   1, &70, &4c,   7, &0c, &c0, &47,   0,   4, &31, &20   ; 4f21: b1 01 70... ..p
.basics_for_data_set_11_difficulty_4
    equb &0c, &50, &c5, &c0,   0, &c7,   0,   4, &1c, &30,   4, &0c   ; 4f2d: 0c 50 c5... .P.
    equb   0, &33, &c0,   1, &0c, &40, &43, &14                       ; 4f39: 00 33 c0... .3.

.unused47
    equs "1@`3"                                                       ; 4f41: 31 40 60... 1@`
    equb &c0, &31, &0e, &0c,   1,   3,   0, &0c, &e0,   0, &c0, &50   ; 4f45: c0 31 0e... .1.
    equb &10, &c4, &33, &c0, &40, &0c, &e0,   0, &43, &12,   0, &40   ; 4f51: 10 c4 33... ..3
    equb   4, &50,   0, &5c, &31, &10, &1c,   3, &0c, &c0, &11, &40   ; 4f5d: 04 50 00... .P.
    equb   0, &5c, &30, &94,   4, &31, &43, &14,   1, &fe,   8, &44   ; 4f69: 00 5c 30... .\0
    equb   7, &41, &c2, &30,   4, &50,   0, &f7, &0c, &41,   3, &0c   ; 4f75: 07 41 c2... .A.
    equb &50, &c5,   1, &33, &10, &17, &0c,   1,   3,   0, &14, &8d   ; 4f81: 50 c5 01... P..
    equb   1, &33, &10, &15,   4, &c0, &30, &cc,   4, &50,   0, &43   ; 4f8d: 01 33 10... .3.
    equb &83,   0, &40,   4, &5c,   0,   4, &50, &c4, &0d, &c3,   0   ; 4f99: 83 00 40... ..@
    equb &40, &c0,   3, &3c,   0, &10, &c4,   7, &0c,   3,   3,   0   ; 4fa5: 40 c0 03... @..
    equb   3, &0c,   0,   0, &30, &c0,   0, &30,   0, &cf,   0,   0   ; 4fb1: 03 0c 00... ...
    equb &30,   0, &0c,   0, &c3,   0,   0, &cf,   0,   0, &30, &30   ; 4fbd: 30 00 0c... 0..
    equb   0,   0,   0, &33,   0, &c3,   0, &c0, &c2, &30, &cc,   0   ; 4fc9: 00 00 00... ...
    equb   0, &23, &80,   0, &0c, &20,   3,   0,   0,   0, &0f, &30   ; 4fd5: 00 23 80... .#.
    equb &c0, &30, &30, &0c, &33,   0,   0,   0,   0,   0,   0,   0   ; 4fe1: c0 30 30... .00
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 4fed: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0                            ; 4ff9: 00 00 00... ...

.map_row_0
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83             ; 5000: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83             ; 500a: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83             ; 5014: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83             ; 501e: 83 83 83... ...

.current_status_bar_sprites
    equb sprite_1                                                     ; 5028: 33          3
    equb sprite_slash                                                 ; 5029: 3e          >
    equs "A=EVAC"                                                     ; 502a: 41 3d 45... A=E
    equb sprite_space                                                 ; 5030: 00          .
    equb sprite_space                                                 ; 5031: 00          .
    equb sprite_space                                                 ; 5032: 00          .
    equb sprite_space                                                 ; 5033: 00          .
    equs "REYALP"                                                     ; 5034: 52 45 59... REY
    equb sprite_space                                                 ; 503a: 00          .
    equb sprite_1                                                     ; 503b: 33          3
.unused48
    equb &83, &83, &83,   1                                           ; 503c: 83 83 83... ...

.map_row_1
    equb &83, &81, &81, &80, &80, &80, &80, &80, &80, &80             ; 5040: 83 81 81... ...
    equb &80, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 504a: 80 81 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5054: 81 81 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &83             ; 505e: 81 81 81... ...

.default_status_bar
    equs "PLAYER"                                                     ; 5068: 50 4c 41... PLA
    equb sprite_space                                                 ; 506e: 00          .
    equb sprite_1                                                     ; 506f: 33          3
    equb sprite_comma                                                 ; 5070: 3f          ?
    equb sprite_space                                                 ; 5071: 00          .
    equb sprite_3                                                     ; 5072: 35          5
    equb sprite_space                                                 ; 5073: 00          .
    equs "MEN"                                                        ; 5074: 4d 45 4e    MEN
    equb sprite_space                                                 ; 5077: 00          .
    equb sprite_space                                                 ; 5078: 00          .
    equs "A"                                                          ; 5079: 41          A
    equb sprite_slash                                                 ; 507a: 3e          >
    equb sprite_2                                                     ; 507b: 34          4
.unused49
    equb &83, &83, &83, &83                                           ; 507c: 83 83 83... ...

.map_row_2
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5080: 83 81 81... ...
    equb &80, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 508a: 80 81 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5094: 81 81 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &83             ; 509e: 81 81 81... ...

.unused50
    equb   1, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 50a8: 01 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 50b4: 83 83 83... ...

.map_row_3
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 50c0: 83 81 81... ...
    equb &80, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 50ca: 80 81 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 50d4: 81 81 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &83             ; 50de: 81 81 81... ...

.unused51
    equb   1, &83, &83, &83, &83, &83, &83,   8, &83, &83,   2, &83   ; 50e8: 01 83 83... ...
    equb &83, &83, &83, &83,   5, &83,   5,   4, &83, &83, &83, &83   ; 50f4: 83 83 83... ...

.map_row_4
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5100: 83 81 81... ...
    equb &80, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 510a: 80 81 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5114: 81 81 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &83             ; 511e: 81 81 81... ...

.unused_fragment_of_basic1
    equs "|M|N"                                                       ; 5128: 7c 4d 7c... |M|
    equb &0d,   0, &1e, &23                                           ; 512c: 0d 00 1e... ...
    equs "*KEY7 *SAVE C.GA"                                           ; 5130: 2a 4b 45... *KE

.map_row_5
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5140: 83 81 81... ...
    equb &80, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 514a: 80 81 81... ...
    equb &81, &81, &96, &81, &96, &81, &96, &81, &96, &81             ; 5154: 81 81 96... ...
    equb &96, &81, &96, &81, &81, &81, &81, &81, &81, &83             ; 515e: 96 81 96... ...

.unused_fragment_of_basic2
    equs ";0;"                                                        ; 5168: 3b 30 3b    ;0;
    equb &0d,   0, &3c, &10                                           ; 516b: 0d 00 3c... ..<
    equs " *FX 178,0,0"                                               ; 516f: 20 2a 46...  *F
    equb &0d,   0, &46, &0c, &20                                      ; 517b: 0d 00 46... ..F

.map_row_6
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5180: 83 81 81... ...
    equb &80, &81, &81, &81, &81, &81, &81, &81, &80, &80             ; 518a: 80 81 81... ...
    equb &80, &81, &85, &81, &85, &81, &85, &81, &85, &81             ; 5194: 80 81 85... ...
    equb &85, &81, &85, &81, &81, &81, &81, &81, &81, &83             ; 519e: 85 81 85... ...

.unused52
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 51a8: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 51b4: 83 83 83... ...

.map_row_7
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 51c0: 83 81 81... ...
    equb &80, &81, &81, &81, &81, &81, &81, &81, &80, &80             ; 51ca: 80 81 81... ...
    equb &80, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 51d4: 80 81 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &83             ; 51de: 81 81 81... ...

.unused53
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 51e8: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 51f4: 83 83 83... ...

.map_row_8
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5200: 83 81 81... ...
    equb &80, &80, &80, &8e, &9e, &9e, &80, &80, &80, &80             ; 520a: 80 80 80... ...
    equb &80, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5214: 80 81 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &83             ; 521e: 81 81 81... ...

.unused54
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 5228: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 5234: 83 83 83... ...

.map_row_9
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5240: 83 81 81... ...
    equb &81, &80, &81, &80, &81, &80, &81, &80, &84, &80             ; 524a: 81 80 81... ...
    equb &84, &80, &81, &81, &81, &81, &81, &81, &81, &81             ; 5254: 84 80 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &83             ; 525e: 81 81 81... ...

.unused55
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 5268: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 5274: 83 83 83... ...

.map_row_10
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5280: 83 81 81... ...
    equb &81, &8e, &81, &80, &81, &80, &81, &80, &81, &80             ; 528a: 81 8e 81... ...
    equb &81, &80, &81, &81, &81, &81, &81, &81, &81, &81             ; 5294: 81 80 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &83             ; 529e: 81 81 81... ...

.unused56
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 52a8: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 52b4: 83 83 83... ...

.map_row_11
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 52c0: 83 81 81... ...
    equb &81, &80, &81, &80, &81, &80, &81, &80, &81, &80             ; 52ca: 81 80 81... ...
    equb &81, &80, &81, &81, &81, &81, &81, &81, &81, &81             ; 52d4: 81 80 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &83             ; 52de: 81 81 81... ...

.unused57
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 52e8: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 52f4: 83 83 83... ...

.map_row_12
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5300: 83 81 81... ...
    equb &81, &80, &81, &80, &81, &80, &81, &80, &81, &80             ; 530a: 81 80 81... ...
    equb &81, &80, &81, &81, &81, &81, &81, &81, &81, &81             ; 5314: 81 80 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &83             ; 531e: 81 81 81... ...

.unused58
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 5328: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 5334: 83 83 83... ...

.map_row_13
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5340: 83 81 81... ...
    equb &81, &80, &81, &80, &81, &80, &81, &80, &81, &80             ; 534a: 81 80 81... ...
    equb &81, &80, &81, &81, &81, &81, &81, &81, &81, &81             ; 5354: 81 80 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &83             ; 535e: 81 81 81... ...

.unused59
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 5368: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 5374: 83 83 83... ...

.map_row_14
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5380: 83 81 81... ...
    equb &81, &80, &81, &80, &81, &80, &81, &80, &81, &c4             ; 538a: 81 80 81... ...
    equb &81, &80, &81, &81, &81, &81, &81, &81, &81, &81             ; 5394: 81 80 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &83             ; 539e: 81 81 81... ...

.unused60
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 53a8: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 53b4: 83 83 83... ...

.map_row_15
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 53c0: 83 81 81... ...
    equb &81, &80, &81, &80, &81, &80, &81, &80, &81, &80             ; 53ca: 81 80 81... ...
    equb &81, &80, &81, &81, &81, &81, &81, &81, &81, &81             ; 53d4: 81 80 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &83             ; 53de: 81 81 81... ...

.unused61
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 53e8: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 53f4: 83 83 83... ...

.map_row_16
.credits
    equb sprite_full_stop                                             ; 5400: 40          @
    equb sprite_full_stop                                             ; 5401: 40          @
    equb sprite_full_stop                                             ; 5402: 40          @
    equb sprite_full_stop                                             ; 5403: 40          @
    equs "BOULDERDASH"                                                ; 5404: 42 4f 55... BOU
    equb sprite_full_stop                                             ; 540f: 40          @
    equb sprite_full_stop                                             ; 5410: 40          @
    equb sprite_full_stop                                             ; 5411: 40          @
    equs "WRITTEN"                                                    ; 5412: 57 52 49... WRI
    equb sprite_space                                                 ; 5419: 00          .
    equs "BY"                                                         ; 541a: 42 59       BY
    equb sprite_space                                                 ; 541c: 00          .
    equs "A"                                                          ; 541d: 41          A
    equb sprite_full_stop                                             ; 541e: 40          @
    equs "G"                                                          ; 541f: 47          G
    equb sprite_full_stop                                             ; 5420: 40          @
    equs "BENNETT"                                                    ; 5421: 42 45 4e... BEN
    equb sprite_space                                                 ; 5428: 00          .
    equb sprite_1                                                     ; 5429: 33          3
    equb sprite_9                                                     ; 542a: 3b          ;
    equb sprite_8                                                     ; 542b: 3a          :
    equb sprite_8                                                     ; 542c: 3a          :
    equb sprite_full_stop                                             ; 542d: 40          @
    equb sprite_full_stop                                             ; 542e: 40          @
    equb sprite_full_stop                                             ; 542f: 40          @
    equs "DEDICATED"                                                  ; 5430: 44 45 44... DED
    equb sprite_space                                                 ; 5439: 00          .
    equs "TO"                                                         ; 543a: 54 4f       TO
    equb sprite_space                                                 ; 543c: 00          .
    equs "J"                                                          ; 543d: 4a          J
    equb sprite_full_stop                                             ; 543e: 40          @
    equs "M"                                                          ; 543f: 4d          M
.map_row_17
    equb sprite_full_stop                                             ; 5440: 40          @
    equs "BARNES"                                                     ; 5441: 42 41 52... BAR
    equb sprite_comma                                                 ; 5447: 3f          ?
    equs "DEBBIE"                                                     ; 5448: 44 45 42... DEB
    equb sprite_comma                                                 ; 544e: 3f          ?
    equs "MARK"                                                       ; 544f: 4d 41 52... MAR
    equb sprite_space                                                 ; 5453: 00          .
    equs "BENNETT"                                                    ; 5454: 42 45 4e... BEN
    equb sprite_comma                                                 ; 545b: 3f          ?
    equs "OUR"                                                        ; 545c: 4f 55 52    OUR
    equb sprite_space                                                 ; 545f: 00          .
    equs "MAM"                                                        ; 5460: 4d 41 4d    MAM
    equb sprite_comma                                                 ; 5463: 3f          ?
    equs "MIC"                                                        ; 5464: 4d 49 43    MIC
    equb sprite_comma                                                 ; 5467: 3f          ?
    equs "BURNY"                                                      ; 5468: 42 55 52... BUR
    equb sprite_comma                                                 ; 546d: 3f          ?
    equs "N"                                                          ; 546e: 4e          N
    equb sprite_full_stop                                             ; 546f: 40          @
    equs "JENNISON"                                                   ; 5470: 4a 45 4e... JEN
    equb sprite_comma                                                 ; 5478: 3f          ?
    equs "CRAIG"                                                      ; 5479: 43 52 41... CRA
    equb sprite_space                                                 ; 547e: 00          .
.l547f
map_row_18 = l547f+1
    equs "DARRELL"                                                    ; 547f: 44 41 52... DAR
    equb sprite_comma                                                 ; 5486: 3f          ?
    equs "T"                                                          ; 5487: 54          T
    equb sprite_full_stop                                             ; 5488: 40          @
    equs "SECKER"                                                     ; 5489: 53 45 43... SEC
    equb sprite_comma                                                 ; 548f: 3f          ?
    equs "TONY"                                                       ; 5490: 54 4f 4e... TON
    equb sprite_space                                                 ; 5494: 00          .
    equs "FROM"                                                       ; 5495: 46 52 4f... FRO
    equb sprite_space                                                 ; 5499: 00          .
    equs "THE"                                                        ; 549a: 54 48 45    THE
    equb sprite_space                                                 ; 549d: 00          .
    equs "PALACE"                                                     ; 549e: 50 41 4c... PAL
    equb sprite_comma                                                 ; 54a4: 3f          ?
    equs "TONY"                                                       ; 54a5: 54 4f 4e... TON
    equb sprite_space                                                 ; 54a9: 00          .
    equs "FROM"                                                       ; 54aa: 46 52 4f... FRO
    equb sprite_space                                                 ; 54ae: 00          .
    equs "LEAZES"                                                     ; 54af: 4c 45 41... LEA
    equb sprite_comma                                                 ; 54b5: 3f          ?
    equs "SOLAR"                                                      ; 54b6: 53 4f 4c... SOL
    equb sprite_space                                                 ; 54bb: 00          .
.l54bc
map_row_19 = l54bc+4
    equs "WORKSHOP"                                                   ; 54bc: 57 4f 52... WOR
    equb sprite_comma                                                 ; 54c4: 3f          ?
    equs "ELSIE"                                                      ; 54c5: 45 4c 53... ELS
    equb sprite_comma                                                 ; 54ca: 3f          ?
    equs "PRIMROSE"                                                   ; 54cb: 50 52 49... PRI
    equb sprite_comma                                                 ; 54d3: 3f          ?
    equs "STRANGE"                                                    ; 54d4: 53 54 52... STR
    equb sprite_space                                                 ; 54db: 00          .
    equs "SCIENCE"                                                    ; 54dc: 53 43 49... SCI
    equb sprite_space                                                 ; 54e3: 00          .
    equs "PINBALL"                                                    ; 54e4: 50 49 4e... PIN
    equb sprite_space                                                 ; 54eb: 00          .
    equs "AND"                                                        ; 54ec: 41 4e 44    AND
    equb sprite_space                                                 ; 54ef: 00          .
    equs "COSMIC"                                                     ; 54f0: 43 4f 53... COS
    equb sprite_space                                                 ; 54f6: 00          .
    equs "MONSTERS"                                                   ; 54f7: 4d 4f 4e... MON
    equb sprite_full_stop                                             ; 54ff: 40          @

.map_row_20
    equb &83, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5500: 83 81 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 550a: 81 81 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &81             ; 5514: 81 81 81... ...
    equb &81, &81, &81, &81, &81, &81, &81, &81, &81, &83             ; 551e: 81 81 81... ...

.unused62
    equb   1, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 5528: 01 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83, &83   ; 5534: 83 83 83... ...

.map_row_21
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83             ; 5540: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83             ; 554a: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83             ; 5554: 83 83 83... ...
    equb &83, &83, &83, &83, &83, &83, &83, &83, &83, &83             ; 555e: 83 83 83... ...


; unused copy of routine at $5700
.unused63
    lda #osbyte_flush_buffer_class                                    ; 5568: a9 0f       ..
    ldx #0                                                            ; 556a: a2 00       ..
    jsr osbyte                                                        ; 556c: 20 f4 ff     ..            ; Flush all buffers (X=0)
    ldx #5                                                            ; 556f: a2 05       ..
.loop_c5571
    lda tune_start_position_per_channel,x                             ; 5571: bd e8 56    ..V
    sta tune_position_per_channel,x                                   ; 5574: 9d d0 56    ..V
    dex                                                               ; 5577: ca          .
    bpl loop_c5571                                                    ; 5578: 10 f7       ..
    rts                                                               ; 557a: 60          `

.unused66
    equb &a9,   0, &85, &8e, &a9                                      ; 557b: a9 00 85... ...

.map_row_22
    equb &83, &b8, &e5, &8e, &aa, &a0, &ff, &a9, &80, &a0             ; 5580: 83 b8 e5... ...
    equb &f4, &ff, &8a, &f0, &e6, &a6, &8e, &8a, &8a, &8a             ; 558a: f4 ff 8a... ...
    equb &8a, &85, &8f, &bd, &d0, &d6, &a8, &e0, &80, &d0             ; 5594: 8a 85 8f... ...
    equb &84, &c0, &c1, &f0, &c5, &b9, &80, &d6, &c9, &83             ; 559e: 84 c0 c1... ...

.unused64
    equb &90, &1a, &a8, &bd, &d3, &56, &d0,   6, &b9, &1a, &56, &9d   ; 55a8: 90 1a a8... ...
    equb &d3, &56, &b9, &0e, &56, &48, &b9, &14, &56, &a8, &68, &de   ; 55b4: d3 56 b9... .V.

.map_row_23
    equb &d3, &56, &10, &12, &48, &29,   3, &a8, &a9,   0             ; 55c0: d3 56 10... .V.
    equb &9d, &d3, &56, &b9, &ee, &56, &a8, &68, &29, &fc             ; 55ca: 9d d3 56... ..V
    equb   9,   1, &48, &bd, &d3, &56, &d0,   3, &fe, &d0             ; 55d4: 09 01 48... ..H
    equb &56, &68, &a6, &8f, &9d, &bc, &56, &98, &9d, &be             ; 55de: 56 68 a6... Vh.

.unused65
    equb &56, &8a, &18, &69, &b8, &aa, &a0, &56, &a9,   7, &20, &f1   ; 55e8: 56 8a 18... V..
    equb &ff, &e6, &8e, &26, &8e, &e0,   3, &d0, &82, &60, &83, &83   ; 55f4: ff e6 8e... ...

.tune_pitches_and_commands
    equb &48, &58, &5c, &64, &58, &5c, &64, &70, &5c, &64, &70, &78   ; 5600: 48 58 5c... HX\
    equb &49, &45, &19,   5, &11, &24, &20, &19,   5, &13,   9, &25   ; 560c: 49 45 19... IE.
    equb   3,   5, &c8, &a8, &a8, &a8, &a8, &18, &c9, &10, &c9, &18   ; 5618: 03 05 c8... ...
    equb &c9, &10, &c9, &18, &c9, &10, &c9, &18, &c9, &10, &a8, &a8   ; 5624: c9 10 c9... ...
    equb &a8, &88, &a8, &94, &8c, &40, &58, &5c, &64, &70, &a8, &a0   ; 5630: a8 88 a8... ...
    equb &94, &8c, &88, &78, &70, &48, &58, &5c, &64, &58, &5c, &64   ; 563c: 94 8c 88... ...
    equb &70, &5c, &64, &70, &78, &48, &b5, &b0, &18, &78,   5, &11   ; 5648: 70 5c 64... p\d
    equb &80, &20, &18, &78,   5, &11, &a9,   8, &78, &25,   1, &a9   ; 5654: 80 20 18... . .
    equb   5, &c8, &ca, &58, &78, &64, &5c, &10, &28, &2c, &34, &40   ; 5660: 05 c8 ca... ...
    equb &78, &70, &64, &5c, &58, &48, &40, &48, &58, &5c, &64, &58   ; 566c: 78 70 64... xpd
    equb &5c, &64, &70, &5c, &64, &70, &78, &48, &a9, &a4, &19,   5   ; 5678: 5c 64 70... \dp
    equb &11, &24, &20, &19,   5, &13,   9, &25,   3,   5, &c8, &cb   ; 5684: 11 24 20... .$
    equb &cd, &89, &8d, &89, &8d, &89, &8d, &81, &85, &a9, &a1, &9d   ; 5690: cd 89 8d... ...
    equb &95, &a1, &a1, &8d, &a1, &89, &8d, &89, &8d, &89, &8d, &cc   ; 569c: 95 a1 a1... ...
    equb &70, &94, &80, &78, &2c, &40, &48, &50, &5c, &94, &8c, &80   ; 56a8: 70 94 80... p..
    equb &78, &70, &64, &5c                                           ; 56b4: 78 70 64... xpd
.sound1
    equw 1                                                            ; 56b8: 01 00       ..             ; channel
    equw 10                                                           ; 56ba: 0a 00       ..             ; amplitude
.sound1_pitch
    equw 69                                                           ; 56bc: 45 00       E.             ; pitch
.sound1_duration
    equw 6                                                            ; 56be: 06 00       ..             ; duration
.sound2
    equw 2                                                            ; 56c0: 02 00       ..             ; channel
    equw 11                                                           ; 56c2: 0b 00       ..             ; amplitude
    equw 181                                                          ; 56c4: b5 00       ..             ; pitch
    equw 6                                                            ; 56c6: 06 00       ..             ; duration
.sound3
    equw 3                                                            ; 56c8: 03 00       ..             ; channel
    equw 12                                                           ; 56ca: 0c 00       ..             ; amplitude
    equw 169                                                          ; 56cc: a9 00       ..             ; pitch
    equw 6                                                            ; 56ce: 06 00       ..             ; duration
.tune_position_per_channel
    equb &0e, &4f, &81                                                ; 56d0: 0e 4f 81    .O.
.tune_note_repeat_per_channel
    equb 0, 0, 0                                                      ; 56d3: 00 00 00    ...
.command_pitch
    equb &19, &a9, &79, &79, &81, &79                                 ; 56d6: 19 a9 79... ..y
.command_note_durations
    equb &12,   3,   3,   3,   8,   7                                 ; 56dc: 12 03 03... ...
.command_note_repeat_counts
    equb   1,   7, &40, &0f,   1,   1                                 ; 56e2: 01 07 40... ..@
.tune_start_position_per_channel
    equb   0, &41, &73                                                ; 56e8: 00 41 73    .As
    equb 0, 0, 0                                                      ; 56eb: 00 00 00    ...
.tune_note_durations_table
    equb  3,  6,  9, 12                                               ; 56ee: 03 06 09... ...
.unused67
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                     ; 56f2: 00 00 00... ...

.reset_tune
    lda #osbyte_flush_buffer_class                                    ; 5700: a9 0f       ..
    ldx #0                                                            ; 5702: a2 00       ..
    jsr osbyte                                                        ; 5704: 20 f4 ff     ..            ; Flush all buffers (X=0)
    ldx #5                                                            ; 5707: a2 05       ..
.reset_tune_loop
    lda tune_start_position_per_channel,x                             ; 5709: bd e8 56    ..V
    sta tune_position_per_channel,x                                   ; 570c: 9d d0 56    ..V
    dex                                                               ; 570f: ca          .
    bpl reset_tune_loop                                               ; 5710: 10 f7       ..
    rts                                                               ; 5712: 60          `

.update_tune
    lda #0                                                            ; 5713: a9 00       ..
    sta sound_channel                                                 ; 5715: 85 8e       ..
.update_channels_loop
    lda #&fa                                                          ; 5717: a9 fa       ..
    sec                                                               ; 5719: 38          8
    sbc sound_channel                                                 ; 571a: e5 8e       ..
    tax                                                               ; 571c: aa          .
    ldy #&ff                                                          ; 571d: a0 ff       ..
    lda #osbyte_read_adc_or_get_buffer_status                         ; 571f: a9 80       ..
    jsr osbyte                                                        ; 5721: 20 f4 ff     ..            ; Read buffer status or ADC channel
    txa                                                               ; 5724: 8a          .
    beq move_to_next_tune_channel                                     ; 5725: f0 66       .f
    ldx sound_channel                                                 ; 5727: a6 8e       ..
    txa                                                               ; 5729: 8a          .
    asl a                                                             ; 572a: 0a          .
    asl a                                                             ; 572b: 0a          .
    asl a                                                             ; 572c: 0a          .
    sta offset_to_sound                                               ; 572d: 85 8f       ..
    lda tune_position_per_channel,x                                   ; 572f: bd d0 56    ..V
    tay                                                               ; 5732: a8          .
    cpx #0                                                            ; 5733: e0 00       ..
    bne skip_end_of_tune_check                                        ; 5735: d0 04       ..
    cpy #&41                                                          ; 5737: c0 41       .A
    beq reset_tune                                                    ; 5739: f0 c5       ..
.skip_end_of_tune_check
    lda tune_pitches_and_commands,y                                   ; 573b: b9 00 56    ..V
    cmp #200                                                          ; 573e: c9 c8       ..
    bcc note_found                                                    ; 5740: 90 1a       ..
    tay                                                               ; 5742: a8          .
    lda tune_note_repeat_per_channel,x                                ; 5743: bd d3 56    ..V
    bne skip_reset_note_repeat                                        ; 5746: d0 06       ..
    lda command_note_repeat_counts-200,y                              ; 5748: b9 1a 56    ..V
    sta tune_note_repeat_per_channel,x                                ; 574b: 9d d3 56    ..V
.skip_reset_note_repeat
    lda command_pitch-200,y                                           ; 574e: b9 0e 56    ..V
    pha                                                               ; 5751: 48          H
    lda command_note_durations - 200,y                                ; 5752: b9 14 56    ..V
    tay                                                               ; 5755: a8          .
    pla                                                               ; 5756: 68          h
    dec tune_note_repeat_per_channel,x                                ; 5757: de d3 56    ..V
    bpl c576e                                                         ; 575a: 10 12       ..
.note_found
    pha                                                               ; 575c: 48          H
    and #3                                                            ; 575d: 29 03       ).
    tay                                                               ; 575f: a8          .
    lda #0                                                            ; 5760: a9 00       ..
    sta tune_note_repeat_per_channel,x                                ; 5762: 9d d3 56    ..V
    lda tune_note_durations_table,y                                   ; 5765: b9 ee 56    ..V
    tay                                                               ; 5768: a8          .
    pla                                                               ; 5769: 68          h
    and #&fc                                                          ; 576a: 29 fc       ).
    ora #1                                                            ; 576c: 09 01       ..
.c576e
    pha                                                               ; 576e: 48          H
    lda tune_note_repeat_per_channel,x                                ; 576f: bd d3 56    ..V
    bne skip_increment_tune_position                                  ; 5772: d0 03       ..
    inc tune_position_per_channel,x                                   ; 5774: fe d0 56    ..V
.skip_increment_tune_position
    pla                                                               ; 5777: 68          h
    ldx offset_to_sound                                               ; 5778: a6 8f       ..
    sta sound1_pitch,x                                                ; 577a: 9d bc 56    ..V
    tya                                                               ; 577d: 98          .
    sta sound1_duration,x                                             ; 577e: 9d be 56    ..V
    txa                                                               ; 5781: 8a          .
    clc                                                               ; 5782: 18          .
    adc #<sound1                                                      ; 5783: 69 b8       i.
    tax                                                               ; 5785: aa          .
    ldy #>sound1                                                      ; 5786: a0 56       .V
    lda #osword_sound                                                 ; 5788: a9 07       ..
    jsr osword                                                        ; 578a: 20 f1 ff     ..            ; SOUND command
.move_to_next_tune_channel
    inc sound_channel                                                 ; 578d: e6 8e       ..
    ldx sound_channel                                                 ; 578f: a6 8e       ..
    cpx #3                                                            ; 5791: e0 03       ..
    bne update_channels_loop                                          ; 5793: d0 82       ..
    rts                                                               ; 5795: 60          `

.unused68
    equb &d0,   7, &c8, &c0,   6, &d0,   2, &a0,   1, &84, &89, &85   ; 5796: d0 07 c8... ...
    equb &87, &c9, &10, &30, &9d, &ee, &1e, &32, &d0, &98, &60,   0   ; 57a2: 87 c9 10... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 57ae: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 57ba: 00 00 00... ...
    equb   0, &cb, &36,   5, &ff, &85, &18,   0,   0,   0, &85, &18   ; 57c6: 00 cb 36... ..6
    equb   0,   0, &8f, &29, &80,   0,   0, &cb, &36,   5, &ff, &85   ; 57d2: 00 00 8f... ...
    equb &18,   0,   0,   0, &c3, &36,   5, &ff, &82, &40,   0,   0   ; 57de: 18 00 00... ...
    equb   0, &ef, &ff, &9d,   0,   0,   0,   0,   0, &14,   0,   0   ; 57ea: 00 ef ff... ...
    equb   0, &81,   0,   0,   0, &83,   0,   0,   0,   0             ; 57f6: 00 81 00... ...
.big_rockford_destination_screen_address
.pydis_end
    assert 'A' == &41
    assert 'B' == &42
    assert 'S' == &53
    assert 16*(sprite_rockford_blinking1-0x20) + sprite_rockford_blinking1-0x20 == &00
    assert 16*(sprite_rockford_blinking1-0x20) + sprite_rockford_blinking2-0x20 == &01
    assert 16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_down1-0x20 == &05
    assert 16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_down2-0x20 == &06
    assert 16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_up1-0x20 == &08
    assert 16*(sprite_rockford_blinking1-0x20) + sprite_rockford_moving_up2-0x20 == &09
    assert 16*(sprite_rockford_blinking2-0x20) + sprite_rockford_blinking2-0x20 == &11
    assert 16*(sprite_rockford_blinking2-0x20) + sprite_rockford_moving_down2-0x20 == &16
    assert 16*(sprite_rockford_blinking2-0x20) + sprite_rockford_moving_up2-0x20 == &19
    assert 16*(sprite_rockford_blinking3-0x20) + sprite_rockford_blinking3-0x20 == &22
    assert 16*(sprite_rockford_blinking3-0x20) + sprite_rockford_moving_down1-0x20 == &25
    assert 16*(sprite_rockford_blinking3-0x20) + sprite_rockford_moving_down3-0x20 == &27
    assert 16*(sprite_rockford_blinking3-0x20) + sprite_rockford_moving_up1-0x20 == &28
    assert 16*(sprite_rockford_moving_down1-0x20) + sprite_rockford_blinking1-0x20 == &50
    assert 16*(sprite_rockford_moving_down1-0x20) + sprite_rockford_blinking3-0x20 == &52
    assert 16*(sprite_rockford_moving_down1-0x20) + sprite_rockford_moving_down1-0x20 == &55
    assert 16*(sprite_rockford_moving_down1-0x20) + sprite_rockford_moving_up2-0x20 == &59
    assert 16*(sprite_rockford_moving_down2-0x20) + sprite_rockford_blinking1-0x20 == &60
    assert 16*(sprite_rockford_moving_down2-0x20) + sprite_rockford_blinking2-0x20 == &61
    assert 16*(sprite_rockford_moving_down2-0x20) + sprite_rockford_blinking3-0x20 == &62
    assert 16*(sprite_rockford_moving_down2-0x20) + sprite_rockford_moving_down1-0x20 == &65
    assert 16*(sprite_rockford_moving_down3-0x20) + sprite_rockford_blinking1-0x20 == &70
    assert 16*(sprite_rockford_moving_down3-0x20) + sprite_rockford_moving_down1-0x20 == &75
    assert 16*(sprite_rockford_moving_down3-0x20) + sprite_rockford_moving_up2-0x20 == &79
    assert 16*(sprite_rockford_moving_up1-0x20) + sprite_rockford_blinking1-0x20 == &80
    assert 16*(sprite_rockford_moving_up1-0x20) + sprite_rockford_blinking2-0x20 == &81
    assert 16*(sprite_rockford_moving_up2-0x20) + sprite_rockford_blinking1-0x20 == &90
    assert 16*(sprite_rockford_moving_up2-0x20) + sprite_rockford_blinking2-0x20 == &91
    assert 16*(sprite_rockford_moving_up2-0x20) + sprite_rockford_blinking3-0x20 == &92
    assert 16*(sprite_rockford_moving_up2-0x20) + sprite_rockford_moving_down1-0x20 == &95
    assert 16*(sprite_rockford_winking1-0x20) + sprite_rockford_moving_down1-0x20 == &35
    assert 16*(sprite_rockford_winking1-0x20) + sprite_rockford_moving_down2-0x20 == &36
    assert 16*(sprite_rockford_winking2-0x20) + sprite_rockford_moving_down1-0x20 == &45
    assert 16*(sprite_rockford_winking2-0x20) + sprite_rockford_moving_down3-0x20 == &47
    assert 16*(sprite_rockford_winking2-0x20) + sprite_rockford_moving_up1-0x20 == &48
    assert 20*12 == &f0
    assert 64-40 == &18
    assert <(in_game_sound_block) == &24
    assert <(map_row_1-1) == &3f
    assert <(palette_block) == &29
    assert <(set_clock_value) == &70
    assert <(sprite_addr_space) == &00
    assert <another_array_of_cells == &40
    assert <big_rockford_destination_screen_address == &00
    assert <bonus_life_text == &64
    assert <current_status_bar_sprites == &28
    assert <data_sets == &f4
    assert <demonstration_mode_text == &a0
    assert <game_over_text == &8c
    assert <grid_of_currently_displayed_sprites == &00
    assert <handler_basics == &a5
    assert <handler_firefly == &00
    assert <handler_firefly_in_box == &ca
    assert <handler_flashing_rockford == &e3
    assert <handler_for_horizontal_strip == &f0
    assert <handler_for_vertical_strip == &e0
    assert <handler_fungus == &9e
    assert <handler_magic_wall == &ae
    assert <handler_rockford2 == &00
    assert <highscore_high_status_bar == &50
    assert <highscore_last_status_bar == &dc
    assert <map_row_0 == &00
    assert <map_row_1 == &40
    assert <number_of_players_status_bar == &78
    assert <out_of_time_message == &b4
    assert <pause_message == &c8
    assert <players_and_men_status_bar == &14
    assert <screen_addr_row_28 == &00
    assert <screen_addr_row_30 == &80
    assert <screen_addr_row_6 == &80
    assert <some_array_of_cells == &30
    assert <sound1 == &b8
    assert <sprite_addr_0 == &40
    assert <sprite_addr_1 == &60
    assert <sprite_addr_100 == &60
    assert <sprite_addr_101 == &00
    assert <sprite_addr_102 == &e0
    assert <sprite_addr_103 == &00
    assert <sprite_addr_104 == &00
    assert <sprite_addr_2 == &80
    assert <sprite_addr_3 == &a0
    assert <sprite_addr_4 == &c0
    assert <sprite_addr_5 == &e0
    assert <sprite_addr_6 == &00
    assert <sprite_addr_7 == &20
    assert <sprite_addr_8 == &40
    assert <sprite_addr_9 == &60
    assert <sprite_addr_91 == &60
    assert <sprite_addr_92 == &80
    assert <sprite_addr_93 == &a0
    assert <sprite_addr_94 == &c0
    assert <sprite_addr_95 == &e0
    assert <sprite_addr_97 == &40
    assert <sprite_addr_98 == &e0
    assert <sprite_addr_99 == &80
    assert <sprite_addr_A == &20
    assert <sprite_addr_B == &40
    assert <sprite_addr_C == &60
    assert <sprite_addr_D == &80
    assert <sprite_addr_E == &a0
    assert <sprite_addr_F == &c0
    assert <sprite_addr_G == &e0
    assert <sprite_addr_H == &00
    assert <sprite_addr_I == &20
    assert <sprite_addr_J == &40
    assert <sprite_addr_K == &60
    assert <sprite_addr_L == &80
    assert <sprite_addr_M == &a0
    assert <sprite_addr_N == &c0
    assert <sprite_addr_O == &e0
    assert <sprite_addr_P == &00
    assert <sprite_addr_Q == &20
    assert <sprite_addr_R == &40
    assert <sprite_addr_S == &60
    assert <sprite_addr_T == &80
    assert <sprite_addr_U == &a0
    assert <sprite_addr_V == &c0
    assert <sprite_addr_W == &e0
    assert <sprite_addr_X == &00
    assert <sprite_addr_Y == &20
    assert <sprite_addr_Z == &40
    assert <sprite_addr_boulder1 == &20
    assert <sprite_addr_boulder2 == &40
    assert <sprite_addr_box == &20
    assert <sprite_addr_butterfly1 == &c0
    assert <sprite_addr_butterfly2 == &e0
    assert <sprite_addr_butterfly3 == &00
    assert <sprite_addr_comma == &e0
    assert <sprite_addr_dash == &a0
    assert <sprite_addr_diamond1 == &60
    assert <sprite_addr_diamond2 == &80
    assert <sprite_addr_diamond3 == &a0
    assert <sprite_addr_diamond4 == &c0
    assert <sprite_addr_earth1 == &a0
    assert <sprite_addr_earth2 == &c0
    assert <sprite_addr_explosion1 == &80
    assert <sprite_addr_explosion2 == &a0
    assert <sprite_addr_explosion3 == &c0
    assert <sprite_addr_explosion4 == &e0
    assert <sprite_addr_firefly1 == &20
    assert <sprite_addr_firefly2 == &40
    assert <sprite_addr_firefly3 == &60
    assert <sprite_addr_firefly4 == &80
    assert <sprite_addr_full_stop == &00
    assert <sprite_addr_fungus1 == &80
    assert <sprite_addr_fungus2 == &a0
    assert <sprite_addr_magic_wall1 == &00
    assert <sprite_addr_magic_wall2 == &20
    assert <sprite_addr_magic_wall3 == &40
    assert <sprite_addr_magic_wall4 == &60
    assert <sprite_addr_pathway == &e0
    assert <sprite_addr_rockford_blinking1 == &00
    assert <sprite_addr_rockford_blinking2 == &20
    assert <sprite_addr_rockford_blinking3 == &40
    assert <sprite_addr_rockford_moving_down1 == &a0
    assert <sprite_addr_rockford_moving_down2 == &c0
    assert <sprite_addr_rockford_moving_down3 == &e0
    assert <sprite_addr_rockford_moving_left1 == &40
    assert <sprite_addr_rockford_moving_left2 == &60
    assert <sprite_addr_rockford_moving_left3 == &80
    assert <sprite_addr_rockford_moving_left4 == &a0
    assert <sprite_addr_rockford_moving_right1 == &c0
    assert <sprite_addr_rockford_moving_right2 == &e0
    assert <sprite_addr_rockford_moving_right3 == &00
    assert <sprite_addr_rockford_moving_right4 == &20
    assert <sprite_addr_rockford_moving_up1 == &00
    assert <sprite_addr_rockford_moving_up2 == &20
    assert <sprite_addr_rockford_winking1 == &60
    assert <sprite_addr_rockford_winking2 == &80
    assert <sprite_addr_slash == &c0
    assert <sprite_addr_space == &00
    assert <sprite_addr_titanium_wall1 == &e0
    assert <sprite_addr_titanium_wall2 == &00
    assert <sprite_addr_wall1 == &40
    assert <sprite_addr_wall2 == &60
    assert <sprite_addr_white == &80
    assert <start_of_grid_screen_address == &c0
    assert <status_bar_sprite_numbers == &00
    assert <strip_data == &00
    assert >(in_game_sound_block) == &2c
    assert >(map_row_1-1) == &50
    assert >(palette_block) == &2a
    assert >(set_clock_value) == &1e
    assert >(sprite_addr_space) == &13
    assert >big_rockford_destination_screen_address == &58
    assert >big_rockford_sprite == &34
    assert >current_status_bar_sprites == &50
    assert >data_sets == &4c
    assert >grid_of_currently_displayed_sprites == &0c
    assert >handler_basics == &22
    assert >handler_firefly == &25
    assert >handler_firefly_in_box == &2b
    assert >handler_flashing_rockford == &26
    assert >handler_for_horizontal_strip == &23
    assert >handler_for_vertical_strip == &23
    assert >handler_fungus == &25
    assert >handler_magic_wall == &26
    assert >handler_rockford2 == &26
    assert >map_row_0 == &50
    assert >map_row_1 == &50
    assert >screen_addr_row_28 == &7b
    assert >screen_addr_row_30 == &7d
    assert >screen_addr_row_6 == &5f
    assert >sound1 == &56
    assert >sprite_addr_0 == &19
    assert >sprite_addr_1 == &19
    assert >sprite_addr_100 == &18
    assert >sprite_addr_101 == &19
    assert >sprite_addr_102 == &18
    assert >sprite_addr_103 == &14
    assert >sprite_addr_104 == &14
    assert >sprite_addr_2 == &19
    assert >sprite_addr_3 == &19
    assert >sprite_addr_4 == &19
    assert >sprite_addr_5 == &19
    assert >sprite_addr_6 == &1a
    assert >sprite_addr_7 == &1a
    assert >sprite_addr_8 == &1a
    assert >sprite_addr_9 == &1a
    assert >sprite_addr_91 == &1e
    assert >sprite_addr_92 == &1e
    assert >sprite_addr_93 == &1e
    assert >sprite_addr_94 == &1e
    assert >sprite_addr_95 == &1e
    assert >sprite_addr_97 == &14
    assert >sprite_addr_98 == &15
    assert >sprite_addr_99 == &18
    assert >sprite_addr_A == &1b
    assert >sprite_addr_B == &1b
    assert >sprite_addr_C == &1b
    assert >sprite_addr_D == &1b
    assert >sprite_addr_E == &1b
    assert >sprite_addr_F == &1b
    assert >sprite_addr_G == &1b
    assert >sprite_addr_H == &1c
    assert >sprite_addr_I == &1c
    assert >sprite_addr_J == &1c
    assert >sprite_addr_K == &1c
    assert >sprite_addr_L == &1c
    assert >sprite_addr_M == &1c
    assert >sprite_addr_N == &1c
    assert >sprite_addr_O == &1c
    assert >sprite_addr_P == &1d
    assert >sprite_addr_Q == &1d
    assert >sprite_addr_R == &1d
    assert >sprite_addr_S == &1d
    assert >sprite_addr_T == &1d
    assert >sprite_addr_U == &1d
    assert >sprite_addr_V == &1d
    assert >sprite_addr_W == &1d
    assert >sprite_addr_X == &1e
    assert >sprite_addr_Y == &1e
    assert >sprite_addr_Z == &1e
    assert >sprite_addr_boulder1 == &13
    assert >sprite_addr_boulder2 == &13
    assert >sprite_addr_box == &14
    assert >sprite_addr_butterfly1 == &15
    assert >sprite_addr_butterfly2 == &15
    assert >sprite_addr_butterfly3 == &16
    assert >sprite_addr_comma == &1a
    assert >sprite_addr_dash == &1a
    assert >sprite_addr_diamond1 == &13
    assert >sprite_addr_diamond2 == &13
    assert >sprite_addr_diamond3 == &13
    assert >sprite_addr_diamond4 == &13
    assert >sprite_addr_earth1 == &16
    assert >sprite_addr_earth2 == &16
    assert >sprite_addr_explosion1 == &14
    assert >sprite_addr_explosion2 == &14
    assert >sprite_addr_explosion3 == &14
    assert >sprite_addr_explosion4 == &14
    assert >sprite_addr_firefly1 == &16
    assert >sprite_addr_firefly2 == &16
    assert >sprite_addr_firefly3 == &16
    assert >sprite_addr_firefly4 == &16
    assert >sprite_addr_full_stop == &1b
    assert >sprite_addr_fungus1 == &15
    assert >sprite_addr_fungus2 == &15
    assert >sprite_addr_magic_wall1 == &15
    assert >sprite_addr_magic_wall2 == &15
    assert >sprite_addr_magic_wall3 == &15
    assert >sprite_addr_magic_wall4 == &15
    assert >sprite_addr_pathway == &16
    assert >sprite_addr_rockford_blinking1 == &17
    assert >sprite_addr_rockford_blinking2 == &17
    assert >sprite_addr_rockford_blinking3 == &17
    assert >sprite_addr_rockford_moving_down1 == &17
    assert >sprite_addr_rockford_moving_down2 == &17
    assert >sprite_addr_rockford_moving_down3 == &17
    assert >sprite_addr_rockford_moving_left1 == &18
    assert >sprite_addr_rockford_moving_left2 == &18
    assert >sprite_addr_rockford_moving_left3 == &18
    assert >sprite_addr_rockford_moving_left4 == &18
    assert >sprite_addr_rockford_moving_right1 == &18
    assert >sprite_addr_rockford_moving_right2 == &18
    assert >sprite_addr_rockford_moving_right3 == &19
    assert >sprite_addr_rockford_moving_right4 == &19
    assert >sprite_addr_rockford_moving_up1 == &18
    assert >sprite_addr_rockford_moving_up2 == &18
    assert >sprite_addr_rockford_winking1 == &17
    assert >sprite_addr_rockford_winking2 == &17
    assert >sprite_addr_slash == &1a
    assert >sprite_addr_space == &13
    assert >sprite_addr_titanium_wall1 == &13
    assert >sprite_addr_titanium_wall2 == &14
    assert >sprite_addr_wall1 == &14
    assert >sprite_addr_wall2 == &14
    assert >sprite_addr_white == &1a
    assert >start_of_grid_screen_address == &5b
    assert >status_bar_sprite_numbers == &32
    assert >strip_data == &47
    assert >tile_map == &32
    assert cell_above == &74
    assert cell_above_left-1 == &72
    assert cell_below == &7a
    assert cell_left == &76
    assert cell_right == &78
    assert command_note_durations - 200 == &5614
    assert command_note_repeat_counts-200 == &561a
    assert command_pitch-200 == &560e
    assert handler_table_high+12 == &21dc
    assert in_game_sound_data+1 == &2c01
    assert in_game_sound_data+2 == &2c02
    assert in_game_sound_data+3 == &2c03
    assert inkey_key_b == &9b
    assert inkey_key_colon == &b7
    assert inkey_key_escape == &8f
    assert inkey_key_return == &b6
    assert inkey_key_slash == &97
    assert inkey_key_space == &9d
    assert inkey_key_x == &bd
    assert inkey_key_z == &9e
    assert map_diamond == &04
    assert mark_cell_above_as_processed_and_move_to_next_cell - after_branch == &26
    assert opcode_dex == &ca
    assert opcode_inx == &e8
    assert opcode_lda_abs_y == &b9
    assert opcode_ldy_abs == &ac
    assert osbyte_flush_buffer_class == &0f
    assert osbyte_inkey == &81
    assert osbyte_read_adc_or_get_buffer_status == &80
    assert osword_read_clock == &01
    assert osword_sound == &07
    assert osword_write_clock == &02
    assert osword_write_palette == &0c
    assert sound0_active_flag == &46
    assert sound5_active_flag == &4b
    assert sprite_0 == &32
    assert sprite_1 == &33
    assert sprite_2 == &34
    assert sprite_3 == &35
    assert sprite_4 == &36
    assert sprite_5 == &37
    assert sprite_6 == &38
    assert sprite_7 == &39
    assert sprite_8 == &3a
    assert sprite_9 == &3b
    assert sprite_boulder1 == &01
    assert sprite_boulder2 == &02
    assert sprite_box == &09
    assert sprite_butterfly1 == &16
    assert sprite_butterfly2 == &17
    assert sprite_comma == &3f
    assert sprite_diamond1 == &03
    assert sprite_diamond2 == &04
    assert sprite_diamond3 == &05
    assert sprite_diamond4 == &06
    assert sprite_earth2 == &1e
    assert sprite_explosion1 == &0c
    assert sprite_explosion2 == &0d
    assert sprite_explosion3 == &0e
    assert sprite_explosion4 == &0f
    assert sprite_firefly2 == &1a
    assert sprite_firefly4 == &1c
    assert sprite_full_stop == &40
    assert sprite_fungus1 == &14
    assert sprite_fungus2 == &15
    assert sprite_magic_wall1 == &10
    assert sprite_magic_wall2 == &11
    assert sprite_pathway == &1f
    assert sprite_rockford_blinking1 == &20
    assert sprite_rockford_moving_down1 == &25
    assert sprite_rockford_moving_left2 == &2b
    assert sprite_rockford_moving_left3 == &2c
    assert sprite_rockford_moving_right3 == &30
    assert sprite_rockford_moving_right4 == &31
    assert sprite_rockford_moving_up1 == &28
    assert sprite_rockford_winking2 == &24
    assert sprite_slash == &3e
    assert sprite_space == &00
    assert sprite_titanium_wall1 == &07
    assert sprite_titanium_wall2 == &08
    assert sprite_wall2 == &0b
    assert total_caves == &14
    assert update_map_space - after_branch == &5f

save pydis_start, pydis_end