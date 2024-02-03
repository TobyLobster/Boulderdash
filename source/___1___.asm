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
sprite_boxy1                           = 25
sprite_boxy2                           = 26
sprite_boxy3                           = 27
sprite_boxy4                           = 28
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
l0000                       = $00
data_set_ptr_low            = $46
data_set_ptr_high           = $47
l0048                       = $48
l0049                       = $49
l004a                       = $4a
l004b                       = $4b
l004c                       = $4c
l004d                       = $4d
l004e                       = $4e
l0050                       = $50
l0051                       = $51
l0052                       = $52
l0053                       = $53
l0054                       = $54
l0055                       = $55
l0056                       = $56
l0057                       = $57
l0058                       = $58
l0059                       = $59
l005a                       = $5a
l005b                       = $5b
sub_second_ticks            = $5c
l005d                       = $5d
l005e                       = $5e
l005f                       = $5f
l0060                       = $60
l0062                       = $62
l0064                       = $64
l0065                       = $65
l0066                       = $66
l0067                       = $67
status_text_address_low     = $69
l006a                       = $6a
l006b                       = $6b
l006c                       = $6c
l006d                       = $6d
l006f                       = $6f
l0070                       = $70
l0071                       = $71
l0072                       = $72
grid_x                      = $73
l0074                       = $74
l0075                       = $75
l0076                       = $76
loop_counter                = $77
l0078                       = $78
l0079                       = $79
l007a                       = $7a
l007b                       = $7b
l007c                       = $7c
l007e                       = $7e
l007f                       = $7f
screen_addr2_low            = $80
screen_addr2_high           = $81
next_ptr_low                = $82
next_ptr_high               = $83
l0084                       = $84
tile_map_ptr_low            = $85
tile_map_ptr_high           = $86
cave_number                 = $87
l0088                       = $88
difficulty_level            = $89
screen_addr1_low            = $8a
screen_addr1_high           = $8b
ptr_low                     = $8c
ptr_high                    = $8d
l008e                       = $8e
offset_to_sound             = $8f
l0ba9                       = $0ba9
grid_of_screen_sprites      = $0c00
start_of_grid_screen_address = $5bc0
data_8_6                    = $bf06
data_11_8                   = $c00d
data_7_4                    = $c00d
data_9_2                    = $c00d
data_1_4                    = $c021
data_11_6                   = $c22d
data_5_2                    = $c309
data_5_4                    = $c30e
osword                      = $fff1
osbyte                      = $fff4
lfff6                       = $fff6

    * = $1300

; 
; Caves: A-P + Four bonus caves
; 
; tile_map:
; $00 = empty
; $01 = earth
; $02 = wall
; $03 = titanium wall
; $04 = diamond
; $05 = rock
; $06 = exit
; $07 = fungus
; $08 = player
; $09 = 4x4 earth square with monster pacing inside
; $0a = animate explosion the player
; $0b = Letter D/ Vertical column of earth?
; $0c = Horizontal row of earth?
; $0d = rock
; $0e = butterfly
; $0f = player
; 
sprite_addr_0
initial_clock_value
pydis_start
    !byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  ; 1300: 00 00 00... ...            ; Five byte clock value (low byte to high byte)
    !byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                          ; 1314: 00 00 00... ...
sprite_addr_1
    !byte $33, $57, $bf, $2d, $69, $c3, $87, $0f, $88, $4c, $ae, $7f  ; 1320: 33 57 bf... 3W.
    !byte $7f, $b7, $3f, $7b, $0b, $0d, $0b, $0d, $2c, $78, $42,   3  ; 132c: 7f b7 3f... ..?
    !byte $3d, $1e, $0f, $0f, $0e, $0e, $0c,   8                      ; 1338: 3d 1e 0f... =..
sprite_addr_2
    !byte $33, $57, $af, $4f, $0f, $0f, $0f, $0f, $88, $4c, $ae, $7f  ; 1340: 33 57 af... 3W.
    !byte $7f, $37, $3f, $1f, $0b, $0d, $0b, $0d, $0e, $0f,   6,   3  ; 134c: 7f 37 3f... .7?
    !byte $0f, $0f, $0f, $0f, $0e, $0e, $0c,   8                      ; 1358: 0f 0f 0f... ...
sprite_addr_3
    !byte $11, $11, $13, $23, $77, $37, $df, $ef,   0,   0, $88, $88  ; 1360: 11 11 13... ...
    !byte $4c, $8c, $ce, $ee, $7f, $bf, $57, $67, $33, $33, $11,   1  ; 136c: 4c 8c ce... L..
    !byte $6e, $ae, $cc, $cc,   8, $88,   0,   0                      ; 1378: 6e ae cc... n..
sprite_addr_4
    !byte $11, $11, $23, $33, $37, $57, $ef, $7f,   0,   0, $88,   8  ; 1380: 11 11 23... ..#
    !byte $8c, $cc, $ee, $6e, $bf, $df, $67, $77, $33, $13,   1, $11  ; 138c: 8c cc ee... ...
    !byte $ae, $ce, $cc, $4c, $88, $88,   0,   0                      ; 1398: ae ce cc... ...
sprite_addr_5
    !byte $11,   1, $33, $33, $57, $67, $7f, $bf,   0,   0,   8, $88  ; 13a0: 11 01 33... ..3
    !byte $cc, $cc, $6e, $ae, $df, $ef, $77, $37, $13, $23, $11, $11  ; 13ac: cc cc 6e... ..n
    !byte $ce, $ee, $4c, $8c, $88, $88,   0,   0                      ; 13b8: ce ee 4c... ..L
sprite_addr_6
    !byte   1, $11, $33, $13, $67, $77, $bf, $df,   0,   0, $88, $88  ; 13c0: 01 11 33... ..3
    !byte $cc, $4c, $ae, $ce, $ef, $7f, $37, $57, $23, $33, $11, $11  ; 13cc: cc 4c ae... .L.
    !byte $ee, $6e, $8c, $cc, $88,   8,   0,   0                      ; 13d8: ee 6e 8c... .n.
sprite_addr_7
    !byte $0f, $0f,   9,   9, $4d, $4d, $0f, $0f, $0f, $0f,   9,   9  ; 13e0: 0f 0f 09... ...
    !byte $4d, $4d, $0f, $0f, $0f, $0f,   9,   9, $4d, $4d, $0f, $0f  ; 13ec: 4d 4d 0f... MM.
    !byte $0f, $0f,   9,   9, $4d, $4d, $0f, $0f                      ; 13f8: 0f 0f 09... ...
sprite_addr_8
    !byte $0f, $0f,   9,   9, $4d, $4d, $0f, $0f, $0f, $0f,   9,   9  ; 1400: 0f 0f 09... ...
    !byte $4d, $4d, $0f, $0f, $0f, $0f,   9,   9, $4d, $4d, $0f, $0f  ; 140c: 4d 4d 0f... MM.
    !byte $0f, $0f,   9,   9, $4d, $4d, $0f, $0f                      ; 1418: 0f 0f 09... ...
sprite_addr_9
    !byte $0f, $0f,   8,   8,   8,   8,   8,   8, $0f, $0f,   1,   1  ; 1420: 0f 0f 08... ...
    !byte   1,   1,   1,   1,   8,   8,   8,   8,   8,   8, $0f, $0f  ; 142c: 01 01 01... ...
    !byte   1,   1,   1,   1,   1,   1, $0f, $0f                      ; 1438: 01 01 01... ...
sprite_addr_10
    !byte $77, $37,   7,   0, $ee, $ee, $0e,   0, $ee, $ee, $0e,   0  ; 1440: 77 37 07... w7.
    !byte $77, $37,   7,   0, $77, $37,   7,   0, $ee, $ee, $0e,   0  ; 144c: 77 37 07... w7.
    !byte $ee, $ee, $0e,   0, $77, $37,   7,   0                      ; 1458: ee ee 0e... ...
sprite_addr_11
    !byte $77, $37,   7,   0, $ee, $ee, $0e,   0, $ee, $ee, $0e,   0  ; 1460: 77 37 07... w7.
    !byte $77, $37,   7,   0, $77, $37,   7,   0, $ee, $ee, $0e,   0  ; 146c: 77 37 07... w7.
    !byte $ee, $ee, $0e,   0, $77, $37,   7,   0                      ; 1478: ee ee 0e... ...
sprite_addr_12
    !byte   0,   0,   0,   0, $11, $44,   1, $22,   0,   0,   0,   0  ; 1480: 00 00 00... ...
    !byte   0, $88,   0, $aa, $10, $13, $22,   0, $11,   0,   0,   0  ; 148c: 00 88 00... ...
    !byte $84, $c4,   8,   0,   0,   0,   0,   0                      ; 1498: 84 c4 08... ...
sprite_addr_13
    !byte   0,   0,   0, $11, $88,   1,   0, $44,   0,   0,   0,   0  ; 14a0: 00 00 00... ...
    !byte $88,   0, $44, $51, $20,   0,   4, $22, $44, $11,   0,   0  ; 14ac: 88 00 44... ..D
    !byte   2,   0, $a2,   8,   0,   0,   0,   0                      ; 14b8: 02 00 a2... ...
sprite_addr_14
    !byte   0,   0, $11,   0,   2,   0,   0,   0,   0,   0,   0, $44  ; 14c0: 00 00 11... ...
    !byte   0, $22,   0, $31, $88, $40,   0,   8, $22, $88, $11,   0  ; 14cc: 00 22 00... .".
    !byte   0,   1,   0, $80, $15,   0,   0,   0                      ; 14d8: 00 01 00... ...
sprite_addr_15
    !byte   0, $11,   0,   4,   0,   0,   0,   0,   0,   0, $22,   0  ; 14e0: 00 11 00... ...
    !byte $11,   0,   0, $10,   0, $80,   0,   0, $22,   0, $88, $11  ; 14ec: 11 00 00... ...
    !byte   0,   1,   0,   0, $80, $15,   0,   0                      ; 14f8: 00 01 00... ...
sprite_addr_16
    !byte $77, $37,   7, $4c, $ee, $ee, $0e,   0, $ee, $ee, $0e,   0  ; 1500: 77 37 07... w7.
    !byte $77, $37,   7, $23, $77, $37,   7, $4c, $ee, $ee, $0e,   0  ; 150c: 77 37 07... w7.
    !byte $ee, $ee, $0e,   0, $77, $37,   7, $23                      ; 1518: ee ee 0e... ...
sprite_addr_17
    !byte $77, $37,   7, $13, $ee, $ee, $0e,   0, $ee, $ee, $0e,   0  ; 1520: 77 37 07... w7.
    !byte $77, $37,   7, $8c, $77, $37,   7, $13, $ee, $ee, $0e,   0  ; 152c: 77 37 07... w7.
    !byte $ee, $ee, $0e,   0, $77, $37,   7, $8c                      ; 1538: ee ee 0e... ...
sprite_addr_18
    !byte $77, $37,   7,   0, $ee, $ee, $0e, $23, $ee, $ee, $0e, $4c  ; 1540: 77 37 07... w7.
    !byte $77, $37,   7,   0, $77, $37,   7,   0, $ee, $ee, $0e, $23  ; 154c: 77 37 07... w7.
    !byte $ee, $ee, $0e, $4c, $77, $37,   7,   0                      ; 1558: ee ee 0e... ...
sprite_addr_19
    !byte $77, $37,   7,   0, $ee, $ee, $0e, $8c, $ee, $ee, $0e, $13  ; 1560: 77 37 07... w7.
    !byte $77, $37,   7,   0, $77, $37,   7,   0, $ee, $ee, $0e, $8c  ; 156c: 77 37 07... w7.
    !byte $ee, $ee, $0e, $13, $77, $37,   7,   0                      ; 1578: ee ee 0e... ...
sprite_addr_20
    !byte $2e, $1f, $0f, $8f, $47, $8f, $0f, $0f, $47, $8f, $0f, $0f  ; 1580: 2e 1f 0f... ...
    !byte $1f, $0f, $0f, $cf, $cf, $23, $23, $cf, $0f, $1f, $2e, $4c  ; 158c: 1f 0f 0f... ...
    !byte $cf, $1f, $1f, $0f, $0f, $8f, $47, $23                      ; 1598: cf 1f 1f... ...
sprite_addr_21
    !byte $1f, $0f, $8f, $47, $23, $47, $8f, $1f, $8f, $0f, $0f, $1f  ; 15a0: 1f 0f 8f... ...
    !byte $2e, $1f, $cf, $23, $1f, $cf, $cf, $0f, $0f, $0f, $1f, $2e  ; 15ac: 2e 1f cf... ...
    !byte $23, $cf, $0f, $0f, $0f, $0f, $8f, $47                      ; 15b8: 23 cf 0f... #..
sprite_addr_22
    !byte   0,   8, $88, $88, $8c, $cc, $ce, $ee,   0,   2, $22, $22  ; 15c0: 00 08 88... ...
    !byte $26, $66, $6e, $ee, $ff, $ee, $ce, $cc, $8c, $88, $88,   8  ; 15cc: 26 66 6e... &fn
    !byte $ee, $ee, $6e, $66, $26, $22, $22,   2                      ; 15d8: ee ee 6e... ..n
sprite_addr_23
    !byte   0,   4, $44, $44, $44, $46, $66, $66,   0,   4, $44, $44  ; 15e0: 00 04 44... ..D
    !byte $44, $4c, $cc, $cc, $77, $66, $66, $46, $44, $44, $44,   4  ; 15ec: 44 4c cc... DL.
    !byte $cc, $cc, $cc, $4c, $44, $44, $44,   4                      ; 15f8: cc cc cc... ...
sprite_addr_24
    !byte   0,   0,   2, $22, $22, $22, $22, $33,   0,   0,   8, $88  ; 1600: 00 00 02... ...
    !byte $88, $88, $88, $88, $33, $33, $22, $22, $22, $22,   2,   0  ; 160c: 88 88 88... ...
    !byte $88, $88, $88, $88, $88, $88,   8,   0                      ; 1618: 88 88 88... ...
sprite_addr_25
    !byte $ff, $ff, $f8, $f8, $cb, $cb, $ca, $ca, $ff, $ff, $f1, $f1  ; 1620: ff ff f8... ...
    !byte $3d, $3d, $35, $35, $ca, $ca, $cb, $cb, $f8, $f8, $ff, $ff  ; 162c: 3d 3d 35... ==5
    !byte $35, $35, $3d, $3d, $f1, $f1, $ff, $ff                      ; 1638: 35 35 3d... 55=
sprite_addr_26
    !byte $f0, $f0, $87, $87, $84, $84, $95, $95, $f0, $f0, $1e, $1e  ; 1640: f0 f0 87... ...
    !byte $12, $12, $9a, $9a, $95, $95, $84, $84, $87, $87, $f0, $f0  ; 164c: 12 12 9a... ...
    !byte $9a, $9a, $12, $12, $1e, $1e, $f0, $f0                      ; 1658: 9a 9a 12... ...
sprite_addr_27
    !byte $0f, $0f,   8,   8, $3b, $3b, $3a, $3a, $0f, $0f,   1,   1  ; 1660: 0f 0f 08... ...
    !byte $cd, $cd, $c5, $c5, $3a, $3a, $3b, $3b,   8,   8, $0f, $0f  ; 166c: cd cd c5... ...
    !byte $c5, $c5, $cd, $cd,   1,   1, $0f, $0f                      ; 1678: c5 c5 cd... ...
sprite_addr_28
    !byte   0,   0, $77, $77, $74, $74, $65, $65,   0,   0, $ee, $ee  ; 1680: 00 00 77... ..w
    !byte $e2, $e2, $6a, $6a, $65, $65, $74, $74, $77, $77,   0,   0  ; 168c: e2 e2 6a... ..j
    !byte $6a, $6a, $e2, $e2, $ee, $ee,   0,   0                      ; 1698: 6a 6a e2... jj.
sprite_addr_29
    !byte $20, $c0, $70, $d0, $f0, $a0, $70, $b0, $50, $90, $60, $d0  ; 16a0: 20 c0 70...  .p
    !byte $b0, $e0, $b0, $e0, $70, $d0, $e0, $70, $a0, $c0, $b0, $40  ; 16ac: b0 e0 b0... ...
    !byte $f0, $e0, $d0, $70, $a0, $d0, $40, $a0                      ; 16b8: f0 e0 d0... ...
sprite_addr_30
    !byte $20, $c0, $70, $d0, $f0, $a0, $70, $b0, $50, $90, $60, $d0  ; 16c0: 20 c0 70...  .p
    !byte $b0, $e0, $b0, $e0, $70, $d0, $e0, $70, $a0, $c0, $b0, $40  ; 16cc: b0 e0 b0... ...
    !byte $f0, $e0, $d0, $70, $a0, $d0, $40, $a0                      ; 16d8: f0 e0 d0... ...
sprite_addr_31
    !byte   0, $77,   0,   0,   0, $ee,   0,   0,   0, $66,   0,   0  ; 16e0: 00 77 00... .w.
    !byte   0, $aa,   0,   0,   0, $55,   0,   0,   0, $ee,   0,   0  ; 16ec: 00 aa 00... ...
    !byte   0, $bb,   0,   0,   0, $99,   0,   0                      ; 16f8: 00 bb 00... ...
sprite_addr_32
    !byte   0, $22, $33, $55, $55, $33, $11, $13,   0, $44, $cc, $aa  ; 1700: 00 22 33... ."3
    !byte $aa, $cc, $88, $8c,   5, $15,   1, $11, $23, $22, $22,   6  ; 170c: aa cc 88... ...
    !byte $0a, $8a,   8, $88, $4c, $44, $44,   6                      ; 1718: 0a 8a 08... ...
sprite_addr_33
    !byte   0, $22, $33, $77, $55, $33, $11, $13,   0, $44, $cc, $ee  ; 1720: 00 22 33... ."3
    !byte $aa, $cc, $88, $8c,   5, $15,   1, $11, $23, $22, $22,   6  ; 172c: aa cc 88... ...
    !byte $0a, $8a,   8, $88, $4c, $44, $44,   6                      ; 1738: 0a 8a 08... ...
sprite_addr_34
    !byte   0, $22, $33, $77, $77, $33, $11, $13,   0, $44, $cc, $ee  ; 1740: 00 22 33... ."3
    !byte $ee, $cc, $88, $8c,   5, $15,   1, $11, $23, $22, $22,   6  ; 174c: ee cc 88... ...
    !byte $0a, $8a,   8, $88, $4c, $44, $44,   6                      ; 1758: 0a 8a 08... ...
sprite_addr_35
    !byte   0, $22, $33, $55, $55, $33, $11, $13,   0, $44, $cc, $ee  ; 1760: 00 22 33... ."3
    !byte $aa, $cc, $88, $8c,   5, $15,   1, $11, $23, $22, $22,   6  ; 176c: aa cc 88... ...
    !byte $0a, $8a,   8, $88, $4c, $44, $44,   6                      ; 1778: 0a 8a 08... ...
sprite_addr_36
    !byte   0, $22, $33, $55, $55, $33, $11, $13,   0, $44, $cc, $ee  ; 1780: 00 22 33... ."3
    !byte $ee, $cc, $88, $8c,   5, $15,   1, $11, $23, $22, $22,   6  ; 178c: ee cc 88... ...
    !byte $0a, $8a,   8, $88, $4c, $44, $44,   6                      ; 1798: 0a 8a 08... ...
sprite_addr_37
    !byte   0, $22, $33, $55, $55, $33, $11, $13,   0, $44, $cc, $aa  ; 17a0: 00 22 33... ."3
    !byte $aa, $cc, $88, $8c,   5, $13,   1, $11, $23, $22, $22,   6  ; 17ac: aa cc 88... ...
    !byte $0a, $8c,   8, $88, $4c, $44, $44,   6                      ; 17b8: 0a 8c 08... ...
sprite_addr_38
    !byte   0, $22, $33, $55, $55, $33, $11, $13,   0, $44, $cc, $aa  ; 17c0: 00 22 33... ."3
    !byte $aa, $cc, $88, $8c,   5, $13,   1, $11, $23, $22,   6,   0  ; 17cc: aa cc 88... ...
    !byte $0a, $8c,   8, $88, $4c, $44, $44,   6                      ; 17d8: 0a 8c 08... ...
sprite_addr_39
    !byte   0, $22, $33, $77, $55, $33, $11, $13,   0, $44, $cc, $ee  ; 17e0: 00 22 33... ."3
    !byte $aa, $cc, $88, $8c,   5, $13,   1, $11, $23, $22, $22,   6  ; 17ec: aa cc 88... ...
    !byte $0a, $8c,   8, $88, $4c, $44, $44,   6                      ; 17f8: 0a 8c 08... ...
sprite_addr_40
    !byte   0, $22, $33, $77, $77, $33, $11, $13,   0, $44, $cc, $ee  ; 1800: 00 22 33... ."3
    !byte $ee, $cc, $88, $8c,   5, $13,   1, $11, $23, $22,   6,   0  ; 180c: ee cc 88... ...
    !byte $0a, $8c,   8, $88, $4c, $44, $44,   6                      ; 1818: 0a 8c 08... ...
sprite_addr_41
    !byte   0, $22, $33, $77, $77, $33, $11, $13,   0, $44, $cc, $ee  ; 1820: 00 22 33... ."3
    !byte $ee, $cc, $88, $8c,   5, $13,   1, $11, $23, $22, $22,   6  ; 182c: ee cc 88... ...
    !byte $0a, $8c,   8, $88, $4c, $44, $44,   6                      ; 1838: 0a 8c 08... ...
sprite_addr_42
    !byte $11, $33, $55, $55, $33, $11, $11, $13, $88, $cc, $cc, $cc  ; 1840: 11 33 55... .3U
    !byte $cc, $88, $88, $88,   1, $11,   1, $11, $23, $44, $44, $0c  ; 184c: cc 88 88... ...
    !byte   8, $88,   8, $88, $6e,   1,   1,   0                      ; 1858: 08 88 08... ...
sprite_addr_43
    !byte $11, $33, $55, $55, $33, $11, $11, $13, $88, $cc, $cc, $cc  ; 1860: 11 33 55... .3U
    !byte $cc, $88, $88, $88,   1, $11,   1, $11, $23, $22, $22,   6  ; 186c: cc 88 88... ...
    !byte   8, $88,   8, $88, $4c, $22,   2,   2                      ; 1878: 08 88 08... ...
sprite_addr_44
    !byte   0, $11, $33, $55, $55, $33, $11, $13,   0, $88, $cc, $cc  ; 1880: 00 11 33... ..3
    !byte $cc, $cc, $88, $88,   1, $11,   1, $11,   1, $11, $11,   3  ; 188c: cc cc 88... ...
    !byte   8, $88,   8, $88,   8, $88, $cc,   4                      ; 1898: 08 88 08... ...
sprite_addr_45
    !byte   0, $11, $33, $55, $55, $33, $11, $13,   0, $88, $cc, $cc  ; 18a0: 00 11 33... ..3
    !byte $cc, $cc, $88, $88,   1, $11,   1, $11,   1, $11, $11,   3  ; 18ac: cc cc 88... ...
    !byte   8, $88,   8, $88,   8, $88, $88,   8                      ; 18b8: 08 88 08... ...
sprite_addr_46
    !byte   0, $11, $33, $33, $33, $33, $11, $11,   0, $88, $cc, $aa  ; 18c0: 00 11 33... ..3
    !byte $aa, $cc, $88, $8c,   1, $11,   1, $11,   1, $11, $11,   1  ; 18cc: aa cc 88... ...
    !byte   8, $88,   8, $88,   8, $88, $88, $0c                      ; 18d8: 08 88 08... ...
sprite_addr_47
    !byte   0, $11, $33, $33, $33, $33, $11, $11,   0, $88, $cc, $aa  ; 18e0: 00 11 33... ..3
    !byte $aa, $cc, $88, $8c,   1, $11,   1, $11,   1, $11, $33,   2  ; 18ec: aa cc 88... ...
    !byte   8, $88,   8, $88,   8, $88, $88, $0c                      ; 18f8: 08 88 08... ...
sprite_addr_48
    !byte $11, $33, $33, $33, $33, $11, $11, $11, $88, $cc, $aa, $aa  ; 1900: 11 33 33... .33
    !byte $cc, $88, $88, $8c,   1, $11,   1, $11, $23, $44,   4,   4  ; 190c: cc 88 88... ...
    !byte   8, $88,   8, $88, $4c, $44, $44,   6                      ; 1918: 08 88 08... ...
sprite_addr_49
    !byte $11, $33, $33, $33, $33, $11, $11, $11, $88, $cc, $aa, $aa  ; 1920: 11 33 33... .33
    !byte $cc, $88, $88, $8c,   1, $11,   1, $11, $67,   8,   8,   0  ; 192c: cc 88 88... ...
    !byte   8, $88,   8, $88, $4c, $22, $22,   3                      ; 1938: 08 88 08... ...
sprite_addr_50
    !byte   0, $33, $34, $67, $68, $6e, $69, $7f,   0, $cc, $c0, $6e  ; 1940: 00 33 34... .34
    !byte $68, $ee, $e0, $ee, $78, $7f, $78, $6e, $68, $3f, $34,   7  ; 194c: 68 ee e0... h..
    !byte $e0, $6e, $68, $6e, $68, $cc, $c0,   8                      ; 1958: e0 6e 68... .nh
sprite_addr_51
    !byte   0, $11, $12, $33, $34, $17, $12, $13,   0, $88, $80, $88  ; 1960: 00 11 12... ...
    !byte $80, $88, $80, $88, $12, $13, $12, $13, $12, $77, $78, $0f  ; 196c: 80 88 80... ...
    !byte $80, $88, $80, $88, $80, $ee, $e0, $0c                      ; 1978: 80 88 80... ...
sprite_addr_52
    !byte   0, $33, $34, $67, $68, $0c,   0,   0,   0, $cc, $c0, $6e  ; 1980: 00 33 34... .34
    !byte $68, $6e, $68, $cc,   1, $11, $12, $33, $34, $77, $78, $0f  ; 198c: 68 6e 68... hnh
    !byte $c0, $88, $80,   0,   0, $ee, $e0, $0c                      ; 1998: c0 88 80... ...
sprite_addr_53
    !byte   0, $33, $34, $67, $68, $0c,   0, $11,   0, $cc, $c0, $6e  ; 19a0: 00 33 34... .34
    !byte $68, $6e, $68, $cc, $12,   3,   0, $66, $68, $3f, $34,   7  ; 19ac: 68 6e 68... hnh
    !byte $c0, $6e, $68, $6e, $68, $cc, $c0,   8                      ; 19b8: c0 6e 68... .nh
sprite_addr_54
    !byte   0,   0,   1, $11, $12, $33, $34, $67,   0, $cc, $c0, $cc  ; 19c0: 00 00 01... ...
    !byte $c0, $cc, $c0, $cc, $69, $7f, $78, $0f,   1,   1,   1,   1  ; 19cc: c0 cc c0... ...
    !byte $c0, $ee, $e0, $cc, $c0, $cc, $c0,   8                      ; 19d8: c0 ee e0... ...
sprite_addr_55
    !byte   0, $77, $78, $6f, $68, $7f, $78, $0f,   0, $ee, $e0, $0c  ; 19e0: 00 77 78... .wx
    !byte   0, $cc, $c0, $6e,   0,   0,   0, $66, $68, $3f, $34,   7  ; 19ec: 00 cc c0... ...
    !byte $68, $6e, $68, $6e, $68, $cc, $c0,   8                      ; 19f8: 68 6e 68... hnh
sprite_addr_56
    !byte   0, $11, $12, $33, $34, $66, $68, $7f,   0, $cc, $c0,   8  ; 1a00: 00 11 12... ...
    !byte   0,   0,   0, $cc, $78, $6f, $68, $6e, $68, $3f, $34,   7  ; 1a0c: 00 00 00... ...
    !byte $c0, $6e, $68, $6e, $68, $cc, $c0,   8                      ; 1a18: c0 6e 68... .nh
sprite_addr_57
    !byte   0, $77, $78, $0f,   0,   0,   1, $11,   0, $ee, $e0, $6e  ; 1a20: 00 77 78... .wx
    !byte $68, $cc, $c0, $88, $12, $33, $34, $37, $34, $37, $34,   6  ; 1a2c: 68 cc c0... h..
    !byte $80,   0,   0,   0,   0,   0,   0,   0                      ; 1a38: 80 00 00... ...
sprite_addr_58
    !byte   0, $33, $34, $67, $68, $6e, $68, $3f,   0, $cc, $c0, $6e  ; 1a40: 00 33 34... .34
    !byte $68, $6e, $68, $cc, $34, $67, $68, $6e, $68, $3f, $34,   7  ; 1a4c: 68 6e 68... hnh
    !byte $c0, $6e, $68, $6e, $68, $cc, $c0,   8                      ; 1a58: c0 6e 68... .nh
sprite_addr_59
    !byte   0, $33, $34, $67, $68, $6e, $68, $3f,   0, $cc, $c0, $6e  ; 1a60: 00 33 34... .34
    !byte $68, $6e, $68, $ee, $34,   7,   0,   0,   1, $33, $34,   7  ; 1a6c: 68 6e 68... hnh
    !byte $e0, $6e, $68, $cc, $c0, $88, $80,   0                      ; 1a78: e0 6e 68... .nh
sprite_addr_60
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 1a80: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 1a8c: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 1a98: ff ff ff... ...
sprite_addr_61
    !byte   0,   0,   0,   0,   0, $77, $78, $0f,   0,   0,   0,   0  ; 1aa0: 00 00 00... ...
    !byte   0, $ee, $e0, $0c,   0, $77, $78, $0f,   0,   0,   0,   0  ; 1aac: 00 ee e0... ...
    !byte   0, $ee, $e0, $0c,   0,   0,   0,   0                      ; 1ab8: 00 ee e0... ...
sprite_addr_62
    !byte   0,   0,   0,   0,   0,   1, $10, $13,   0,   0, $60, $6e  ; 1ac0: 00 00 00... ...
    !byte $c0, $cc, $80, $88, $30, $37, $60, $6e, $0c,   0,   0,   0  ; 1acc: c0 cc 80... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 1ad8: 00 00 00... ...
sprite_addr_63
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 1ae0: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   1,   1, $33, $34,   6  ; 1aec: 00 00 00... ...
    !byte   0,   0, $c0, $cc, $c0, $cc,   8,   0                      ; 1af8: 00 00 c0... ...
sprite_addr_64
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 1b00: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0, $11, $12, $13, $12,   3,   0  ; 1b0c: 00 00 00... ...
    !byte   0,   0, $88, $80, $88, $80,   0,   0                      ; 1b18: 00 00 88... ...
sprite_addr_65
    !byte   0, $33, $34, $67, $68, $6e, $68, $7f,   0, $cc, $c0, $6e  ; 1b20: 00 33 34... .34
    !byte $68, $6e, $68, $ee, $78, $6f, $68, $6e, $68, $6e, $68, $0c  ; 1b2c: 68 6e 68... hnh
    !byte $e0, $6e, $68, $6e, $68, $6e, $68, $0c                      ; 1b38: e0 6e 68... .nh
sprite_addr_66
    !byte   0, $77, $78, $6f, $68, $6e, $68, $7f,   0, $cc, $c0, $6e  ; 1b40: 00 77 78... .wx
    !byte $68, $6e, $68, $cc, $78, $6f, $68, $6e, $68, $7f, $78, $0f  ; 1b4c: 68 6e 68... hnh
    !byte $c0, $6e, $68, $6e, $68, $cc, $c0,   8                      ; 1b58: c0 6e 68... .nh
sprite_addr_67
    !byte   0, $33, $34, $67, $68, $6e, $68, $6e,   0, $cc, $c0, $6e  ; 1b60: 00 33 34... .34
    !byte $68, $0c,   0,   0, $68, $6e, $68, $6e, $68, $3f, $34,   7  ; 1b6c: 68 0c 00... h..
    !byte   0,   0,   0, $66, $68, $cc, $c0,   8                      ; 1b78: 00 00 00... ...
sprite_addr_68
    !byte   0, $77, $78, $6f, $69, $6f, $68, $6e,   0, $88, $80, $cc  ; 1b80: 00 77 78... .wx
    !byte $c0, $6e, $68, $6e, $68, $6e, $68, $6e, $69, $7f, $78, $0f  ; 1b8c: c0 6e 68... .nh
    !byte $68, $6e, $48, $cc, $c0, $88, $80,   0                      ; 1b98: 68 6e 48... hnH
sprite_addr_69
    !byte   0, $77, $78, $6f, $68, $6e, $68, $7f,   0, $ee, $e0, $0c  ; 1ba0: 00 77 78... .wx
    !byte   0,   0,   0, $cc, $78, $6f, $68, $6e, $68, $7f, $78, $0f  ; 1bac: 00 00 00... ...
    !byte $c0,   8,   0,   0,   0, $ee, $e0, $0c                      ; 1bb8: c0 08 00... ...
sprite_addr_70
    !byte   0, $77, $78, $6f, $68, $6e, $68, $7f,   0, $ee, $e0, $0c  ; 1bc0: 00 77 78... .wx
    !byte   0,   0,   0, $cc, $78, $6f, $68, $6e, $68, $6e, $68, $0c  ; 1bcc: 00 00 00... ...
    !byte $c0,   8,   0,   0,   0,   0,   0,   0                      ; 1bd8: c0 08 00... ...
sprite_addr_71
    !byte   0, $33, $34, $6f, $68, $6e, $68, $6e,   0, $cc, $c0, $6e  ; 1be0: 00 33 34... .34
    !byte $68, $0c,   0, $ee, $69, $6f, $68, $6e, $68, $3f, $34,   7  ; 1bec: 68 0c 00... h..
    !byte $e0, $6e, $68, $6e, $68, $cc, $c0,   8                      ; 1bf8: e0 6e 68... .nh
sprite_addr_72
    !byte   0, $66, $68, $6e, $68, $6e, $68, $7f,   0, $66, $68, $6e  ; 1c00: 00 66 68... .fh
    !byte $68, $6e, $68, $ee, $78, $6f, $68, $6e, $68, $6e, $68, $0c  ; 1c0c: 68 6e 68... hnh
    !byte $e0, $6e, $68, $6e, $68, $6e, $68, $0c                      ; 1c18: e0 6e 68... .nh
sprite_addr_73
    !byte   0, $77, $78, $1f, $12, $13, $12, $13,   0, $ee, $e0, $8c  ; 1c20: 00 77 78... .wx
    !byte $80, $88, $80, $88, $12, $13, $12, $13, $12, $77, $78, $0f  ; 1c2c: 80 88 80... ...
    !byte $80, $88, $80, $88, $80, $ee, $e0, $0c                      ; 1c38: 80 88 80... ...
sprite_addr_74
    !byte   0, $33, $34,   7,   1,   1,   1,   1,   0, $ee, $e0, $cc  ; 1c40: 00 33 34... .34
    !byte $c0, $cc, $c0, $cc,   1,   1,   1, $67, $69, $3f, $34,   7  ; 1c4c: c0 cc c0... ...
    !byte $c0, $cc, $c0, $cc, $c0, $88, $80,   0                      ; 1c58: c0 cc c0... ...
sprite_addr_75
    !byte   0, $66, $68, $6e, $69, $7f, $78, $7f,   0, $66, $68, $cc  ; 1c60: 00 66 68... .fh
    !byte $c0, $88, $80,   0, $78, $7f, $78, $6f, $69, $6f, $68, $0c  ; 1c6c: c0 88 80... ...
    !byte   0, $88, $80, $cc, $c0, $6e, $68, $0c                      ; 1c78: 00 88 80... ...
sprite_addr_76
    !byte   0, $66, $68, $6e, $68, $6e, $68, $6e,   0,   0,   0,   0  ; 1c80: 00 66 68... .fh
    !byte   0,   0,   0,   0, $68, $6e, $68, $6e, $68, $7f, $78, $0f  ; 1c8c: 00 00 00... ...
    !byte   0,   0,   0,   0,   0, $ee, $e0, $0c                      ; 1c98: 00 00 00... ...
sprite_addr_77
    !byte   0, $66, $68, $7f, $78, $7f, $78, $6f,   0, $33, $34, $77  ; 1ca0: 00 66 68... .fh
    !byte $78, $ff, $f0, $bf, $69, $6f, $69, $6f, $68, $6e, $68, $0c  ; 1cac: 78 ff f0... x..
    !byte $b4, $bf, $b4, $37, $34, $37, $34,   6                      ; 1cb8: b4 bf b4... ...
sprite_addr_78
    !byte   0, $66, $68, $6e, $68, $7f, $78, $7f,   0, $66, $68, $6e  ; 1cc0: 00 66 68... .fh
    !byte $68, $6e, $68, $ee, $78, $6f, $69, $6f, $68, $6e, $68, $0c  ; 1ccc: 68 6e 68... hnh
    !byte $e0, $ee, $e0, $6e, $68, $6e, $68, $0c                      ; 1cd8: e0 ee e0... ...
sprite_addr_79
    !byte   0, $33, $34, $66, $68, $6e, $68, $6e,   0, $cc, $c0, $6e  ; 1ce0: 00 33 34... .34
    !byte $68, $6e, $68, $6e, $68, $6e, $68, $6e, $68, $3f, $34,   7  ; 1cec: 68 6e 68... hnh
    !byte $68, $6e, $68, $6e, $68, $cc, $c0,   8                      ; 1cf8: 68 6e 68... hnh
sprite_addr_80
    !byte   0, $77, $78, $6f, $68, $6e, $68, $7f,   0, $cc, $c0, $6e  ; 1d00: 00 77 78... .wx
    !byte $68, $6e, $68, $cc, $78, $6f, $68, $6e, $68, $6e, $68, $0c  ; 1d0c: 68 6e 68... hnh
    !byte $c0,   8,   0,   0,   0,   0,   0,   0                      ; 1d18: c0 08 00... ...
sprite_addr_81
    !byte   0, $33, $34, $66, $68, $6e, $68, $6e,   0, $cc, $c0, $6e  ; 1d20: 00 33 34... .34
    !byte $68, $6e, $68, $6e, $68, $6e, $69, $6f, $69, $3f, $34,   6  ; 1d2c: 68 6e 68... hnh
    !byte $68, $ae, $a0, $cc, $c0, $6e, $68, $0c                      ; 1d38: 68 ae a0... h..
sprite_addr_82
    !byte   0, $77, $78, $6f, $68, $6e, $68, $7f,   0, $cc, $c0, $6e  ; 1d40: 00 77 78... .wx
    !byte $68, $6e, $68, $cc, $78, $6f, $69, $6f, $68, $6e, $68, $0c  ; 1d4c: 68 6e 68... hnh
    !byte $c0, $cc, $c0, $6e, $68, $6e, $68, $0c                      ; 1d58: c0 cc c0... ...
sprite_addr_83
    !byte   0, $33, $34, $66, $68, $6e, $68, $3f,   0, $cc, $c0, $6e  ; 1d60: 00 33 34... .34
    !byte $68, $0c,   0, $cc, $34,   7,   0, $66, $68, $3f, $34,   7  ; 1d6c: 68 0c 00... h..
    !byte $c0, $6e, $68, $6e, $68, $cc, $c0,   8                      ; 1d78: c0 6e 68... .nh
sprite_addr_84
    !byte   0, $77, $78, $1f, $12, $13, $12, $13,   0, $ee, $e0, $8c  ; 1d80: 00 77 78... .wx
    !byte $80, $88, $80, $88, $12, $13, $12, $13, $12, $13, $12,   3  ; 1d8c: 80 88 80... ...
    !byte $80, $88, $80, $88, $80, $88, $80,   0                      ; 1d98: 80 88 80... ...
sprite_addr_85
    !byte   0, $66, $68, $6e, $68, $6e, $68, $6e,   0, $66, $68, $6e  ; 1da0: 00 66 68... .fh
    !byte $68, $6e, $68, $6e, $68, $6e, $68, $6e, $68, $3f, $34,   7  ; 1dac: 68 6e 68... hnh
    !byte $68, $6e, $68, $6e, $68, $cc, $c0,   8                      ; 1db8: 68 6e 68... hnh
sprite_addr_86
    !byte   0, $66, $68, $6e, $68, $6e, $68, $6e,   0, $66, $68, $6e  ; 1dc0: 00 66 68... .fh
    !byte $68, $6e, $68, $6e, $68, $6e, $68, $3f, $34, $17, $12,   3  ; 1dcc: 68 6e 68... hnh
    !byte $68, $6e, $68, $cc, $c0, $88, $80,   0                      ; 1dd8: 68 6e 68... hnh
sprite_addr_87
    !byte   0, $66, $68, $6e, $68, $6e, $69, $6f,   0, $33, $34, $37  ; 1de0: 00 66 68... .fh
    !byte $34, $bf, $b4, $bf, $69, $7f, $78, $7f, $78, $6e, $68, $0c  ; 1dec: 34 bf b4... 4..
    !byte $b4, $ff, $f0, $7f, $78, $3f, $34,   6                      ; 1df8: b4 ff f0... ...
sprite_addr_88
    !byte   0, $66, $68, $6e, $68, $3f, $34, $17,   0, $66, $68, $6e  ; 1e00: 00 66 68... .fh
    !byte $68, $cc, $c0, $88, $12, $33, $34, $67, $68, $6e, $68, $0c  ; 1e0c: 68 cc c0... h..
    !byte $80, $cc, $c0, $6e, $68, $6e, $68, $0c                      ; 1e18: 80 cc c0... ...
sprite_addr_89
    !byte   0, $66, $68, $6e, $68, $6e, $68, $3f,   0, $66, $68, $6e  ; 1e20: 00 66 68... .fh
    !byte $68, $6e, $68, $cc, $34, $17, $12, $13, $12, $13, $12,   3  ; 1e2c: 68 6e 68... hnh
    !byte $c0, $88, $80, $88, $80, $88, $80,   0                      ; 1e38: c0 88 80... ...
sprite_addr_90
    !byte   0, $77, $78, $0f,   0,   0,   1, $11,   0, $ee, $e0, $6e  ; 1e40: 00 77 78... .wx
    !byte $68, $cc, $c0, $88, $12, $33, $34, $66, $68, $7f, $78, $0f  ; 1e4c: 68 cc c0... h..
    !byte $80,   0,   0,   0,   0, $ee, $e0, $0c                      ; 1e58: 80 00 00... ...
sprite_addr_91
set_clock_value = sprite_addr_91+16
    !byte $0d, $63, $9f,   4,   0, $63,   0,   1, $f0,   0, $1f,   0  ; 1e60: 0d 63 9f... .c.
    !byte $0c,   0,   0,   0,   5,   0,   0,   0,   0,   0,   0,   0  ; 1e6c: 0c 00 00... ...            ; Five byte clock value (low byte to high byte)
    !byte   0, $ee, $e0, $0c,   0,   0,   0,   0                      ; 1e78: 00 ee e0... ...
sprite_addr_92
    !byte $80, $70, $60, $70, $81, $52, $61, $50, $70, $90, $92, $70  ; 1e80: 80 70 60... .p`
    !byte $52,   0,   0,   0, $11, $22, $11,   0,   0,   1,   9, $27  ; 1e8c: 52 00 00... R..
    !byte   5,   5, $25,   5, $55, $79, $95, $75                      ; 1e98: 05 05 25... ..%
sprite_addr_93
    !byte $55, $28,   5,   6, $27,   5, $25, $55, $55, $59, $55, $65  ; 1ea0: 55 28 05... U(.
    !byte $91, $62, $91, $60, $70, $25, $16, $19,   8,   9,   6,   5  ; 1eac: 91 62 91... .b.
    !byte   6,   5, $36, $45, $48, $47, $36, $35                      ; 1eb8: 06 05 36... ..6
sprite_addr_94
    !byte $35, $ff, $fb, $f7, $fd, $fe, $7f, $ff, $b7, $af, $bf, $bf  ; 1ec0: 35 ff fb... 5..
    !byte $bf, $bf, $bf, $9f,   8,   8,   4,   8,   4,   8,   4,   1  ; 1ecc: bf bf bf... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 1ed8: ff ff ff... ...

unused2
    !byte sprite_0                                                    ; 1ee0: 32          2
    !byte sprite_0                                                    ; 1ee1: 32          2
    !byte sprite_diamond1                                             ; 1ee2: 03          .
    !byte sprite_0                                                    ; 1ee3: 32          2
    !byte sprite_0                                                    ; 1ee4: 32          2
    !byte sprite_space                                                ; 1ee5: 00          .
    !byte sprite_0                                                    ; 1ee6: 32          2
    !byte sprite_0                                                    ; 1ee7: 32          2
    !byte sprite_0                                                    ; 1ee8: 32          2
    !byte sprite_space                                                ; 1ee9: 00          .
    !byte sprite_0                                                    ; 1eea: 32          2
    !byte sprite_0                                                    ; 1eeb: 32          2
    !byte sprite_0                                                    ; 1eec: 32          2
    !byte sprite_space                                                ; 1eed: 00          .
    !byte sprite_0                                                    ; 1eee: 32          2
    !byte sprite_0                                                    ; 1eef: 32          2
    !byte 2, 5, 4                                                     ; 1ef0: 02 05 04    ...
    !byte sprite_space                                                ; 1ef3: 00          .
    !byte sprite_0                                                    ; 1ef4: 32          2
    !byte sprite_0                                                    ; 1ef5: 32          2
    !byte sprite_0                                                    ; 1ef6: 32          2
    !byte sprite_0                                                    ; 1ef7: 32          2
    !byte sprite_0                                                    ; 1ef8: 32          2
    !byte sprite_0                                                    ; 1ef9: 32          2
    !byte $0a                                                         ; 1efa: 0a          .
    !byte sprite_space                                                ; 1efb: 00          .
    !byte sprite_space                                                ; 1efc: 00          .
    !byte sprite_space                                                ; 1efd: 00          .
    !byte sprite_space                                                ; 1efe: 00          .
    !byte sprite_0                                                    ; 1eff: 32          2
l1f00
    !byte   0,   1,   2,   4,   5,   6,   3, $60,   8, $67, $61, $0b  ; 1f00: 00 01 02... ...
    !byte $0c, $0d, $0e, $0f, $11, $12, $13, $10, $14, $15, $17, $18  ; 1f0c: 0c 0d 0e... ...
    !byte $62, $1a, $1b, $1c, $1a, $1d, $68, $1f                      ; 1f18: 62 1a 1b... b..
    !text " !", '"', "#$%&'()+,-c/01e"                                ; 1f20: 20 21 22...  !"

    !byte sprite_0                                                    ; 1f32: 32          2
    !byte sprite_0                                                    ; 1f33: 32          2
    !byte sprite_diamond1                                             ; 1f34: 03          .
    !byte sprite_0                                                    ; 1f35: 32          2
    !byte sprite_0                                                    ; 1f36: 32          2
    !byte $0a                                                         ; 1f37: 0a          .
    !byte sprite_8                                                    ; 1f38: 3a          :
    !byte sprite_2                                                    ; 1f39: 34          4
    !byte sprite_2                                                    ; 1f3a: 34          4
    !byte sprite_space                                                ; 1f3b: 00          .
    !byte sprite_0                                                    ; 1f3c: 32          2
    !byte sprite_0                                                    ; 1f3d: 32          2
    !byte sprite_0                                                    ; 1f3e: 32          2
    !byte sprite_space                                                ; 1f3f: 00          .
    !byte sprite_7                                                    ; 1f40: 39          9
    !byte sprite_7                                                    ; 1f41: 39          9
    !byte sprite_6                                                    ; 1f42: 38          8
    !byte sprite_4                                                    ; 1f43: 36          6
    !byte sprite_7                                                    ; 1f44: 39          9
    !byte sprite_6                                                    ; 1f45: 38          8
    !text "PLAYER"                                                    ; 1f46: 50 4c 41... PLA
    !byte sprite_space                                                ; 1f4c: 00          .
    !byte sprite_1                                                    ; 1f4d: 33          3
    !byte sprite_comma                                                ; 1f4e: 3f          ?
    !byte sprite_space                                                ; 1f4f: 00          .
    !byte sprite_3                                                    ; 1f50: 35          5
    !byte sprite_space                                                ; 1f51: 00          .
    !text "MEN"                                                       ; 1f52: 4d 45 4e    MEN
    !byte sprite_space                                                ; 1f55: 00          .
    !text "A"                                                         ; 1f56: 41          A
    !byte sprite_slash                                                ; 1f57: 3e          >
    !byte sprite_1                                                    ; 1f58: 33          3
    !byte sprite_space                                                ; 1f59: 00          .

    !text "Z[", $5c, "]^_"                                            ; 1f5a: 5a 5b 5c... Z[\
    !byte   7, $0a, $16                                               ; 1f60: 07 0a 16    ...
    !text "d*f."                                                      ; 1f63: 64 2a 66... d*f
    !byte   9, $1e                                                    ; 1f67: 09 1e       ..
    !text "ijklmnopqrstuvwxyz{|}~"                                    ; 1f69: 69 6a 6b... ijk
    !byte $7f                                                         ; 1f7f: 7f          .
l1f80
    !byte   0, $1e, $0b,   8,   3,   1, $1c                           ; 1f80: 00 1e 0b... ...
l1f87
    !byte $14, $1e,   7                                               ; 1f87: 14 1e 07    ...
    !text "LDA"                                                       ; 1f8a: 4c 44 41    LDA
    !byte $0b, $16                                                    ; 1f8d: 0b 16       ..
l1f8f
    !byte $25, $0f, $0f, $0f, $0f, $24, $31, $1c, $14,   9, $3e, $1c  ; 1f8f: 25 0f 0f... %..
    !byte $17, $14, $10, $16, $2c, $0e, $0e, $0e, $0e,   4, $31, $1c  ; 1f9b: 17 14 10... ...
    !byte $15, $1a, $61, $1c, $17, $14, $0b, $16, $31, $0d, $0d, $0d  ; 1fa7: 15 1a 61... ..a
    !byte $0d,   4, $31, $1c, $15, $1a, $0b, $1c, $17, $14, $0b, $16  ; 1fb3: 0d 04 31... ..1
    !byte $28, $0c, $0c, $0c, $0c,   3,   1, $0c                      ; 1fbf: 28 0c 0c... (..
l1fc7
    !byte $15, $31, $20, $1c, $17, $4b, $42, $17, $30, $0d, $0d, $0d  ; 1fc7: 15 31 20... .1
    !byte $0d, $24, $31, $1a, $14, $31, $3e, $1c, $17, $11, $11, $17  ; 1fd3: 0d 24 31... .$1
    !byte $2b, $0e, $0e, $0e, $0e,   3, $31, $1a, $14, $31, $61, $1c  ; 1fdf: 2b 0e 0e... +..
    !byte $17, $11, $0d, $17, $28, $0f, $0f, $0f, $0f,   3, $31, $1a  ; 1feb: 17 11 0d... ...
    !byte $15, $31, $0b, $1c, $17, $1e, $0c, $17, $0c                 ; 1ff7: 15 31 0b... .1.
sprite_addresses_low
    !byte <sprite_addr_0                                              ; 2000: 00          .
    !byte <sprite_addr_1                                              ; 2001: 20
    !byte <sprite_addr_2                                              ; 2002: 40          @
    !byte <sprite_addr_3                                              ; 2003: 60          `
    !byte <sprite_addr_4                                              ; 2004: 80          .
    !byte <sprite_addr_5                                              ; 2005: a0          .
    !byte <sprite_addr_6                                              ; 2006: c0          .
l2007
    !byte <sprite_addr_7                                              ; 2007: e0          .
    !byte <sprite_addr_8                                              ; 2008: 00          .
    !byte <sprite_addr_9                                              ; 2009: 20
    !byte <sprite_addr_10                                             ; 200a: 40          @
    !byte <sprite_addr_11                                             ; 200b: 60          `
    !byte <sprite_addr_12                                             ; 200c: 80          .
    !byte <sprite_addr_13                                             ; 200d: a0          .
    !byte <sprite_addr_14                                             ; 200e: c0          .
    !byte <sprite_addr_15                                             ; 200f: e0          .
    !byte <sprite_addr_16                                             ; 2010: 00          .
    !byte <sprite_addr_17                                             ; 2011: 20
    !byte <sprite_addr_18                                             ; 2012: 40          @
    !byte <sprite_addr_19                                             ; 2013: 60          `
    !byte <sprite_addr_20                                             ; 2014: 80          .
    !byte <sprite_addr_21                                             ; 2015: a0          .
    !byte <sprite_addr_22                                             ; 2016: c0          .
    !byte <sprite_addr_23                                             ; 2017: e0          .
    !byte <sprite_addr_24                                             ; 2018: 00          .
    !byte <sprite_addr_25                                             ; 2019: 20
    !byte <sprite_addr_26                                             ; 201a: 40          @
    !byte <sprite_addr_27                                             ; 201b: 60          `
    !byte <sprite_addr_28                                             ; 201c: 80          .
    !byte <sprite_addr_29                                             ; 201d: a0          .
    !byte <sprite_addr_30                                             ; 201e: c0          .
    !byte <sprite_addr_31                                             ; 201f: e0          .
    !byte <sprite_addr_32                                             ; 2020: 00          .
    !byte <sprite_addr_33                                             ; 2021: 20
    !byte <sprite_addr_34                                             ; 2022: 40          @
    !byte <sprite_addr_35                                             ; 2023: 60          `
    !byte <sprite_addr_36                                             ; 2024: 80          .
    !byte <sprite_addr_37                                             ; 2025: a0          .
    !byte <sprite_addr_38                                             ; 2026: c0          .
    !byte <sprite_addr_39                                             ; 2027: e0          .
    !byte <sprite_addr_40                                             ; 2028: 00          .
    !byte <sprite_addr_41                                             ; 2029: 20
    !byte <sprite_addr_42                                             ; 202a: 40          @
    !byte <sprite_addr_43                                             ; 202b: 60          `
    !byte <sprite_addr_44                                             ; 202c: 80          .
    !byte <sprite_addr_45                                             ; 202d: a0          .
    !byte <sprite_addr_46                                             ; 202e: c0          .
    !byte <sprite_addr_47                                             ; 202f: e0          .
    !byte <sprite_addr_48                                             ; 2030: 00          .
    !byte <sprite_addr_49                                             ; 2031: 20
    !byte <sprite_addr_50                                             ; 2032: 40          @
    !byte <sprite_addr_51                                             ; 2033: 60          `
    !byte <sprite_addr_52                                             ; 2034: 80          .
    !byte <sprite_addr_53                                             ; 2035: a0          .
    !byte <sprite_addr_54                                             ; 2036: c0          .
    !byte <sprite_addr_55                                             ; 2037: e0          .
    !byte <sprite_addr_56                                             ; 2038: 00          .
    !byte <sprite_addr_57                                             ; 2039: 20
    !byte <sprite_addr_58                                             ; 203a: 40          @
    !byte <sprite_addr_59                                             ; 203b: 60          `
    !byte <sprite_addr_60                                             ; 203c: 80          .
    !byte <sprite_addr_61                                             ; 203d: a0          .
    !byte <sprite_addr_62                                             ; 203e: c0          .
    !byte <sprite_addr_63                                             ; 203f: e0          .
    !byte <sprite_addr_64                                             ; 2040: 00          .
    !byte <sprite_addr_65                                             ; 2041: 20
    !byte <sprite_addr_66                                             ; 2042: 40          @
    !byte <sprite_addr_67                                             ; 2043: 60          `
    !byte <sprite_addr_68                                             ; 2044: 80          .
    !byte <sprite_addr_69                                             ; 2045: a0          .
    !byte <sprite_addr_70                                             ; 2046: c0          .
    !byte <sprite_addr_71                                             ; 2047: e0          .
    !byte <sprite_addr_72                                             ; 2048: 00          .
    !byte <sprite_addr_73                                             ; 2049: 20
    !byte <sprite_addr_74                                             ; 204a: 40          @
    !byte <sprite_addr_75                                             ; 204b: 60          `
    !byte <sprite_addr_76                                             ; 204c: 80          .
    !byte <sprite_addr_77                                             ; 204d: a0          .
    !byte <sprite_addr_78                                             ; 204e: c0          .
    !byte <sprite_addr_79                                             ; 204f: e0          .
    !byte <sprite_addr_80                                             ; 2050: 00          .
    !byte <sprite_addr_81                                             ; 2051: 20
    !byte <sprite_addr_82                                             ; 2052: 40          @
    !byte <sprite_addr_83                                             ; 2053: 60          `
    !byte <sprite_addr_84                                             ; 2054: 80          .
    !byte <sprite_addr_85                                             ; 2055: a0          .
    !byte <sprite_addr_86                                             ; 2056: c0          .
    !byte <sprite_addr_87                                             ; 2057: e0          .
    !byte <sprite_addr_88                                             ; 2058: 00          .
    !byte <sprite_addr_89                                             ; 2059: 20
    !byte <sprite_addr_90                                             ; 205a: 40          @
    !byte <sprite_addr_91                                             ; 205b: 60          `
    !byte <sprite_addr_92                                             ; 205c: 80          .
    !byte <sprite_addr_93                                             ; 205d: a0          .
    !byte <sprite_addr_94                                             ; 205e: c0          .
    !byte $e0                                                         ; 205f: e0          .
l2060
    !byte $e0                                                         ; 2060: e0          .
    !byte $40, $e0, $80, $60,   0, $e0,   0,   0, $20, $40, $60, $80  ; 2061: 40 e0 80... @..
    !byte $a0, $c0, $e0,   0, $20, $40, $60, $80, $a0, $c0, $e0,   0  ; 206d: a0 c0 e0... ...
    !byte $20, $40, $60, $80, $a0, $c0, $e0                           ; 2079: 20 40 60...  @`
sprite_addresses_high
    !byte >sprite_addr_0                                              ; 2080: 13          .
    !byte >sprite_addr_1                                              ; 2081: 13          .
    !byte >sprite_addr_2                                              ; 2082: 13          .
    !byte >sprite_addr_3                                              ; 2083: 13          .
    !byte >sprite_addr_4                                              ; 2084: 13          .
    !byte >sprite_addr_5                                              ; 2085: 13          .
    !byte >sprite_addr_6                                              ; 2086: 13          .
    !byte >sprite_addr_7                                              ; 2087: 13          .
    !byte >sprite_addr_8                                              ; 2088: 14          .
    !byte >sprite_addr_9                                              ; 2089: 14          .
    !byte >sprite_addr_10                                             ; 208a: 14          .
    !byte >sprite_addr_11                                             ; 208b: 14          .
    !byte >sprite_addr_12                                             ; 208c: 14          .
    !byte >sprite_addr_13                                             ; 208d: 14          .
    !byte >sprite_addr_14                                             ; 208e: 14          .
    !byte >sprite_addr_15                                             ; 208f: 14          .
    !byte >sprite_addr_16                                             ; 2090: 15          .
    !byte >sprite_addr_17                                             ; 2091: 15          .
    !byte >sprite_addr_18                                             ; 2092: 15          .
    !byte >sprite_addr_19                                             ; 2093: 15          .
    !byte >sprite_addr_20                                             ; 2094: 15          .
    !byte >sprite_addr_21                                             ; 2095: 15          .
    !byte >sprite_addr_22                                             ; 2096: 15          .
    !byte >sprite_addr_23                                             ; 2097: 15          .
    !byte >sprite_addr_24                                             ; 2098: 16          .
    !byte >sprite_addr_25                                             ; 2099: 16          .
    !byte >sprite_addr_26                                             ; 209a: 16          .
    !byte >sprite_addr_27                                             ; 209b: 16          .
    !byte >sprite_addr_28                                             ; 209c: 16          .
    !byte >sprite_addr_29                                             ; 209d: 16          .
    !byte >sprite_addr_30                                             ; 209e: 16          .
    !byte >sprite_addr_31                                             ; 209f: 16          .
    !byte >sprite_addr_32                                             ; 20a0: 17          .
    !byte >sprite_addr_33                                             ; 20a1: 17          .
    !byte >sprite_addr_34                                             ; 20a2: 17          .
    !byte >sprite_addr_35                                             ; 20a3: 17          .
    !byte >sprite_addr_36                                             ; 20a4: 17          .
    !byte >sprite_addr_37                                             ; 20a5: 17          .
    !byte >sprite_addr_38                                             ; 20a6: 17          .
    !byte >sprite_addr_39                                             ; 20a7: 17          .
    !byte >sprite_addr_40                                             ; 20a8: 18          .
    !byte >sprite_addr_41                                             ; 20a9: 18          .
    !byte >sprite_addr_42                                             ; 20aa: 18          .
    !byte >sprite_addr_43                                             ; 20ab: 18          .
    !byte >sprite_addr_44                                             ; 20ac: 18          .
    !byte >sprite_addr_45                                             ; 20ad: 18          .
    !byte >sprite_addr_46                                             ; 20ae: 18          .
    !byte >sprite_addr_47                                             ; 20af: 18          .
    !byte >sprite_addr_48                                             ; 20b0: 19          .
    !byte >sprite_addr_49                                             ; 20b1: 19          .
    !byte >sprite_addr_50                                             ; 20b2: 19          .
    !byte >sprite_addr_51                                             ; 20b3: 19          .
    !byte >sprite_addr_52                                             ; 20b4: 19          .
    !byte >sprite_addr_53                                             ; 20b5: 19          .
    !byte >sprite_addr_54                                             ; 20b6: 19          .
    !byte >sprite_addr_55                                             ; 20b7: 19          .
    !byte >sprite_addr_56                                             ; 20b8: 1a          .
    !byte >sprite_addr_57                                             ; 20b9: 1a          .
    !byte >sprite_addr_58                                             ; 20ba: 1a          .
    !byte >sprite_addr_59                                             ; 20bb: 1a          .
    !byte >sprite_addr_60                                             ; 20bc: 1a          .
    !byte >sprite_addr_61                                             ; 20bd: 1a          .
    !byte >sprite_addr_62                                             ; 20be: 1a          .
    !byte >sprite_addr_63                                             ; 20bf: 1a          .
    !byte >sprite_addr_64                                             ; 20c0: 1b          .
    !byte >sprite_addr_65                                             ; 20c1: 1b          .
    !byte >sprite_addr_66                                             ; 20c2: 1b          .
    !byte >sprite_addr_67                                             ; 20c3: 1b          .
    !byte >sprite_addr_68                                             ; 20c4: 1b          .
    !byte >sprite_addr_69                                             ; 20c5: 1b          .
    !byte >sprite_addr_70                                             ; 20c6: 1b          .
    !byte >sprite_addr_71                                             ; 20c7: 1b          .
    !byte >sprite_addr_72                                             ; 20c8: 1c          .
    !byte >sprite_addr_73                                             ; 20c9: 1c          .
    !byte >sprite_addr_74                                             ; 20ca: 1c          .
    !byte >sprite_addr_75                                             ; 20cb: 1c          .
    !byte >sprite_addr_76                                             ; 20cc: 1c          .
    !byte >sprite_addr_77                                             ; 20cd: 1c          .
    !byte >sprite_addr_78                                             ; 20ce: 1c          .
    !byte >sprite_addr_79                                             ; 20cf: 1c          .
    !byte >sprite_addr_80                                             ; 20d0: 1d          .
    !byte >sprite_addr_81                                             ; 20d1: 1d          .
    !byte >sprite_addr_82                                             ; 20d2: 1d          .
    !byte >sprite_addr_83                                             ; 20d3: 1d          .
    !byte >sprite_addr_84                                             ; 20d4: 1d          .
    !byte >sprite_addr_85                                             ; 20d5: 1d          .
    !byte >sprite_addr_86                                             ; 20d6: 1d          .
    !byte >sprite_addr_87                                             ; 20d7: 1d          .
    !byte >sprite_addr_88                                             ; 20d8: 1e          .
    !byte >sprite_addr_89                                             ; 20d9: 1e          .
    !byte >sprite_addr_90                                             ; 20da: 1e          .
    !byte >sprite_addr_91                                             ; 20db: 1e          .
    !byte >sprite_addr_92                                             ; 20dc: 1e          .
    !byte >sprite_addr_93                                             ; 20dd: 1e          .
    !byte >sprite_addr_94                                             ; 20de: 1e          .
unused3
    !byte $1e, $13, $14, $15, $18, $18, $19, $18, $14, $14, $20, $20  ; 20df: 1e 13 14... ...
    !byte $20, $20, $20, $20, $20, $21, $21, $21, $21, $21, $21, $21  ; 20eb: 20 20 20...
    !byte $21, $22, $22, $22, $22, $22, $22, $22, $22                 ; 20f7: 21 22 22... !""
l2100
    !byte 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0              ; 2100: 00 00 01... ...
l2110
    !byte 2, 3, 4, 5, 6, 7, 0, 1                                      ; 2110: 02 03 04... ...
l2118
    !byte $b6, $be, $86, $8e, $96, $9e, $a6, $ae                      ; 2118: b6 be 86... ...
l2120
    !byte   0,   0,   0,   0, $85, $84,   0,   0,   0,   0,   0,   0  ; 2120: 00 00 00... ...
    !byte   0,   0,   0,   0, $84, $84, $84,   0, $84, $84, $84, $84  ; 212c: 00 00 00... ...
    !byte   0,   0,   0, $84, $84, $84, $84, $ff                      ; 2138: 00 00 00... ...
l2140
    !byte $b3, $b3, $b3,   0, $b3, $b3, $b3, $b3,   0,   0,   0, $b3  ; 2140: b3 b3 b3... ...
    !byte $b3, $b3, $b3, $ff                                          ; 214c: b3 b3 b3... ...
l2150
    !byte   4, $44,   6, $16, $26, $36                                ; 2150: 04 44 06... .D.
l2156
    !byte $18, $1d, $0e, $1e                                          ; 2156: 18 1d 0e... ...
    !text ".>/"                                                       ; 215a: 2e 3e 2f    .>/
    !byte $1f,   9,   9, $0a,   0,   0,   0,   0,   0,   0,   0,   0  ; 215d: 1f 09 09... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 2169: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0       ; 2175: 00 00 00... ...
l2180
    !byte   0,   0,   0,   0,   0,   0, $46,   0,   0,   0,   0, $7d  ; 2180: 00 00 00... ...
    !byte   0, $3d, $4e, $7f, $91, $a1, $e1,   0, $f1, $d1, $b6, $c1  ; 218c: 00 3d 4e... .=N
    !byte   0,   0, $d1, $f1, $c1, $71,   0, $71,   0,   0,   0,   0  ; 2198: 00 00 d1... ...
    !byte $83, $92, $85, $8a,   0,   0, $8b, $8a, $8a,   0,   0,   0  ; 21a4: 83 92 85... ...
    !byte   1,   1,   1, $ff,   1,   1,   1, $ff, $ff, $ff,   0,   0  ; 21b0: 01 01 01... ...
    !byte $ff, $ff, $ff,   0                                          ; 21bc: ff ff ff... ...
l21c0
    !byte $a5, $a5, $a5, $a5,   0,   0,   0, $9e, $e3, $ca, $e3, $e0  ; 21c0: a5 a5 a5... ...
    !byte $f0, $ae,   0,   0                                          ; 21cc: f0 ae 00... ...
l21d0
    !text '"', '"', '"', '"'                                          ; 21d0: 22 22 22... """
    !byte 0, 0                                                        ; 21d4: 00 00       ..
    !text "%%&+&#"                                                    ; 21d6: 25 25 26... %%&
l21dc
    !text "#&%&"                                                      ; 21dc: 23 26 25... #&%
l21e0
    !byte $8f, $8f, $84,   0, $f1, $d1, $b6, $b1, $8f, $8f, $d1, $f1  ; 21e0: 8f 8f 84... ...
    !byte $b1, $71,   0, $71                                          ; 21ec: b1 71 00... .q.
l21f0
    !byte $ff, $ff,   0,   0, $ff,   1,   0,   0,   0,   0, $ff,   0  ; 21f0: ff ff 00... ...
    !byte   0,   0,   0,   1                                          ; 21fc: 00 00 00... ...
l2200
    !text "xvtz"                                                      ; 2200: 78 76 74... xvt
l2204
    !byte $43, $3f,   0, $c1                                          ; 2204: 43 3f 00... C?.
l2208
    !byte $42, $40,   1, $81,   0, $10                                ; 2208: 42 40 01... B@.
    !text " &@P`p"                                                    ; 220e: 20 26 40...  &@
    !byte $80, $90, $a0, $b0,   1, $d0, $e0, $f0                      ; 2214: 80 90 a0... ...
l221c
    !text "vxttxvzz"                                                  ; 221c: 76 78 74... vxt
l2224
    !byte $af, $9f,   0,   0                                          ; 2224: af 9f 00... ...
inkey_keys_table
    !byte inkey_key_escape                                            ; 2228: 8f          .
    !byte inkey_key_space                                             ; 2229: 9d          .
    !byte inkey_key_b                                                 ; 222a: 9b          .
    !byte inkey_key_return                                            ; 222b: b6          .
    !byte inkey_key_slash                                             ; 222c: 97          .
    !byte inkey_key_colon                                             ; 222d: b7          .
    !byte inkey_key_z                                                 ; 222e: 9e          .
    !byte inkey_key_x                                                 ; 222f: bd          .

unused4
    !text "JJJJ)"                                                     ; 2230: 4a 4a 4a... JJJ
    !byte   3, $aa, $60                                               ; 2235: 03 aa 60    ..`

increment_ptr_and_clear_carry
    inc ptr_low                                                       ; 2238: e6 8c       ..
    bne skip_increment                                                ; 223a: d0 02       ..
    inc ptr_high                                                      ; 223c: e6 8d       ..
skip_increment
    clc                                                               ; 223e: 18          .
    rts                                                               ; 223f: 60          `

add_a_to_ptr
    clc                                                               ; 2240: 18          .
    adc ptr_low                                                       ; 2241: 65 8c       e.
    sta ptr_low                                                       ; 2243: 85 8c       ..
    bcc return1                                                       ; 2245: 90 02       ..
    inc ptr_high                                                      ; 2247: e6 8d       ..
return1
    rts                                                               ; 2249: 60          `

reverse_nybbles_and_add_one
    lda l0088                                                         ; 224a: a5 88       ..
    asl                                                               ; 224c: 0a          .
    asl                                                               ; 224d: 0a          .
    asl                                                               ; 224e: 0a          .
    asl                                                               ; 224f: 0a          .
    sec                                                               ; 2250: 38          8
    adc l0088                                                         ; 2251: 65 88       e.
    sta l0088                                                         ; 2253: 85 88       ..
    rts                                                               ; 2255: 60          `

sub_c2256
    lda #<special_cave_2                                              ; 2256: a9 3f       .?
    sta ptr_low                                                       ; 2258: 85 8c       ..
    lda #>special_cave_2                                              ; 225a: a9 50       .P
    sta ptr_high                                                      ; 225c: 85 8d       ..
    ldy #0                                                            ; 225e: a0 00       ..
    ldx #$14                                                          ; 2260: a2 14       ..
    stx l0088                                                         ; 2262: 86 88       ..
c2264
    lda l0078                                                         ; 2264: a5 78       .x
    beq c2274                                                         ; 2266: f0 0c       ..
    jsr reverse_nybbles_and_add_one                                   ; 2268: 20 4a 22     J"
loop_c226b
    cmp l0078                                                         ; 226b: c5 78       .x
    bcc c2274                                                         ; 226d: 90 05       ..
    sec                                                               ; 226f: 38          8
    sbc l0078                                                         ; 2270: e5 78       .x
    bne loop_c226b                                                    ; 2272: d0 f7       ..
c2274
    sta loop_counter                                                  ; 2274: 85 77       .w
increment_ptr_using_40_bytes_out_of_every_64
    inc ptr_low                                                       ; 2276: e6 8c       ..
    lda ptr_low                                                       ; 2278: a5 8c       ..
    and #$3f                                                          ; 227a: 29 3f       )?
    cmp #$28                                                          ; 227c: c9 28       .(
    bcc c2288                                                         ; 227e: 90 08       ..
    lda #$18                                                          ; 2280: a9 18       ..
    jsr add_a_to_ptr                                                  ; 2282: 20 40 22     @"
    dex                                                               ; 2285: ca          .
    beq return1                                                       ; 2286: f0 c1       ..
c2288
    dec loop_counter                                                  ; 2288: c6 77       .w
    bpl increment_ptr_using_40_bytes_out_of_every_64                  ; 228a: 10 ea       ..
    lda l0079                                                         ; 228c: a5 79       .y
    sta (ptr_low),y                                                   ; 228e: 91 8c       ..
    bpl c2264                                                         ; 2290: 10 d2       ..
reset_grid_of_sprites
    ldx #$f0                                                          ; 2292: a2 f0       ..
    lda #$ff                                                          ; 2294: a9 ff       ..
reset_grid_of_sprites_loop
    dex                                                               ; 2296: ca          .
    sta grid_of_screen_sprites,x                                      ; 2297: 9d 00 0c    ...
    bne reset_grid_of_sprites_loop                                    ; 229a: d0 fa       ..
    ldx #$14                                                          ; 229c: a2 14       ..
clear_backwards_status_bar_loop
    dex                                                               ; 229e: ca          .
    sta backwards_status_bar,x                                        ; 229f: 9d 28 50    .(P
    bne clear_backwards_status_bar_loop                               ; 22a2: d0 fa       ..
    rts                                                               ; 22a4: 60          `

unused5
    txa                                                               ; 22a5: 8a          .
    sec                                                               ; 22a6: 38          8
    sbc #$90                                                          ; 22a7: e9 90       ..
    cmp #$10                                                          ; 22a9: c9 10       ..
    bpl unused6                                                       ; 22ab: 10 04       ..
    tax                                                               ; 22ad: aa          .
    lda l21e0,x                                                       ; 22ae: bd e0 21    ..!
unused6
    tax                                                               ; 22b1: aa          .
    rts                                                               ; 22b2: 60          `

sub_c22b3
    ldy #<special_cave_1                                              ; 22b3: a0 00       ..
    sty ptr_low                                                       ; 22b5: 84 8c       ..
    lda #>special_cave_1                                              ; 22b7: a9 50       .P
    sta ptr_high                                                      ; 22b9: 85 8d       ..
    ldx #$16                                                          ; 22bb: a2 16       ..
c22bd
    lda ptr_low                                                       ; 22bd: a5 8c       ..
    and #$3f                                                          ; 22bf: 29 3f       )?
    cmp #$28                                                          ; 22c1: c9 28       .(
    bpl c22dc                                                         ; 22c3: 10 17       ..
    jsr reverse_nybbles_and_add_one                                   ; 22c5: 20 4a 22     J"
    lsr                                                               ; 22c8: 4a          J
    lsr                                                               ; 22c9: 4a          J
    lsr                                                               ; 22ca: 4a          J
    cmp l005a                                                         ; 22cb: c5 5a       .Z
    bne c22d7                                                         ; 22cd: d0 08       ..
    lda (ptr_low),y                                                   ; 22cf: b1 8c       ..
    and #$7f                                                          ; 22d1: 29 7f       ).
    ora l0072                                                         ; 22d3: 05 72       .r
    sta (ptr_low),y                                                   ; 22d5: 91 8c       ..
c22d7
    jsr increment_ptr_and_clear_carry                                 ; 22d7: 20 38 22     8"
    bcc c22bd                                                         ; 22da: 90 e1       ..
c22dc
    lda #$18                                                          ; 22dc: a9 18       ..
    jsr add_a_to_ptr                                                  ; 22de: 20 40 22     @"
    dex                                                               ; 22e1: ca          .
    bne c22bd                                                         ; 22e2: d0 d9       ..
    lda data_set_ptr_low                                              ; 22e4: a5 46       .F
    asl                                                               ; 22e6: 0a          .
    asl                                                               ; 22e7: 0a          .
    sec                                                               ; 22e8: 38          8
    adc data_set_ptr_low                                              ; 22e9: 65 46       eF
    sta data_set_ptr_low                                              ; 22eb: 85 46       .F
    ora cave_number                                                   ; 22ed: 05 87       ..
    and #$9e                                                          ; 22ef: 29 9e       ).
    tay                                                               ; 22f1: a8          .
    iny                                                               ; 22f2: c8          .
    ldx #$85                                                          ; 22f3: a2 85       ..
    jsr c2c2c                                                         ; 22f5: 20 2c 2c     ,,
    rts                                                               ; 22f8: 60          `

unused7
    lda #$eb                                                          ; 22f9: a9 eb       ..
    sta l2c16                                                         ; 22fb: 8d 16 2c    ..,
    rts                                                               ; 22fe: 60          `

unused8
    rts                                                               ; 22ff: 60          `

draw_grid_of_sprites
    jsr sub_c2b2c                                                     ; 2300: 20 2c 2b     ,+
    jsr sub_c2800                                                     ; 2303: 20 00 28     .(
    lda #$5f                                                          ; 2306: a9 5f       ._
    sta screen_addr1_high                                             ; 2308: 85 8b       ..
    ldy #$80                                                          ; 230a: a0 80       ..
    lda #opcode_lda_abs_y                                             ; 230c: a9 b9       ..
    sta opcode_to_change                                              ; 230e: 8d 57 23    .W#
    lda #<grid_of_screen_sprites                                      ; 2311: a9 00       ..
    sta grid_addr1_low                                                ; 2313: 8d 5c 23    .\#
    sta grid_addr2_low                                                ; 2316: 8d 61 23    .a#
    lda #>grid_of_screen_sprites                                      ; 2319: a9 0c       ..
    sta grid_addr1_high                                               ; 231b: 8d 5d 23    .]#
    sta grid_addr2_high                                               ; 231e: 8d 62 23    .b#
    ldx #$f0                                                          ; 2321: a2 f0       ..
    bne c234a                                                         ; 2323: d0 25       .%             ; ALWAYS branch

sub_c2325
    ldy #<start_of_grid_screen_address                                ; 2325: a0 c0       ..
    lda #>start_of_grid_screen_address                                ; 2327: a9 5b       .[
sub_c2329
    sta screen_addr1_high                                             ; 2329: 85 8b       ..
    lda #>backwards_status_bar                                        ; 232b: a9 50       .P
    ldx #<backwards_status_bar                                        ; 232d: a2 28       .(
    stx grid_addr1_low                                                ; 232f: 8e 5c 23    .\#
    stx grid_addr2_low                                                ; 2332: 8e 61 23    .a#
    sta grid_addr1_high                                               ; 2335: 8d 5d 23    .]#
    sta grid_addr2_high                                               ; 2338: 8d 62 23    .b#
sub_c233b
l233c = sub_c233b+1
    lda #>tile_map                                                    ; 233b: a9 32       .2
    sta tile_map_ptr_high                                             ; 233d: 85 86       ..
    lda #opcode_ldy_abs                                               ; 233f: a9 ac       ..
    sta opcode_to_change                                              ; 2341: 8d 57 23    .W#
    ldx #<players_and_men_status_bar                                  ; 2344: a2 14       ..
    lda status_text_address_low                                       ; 2346: a5 69       .i
    sta tile_map_ptr_low                                              ; 2348: 85 85       ..
c234a
    sty screen_addr1_low                                              ; 234a: 84 8a       ..
draw_grid_loop
    ldy #0                                                            ; 234c: a0 00       ..
    sty grid_x                                                        ; 234e: 84 73       .s
grid_draw_row_loop
    lda (tile_map_ptr_low),y                                          ; 2350: b1 85       ..
    tay                                                               ; 2352: a8          .
    bpl opcode_to_change                                              ; 2353: 10 02       ..
    ldy #9                                                            ; 2355: a0 09       ..
opcode_to_change
    ldy l1f80                                                         ; 2357: ac 80 1f    ...
    dex                                                               ; 235a: ca          .
sub_c235b
grid_addr1_low = sub_c235b+1
grid_addr1_high = sub_c235b+2
    cmp backwards_status_bar,x                                        ; 235b: dd 28 50    .(P
    beq skip_draw_sprite                                              ; 235e: f0 49       .I
sub_c2360
grid_addr2_low = sub_c2360+1
grid_addr2_high = sub_c2360+2
    sta backwards_status_bar,x                                        ; 2360: 9d 28 50    .(P
    tay                                                               ; 2363: a8          .
    clc                                                               ; 2364: 18          .
    lda sprite_addresses_low,y                                        ; 2365: b9 00 20    ..
    sta ptr_low                                                       ; 2368: 85 8c       ..
    adc #$10                                                          ; 236a: 69 10       i.
    sta next_ptr_low                                                  ; 236c: 85 82       ..
    lda sprite_addresses_high,y                                       ; 236e: b9 80 20    ..
    sta ptr_high                                                      ; 2371: 85 8d       ..
    sta next_ptr_high                                                 ; 2373: 85 83       ..
    ; Each sprite is two character rows tall. screen_addr2_low/high is the destination
    ; screen address for the second character row of the sprite
    lda screen_addr1_low                                              ; 2375: a5 8a       ..
    adc #$40                                                          ; 2377: 69 40       i@
    sta screen_addr2_low                                              ; 2379: 85 80       ..
    lda screen_addr1_high                                             ; 237b: a5 8b       ..
    adc #1                                                            ; 237d: 69 01       i.
    sta screen_addr2_high                                             ; 237f: 85 81       ..
    ; This next loop draws a single sprite in the grid.
    ; It draws two character rows at the same time, with 16 bytes in each row.
    ldy #$0f                                                          ; 2381: a0 0f       ..
draw_sprite_loop
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
skip_draw_sprite
    clc                                                               ; 23a9: 18          .
    lda screen_addr1_low                                              ; 23aa: a5 8a       ..
    adc #$10                                                          ; 23ac: 69 10       i.
    sta screen_addr1_low                                              ; 23ae: 85 8a       ..
    bcc c23b4                                                         ; 23b0: 90 02       ..
    inc screen_addr1_high                                             ; 23b2: e6 8b       ..
c23b4
    inc grid_x                                                        ; 23b4: e6 73       .s
    ldy grid_x                                                        ; 23b6: a4 73       .s
    cpy #20                                                           ; 23b8: c0 14       ..
    bne grid_draw_row_loop                                            ; 23ba: d0 94       ..
    txa                                                               ; 23bc: 8a          .
    beq return2                                                       ; 23bd: f0 1c       ..
    clc                                                               ; 23bf: 18          .
    lda screen_addr1_low                                              ; 23c0: a5 8a       ..
    adc #$40                                                          ; 23c2: 69 40       i@
    sta screen_addr1_low                                              ; 23c4: 85 8a       ..
    lda screen_addr1_high                                             ; 23c6: a5 8b       ..
    adc #1                                                            ; 23c8: 69 01       i.
    sta screen_addr1_high                                             ; 23ca: 85 8b       ..
    lda tile_map_ptr_low                                              ; 23cc: a5 85       ..
    adc #$40                                                          ; 23ce: 69 40       i@
    sta tile_map_ptr_low                                              ; 23d0: 85 85       ..
    lda tile_map_ptr_high                                             ; 23d2: a5 86       ..
    adc #0                                                            ; 23d4: 69 00       i.
    sta tile_map_ptr_high                                             ; 23d6: 85 86       ..
    jmp draw_grid_loop                                                ; 23d8: 4c 4c 23    LL#

return2
    rts                                                               ; 23db: 60          `

unused9
    !byte $a0,   7, $9a, $a9, $a9, $0b, $c5, $7a, $d0,   2, $a5, $74  ; 23dc: a0 07 9a... ...

unused10
    sta l007a                                                         ; 23e8: 85 7a       .z
    lda l0074                                                         ; 23ea: a5 74       .t
    and #$7f                                                          ; 23ec: 29 7f       ).
    tax                                                               ; 23ee: aa          .
    rts                                                               ; 23ef: 60          `

unused11
unused12
    txa                                                               ; 23f0: 8a          .
    and #$7f                                                          ; 23f1: 29 7f       ).
    cmp l0078                                                         ; 23f3: c5 78       .x
    bne c23f9                                                         ; 23f5: d0 02       ..
    lda l0076                                                         ; 23f7: a5 76       .v
c23f9
    sta l0078                                                         ; 23f9: 85 78       .x
    ldx l0076                                                         ; 23fb: a6 76       .v
    rts                                                               ; 23fd: 60          `

unused13
    !byte $76, $60                                                    ; 23fe: 76 60       v`

sub_c2400
    ldy #$5f                                                          ; 2400: a0 5f       ._
    bne c2406                                                         ; 2402: d0 02       ..
sub_c2404
    ldy #$26                                                          ; 2404: a0 26       .&
c2406
    sty l243a                                                         ; 2406: 8c 3a 24    .:$
    lda #$14                                                          ; 2409: a9 14       ..
    sta tile_map_ptr_low                                              ; 240b: 85 85       ..
    lda #>special_cave_1                                              ; 240d: a9 50       .P
    sta ptr_high                                                      ; 240f: 85 8d       ..
    lda #<special_cave_1                                              ; 2411: a9 00       ..
    sta ptr_low                                                       ; 2413: 85 8c       ..
    ldy #$40                                                          ; 2415: a0 40       .@
c2417
    lda #$26                                                          ; 2417: a9 26       .&
    sta tile_map_ptr_high                                             ; 2419: 85 86       ..
    lda (ptr_low),y                                                   ; 241b: b1 8c       ..
    sta l0076                                                         ; 241d: 85 76       .v
    iny                                                               ; 241f: c8          .
    lda (ptr_low),y                                                   ; 2420: b1 8c       ..
    tax                                                               ; 2422: aa          .
c2423
    ldy #$42                                                          ; 2423: a0 42       .B
    lda (ptr_low),y                                                   ; 2425: b1 8c       ..
    sta l0078                                                         ; 2427: 85 78       .x
    cpx #4                                                            ; 2429: e0 04       ..
    bmi c2461                                                         ; 242b: 30 34       04
    txa                                                               ; 242d: 8a          .
    bmi c2461                                                         ; 242e: 30 31       01
    ora #$80                                                          ; 2430: 09 80       ..
    tax                                                               ; 2432: aa          .
    and #$0f                                                          ; 2433: 29 0f       ).
    tay                                                               ; 2435: a8          .
    lda l21d0,y                                                       ; 2436: b9 d0 21    ..!
sub_c2439
l243a = sub_c2439+1
    beq c249a                                                         ; 2439: f0 5f       ._
    sta l2452                                                         ; 243b: 8d 52 24    .R$
    lda l21c0,y                                                       ; 243e: b9 c0 21    ..!
    sta l2451                                                         ; 2441: 8d 51 24    .Q$
    ldy #1                                                            ; 2444: a0 01       ..
    lda (ptr_low),y                                                   ; 2446: b1 8c       ..
    sta l0074                                                         ; 2448: 85 74       .t
    ldy #$81                                                          ; 244a: a0 81       ..
    lda (ptr_low),y                                                   ; 244c: b1 8c       ..
    sta l007a                                                         ; 244e: 85 7a       .z
sub_c2450
l2451 = sub_c2450+1
l2452 = sub_c2450+2
    jsr sub_c2500                                                     ; 2450: 20 00 25     .%
    lda l007a                                                         ; 2453: a5 7a       .z
    ldy #$81                                                          ; 2455: a0 81       ..
    sta (ptr_low),y                                                   ; 2457: 91 8c       ..
    lda l0074                                                         ; 2459: a5 74       .t
    and #$7f                                                          ; 245b: 29 7f       ).
    ldy #1                                                            ; 245d: a0 01       ..
    bpl c2467                                                         ; 245f: 10 06       ..
c2461
    ldy #1                                                            ; 2461: a0 01       ..
    lda (ptr_low),y                                                   ; 2463: b1 8c       ..
    and #$7f                                                          ; 2465: 29 7f       ).
c2467
    sta (ptr_low),y                                                   ; 2467: 91 8c       ..
    lda l0076                                                         ; 2469: a5 76       .v
    ldy #$40                                                          ; 246b: a0 40       .@
    sta (ptr_low),y                                                   ; 246d: 91 8c       ..
    stx l0076                                                         ; 246f: 86 76       .v
    ldx l0078                                                         ; 2471: a6 78       .x
    inc ptr_low                                                       ; 2473: e6 8c       ..
    dec tile_map_ptr_high                                             ; 2475: c6 86       ..
    bne c2423                                                         ; 2477: d0 aa       ..
    lda l0076                                                         ; 2479: a5 76       .v
    sta (ptr_low),y                                                   ; 247b: 91 8c       ..
    lda #$1a                                                          ; 247d: a9 1a       ..
    jsr add_a_to_ptr                                                  ; 247f: 20 40 22     @"
    dec tile_map_ptr_low                                              ; 2482: c6 85       ..
    bne c2417                                                         ; 2484: d0 91       ..
    ldy #$26                                                          ; 2486: a0 26       .&
loop_c2488
    lda l5500,y                                                       ; 2488: b9 00 55    ..U
    and #$7f                                                          ; 248b: 29 7f       ).
    sta l5500,y                                                       ; 248d: 99 00 55    ..U
    dey                                                               ; 2490: 88          .
    bne loop_c2488                                                    ; 2491: d0 f5       ..
    lda (l006a),y                                                     ; 2493: b1 6a       .j
    and #$7f                                                          ; 2495: 29 7f       ).
    sta (l006a),y                                                     ; 2497: 91 6a       .j
    rts                                                               ; 2499: 60          `

c249a
    ldy #$81                                                          ; 249a: a0 81       ..
    lda (ptr_low),y                                                   ; 249c: b1 8c       ..
    beq c24d4                                                         ; 249e: f0 34       .4
    cpx #$c0                                                          ; 24a0: e0 c0       ..
    bmi c24a7                                                         ; 24a2: 30 03       0.
    jsr sub_c24db                                                     ; 24a4: 20 db 24     .$
c24a7
    and #$4f                                                          ; 24a7: 29 4f       )O
    tay                                                               ; 24a9: a8          .
    asl                                                               ; 24aa: 0a          .
    bmi c2461                                                         ; 24ab: 30 b4       0.
    lda l2100,y                                                       ; 24ad: b9 00 21    ..!
    beq c2461                                                         ; 24b0: f0 af       ..
    lda l0076                                                         ; 24b2: a5 76       .v
    bne c24bc                                                         ; 24b4: d0 06       ..
    ldy #$80                                                          ; 24b6: a0 80       ..
    lda (ptr_low),y                                                   ; 24b8: b1 8c       ..
    beq c24c6                                                         ; 24ba: f0 0a       ..
c24bc
    lda l0078                                                         ; 24bc: a5 78       .x
    bne c2461                                                         ; 24be: d0 a1       ..
    ldy #$82                                                          ; 24c0: a0 82       ..
    lda (ptr_low),y                                                   ; 24c2: b1 8c       ..
    bne c2461                                                         ; 24c4: d0 9b       ..
c24c6
    txa                                                               ; 24c6: 8a          .
    ora #$40                                                          ; 24c7: 09 40       .@
    sta lfff6,y                                                       ; 24c9: 99 f6 ff    ...
    lda #$80                                                          ; 24cc: a9 80       ..
    sta (ptr_low),y                                                   ; 24ce: 91 8c       ..
loop_c24d0
    ldx #$80                                                          ; 24d0: a2 80       ..
    bne c2461                                                         ; 24d2: d0 8d       ..
c24d4
    txa                                                               ; 24d4: 8a          .
    ora #$40                                                          ; 24d5: 09 40       .@
    sta (ptr_low),y                                                   ; 24d7: 91 8c       ..
    bne loop_c24d0                                                    ; 24d9: d0 f5       ..
sub_c24db
    pha                                                               ; 24db: 48          H
    and #$0f                                                          ; 24dc: 29 0f       ).
    tay                                                               ; 24de: a8          .
    lda l2180,y                                                       ; 24df: b9 80 21    ..!
    beq c24e8                                                         ; 24e2: f0 04       ..
    ldy #$81                                                          ; 24e4: a0 81       ..
    sta (ptr_low),y                                                   ; 24e6: 91 8c       ..
c24e8
    txa                                                               ; 24e8: 8a          .
    and #1                                                            ; 24e9: 29 01       ).
    eor #$4b                                                          ; 24eb: 49 4b       IK
    tay                                                               ; 24ed: a8          .
    sta l0000,y                                                       ; 24ee: 99 00 00    ...
    txa                                                               ; 24f1: 8a          .
    and #$bf                                                          ; 24f2: 29 bf       ).
    tax                                                               ; 24f4: aa          .
    pla                                                               ; 24f5: 68          h
    rts                                                               ; 24f6: 60          `

unused1
    !byte $60,   3, $d0,   2, $e6, $4a, $60,   1, $60                 ; 24f7: 60 03 d0... `..

sub_c2500
    cpx #$c0                                                          ; 2500: e0 c0       ..
    bpl c2542                                                         ; 2502: 10 3e       .>
    ldy #8                                                            ; 2504: a0 08       ..
loop_c2506
    lda l0072,y                                                       ; 2506: b9 72 00    .r.
    bne c250b                                                         ; 2509: d0 00       ..             ; redundant instruction
c250b
    and #7                                                            ; 250b: 29 07       ).
    eor #7                                                            ; 250d: 49 07       I.
    beq c2542                                                         ; 250f: f0 31       .1
    dey                                                               ; 2511: 88          .
    dey                                                               ; 2512: 88          .
    bne loop_c2506                                                    ; 2513: d0 f1       ..
    txa                                                               ; 2515: 8a          .
    lsr                                                               ; 2516: 4a          J
    lsr                                                               ; 2517: 4a          J
    lsr                                                               ; 2518: 4a          J
    and #7                                                            ; 2519: 29 07       ).
    tay                                                               ; 251b: a8          .
    ldx l221c,y                                                       ; 251c: be 1c 22    .."
    lda l0000,x                                                       ; 251f: b5 00       ..
    beq c2534                                                         ; 2521: f0 11       ..
    lda l2110,y                                                       ; 2523: b9 10 21    ..!
    tay                                                               ; 2526: a8          .
    ldx l221c,y                                                       ; 2527: be 1c 22    .."
    lda l0000,x                                                       ; 252a: b5 00       ..
    beq c2534                                                         ; 252c: f0 06       ..
    ldx #0                                                            ; 252e: a2 00       ..
    lda l2110,y                                                       ; 2530: b9 10 21    ..!
    tay                                                               ; 2533: a8          .
c2534
    lda l2118,y                                                       ; 2534: b9 18 21    ..!
    cpx #0                                                            ; 2537: e0 00       ..
    bne c253d                                                         ; 2539: d0 02       ..
    tax                                                               ; 253b: aa          .
    rts                                                               ; 253c: 60          `

c253d
    sta l0000,x                                                       ; 253d: 95 00       ..
    ldx #0                                                            ; 253f: a2 00       ..
    rts                                                               ; 2541: 60          `

c2542
    txa                                                               ; 2542: 8a          .
    ldx #$40                                                          ; 2543: a2 40       .@
    and #8                                                            ; 2545: 29 08       ).
    beq c254b                                                         ; 2547: f0 02       ..
    ldx #$30                                                          ; 2549: a2 30       .0
c254b
    stx l2572                                                         ; 254b: 8e 72 25    .r%
    stx l004c                                                         ; 254e: 86 4c       .L
    ldy #0                                                            ; 2550: a0 00       ..
    lda (ptr_low),y                                                   ; 2552: b1 8c       ..
    sta grid_x                                                        ; 2554: 85 73       .s
    sty loop_counter                                                  ; 2556: 84 77       .w
    ldy #2                                                            ; 2558: a0 02       ..
    lda (ptr_low),y                                                   ; 255a: b1 8c       ..
    sta l0075                                                         ; 255c: 85 75       .u
    ldy #$80                                                          ; 255e: a0 80       ..
    lda (ptr_low),y                                                   ; 2560: b1 8c       ..
    sta l0079                                                         ; 2562: 85 79       .y
    ldy #$82                                                          ; 2564: a0 82       ..
    lda (ptr_low),y                                                   ; 2566: b1 8c       ..
    sta l007b                                                         ; 2568: 85 7b       .{
    ldx #9                                                            ; 256a: a2 09       ..
loop_c256c
    lda l0072,x                                                       ; 256c: b5 72       .r
    and #$0f                                                          ; 256e: 29 0f       ).
    tay                                                               ; 2570: a8          .
sub_c2571
l2572 = sub_c2571+1
    lda l2140,y                                                       ; 2571: b9 40 21    .@!
    beq c2578                                                         ; 2574: f0 02       ..
    sta l0072,x                                                       ; 2576: 95 72       .r
c2578
    dex                                                               ; 2578: ca          .
    bne loop_c256c                                                    ; 2579: d0 f1       ..
    ldy #0                                                            ; 257b: a0 00       ..
    lda grid_x                                                        ; 257d: a5 73       .s
    and #$7f                                                          ; 257f: 29 7f       ).
    sta (ptr_low),y                                                   ; 2581: 91 8c       ..
    ldy #2                                                            ; 2583: a0 02       ..
    lda l0075                                                         ; 2585: a5 75       .u
    sta (ptr_low),y                                                   ; 2587: 91 8c       ..
    ldy #$80                                                          ; 2589: a0 80       ..
    lda l0079                                                         ; 258b: a5 79       .y
    sta (ptr_low),y                                                   ; 258d: 91 8c       ..
    ldy #$82                                                          ; 258f: a0 82       ..
    lda l007b                                                         ; 2591: a5 7b       .{
    sta (ptr_low),y                                                   ; 2593: 91 8c       ..
    ldx loop_counter                                                  ; 2595: a6 77       .w
    rts                                                               ; 2597: 60          `

    ldy #$82                                                          ; 2598: a0 82       ..
    lda l007b                                                         ; 259a: a5 7b       .{
    sta (ptr_low),y                                                   ; 259c: 91 8c       ..
    lda l0054                                                         ; 259e: a5 54       .T
    beq c25a6                                                         ; 25a0: f0 04       ..
    tax                                                               ; 25a2: aa          .
    sta l004c                                                         ; 25a3: 85 4c       .L
    rts                                                               ; 25a5: 60          `

c25a6
    inc l0056                                                         ; 25a6: e6 56       .V
    lda #$0e                                                          ; 25a8: a9 0e       ..
    bit l0074                                                         ; 25aa: 24 74       $t
    beq c25ba                                                         ; 25ac: f0 0c       ..
    bit l0076                                                         ; 25ae: 24 76       $v
    beq c25ba                                                         ; 25b0: f0 08       ..
    bit l0078                                                         ; 25b2: 24 78       $x
    beq c25ba                                                         ; 25b4: f0 04       ..
    bit l007a                                                         ; 25b6: 24 7a       $z
    bne return3                                                       ; 25b8: d0 3b       .;
c25ba
    stx l0060                                                         ; 25ba: 86 60       .`
    stx data_set_ptr_low                                              ; 25bc: 86 46       .F
    inc l0057                                                         ; 25be: e6 57       .W
    lda l0057                                                         ; 25c0: a5 57       .W
    cmp l0055                                                         ; 25c2: c5 55       .U
    bne return3                                                       ; 25c4: d0 2f       ./
    lda #0                                                            ; 25c6: a9 00       ..
    sta l0057                                                         ; 25c8: 85 57       .W
    txa                                                               ; 25ca: 8a          .
    lsr                                                               ; 25cb: 4a          J
    lsr                                                               ; 25cc: 4a          J
    lsr                                                               ; 25cd: 4a          J
    and #6                                                            ; 25ce: 29 06       ).
    tay                                                               ; 25d0: a8          .
    cpx #$c0                                                          ; 25d1: e0 c0       ..
    bmi c25e2                                                         ; 25d3: 30 0d       0.
    lda l0074,y                                                       ; 25d5: b9 74 00    .t.
    beq c25e9                                                         ; 25d8: f0 0f       ..
c25da
    txa                                                               ; 25da: 8a          .
    clc                                                               ; 25db: 18          .
    adc #$10                                                          ; 25dc: 69 10       i.
    and #$7f                                                          ; 25de: 29 7f       ).
    tax                                                               ; 25e0: aa          .
    rts                                                               ; 25e1: 60          `

c25e2
    lda l0074,y                                                       ; 25e2: b9 74 00    .t.
    and #$0e                                                          ; 25e5: 29 0e       ).
    bne c25da                                                         ; 25e7: d0 f1       ..
c25e9
    lda l005a                                                         ; 25e9: a5 5a       .Z
    lsr                                                               ; 25eb: 4a          J
    bcc c25f1                                                         ; 25ec: 90 03       ..
    jsr c25da                                                         ; 25ee: 20 da 25     .%
c25f1
    txa                                                               ; 25f1: 8a          .
    sta l0074,y                                                       ; 25f2: 99 74 00    .t.
return3
    rts                                                               ; 25f5: 60          `

unused14
    sbc l0ba9,y                                                       ; 25f6: f9 a9 0b    ...
    sta l007a                                                         ; 25f9: 85 7a       .z
    rts                                                               ; 25fb: 60          `

unused15
    rts                                                               ; 25fc: 60          `

    !byte   0, $60, $4a                                               ; 25fd: 00 60 4a    .`J

unused16
    stx l005b                                                         ; 2600: 86 5b       .[
    lda l005f                                                         ; 2602: a5 5f       ._
    bne unused17                                                      ; 2604: d0 03       ..
    inx                                                               ; 2606: e8          .
    bne unused18                                                      ; 2607: d0 05       ..
unused17
    ldx #$46                                                          ; 2609: a2 46       .F
    stx l005f                                                         ; 260b: 86 5f       ._
    rts                                                               ; 260d: 60          `

unused18
    lda l0062                                                         ; 260e: a5 62       .b
    and #$f0                                                          ; 2610: 29 f0       ).
    bne unused21                                                      ; 2612: d0 12       ..
    ldx #$0f                                                          ; 2614: a2 0f       ..
unused19
    lda #$41                                                          ; 2616: a9 41       .A
unused20
    sta l0048                                                         ; 2618: 85 48       .H
    clc                                                               ; 261a: 18          .
    adc ptr_low                                                       ; 261b: 65 8c       e.
    sta l0070                                                         ; 261d: 85 70       .p
    lda ptr_high                                                      ; 261f: a5 8d       ..
    adc #0                                                            ; 2621: 69 00       i.
    sta l0071                                                         ; 2623: 85 71       .q
    rts                                                               ; 2625: 60          `

unused21
    ldx #0                                                            ; 2626: a2 00       ..
    stx l0058                                                         ; 2628: 86 58       .X
    dex                                                               ; 262a: ca          .
unused22
    inx                                                               ; 262b: e8          .
    asl                                                               ; 262c: 0a          .
    bcc unused22                                                      ; 262d: 90 fc       ..
    lda l2224,x                                                       ; 262f: bd 24 22    .$"
    beq unused23                                                      ; 2632: f0 02       ..
    sta l0052                                                         ; 2634: 85 52       .R
unused23
    ldy l2200,x                                                       ; 2636: bc 00 22    .."
    sty grid_x                                                        ; 2639: 84 73       .s
    lda l0000,y                                                       ; 263b: b9 00 00    ...
    sta l0064                                                         ; 263e: 85 64       .d
    and #$0f                                                          ; 2640: 29 0f       ).
    tay                                                               ; 2642: a8          .
    lda l21f0,y                                                       ; 2643: b9 f0 21    ..!
    beq unused25                                                      ; 2646: f0 2c       .,
    bmi unused24                                                      ; 2648: 30 1d       0.
    ldy l2204,x                                                       ; 264a: bc 04 22    .."
    beq unused25                                                      ; 264d: f0 25       .%
    lda (ptr_low),y                                                   ; 264f: b1 8c       ..
    bne unused25                                                      ; 2651: d0 21       .!
    lda l0064                                                         ; 2653: a5 64       .d
    cmp #$45                                                          ; 2655: c9 45       .E
    beq unused25                                                      ; 2657: f0 1b       ..
    dec l0053                                                         ; 2659: c6 53       .S
    bne unused25                                                      ; 265b: d0 17       ..
    ora #$80                                                          ; 265d: 09 80       ..
    sta (ptr_low),y                                                   ; 265f: 91 8c       ..
    lda #4                                                            ; 2661: a9 04       ..
    sta l0053                                                         ; 2663: 85 53       .S
    inc l004a                                                         ; 2665: e6 4a       .J
unused24
    lda l0062                                                         ; 2667: a5 62       .b
    and #8                                                            ; 2669: 29 08       ).
    beq unused26                                                      ; 266b: f0 0b       ..
    ldy grid_x                                                        ; 266d: a4 73       .s
    lda #0                                                            ; 266f: a9 00       ..
    sta l0000,y                                                       ; 2671: 99 00 00    ...
unused25
    ldx l0052                                                         ; 2674: a6 52       .R
    bne unused19                                                      ; 2676: d0 9e       ..
unused26
    ldy grid_x                                                        ; 2678: a4 73       .s
    lda l0052                                                         ; 267a: a5 52       .R
    sta l0000,y                                                       ; 267c: 99 00 00    ...
    lda l2208,x                                                       ; 267f: bd 08 22    .."
    dex                                                               ; 2682: ca          .
    beq unused20                                                      ; 2683: f0 93       ..
    ldx #$80                                                          ; 2685: a2 80       ..
    bne unused20                                                      ; 2687: d0 8f       ..

sub_c2689
    ldx #7                                                            ; 2689: a2 07       ..
    stx loop_counter                                                  ; 268b: 86 77       .w
    ldx #0                                                            ; 268d: a2 00       ..
    stx l007c                                                         ; 268f: 86 7c       .|
read_keys_loop
    ldx loop_counter                                                  ; 2691: a6 77       .w
    lda inkey_keys_table,x                                            ; 2693: bd 28 22    .("
    tax                                                               ; 2696: aa          .
    tay                                                               ; 2697: a8          .
    lda #osbyte_inkey                                                 ; 2698: a9 81       ..
    jsr osbyte                                                        ; 269a: 20 f4 ff     ..            ; Read key within time limit, or read a specific key, or read machine type
    inx                                                               ; 269d: e8          .
    rol l007c                                                         ; 269e: 26 7c       &|
    dec loop_counter                                                  ; 26a0: c6 77       .w
    bpl read_keys_loop                                                ; 26a2: 10 ed       ..
    lda l0062                                                         ; 26a4: a5 62       .b
    ora l007c                                                         ; 26a6: 05 7c       .|
    sta l0062                                                         ; 26a8: 85 62       .b
    rts                                                               ; 26aa: 60          `

    !byte $62, $60                                                    ; 26ab: 62 60       b`

unused27
    ldx screen_addr1_low                                              ; 26ad: a6 8a       ..
    ldx l0050                                                         ; 26af: a6 50       .P
    cmp #$bd                                                          ; 26b1: c9 bd       ..
    bne unused31                                                      ; 26b3: d0 25       .%
    lda l0074                                                         ; 26b5: a5 74       .t
    and #$0f                                                          ; 26b7: 29 0f       ).
    tay                                                               ; 26b9: a8          .
    lda l2120,y                                                       ; 26ba: b9 20 21    . !
    beq unused28                                                      ; 26bd: f0 04       ..
    ldy #$80                                                          ; 26bf: a0 80       ..
    sty l0074                                                         ; 26c1: 84 74       .t
unused28
    cpx #$2d                                                          ; 26c3: e0 2d       .-
    beq unused30                                                      ; 26c5: f0 10       ..
    ldy l007a                                                         ; 26c7: a4 7a       .z
    bne unused29                                                      ; 26c9: d0 02       ..
    sta l007a                                                         ; 26cb: 85 7a       .z
unused29
    ldx #$1d                                                          ; 26cd: a2 1d       ..
    inc data_set_ptr_high                                             ; 26cf: e6 47       .G
    ldy l0051                                                         ; 26d1: a4 51       .Q
    bne unused30                                                      ; 26d3: d0 02       ..
    ldx #$2d                                                          ; 26d5: a2 2d       .-
unused30
    stx l0050                                                         ; 26d7: 86 50       .P
    rts                                                               ; 26d9: 60          `

unused31
    cpx #$1d                                                          ; 26da: e0 1d       ..
    beq unused29                                                      ; 26dc: f0 ef       ..
    rts                                                               ; 26de: 60          `

    and #$7f                                                          ; 26df: 29 7f       ).
    tax                                                               ; 26e1: aa          .
    cpx #$8a                                                          ; 26e2: e0 8a       ..
    and #$7f                                                          ; 26e4: 29 7f       ).
    tax                                                               ; 26e6: aa          .
    cpx #$18                                                          ; 26e7: e0 18       ..
    beq unused32                                                      ; 26e9: f0 12       ..
    lda #0                                                            ; 26eb: a9 00       ..
    sta l0062                                                         ; 26ed: 85 62       .b
    lda l005a                                                         ; 26ef: a5 5a       .Z
    cmp #$f0                                                          ; 26f1: c9 f0       ..
    bpl unused32                                                      ; 26f3: 10 08       ..
    ldx #$21                                                          ; 26f5: a2 21       .!
    inc l004a                                                         ; 26f7: e6 4a       .J
    lda #0                                                            ; 26f9: a9 00       ..
    sta status_text_address_low                                       ; 26fb: 85 69       .i
unused32
    rts                                                               ; 26fd: 60          `

    !byte   0, $24                                                    ; 26fe: 00 24       .$

sub_c2700
    jsr reset_clock                                                   ; 2700: 20 4d 2a     M*
    lda #1                                                            ; 2703: a9 01       ..
    sta l0067                                                         ; 2705: 85 67       .g
    lsr                                                               ; 2707: 4a          J
    sta l0066                                                         ; 2708: 85 66       .f
c270a
    lda #0                                                            ; 270a: a9 00       ..
    ldx #7                                                            ; 270c: a2 07       ..
loop_c270e
    sta data_set_ptr_low,x                                            ; 270e: 95 46       .F
    dex                                                               ; 2710: ca          .
    bpl loop_c270e                                                    ; 2711: 10 fb       ..
    sta status_text_address_low                                       ; 2713: 85 69       .i
    sta l0060                                                         ; 2715: 85 60       .`
    sta l0064                                                         ; 2717: 85 64       .d
    lda #$41                                                          ; 2719: a9 41       .A
    sta l0048                                                         ; 271b: 85 48       .H
    ldx #0                                                            ; 271d: a2 00       ..
    lda l0056                                                         ; 271f: a5 56       .V
    stx l0056                                                         ; 2721: 86 56       .V
    bne c2727                                                         ; 2723: d0 02       ..
    stx l0054                                                         ; 2725: 86 54       .T
c2727
    stx l0060                                                         ; 2727: 86 60       .`
    jsr sub_c2b90                                                     ; 2729: 20 90 2b     .+
    ldx l0065                                                         ; 272c: a6 65       .e
    bmi c2752                                                         ; 272e: 30 22       0"
    lda l0062                                                         ; 2730: a5 62       .b
    beq c2735                                                         ; 2732: f0 01       ..
    rts                                                               ; 2734: 60          `

c2735
    ldy #0                                                            ; 2735: a0 00       ..
    lda l005a                                                         ; 2737: a5 5a       .Z
    and #$10                                                          ; 2739: 29 10       ).
    beq c273f                                                         ; 273b: f0 02       ..
    ldy #$a0                                                          ; 273d: a0 a0       ..
c273f
    sty status_text_address_low                                       ; 273f: 84 69       .i
    lda l3100,x                                                       ; 2741: bd 00 31    ..1
    sta l0062                                                         ; 2744: 85 62       .b
    dec l0067                                                         ; 2746: c6 67       .g
    bne c2752                                                         ; 2748: d0 08       ..
    inc l0065                                                         ; 274a: e6 65       .e
    inx                                                               ; 274c: e8          .
    lda l3160,x                                                       ; 274d: bd 60 31    .`1
    sta l0067                                                         ; 2750: 85 67       .g
c2752
    jsr sub_c2400                                                     ; 2752: 20 00 24     .$
    lda l0064                                                         ; 2755: a5 64       .d
    and #$0f                                                          ; 2757: 29 0f       ).
    sta l0064                                                         ; 2759: 85 64       .d
    cmp #8                                                            ; 275b: c9 08       ..
    bne c2762                                                         ; 275d: d0 03       ..
    jmp c3040                                                         ; 275f: 4c 40 30    L@0

c2762
    jsr draw_grid_of_sprites                                          ; 2762: 20 00 23     .#
    jsr sub_c2325                                                     ; 2765: 20 25 23     %#
    jsr sub_c3000                                                     ; 2768: 20 00 30     .0
    lda l005b                                                         ; 276b: a5 5b       .[
    beq c2787                                                         ; 276d: f0 18       ..
    dec sub_second_ticks                                              ; 276f: c6 5c       .\
    bpl c2787                                                         ; 2771: 10 14       ..
    ldx #$0b                                                          ; 2773: a2 0b       ..
    stx sub_second_ticks                                              ; 2775: 86 5c       .\
    ; decrement time remaining
    ldy #$0c                                                          ; 2777: a0 0c       ..
    jsr decrement_status_bar_number                                   ; 2779: 20 aa 28     .(
    dec l006d                                                         ; 277c: c6 6d       .m
    bne c2787                                                         ; 277e: d0 07       ..
    lda #$b4                                                          ; 2780: a9 b4       ..
    sta status_text_address_low                                       ; 2782: 85 69       .i
    jmp c3040                                                         ; 2784: 4c 40 30    L@0

c2787
    lda l0064                                                         ; 2787: a5 64       .d
    cmp #1                                                            ; 2789: c9 01       ..
    bne c278f                                                         ; 278b: d0 02       ..
    inc l0049                                                         ; 278d: e6 49       .I
c278f
    cmp #4                                                            ; 278f: c9 04       ..
    bne c27a4                                                         ; 2791: d0 11       ..
    ldx #$85                                                          ; 2793: a2 85       ..
    ldy #$f0                                                          ; 2795: a0 f0       ..
    jsr c2c2c                                                         ; 2797: 20 2c 2c     ,,
    ldx #$85                                                          ; 279a: a2 85       ..
    ldy #$d2                                                          ; 279c: a0 d2       ..
    jsr c2c2c                                                         ; 279e: 20 2c 2c     ,,
    jsr sub_c2f00                                                     ; 27a1: 20 00 2f     ./
c27a4
    jsr sub_c2c80                                                     ; 27a4: 20 80 2c     .,
    dec l005a                                                         ; 27a7: c6 5a       .Z
    lda l005a                                                         ; 27a9: a5 5a       .Z
    and #7                                                            ; 27ab: 29 07       ).
    bne c27b7                                                         ; 27ad: d0 08       ..
    lda l0050                                                         ; 27af: a5 50       .P
    cmp #$1d                                                          ; 27b1: c9 1d       ..
    bne c27b7                                                         ; 27b3: d0 02       ..
    dec l0051                                                         ; 27b5: c6 51       .Q
c27b7
    ldx l005f                                                         ; 27b7: a6 5f       ._
    beq c27c8                                                         ; 27b9: f0 0d       ..
    inx                                                               ; 27bb: e8          .
    stx l005f                                                         ; 27bc: 86 5f       ._
    cpx #$4b                                                          ; 27be: e0 4b       .K
    bmi c27c8                                                         ; 27c0: 30 06       0.
    lda l0062                                                         ; 27c2: a5 62       .b
    bne return4                                                       ; 27c4: d0 29       .)
    dec l005f                                                         ; 27c6: c6 5f       ._
c27c8
    lda l0062                                                         ; 27c8: a5 62       .b
    lsr                                                               ; 27ca: 4a          J
    bcc c27d5                                                         ; 27cb: 90 08       ..
    lda l005f                                                         ; 27cd: a5 5f       ._
    bne c27d5                                                         ; 27cf: d0 04       ..
    lda #$46                                                          ; 27d1: a9 46       .F
    sta l005f                                                         ; 27d3: 85 5f       ._
c27d5
    lda cave_number                                                   ; 27d5: a5 87       ..
    cmp #$10                                                          ; 27d7: c9 10       ..
    bpl c27ec                                                         ; 27d9: 10 11       ..
    lda l005d                                                         ; 27db: a5 5d       .]
    and #$b0                                                          ; 27dd: 29 b0       ).
    eor #$b0                                                          ; 27df: 49 b0       I.
    beq c27ec                                                         ; 27e1: f0 09       ..
    lda l0062                                                         ; 27e3: a5 62       .b
    and #2                                                            ; 27e5: 29 02       ).
    beq c27ec                                                         ; 27e7: f0 03       ..
    jsr c3040                                                         ; 27e9: 20 40 30     @0
c27ec
    jmp c270a                                                         ; 27ec: 4c 0a 27    L.'

return4
    rts                                                               ; 27ef: 60          `

    !byte $27, $60, $f0,   6, $d0, $e9, $29, $23,   2                 ; 27f0: 27 60 f0... '`.
    !text "@`)"                                                       ; 27f9: 40 60 29    @`)
    !byte   8, $f0, $e5, $60                                          ; 27fc: 08 f0 e5... ...

sub_c2800
    ldx #$0e                                                          ; 2800: a2 0e       ..
    stx loop_counter                                                  ; 2802: 86 77       .w
loop_c2804
    ldy l2150,x                                                       ; 2804: bc 50 21    .P!
    ldx l1f80,y                                                       ; 2807: be 80 1f    ...
    lda l1f00,x                                                       ; 280a: bd 00 1f    ...
    sta l1f80,y                                                       ; 280d: 99 80 1f    ...
    dec loop_counter                                                  ; 2810: c6 77       .w
    ldx loop_counter                                                  ; 2812: a6 77       .w
    bpl loop_c2804                                                    ; 2814: 10 ee       ..
    lda l005a                                                         ; 2816: a5 5a       .Z
    and #3                                                            ; 2818: 29 03       ).
    asl                                                               ; 281a: 0a          .
    asl                                                               ; 281b: 0a          .
    asl                                                               ; 281c: 0a          .
    asl                                                               ; 281d: 0a          .
    tax                                                               ; 281e: aa          .
    lda l1f87,x                                                       ; 281f: bd 87 1f    ...
    eor #1                                                            ; 2822: 49 01       I.
    sta l1f87,x                                                       ; 2824: 9d 87 1f    ...
    lda l1fc7,x                                                       ; 2827: bd c7 1f    ...
    eor #1                                                            ; 282a: 49 01       I.
    sta l1fc7,x                                                       ; 282c: 9d c7 1f    ...
    lda l2156                                                         ; 282f: ad 56 21    .V!
    eor #$10                                                          ; 2832: 49 10       I.
    sta l2156                                                         ; 2834: 8d 56 21    .V!
    lda l0058                                                         ; 2837: a5 58       .X
    tay                                                               ; 2839: a8          .
    and #$3f                                                          ; 283a: 29 3f       )?
    tax                                                               ; 283c: aa          .
    lda sprite_addr_92,x                                              ; 283d: bd 80 1e    ...
    cpy #$c0                                                          ; 2840: c0 c0       ..
    bcc c2848                                                         ; 2842: 90 04       ..
    lsr                                                               ; 2844: 4a          J
    lsr                                                               ; 2845: 4a          J
    lsr                                                               ; 2846: 4a          J
    lsr                                                               ; 2847: 4a          J
c2848
    and #$0f                                                          ; 2848: 29 0f       ).
    ora #$20                                                          ; 284a: 09 20       .
    sta l1f8f                                                         ; 284c: 8d 8f 1f    ...
    inc l0058                                                         ; 284f: e6 58       .X
    rts                                                               ; 2851: 60          `

    !byte $8d, $8f, $1f, $e6, $58, $60, $d0,   5, $a5                 ; 2852: 8d 8f 1f... ...
    !text "^Ld(%"                                                     ; 285b: 5e 4c 64... ^Ld

sub_c2860
    jsr sub_c2689                                                     ; 2860: 20 89 26     .&
    lda l0062                                                         ; 2863: a5 62       .b
    and #$f0                                                          ; 2865: 29 f0       ).
    tax                                                               ; 2867: aa          .
    tay                                                               ; 2868: a8          .
    eor l005d                                                         ; 2869: 45 5d       E]
    bne c2872                                                         ; 286b: d0 05       ..
    lda l005e                                                         ; 286d: a5 5e       .^
    jmp c2877                                                         ; 286f: 4c 77 28    Lw(

c2872
    and l0062                                                         ; 2872: 25 62       %b
    bne c2877                                                         ; 2874: d0 01       ..
    txa                                                               ; 2876: 8a          .
c2877
    tax                                                               ; 2877: aa          .
    stx l005e                                                         ; 2878: 86 5e       .^
    lda l0062                                                         ; 287a: a5 62       .b
    and #$0f                                                          ; 287c: 29 0f       ).
    sta l0062                                                         ; 287e: 85 62       .b
    txa                                                               ; 2880: 8a          .
    and #$f0                                                          ; 2881: 29 f0       ).
    ora l0062                                                         ; 2883: 05 62       .b
    sta l0062                                                         ; 2885: 85 62       .b
    sty l005d                                                         ; 2887: 84 5d       .]
    rts                                                               ; 2889: 60          `

unused33
    !byte $bd,   0, $1f, $99, $80, $1f, $c6, $77, $a6, $77, $10, $ee  ; 288a: bd 00 1f... ...
    !byte $a5, $5a                                                    ; 2896: a5 5a       .Z

increment_status_bar_number
    lda tile_map,y                                                    ; 2898: b9 00 32    ..2
    clc                                                               ; 289b: 18          .
    adc #1                                                            ; 289c: 69 01       i.
    cmp #$3c                                                          ; 289e: c9 3c       .<
    bmi c28bc                                                         ; 28a0: 30 1a       0.
    lda #sprite_0                                                     ; 28a2: a9 32       .2
    sta tile_map,y                                                    ; 28a4: 99 00 32    ..2
    dey                                                               ; 28a7: 88          .
    bpl increment_status_bar_number                                   ; 28a8: 10 ee       ..
decrement_status_bar_number
    lda tile_map,y                                                    ; 28aa: b9 00 32    ..2
    sec                                                               ; 28ad: 38          8
    sbc #1                                                            ; 28ae: e9 01       ..
    cmp #sprite_0                                                     ; 28b0: c9 32       .2
    bpl c28bc                                                         ; 28b2: 10 08       ..
    lda #$3b                                                          ; 28b4: a9 3b       .;
    sta tile_map,y                                                    ; 28b6: 99 00 32    ..2
    dey                                                               ; 28b9: 88          .
    bpl decrement_status_bar_number                                   ; 28ba: 10 ee       ..
c28bc
    sta tile_map,y                                                    ; 28bc: 99 00 32    ..2
    rts                                                               ; 28bf: 60          `

add_a_to_status_bar_number_at_y
    sty l007c                                                         ; 28c0: 84 7c       .|
    sta l0072                                                         ; 28c2: 85 72       .r
    cmp #0                                                            ; 28c4: c9 00       ..
    beq c28d1                                                         ; 28c6: f0 09       ..
loop_c28c8
    jsr increment_status_bar_number                                   ; 28c8: 20 98 28     .(
    ldy l007c                                                         ; 28cb: a4 7c       .|
    dec l0072                                                         ; 28cd: c6 72       .r
    bne loop_c28c8                                                    ; 28cf: d0 f7       ..
c28d1
    ldy l007c                                                         ; 28d1: a4 7c       .|
    rts                                                               ; 28d3: 60          `

    !byte $81, $22, $20,   1                                          ; 28d4: 81 22 20... ."
    !text "AxvtzC?"                                                   ; 28d8: 41 78 76... Axv
    !byte   1, $81, $22, $20,   1, $41, $41, $98, $38, $e9, $10, $c9  ; 28df: 01 81 22... .."
    !byte   4, $10,   4, $aa, $bd, $f7, $28,   9, $80, $85, $77, $60  ; 28eb: 04 10 04... ...
    !byte   0,   0, $84,   1, $55, $28, $a5, $98, $0a                 ; 28f7: 00 00 84... ...

prepare_level
    lda #0                                                            ; 2900: a9 00       ..
    sta l0078                                                         ; 2902: 85 78       .x
    ldy cave_number                                                   ; 2904: a4 87       ..
    lda l4c90,y                                                       ; 2906: b9 90 4c    ..L
    and #$0f                                                          ; 2909: 29 0f       ).
    sta l0079                                                         ; 290b: 85 79       .y
    jsr sub_c2256                                                     ; 290d: 20 56 22     V"
    ldy cave_number                                                   ; 2910: a4 87       ..
    ldx #1                                                            ; 2912: a2 01       ..
loop_c2914
    lda colour_one_for_each_cave,y                                    ; 2914: b9 a4 4c    ..L
    lsr                                                               ; 2917: 4a          J
    lsr                                                               ; 2918: 4a          J
    lsr                                                               ; 2919: 4a          J
    lsr                                                               ; 291a: 4a          J
    sta l0072,x                                                       ; 291b: 95 72       .r
    tya                                                               ; 291d: 98          .
    clc                                                               ; 291e: 18          .
    adc #total_caves                                                  ; 291f: 69 14       i.
    tay                                                               ; 2921: a8          .
    inx                                                               ; 2922: e8          .
    cpx #4                                                            ; 2923: e0 04       ..
    bne loop_c2914                                                    ; 2925: d0 ed       ..
    ldy cave_number                                                   ; 2927: a4 87       ..
    lda cave_to_data_set,y                                            ; 2929: b9 e0 4c    ..L
    bmi c2982                                                         ; 292c: 30 54       0T
    tax                                                               ; 292e: aa          .
    lda #<data_sets                                                   ; 292f: a9 f4       ..
    sta ptr_low                                                       ; 2931: 85 8c       ..
    lda #>data_sets                                                   ; 2933: a9 4c       .L
    sta ptr_high                                                      ; 2935: 85 8d       ..
    txa                                                               ; 2937: 8a          .
    beq c2942                                                         ; 2938: f0 08       ..
loop_c293a
    lda #total_caves                                                  ; 293a: a9 14       ..
    jsr add_a_to_ptr                                                  ; 293c: 20 40 22     @"
    dex                                                               ; 293f: ca          .
    bne loop_c293a                                                    ; 2940: d0 f8       ..
c2942
    lda ptr_low                                                       ; 2942: a5 8c       ..
    sta data_set_ptr_low                                              ; 2944: 85 46       .F
    ldx difficulty_level                                              ; 2946: a6 89       ..
    dex                                                               ; 2948: ca          .
    txa                                                               ; 2949: 8a          .
    asl                                                               ; 294a: 0a          .
    asl                                                               ; 294b: 0a          .
    tay                                                               ; 294c: a8          .
    lda ptr_high                                                      ; 294d: a5 8d       ..
    sta data_set_ptr_high                                             ; 294f: 85 47       .G
    lda (ptr_low),y                                                   ; 2951: b1 8c       ..
    sta next_ptr_low                                                  ; 2953: 85 82       ..
    lda #$4e                                                          ; 2955: a9 4e       .N
    sta next_ptr_high                                                 ; 2957: 85 83       ..
    iny                                                               ; 2959: c8          .
    lda (ptr_low),y                                                   ; 295a: b1 8c       ..
    sty l0048                                                         ; 295c: 84 48       .H
    bpl c2964                                                         ; 295e: 10 04       ..
    inc next_ptr_high                                                 ; 2960: e6 83       ..
    and #$7f                                                          ; 2962: 29 7f       ).
c2964
    sta ptr_low                                                       ; 2964: 85 8c       ..
    jsr sub_c2d90                                                     ; 2966: 20 90 2d     .-
    lda data_set_ptr_low                                              ; 2969: a5 46       .F
    sta ptr_low                                                       ; 296b: 85 8c       ..
    lda data_set_ptr_high                                             ; 296d: a5 47       .G
    sta ptr_high                                                      ; 296f: 85 8d       ..
    ldy l0048                                                         ; 2971: a4 48       .H
    iny                                                               ; 2973: c8          .
    lda (ptr_low),y                                                   ; 2974: b1 8c       ..
    sta next_ptr_low                                                  ; 2976: 85 82       ..
    iny                                                               ; 2978: c8          .
    lda (ptr_low),y                                                   ; 2979: b1 8c       ..
    beq c2982                                                         ; 297b: f0 05       ..
    sta next_ptr_high                                                 ; 297d: 85 83       ..
    jsr sub_c2d50                                                     ; 297f: 20 50 2d     P-
c2982
    lda #<special_cave_0                                              ; 2982: a9 00       ..
    sta ptr_low                                                       ; 2984: 85 8c       ..
    lda #>special_cave_0                                              ; 2986: a9 47       .G
    sta ptr_high                                                      ; 2988: 85 8d       ..
    ldy cave_number                                                   ; 298a: a4 87       ..
    lda l4c90,y                                                       ; 298c: b9 90 4c    ..L
    lsr                                                               ; 298f: 4a          J
    lsr                                                               ; 2990: 4a          J
    lsr                                                               ; 2991: 4a          J
    lsr                                                               ; 2992: 4a          J
    sta loop_counter                                                  ; 2993: 85 77       .w
loop_c2995
    dey                                                               ; 2995: 88          .
    bmi c29a1                                                         ; 2996: 30 09       0.
    lda l4c7c,y                                                       ; 2998: b9 7c 4c    .|L
    jsr add_a_to_ptr                                                  ; 299b: 20 40 22     @"
    jmp loop_c2995                                                    ; 299e: 4c 95 29    L.)

c29a1
    lda ptr_low                                                       ; 29a1: a5 8c       ..
    sta next_ptr_low                                                  ; 29a3: 85 82       ..
    lda ptr_high                                                      ; 29a5: a5 8d       ..
    sta next_ptr_high                                                 ; 29a7: 85 83       ..
    jsr sub_c2d00                                                     ; 29a9: 20 00 2d     .-
set_palette
    ldy cave_number                                                   ; 29ac: a4 87       ..
    ldx #1                                                            ; 29ae: a2 01       ..
set_palette_loop
    lda colour_one_for_each_cave,y                                    ; 29b0: b9 a4 4c    ..L
    and #$0f                                                          ; 29b3: 29 0f       ).
    jsr set_palette_colour_ax                                         ; 29b5: 20 35 2a     5*
    tya                                                               ; 29b8: 98          .
    clc                                                               ; 29b9: 18          .
    adc #$14                                                          ; 29ba: 69 14       i.
    tay                                                               ; 29bc: a8          .
    inx                                                               ; 29bd: e8          .
    cpx #4                                                            ; 29be: e0 04       ..
    bne set_palette_loop                                              ; 29c0: d0 ee       ..
    rts                                                               ; 29c2: 60          `

unused34
    cmp (l0060),y                                                     ; 29c3: d1 60       .`
    beq return5                                                       ; 29c5: f0 0d       ..
    lda #4                                                            ; 29c7: a9 04       ..
    jsr add_a_to_ptr                                                  ; 29c9: 20 40 22     @"
    and #$3f                                                          ; 29cc: 29 3f       )?
    cmp #$28                                                          ; 29ce: c9 28       .(
    bne c29a1                                                         ; 29d0: d0 cf       ..
; beq l299c
    !byte $f0, $c8                                                    ; 29d2: f0 c8       ..

return5
    rts                                                               ; 29d4: 60          `

unused35
    inc screen_addr1_low                                              ; 29d5: e6 8a       ..
    bne c29db                                                         ; 29d7: d0 02       ..
    inc screen_addr1_high                                             ; 29d9: e6 8b       ..
c29db
    lda l007a                                                         ; 29db: a5 7a       .z
    ; bne l299a
    !byte $d0, $bb                                                    ; 29dd: d0 bb       ..

    rts                                                               ; 29df: 60          `

unused36
    !byte $7a, $d0, $bb, $60, $f0, $16, $8a, $18, $69,   8, $aa, $29  ; 29e0: 7a d0 bb... z..
    !byte $3f, $c9, $28, $d0, $d9, $18, $8a, $69, $18, $aa, $90, $d2  ; 29ec: 3f c9 28... ?.(
    !byte $e6, $8d, $d0, $ce, $60, $8d, $d0, $cc                      ; 29f8: e6 8d d0... ...

increment_ptr
    inc ptr_low                                                       ; 2a00: e6 8c       ..
    lda ptr_low                                                       ; 2a02: a5 8c       ..
    and #$3f                                                          ; 2a04: 29 3f       )?
    cmp #$28                                                          ; 2a06: c9 28       .(
    bne return6                                                       ; 2a08: d0 0f       ..
    lda ptr_low                                                       ; 2a0a: a5 8c       ..
    and #$c0                                                          ; 2a0c: 29 c0       ).
    clc                                                               ; 2a0e: 18          .
    adc #$40                                                          ; 2a0f: 69 40       i@
    sta ptr_low                                                       ; 2a11: 85 8c       ..
    bcc c2a17                                                         ; 2a13: 90 02       ..
    inc ptr_high                                                      ; 2a15: e6 8d       ..
c2a17
    dec l007c                                                         ; 2a17: c6 7c       .|
return6
    rts                                                               ; 2a19: 60          `

sub_c2a1a
    lda #<special_cave_3                                              ; 2a1a: a9 40       .@
sub_c2a1c
    sta ptr_low                                                       ; 2a1c: 85 8c       ..
sub_c2a1e
    lda #>special_cave_3                                              ; 2a1e: a9 50       .P
    sta ptr_high                                                      ; 2a20: 85 8d       ..
    lda #$14                                                          ; 2a22: a9 14       ..
    sta l007c                                                         ; 2a24: 85 7c       .|
    ldy #0                                                            ; 2a26: a0 00       ..
    rts                                                               ; 2a28: 60          `

palette_block
    !byte 0                                                           ; 2a29: 00          .              ; logical colour
l2a2a
    !byte 0, 0, 0, 0                                                  ; 2a2a: 00 00 00... ...            ; physical colour; zero; zero; zero

sub_c2a2e
    inc next_ptr_low                                                  ; 2a2e: e6 82       ..
    bne return6                                                       ; 2a30: d0 e7       ..
    inc next_ptr_high                                                 ; 2a32: e6 83       ..
    rts                                                               ; 2a34: 60          `

set_palette_colour_ax
    sta l2a2a                                                         ; 2a35: 8d 2a 2a    .**
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

reset_clock
    ldy #>(sprite_addr_0)                                             ; 2a4d: a0 13       ..
    ldx #<(sprite_addr_0)                                             ; 2a4f: a2 00       ..
    lda #osword_write_clock                                           ; 2a51: a9 02       ..
    jmp osword                                                        ; 2a53: 4c f1 ff    L..            ; Write system clock

sub_c2a56
    lda l0059                                                         ; 2a56: a5 59       .Y
    beq c2a79                                                         ; 2a58: f0 1f       ..
    inc l004c                                                         ; 2a5a: e6 4c       .L
    ldx #3                                                            ; 2a5c: a2 03       ..
    lda l0059                                                         ; 2a5e: a5 59       .Y
    and #7                                                            ; 2a60: 29 07       ).
    ora #4                                                            ; 2a62: 09 04       ..
    cmp #4                                                            ; 2a64: c9 04       ..
    bne c2a6a                                                         ; 2a66: d0 02       ..
    lda #3                                                            ; 2a68: a9 03       ..
c2a6a
    jsr set_palette_colour_ax                                         ; 2a6a: 20 35 2a     5*
    dec l0059                                                         ; 2a6d: c6 59       .Y
    bne c2a79                                                         ; 2a6f: d0 08       ..
    lda #0                                                            ; 2a71: a9 00       ..
    sta l1f80                                                         ; 2a73: 8d 80 1f    ...
    jsr set_palette                                                   ; 2a76: 20 ac 29     .)
c2a79
    lda hundreds_digit_of_score_on_status_bar                         ; 2a79: ad 11 32    ..2
    cmp #sprite_0                                                     ; 2a7c: c9 32       .2
    beq c2a89                                                         ; 2a7e: f0 09       ..
    cmp #$37                                                          ; 2a80: c9 37       .7
    beq c2a89                                                         ; 2a82: f0 05       ..
    lda #$ff                                                          ; 2a84: a9 ff       ..
    sta l006f                                                         ; 2a86: 85 6f       .o
    rts                                                               ; 2a88: 60          `

c2a89
    ldy #$11                                                          ; 2a89: a0 11       ..
loop_c2a8b
    lda tile_map,y                                                    ; 2a8b: b9 00 32    ..2
    cmp #sprite_0                                                     ; 2a8e: c9 32       .2
    bne c2a9c                                                         ; 2a90: d0 0a       ..
    dey                                                               ; 2a92: 88          .
    cpy #$0d                                                          ; 2a93: c0 0d       ..
    bne loop_c2a8b                                                    ; 2a95: d0 f4       ..
    lda #0                                                            ; 2a97: a9 00       ..
    sta l006f                                                         ; 2a99: 85 6f       .o
    rts                                                               ; 2a9b: 60          `

c2a9c
    lda l006f                                                         ; 2a9c: a5 6f       .o
    beq return7                                                       ; 2a9e: f0 14       ..
    lda #0                                                            ; 2aa0: a9 00       ..
    sta l006f                                                         ; 2aa2: 85 6f       .o
    lda #$1f                                                          ; 2aa4: a9 1f       ..
    sta l1f80                                                         ; 2aa6: 8d 80 1f    ...
    lda #7                                                            ; 2aa9: a9 07       ..
    sta l0059                                                         ; 2aab: 85 59       .Y
    inc men_number_on_status_bar                                      ; 2aad: ee 1e 32    ..2
    lda #$64                                                          ; 2ab0: a9 64       .d
    sta status_text_address_low                                       ; 2ab2: 85 69       .i
return7
    rts                                                               ; 2ab4: 60          `

; *************************************************************************************
draw_big_rockford
    lda #>big_rockford_destination_screen_address                     ; 2ab5: a9 58       .X
    sta ptr_high                                                      ; 2ab7: 85 8d       ..
    ldy #<big_rockford_destination_screen_address                     ; 2ab9: a0 00       ..
    sty ptr_low                                                       ; 2abb: 84 8c       ..
    lda #>big_rockford_sprite                                         ; 2abd: a9 34       .4
    sta next_ptr_high                                                 ; 2abf: 85 83       ..
    sty next_ptr_low                                                  ; 2ac1: 84 82       ..
draw_big_rockford_loop
    ldx #1                                                            ; 2ac3: a2 01       ..
    jsr get_next_ptr_byte                                             ; 2ac5: 20 eb 2a     .*
    ldy #6                                                            ; 2ac8: a0 06       ..
check_if_byte_is_an_rle_byte_loop
    cmp rle_bytes_table,y                                             ; 2aca: d9 f8 2a    ..*
    beq get_repeat_count                                              ; 2acd: f0 05       ..
    dey                                                               ; 2acf: 88          .
    bne check_if_byte_is_an_rle_byte_loop                             ; 2ad0: d0 f8       ..
    beq copy_x_bytes_in_rle_loop                                      ; 2ad2: f0 08       ..             ; ALWAYS branch

get_repeat_count
    ldy #0                                                            ; 2ad4: a0 00       ..
    pha                                                               ; 2ad6: 48          H
    jsr get_next_ptr_byte                                             ; 2ad7: 20 eb 2a     .*
    tax                                                               ; 2ada: aa          .
    pla                                                               ; 2adb: 68          h
copy_x_bytes_in_rle_loop
    sta (ptr_low),y                                                   ; 2adc: 91 8c       ..
    inc ptr_low                                                       ; 2ade: e6 8c       ..
    bne skip_inc_high                                                 ; 2ae0: d0 04       ..
    inc ptr_high                                                      ; 2ae2: e6 8d       ..
    bmi return8                                                       ; 2ae4: 30 0d       0.
skip_inc_high
    dex                                                               ; 2ae6: ca          .
    bne copy_x_bytes_in_rle_loop                                      ; 2ae7: d0 f3       ..
    beq draw_big_rockford_loop                                        ; 2ae9: f0 d8       ..             ; ALWAYS branch

get_next_ptr_byte
    lda (next_ptr_low),y                                              ; 2aeb: b1 82       ..
    inc next_ptr_low                                                  ; 2aed: e6 82       ..
    bne return8                                                       ; 2aef: d0 02       ..
    inc next_ptr_high                                                 ; 2af1: e6 83       ..
return8
    rts                                                               ; 2af3: 60          `

unused38
    !byte $f0, $e5, $a9,   0                                          ; 2af4: f0 e5 a9... ...

rle_bytes_table
    !byte $85, $48, $10, $ec, $ff, $0f,   0                           ; 2af8: 85 48 10... .H.

unused37
    !byte $27                                                         ; 2aff: 27          '

sub_c2b00
    lda ptr_high                                                      ; 2b00: a5 8d       ..
    and #7                                                            ; 2b02: 29 07       ).
    sta screen_addr1_high                                             ; 2b04: 85 8b       ..
    lda ptr_low                                                       ; 2b06: a5 8c       ..
    asl                                                               ; 2b08: 0a          .
    rol screen_addr1_high                                             ; 2b09: 26 8b       &.
    asl                                                               ; 2b0b: 0a          .
    rol screen_addr1_high                                             ; 2b0c: 26 8b       &.
    lda ptr_low                                                       ; 2b0e: a5 8c       ..
    and #$3f                                                          ; 2b10: 29 3f       )?
    sta screen_addr1_low                                              ; 2b12: 85 8a       ..
    rts                                                               ; 2b14: 60          `

sub_c2b15
    lda #0                                                            ; 2b15: a9 00       ..
    sta ptr_low                                                       ; 2b17: 85 8c       ..
    lda screen_addr1_high                                             ; 2b19: a5 8b       ..
    lsr                                                               ; 2b1b: 4a          J
    ror ptr_low                                                       ; 2b1c: 66 8c       f.
    lsr                                                               ; 2b1e: 4a          J
    ror ptr_low                                                       ; 2b1f: 66 8c       f.
    ora #$50                                                          ; 2b21: 09 50       .P
    sta ptr_high                                                      ; 2b23: 85 8d       ..
    lda screen_addr1_low                                              ; 2b25: a5 8a       ..
    ora ptr_low                                                       ; 2b27: 05 8c       ..
    sta ptr_low                                                       ; 2b29: 85 8c       ..
    rts                                                               ; 2b2b: 60          `

sub_c2b2c
    lda l0070                                                         ; 2b2c: a5 70       .p
    sta ptr_low                                                       ; 2b2e: 85 8c       ..
    lda l0071                                                         ; 2b30: a5 71       .q
    sta ptr_high                                                      ; 2b32: 85 8d       ..
    jsr sub_c2b00                                                     ; 2b34: 20 00 2b     .+
    sec                                                               ; 2b37: 38          8
    sbc l007e                                                         ; 2b38: e5 7e       .~
    ldx l007e                                                         ; 2b3a: a6 7e       .~
    cmp #$11                                                          ; 2b3c: c9 11       ..
    bmi c2b45                                                         ; 2b3e: 30 05       0.
    cpx #$14                                                          ; 2b40: e0 14       ..
    bpl c2b4e                                                         ; 2b42: 10 0a       ..
    inx                                                               ; 2b44: e8          .
c2b45
    cmp #3                                                            ; 2b45: c9 03       ..
    bpl c2b4e                                                         ; 2b47: 10 05       ..
    cpx #1                                                            ; 2b49: e0 01       ..
    bmi c2b4e                                                         ; 2b4b: 30 01       0.
    dex                                                               ; 2b4d: ca          .
c2b4e
    ldy l007f                                                         ; 2b4e: a4 7f       ..
    lda screen_addr1_high                                             ; 2b50: a5 8b       ..
    sec                                                               ; 2b52: 38          8
    sbc l007f                                                         ; 2b53: e5 7f       ..
    cmp #9                                                            ; 2b55: c9 09       ..
    bmi c2b5e                                                         ; 2b57: 30 05       0.
    cpy #$0a                                                          ; 2b59: c0 0a       ..
    bpl c2b67                                                         ; 2b5b: 10 0a       ..
    iny                                                               ; 2b5d: c8          .
c2b5e
    cmp #3                                                            ; 2b5e: c9 03       ..
    bpl c2b67                                                         ; 2b60: 10 05       ..
    cpy #1                                                            ; 2b62: c0 01       ..
    bmi c2b67                                                         ; 2b64: 30 01       0.
    dey                                                               ; 2b66: 88          .
c2b67
    lda cave_number                                                   ; 2b67: a5 87       ..
    cmp #$10                                                          ; 2b69: c9 10       ..
    bmi c2b71                                                         ; 2b6b: 30 04       0.
    lda #0                                                            ; 2b6d: a9 00       ..
    tax                                                               ; 2b6f: aa          .
    tay                                                               ; 2b70: a8          .
c2b71
    stx l007e                                                         ; 2b71: 86 7e       .~
    stx screen_addr1_low                                              ; 2b73: 86 8a       ..
    sty l007f                                                         ; 2b75: 84 7f       ..
    sty screen_addr1_high                                             ; 2b77: 84 8b       ..
    jsr sub_c2b15                                                     ; 2b79: 20 15 2b     .+
    lda ptr_low                                                       ; 2b7c: a5 8c       ..
    sta tile_map_ptr_low                                              ; 2b7e: 85 85       ..
    lda ptr_high                                                      ; 2b80: a5 8d       ..
    sta tile_map_ptr_high                                             ; 2b82: 85 86       ..
    rts                                                               ; 2b84: 60          `

unused39
    !byte $86, $60, $a0, $1e, $a2, $fa, $a9,   1, $20, $f1, $ff       ; 2b85: 86 60 a0... .`.

sub_c2b90
    lda #$0d                                                          ; 2b90: a9 0d       ..
sub_c2b92
    sta l0084                                                         ; 2b92: 85 84       ..
sub_c2b94
    lda #0                                                            ; 2b94: a9 00       ..
    sta l0062                                                         ; 2b96: 85 62       .b
loop_c2b98
    jsr sub_c2860                                                     ; 2b98: 20 60 28     `(
    ldy #>(set_clock_value)                                           ; 2b9b: a0 1e       ..
    ldx #<(set_clock_value)                                           ; 2b9d: a2 70       .p
    lda #osword_read_clock                                            ; 2b9f: a9 01       ..
    jsr osword                                                        ; 2ba1: 20 f1 ff     ..            ; Read system clock
    lda set_clock_value                                               ; 2ba4: ad 70 1e    .p.
    cmp l0084                                                         ; 2ba7: c5 84       ..
    bmi loop_c2b98                                                    ; 2ba9: 30 ed       0.
    lda l0062                                                         ; 2bab: a5 62       .b
    and #$f0                                                          ; 2bad: 29 f0       ).
    sta l0062                                                         ; 2baf: 85 62       .b
    jsr sub_c2860                                                     ; 2bb1: 20 60 28     `(
    jsr sub_c2a56                                                     ; 2bb4: 20 56 2a     V*
    jsr reset_clock                                                   ; 2bb7: 20 4d 2a     M*
    ldx #0                                                            ; 2bba: a2 00       ..
    txa                                                               ; 2bbc: 8a          .
    jmp set_palette_colour_ax                                         ; 2bbd: 4c 35 2a    L5*

unused40
    !byte $a9,   1, $a0, $43, $91, $8c, $a0, $c4, $88, $91, $a9,   1  ; 2bc0: a9 01 a0... ...
    !byte $a0, $43, $91, $8c, $a0, $c4, $88, $91, $8c, $f0,   8, $c0  ; 2bcc: a0 43 91... .C.
    !byte $c0, $d0, $f7, $a0,   4, $d0, $f3, $a0, $80, $91, $8c, $85  ; 2bd8: c0 d0 f7... ...
    !byte $76, $85, $74, $a0, $83, $91, $8c, $4a, $88, $91, $8c, $85  ; 2be4: 76 85 74... v.t
    !byte $7a, $85, $78, $a2,   6, $a5, $87, $c9,   3, $d0,   2, $a2  ; 2bf0: 7a 85 78... z.x
    !byte $2e, $60, $cb, $60                                          ; 2bfc: 2e 60 cb... .`.
l2c00
    !byte $12                                                         ; 2c00: 12          .
l2c01
    !byte 5                                                           ; 2c01: 05          .
l2c02
    !byte 8                                                           ; 2c02: 08          .
l2c03
    !byte   5, $12, $f7, $c8,   1,   0, $fe,   4,   1,   0, $fb,   4  ; 2c03: 05 12 f7... ...
    !byte   1, $10,   2,   5,   7, $13,   1                           ; 2c0f: 01 10 02... ...
l2c16
    !byte $dc,   1, $10,   4,   7, $1e, $11,   3, $ff, $28, $12,   1  ; 2c16: dc 01 10... ...
    !byte $c8,   2                                                    ; 2c22: c8 02       ..
l2c24
    !byte $13,   0                                                    ; 2c24: 13 00       ..             ; Channel (2 bytes)
l2c26
    !byte 1                                                           ; 2c26: 01          .              ; Amplitude (2 bytes)
l2c27
    !byte 0                                                           ; 2c27: 00          .
l2c28
    !byte $8f,   0                                                    ; 2c28: 8f 00       ..             ; Pitch (2 bytes)
l2c2a
    !byte 1, 0                                                        ; 2c2a: 01 00       ..             ; Duration (2 bytes)

c2c2c
    txa                                                               ; 2c2c: 8a          .
    bmi c2c31                                                         ; 2c2d: 30 02       0.
    ldy #0                                                            ; 2c2f: a0 00       ..
c2c31
    and #$7f                                                          ; 2c31: 29 7f       ).
    tax                                                               ; 2c33: aa          .
    cpx #6                                                            ; 2c34: e0 06       ..
    bne c2c3d                                                         ; 2c36: d0 05       ..
    jsr c2c3d                                                         ; 2c38: 20 3d 2c     =,
    ldx #7                                                            ; 2c3b: a2 07       ..
c2c3d
    txa                                                               ; 2c3d: 8a          .
    asl                                                               ; 2c3e: 0a          .
    asl                                                               ; 2c3f: 0a          .
    tax                                                               ; 2c40: aa          .
    lda #0                                                            ; 2c41: a9 00       ..
    sta l2c27                                                         ; 2c43: 8d 27 2c    .',
    lda l2c00,x                                                       ; 2c46: bd 00 2c    ..,
    sta l2c24                                                         ; 2c49: 8d 24 2c    .$,
    lda l2c01,x                                                       ; 2c4c: bd 01 2c    ..,
    sta l2c26                                                         ; 2c4f: 8d 26 2c    .&,
    bpl c2c59                                                         ; 2c52: 10 05       ..
    lda #$ff                                                          ; 2c54: a9 ff       ..
    sta l2c27                                                         ; 2c56: 8d 27 2c    .',
c2c59
    tya                                                               ; 2c59: 98          .
    bne c2c5f                                                         ; 2c5a: d0 03       ..
    lda l2c02,x                                                       ; 2c5c: bd 02 2c    ..,
c2c5f
    sta l2c28                                                         ; 2c5f: 8d 28 2c    .(,
    lda l2c03,x                                                       ; 2c62: bd 03 2c    ..,
    sta l2c2a                                                         ; 2c65: 8d 2a 2c    .*,
    ldy #>(l2c24)                                                     ; 2c68: a0 2c       .,
    ldx #<(l2c24)                                                     ; 2c6a: a2 24       .$
    lda #osword_sound                                                 ; 2c6c: a9 07       ..
    jmp osword                                                        ; 2c6e: 4c f1 ff    L..            ; SOUND command

    !byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                 ; 2c71: 00 00 00... ...

sub_c2c80
    lda l0048                                                         ; 2c80: a5 48       .H
    eor #$41                                                          ; 2c82: 49 41       IA
    sta l0048                                                         ; 2c84: 85 48       .H
    lda l006d                                                         ; 2c86: a5 6d       .m
    cmp #$0b                                                          ; 2c88: c9 0b       ..
    bcs c2ca0                                                         ; 2c8a: b0 14       ..
    lda sub_second_ticks                                              ; 2c8c: a5 5c       .\
    cmp #$0b                                                          ; 2c8e: c9 0b       ..
    bne c2ca0                                                         ; 2c90: d0 0e       ..
    lda #$dc                                                          ; 2c92: a9 dc       ..
    sbc l006d                                                         ; 2c94: e5 6d       .m
    sbc l006d                                                         ; 2c96: e5 6d       .m
    sbc l006d                                                         ; 2c98: e5 6d       .m
    tay                                                               ; 2c9a: a8          .
    ldx #$88                                                          ; 2c9b: a2 88       ..
    jsr c2c2c                                                         ; 2c9d: 20 2c 2c     ,,
c2ca0
    jsr reverse_nybbles_and_add_one                                   ; 2ca0: 20 4a 22     J"
    and #$0c                                                          ; 2ca3: 29 0c       ).
    sta l2c02                                                         ; 2ca5: 8d 02 2c    ..,
    ldx #5                                                            ; 2ca8: a2 05       ..
    jsr sub_c2ce8                                                     ; 2caa: 20 e8 2c     .,
    lda l005a                                                         ; 2cad: a5 5a       .Z
    lsr                                                               ; 2caf: 4a          J
    bcc c2cb7                                                         ; 2cb0: 90 05       ..
    ldx #0                                                            ; 2cb2: a2 00       ..
    jsr sub_c2ce8                                                     ; 2cb4: 20 e8 2c     .,
c2cb7
    ldx #1                                                            ; 2cb7: a2 01       ..
    jsr sub_c2ce8                                                     ; 2cb9: 20 e8 2c     .,
    ldx #6                                                            ; 2cbc: a2 06       ..
    jsr sub_c2ce8                                                     ; 2cbe: 20 e8 2c     .,
    lda l004c                                                         ; 2cc1: a5 4c       .L
    bne return9                                                       ; 2cc3: d0 2a       .*
    ldx #4                                                            ; 2cc5: a2 04       ..
    jsr sub_c2ce8                                                     ; 2cc7: 20 e8 2c     .,
    lda l004a                                                         ; 2cca: a5 4a       .J
    bne return9                                                       ; 2ccc: d0 21       .!
    ldy #$19                                                          ; 2cce: a0 19       ..
    ldx #$fb                                                          ; 2cd0: a2 fb       ..
    lda #osbyte_read_adc_or_get_buffer_status                         ; 2cd2: a9 80       ..
    jsr osbyte                                                        ; 2cd4: 20 f4 ff     ..            ; Read number of spaces remaining in sound channel 0 (X=251)
    cpx #$0b                                                          ; 2cd7: e0 0b       ..             ; X is the number of spaces remaining in sound channel 0
    bmi return9                                                       ; 2cd9: 30 14       0.
    lda l004a                                                         ; 2cdb: a5 4a       .J
    ora l004c                                                         ; 2cdd: 05 4c       .L
    bne return9                                                       ; 2cdf: d0 0e       ..
    ldx #2                                                            ; 2ce1: a2 02       ..
    jsr sub_c2ce8                                                     ; 2ce3: 20 e8 2c     .,
    ldx #3                                                            ; 2ce6: a2 03       ..
sub_c2ce8
    lda data_set_ptr_low,x                                            ; 2ce8: b5 46       .F
    beq return9                                                       ; 2cea: f0 03       ..
    jmp c2c2c                                                         ; 2cec: 4c 2c 2c    L,,

return9
    rts                                                               ; 2cef: 60          `

unused41
    !byte $85, $a6, $a8, $91, $70, $60, $a2,   3, $bd, $e3, $20, $18  ; 2cf0: 85 a6 a8... ...
    !byte $69,   1, $c9, $0a                                          ; 2cfc: 69 01 c9... i..

sub_c2d00
    ldy #1                                                            ; 2d00: a0 01       ..
    sty screen_addr1_high                                             ; 2d02: 84 8b       ..
    dey                                                               ; 2d04: 88          .
    sty screen_addr1_low                                              ; 2d05: 84 8a       ..
    jsr sub_c2b15                                                     ; 2d07: 20 15 2b     .+
c2d0a
    lda (next_ptr_low),y                                              ; 2d0a: b1 82       ..
    inc next_ptr_low                                                  ; 2d0c: e6 82       ..
    bne c2d12                                                         ; 2d0e: d0 02       ..
    inc next_ptr_high                                                 ; 2d10: e6 83       ..
c2d12
    pha                                                               ; 2d12: 48          H
    lsr                                                               ; 2d13: 4a          J
    lsr                                                               ; 2d14: 4a          J
    lsr                                                               ; 2d15: 4a          J
    lsr                                                               ; 2d16: 4a          J
    tax                                                               ; 2d17: aa          .
    inx                                                               ; 2d18: e8          .
    pla                                                               ; 2d19: 68          h
    and #$0f                                                          ; 2d1a: 29 0f       ).
    sta l007c                                                         ; 2d1c: 85 7c       .|
c2d1e
    lda l007c                                                         ; 2d1e: a5 7c       .|
    cmp #$0a                                                          ; 2d20: c9 0a       ..
    beq c2d32                                                         ; 2d22: f0 0e       ..
    cmp loop_counter                                                  ; 2d24: c5 77       .w
    beq c2d2a                                                         ; 2d26: f0 02       ..
    sta (ptr_low),y                                                   ; 2d28: 91 8c       ..
c2d2a
    inc screen_addr1_low                                              ; 2d2a: e6 8a       ..
    lda screen_addr1_low                                              ; 2d2c: a5 8a       ..
    cmp #$28                                                          ; 2d2e: c9 28       .(
    bne c2d3c                                                         ; 2d30: d0 0a       ..
c2d32
    sty screen_addr1_low                                              ; 2d32: 84 8a       ..
    inc screen_addr1_high                                             ; 2d34: e6 8b       ..
    lda screen_addr1_high                                             ; 2d36: a5 8b       ..
    cmp #$15                                                          ; 2d38: c9 15       ..
    beq return10                                                      ; 2d3a: f0 08       ..
c2d3c
    jsr sub_c2b15                                                     ; 2d3c: 20 15 2b     .+
    dex                                                               ; 2d3f: ca          .
    bne c2d1e                                                         ; 2d40: d0 dc       ..
    beq c2d0a                                                         ; 2d42: f0 c6       ..
return10
    rts                                                               ; 2d44: 60          `

unused42
    !byte $31, $15, $41, $15, $11, $25, $31, $12, $21, $15, $21       ; 2d45: 31 15 41... 1.A

sub_c2d50
    lda #<special_cave_2                                              ; 2d50: a9 3f       .?
    jsr sub_c2a1c                                                     ; 2d52: 20 1c 2a     .*
c2d55
    lda (next_ptr_low),y                                              ; 2d55: b1 82       ..
    jsr sub_c2a2e                                                     ; 2d57: 20 2e 2a     .*
    pha                                                               ; 2d5a: 48          H
    lsr                                                               ; 2d5b: 4a          J
    lsr                                                               ; 2d5c: 4a          J
    lsr                                                               ; 2d5d: 4a          J
    tax                                                               ; 2d5e: aa          .
    inx                                                               ; 2d5f: e8          .
loop_c2d60
    jsr increment_ptr                                                 ; 2d60: 20 00 2a     .*
    beq c2d7f                                                         ; 2d63: f0 1a       ..
    dex                                                               ; 2d65: ca          .
    bne loop_c2d60                                                    ; 2d66: d0 f8       ..
    pla                                                               ; 2d68: 68          h
    and #7                                                            ; 2d69: 29 07       ).
    cmp #1                                                            ; 2d6b: c9 01       ..
    beq c2d7c                                                         ; 2d6d: f0 0d       ..
    cmp #3                                                            ; 2d6f: c9 03       ..
    bne c2d74                                                         ; 2d71: d0 01       ..
    rts                                                               ; 2d73: 60          `

c2d74
    cmp #7                                                            ; 2d74: c9 07       ..
    bne c2d7a                                                         ; 2d76: d0 02       ..
    lda #1                                                            ; 2d78: a9 01       ..
c2d7a
    sta (ptr_low),y                                                   ; 2d7a: 91 8c       ..
c2d7c
    jmp c2d55                                                         ; 2d7c: 4c 55 2d    LU-

c2d7f
    pla                                                               ; 2d7f: 68          h
    rts                                                               ; 2d80: 60          `

unused43
    !byte $8a, $69, $18, $aa, $90, $d3, $e6, $8d, $d0, $cf, $60, $15  ; 2d81: 8a 69 18... .i.
    !byte $11, $15, $51                                               ; 2d8d: 11 15 51    ..Q

sub_c2d90
    jsr sub_c2a1e                                                     ; 2d90: 20 1e 2a     .*
c2d93
    ldy #0                                                            ; 2d93: a0 00       ..
    lda (next_ptr_low),y                                              ; 2d95: b1 82       ..
sub_c2d97
l2d98 = sub_c2d97+1
    inc next_ptr_low                                                  ; 2d97: e6 82       ..
    bne c2d9d                                                         ; 2d99: d0 02       ..
    inc next_ptr_high                                                 ; 2d9b: e6 83       ..
c2d9d
    ldx #3                                                            ; 2d9d: a2 03       ..
    stx loop_counter                                                  ; 2d9f: 86 77       .w
loop_c2da1
    pha                                                               ; 2da1: 48          H
    lsr                                                               ; 2da2: 4a          J
    lsr                                                               ; 2da3: 4a          J
    lsr                                                               ; 2da4: 4a          J
    lsr                                                               ; 2da5: 4a          J
c2da6
    lsr                                                               ; 2da6: 4a          J
    lsr                                                               ; 2da7: 4a          J
    tax                                                               ; 2da8: aa          .
    beq c2daf                                                         ; 2da9: f0 04       ..
    lda l0072,x                                                       ; 2dab: b5 72       .r
    sta (ptr_low),y                                                   ; 2dad: 91 8c       ..
c2daf
    jsr increment_ptr                                                 ; 2daf: 20 00 2a     .*
    beq c2dbd                                                         ; 2db2: f0 09       ..
    pla                                                               ; 2db4: 68          h
    asl                                                               ; 2db5: 0a          .
    asl                                                               ; 2db6: 0a          .
    dec loop_counter                                                  ; 2db7: c6 77       .w
    bpl loop_c2da1                                                    ; 2db9: 10 e6       ..
    bmi c2d93                                                         ; 2dbb: 30 d6       0.
c2dbd
    pla                                                               ; 2dbd: 68          h
    rts                                                               ; 2dbe: 60          `

unused44
    lda #$18                                                          ; 2dbf: a9 18       ..
    jsr add_a_to_ptr                                                  ; 2dc1: 20 40 22     @"
    dec l007c                                                         ; 2dc4: c6 7c       .|
    bne c2dca                                                         ; 2dc6: d0 02       ..
    pla                                                               ; 2dc8: 68          h
    rts                                                               ; 2dc9: 60          `

c2dca
    pla                                                               ; 2dca: 68          h
    asl                                                               ; 2dcb: 0a          .
    asl                                                               ; 2dcc: 0a          .
    dec loop_counter                                                  ; 2dcd: c6 77       .w
    bpl c2da6                                                         ; 2dcf: 10 d5       ..
    bmi l2d98                                                         ; 2dd1: 30 c5       0.             ; ALWAYS branch

unused45
    !byte $11, $25, $b1, $15, $11, $15, $12, $25, $11, $15, $21, $15  ; 2dd3: 11 25 b1... .%.
    !byte $11, $15, $21, $15, $11, $25, $41, $10, $51, $10            ; 2ddf: 11 15 21... ..!
    !byte $21, $45, $21                                               ; 2de9: 21 45 21    !E!
    !byte $15, $11, $12, $21, $15, $11, $15, $31, $10, $11, $25, $12  ; 2dec: 15 11 12... ...
    !byte $51, $15, $11, $25, $16, $25, $11, $15                      ; 2df8: 51 15 11... Q..

sub_c2e00
    jsr prepare_level                                                 ; 2e00: 20 00 29     .)
    lda #0                                                            ; 2e03: a9 00       ..
    sta l006f                                                         ; 2e05: 85 6f       .o
    sta l1f80                                                         ; 2e07: 8d 80 1f    ...
    ldx #$14                                                          ; 2e0a: a2 14       ..
    lda cave_number                                                   ; 2e0c: a5 87       ..
    cmp #$10                                                          ; 2e0e: c9 10       ..
    bmi c2e14                                                         ; 2e10: 30 02       0.
    ldx #$64                                                          ; 2e12: a2 64       .d
c2e14
    stx status_text_address_low                                       ; 2e14: 86 69       .i
    lda l0065                                                         ; 2e16: a5 65       .e
    bmi c2e1e                                                         ; 2e18: 30 04       0.
    lda #$a0                                                          ; 2e1a: a9 a0       ..
    sta status_text_address_low                                       ; 2e1c: 85 69       .i
c2e1e
    ldx #$0f                                                          ; 2e1e: a2 0f       ..
loop_c2e20
    lda sprite_addr_91,x                                              ; 2e20: bd 60 1e    .`.
    cmp #$63                                                          ; 2e23: c9 63       .c
    beq c2e29                                                         ; 2e25: f0 02       ..
    sta l0050,x                                                       ; 2e27: 95 50       .P
c2e29
    dex                                                               ; 2e29: ca          .
    bpl loop_c2e20                                                    ; 2e2a: 10 f4       ..
    lda #0                                                            ; 2e2c: a9 00       ..
    sta l21dc                                                         ; 2e2e: 8d dc 21    ..!
    jsr sub_c2404                                                     ; 2e31: 20 04 24     .$
    lda #$23                                                          ; 2e34: a9 23       .#
    sta l21dc                                                         ; 2e36: 8d dc 21    ..!
    jsr sub_c2404                                                     ; 2e39: 20 04 24     .$
    jsr sub_c2a1a                                                     ; 2e3c: 20 1a 2a     .*
    ldx #$16                                                          ; 2e3f: a2 16       ..
loop_c2e41
    ldy #$27                                                          ; 2e41: a0 27       .'
    lda #$83                                                          ; 2e43: a9 83       ..
    sta (ptr_low),y                                                   ; 2e45: 91 8c       ..
    dey                                                               ; 2e47: 88          .
loop_c2e48
    lda (ptr_low),y                                                   ; 2e48: b1 8c       ..
    ora #$80                                                          ; 2e4a: 09 80       ..
    sta (ptr_low),y                                                   ; 2e4c: 91 8c       ..
    dey                                                               ; 2e4e: 88          .
    bne loop_c2e48                                                    ; 2e4f: d0 f7       ..
    lda #$83                                                          ; 2e51: a9 83       ..
    sta (ptr_low),y                                                   ; 2e53: 91 8c       ..
    lda #$40                                                          ; 2e55: a9 40       .@
    jsr add_a_to_ptr                                                  ; 2e57: 20 40 22     @"
    dex                                                               ; 2e5a: ca          .
    bne loop_c2e41                                                    ; 2e5b: d0 e4       ..
    lda #$83                                                          ; 2e5d: a9 83       ..
    ldx #$27                                                          ; 2e5f: a2 27       .'
loop_c2e61
    sta special_cave_1,x                                              ; 2e61: 9d 00 50    ..P
    sta l5540,x                                                       ; 2e64: 9d 40 55    .@U
    dex                                                               ; 2e67: ca          .
    bpl loop_c2e61                                                    ; 2e68: 10 f7       ..
    jsr sub_c2f50                                                     ; 2e6a: 20 50 2f     P/
    jsr sub_c2ebf                                                     ; 2e6d: 20 bf 2e     ..
    jsr sub_c2700                                                     ; 2e70: 20 00 27     .'
    lda l0064                                                         ; 2e73: a5 64       .d
    cmp #8                                                            ; 2e75: c9 08       ..
    beq c2ebd                                                         ; 2e77: f0 44       .D
    dec men_number_on_status_bar                                      ; 2e79: ce 1e 32    ..2
    lda men_number_on_status_bar                                      ; 2e7c: ad 1e 32    ..2
    cmp #sprite_0                                                     ; 2e7f: c9 32       .2
    bne c2ebd                                                         ; 2e81: d0 3a       .:
    lda player_number_on_status_bar                                   ; 2e83: ad 1b 32    ..2
    sta player_number_on_game_over_text                               ; 2e86: 8d 9e 32    ..2
    lda #$8c                                                          ; 2e89: a9 8c       ..
    sta status_text_address_low                                       ; 2e8b: 85 69       .i
    ldx #$50                                                          ; 2e8d: a2 50       .P
    lda player_number_on_status_bar                                   ; 2e8f: ad 1b 32    ..2
    cmp #sprite_1                                                     ; 2e92: c9 33       .3
    beq c2e98                                                         ; 2e94: f0 02       ..
    ldx #$5e                                                          ; 2e96: a2 5e       .^
c2e98
    stx l2eaa                                                         ; 2e98: 8e aa 2e    ...
    stx l2eb8                                                         ; 2e9b: 8e b8 2e    ...
    ldx #0                                                            ; 2e9e: a2 00       ..
    ldy #0                                                            ; 2ea0: a0 00       ..
loop_c2ea2
    lda score_on_status_bar,x                                         ; 2ea2: bd 0e 32    ..2
    cpy #0                                                            ; 2ea5: c0 00       ..
    bne c2eb7                                                         ; 2ea7: d0 0e       ..
sub_c2ea9
l2eaa = sub_c2ea9+1
    cmp highscore_high_status_bar,x                                   ; 2ea9: dd 50 32    .P2
    bmi c2ebd                                                         ; 2eac: 30 0f       0.
    bne c2eb7                                                         ; 2eae: d0 07       ..
loop_c2eb0
    inx                                                               ; 2eb0: e8          .
    cpx #6                                                            ; 2eb1: e0 06       ..
    bne loop_c2ea2                                                    ; 2eb3: d0 ed       ..
    beq c2ebd                                                         ; 2eb5: f0 06       ..
c2eb7
l2eb8 = c2eb7+1
    sta highscore_high_status_bar,x                                   ; 2eb7: 9d 50 32    .P2
    iny                                                               ; 2eba: c8          .
    bne loop_c2eb0                                                    ; 2ebb: d0 f3       ..
c2ebd
    lda #$80                                                          ; 2ebd: a9 80       ..
sub_c2ebf
    sta l0072                                                         ; 2ebf: 85 72       .r
    lda #$21                                                          ; 2ec1: a9 21       .!
    sta l005a                                                         ; 2ec3: 85 5a       .Z
    lda cave_number                                                   ; 2ec5: a5 87       ..
    sta loop_counter                                                  ; 2ec7: 85 77       .w
loop_c2ec9
    jsr sub_c22b3                                                     ; 2ec9: 20 b3 22     ."
    jsr draw_grid_of_sprites                                          ; 2ecc: 20 00 23     .#
    jsr sub_c2325                                                     ; 2ecf: 20 25 23     %#
    lda l005a                                                         ; 2ed2: a5 5a       .Z
    asl                                                               ; 2ed4: 0a          .
    and #$0f                                                          ; 2ed5: 29 0f       ).
    ora #$e0                                                          ; 2ed7: 09 e0       ..
    sta l2007                                                         ; 2ed9: 8d 07 20    ..
    sta l2060                                                         ; 2edc: 8d 60 20    .`
    dec l005a                                                         ; 2edf: c6 5a       .Z
    bpl loop_c2ec9                                                    ; 2ee1: 10 e6       ..
    rts                                                               ; 2ee3: 60          `

unused46
    !byte $60, $20, $c6, $5a, $10, $e6                                ; 2ee4: 60 20 c6... ` .
    !text "`(%&%(%&'(%%%&  #$$$# "                                    ; 2eea: 60 28 25... `(%

sub_c2f00
    ldy #8                                                            ; 2f00: a0 08       ..
    jsr increment_status_bar_number                                   ; 2f02: 20 98 28     .(
    lda total_diamonds_on_status_bar_high_digit                       ; 2f05: ad 03 32    ..2
    sec                                                               ; 2f08: 38          8
    sbc #sprite_0                                                     ; 2f09: e9 32       .2
    ldy #$12                                                          ; 2f0b: a0 12       ..
    jsr add_a_to_status_bar_number_at_y                               ; 2f0d: 20 c0 28     .(
    lda total_diamonds_on_status_bar_low_digit                        ; 2f10: ad 04 32    ..2
    sec                                                               ; 2f13: 38          8
    sbc #sprite_0                                                     ; 2f14: e9 32       .2
    iny                                                               ; 2f16: c8          .
    jsr add_a_to_status_bar_number_at_y                               ; 2f17: 20 c0 28     .(
    dec l006c                                                         ; 2f1a: c6 6c       .l
    bne return11                                                      ; 2f1c: d0 29       .)
    lda #7                                                            ; 2f1e: a9 07       ..
    ldx #0                                                            ; 2f20: a2 00       ..
    jsr set_palette_colour_ax                                         ; 2f22: 20 35 2a     5*
    lda #3                                                            ; 2f25: a9 03       ..
    sta tile_map                                                      ; 2f27: 8d 00 32    ..2
    sta required_diamonds_on_status_bar                               ; 2f2a: 8d 01 32    ..2
    ldy #0                                                            ; 2f2d: a0 00       ..
    lda #$18                                                          ; 2f2f: a9 18       ..
    sta (l006a),y                                                     ; 2f31: 91 6a       .j
    lda #sprite_0                                                     ; 2f33: a9 32       .2
    sta total_diamonds_on_status_bar_high_digit                       ; 2f35: 8d 03 32    ..2
    sta total_diamonds_on_status_bar_low_digit                        ; 2f38: 8d 04 32    ..2
    ldx cave_number                                                   ; 2f3b: a6 87       ..
    lda l4b14,x                                                       ; 2f3d: bd 14 4b    ..K
    ldy #4                                                            ; 2f40: a0 04       ..
    jsr add_a_to_status_bar_number_at_y                               ; 2f42: 20 c0 28     .(
    inc l004c                                                         ; 2f45: e6 4c       .L
return11
    rts                                                               ; 2f47: 60          `

unused47
    !byte $91, $6a, $e6, $4c, $60,   0,   0,   0                      ; 2f48: 91 6a e6... .j.

sub_c2f50
    lda #$14                                                          ; 2f50: a9 14       ..
    sta l007e                                                         ; 2f52: 85 7e       .~
    lsr                                                               ; 2f54: 4a          J
    sta l007f                                                         ; 2f55: 85 7f       ..
    ldy #$0d                                                          ; 2f57: a0 0d       ..
loop_c2f59
    lda zeroed_status_bar,y                                           ; 2f59: b9 f0 32    ..2
    sta tile_map,y                                                    ; 2f5c: 99 00 32    ..2
    dey                                                               ; 2f5f: 88          .
    bpl loop_c2f59                                                    ; 2f60: 10 f7       ..
    ldx cave_number                                                   ; 2f62: a6 87       ..
    lda l4b00,x                                                       ; 2f64: bd 00 4b    ..K
    ldy #4                                                            ; 2f67: a0 04       ..
    jsr add_a_to_status_bar_number_at_y                               ; 2f69: 20 c0 28     .(
    txa                                                               ; 2f6c: 8a          .
    clc                                                               ; 2f6d: 18          .
    adc #$41                                                          ; 2f6e: 69 41       iA
    sta cave_letter_on_status_bar                                     ; 2f70: 8d 25 32    .%2
    lda difficulty_level                                              ; 2f73: a5 89       ..
    clc                                                               ; 2f75: 18          .
    adc #sprite_0                                                     ; 2f76: 69 32       i2
    sta difficulty_level_on_status_bar                                ; 2f78: 8d 27 32    .'2
    lda l4c54,x                                                       ; 2f7b: bd 54 4c    .TL
    sta l0055                                                         ; 2f7e: 85 55       .U
    sta l0051                                                         ; 2f80: 85 51       .Q
    lda l4c18,x                                                       ; 2f82: bd 18 4c    ..L
    sta screen_addr1_high                                             ; 2f85: 85 8b       ..
    lda l4c2c,x                                                       ; 2f87: bd 2c 4c    .,L
    sta screen_addr1_low                                              ; 2f8a: 85 8a       ..
    jsr sub_c2b15                                                     ; 2f8c: 20 15 2b     .+
    ldy #0                                                            ; 2f8f: a0 00       ..
    lda #3                                                            ; 2f91: a9 03       ..
    sta (ptr_low),y                                                   ; 2f93: 91 8c       ..
    lda ptr_low                                                       ; 2f95: a5 8c       ..
    sta l006a                                                         ; 2f97: 85 6a       .j
    lda ptr_high                                                      ; 2f99: a5 8d       ..
    sta l006b                                                         ; 2f9b: 85 6b       .k
    lda l4bf0,x                                                       ; 2f9d: bd f0 4b    ..K
    sta screen_addr1_high                                             ; 2fa0: 85 8b       ..
    lda l4c04,x                                                       ; 2fa2: bd 04 4c    ..L
    sta screen_addr1_low                                              ; 2fa5: 85 8a       ..
    jsr sub_c2b15                                                     ; 2fa7: 20 15 2b     .+
    ldy #0                                                            ; 2faa: a0 00       ..
    lda #8                                                            ; 2fac: a9 08       ..
    sta (ptr_low),y                                                   ; 2fae: 91 8c       ..
    lda ptr_low                                                       ; 2fb0: a5 8c       ..
    sta l0070                                                         ; 2fb2: 85 70       .p
    lda ptr_high                                                      ; 2fb4: a5 8d       ..
    sta l0071                                                         ; 2fb6: 85 71       .q
    ldy difficulty_level                                              ; 2fb8: a4 89       ..
loop_c2fba
    cpy #2                                                            ; 2fba: c0 02       ..
    bmi c2fc6                                                         ; 2fbc: 30 08       0.
    txa                                                               ; 2fbe: 8a          .
    clc                                                               ; 2fbf: 18          .
    adc #$28                                                          ; 2fc0: 69 28       i(
    tax                                                               ; 2fc2: aa          .
    dey                                                               ; 2fc3: 88          .
    bne loop_c2fba                                                    ; 2fc4: d0 f4       ..
c2fc6
    lda required_diamonds_for_each_cave_difficulty_level_1,x          ; 2fc6: bd 28 4b    .(K
    sta l006c                                                         ; 2fc9: 85 6c       .l
    ldy #1                                                            ; 2fcb: a0 01       ..
    jsr add_a_to_status_bar_number_at_y                               ; 2fcd: 20 c0 28     .(
    lda time_limit_for_each_cave_difficulty_level_1,x                 ; 2fd0: bd 3c 4b    .<K
    sta l006d                                                         ; 2fd3: 85 6d       .m
    ldy #$0c                                                          ; 2fd5: a0 0c       ..
    jsr add_a_to_status_bar_number_at_y                               ; 2fd7: 20 c0 28     .(
    lda #0                                                            ; 2fda: a9 00       ..
    rts                                                               ; 2fdc: 60          `

unused48
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 2fdd: 00 00 00... ...
    !byte   0,   0,   0,   0,   0, $81,   0,   0,   0,   0, $84,   0  ; 2fe9: 00 00 00... ...
    !byte   0, $86, $81,   0,   0,   1, $81, $d9, $19, $81, $ff       ; 2ff5: 00 86 81... ...

sub_c3000
    lda l0056                                                         ; 3000: a5 56       .V
    beq c3018                                                         ; 3002: f0 14       ..
    sta data_set_ptr_low                                              ; 3004: 85 46       .F
    ldy l0060                                                         ; 3006: a4 60       .`
    bne c3010                                                         ; 3008: d0 06       ..
    inc l004d                                                         ; 300a: e6 4d       .M
    ldx #$92                                                          ; 300c: a2 92       ..
    bne c3016                                                         ; 300e: d0 06       ..
c3010
    adc #$38                                                          ; 3010: 69 38       i8
    bcc c3018                                                         ; 3012: 90 04       ..
    ldx #$85                                                          ; 3014: a2 85       ..
c3016
    stx l0054                                                         ; 3016: 86 54       .T
c3018
    lda l006d                                                         ; 3018: a5 6d       .m
    cmp #sprite_0                                                     ; 301a: c9 32       .2
    bne return12                                                      ; 301c: d0 0d       ..
    lda sub_second_ticks                                              ; 301e: a5 5c       .\
    cmp #7                                                            ; 3020: c9 07       ..
    bne return12                                                      ; 3022: d0 07       ..
    lda #1                                                            ; 3024: a9 01       ..
    sta l0055                                                         ; 3026: 85 55       .U
    lsr                                                               ; 3028: 4a          J
    sta l0057                                                         ; 3029: 85 57       .W
return12
    rts                                                               ; 302b: 60          `

unused49
    !byte $85, $57, $60, $1c, $1f, $1f, $1f, $1f, $1f, $1f, $1f, $1f  ; 302c: 85 57 60... .W`
    !byte $1f, $1f, $1f, $1f, $1f, $1f, $1f, $1f                      ; 3038: 1f 1f 1f... ...

c3040
    lda l0062                                                         ; 3040: a5 62       .b
    and #2                                                            ; 3042: 29 02       ).
    beq c306c                                                         ; 3044: f0 26       .&
    lda #$c8                                                          ; 3046: a9 c8       ..
    sta status_text_address_low                                       ; 3048: 85 69       .i
    lda #0                                                            ; 304a: a9 00       ..
    sta l004e                                                         ; 304c: 85 4e       .N
loop_c304e
    jsr sub_c30dd                                                     ; 304e: 20 dd 30     .0
    bne loop_c304e                                                    ; 3051: d0 fb       ..
loop_c3053
    inc l004e                                                         ; 3053: e6 4e       .N
    ldx #$c8                                                          ; 3055: a2 c8       ..
    lda l004e                                                         ; 3057: a5 4e       .N
    and #$10                                                          ; 3059: 29 10       ).
    beq c305f                                                         ; 305b: f0 02       ..
    ldx #$14                                                          ; 305d: a2 14       ..
c305f
    stx status_text_address_low                                       ; 305f: 86 69       .i
    jsr sub_c30cf                                                     ; 3061: 20 cf 30     .0
    beq loop_c3053                                                    ; 3064: f0 ed       ..
loop_c3066
    jsr sub_c30dd                                                     ; 3066: 20 dd 30     .0
    bne loop_c3066                                                    ; 3069: d0 fb       ..
    rts                                                               ; 306b: 60          `

c306c
    lda l0064                                                         ; 306c: a5 64       .d
    cmp #8                                                            ; 306e: c9 08       ..
    beq c3084                                                         ; 3070: f0 12       ..
    lda #$0e                                                          ; 3072: a9 0e       ..
    sta l0074                                                         ; 3074: 85 74       .t
    lda #$b4                                                          ; 3076: a9 b4       ..
    sta status_text_address_low                                       ; 3078: 85 69       .i
loop_c307a
    jsr sub_c30cf                                                     ; 307a: 20 cf 30     .0
    bne return13                                                      ; 307d: d0 5d       .]
    dec l0074                                                         ; 307f: c6 74       .t
    bne loop_c307a                                                    ; 3081: d0 f7       ..
    rts                                                               ; 3083: 60          `

c3084
    ldy #0                                                            ; 3084: a0 00       ..
    lda (l0070),y                                                     ; 3086: b1 70       .p
    and #$7f                                                          ; 3088: 29 7f       ).
    tax                                                               ; 308a: aa          .
    tya                                                               ; 308b: 98          .
    sta (l0070),y                                                     ; 308c: 91 70       .p
    txa                                                               ; 308e: 8a          .
    sta (l006a),y                                                     ; 308f: 91 6a       .j
    jsr draw_grid_of_sprites                                          ; 3091: 20 00 23     .#
    lda l006d                                                         ; 3094: a5 6d       .m
    beq c30cb                                                         ; 3096: f0 33       .3
c3098
    ldy #$13                                                          ; 3098: a0 13       ..
    jsr increment_status_bar_number                                   ; 309a: 20 98 28     .(
    ldy #$0c                                                          ; 309d: a0 0c       ..
    jsr decrement_status_bar_number                                   ; 309f: 20 aa 28     .(
    ldx #5                                                            ; 30a2: a2 05       ..
    stx l004b                                                         ; 30a4: 86 4b       .K
    lda #0                                                            ; 30a6: a9 00       ..
    sta l004c                                                         ; 30a8: 85 4c       .L
    sta status_text_address_low                                       ; 30aa: 85 69       .i
    lda l006d                                                         ; 30ac: a5 6d       .m
    and #$1c                                                          ; 30ae: 29 1c       ).
    tay                                                               ; 30b0: a8          .
    iny                                                               ; 30b1: c8          .
    ldx #$88                                                          ; 30b2: a2 88       ..
    jsr c2c2c                                                         ; 30b4: 20 2c 2c     ,,
    jsr sub_c2a56                                                     ; 30b7: 20 56 2a     V*
    jsr draw_grid_of_sprites                                          ; 30ba: 20 00 23     .#
    jsr sub_c2325                                                     ; 30bd: 20 25 23     %#
    lda #2                                                            ; 30c0: a9 02       ..
    sta l0084                                                         ; 30c2: 85 84       ..
    jsr sub_c2b94                                                     ; 30c4: 20 94 2b     .+
    dec l006d                                                         ; 30c7: c6 6d       .m
    bne c3098                                                         ; 30c9: d0 cd       ..
c30cb
    lda #0                                                            ; 30cb: a9 00       ..
    sta status_text_address_low                                       ; 30cd: 85 69       .i
sub_c30cf
    jsr draw_grid_of_sprites                                          ; 30cf: 20 00 23     .#
    jsr sub_c2325                                                     ; 30d2: 20 25 23     %#
    jsr sub_c2b90                                                     ; 30d5: 20 90 2b     .+
    lda l0062                                                         ; 30d8: a5 62       .b
    and #2                                                            ; 30da: 29 02       ).
return13
    rts                                                               ; 30dc: 60          `

sub_c30dd
    jsr sub_c2325                                                     ; 30dd: 20 25 23     %#
    lda #0                                                            ; 30e0: a9 00       ..
    sta l0084                                                         ; 30e2: 85 84       ..
    jsr sub_c2b94                                                     ; 30e4: 20 94 2b     .+
    lda l0062                                                         ; 30e7: a5 62       .b
    and #2                                                            ; 30e9: 29 02       ).
    rts                                                               ; 30eb: 60          `

unused50
    !byte $62, $29,   2, $60,   0,   0,   0,   0,   0,   0,   0,   0  ; 30ec: 62 29 02... b).
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 30f8: 00 00 00... ...
l3100
    !byte   0,   0,   8,   0, $10, $80,   0, $20,   0, $10, $80, $20  ; 3100: 00 00 08... ...
    !byte $40,   0, $80, $10, $80,   0, $40,   0, $80, $20, $80,   0  ; 310c: 40 00 80... @..
    !byte $10,   0, $40,   0, $10, $80,   0, $10, $80,   0, $10,   0  ; 3118: 10 00 40... ..@
    !byte $40, $10, $40,   0, $10, $40,   0, $20, $80, $10,   0, $20  ; 3124: 40 10 40... @.@
    !byte $40, $10                                                    ; 3130: 40 10       @.
    !text "@ @"                                                       ; 3132: 40 20 40    @ @
    !byte $10                                                         ; 3135: 10          .
    !text "@ @ @"                                                     ; 3136: 40 20 40... @ @
    !byte $10, $40, $10,   0,   8, $88,   8, $10,   0, $80,   0, $10  ; 313b: 10 40 10... .@.
    !byte $40,   0, $80, $20, $80, $20,   0, $80, $10, $80, $20, $80  ; 3147: 40 00 80... @..
    !byte   0, $10, $80,   0, $20, $80,   0, $10,   0, $80, $ff, $ff  ; 3153: 00 10 80... ...
    !byte $ff                                                         ; 315f: ff          .
l3160
    !byte $14, $22,   2, $12,   1,   7,   2,   2,   6,   1, $0b,   1  ; 3160: 14 22 02... .".
    !byte   2,   2,   5,   4,   2,   6,   2,   1,   3,   3, $0b,   5  ; 316c: 02 02 05... ...
    !byte   2,   5,   2,   5,   3,   2,   7,   3,   3,   4,   1,   3  ; 3178: 02 05 02... ...
    !byte   3,   1,   4,   5,   2,   3,   6,   2,   3,   2,   1,   2  ; 3184: 03 01 04... ...
    !byte   3,   1,   2,   4,   5,   4,   3,   2,   8,   2,   9,   1  ; 3190: 03 01 02... ...
    !byte   2,   4,   3,   1,   2,   3,   2,   1,   2,   1,   5,   2  ; 319c: 02 04 03... ...
    !byte   1,   5,   4,   5,   2,   5,   6,   5,   5,   3,   6, $10  ; 31a8: 01 05 04... ...
    !byte   3,   5, $0c,   4,   3, $1f,   1, $14, $64, $ff, $ff, $ff  ; 31b4: 03 05 0c... ...

entry_point
    ldx #0                                                            ; 31c0: a2 00       ..
loop_c31c2
    lda credits,x                                                     ; 31c2: bd 00 54    ..T
    sta l3300,x                                                       ; 31c5: 9d 00 33    ..3
    dex                                                               ; 31c8: ca          .
    bne loop_c31c2                                                    ; 31c9: d0 f7       ..
loop_c31cb
    lda #sprite_0                                                     ; 31cb: a9 32       .2
    sta l233c                                                         ; 31cd: 8d 3c 23    .<#
    jsr c3a00                                                         ; 31d0: 20 00 3a     .:
    inc l233c                                                         ; 31d3: ee 3c 23    .<#
    lda #0                                                            ; 31d6: a9 00       ..
    sta status_text_address_low                                       ; 31d8: 85 69       .i
loop_c31da
    jsr sub_c2325                                                     ; 31da: 20 25 23     %#
    jsr sub_c2b90                                                     ; 31dd: 20 90 2b     .+
    inc status_text_address_low                                       ; 31e0: e6 69       .i
    bne loop_c31da                                                    ; 31e2: d0 f6       ..
    jmp loop_c31cb                                                    ; 31e4: 4c cb 31    L.1

unused51
    !byte $31, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 31e7: 31 ff ff... 1..
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 31f3: ff ff ff... ...
    !byte $ff                                                         ; 31ff: ff          .

tile_map
status_bar_sprite_numbers
    !byte sprite_4                                                    ; 3200: 36          6
required_diamonds_on_status_bar
    !byte sprite_2                                                    ; 3201: 34          4
    !byte sprite_diamond1                                             ; 3202: 03          .
total_diamonds_on_status_bar_high_digit
    !byte sprite_1                                                    ; 3203: 33          3
total_diamonds_on_status_bar_low_digit
    !byte sprite_0                                                    ; 3204: 32          2
    !byte sprite_space                                                ; 3205: 00          .
    !byte sprite_0                                                    ; 3206: 32          2
    !byte sprite_0                                                    ; 3207: 32          2
    !byte sprite_0                                                    ; 3208: 32          2
    !byte sprite_space                                                ; 3209: 00          .
    !byte sprite_1                                                    ; 320a: 33          3
    !byte sprite_3                                                    ; 320b: 35          5
    !byte sprite_3                                                    ; 320c: 35          5
    !byte sprite_space                                                ; 320d: 00          .
score_on_status_bar
    !byte sprite_0                                                    ; 320e: 32          2
    !byte sprite_0                                                    ; 320f: 32          2
    !byte sprite_7                                                    ; 3210: 39          9
hundreds_digit_of_score_on_status_bar
    !byte sprite_9                                                    ; 3211: 3b          ;
    !byte sprite_7                                                    ; 3212: 39          9
    !byte sprite_8                                                    ; 3213: 3a          :

players_and_men_status_bar
    !text "PLAYER"                                                    ; 3214: 50 4c 41... PLA
    !byte sprite_space                                                ; 321a: 00          .
player_number_on_status_bar
    !byte sprite_1                                                    ; 321b: 33          3
    !byte sprite_comma                                                ; 321c: 3f          ?
    !byte sprite_space                                                ; 321d: 00          .
men_number_on_status_bar
    !byte sprite_0                                                    ; 321e: 32          2
    !byte sprite_space                                                ; 321f: 00          .
    !text "MEN"                                                       ; 3220: 4d 45 4e    MEN
    !byte sprite_space                                                ; 3223: 00          .
    !byte sprite_space                                                ; 3224: 00          .
cave_letter_on_status_bar
    !text "N"                                                         ; 3225: 4e          N
    !byte sprite_slash                                                ; 3226: 3e          >
difficulty_level_on_status_bar
    !byte sprite_4                                                    ; 3227: 36          6

l3228
    !byte sprite_6                                                    ; 3228: 38          8
    !byte sprite_0                                                    ; 3229: 32          2
    !byte sprite_diamond1                                             ; 322a: 03          .
    !byte sprite_0                                                    ; 322b: 32          2
    !byte sprite_5                                                    ; 322c: 37          7
    !byte sprite_space                                                ; 322d: 00          .
    !byte sprite_0                                                    ; 322e: 32          2
    !byte sprite_0                                                    ; 322f: 32          2
    !byte sprite_0                                                    ; 3230: 32          2
    !byte sprite_space                                                ; 3231: 00          .
    !byte sprite_1                                                    ; 3232: 33          3
    !byte sprite_5                                                    ; 3233: 37          7
    !byte sprite_0                                                    ; 3234: 32          2
    !byte sprite_space                                                ; 3235: 00          .
l3236
    !byte sprite_0                                                    ; 3236: 32          2
    !byte sprite_0                                                    ; 3237: 32          2
    !byte sprite_0                                                    ; 3238: 32          2
    !byte sprite_0                                                    ; 3239: 32          2
    !byte sprite_0                                                    ; 323a: 32          2
    !byte sprite_0                                                    ; 323b: 32          2

l323c
    !text "PLAYER"                                                    ; 323c: 50 4c 41... PLA
    !byte sprite_space                                                ; 3242: 00          .
l3243
    !byte sprite_2                                                    ; 3243: 34          4
    !byte sprite_comma                                                ; 3244: 3f          ?
    !byte sprite_space                                                ; 3245: 00          .
l3246
    !byte sprite_0                                                    ; 3246: 32          2
    !byte sprite_space                                                ; 3247: 00          .
    !text "MEN"                                                       ; 3248: 4d 45 4e    MEN
    !byte sprite_space                                                ; 324b: 00          .
    !byte sprite_space                                                ; 324c: 00          .
l324d
    !byte 'B'                                                         ; 324d: 42          B
    !byte sprite_slash                                                ; 324e: 3e          >
l324f
    !byte sprite_4                                                    ; 324f: 36          6

highscore_high_status_bar
    !byte sprite_0                                                    ; 3250: 32          2
    !byte sprite_0                                                    ; 3251: 32          2
    !byte sprite_0                                                    ; 3252: 32          2
    !byte sprite_0                                                    ; 3253: 32          2
    !byte sprite_0                                                    ; 3254: 32          2
    !byte sprite_0                                                    ; 3255: 32          2
    !byte sprite_space                                                ; 3256: 00          .
    !byte sprite_space                                                ; 3257: 00          .
    !text "HIGH"                                                      ; 3258: 48 49 47... HIG
    !byte sprite_space                                                ; 325c: 00          .
    !byte sprite_space                                                ; 325d: 00          .
    !byte sprite_0                                                    ; 325e: 32          2
    !byte sprite_0                                                    ; 325f: 32          2
    !byte sprite_0                                                    ; 3260: 32          2
    !byte sprite_0                                                    ; 3261: 32          2
    !byte sprite_0                                                    ; 3262: 32          2
    !byte sprite_0                                                    ; 3263: 32          2

bonus_life_text
    !text "B"                                                         ; 3264: 42          B
    !byte sprite_space                                                ; 3265: 00          .
    !text "O"                                                         ; 3266: 4f          O
    !byte sprite_space                                                ; 3267: 00          .
    !text "N"                                                         ; 3268: 4e          N
    !byte sprite_space                                                ; 3269: 00          .
    !text "U"                                                         ; 326a: 55          U
    !byte sprite_space                                                ; 326b: 00          .
    !text "S"                                                         ; 326c: 53          S
    !byte sprite_space                                                ; 326d: 00          .
    !byte sprite_space                                                ; 326e: 00          .
    !byte sprite_space                                                ; 326f: 00          .
    !byte sprite_space                                                ; 3270: 00          .
    !text "L"                                                         ; 3271: 4c          L
    !byte sprite_space                                                ; 3272: 00          .
    !text "I"                                                         ; 3273: 49          I
    !byte sprite_space                                                ; 3274: 00          .
    !text "F"                                                         ; 3275: 46          F
    !byte sprite_space                                                ; 3276: 00          .
    !text "E"                                                         ; 3277: 45          E

number_of_players_status_bar
    !byte sprite_1                                                    ; 3278: 33          3
    !byte sprite_space                                                ; 3279: 00          .
    !text "PLAYER"                                                    ; 327a: 50 4c 41... PLA
plural_for_player
    !byte sprite_space                                                ; 3280: 00          .
    !byte sprite_space                                                ; 3281: 00          .
    !byte sprite_space                                                ; 3282: 00          .
    !byte sprite_space                                                ; 3283: 00          .
    !text "CAVE="                                                     ; 3284: 43 41 56... CAV
cave_letter
    !text "A"                                                         ; 3289: 41          A
    !byte sprite_slash                                                ; 328a: 3e          >
number_of_players_status_bar_difficulty_level
    !byte sprite_1                                                    ; 328b: 33          3

game_over_text
    !byte sprite_space                                                ; 328c: 00          .
    !text "GAME"                                                      ; 328d: 47 41 4d... GAM
    !byte sprite_space                                                ; 3291: 00          .
    !text "OVER"                                                      ; 3292: 4f 56 45... OVE
    !byte sprite_space                                                ; 3296: 00          .
    !text "PLAYER"                                                    ; 3297: 50 4c 41... PLA
    !byte sprite_space                                                ; 329d: 00          .
player_number_on_game_over_text
    !byte sprite_1                                                    ; 329e: 33          3
    !byte sprite_space                                                ; 329f: 00          .
scrolling_pause_text
    !byte sprite_space                                                ; 32a0: 00          .
    !text "DEMONSTRATION"                                             ; 32a1: 44 45 4d... DEM
    !byte sprite_space                                                ; 32ae: 00          .
    !text "MODE"                                                      ; 32af: 4d 4f 44... MOD
    !byte sprite_space                                                ; 32b3: 00          .
    !text "O"                                                         ; 32b4: 4f          O
    !byte sprite_space                                                ; 32b5: 00          .
    !text "U"                                                         ; 32b6: 55          U
    !byte sprite_space                                                ; 32b7: 00          .
    !text "T"                                                         ; 32b8: 54          T
    !byte sprite_space                                                ; 32b9: 00          .
    !byte sprite_space                                                ; 32ba: 00          .
    !text "O"                                                         ; 32bb: 4f          O
    !byte sprite_space                                                ; 32bc: 00          .
    !text "F"                                                         ; 32bd: 46          F
    !byte sprite_space                                                ; 32be: 00          .
    !byte sprite_space                                                ; 32bf: 00          .
    !byte sprite_space                                                ; 32c0: 00          .
    !text "T"                                                         ; 32c1: 54          T
    !byte sprite_space                                                ; 32c2: 00          .
    !text "I"                                                         ; 32c3: 49          I
    !byte sprite_space                                                ; 32c4: 00          .
    !text "M"                                                         ; 32c5: 4d          M
    !byte sprite_space                                                ; 32c6: 00          .
    !text "E"                                                         ; 32c7: 45          E
    !text "HIT"                                                       ; 32c8: 48 49 54    HIT
    !byte sprite_space                                                ; 32cb: 00          .
    !text "SPACE"                                                     ; 32cc: 53 50 41... SPA
    !byte sprite_space                                                ; 32d1: 00          .
    !byte sprite_space                                                ; 32d2: 00          .
    !text "TO"                                                        ; 32d3: 54 4f       TO
    !byte sprite_space                                                ; 32d5: 00          .
    !text "RESUME"                                                    ; 32d6: 52 45 53... RES
highscore_last_status_bar
    !byte sprite_0                                                    ; 32dc: 32          2
    !byte sprite_0                                                    ; 32dd: 32          2
    !byte sprite_0                                                    ; 32de: 32          2
    !byte sprite_0                                                    ; 32df: 32          2
    !byte sprite_0                                                    ; 32e0: 32          2
    !byte sprite_0                                                    ; 32e1: 32          2
    !byte sprite_space                                                ; 32e2: 00          .
    !byte sprite_space                                                ; 32e3: 00          .
    !text "LAST"                                                      ; 32e4: 4c 41 53... LAS
    !byte sprite_space                                                ; 32e8: 00          .
    !byte sprite_space                                                ; 32e9: 00          .
    !byte sprite_0                                                    ; 32ea: 32          2
    !byte sprite_0                                                    ; 32eb: 32          2
    !byte sprite_0                                                    ; 32ec: 32          2
    !byte sprite_0                                                    ; 32ed: 32          2
    !byte sprite_0                                                    ; 32ee: 32          2
    !byte sprite_0                                                    ; 32ef: 32          2
zeroed_status_bar
    !byte sprite_0                                                    ; 32f0: 32          2
    !byte sprite_0                                                    ; 32f1: 32          2
    !byte sprite_diamond1                                             ; 32f2: 03          .
    !byte sprite_0                                                    ; 32f3: 32          2
    !byte sprite_0                                                    ; 32f4: 32          2
    !byte sprite_space                                                ; 32f5: 00          .
    !byte sprite_0                                                    ; 32f6: 32          2
    !byte sprite_0                                                    ; 32f7: 32          2
    !byte sprite_0                                                    ; 32f8: 32          2
    !byte sprite_space                                                ; 32f9: 00          .
    !byte sprite_0                                                    ; 32fa: 32          2
    !byte sprite_0                                                    ; 32fb: 32          2
    !byte sprite_0                                                    ; 32fc: 32          2
    !byte sprite_space                                                ; 32fd: 00          .
    !byte sprite_0                                                    ; 32fe: 32          2
    !byte sprite_0                                                    ; 32ff: 32          2

; 
; Basic program for debugging purposes. Starts the game.
; 
; 10*KEY 1 MO.4|M PAGE=13056 |M|N
; 20 MODE 5
; 30 VDU 23;8202;0;0;0;       (turns off the cursor)
; 40 *FX 178,0,0              (disables keyboard interrupts)
; 50 CALL 12736               (start the code at the regular entry_point)
; 60 *FX 178,255,0            (enables keyboard interrupts)
; 
l3300
    !byte $0d,   0, $0a                                               ; 3300: 0d 00 0a    ...
    !text " *KEY1 MO.4|M PAGE=13056 |M|N"                             ; 3303: 20 2a 4b...  *K
    !byte $0d,   0, $14,   7, $20, $eb, $35, $0d,   0, $1e, $15, $20  ; 3320: 0d 00 14... ...
    !byte $ef                                                         ; 332c: ef          .
    !text " 23;8202;0;0;0;"                                           ; 332d: 20 32 33...  23
    !byte $0d,   0, $28, $10                                          ; 333c: 0d 00 28... ..(
    !text " *FX 178,0,0"                                              ; 3340: 20 2a 46...  *F
    !byte $0d,   0, $32, $0c, $20, $d6                                ; 334c: 0d 00 32... ..2
    !text " 12736"                                                    ; 3352: 20 31 32...  12
    !byte $0d,   0, $3c, $12                                          ; 3358: 0d 00 3c... ..<
    !text " *FX 178,255,0"                                            ; 335c: 20 2a 46...  *F
    !byte $0d, $ff                                                    ; 336a: 0d ff       ..

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
; Note the unusual lack of hex literals, everything's decimal.
; 
; Translating this to hex form, we see this is the code at &3a06
; 80 JSR &2A4D
; 90 JSR &2292:LDA #&DC:STA &69
; 100 LDA #&7B:LDY #0:JSR &2329
; 110 JSR &2292:LDA #&50:STA &69
; 120 LDA #&7D:LDY #&80:JSR &2329
; 130 JSR &2292:LDX
; 
unused52
    !byte $50, $0e                                                    ; 336c: 50 0e       P.
    !text " JSR 10829"                                                ; 336e: 20 4a 53...  JS
    !byte $0d,   0, $5a, $1e                                          ; 3378: 0d 00 5a... ..Z
    !text " JSR 8850:LDA #220:STA 105"                                ; 337c: 20 4a 53...  JS
    !byte $0d,   0, $64, $1d                                          ; 3396: 0d 00 64... ..d
    !text " LDA #123:LDY #0:JSR 9001"                                 ; 339a: 20 4c 44...  LD
    !byte $0d,   0, $6e, $1d                                          ; 33b3: 0d 00 6e... ..n
    !text " JSR 8850:LDA #80:STA 105"                                 ; 33b7: 20 4a 53...  JS
    !byte $0d,   0, $78, $1f                                          ; 33d0: 0d 00 78... ..x
    !text " LDA #125:LDY #128:JSR 9001"                               ; 33d4: 20 4c 44...  LD
    !byte $0d,   0, $82, $1b                                          ; 33ef: 0d 00 82... ...
    !text " JSR 8850:LDX"                                             ; 33f3: 20 4a 53...  JS

big_rockford_sprite
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 3400: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0, $1a, $10,   1, $11,   0  ; 340c: 00 00 00... ...
    !byte   2,   3, $21,   0,   2,   8,   6, $ca, $cb, $87, $69,   0  ; 3418: 02 03 21... ..!
    !byte   3, $37, $8f, $2d, $6b, $0f,   1,   0,   4, $6c, $3e, $96  ; 3424: 03 37 8f... .7.
    !byte $fc,   0,   4, $63, $c7, $96, $f3,   0,   3, $ce, $1f, $4b  ; 3430: fc 00 04... ...
    !byte $6d, $0f,   1,   0,   2,   1, $12, $35, $3d, $1e, $69,   0  ; 343c: 6d 0f 01... m..
    !byte   2, $80, $88,   0,   2, $0c, $68,   0, $fd, $10,   1,   0  ; 3448: 02 80 88... ...
    !byte   2, $32, $11,   1,   7, $69, $32, $b1, $52, $7e, $97, $cb  ; 3454: 02 32 11... .2.
    !byte $4f, $2d, $3c, $78, $e1, $2d, $3e, $97, $ad, $78, $f0, $0f  ; 3460: 4f 2d 3c... O-<
    !byte   1, $69, $3e, $1e, $5a, $7c, $3e, $96, $78, $0f,   1, $c7  ; 346c: 01 69 3e... .i>
    !byte $87, $a5, $e3, $c7, $96, $e1, $0f,   1, $4b, $c7, $9e, $5b  ; 3478: 87 a5 e3... ...
    !byte $e1, $f0, $0f,   1, $69, $e7, $9e, $3d, $2f, $4b, $c3, $e1  ; 3484: e1 f0 0f... ...
    !byte $78, $c4, $88,   8, $0e, $3e, $2d, $c4, $8e,   0,   6,   8  ; 3490: 78 c4 88... x..
    !byte   0, $f3,   1,   0,   4,   1, $47, $4b, $32, $17,   7, $2d  ; 349c: 00 f3 01... ...
    !byte $3e, $5a, $cb, $5a, $96, $87, $96, $96, $1e, $1e, $f0, $96  ; 34a8: 3e 5a cb... >Z.
    !byte $69, $96, $1e, $4b, $1e, $69, $0f,   1, $87, $4b, $0f,   1  ; 34b4: 69 96 1e... i..
    !byte $87, $87, $87, $4b, $0f,   1, $1e, $1e, $2d, $1e, $1e, $1e  ; 34c0: 87 87 87... ...
    !byte $1e, $f0, $96, $69, $96, $1e, $4b, $1e, $69, $0f,   1, $87  ; 34cc: 1e f0 96... ...
    !byte $87, $0f,   1, $87, $87, $87, $4b, $3e, $2d, $c4, $8e, $0e  ; 34d8: 87 0f 01... ...
    !byte $4b, $c7, $a5,   0,   2,   8,   0,   4,   8,   0, $f0,   1  ; 34e4: 4b c7 a5... K..
    !byte   1, $12, $13, $10,   4, $e1, $cb, $87, $87, $0f,   4, $2d  ; 34f0: 01 12 13... ...
    !byte $3c, $3c, $3d, $3d, $3d, $3d, $3d, $f6, $ff,   2, $ee, $dc  ; 34fc: 3c 3c 3d... <<=
    !byte $dc, $b8, $b9, $4b, $87, $87, $87, $87, $87, $96, $87, $2d  ; 3508: dc b8 b9... ...
    !byte $3c, $3c, $3d, $3d, $3d, $b5, $79, $f6, $ff,   2, $ee, $dc  ; 3514: 3c 3c 3d... <<=
    !byte $dc, $b8, $b9, $4b, $87, $87, $87, $87, $87, $87, $87, $78  ; 3520: dc b8 b9... ...
    !byte $3d, $1e, $1e, $0f,   4,   8,   8, $84, $8c, $80, $80, $80  ; 352c: 3d 1e 1e... =..
    !byte $80,   0, $f0, $21, $21, $21, $21, $21, $21, $21, $21, $0f  ; 3538: 80 00 f0... ...
    !byte   8, $3d, $1e, $0f,   6, $b9, $b8, $e1, $0f,   5, $97, $0f  ; 3544: 08 3d 1e... .=.
    !byte   2, $4b, $4b, $2d, $1e, $0f,   1, $79, $bc, $ad, $2d, $4b  ; 3550: 02 4b 4b... .KK
    !byte $4b, $87, $0f,   1, $b9, $b8, $e1, $0f,   5, $87, $0f,   5  ; 355c: 4b 87 0f... K..
    !byte $a5, $4b, $0f,   8, $48,   8,   0, $f0, $10,   3,   0,   5  ; 3568: a5 4b 0f... .K.
    !byte $0f,   3, $87, $87, $43, $21, $10,   1, $0f,   7, $87, $4b  ; 3574: 0f 03 87... ...
    !byte $c3, $4b, $a5, $1e, $0f,   7, $87, $78, $0f,   6, $3c, $c3  ; 3580: c3 4b a5... .K.
    !byte $0f,   4, $1e, $69, $87, $0f,   3, $69, $87, $0f,   5, $1e  ; 358c: 0f 04 1e... ...
    !byte $0f,   3, $1e, $1e, $2c, $48,   1, $80, $80, $80, $80,   0  ; 3598: 0f 03 1e... ...
    !byte   0,   0,   5, $52, $30,   0,   6, $0f,   2, $87, $43, $21  ; 35a4: 00 00 05... ...
    !byte $21, $10,   1,   0,   1, $0f,   7, $87, $0f,   7, $1e, $0f  ; 35b0: 21 10 01... !..
    !byte   2, $1e, $2c, $48,   2, $80,   0,   1, $a4, $c0,   0, $33  ; 35bc: 02 1e 2c... ..,
    !byte $11, $33, $77,   0,   4, $88, $cc, $ee, $ff,   1,   0, $d5  ; 35c8: 11 33 77... .3w
    !byte $10,   2, $31,   0,   3, $70, $f6, $ff,   3,   0,   1, $10  ; 35d4: 10 02 31... ..1
    !byte   1, $f1, $3d, $fc, $f6, $fe, $f7, $f0, $8f, $8f, $cb, $fc  ; 35e0: 01 f1 3d... ..=
    !byte $ff,   2, $f3, $f0, $3d, $3d, $3d, $f3, $ff,   2, $fc,   0  ; 35ec: ff 02 f3... ...
    !byte   1, $80, $c8, $e8, $fa, $f5, $f7, $9f,   0,   5, $80, $80  ; 35f8: 01 80 c8... ...
    !byte $c8,   0, $1d, $11, $33, $77,   0,   1, $11, $33, $77, $ff  ; 3604: c8 00 1d... ...
    !byte   1, $dd, $bb, $cc, $ff,   1, $55, $aa, $ff,   2, $55,   0  ; 3610: 01 dd bb... ...
    !byte   1, $a0, $ee, $55, $bb, $ff,   2, $77, $55, $20, $88, $44  ; 361c: 01 a0 ee... ...
    !byte $ee, $ff,   2, $ee, $bb, $e0,   0,   4, $88, $cc, $22, $73  ; 3628: ee ff 02... ...
    !byte   0, $bb, $10,   2, $21, $73, $73, $43, $43, $87, $0f,   3  ; 3634: 00 bb 10... ...
    !byte $8f, $cf, $ff,   2, $7e, $3d, $3c, $7a, $d4, $f6, $ff,   1  ; 3640: 8f cf ff... ...
    !byte $87, $87, $87, $4b, $4b, $2d, $b5, $fc, $7f, $0f,   5, $ff  ; 364c: 87 87 87... ...
    !byte   1, $e3, $8f, $0f,   4, $1f, $ff,   1, $1e, $1f, $1e, $0f  ; 3658: 01 e3 8f... ...
    !byte   1, $3e, $6f, $fe, $ff,   1, $c8, $48,   1, $2c, $2c, $2c  ; 3664: 01 3e 6f... .>o
    !byte $2c, $fe, $fe,   0, $18, $55, $44, $44, $44, $22, $11, $10  ; 3670: 2c fe fe... ,..
    !byte   1, $31, $b8, $a8, $55, $33, $11,   0,   1, $b0, $f3,   0  ; 367c: 01 31 b8... .1.
    !byte   1, $aa, $55, $ff,   2, $fe, $f5, $fb, $90, $31, $75, $fb  ; 3688: 01 aa 55... ..U
    !byte $fb, $f3, $fd, $ff,   1, $fe, $fe, $fe, $fd, $ed, $ed, $cb  ; 3694: fb f3 fd... ...
    !byte $da, $a3, $47, $8f, $1f, $78, $f6, $f6, $fe, $80, $c8, $c8  ; 36a0: da a3 47... ..G
    !byte $c8, $80,   0, $aa, $10,   1,   0,   1, $10,   2, $21, $43  ; 36ac: c8 80 00... ...
    !byte $43, $87, $0f,   1, $f7, $ff,   2, $3f, $1f, $1f, $1e, $1e  ; 36b8: 43 87 0f... C..
    !byte $fe, $fe, $fd, $ec,   1, $fb, $c0, $72, $31, $dc, $b9,   0  ; 36c4: fe fe fd... ...
    !byte   1, $fb, $32, $d5, $fe, $64, $96, $da, $cb, $40, $d8, $b1  ; 36d0: 01 fb 32... ..2
    !byte $73, $f7, $ff,   2, $f5, $f4, $fb, $db, $c5, $b7, $ff,   3  ; 36dc: 73 f7 ff... s..
    !byte $ef, $87, $cb, $ed, $be, $fe, $ff,   1, $9e, $1e, $1e, $1e  ; 36e8: ef 87 cb... ...
    !byte $0e, $0e, $fe, $ff,   1, $ef, $8f, $0f,   2, $87, $87,   0  ; 36f4: 0e 0e fe... ...
    !byte   1, $80, $80, $80, $48,   4,   0,   5, $10,   1, $31, $f3  ; 3700: 01 80 80... ...
    !byte   0,   2, $10,   1, $21, $c3, $cf, $cf, $cf, $73, $72, $f6  ; 370c: 00 02 10... ...
    !byte $f6, $f6, $f6, $f7, $7b, $f7, $ff,   4, $fd, $d0, $80, $fb  ; 3718: f6 f6 f6... ...
    !byte $ff,   4, $fe, $e0,   0,   1, $ff,   1, $fe, $fd, $f9, $90  ; 3724: ff 04 fe... ...
    !byte   0,   3, $f5, $fa, $ff,   3, $f0,   0,   2, $fe, $ec,   2  ; 3730: 00 03 f5... ...
    !byte $c8, $80,   0, $ab, $10,   1, $31, $73, $73, $73, $f7, $f7  ; 373c: c8 80 00... ...
    !byte $e7, $0f,   1, $cf, $ef, $ef, $fe, $fc, $ef, $0f,   1, $2c  ; 3748: e7 0f 01... ...
    !byte $48,   2, $80,   0,   1, $10,   1, $b1, $7b, $31, $10,   1  ; 3754: 48 02 80... H..
    !byte $31, $73, $e7, $df, $af, $ce, $d8, $a1, $c3, $cb, $29, $36  ; 3760: 31 73 e7... 1s.
    !byte $5e, $fe, $1e, $1e, $2d, $3d, $6b, $ea, $c6, $e7, $9b, $af  ; 376c: 5e fe 1e... ^..
    !byte $77, $3f, $df, $7f, $fc, $7b, $9f, $cf, $9d, $0d, $9b, $3e  ; 3778: 77 3f df... w?.
    !byte $1a, $e5, $f6, $a6, $96, $96, $96, $3c, $3c, $7a, $97, $b7  ; 3784: 1a e5 f6... ...
    !byte $73, $73, $73, $71, $31, $10,   1, $f8, $cb, $c7, $cf, $c7  ; 3790: 73 73 73... sss
    !byte $ef, $ef, $f4, $3f, $1f, $1f, $1f, $1e, $2c, $c0,   0,   1  ; 379c: ef ef f4... ...
    !byte $ef, $fe, $ec,   1, $c0,   0,   4, $78, $80,   0, $d6, $e7  ; 37a8: ef fe ec... ...
    !byte $43, $43, $21, $31, $10,   1,   0,   2, $0f,   3, $3f, $ff  ; 37b4: 43 43 21... CC!
    !byte   2, $f7, $73, $2d, $7e, $fe, $ff,   2, $ef, $cf, $8f, $9b  ; 37c0: 02 f7 73... ..s
    !byte $8d, $3b, $d6, $79, $6a, $3c, $3d, $bc, $fa, $f7, $bb, $55  ; 37cc: 8d 3b d6... .;.
    !byte $e2, $ec,   1, $fa, $df, $8d, $d6, $fa, $fd, $fd, $f3, $ff  ; 37d8: e2 ec 01... ...
    !byte   1, $f7, $f6, $fe, $fd, $fd, $fa, $fa, $e1, $e5, $cb, $cb  ; 37e4: 01 f7 f6... ...
    !byte $96, $96, $3c, $3d, $79, $5a, $96, $96, $1e, $d2, $fc, $fc  ; 37f0: 96 96 3c... ..<
    !byte $fc,   0,   8, $c0,   0, $f7, $31, $10,   1,   0,   6, $0f  ; 37fc: fc 00 08... ...
    !byte   2, $87, $52, $30, $31, $31, $31, $7b, $f7, $f6, $fe, $fd  ; 3808: 02 87 52... ..R
    !byte $fd, $fb, $fb, $fb, $f7, $ff, $0e, $ed, $fe, $fe, $ff,   5  ; 3814: fd fb fb... ...
    !byte $7b, $f7, $ff,   3, $fe, $fc, $f9, $fa, $fa, $da, $96, $b5  ; 3820: 7b f7 ff... {..
    !byte $f3, $ff,   2,   0,   4, $80, $80, $80, $80,   0,   0, $31  ; 382c: f3 ff 02... ...
    !byte $31, $31, $10,   1,   0,   4, $fb, $fb, $fb, $b0, $31, $31  ; 3838: 31 31 10... 11.
    !byte $31, $31, $ff,   4, $f7, $fb, $fd, $fe, $ff,   4, $fd, $fe  ; 3844: 31 31 ff... 11.
    !byte $ff,   2, $f6, $f9, $ff,   3, $f0, $ff,   2, $f5, $fd, $fd  ; 3850: ff 02 f6... ...
    !byte $fb, $f7, $f7, $f7, $f7, $ff,   2, $fe, $fe, $fe, $fe, $fe  ; 385c: fb f7 f7... ...
    !byte $fe, $80, $80,   0,   0,   0, $0e, $31, $31, $31, $31, $31  ; 3868: fe 80 80... ...
    !byte $10,   3, $ff,   8, $f7, $f9, $fe, $ff,   1, $fe, $fe, $fe  ; 3874: 10 03 ff... ...
    !byte $ec,   1, $fe, $fd, $f3, $b1, $10,   2,   0,   2, $ff,   6  ; 3880: ec 01 fe... ...
    !byte $f7, $f7, $ec,   8,   0,   0,   0, $10, $10,   8, $ff,   8  ; 388c: f7 f7 ec... ...
    !byte $ec,   8,   0,   8, $f7, $f7, $f7, $f7, $f7, $f7, $f7, $f7  ; 3898: ec 08 00... ...
    !byte $ec,   6, $e4, $ec,   1,   0,   0,   0, $10, $10,   8, $ff  ; 38a4: ec 06 e4... ...
    !byte   8, $ec,   8,   0,   8, $f7, $f7, $f7, $f7, $f7, $f7, $f7  ; 38b0: 08 ec 08... ...
    !byte $f7, $ec,   8,   0,   0,   0, $10, $10,   8, $ff,   8, $ec  ; 38bc: f7 ec 08... ...
    !byte   7, $fe,   0,   4, $10,   4, $f7, $f7, $f7, $f7, $ff,   4  ; 38c8: 07 fe 00... ...
    !byte $ec,   4, $fe, $fe, $fe, $ec,   1,   0,   0,   0, $0e, $10  ; 38d4: ec 04 fe... ...
    !byte   1, $31, $31, $31, $31, $31, $12, $f1, $fd, $f2, $ff,   5  ; 38e0: 01 31 31... .11
    !byte $f0, $ff,   1, $f8, $fe, $fe, $fe, $fe, $ec,   1, $d2, $da  ; 38ec: f0 ff 01... ...
    !byte $87,   0,   4, $10,   3, $90, $f7, $70, $f3, $b4, $0f,   1  ; 38f8: 87 00 04... ...
    !byte $2d, $4b, $4b, $fc, $f3, $f4, $f5, $f5, $f5, $f6, $f6, $d0  ; 3904: 2d 4b 4b... -KK
    !byte $ff,   1, $f5, $f2, $e5, $f0, $f5, $f5,   0,   1, $80, $88  ; 3910: ff 01 f5... ...
    !byte   0,   1, $c0, $f8, $f5, $f2,   0,   5, $80, $f0, $7a,   0  ; 391c: 00 01 c0... ...
    !byte   7, $80,   0, $dc, $11, $12, $61, $f6,   0,   2, $61, $f2  ; 3928: 07 80 00... ...
    !byte $fc, $f4, $f4, $7a, $72, $f3, $f5, $f5, $da, $da, $cb, $f0  ; 3934: fc f4 f4... ...
    !byte $7a, $f2, $b5, $f9, $da, $f2, $f2, $7b, $e5, $e5, $e5, $cb  ; 3940: 7a f2 b5... z..
    !byte $cb, $87, $0f,   1, $2d, $0f,   1, $2d, $1e, $1e, $1e, $2d  ; 394c: cb 87 0f... ...
    !byte $0f,   2, $a1, $a1, $a1, $69, $78, $79, $58, $c0, $87, $87  ; 3958: 0f 02 a1... ...
    !byte $4b, $0f,   2, $c3, $fc, $f3, $69, $0f,   4, $4b, $d3, $fc  ; 3964: 4b 0f 02... K..
    !byte $7a, $7a, $e5, $e5, $69, $ed, $db, $f3, $f5, $f4, $e5, $e5  ; 3970: 7a 7a e5... zz.
    !byte $69, $ed, $db, $b7, $e5, $e5, $e5, $e5, $e5, $c3, $da, $96  ; 397c: 69 ed db... i..
    !byte $c0, $78, $f3, $f4, $f6, $f4, $fe, $e8,   0, $d8, $f2, $f6  ; 3988: c0 78 f3... .x.
    !byte $f2, $f6, $f1, $f7, $70, $73, $7a, $78, $79, $79, $96, $96  ; 3994: f2 f6 f1... ...
    !byte $f9, $fa, $7b, $3d, $96, $96, $f8, $f3, $fc, $c0, $b5, $b5  ; 39a0: f9 fa 7b... ..{
    !byte $da, $f8, $f7, $f8, $80,   0,   1, $1e, $1e, $f1, $fe, $e0  ; 39ac: da f8 f7... ...
    !byte   0,   3, $3c, $f3, $fc, $c0,   0,   4, $c8, $80,   0,   6  ; 39b8: 00 03 3c... ..<
    !byte $30,   0,   7, $f3, $30,   0,   6, $fc, $f3, $31, $10,   1  ; 39c4: 30 00 07... 0..
    !byte   0,   4, $7e, $f0, $ff,   1, $f0,   0,   4, $3d, $f3, $fe  ; 39d0: 00 04 7e... ..~
    !byte $f0,   0,   4, $ec,   1, $c0, $80,   0,   0,   0,   0,   0  ; 39dc: f0 00 04... ...
    !byte   0,   0,   0,   0,   0,   0, $9d, $50,   0, $fd, $39, $4f  ; 39e8: 00 00 00... ...
    !byte $42, $4f, $4e,   0, $8e, $38, $50,   0,   0, $12, $3a, $4f  ; 39f4: 42 4f 4e... BON

c3a00
    jsr draw_big_rockford                                             ; 3a00: 20 b5 2a     .*
    jsr c5700                                                         ; 3a03: 20 00 57     .W
    jsr reset_clock                                                   ; 3a06: 20 4d 2a     M*
    jsr reset_grid_of_sprites                                         ; 3a09: 20 92 22     ."
    lda #<highscore_last_status_bar                                   ; 3a0c: a9 dc       ..
    sta status_text_address_low                                       ; 3a0e: 85 69       .i
    lda #$7b                                                          ; 3a10: a9 7b       .{
    ldy #0                                                            ; 3a12: a0 00       ..
    jsr sub_c2329                                                     ; 3a14: 20 29 23     )#
    jsr reset_grid_of_sprites                                         ; 3a17: 20 92 22     ."
    lda #<highscore_high_status_bar                                   ; 3a1a: a9 50       .P
    sta status_text_address_low                                       ; 3a1c: 85 69       .i
    lda #$7d                                                          ; 3a1e: a9 7d       .}
    ldy #$80                                                          ; 3a20: a0 80       ..
    jsr sub_c2329                                                     ; 3a22: 20 29 23     )#
    jsr reset_grid_of_sprites                                         ; 3a25: 20 92 22     ."
    ldx #0                                                            ; 3a28: a2 00       ..
    ldy #1                                                            ; 3a2a: a0 01       ..
c3a2c
    lda #0                                                            ; 3a2c: a9 00       ..
    sta l006a                                                         ; 3a2e: 85 6a       .j
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
c3a45
    lda #<number_of_players_status_bar                                ; 3a45: a9 78       .x
    sta status_text_address_low                                       ; 3a47: 85 69       .i
    jsr sub_c2325                                                     ; 3a49: 20 25 23     %#
    jsr sub_c5713                                                     ; 3a4c: 20 13 57     .W
    lda #9                                                            ; 3a4f: a9 09       ..
    jsr sub_c2b92                                                     ; 3a51: 20 92 2b     .+
    jsr sub_c5713                                                     ; 3a54: 20 13 57     .W
    lda #5                                                            ; 3a57: a9 05       ..
    jsr sub_c2b92                                                     ; 3a59: 20 92 2b     .+
    ldx cave_number                                                   ; 3a5c: a6 87       ..
    ldy difficulty_level                                              ; 3a5e: a4 89       ..
    lda #$e8                                                          ; 3a60: a9 e8       ..
    sta c3a9e                                                         ; 3a62: 8d 9e 3a    ..:
    lda l0062                                                         ; 3a65: a5 62       .b
    asl                                                               ; 3a67: 0a          .
    bcs c3a9e                                                         ; 3a68: b0 34       .4
    asl                                                               ; 3a6a: 0a          .
    bcs c3a99                                                         ; 3a6b: b0 2c       .,
    asl                                                               ; 3a6d: 0a          .
    bcs c3aaf                                                         ; 3a6e: b0 3f       .?
    asl                                                               ; 3a70: 0a          .
    bcs c3ab7                                                         ; 3a71: b0 44       .D
    asl                                                               ; 3a73: 0a          .
    bcs c3abe                                                         ; 3a74: b0 48       .H
    asl                                                               ; 3a76: 0a          .
    bcs return14                                                      ; 3a77: b0 68       .h
    asl                                                               ; 3a79: 0a          .
    bcs c3ad1                                                         ; 3a7a: b0 55       .U
    dec l006a                                                         ; 3a7c: c6 6a       .j
    bne c3a45                                                         ; 3a7e: d0 c5       ..
    ldx #5                                                            ; 3a80: a2 05       ..
    lda #sprite_0                                                     ; 3a82: a9 32       .2
loop_c3a84
    sta score_on_status_bar,x                                         ; 3a84: 9d 0e 32    ..2
    dex                                                               ; 3a87: ca          .
    bpl loop_c3a84                                                    ; 3a88: 10 fa       ..
    ldx #0                                                            ; 3a8a: a2 00       ..
    stx cave_number                                                   ; 3a8c: 86 87       ..
    stx l0065                                                         ; 3a8e: 86 65       .e
    inx                                                               ; 3a90: e8          .
    stx difficulty_level                                              ; 3a91: 86 89       ..
    jsr sub_c2e00                                                     ; 3a93: 20 00 2e     ..
    jmp c3a00                                                         ; 3a96: 4c 00 3a    L.:

c3a99
    lda #$ca                                                          ; 3a99: a9 ca       ..
    sta c3a9e                                                         ; 3a9b: 8d 9e 3a    ..:
c3a9e
    inx                                                               ; 3a9e: e8          .
    txa                                                               ; 3a9f: 8a          .
    and #$0f                                                          ; 3aa0: 29 0f       ).
    tax                                                               ; 3aa2: aa          .
c3aa3
    sty difficulty_level                                              ; 3aa3: 84 89       ..
    lda l4c68,x                                                       ; 3aa5: bd 68 4c    .hL
    cmp difficulty_level                                              ; 3aa8: c5 89       ..
    bcc c3a9e                                                         ; 3aaa: 90 f2       ..
    jmp c3a2c                                                         ; 3aac: 4c 2c 3a    L,:

c3aaf
    iny                                                               ; 3aaf: c8          .
    cpy #6                                                            ; 3ab0: c0 06       ..
    bne c3aa3                                                         ; 3ab2: d0 ef       ..
    dey                                                               ; 3ab4: 88          .
    bne c3aa3                                                         ; 3ab5: d0 ec       ..
c3ab7
    dey                                                               ; 3ab7: 88          .
    bne c3abb                                                         ; 3ab8: d0 01       ..
    iny                                                               ; 3aba: c8          .
c3abb
    jmp c3a2c                                                         ; 3abb: 4c 2c 3a    L,:

c3abe
    lda number_of_players_status_bar                                  ; 3abe: ad 78 32    .x2
    eor #7                                                            ; 3ac1: 49 07       I.
    sta number_of_players_status_bar                                  ; 3ac3: 8d 78 32    .x2
    lda plural_for_player                                             ; 3ac6: ad 80 32    ..2
    eor #'S'                                                          ; 3ac9: 49 53       IS
    sta plural_for_player                                             ; 3acb: 8d 80 32    ..2
    jmp c3a2c                                                         ; 3ace: 4c 2c 3a    L,:

c3ad1
    jsr draw_big_rockford                                             ; 3ad1: 20 b5 2a     .*
    jsr reset_grid_of_sprites                                         ; 3ad4: 20 92 22     ."
    lda #$ff                                                          ; 3ad7: a9 ff       ..
    sta l0065                                                         ; 3ad9: 85 65       .e
    jsr sub_c3b00                                                     ; 3adb: 20 00 3b     .;
    jmp c3a00                                                         ; 3ade: 4c 00 3a    L.:

return14
    rts                                                               ; 3ae1: 60          `

unused53
    !byte $65, $20,   0, $3b, $4c,   0, $3a, $60, $ff, $ff, $ff, $ff  ; 3ae2: 65 20 00... e .
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 3aee: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff                                ; 3afa: ff ff ff... ...

sub_c3b00
    ldx #$13                                                          ; 3b00: a2 13       ..
loop_c3b02
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
c3b1d
    lda cave_letter                                                   ; 3b1d: ad 89 32    ..2
    sta cave_letter_on_status_bar                                     ; 3b20: 8d 25 32    .%2
    sta l324d                                                         ; 3b23: 8d 4d 32    .M2
    ldx number_of_players_status_bar_difficulty_level                 ; 3b26: ae 8b 32    ..2
    stx difficulty_level_on_status_bar                                ; 3b29: 8e 27 32    .'2
    stx l324f                                                         ; 3b2c: 8e 4f 32    .O2
    jsr sub_c3bc1                                                     ; 3b2f: 20 c1 3b     .;
    lda #sprite_0                                                     ; 3b32: a9 32       .2
    ldx #5                                                            ; 3b34: a2 05       ..
loop_c3b36
    sta score_on_status_bar,x                                         ; 3b36: 9d 0e 32    ..2
    sta l3236,x                                                       ; 3b39: 9d 36 32    .62
    dex                                                               ; 3b3c: ca          .
    bpl loop_c3b36                                                    ; 3b3d: 10 f7       ..
c3b3f
    ldx cave_number                                                   ; 3b3f: a6 87       ..
    lda difficulty_level                                              ; 3b41: a5 89       ..
    cmp l4c68,x                                                       ; 3b43: dd 68 4c    .hL
    bmi c3b4b                                                         ; 3b46: 30 03       0.
    sta l4c68,x                                                       ; 3b48: 9d 68 4c    .hL
c3b4b
    jsr sub_c2e00                                                     ; 3b4b: 20 00 2e     ..
    ldy #5                                                            ; 3b4e: a0 05       ..
    lda player_number_on_status_bar                                   ; 3b50: ad 1b 32    ..2
    lsr                                                               ; 3b53: 4a          J
    bcs c3b58                                                         ; 3b54: b0 02       ..
    ldy #$13                                                          ; 3b56: a0 13       ..
c3b58
    ldx #5                                                            ; 3b58: a2 05       ..
loop_c3b5a
    lda score_on_status_bar,x                                         ; 3b5a: bd 0e 32    ..2
    sta highscore_last_status_bar,y                                   ; 3b5d: 99 dc 32    ..2
    dey                                                               ; 3b60: 88          .
    dex                                                               ; 3b61: ca          .
    bpl loop_c3b5a                                                    ; 3b62: 10 f6       ..
    lda l0064                                                         ; 3b64: a5 64       .d
    cmp #8                                                            ; 3b66: c9 08       ..
    beq c3ba1                                                         ; 3b68: f0 37       .7
    lda cave_number                                                   ; 3b6a: a5 87       ..
    cmp #$10                                                          ; 3b6c: c9 10       ..
    bpl c3ba1                                                         ; 3b6e: 10 31       .1
    lda #sprite_0                                                     ; 3b70: a9 32       .2
    cmp men_number_on_status_bar                                      ; 3b72: cd 1e 32    ..2
    bne c3b7c                                                         ; 3b75: d0 05       ..
    cmp l3246                                                         ; 3b77: cd 46 32    .F2
    beq return15                                                      ; 3b7a: f0 50       .P
c3b7c
    ldx #$27                                                          ; 3b7c: a2 27       .'
loop_c3b7e
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

c3ba1
    ldx cave_number                                                   ; 3ba1: a6 87       ..
    ldy difficulty_level                                              ; 3ba3: a4 89       ..
    lda l4c40,x                                                       ; 3ba5: bd 40 4c    .@L
    sta cave_number                                                   ; 3ba8: 85 87       ..
    bne c3bb3                                                         ; 3baa: d0 07       ..
    iny                                                               ; 3bac: c8          .
    cpy #6                                                            ; 3bad: c0 06       ..
    bne c3bb3                                                         ; 3baf: d0 02       ..
    ldy #1                                                            ; 3bb1: a0 01       ..
c3bb3
    sty difficulty_level                                              ; 3bb3: 84 89       ..
    sta cave_number                                                   ; 3bb5: 85 87       ..
    cmp #$10                                                          ; 3bb7: c9 10       ..
    bmi c3b3f                                                         ; 3bb9: 30 84       0.
    inc men_number_on_status_bar                                      ; 3bbb: ee 1e 32    ..2
    jmp c3b3f                                                         ; 3bbe: 4c 3f 3b    L?;

sub_c3bc1
    sec                                                               ; 3bc1: 38          8
    sbc #'A'                                                          ; 3bc2: e9 41       .A
    sta cave_number                                                   ; 3bc4: 85 87       ..
    txa                                                               ; 3bc6: 8a          .
    sec                                                               ; 3bc7: 38          8
    sbc #sprite_0                                                     ; 3bc8: e9 32       .2
    sta difficulty_level                                              ; 3bca: 85 89       ..
return15
    rts                                                               ; 3bcc: 60          `

    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 3bcd: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 3bd9: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 3be5: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $be  ; 3bf1: ff ff ff... ...
    !byte   0,   0,   0                                               ; 3bfd: 00 00 00    ...
data_12_9
    !byte $0d,   5, $15,   5, $17, $48, $15, $10, $1e,   8, $58, $1e  ; 3c00: 0d 05 15... ...
    !byte $c0, $20,   0, $28, $38, $c0, $80                           ; 3c0c: c0 20 00... . .
    !text "g8(h"                                                      ; 3c13: 67 38 28... g8(
    !byte $98, $28, $48, $a8                                          ; 3c17: 98 28 48... .(H
    !text "H`7Pp"                                                     ; 3c1b: 48 60 37... H`7
    !byte $98, $70, $f9, $20, $f9, $f9,   6                           ; 3c20: 98 70 f9... .p.
    !text "=nP"                                                       ; 3c27: 3d 6e 50    =nP
    !byte $18                                                         ; 3c2a: 18          .
    !text "X_`"                                                       ; 3c2b: 58 5f 60    X_`
    !byte $16                                                         ; 3c2e: 16          .
    !text "`hPh"                                                      ; 3c2f: 60 68 50... `hP
    !byte $80                                                         ; 3c33: 80          .
    !text "8h~F"                                                      ; 3c34: 38 68 7e... 8h~
    !byte $18, $10, $40, $68, $80                                     ; 3c38: 18 10 40... ..@
    !text "(@gn"                                                      ; 3c3d: 28 40 67... (@g
    !byte $1f, $70, $98, $70,   3                                     ; 3c41: 1f 70 98... .p.
data_7_1
    !byte   8,   8, $f9, $a7, $17, $20, $80,   5, $f9, $86, $0f, $1d  ; 3c46: 08 08 f9... ...
    !byte   7, $f9, $27, $0f, $f9, $37, $f9,   7,   6, $f9, $f9, $be  ; 3c52: 07 f9 27... ..'
    !byte $f9, $f9, $77, $f9, $f9, $f9, $bf, $f9, $6f, $8d            ; 3c5e: f9 f9 77... ..w
    !text "`?M"                                                       ; 3c68: 60 3f 4d    `?M
    !byte $ef, $58, $5e, $d0,   3                                     ; 3c6b: ef 58 5e... .X^
data_7_3
    !byte $15, $f9, $f9, $95,   5, $f9, $70,   5,   5, $f9, $28,   0  ; 3c70: 15 f9 f9... ...
    !byte   0, $15, $2f, $0f, $f9, $f9, $f9, $57, $1f,   7, $0d, $0f  ; 3c7c: 00 15 2f... ../
    !byte   7, $f9, $f9, $4f, $f9, $27, $f9, $68, $f9, $f9,   6, $17  ; 3c88: 07 f9 f9... ...
    !byte   7, $5f, $f9, $88, $ef, $56,   3                           ; 3c94: 07 5f f9... ._.
data_7_5
    !byte $38, $f9, $f9, $b7, $f9, $2f, $1f, $f9, $2f, $f9, $f9, $f9  ; 3c9b: 38 f9 f9... 8..
    !byte $f9, $f9, $f9, $f9, $6f, $10, $27, $36, $c7,   8, $f9, $f9  ; 3ca7: f9 f9 f9... ...
    !byte $f9, $f9, $f9, $f9, $10,   0, $50, $98, $a0, $98, $98,   3  ; 3cb3: f9 f9 f9... ...
data_7_7
    !byte $f9, $f9, $f9, $2e, $f9, $f9, $f9, $f9, $f9, $f9, $f9, $f9  ; 3cbf: f9 f9 f9... ...
    !byte $f9, $f9, $f9, $f9, $f9, $4e, $ae, $f9, $f9, $f9, $f9, $f9  ; 3ccb: f9 f9 f9... ...
    !byte $0e, $4e,   3                                               ; 3cd7: 0e 4e 03    .N.
data_7_9
    !byte $0f, $27,   5, $0f, $0f, $f9, $8f, $f9, $37, $f9, $f9, $78  ; 3cda: 0f 27 05... .'.
    !byte $f9, $1f, $56, $ad, $37, $f9, $f9, $48,   5, $f9, $f9, $f9  ; 3ce6: f9 1f 56... ..V
    !byte $f9,   7, $f9, $f9, $f9, $f9, $c8, $f9, $36, $ae, $f9, $b6  ; 3cf2: f9 07 f9... ...
    !byte   3                                                         ; 3cfe: 03          .
data_6_1
    !byte $28, $57, $10, $47, $88, $0f, $3f, $57, $98, $16, $f9, $f9  ; 3cff: 28 57 10... (W.
    !byte $f9, $f9, $76, $f9, $58, $f9, $f6, $f9, $77, $0f, $f9, $18  ; 3d0b: f9 f9 76... ..v
    !byte $f9, $38, $20, $f9, $20, $f9, $f9, $f9, $f9, $c8, $f9, $30  ; 3d17: f9 38 20... .8
    !byte $f9, $28,   0,   7, $ce, $ae,   3                           ; 3d23: f9 28 00... .(.
data_6_3
    !byte $98, $f9, $38, $f9, $50, $f9, $f9, $f9, $f9, $30, $f9, $20  ; 3d2a: 98 f9 38... ..8
    !byte $10, $f9, $ee, $17,   7, $f9, $38, $a8, $f9, $46, $f9, $b0  ; 3d36: 10 f9 ee... ...
    !byte $f9, $17, $20, $27, $f9, $f9, $f9, $30, $47, $87            ; 3d42: f9 17 20... ..
    !text "@m0"                                                       ; 3d4c: 40 6d 30    @m0
    !byte $f9, $18, $18, $10, $87,   8,   8,   0, $77,   8,   3       ; 3d4f: f9 18 18... ...
data_6_5
    !byte $f9, $d0, $f9,   8,   0, $f9, $88, $48,   0, $e0, $f9, $40  ; 3d5a: f9 d0 f9... ...
    !byte $f9, $70, $b0, $77, $d8, $58, $10, $fd, $f9, $f9, $f9, $80  ; 3d66: f9 70 b0... .p.
    !byte $17,   8,   0, $f9, $17,   7, $1f, $f9, $18, $f9, $38, $f9  ; 3d72: 17 08 00... ...
    !byte $78, $f9, $36, $ae, $5f, $1e, $f9, $30, $10,   3            ; 3d7e: 78 f9 36... x.6
data_6_7
    !byte $f9, $f9, $f9, $30, $f9, $30, $f9, $f9, $90,   0, $f9, $f9  ; 3d88: f9 f9 f9... ...
    !text "0nfXH"                                                     ; 3d94: 30 6e 66... 0nf
    !byte   8, $10                                                    ; 3d99: 08 10       ..
    !text "hm0"                                                       ; 3d9b: 68 6d 30    hm0
    !byte $f9, $0f, $f9                                               ; 3d9e: f9 0f f9    ...
    !text "?fP"                                                       ; 3da1: 3f 66 50    ?fP
    !byte $f9, $3e, $e0, $f9, $f9, $f9, $f9, $68,   3                 ; 3da4: f9 3e e0... .>.
data_6_9
    !byte   8,   8,   0,   7, $17, $80,   0, $f9, $c0, $36,   8, $f9  ; 3dad: 08 08 00... ...
    !text "((H"                                                       ; 3db9: 28 28 48    ((H
    !byte $f9, $38, $f9, $60, $f9, $70, $f9, $f9, $f9, $38, $f9, $f9  ; 3dbc: f9 38 f9... .8.
    !byte $40, $fe                                                    ; 3dc8: 40 fe       @.
    !text "8n~"                                                       ; 3dca: 38 6e 7e    8n~
    !byte $17, $f9, $47, $70,   0, $a7, $0f, $70, $8f, $80, $38, $26  ; 3dcd: 17 f9 47... ..G
    !byte $d7,   7, $b6, $68, $17,   8                                ; 3dd9: d7 07 b6... ...
    !text "x^E"                                                       ; 3ddf: 78 5e 45    x^E
    !byte 7, 3                                                        ; 3de2: 07 03       ..
    !text "255:LDX #251:LDA #128"                                     ; 3de4: 32 35 35... 255
    !byte $0d,   1, $e0                                               ; 3df9: 0d 01 e0    ...
    !text '"', " JS"                                                  ; 3dfc: 22 20 4a... " J
data_10_7
    !byte $0c, $10, $4d, $37, $9f, $f9                                ; 3e00: 0c 10 4d... ..M
    !text "%8MHX"                                                     ; 3e06: 25 38 4d... %8M
    !byte $f9, $30, $98, $14, $10, $5f, $9f, $28, $47,   5,   4, $5f  ; 3e0b: f9 30 98... .0.
    !byte   8, $47, $28, $0f, $5d, $0f                                ; 3e17: 08 47 28... .G(
    !text "xw-"                                                       ; 3e1d: 78 77 2d    xw-
    !byte $95, $50, $f9, $88,   5, $f9, $f9,   8                      ; 3e20: 95 50 f9... .P.
    !text "/LH?"                                                      ; 3e28: 2f 4c 48... /LH
    !byte $0f, $0d,   7, $20, $50, $f9, $30, $68, $f9, $f9, $68, $20  ; 3e2c: 0f 0d 07... ...
    !byte $10, $68, $98, $90, $20, $5f, $18,   8, $f9, $38,   3       ; 3e38: 10 68 98... .h.
data_10_9
    !byte $f9, $57, $90, $f9, $f9, $f9, $38, $78, $f9, $38, $f9,   8  ; 3e43: f9 57 90... .W.
    !byte $38, $f8, $40, $18, $f9, $68, $a8, $f8, $98, $f9, $f9, $f9  ; 3e4f: 38 f8 40... 8.@
    !byte $f9, $70,   0, $f9, $c0, $40, $c8, $e0, $f9, $30, $68, $f0  ; 3e5b: f9 70 00... .p.
    !byte $70,   3                                                    ; 3e67: 70 03       p.
data_4_1
    !byte $3d, $a5                                                    ; 3e69: 3d a5       =.
    !text "EEu"                                                       ; 3e6b: 45 45 75    EEu
    !byte $dd, $15, $e5, $f9, $d5, $ad, $ad                           ; 3e6e: dd 15 e5... ...
    !text "ME-]"                                                      ; 3e75: 4d 45 2d... ME-
    !byte $15                                                         ; 3e79: 15          .
    !text "mE5"                                                       ; 3e7a: 6d 45 35    mE5
    !byte $ad, $8d, $f9, $3d, $ad, $f9, $7d, $f5, $45, $2d, $f9, $25  ; 3e7d: ad 8d f9... ...
    !byte $5d, $95, $6d, $3d, $b5, $75, $f9, $5d, $4d, $f9, $45, $15  ; 3e89: 5d 95 6d... ].m
    !byte $45, $35, $0d,   5, $95, $8d, $0d,   5, $4d, $15, $0d, $cb  ; 3e95: 45 35 0d... E5.
data_4_3
    !text "EME-"                                                      ; 3ea1: 45 4d 45... EME
    !byte $f9, $25, $5d, $95,   5, $65, $3d, $b5, $75, $ad, $ad, $4d  ; 3ea5: f9 25 5d... .%]
    !byte $f9, $45, $15, $45, $35, $0d,   5, $f9, $35,   5, $75, $c5  ; 3eb1: f9 45 15... .E.
    !byte $85, $f9, $f9                                               ; 3ebd: 85 f9 f9    ...
    !text "-%-E"                                                      ; 3ec0: 2d 25 2d... -%-
    !byte $15, $15, $5d, $f9, $b5,   5, $75, $35, $b5, $f9, $f9, $25  ; 3ec4: 15 15 5d... ..]
    !byte $bd, $85, $5d, $3d, $15, $8d, $95, $15, $65,   3            ; 3ed0: bd 85 5d... ..]
data_4_5
    !byte $15, $2d, $f9, $4d, $15, $e5, $f9, $d5, $ad, $ad            ; 3eda: 15 2d f9... .-.
    !text "Muu"                                                       ; 3ee4: 4d 75 75    Muu
    !byte $b5, $35, $0d, $9d, $8d, $65, $15, $bd, $f9, $f9, $a5       ; 3ee7: b5 35 0d... .5.
    !text "M-E"                                                       ; 3ef2: 4d 2d 45    M-E
    !byte $15, $15, $5d, $f9, $25, $8d, $b5, $f9, $2d, $ad,   5,   5  ; 3ef5: 15 15 5d... ..]
    !byte $15,   5,   5, $0d, $15, $9d, $3d, $15, $0d, $1d,   5, $0d  ; 3f01: 15 05 05... ...
    !byte $a5, $35,   5,   5, $15,   5, $15,   5,   5,   5, $ad, $2d  ; 3f0d: a5 35 05... .5.
    !byte $15, $0d, $1d, $0d,   5, $85, $55,   5,   5, $15,   5,   5  ; 3f19: 15 0d 1d... ...
    !byte $0d                                                         ; 3f25: 0d          .
data_13_6
    !byte $15, $0d,   3                                               ; 3f26: 15 0d 03    ...
data_4_7
    !byte $bd, $15, $45, $3d, $0d, $f9, $35, $45, $f9, $3d, $2d, $f9  ; 3f29: bd 15 45... ..E
    !byte $25, $5d, $95,   5, $65, $3d, $b5, $75, $f9, $5d, $4d, $f9  ; 3f35: 25 5d 95... %].
    !byte $45, $15, $7d, $0d, $9d, $8d, $0d, $6d, $bd, $15, $85, $f9  ; 3f41: 45 15 7d... E.}
    !byte $f9                                                         ; 3f4d: f9          .
    !text "-%-E"                                                      ; 3f4e: 2d 25 2d... -%-
    !byte $15, $15, $5d, $f9, $25, $8d,   5, $6d, $3d, $b5, $75,   3  ; 3f52: 15 15 5d... ..]
data_4_9
    !byte $25, $5d, $15, $6d, $f9, $f9, $25, $d5, $15, $45, $3d, $0d  ; 3f5e: 25 5d 15... %].
    !byte $8d, $75, $f9, $6d, $75, $e5, $3d, $15, $f9, $f9, $bd, $f9  ; 3f6a: 8d 75 f9... .u.
    !byte $f9                                                         ; 3f76: f9          .
    !text "%um}"                                                      ; 3f77: 25 75 6d... %um
    !byte $0d, $9d, $8d, $0d, $55, $d5, $15                           ; 3f7b: 0d 9d 8d... ...
data_8_8
    !byte $85, $0d, $3d, $f5, $45, $f9, $6d, $5d, $f9, $25, $95,   5  ; 3f82: 85 0d 3d... ..=
    !byte $65, $3d, $b5,   3                                          ; 3f8e: 65 3d b5... e=.
data_9_1
    !byte $f9, $60, $50, $e8, $98, $88, $10, $50, $f9, $10,   0, $c0  ; 3f92: f9 60 50... .`P
    !byte $f9, $f9, $58, $0e, $e8, $28, $18,   8, $f9, $68,   0, $c0  ; 3f9e: f9 f9 58... ..X
    !byte   5, $60, $70,   8, $a0, $28, $68, $98, $28                 ; 3faa: 05 60 70... .`p
data_13_2
    !byte $f9,   0, $a8, $37, $c8, $f8,   8,   0, $c0, $f9, $2d, $f9  ; 3fb3: f9 00 a8... ...
    !text "6=oP"                                                      ; 3fbf: 36 3d 6f... 6=o
    !byte   0, $10, $24, $50, $be,   3                                ; 3fc3: 00 10 24... ..$
data_9_3
    !byte $0d,   8, $10,   0, $e8, $28, $a8, $58,   0, $f9, $a8,   0  ; 3fc9: 0d 08 10... ...
    !byte $20, $f9, $f9, $10,   0, $f9, $e8,   0, $70, $18, $38, $d8  ; 3fd5: 20 f9 f9...  ..
    !byte $f9, $30, $80,   7,   7, $78, $85, $38, $1e,   0, $78, $38  ; 3fe1: f9 30 80... .0.
    !byte $0d, $18, $80, $28, $f9,   8,   8, $18                      ; 3fed: 0d 18 80... ...
    !text " / "                                                       ; 3ff5: 20 2f 20     /
    !byte $90, $8f,   8, $88, $68, $f9, $18                           ; 3ff8: 90 8f 08... ...
    !text "-U8"                                                       ; 3fff: 2d 55 38    -U8
    !byte $15, $40, $95, $0d, $25, $45,   5, $25,   4, $1d, $75, $45  ; 4002: 15 40 95... .@.
    !byte $15, $1d, $5d,   5, $38, $18, $83                           ; 400e: 15 1d 5d... ..]
data_9_5
    !byte $28, $10, $50, $f9, $10,   0, $f9, $e8, $f9, $46, $e8, $28  ; 4015: 28 10 50... (.P
    !byte $18, $68,   0, $16, $c0, $20,   0                           ; 4021: 18 68 00... .h.
data_2_2
data_3_0
data_4_0
data_4_2
data_4_4
data_4_6
data_4_8
data_5_0
data_9_0
data_10_0
data_11_0
    !byte $80, $38,   5, $d8, $b0, $f9, $38                           ; 4028: 80 38 05... .8.
data_12_2
    !byte   8, $18, $48, $a8,   0, $a8, $60, $98                      ; 402f: 08 18 48... ..H
data_7_8
    !byte $f8, $f9, $f9, $f9, $46, $ae, $50, $1e, $78, $a0,   0,   8  ; 4037: f8 f9 f9... ...
    !byte $15, $48, $68,   8, $77, $30,   0, $c7, $10                 ; 4043: 15 48 68... .Hh
    !text "T VF"                                                      ; 404c: 54 20 56... T V
    !byte 7, 3                                                        ; 4050: 07 03       ..
data_9_7
    !byte $15,   5, $10, $0f, $17,   8, $20,   0, $1f, $0d,   0,   5  ; 4052: 15 05 10... ...
    !byte $38, $3d,   7,   5,   0,   7,   8, $45, $18,   7,   7, $0d  ; 405e: 38 3d 07... 8=.
    !byte $2f, $0f,   8, $57,   7, $15, $3f, $35,   7,   5, $17,   0  ; 406a: 2f 0f 08... /..
    !byte   5, $25, $15, $15, $0f, $0f,   0, $0f,   7,   7, $0f, $15  ; 4076: 05 25 15... .%.
    !byte $bf, $4d, $bf, $8f,   0, $40,   0, $a7, $0f, $17,   7, $48  ; 4082: bf 4d bf... .M.
    !byte $b7, $10, $1f, $28, $27, $0e, $f9, $f9, $f8, $56, $90, $28  ; 408e: b7 10 1f... ...
    !byte $1f, $68,   0, $17, $0f, $a8,   0, $f0,   5, $d8,   8,   0  ; 409a: 1f 68 00... .h.
    !byte $98, $f9, $38, $78, $a8, $48, $9f, $50                      ; 40a6: 98 f9 38... ..8
data_8_0
data_9_8
    !byte $70, $ac, $60, $c0, $58,   3                                ; 40ae: 70 ac 60... p.`
data_9_9
    !byte $1e, $96, $10, $f9, $4e, $20,   8,   0, $f9, $f5, $f9       ; 40b4: 1e 96 10... ...
data_7_2
    !byte $37, $bd,   5,   5, $38, $10, $5f, $30, $96, $0f, $0f, $0d  ; 40bf: 37 bd 05... 7..
    !byte   7, $30,   0                                               ; 40cb: 07 30 00    .0.
    !text "hP`"                                                       ; 40ce: 68 50 60    hP`
    !byte $88, $50                                                    ; 40d1: 88 50       .P
data_1_2
    !byte $d6, $46,   0, $28, $f9, $68, $a8, $58, $0e, $f9            ; 40d3: d6 46 00... .F.
data_8_4
    !byte $a8, $20, $f8, $f9, $18, $ff, $e8                           ; 40dd: a8 20 f8... . .
    !text "O(X"                                                       ; 40e4: 4f 28 58    O(X
    !byte $df,   0, $78,   5,   4,   8, $88,   7, $d0,   0, $27,   7  ; 40e7: df 00 78... ..x
    !byte $85,   3                                                    ; 40f3: 85 03       ..
data_8_1
    !byte $0c,   4, $0c,   4,   4, $2f, $0d, $37, $24, $0c, $84, $7c  ; 40f5: 0c 04 0c... ...
    !byte   4, $0f, $ff, $24,   4, $14, $1f, $3c                      ; 4101: 04 0f ff... ...
data_9_6
    !byte $9c,   4,   7,   7,   4, $6f, $af                           ; 4109: 9c 04 07... ...
    !text "<<<"                                                       ; 4110: 3c 3c 3c    <<<
    !byte   4,   4, $24,   7, $4c, $4f, $14,   4                      ; 4113: 04 04 24... ..$
data_6_0
data_10_4
    !byte $84, $17,   7, $0d,   4,   4,   5,   4,   4,   7, $37, $14  ; 411b: 84 17 07... ...
    !byte $f9, $8f, $ac                                               ; 4127: f9 8f ac    ...
data_6_4
    !byte $f9, $3c, $f9, $17, $14                                     ; 412a: f9 3c f9... .<.
data_6_6
    !byte $f9, $f9, $7f, $f9, $d7, $87, $f9, $f9, $f9, $bc,   4,   7  ; 412f: f9 f9 7f... ...
    !byte $f9, $f7,   7, $8c,   3                                     ; 413b: f9 f7 07... ...
data_8_3
    !byte $3f, $1f, $8f, $af                                          ; 4140: 3f 1f 8f... ?..
    !text "OGW7"                                                      ; 4144: 4f 47 57... OGW
    !byte $0d, $6f,   7, $47, $37                                     ; 4148: 0d 6f 07... .o.
data_5_3
    !byte $bc, $e7, $6d, $67, $17, $47, $5f, $7f                      ; 414d: bc e7 6d... ..m
data_13_5
    !byte $d4, $17, $f7, $f9, $f9, $f9, $f9, $f9, $f9, $27, $f9, $5f  ; 4155: d4 17 f7... ...
    !byte $f9, $2f, $f9, $f9, $f9, $f9, $f7, $1f, $f9, $3f,   3       ; 4161: f9 2f f9... ./.
data_8_5
    !byte $af, $85, $17, $bf                                          ; 416c: af 85 17... ...
data_12_8
    !byte   7, $2c                                                    ; 4170: 07 2c       .,
data_10_6
    !byte   4,   7, $37, $af, $8f, $67, $ac, $27, $17, $87, $74, $f9  ; 4172: 04 07 37... ..7
    !byte $17, $14, $df, $1f, $57, $f9, $f9, $f9, $f7, $f9, $b7, $f9  ; 417e: 17 14 df... ...
    !byte $47, $f9, $47, $f9, $f9, $f9, $f9, $77, $f9, $d7,   7, $9f  ; 418a: 47 f9 47... G.G
    !byte $8f,   7,   3                                               ; 4196: 8f 07 03    ...
data_8_7
    !byte $87, $f9, $74, $dc, $2f, $1f, $3f, $17                      ; 4199: 87 f9 74... ..t
    !text "_,W"                                                       ; 41a1: 5f 2c 57    _,W
    !byte $9f, $97, $34, $37, $ef,   7, $f9, $f9                      ; 41a4: 9f 97 34... ..4
data_3_4
    !byte $f9, $f9, $f9, $f9, $f9                                     ; 41ac: f9 f9 f9... ...
data_3_3
    !byte $f9, $f9, $f9                                               ; 41b1: f9 f9 f9    ...
data_12_6
    !byte $87, $7f,   7, $f9, $f9, $f9, $bc, $0c, $f9, $24, $24,   4  ; 41b4: 87 7f 07... ...
    !byte $f9, $24, $0c,   3                                          ; 41c0: f9 24 0c... .$.
data_8_9
    !byte $0f                                                         ; 41c4: 0f          .
    !text "'<o"                                                       ; 41c5: 27 3c 6f    '<o
    !byte $8f, $67, $24, $af, $17, $47, $0f, $f9, $bf                 ; 41c8: 8f 67 24... .g$
    !text "'tW"                                                       ; 41d1: 27 74 57    'tW
    !byte $1f, $24, $2f, $e7, $9f, $97,   7, $67, $f9, $f9, $f9, $b7  ; 41d4: 1f 24 2f... .$/
    !byte $f9, $f9, $87, $7f,   7, $f9, $f9, $f9, $f9, $f9, $f9, $27  ; 41e0: f9 f9 87... ...
    !byte $1f, $f9, $f9, $7f,   3                                     ; 41ec: 1f f9 f9... ...
data_12_1
    !byte $0d, $0d, $0f,   8,   0,   5, $3d, $f9, $37, $af, $15,   5  ; 41f1: 0d 0d 0f... ...
data_12_4
    !byte $30, $18                                                    ; 41fd: 30 18       0.
    !text "_f^"                                                       ; 41ff: 5f 66 5e    _f^
    !byte   0, $0f, $0f, $0d,   7,   0, $28,   0, $c0, $60, $88, $38  ; 4202: 00 0f 0f... ...
    !byte $68, $c6, $18, $f9, $50, $40, $90, $58, $0e, $18, $40, $28  ; 420e: 68 c6 18... h..
    !byte $c0, $30, $10, $f9, $f9, $40, $b7, $f9, $30,   0, $70, $18  ; 421a: c0 30 10... .0.
    !byte $38, $e0                                                    ; 4226: 38 e0       8.
    !text "h((X"                                                      ; 4228: 68 28 28... h((
data_1_6
    !byte $e0, $28, $20, $17, $45, $38, $18,   6, $78, $38, $0d, $18  ; 422c: e0 28 20... .(
    !byte $80, $28, $68, $98,   8,   3                                ; 4238: 80 28 68... .(h
data_12_3
    !text "N0("                                                       ; 423e: 4e 30 28    N0(
    !byte $f9, $10, $58,   8, $d0                                     ; 4241: f9 10 58... ..X
data_9_4
data_10_8
    !byte $f9                                                         ; 4246: f9          .
    !text " H6"                                                       ; 4247: 20 48 36     H6
    !byte $f9, $b0, $f9, $40, $e8, $58, $58, $e0                      ; 424a: f9 b0 f9... ...
data_2_0
data_13_3
    !byte $98, $58, $98, $48, $a0                                     ; 4252: 98 58 98... .X.
data_7_6
    !byte $28, $68, $c8, $f9, $18, $90, $d0, $f0, $48, $c0            ; 4257: 28 68 c8... (h.
data_6_8
    !byte $58, $f9, $f9,   6, $3d                                     ; 4261: 58 f9 f9... X..
data_8_2
    !byte $6e, $50, $1e, $58, $d8, $60, $68,   3                      ; 4266: 6e 50 1e... nP.
data_12_5
    !byte $38, $47, $0f,   7, $0d,   7,   5, $0f                      ; 426e: 38 47 0f... 8G.
    !text "  V@"                                                      ; 4276: 20 20 56...   V
    !byte   6, $70, $68, $80, $28, $a8, $66,   0, $60, $f0, $48, $20  ; 427a: 06 70 68... .ph
    !byte $f8, $f9, $18, $b7, $f9, $30,   0, $90, $40, $d0, $70, $28  ; 4286: f8 f9 18... ...
    !byte $90, $80, $a8, $80, $10, $a0, $68, $b0, $f9, $38, $20, $f9  ; 4292: 90 80 a8... ...
    !byte $f9, $68, $18, $f9, $e0, $10, $40,   3                      ; 429e: f9 68 18... .h.
data_12_7
    !byte $58, $f9,   6, $38, $20, $98, $58, $18                      ; 42a6: 58 f9 06... X..
data_10_2
    !byte $f9, $f9, $97, $0d,   5,   5, $30, $18, $90, $2e, $5e,   0  ; 42ae: f9 f9 97... ...
    !text "80hP"                                                      ; 42ba: 38 30 68... 80h
    !byte $f9                                                         ; 42be: f9          .
    !text "HXv@"                                                      ; 42bf: 48 58 76... HXv
    !byte   6, $70, $68, $c8, $90, $6e, $f9, $30, $f9, $f9, $b8, $b7  ; 42c3: 06 70 68... .ph
    !byte $f9, $30, $78, $18                                          ; 42cf: f9 30 78... .0x
    !text "8`x70"                                                     ; 42d3: 38 60 78... 8`x
    !byte   8, $18, $28, $17                                          ; 42d8: 08 18 28... ..(
    !text "H?8X"                                                      ; 42dc: 48 3f 38... H?8
    !byte $17, $10, $6f, $70,   6, $2f, $10,   3                      ; 42e0: 17 10 6f... ..o
    !text "PUT"                                                       ; 42e8: 50 55 54    PUT
    !byte $0d,   0, $82                                               ; 42eb: 0d 00 82    ...
data_6_2
    !byte $13                                                         ; 42ee: 13          .
    !text " LDA 8464,Y:TAY"                                           ; 42ef: 20 4c 44...  LD
    !byte $0d,   0                                                    ; 42fe: 0d 00       ..
data_3_2
    !byte $1d, $4c, $8f, $0f, $0d,   7,   3                           ; 4300: 1d 4c 8f... .L.
data_3_5
    !byte $15,   7, $df, $ac, $b7, $27,   5,   7, $f9, $f9, $7d, $b7  ; 4307: 15 07 df... ...
    !byte $af, $72, $92, $14, $8f, $1d,   7,   3                      ; 4313: af 72 92... .r.
data_3_7
    !byte $0c, $15,   7, $27,   7, $17,   2, $0f,   3                 ; 431b: 0c 15 07... ...
data_13_1
    !byte $2f, $dd, $b7, $af, $1d, $b7, $df, $0f, $0d,   7, $f9, $f9  ; 4324: 2f dd b7... /..
    !byte $f9, $f9, $85, $f9, $55, $5d,   5, $ad, $0d, $35,   3       ; 4330: f9 f9 85... ...
data_13_4
    !text "'/_"                                                       ; 433b: 27 2f 5f    '/_
    !byte $0f,   7, $f9, $f9, $f9, $ad, $c7, $0f, $f9, $b5, $f9, $f9  ; 433e: 0f 07 f9... ...
    !byte $fd, $15, $25, $45, $b5, $15, $0d, $65, $d7,   3            ; 434a: fd 15 25... ..%
data_13_7
    !byte $25,   7, $17, $25,   7, $fd                                ; 4354: 25 07 17... %..
data_2_8
    !byte   5, $f9, $f9, $f9                                          ; 435a: 05 f9 f9... ...
data_1_8
    !byte $bf, $f9, $f9, $f9, $8d, $1d, $45, $e5, $0d, $15, $0d, $f9  ; 435e: bf f9 f9... ...
    !byte   5, $2d, $45                                               ; 436a: 05 2d 45    .-E
data_5_1
    !byte 5, 3                                                        ; 436d: 05 03       ..
data_1_1
    !byte $38, $14, $0d,   0, $5f, $18,   7                           ; 436f: 38 14 0d... 8..
    !text "w(G"                                                       ; 4376: 77 28 47    w(G
    !byte   5,   4, $38, $1f,   8, $47, $28, $0f, $35, $25, $0f, $27  ; 4379: 05 04 38... ..8
    !byte $0d,   7, $0f, $2d                                          ; 4385: 0d 07 0f... ...
data_11_4
    !byte $77, $15, $0f,   5, $90, $50, $e8, $98,   5                 ; 4389: 77 15 0f... w..
data_3_6
    !byte $f9, $85, $38, $1f                                          ; 4392: f9 85 38... ..8
    !text " /LH?"                                                     ; 4396: 20 2f 4c...  /L
    !byte $0f, $0d                                                    ; 439b: 0f 0d       ..
data_1_0
    !byte   7, $20, $50, $f9, $30, $f9, $60, $f9                      ; 439d: 07 20 50... . P
    !text "/@ "                                                       ; 43a5: 2f 40 20    /@
    !byte $80, $f9, $e8, $cf                                          ; 43a8: 80 f9 e8... ...
    !text "hPg"                                                       ; 43ac: 68 50 67    hPg
    !byte $80, $98,   0, $f9, $e0, $20, $c8                           ; 43af: 80 98 00... ...
    !text "X(HM"                                                      ; 43b6: 58 28 48... X(H
    !byte 3                                                           ; 43ba: 03          .
data_1_3
    !byte $15,   7, $0d, $15, $f9, $b0, $40, $c8, $88, $f9, $88, $68  ; 43bb: 15 07 0d... ...
    !byte $f0, $70, $20,   0, $f9, $f9                                ; 43c7: f0 70 20... .p
data_2_4
data_7_0
data_11_2
data_12_0
data_13_0
    !byte $18, $b8, $78,   8, $f9, $38, $50, $e8, $98,   0, $f9, $e0  ; 43cd: 18 b8 78... ..x
    !byte $20, $78, $0d, $f9, $f9, $70, $f9, $3d, $90, $58, $f9, $30  ; 43d9: 20 78 0d...  x.
    !byte $98, $28                                                    ; 43e5: 98 28       .(
data_2_6
    !byte $f9, $28, $93                                               ; 43e7: f9 28 93    .(.
data_1_5
    !text "8 x"                                                       ; 43ea: 38 20 78    8 x
    !byte   8, $f9, $38, $50, $e8, $98,   0, $87, $8f, $c8, $10,   8  ; 43ed: 08 f9 38... ..8
    !byte $c8, $5d, $f9, $f9, $f9,   8,   5, $90, $58, $40, $e8, $98  ; 43f9: c8 5d f9... .].
    !byte $28, $78, $a8, $90, $a0, $f9, $f9, $38, $50, $e8, $98, $d0  ; 4405: 28 78 a8... (x.
    !byte $45, $a8, $f9, $10, $88, $50, $f9, $9b                      ; 4411: 45 a8 f9... E..
data_1_7
    !byte $17, $17, $0c, $2c, $30, $15,   8,   0, $2d, $2c, $18, $a8  ; 4419: 17 17 0c... ...
    !byte $14,   8, $1d                                               ; 4425: 14 08 1d    ...
    !text "H(X"                                                       ; 4428: 48 28 58    H(X
    !byte $10, $f9, $4f, $f9, $f9, $f9, $f9, $a0, $f9, $2d, $ed, $18  ; 442b: 10 f9 4f... ..O
    !byte $4d, $f0, $18, $c8, $98, $20,   0                           ; 4437: 4d f0 18... M..
    !text "Dt7"                                                       ; 443e: 44 74 37    Dt7
    !byte $80, $f9, $e8, $f9, $38, $50, $e8, $98,   0, $24, $f9, $98  ; 4441: 80 f9 e8... ...
    !byte $35,   8, $c8                                               ; 444d: 35 08 c8    5..
    !text "4PP"                                                       ; 4450: 34 50 50    4PP
    !byte 3                                                           ; 4453: 03          .
data_1_9
    !byte $d8, $f9, $f9, $f9, $55, $ed, $18, $4d, $f0, $18, $f9, $e4  ; 4454: d8 f9 f9... ...
    !byte $74, $30, $80, $98, $1f, $70, $b0,   0, $f9, $27, $0d       ; 4460: 74 30 80... t0.
    !text "Pxh"                                                       ; 446b: 50 78 68    Pxh
    !byte $98,   0, $24, $f9, $f9, $ec, $50, $f9, $88, $34, $f9, $3d  ; 446e: 98 00 24... ..$
    !byte $14, $70, $ad, $17,   8, $20, $80, $67, $dc,   3            ; 447a: 14 70 ad... .p.
data_11_1
    !byte $77, $9f, $15, $45, $ff, $4f,   5, $6f, $8d, $2f, $27, $8f  ; 4484: 77 9f 15... w..
    !byte $ed, $4f, $57, $ef, $15, $87,   7, $f9, $15, $35, $ad, $0f  ; 4490: ed 4f 57... .OW
    !byte $7d, $37, $17, $15                                          ; 449c: 7d 37 17... }7.
    !text "G/um"                                                      ; 44a0: 47 2f 75... G/u
    !byte $15, $8f, $f9, $67, $f9,   5, $6f, $27,   7, $e5, $57, $3d  ; 44a4: 15 8f f9... ...
    !byte $df, $85, $f9, $f9, $f9, $f9, $ef,   3                      ; 44b0: df 85 f9... ...
data_11_3
    !byte $2f, $f9, $f9, $65, $5f, $15, $37,   7, $65, $65, $1f, $17  ; 44b8: 2f f9 f9... /..
    !byte $6f,   7, $f9, $37, $f9, $57, $75, $87,   5, $15            ; 44c4: 6f 07 f9... o..
    !text "]?w"                                                       ; 44ce: 5d 3f 77    ]?w
    !byte $9f, $5d,   5, $47, $f9, $1d                                ; 44d1: 9f 5d 05... .].
    !text "'/_"                                                       ; 44d7: 27 2f 5f    '/_
    !byte $17, $f9, $f9, $0d, $5f, $2d, $ad, $37, $97, $6d, $6d, $f9  ; 44da: 17 f9 f9... ...
    !byte $f9, $0f, $f9, $f9, $8f, $f9, $f9, $6f,   3                 ; 44e6: f9 0f f9... ...
data_11_5
    !byte $3d,   5, $17, $2d, $f9,   7, $f9, $df, $77, $77,   5, $bf  ; 44ef: 3d 05 17... =..
    !byte $d7, $0d,   7, $0f, $f9, $f9, $f9, $f9, $f9, $9f, $4f, $0f  ; 44fb: d7 0d 07... ...
    !byte $8f, $17, $c7, $f9, $f7, $97, $f9, $6f, $e5,   3            ; 4507: 8f 17 c7... ...
data_11_7
    !byte $15, $f9, $f9, $f9, $f9, $25, $af,   7, $f9, $75, $55, $f9  ; 4511: 15 f9 f9... ...
    !byte $f9, $67, $27, $0d, $17, $2d, $fd,   7, $47, $0f, $f9, $35  ; 451d: f9 67 27... .g'
    !byte $f9, $f9                                                    ; 4529: f9 f9       ..
    !text "O/'"                                                       ; 452b: 4f 2f 27    O/'
    !byte $8f, $8f, $0d,   7, $f9, $f9, $87, $f9, $f9, $9f, $f9, $f9  ; 452e: 8f 8f 0d... ...
    !byte $55, $2d,   3                                               ; 453a: 55 2d 03    U-.
data_11_9
    !byte $0d, $27,   5,   7,   5,   5, $0d, $9f                      ; 453d: 0d 27 05... .'.
    !text "wm/"                                                       ; 4545: 77 6d 2f    wm/
    !byte $af, $27, $4f, $a5                                          ; 4548: af 27 4f... .'O
    !text "'/_"                                                       ; 454c: 27 2f 5f    '/_
    !byte $17, $b7, $47,   7, $f9,   5, $2f,   7, $27, $2d, $ad, $37  ; 454f: 17 b7 47... ..G
    !byte $97, $6d, $f9, $f9, $7f, $15, $77, $57,   5, $15, $25, $5d  ; 455b: 97 6d f9... .m.
    !byte $8f, $6f, $f7, $8d, $0f, $d7, $27, $f9, $8f, $2f, $27, $f9  ; 4567: 8f 6f f7... .o.
    !byte $f9, $f9, $bf, $f9, $15,   3                                ; 4573: f9 f9 bf... ...
data_2_1
    !byte $15, $f9, $f0, $f9, $f9, $68, $f9, $2d, $70, $f9, $f9, $f0  ; 4579: 15 f9 f0... ...
    !byte $9c, $f9, $ed, $88                                          ; 4585: 9c f9 ed... ...
    !text "uxu"                                                       ; 4589: 75 78 75    uxu
    !byte $c0, $50, $f9, $88,   0,   6, $f9, $40, $15, $4c, $28, $15  ; 458c: c0 50 f9... .P.
    !byte $f9, $a4, $0f,   7, $f9, $37, $44, $ec, $20, $18, $3c, $0d  ; 4598: f9 a4 0f... ...
    !byte $20,   7, $40,   0,   0, $1d, $5d, $27, $17, $35, $0d,   3  ; 45a4: 20 07 40...  .@
data_2_3
    !byte $18, $f9, $f9, $38, $f9, $f9, $f9, $38, $f9, $f9, $f9       ; 45b0: 18 f9 f9... ...
    !text "8xM6"                                                      ; 45bb: 38 78 4d... 8xM
    !byte $f9, $c0, $1f, $18                                          ; 45bf: f9 c0 1f... ...
    !text "MHX@"                                                      ; 45c3: 4d 48 58... MHX
    !byte $18, $c8, $c0,   0, $f9, $78, $98, $90, $20, $88, $f9, $f9  ; 45c7: 18 c8 c0... ...
    !byte $80, $98,   0, $b6, $ae, $58, $40, $c8, $30,   6, $cb       ; 45d3: 80 98 00... ...
data_2_5
    !byte $18, $0f, $dd, $f9, $f9, $d8                                ; 45de: 18 0f dd... ...
    !text ".XP"                                                       ; 45e4: 2e 58 50    .XP
data_3_1
    !byte $f9, $30, $f9, $c6, $10, $20,   0                           ; 45e7: f9 30 f9... .0.
    !text "]h "                                                       ; 45ee: 5d 68 20    ]h
    !byte $80, $f9, $d8,   8, $f9, $38, $f9, $40, $98,   0, $27, $f9  ; 45f1: 80 f9 d8... ...
    !byte $b8, $20, $c8, $58, $28, $f9, $f9, $d8,   0                 ; 45fd: b8 20 c8... . .
    !text "^0XE"                                                      ; 4606: 5e 30 58... ^0X
    !byte $f9, $88, $28, $78, $eb                                     ; 460a: f9 88 28... ..(
data_2_7
    !byte $0d, $4c, $16, $66,   8, $0f, $0d, $80, $f9, $f9, $98, $5e  ; 460f: 0d 4c 16... .L.
    !byte $38,   0, $cd, $20, $f9, $c8, $10, $78,   8, $f9, $38, $50  ; 461b: 38 00 cd... 8..
    !byte $f9, $88,   0, $f9, $e0, $20, $c8, $58, $28, $f9, $f9, $d8  ; 4627: f9 88 00... ...
    !byte   5, $58, $30, $f9, $f9, $60, $78, $f9, $40, $28,   3       ; 4633: 05 58 30... .X0
data_2_9
    !byte $65, $f9, $f9, $f9, $e6, $f9, $c5, $f9, $f9, $80, $f9, $f9  ; 463e: 65 f9 f9... e..
    !byte $f9,   8, $f9, $f9, $f9, $f9, $f9, $1e,   5, $58, $f9, $50  ; 464a: f9 08 f9... ...
    !byte   8, $f9, $c8, $20, $f9, $3d, $5e, $10, $20, $d0, $20, $80  ; 4656: 08 f9 c8... ...
    !byte $98, $56, $8b                                               ; 4662: 98 56 8b    .V.
data_10_1
    !byte $18, $f9, $a0, $90, $a8, $88, $f9, $f8, $f9, $f9, $f9, $b8  ; 4665: 18 f9 a0... ...
    !byte $f9, $f9, $48, $38, $98, $58, $60, $f9, $90,   0, $f9, $78  ; 4671: f9 f9 48... ..H
    !byte $98, $90, $b0, $f9, $38, $f9, $40, $98, $f9, $c8, $40, $f9  ; 467d: 98 90 b0... ...
    !byte $db                                                         ; 4689: db          .
data_10_3
    !byte $10, $48, $1f, $98, $4c, $3d, $f9, $90, $e8, $98,   5, $b7  ; 468a: 10 48 1f... .H.
    !byte $a8, $58, $c4, $48, $3f, $1d,   7, $20, $50, $f9, $30, $f9  ; 4696: a8 58 c4... .X.
    !byte $f9, $f9,   0, $80, $f9, $30, $20, $88, $f9, $38, $f9, $40  ; 46a2: f9 f9 00... ...
    !byte $f9, $f9, $88, $20, $2f, $98, $88,   5, $40, $f9, $f9, $88  ; 46ae: f9 f9 88... ...
    !byte   5,   3                                                    ; 46ba: 05 03       ..
data_10_5
    !byte $f9, $70, $27,   0,   0, $2c,   7, $fd,   0, $7d, $f9, $d8  ; 46bc: f9 70 27... .p'
    !byte $0d, $48, $ff, $f9, $4c, $f9, $28, $f9                      ; 46c8: 0d 48 ff... .H.
    !text ", d"                                                       ; 46d0: 2c 20 64    , d
    !byte $9d, $8f, $f9, $30, $38, $f8, $40, $e8, $c8, $78, $f8, $f9  ; 46d3: 9d 8f f9... ...
    !byte $58, $88, $cf, $68, $50, $e8, $f8, $f9, $eb                 ; 46df: 58 88 cf... X..
    !text "5526,Y"                                                    ; 46e8: 35 35 32... 552
    !byte $0d,   2, $80,   9                                          ; 46ee: 0d 02 80... ...
    !text ".AVEC"                                                     ; 46f2: 2e 41 56... .AV
    !byte $0d,   2, $8a, $16                                          ; 46f7: 0d 02 8a... ...
    !text "LDX #"                                                     ; 46fb: 4c 44 58... LDX
special_cave_0
    !byte $5a, $f2, $e2, $6a, $81, $f2, $d2, $6a, $71,   2, $61,   2  ; 4700: 5a f2 e2... Z..
    !byte $21,   0, $21,   2, $61,   2, $e1, $0b, $61, $0b, $21, $0b  ; 470c: 21 00 21... !.!
    !byte $21, $0b, $61, $0b, $61, $60, $0c, $f1, $d1, $0c, $2a, $62  ; 4718: 21 0b 61... !.a
    !byte $0c, $a1, $0c, $22, $0c, $d1, $0c, $2a, $60, $0c, $f1, $d1  ; 4724: 0c a1 0c... ...
    !byte $0c, $3a, $62, $0c, $a1, $0c, $22, $0c, $d1, $0c, $2a, $60  ; 4730: 0c 3a 62... .:b
    !byte $0c, $f1, $d1, $0c, $3a, $71, $0b, $61, $0b, $21, $0b, $21  ; 473c: 0c f1 d1... ...
    !byte $0b, $61, $0b, $61, $fa, $3a, $7a, $81,   9, $61,   9, $61  ; 4748: 0b 61 0b... .a.
    !byte   9, $61,   9, $ba                                          ; 4754: 09 61 09... .a.
    !text "jq A A A "                                                 ; 4758: 6a 71 20... jq
    !byte $c1                                                         ; 4761: c1          .
    !text " A A A "                                                   ; 4762: 20 41 20...  A
    !byte $c1,   0,   4,   6, $41,   0,   4,   6, $41,   0,   4,   6  ; 4769: c1 00 04... ...
    !byte $41,   0,   4,   6                                          ; 4775: 41 00 04... A..
    !text ":q A A A "                                                 ; 4779: 3a 71 20... :q
    !byte $c1                                                         ; 4782: c1          .
    !text " A A A "                                                   ; 4783: 20 41 20...  A
    !byte $c1,   0,   4,   6, $41,   0,   4,   6, $41,   0,   4,   6  ; 478a: c1 00 04... ...
    !byte $41,   0,   4,   6, $4a, $92,   1, $f3, $13,   1, $92, $1b  ; 4796: 41 00 04... A..
    !byte $70, $0b, $f3, $13, $0b, $70, $0b, $20,   6,   4, $60, $f3  ; 47a2: 70 0b f3... p..
    !byte $13, $60,   4,   6, $10, $a2, $f3, $13, $a2, $a0, $f3, $13  ; 47ae: 13 60 04... .`.
    !byte $c0,   6,   4, $60, $f3, $13, $60,   4,   6, $10, $a2, $f3  ; 47ba: c0 06 04... ...
    !byte $13, $a2, $a0, $f3, $13, $c0,   6,   4, $60, $f3, $13, $60  ; 47c6: 13 a2 a0... ...
    !byte   4,   6, $10, $a2, $f3, $13, $a2, $a0, $f3, $13, $c0,   6  ; 47d2: 04 06 10... ...
    !byte   4, $60, $f3, $13, $60,   4,   6, $10, $1b, $72, $0b, $f3  ; 47de: 04 60 f3... .`.
    !byte $13, $0b, $72, $1b, $6a, $0a, $f1, $f1, $11,   4, $f1, $f1  ; 47ea: 13 0b 72... ..r
    !byte   1, $b2, $31,   4, $f1, $f1, $21, $c2, $6a, $f1, $f1, $11  ; 47f6: 01 b2 31... ..1
    !byte   4, $81,   4, $5a, $f1, $31,   7, $0a, $31,   4, $f1, $c1  ; 4802: 04 81 04... ...
    !byte   4, $41, $0a, $f0, $f0, $10,   4, $f0, $f0,   0, $b2, $30  ; 480e: 04 41 0a... .A.
    !byte   4, $0a, $c2, $4a, $f0, $f0, $10,   4, $f0, $f0,   0, $a2  ; 481a: 04 0a c2... ...
    !byte $1a, $c2, $81, $0a, $b0,   4, $0a, $d0, $7d, $0a, $f0, $20  ; 4826: 1a c2 81... ...
    !byte   4                                                         ; 4832: 04          .
    !text "JJjCb"                                                     ; 4833: 4a 4a 6a... JJj
    !byte 1                                                           ; 4838: 01          .
    !text "BcR"                                                       ; 4839: 42 63 52    BcR
    !byte   1, $52, $63, $0b, $a0, $0b, $63, $0b, $a0, $0b, $73, $ab  ; 483c: 01 52 63... .Rc
    !byte $83, $ab, $5a, $f3,   3, $0b, $62, $0b, $f3, $e3, $f0, $30  ; 4848: 83 ab 5a... ..Z
    !byte $f3, $33,   2, $63,   2, $f3, $23, $bb,   2, $63,   2, $bb  ; 4854: f3 33 02... .3.
    !byte $63, $c2, $63, $c2, $0a, $73, $0b, $b2, $63, $b2, $0b, $13  ; 4860: 63 c2 63... c.c
    !byte $0a,   1, $b2,   0, $72, $0a,   1,   2, $31,   4, $c1,   4  ; 486c: 0a 01 b2... ...
    !byte $0b, $0a,   1,   2,   1,   2,   6,   2,   1, $52,   0, $52  ; 4878: 0b 0a 01... ...
    !byte $0a, $5b,   1, $0b,   4, $81,   4, $0b, $0a, $81, $32,   0  ; 4884: 0a 5b 01... .[.
    !byte $32, $0a, $81, $0b,   4, $41,   4, $0b, $0a, $a1, $12,   0  ; 4890: 32 0a 81... 2..
    !byte $12, $0a, $51, $40, $0b, $20, $0b, $40, $0a, $51, $e0, $0a  ; 489c: 12 0a 51... ..Q
    !byte $51, $e6, $0a, $31, $0b, $51, $0b, $22, $0b, $0a, $31,   0  ; 48a8: 51 e6 0a... Q..
    !byte $41,   4, $41,   4, $0a, $31,   4, $31, $0b, $62, $0b, $0a  ; 48b4: 41 04 41... A.A
    !byte $31, $0b, $21,   4, $81,   4, $0a, $61, $0b, $a2, $0b, $0a  ; 48c0: 31 0b 21... 1.!
    !byte $5b,   4, $c1,   4, $0a, $f2, $42, $0b, $2a, $31,   4, $41  ; 48cc: 5b 04 c1... [..
    !byte   2, $21,   4, $41,   2, $21,   4, $41,   2, $21,   4, $31  ; 48d8: 02 21 04... .!.
    !byte   3, $91, $0b, $81, $0b, $81, $0b, $4a, $f1, $f1, $51,   2  ; 48e4: 03 91 0b... ...
    !byte   3, $91, $0b, $81, $0b, $81, $0b, $51,   2,   1,   3, $41  ; 48f0: 03 91 0b... ...
    !byte $82,   1, $82,   1, $82, $11,   2, $11,   3, $f1, $f1, $21  ; 48fc: 82 01 82... ...
    !byte   2, $21,   3, $f1, $f1, $11,   2, $31,   3, $81,   2, $f1  ; 4908: 02 21 03... .!.
    !byte $61,   2, $41,   3, $81, $0b, $11, $f2,   2, $21,   2, $51  ; 4914: 61 02 41... a.A
    !byte   3, $f1, $e1,   2, $61,   3, $f1, $d1,   2, $71,   3, $f1  ; 4920: 03 f1 e1... ...
    !byte $c1,   2, $81,   3, $f1, $b1,   2, $2a, $31,   4, $31, $0b  ; 492c: c1 02 81... ...
    !byte $0a, $1a, $91,   2, $21,   2, $21,   2, $21,   2, $71,   9  ; 4938: 0a 1a 91... ...
    !byte $91, $72, $0b, $12,   1, $0b, $21, $0b, $21, $0b, $3a, $11  ; 4944: 91 72 0b... .r.
    !byte $a2, $f1, $11,   9, $3a, $11, $e2, $0a, $f1, $e1,   9, $2a  ; 4950: a2 f1 11... ...
    !byte $11, $a2, $3a, $91, $0b, $21, $0b, $21, $0b, $21, $0b, $0a  ; 495c: 11 a2 3a... ..:
    !byte $0b, $21, $0b, $0a, $f0, $30,   7, $ea, $40, $f2, $d2, $90  ; 4968: 0b 21 0b... .!.
    !byte $fe, $de, $90, $f5, $d5, $90, $f1, $d1, $90, $f1, $d1, $40  ; 4974: fe de 90... ...
    !byte $3a, $f1, $51,   6,   1,   6,   1,   6,   1,   6,   1,   6  ; 4980: 3a f1 51... :.Q
    !byte   1,   6, $f1, $c1,   5,   1,   5,   1,   5,   1,   5,   1  ; 498c: 01 06 f1... ...
    !byte   5,   1,   5, $2a, $a1,   0, $0b,   0, $0b,   0, $0b,   0  ; 4998: 05 01 05... ...
    !byte $0b,   0, $0b, $0e, $0a, $a1, $a0, $0a, $a1, $70, $0e, $10  ; 49a4: 0b 00 0b... ...
    !byte $0a, $a1, $a0, $0a, $a1, $50, $0e, $30, $0a, $a1, $a0, $0a  ; 49b0: 0a a1 a0... ...
    !byte $a1, $30, $0e, $50, $0a, $a1, $a0, $0a, $a1, $10, $0e, $70  ; 49bc: a1 30 0e... .0.
    !byte $0a, $a1, $a0, $0a, $a1, $0e, $0b,   0, $0b,   0, $0b,   0  ; 49c8: 0a a1 a0... ...
    !byte $0b,   0, $0b,   0, $1a, $0a, $10,   2, $f0, $40,   2, $0a  ; 49d4: 0b 00 0b... ...
    !byte $20,   2, $f0, $20,   2, $0a, $30,   2, $f0,   0,   2, $0a  ; 49e0: 20 02 f0...  ..
    !byte $40,   2, $e0,   2, $0a, $50,   2, $c0,   2, $0a, $60,   2  ; 49ec: 40 02 e0... @..
    !byte $a0,   2, $0a, $70,   2, $80,   2, $0a, $80,   2, $60,   2  ; 49f8: a0 02 0a... ...
    !byte $0a, $90,   2, $40,   2, $0a, $a0,   2, $20,   2, $0a, $b0  ; 4a04: 0a 90 02... ...
    !byte $21, $0a, $b0                                               ; 4a10: 21 0a b0    !..
    !text "-zja]"                                                     ; 4a13: 2d 7a 6a... -zj
    !byte $11, $5d, $0a, $61,   2, $31,   2, $11,   2, $31,   2, $0a  ; 4a18: 11 5d 0a... .].
    !byte $61, $0b, $31, $0b, $11, $0b, $31, $0b, $4a, $61, $0b, $32  ; 4a24: 61 0b 31... a.1
    !byte $0b, $11, $0b, $32, $0b, $2a, $81,   9, $61,   9, $61,   9  ; 4a30: 0b 11 0b... ...
    !byte $61,   9, $2a, $f0, $20, $0b, $0a, $90,   5, $0a, $90,   1  ; 4a3c: 61 09 2a... a.*
    !byte $6a, $90, $0e, $0a, $f3, $23, $0b, $9a,   1,   5,   6, $e1  ; 4a48: 6a 90 0e... j..
    !byte   5, $0b, $0a, $11,   5,   6, $c1,   5, $0a,   1,   4,   1  ; 4a54: 05 0b 0a... ...
    !byte   5,   6, $a1,   5,   1,   4, $0a,   1,   5,   4,   1,   5  ; 4a60: 05 06 a1... ...
    !byte   6, $81,   5,   1,   4,   5, $0a, $11,   5,   4,   1,   5  ; 4a6c: 06 81 05... ...
    !byte   6, $61,   5,   1,   4,   5, $0a, $21,   5,   4,   1,   5  ; 4a78: 06 61 05... .a.
    !byte   6, $41,   5,   1,   4,   5, $0a, $31,   5,   4,   1,   5  ; 4a84: 06 41 05... .A.
    !byte   6, $21,   5,   1,   4,   5, $0a, $41,   5,   4,   1,   5  ; 4a90: 06 21 05... .!.
    !byte   6,   1,   5,   1,   4,   5, $0a, $51,   5,   4,   1, $15  ; 4a9c: 06 01 05... ...
    !byte   1,   4,   5, $0a, $61,   5,   4, $11,   4,   5, $0a, $f3  ; 4aa8: 01 04 05... ...
    !byte $23, $0b, $9a, $f0, $20, $0b, $5a, $e0, $36, $0a, $e0, $36  ; 4ab4: 23 0b 9a... #..
    !byte $0a, $e0, $36, $0a, $e4, $36, $0b, $0a, $f3, $33, $9a, $a1  ; 4ac0: 0a e0 36... ..6
    !byte $25, $41, $0b, $0a, $a1, $25, $1a, $a1, $2d, $0a, $71,   5  ; 4acc: 25 41 0b... %A.
    !byte $11, $20, $0a, $81,   5,   1, $20, $0a, $91,   5, $20, $0a  ; 4ad8: 11 20 0a... . .
    !byte $a1, $2d, $0a, $a1, $20, $0a, $a1, $20, $0a, $f3, $23, $0b  ; 4ae4: a1 2d 0a... .-.
    !byte $9a, $90, $6a, $90, $0e, $0a, $f3, $23, $0b, $9a, $2a,   3  ; 4af0: 9a 90 6a... ..j
    !byte $34,   3, $3e,   3                                          ; 4afc: 34 03 3e... 4.>
l4b00
    !byte 10, 20, 15,  5, 50, 40, 10, 10,  5, 25                      ; 4b00: 0a 14 0f... ...
    !byte 50, 20,  5, 10, 10, 10, 30, 10, 10, 30                      ; 4b0a: 32 14 05... 2..
l4b14
    !byte 15, 50,  0,  0, 90, 60, 20, 20, 10, 60                      ; 4b14: 0f 32 00... .2.
    !byte  0,  0,  8, 20, 20, 20,  0,  0,  0,  0                      ; 4b1e: 00 00 08... ...

; *************************************************************************************
required_diamonds_for_each_cave_difficulty_level_1
    !byte 12, 10, 24, 36,  4,  4, 15, 10, 75, 12                      ; 4b28: 0c 0a 18... ...
    !byte  6, 19, 50, 30, 20, 12,  6, 16, 14,  6                      ; 4b32: 06 13 32... ..2
time_limit_for_each_cave_difficulty_level_1
    !byte 150, 150, 150, 120, 150, 150, 120, 120, 150, 150            ; 4b3c: 96 96 96... ...
    !byte 120, 180, 160, 150, 120, 150,  15,  15,  20,  20            ; 4b46: 78 b4 a0... x..

required_diamonds_for_each_cave_difficulty_level_2
    !byte 12, 11, 23, 36,  5,  5, 20, 15, 75, 12                      ; 4b50: 0c 0b 17... ...
    !byte  6, 19, 55, 35, 20, 15,  6, 16, 14,  6                      ; 4b5a: 06 13 37... ..7
time_limit_for_each_cave_difficulty_level_2
    !byte 110, 110, 100, 100, 120, 120, 120, 110, 150, 130            ; 4b64: 6e 6e 64... nnd
    !byte 120, 170, 155, 145, 120, 150,  10,  15,  20,  20            ; 4b6e: 78 aa 9b... x..

required_diamonds_for_each_cave_difficulty_level_3
    !byte 12,  9, 24, 36,  6,  6, 25, 20, 80, 12                      ; 4b78: 0c 09 18... ...
    !byte  6, 14, 60, 40, 20, 15,  6, 16, 14,  6                      ; 4b82: 06 0e 3c... ..<
time_limit_for_each_cave_difficulty_level_3
    !byte  70,  70,  90,  80,  90, 100, 120, 100, 130, 120            ; 4b8c: 46 46 5a... FFZ
    !byte 150, 160, 150, 140, 120, 150,  10,  15,  20,  20            ; 4b96: 96 a0 96... ...

required_diamonds_for_each_cave_difficulty_level_4
    !byte 12, 13, 23, 36,  7,  7, 20, 20, 85, 12                      ; 4ba0: 0c 0d 17... ...
    !byte  6, 16, 70, 42, 25, 15,  6, 16, 14,  6                      ; 4baa: 06 10 46... ..F
time_limit_for_each_cave_difficulty_level_4
    !byte  40,  70,  80,  60,  60,  90, 120,  90, 130, 110            ; 4bb4: 28 46 50... (FP
    !byte 150, 160, 145, 135, 120, 150,  10,  15,  20,  20            ; 4bbe: 96 a0 91... ...

required_diamonds_for_each_cave_difficulty_level_5
    !byte 12, 10, 21, 36,  8,  8, 25, 20, 90, 12                      ; 4bc8: 0c 0a 15... ...
    !byte  6, 21, 80, 45, 30, 12,  6, 16, 14,  6                      ; 4bd2: 06 15 50... ..P
time_limit_for_each_cave_difficulty_level_5
    !byte  30,  70,  70,  50,  30,  80, 120,  80, 120, 100            ; 4bdc: 1e 46 46... .FF
    !byte 240, 160, 140, 130, 140, 150,  10,  15,  20,  20            ; 4be6: f0 a0 8c... ...

; *************************************************************************************
l4bf0
    !byte   2, $13,   2,   1,   1, $12,   1,   1, $0a,   1, $12, $12  ; 4bf0: 02 13 02... ...
    !byte   1,   1,   1,   1,   3,   2,   1,   1                      ; 4bfc: 01 01 01... ...
l4c04
    !byte   3, $12,   3,   1,   1,   3, $14, $14,   8, $0d, $14,   3  ; 4c04: 03 12 03... ...
    !byte $12,   3, $14,   1,   3,   1,   8,   3                      ; 4c10: 12 03 14... ...
l4c18
    !byte $10, $14, $12, $14, $14, $12,   5,   3, $0a, $14, $0f, $14  ; 4c18: 10 14 12... ...
    !byte   1, $14, $14,   2, $0a,   2,   5,   8                      ; 4c24: 01 14 14... ...
l4c2c
    !byte $26, $12                                                    ; 4c2c: 26 12       &.
    !text "'&'&'"                                                     ; 4c2e: 27 26 27... '&'
    !byte 0, 9                                                        ; 4c33: 00 09       ..
    !text "'&'"                                                       ; 4c35: 27 26 27    '&'
    !byte $0a, $27, $14, $27, $12, $12, $12,   9                      ; 4c38: 0a 27 14... .'.
l4c40
    !byte   1,   2,   3, $10,   5,   6,   7, $11,   9, $0a, $0b, $12  ; 4c40: 01 02 03... ...
    !byte $0d, $0e, $0f, $13,   4,   8, $0c,   0                      ; 4c4c: 0d 0e 0f... ...
l4c54
    !byte   0,   0,   0,   0,   0,   0, $28, $19,   0,   0,   0,   0  ; 4c54: 00 00 00... ...
    !byte $20,   0, $0a, $14,   0,   0,   0,   4                      ; 4c60: 20 00 0a...  ..
l4c68
    !byte   5,   0,   0,   0,   3,   0,   0,   0,   3,   0,   0,   0  ; 4c68: 05 00 00... ...
    !byte   3,   0,   0,   0, $80, $80, $80, $80                      ; 4c74: 03 00 00... ...
l4c7c
    !byte   8, $44,   2, $0a                                          ; 4c7c: 08 44 02... .D.
    !text "CT!%7id3"                                                  ; 4c80: 43 54 21... CT!
    !byte $14                                                         ; 4c88: 14          .
    !text "Y<*"                                                       ; 4c89: 59 3c 2a    Y<*
    !byte $11, $67, $14, $26                                          ; 4c8c: 11 67 14... .g.
l4c90
    !byte $11, $11, $11, $11, $11, $31, $11,   1, $35, $11, $11, $11  ; 4c90: 11 11 11... ...
    !byte   1, $11,   1, $11,   0, $11,   0, $11                      ; 4c9c: 01 11 01... ...
colour_one_for_each_cave
    !byte $15, $15, $23, $15,   6, $15,   2,   3, $41,   3, $56, $15  ; 4ca4: 15 15 23... ..#
    !byte $12,   6, $51, $16,   2,   5,   4,   5                      ; 4cb0: 12 06 51... ..Q
colour_two_for_each_cave
    !byte $41, $44, $42, $14,   4, $51, $54, $51, $45,   2, $52, $42  ; 4cb8: 41 44 42... ADB
    !byte $14,   4, $54, $55,   4,   2,   1,   4                      ; 4cc4: 14 04 54... ..T
colour_three_for_each_cave
    !byte $57, $57, $57, $13,   7, $57, $57, $57, $47,   7, $57, $57  ; 4ccc: 57 57 57... WWW
    !byte $57,   7, $57, $57,   6,   7,   7,   7                      ; 4cd8: 57 07 57... W.W
cave_to_data_set
    !byte   0,   1,   2,   3, $ff,   4,   5,   6,   7, $ff,   8,   9  ; 4ce0: 00 01 02... ...
    !byte $0a, $ff, $0b, $0c, $ff, $ff, $ff, $ff                      ; 4cec: 0a ff 0b... ...
data_set_0
data_sets
    !word data_1_0                                                    ; 4cf4: 9d 43       .C
    !word data_1_1                                                    ; 4cf6: 6f 43       oC
    !word data_1_2                                                    ; 4cf8: d3 40       .@
    !word data_1_3                                                    ; 4cfa: bb 43       .C
    !word data_1_4                                                    ; 4cfc: 21 c0       !.
    !word data_1_5                                                    ; 4cfe: ea 43       .C
    !word data_1_6                                                    ; 4d00: 2c 42       ,B
    !word data_1_7                                                    ; 4d02: 19 44       .D
    !word data_1_8                                                    ; 4d04: 5e 43       ^C
    !word data_1_9                                                    ; 4d06: 54 44       TD
data_set_1
    !word data_2_0                                                    ; 4d08: 52 42       RB
    !word data_2_1                                                    ; 4d0a: 79 45       yE
    !word data_2_2                                                    ; 4d0c: 28 40       (@
    !word data_2_3                                                    ; 4d0e: b0 45       .E
    !word data_2_4                                                    ; 4d10: cd 43       .C
    !word data_2_5                                                    ; 4d12: de 45       .E
    !word data_2_6                                                    ; 4d14: e7 43       .C
    !word data_2_7                                                    ; 4d16: 0f 46       .F
    !word data_2_8                                                    ; 4d18: 5a 43       ZC
    !word data_2_9                                                    ; 4d1a: 3e 46       >F
data_set_2
    !word data_3_0                                                    ; 4d1c: 28 40       (@
    !word 0                                                           ; 4d1e: 00 00       ..
    !word data_3_1                                                    ; 4d20: e7 45       .E
    !word data_3_2                                                    ; 4d22: 00 43       .C
    !word data_3_3                                                    ; 4d24: b1 41       .A
    !word 0                                                           ; 4d26: 00 00       ..
    !word data_3_4                                                    ; 4d28: ac 41       .A
    !word data_3_5                                                    ; 4d2a: 07 43       .C
    !word data_3_6                                                    ; 4d2c: 92 43       .C
    !word data_3_7                                                    ; 4d2e: 1b 43       .C
data_set_3
    !word data_4_0                                                    ; 4d30: 28 40       (@
    !word data_4_1                                                    ; 4d32: 69 3e       i>
    !word data_4_2                                                    ; 4d34: 28 40       (@
    !word data_4_3                                                    ; 4d36: a1 3e       .>
    !word data_4_4                                                    ; 4d38: 28 40       (@
    !word data_4_5                                                    ; 4d3a: da 3e       .>
    !word data_4_6                                                    ; 4d3c: 28 40       (@
    !word data_4_7                                                    ; 4d3e: 29 3f       )?
    !word data_4_8                                                    ; 4d40: 28 40       (@
    !word data_4_9                                                    ; 4d42: 5e 3f       ^?
data_set_4
    !word data_5_0                                                    ; 4d44: 28 40       (@
    !word 0                                                           ; 4d46: 00 00       ..
    !word data_5_1                                                    ; 4d48: 6d 43       mC
    !word 0                                                           ; 4d4a: 00 00       ..
    !word data_5_2                                                    ; 4d4c: 09 c3       ..
    !word 0                                                           ; 4d4e: 00 00       ..
    !word data_5_3                                                    ; 4d50: 4d 41       MA
    !word 0                                                           ; 4d52: 00 00       ..
    !word data_5_4                                                    ; 4d54: 0e c3       ..
    !word 0                                                           ; 4d56: 00 00       ..
data_set_5
    !word data_6_0                                                    ; 4d58: 1b 41       .A
    !word data_6_1                                                    ; 4d5a: ff 3c       .<
    !word data_6_2                                                    ; 4d5c: ee 42       .B
    !word data_6_3                                                    ; 4d5e: 2a 3d       *=
    !word data_6_4                                                    ; 4d60: 2a 41       *A
    !word data_6_5                                                    ; 4d62: 5a 3d       Z=
    !word data_6_6                                                    ; 4d64: 2f 41       /A
    !word data_6_7                                                    ; 4d66: 88 3d       .=
    !word data_6_8                                                    ; 4d68: 61 42       aB
    !word data_6_9                                                    ; 4d6a: ad 3d       .=
data_set_6
    !word data_7_0                                                    ; 4d6c: cd 43       .C
    !word data_7_1                                                    ; 4d6e: 46 3c       F<
    !word data_7_2                                                    ; 4d70: bf 40       .@
    !word data_7_3                                                    ; 4d72: 70 3c       p<
    !word data_7_4                                                    ; 4d74: 0d c0       ..
    !word data_7_5                                                    ; 4d76: 9b 3c       .<
    !word data_7_6                                                    ; 4d78: 57 42       WB
    !word data_7_7                                                    ; 4d7a: bf 3c       .<
    !word data_7_8                                                    ; 4d7c: 37 40       7@
    !word data_7_9                                                    ; 4d7e: da 3c       .<
data_set_7
    !word data_8_0                                                    ; 4d80: ae 40       .@
    !word data_8_1                                                    ; 4d82: f5 40       .@
    !word data_8_2                                                    ; 4d84: 66 42       fB
    !word data_8_3                                                    ; 4d86: 40 41       @A
    !word data_8_4                                                    ; 4d88: dd 40       .@
    !word data_8_5                                                    ; 4d8a: 6c 41       lA
    !word data_8_6                                                    ; 4d8c: 06 bf       ..
    !word data_8_7                                                    ; 4d8e: 99 41       .A
    !word data_8_8                                                    ; 4d90: 82 3f       .?
    !word data_8_9                                                    ; 4d92: c4 41       .A
data_set_8
    !word data_9_0                                                    ; 4d94: 28 40       (@
    !word data_9_1                                                    ; 4d96: 92 3f       .?
    !word data_9_2                                                    ; 4d98: 0d c0       ..
    !word data_9_3                                                    ; 4d9a: c9 3f       .?
    !word data_9_4                                                    ; 4d9c: 46 42       FB
    !word data_9_5                                                    ; 4d9e: 15 40       .@
    !word data_9_6                                                    ; 4da0: 09 41       .A
    !word data_9_7                                                    ; 4da2: 52 40       R@
    !word data_9_8                                                    ; 4da4: ae 40       .@
    !word data_9_9                                                    ; 4da6: b4 40       .@
data_set_9
    !word data_10_0                                                   ; 4da8: 28 40       (@
    !word data_10_1                                                   ; 4daa: 65 46       eF
    !word data_10_2                                                   ; 4dac: ae 42       .B
    !word data_10_3                                                   ; 4dae: 8a 46       .F
    !word data_10_4                                                   ; 4db0: 1b 41       .A
    !word data_10_5                                                   ; 4db2: bc 46       .F
    !word data_10_6                                                   ; 4db4: 72 41       rA
    !word data_10_7                                                   ; 4db6: 00 3e       .>
    !word data_10_8                                                   ; 4db8: 46 42       FB
    !word data_10_9                                                   ; 4dba: 43 3e       C>
data_set_10
    !word data_11_0                                                   ; 4dbc: 28 40       (@
    !word data_11_1                                                   ; 4dbe: 84 44       .D
    !word data_11_2                                                   ; 4dc0: cd 43       .C
    !word data_11_3                                                   ; 4dc2: b8 44       .D
    !word data_11_4                                                   ; 4dc4: 89 43       .C
    !word data_11_5                                                   ; 4dc6: ef 44       .D
    !word data_11_6                                                   ; 4dc8: 2d c2       -.
    !word data_11_7                                                   ; 4dca: 11 45       .E
    !word data_11_8                                                   ; 4dcc: 0d c0       ..
    !word data_11_9                                                   ; 4dce: 3d 45       =E
data_set_11
    !word data_12_0                                                   ; 4dd0: cd 43       .C
    !word data_12_1                                                   ; 4dd2: f1 41       .A
    !word data_12_2                                                   ; 4dd4: 2f 40       /@
    !word data_12_3                                                   ; 4dd6: 3e 42       >B
    !word data_12_4                                                   ; 4dd8: fd 41       .A
    !word data_12_5                                                   ; 4dda: 6e 42       nB
    !word data_12_6                                                   ; 4ddc: b4 41       .A
    !word data_12_7                                                   ; 4dde: a6 42       .B
    !word data_12_8                                                   ; 4de0: 70 41       pA
    !word data_12_9                                                   ; 4de2: 00 3c       .<
data_set_12
    !word data_13_0                                                   ; 4de4: cd 43       .C
    !word data_13_1                                                   ; 4de6: 24 43       $C
    !word data_13_2                                                   ; 4de8: b3 3f       .?
    !word 0                                                           ; 4dea: 00 00       ..
    !word data_13_3                                                   ; 4dec: 52 42       RB
    !word data_13_4                                                   ; 4dee: 3b 43       ;C
    !word data_13_5                                                   ; 4df0: 55 41       UA
    !word 0                                                           ; 4df2: 00 00       ..
    !word data_13_6                                                   ; 4df4: 26 3f       &?
    !word data_13_7                                                   ; 4df6: 54 43       TC
    !byte   9,   4,   0, $0c, $11,   5,   1, $18,   9,   2, $0b, $23  ; 4df8: 09 04 00... ...
    !byte $1b,   7,   2, $19, $0c,   0, $0d, $0a,   4,   9,   5,   1  ; 4e04: 1b 07 02... ...
    !byte $0c, $17,   7,   2, $18, $0b,   4,   2,   6,   5,   9, $10  ; 4e10: 0c 17 07... ...
    !byte $0f,   0, $15, $c1,   0, $3f, $c3,   4, $c4,   3,   1, $0c  ; 4e1c: 0f 00 15... ...
    !byte $31, $47, $c4, $0d, $c3,   0, $40, $c0, $0d, $20,   0, $48  ; 4e28: 31 47 c4... 1G.
    !byte $c4,   5, $41, $30, $0c, $33,   1, $1c,   0, $10, $e0, $c0  ; 4e34: c4 05 41... ..A
    !byte $10,   3, $17,   0,   1, $14, $21,   7, $70, $c0, $10, $30  ; 4e40: 10 03 17... ...
    !byte   0, $cf,   0,   4, $f1,   1, $0c, $50, $c5, $80,   0, $cf  ; 4e4c: 00 cf 00... ...
    !byte   0,   4, $3c, $30,   4, $0c,   0, $33, $c0,   3,   9, $40  ; 4e58: 00 04 3c... ..<
    !byte   3, $14, $33, $c0, $40, $33, $c0,   1, $0c, $4c,   1,   2  ; 4e64: 03 14 33... ..3
    !byte   0,   8, $c1, $70, $c4, $40, $70, $8c, $33,   0, $45,   8  ; 4e70: 00 08 c1... ...
    !byte $c1, $70, $c2, $10, $10, $c4, $0c, $50,   3, $dc, $21, $1c  ; 4e7c: c1 70 c2... .p.
    !byte $1c,   4,   8, $c0, $11, $40,   3, $dc, $31, $14,   4, $31  ; 4e88: 1c 04 08... ...
    !byte $47, $14,   4, $cc                                          ; 4e94: 47 14 04... G..
    !text "@", $5c, "0"                                               ; 4e98: 40 5c 30    @\0
    !byte   4, $0c,   0, $53, $14,   4, $cc, $48, $47,   7,   0, $c3  ; 4e9b: 04 0c 00... ...
    !byte $3c,   1,   0, $50, $77, $0c,   1,   2,   1, $34, $0c, $11  ; 4ea7: 3c 01 00... <..
    !byte $4b, $10, $17,   4, $80, $70, $cc, $0c, $70,   0, $43, $12  ; 4eb3: 4b 10 17... K..
    !byte   0, $c5, $0c, $5c,   0, $0c, $70,   0, $41, $c3,   0, $40  ; 4ebf: 00 c5 0c... ...
    !byte $c0,   3, $3c,   0, $10, $c0,   4, $31, $43, $14,   4,   3  ; 4ecb: c0 03 3c... ..<
    !byte $3c,   0, $10, $e0, $c0,   0, $30,   0, $ce,   0, $0c,   5  ; 4ed7: 3c 00 10... <..
    !byte   7,   8, $43, $3c,   4,   0, $ce,   0,   4, $31, $88, $c3  ; 4ee3: 07 08 43... ..C
    !byte   0, $45,   0, $3d, $c3, $11, $c1, $c0, $70, $cc,   1, $14  ; 4eef: 00 45 00... .E.
    !byte   0, $35, $c3,   1, $40, $43, $14, $31, $40, $1f, $c4,   5  ; 4efb: 00 35 c3... .5.
    !byte $c1, $20, $1c,   6,   4, $31, $40, $0c, $e0, $84, $70, $70  ; 4f07: c1 20 1c... . .
    !byte $84, $31, $c0, $10,   1,   7, $70, $c0, $10, $20, $13, $40  ; 4f13: 84 31 c0... .1.
    !byte   1, $16, $b1,   1, $70, $4c,   7, $0c, $c0, $47,   0,   4  ; 4f1f: 01 16 b1... ...
    !byte $31, $20, $0c, $50, $c5, $c0,   0, $c7,   0,   4, $1c, $30  ; 4f2b: 31 20 0c... 1 .
    !byte   4, $0c,   0, $33, $c0,   1, $0c, $40, $43, $14            ; 4f37: 04 0c 00... ...
    !text "1@`3"                                                      ; 4f41: 31 40 60... 1@`
    !byte $c0, $31, $0e, $0c,   1,   3,   0, $0c, $e0,   0, $c0, $50  ; 4f45: c0 31 0e... .1.
    !byte $10, $c4, $33, $c0, $40, $0c, $e0,   0, $43, $12,   0, $40  ; 4f51: 10 c4 33... ..3
    !byte   4, $50,   0, $5c, $31, $10, $1c,   3, $0c, $c0, $11, $40  ; 4f5d: 04 50 00... .P.
    !byte   0, $5c, $30, $94,   4, $31, $43, $14,   1, $fe,   8, $44  ; 4f69: 00 5c 30... .\0
    !byte   7, $41, $c2, $30,   4, $50,   0, $f7, $0c, $41,   3, $0c  ; 4f75: 07 41 c2... .A.
    !byte $50, $c5,   1, $33, $10, $17, $0c,   1,   3,   0, $14, $8d  ; 4f81: 50 c5 01... P..
    !byte   1, $33, $10, $15,   4, $c0, $30, $cc,   4, $50,   0, $43  ; 4f8d: 01 33 10... .3.
    !byte $83,   0, $40,   4, $5c,   0,   4, $50, $c4, $0d, $c3,   0  ; 4f99: 83 00 40... ..@
    !byte $40, $c0,   3, $3c,   0, $10, $c4,   7, $0c,   3,   3,   0  ; 4fa5: 40 c0 03... @..
    !byte   3, $0c,   0,   0, $30, $c0,   0, $30,   0, $cf,   0,   0  ; 4fb1: 03 0c 00... ...
    !byte $30,   0, $0c,   0, $c3,   0,   0, $cf,   0,   0, $30, $30  ; 4fbd: 30 00 0c... 0..
    !byte   0,   0,   0, $33,   0, $c3,   0, $c0, $c2, $30, $cc,   0  ; 4fc9: 00 00 00... ...
    !byte   0, $23, $80,   0, $0c, $20,   3,   0,   0,   0, $0f, $30  ; 4fd5: 00 23 80... .#.
    !byte $c0, $30, $30, $0c, $33,   0,   0,   0,   0,   0,   0,   0  ; 4fe1: c0 30 30... .00
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 4fed: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0                           ; 4ff9: 00 00 00... ...
special_cave_1
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83            ; 5000: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83            ; 500a: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83            ; 5014: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83            ; 501e: 83 83 83... ...
backwards_status_bar
    !byte sprite_1                                                    ; 5028: 33          3
    !byte sprite_slash                                                ; 5029: 3e          >
    !text "A=EVAC"                                                    ; 502a: 41 3d 45... A=E
    !byte sprite_space                                                ; 5030: 00          .
    !byte sprite_space                                                ; 5031: 00          .
    !byte sprite_space                                                ; 5032: 00          .
    !byte sprite_space                                                ; 5033: 00          .
    !text "REYALP"                                                    ; 5034: 52 45 59... REY
    !byte sprite_space                                                ; 503a: 00          .
    !byte sprite_1                                                    ; 503b: 33          3
    !byte $83, $83, $83                                               ; 503c: 83 83 83    ...
special_cave_2
    !byte 1                                                           ; 503f: 01          .
special_cave_3
    !byte $83, $81, $81, $80, $80, $80, $80, $80, $80, $80            ; 5040: 83 81 81... ...
    !byte $80, $81, $81, $81, $81, $81, $81, $81, $81, $81            ; 504a: 80 81 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81            ; 5054: 81 81 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $83            ; 505e: 81 81 81... ...
default_status_bar
    !text "PLAYER"                                                    ; 5068: 50 4c 41... PLA
    !byte sprite_space                                                ; 506e: 00          .
    !byte sprite_1                                                    ; 506f: 33          3
    !byte sprite_comma                                                ; 5070: 3f          ?
    !byte sprite_space                                                ; 5071: 00          .
    !byte sprite_3                                                    ; 5072: 35          5
    !byte sprite_space                                                ; 5073: 00          .
    !text "MEN"                                                       ; 5074: 4d 45 4e    MEN
    !byte sprite_space                                                ; 5077: 00          .
    !byte sprite_space                                                ; 5078: 00          .
    !text "A"                                                         ; 5079: 41          A
    !byte sprite_slash                                                ; 507a: 3e          >
    !byte sprite_2                                                    ; 507b: 34          4
    !byte $83, $83, $83, $83, $83, $81, $81, $81, $81, $81            ; 507c: 83 83 83... ...
    !byte $81, $81, $81, $81, $80, $81, $81, $81, $81, $81            ; 5086: 81 81 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81            ; 5090: 81 81 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81            ; 509a: 81 81 81... ...
    !byte $81, $81, $81, $83,   1, $83, $83, $83, $83, $83            ; 50a4: 81 81 81... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83            ; 50ae: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $81            ; 50b8: 83 83 83... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $80, $81            ; 50c2: 81 81 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81            ; 50cc: 81 81 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81            ; 50d6: 81 81 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $83,   1, $83            ; 50e0: 81 81 81... ...
    !byte $83, $83, $83, $83, $83,   8, $83, $83,   2, $83            ; 50ea: 83 83 83... ...
    !byte $83, $83, $83, $83,   5, $83,   5,   4, $83, $83            ; 50f4: 83 83 83... ...
    !byte $83, $83, $83, $81, $81, $81, $81, $81, $81, $81            ; 50fe: 83 83 83... ...
    !byte $81, $81, $80, $81, $81, $81, $81, $81, $81, $81            ; 5108: 81 81 80... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81            ; 5112: 81 81 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81            ; 511c: 81 81 81... ...
    !byte $81, $83                                                    ; 5126: 81 83       ..
unused_fragment_of_basic1
    !text "|M|N"                                                      ; 5128: 7c 4d 7c... |M|
    !byte $0d,   0, $1e, $23                                          ; 512c: 0d 00 1e... ...
    !text "*KEY7 *SAVE C.GA"                                          ; 5130: 2a 4b 45... *KE

    !byte $83, $81, $81, $81                                          ; 5140: 83 81 81... ...
    !byte $81, $81, $81, $81, $81, $81, $80, $81, $81, $81            ; 5144: 81 81 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $96, $81            ; 514e: 81 81 81... ...
    !byte $96, $81, $96, $81, $96, $81, $96, $81, $96, $81            ; 5158: 96 81 96... ...
    !byte $81, $81, $81, $81, $81, $83                                ; 5162: 81 81 81... ...
unused_fragment_of_basic2
    !text ";0;"                                                       ; 5168: 3b 30 3b    ;0;
    !byte $0d,   0, $3c, $10                                          ; 516b: 0d 00 3c... ..<
    !text " *FX 178,0,0"                                              ; 516f: 20 2a 46...  *F
    !byte $0d,   0, $46, $0c, $20                                     ; 517b: 0d 00 46... ..F

    !byte $83, $81, $81, $81, $81, $81, $81, $81, $81, $81, $80, $81  ; 5180: 83 81 81... ...
    !byte $81, $81, $81, $81, $81, $81, $80, $80, $80, $81, $85, $81  ; 518c: 81 81 81... ...
    !byte $85, $81, $85, $81, $85, $81, $85, $81, $85, $81, $81, $81  ; 5198: 85 81 85... ...
    !byte $81, $81, $81, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 51a4: 81 81 81... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 51b0: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $81, $81, $81, $81, $81, $81, $81  ; 51bc: 83 83 83... ...
    !byte $81, $81, $80, $81, $81, $81, $81, $81, $81, $81, $80, $80  ; 51c8: 81 81 80... ...
    !byte $80, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81  ; 51d4: 80 81 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $83, $83, $83, $83, $83  ; 51e0: 81 81 81... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 51ec: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $81, $81, $81  ; 51f8: 83 83 83... ...
    !byte $81, $81, $81, $81, $81, $81, $80, $80, $80, $8e, $9e, $9e  ; 5204: 81 81 81... ...
    !byte $80, $80, $80, $80, $80, $81, $81, $81, $81, $81, $81, $81  ; 5210: 80 80 80... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $83  ; 521c: 81 81 81... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 5228: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 5234: 83 83 83... ...
    !byte $83, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $80  ; 5240: 83 81 81... ...
    !byte $81, $80, $81, $80, $81, $80, $84, $80, $84, $80, $81, $81  ; 524c: 81 80 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81  ; 5258: 81 81 81... ...
    !byte $81, $81, $81, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 5264: 81 81 81... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 5270: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $81, $81, $81, $81, $81, $81, $81  ; 527c: 83 83 83... ...
    !byte $81, $81, $81, $8e, $81, $80, $81, $80, $81, $80, $81, $80  ; 5288: 81 81 81... ...
    !byte $81, $80, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81  ; 5294: 81 80 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $83, $83, $83, $83, $83  ; 52a0: 81 81 81... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 52ac: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $81, $81, $81  ; 52b8: 83 83 83... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $80, $81, $80, $81, $80  ; 52c4: 81 81 81... ...
    !byte $81, $80, $81, $80, $81, $80, $81, $81, $81, $81, $81, $81  ; 52d0: 81 80 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $83  ; 52dc: 81 81 81... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 52e8: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 52f4: 83 83 83... ...
    !byte $83, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $80  ; 5300: 83 81 81... ...
    !byte $81, $80, $81, $80, $81, $80, $81, $80, $81, $80, $81, $81  ; 530c: 81 80 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81  ; 5318: 81 81 81... ...
    !byte $81, $81, $81, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 5324: 81 81 81... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 5330: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $81, $81, $81, $81, $81, $81, $81  ; 533c: 83 83 83... ...
    !byte $81, $81, $81, $80, $81, $80, $81, $80, $81, $80, $81, $80  ; 5348: 81 81 81... ...
    !byte $81, $80, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81  ; 5354: 81 80 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $83, $83, $83, $83, $83  ; 5360: 81 81 81... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 536c: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $81, $81, $81  ; 5378: 83 83 83... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $80, $81, $80, $81, $80  ; 5384: 81 81 81... ...
    !byte $81, $80, $81, $c4, $81, $80, $81, $81, $81, $81, $81, $81  ; 5390: 81 80 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $83  ; 539c: 81 81 81... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 53a8: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 53b4: 83 83 83... ...
    !byte $83, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $80  ; 53c0: 83 81 81... ...
    !byte $81, $80, $81, $80, $81, $80, $81, $80, $81, $80, $81, $81  ; 53cc: 81 80 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81  ; 53d8: 81 81 81... ...
    !byte $81, $81, $81, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 53e4: 81 81 81... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 53f0: 83 83 83... ...
    !byte $83, $83, $83, $83                                          ; 53fc: 83 83 83... ...
credits
    !text "@@@@BOULDERDASH@@@WRITTEN"                                 ; 5400: 40 40 40... @@@
    !byte   0, $42, $59,   0                                          ; 5419: 00 42 59... .BY
    !text "A@G@BENNETT"                                               ; 541d: 41 40 47... A@G
    !byte 0                                                           ; 5428: 00          .
    !text "3;::@@@DEDICATED"                                          ; 5429: 33 3b 3a... 3;:
    !byte   0, $54, $4f,   0                                          ; 5439: 00 54 4f... .TO
    !text "J@M@BARNES?DEBBIE?MARK"                                    ; 543d: 4a 40 4d... J@M
    !byte 0                                                           ; 5453: 00          .
    !text "BENNETT?OUR"                                               ; 5454: 42 45 4e... BEN
    !byte 0                                                           ; 545f: 00          .
    !text "MAM?MIC?BURNY?N@JENNISON?CRAIG"                            ; 5460: 4d 41 4d... MAM
    !byte 0                                                           ; 547e: 00          .
    !text "DARRELL?T@SECKER?TONY"                                     ; 547f: 44 41 52... DAR
    !byte 0                                                           ; 5494: 00          .
    !text "FROM"                                                      ; 5495: 46 52 4f... FRO
    !byte 0                                                           ; 5499: 00          .
    !text "THE"                                                       ; 549a: 54 48 45    THE
    !byte 0                                                           ; 549d: 00          .
    !text "PALACE?TONY"                                               ; 549e: 50 41 4c... PAL
    !byte 0                                                           ; 54a9: 00          .
    !text "FROM"                                                      ; 54aa: 46 52 4f... FRO
    !byte 0                                                           ; 54ae: 00          .
    !text "LEAZES?SOLAR"                                              ; 54af: 4c 45 41... LEA
    !byte 0                                                           ; 54bb: 00          .
    !text "WORKSHOP?ELSIE?PRIMROSE?STRANGE"                           ; 54bc: 57 4f 52... WOR
    !byte 0                                                           ; 54db: 00          .
    !text "SCIENCE"                                                   ; 54dc: 53 43 49... SCI
    !byte 0                                                           ; 54e3: 00          .
    !text "PINBALL"                                                   ; 54e4: 50 49 4e... PIN
    !byte 0                                                           ; 54eb: 00          .
    !text "AND"                                                       ; 54ec: 41 4e 44    AND
    !byte 0                                                           ; 54ef: 00          .
    !text "COSMIC"                                                    ; 54f0: 43 4f 53... COS
    !byte 0                                                           ; 54f6: 00          .
    !text "MONSTERS@"                                                 ; 54f7: 4d 4f 4e... MON
l5500
    !byte $83, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81  ; 5500: 83 81 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81  ; 550c: 81 81 81... ...
    !byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81  ; 5518: 81 81 81... ...
    !byte $81, $81, $81, $83,   1, $83, $83, $83, $83, $83, $83, $83  ; 5524: 81 81 81... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 5530: 83 83 83... ...
    !byte $83, $83, $83, $83                                          ; 553c: 83 83 83... ...
l5540
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 5540: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 554c: 83 83 83... ...
    !byte $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83  ; 5558: 83 83 83... ...
    !byte $83, $83, $83, $83                                          ; 5564: 83 83 83... ...

; unused copy of routine at $5700
unused54
    lda #osbyte_flush_buffer_class                                    ; 5568: a9 0f       ..
    ldx #0                                                            ; 556a: a2 00       ..
    jsr osbyte                                                        ; 556c: 20 f4 ff     ..            ; Flush all buffers (X=0)
    ldx #5                                                            ; 556f: a2 05       ..
loop_c5571
    lda l56e8,x                                                       ; 5571: bd e8 56    ..V
    sta l56d0,x                                                       ; 5574: 9d d0 56    ..V
    dex                                                               ; 5577: ca          .
    bpl loop_c5571                                                    ; 5578: 10 f7       ..
    rts                                                               ; 557a: 60          `

unused55
    !byte $a9,   0, $85, $8e, $a9, $83, $b8, $e5, $8e, $aa, $a0, $ff  ; 557b: a9 00 85... ...
    !byte $a9, $80, $a0, $f4, $ff, $8a, $f0, $e6, $a6, $8e, $8a, $8a  ; 5587: a9 80 a0... ...
    !byte $8a, $8a, $85, $8f, $bd, $d0, $d6, $a8, $e0, $80, $d0, $84  ; 5593: 8a 8a 85... ...
    !byte $c0, $c1, $f0, $c5, $b9, $80, $d6, $c9, $83, $90, $1a, $a8  ; 559f: c0 c1 f0... ...
    !byte $bd, $d3, $56, $d0,   6, $b9, $1a, $56, $9d, $d3, $56, $b9  ; 55ab: bd d3 56... ..V
    !byte $0e, $56, $48, $b9, $14, $56, $a8, $68, $de, $d3, $56, $10  ; 55b7: 0e 56 48... .VH
    !byte $12, $48, $29,   3, $a8, $a9,   0, $9d, $d3, $56, $b9, $ee  ; 55c3: 12 48 29... .H)
    !byte $56, $a8, $68, $29, $fc,   9,   1, $48, $bd, $d3, $56, $d0  ; 55cf: 56 a8 68... V.h
    !byte   3, $fe, $d0, $56, $68, $a6, $8f, $9d, $bc, $56, $98, $9d  ; 55db: 03 fe d0... ...
    !byte $be, $56, $8a, $18, $69, $b8, $aa, $a0, $56, $a9,   7, $20  ; 55e7: be 56 8a... .V.
    !byte $f1, $ff, $e6, $8e, $26, $8e, $e0,   3, $d0, $82, $60, $83  ; 55f3: f1 ff e6... ...
    !byte $83                                                         ; 55ff: 83          .
l5600
    !byte $48, $58, $5c, $64, $58, $5c, $64, $70, $5c, $64, $70, $78  ; 5600: 48 58 5c... HX\
    !byte $49, $45                                                    ; 560c: 49 45       IE
l560e
    !byte $19,   5, $11, $24, $20, $19                                ; 560e: 19 05 11... ...
l5614
    !byte   5, $13,   9, $25,   3,   5                                ; 5614: 05 13 09... ...
l561a
    !byte $c8, $a8, $a8, $a8, $a8, $18, $c9, $10, $c9, $18, $c9, $10  ; 561a: c8 a8 a8... ...
    !byte $c9, $18, $c9, $10, $c9, $18, $c9, $10, $a8, $a8, $a8, $88  ; 5626: c9 18 c9... ...
    !byte $a8, $94, $8c                                               ; 5632: a8 94 8c    ...
    !text "@X", $5c, "dp"                                             ; 5635: 40 58 5c... @X\
    !byte $a8, $a0, $94, $8c, $88                                     ; 563a: a8 a0 94... ...
    !text "xpHX", $5c, "dX", $5c, "dp", $5c, "dpxH"                   ; 563f: 78 70 48... xpH
    !byte $b5, $b0, $18, $78,   5, $11, $80, $20, $18, $78,   5, $11  ; 564e: b5 b0 18... ...
    !byte $a9,   8, $78, $25,   1, $a9,   5, $c8, $ca                 ; 565a: a9 08 78... ..x
    !text "Xxd", $5c                                                  ; 5663: 58 78 64... Xxd
    !byte $10                                                         ; 5667: 10          .
    !text "(,4@xpd", $5c, "XH@HX", $5c, "dX", $5c, "dp", $5c, "dpx"   ; 5668: 28 2c 34... (,4
    !text "H"                                                         ; 567f: 48          H
    !byte $a9, $a4, $19,   5, $11, $24, $20, $19,   5, $13,   9, $25  ; 5680: a9 a4 19... ...
    !byte   3,   5, $c8, $cb, $cd, $89, $8d, $89, $8d, $89, $8d, $81  ; 568c: 03 05 c8... ...
    !byte $85, $a9, $a1, $9d, $95, $a1, $a1, $8d, $a1, $89, $8d, $89  ; 5698: 85 a9 a1... ...
    !byte $8d, $89, $8d, $cc, $70, $94, $80                           ; 56a4: 8d 89 8d... ...
    !text "x,@HP", $5c                                                ; 56ab: 78 2c 40... x,@
    !byte $94, $8c, $80                                               ; 56b1: 94 8c 80    ...
    !text "xpd", $5c                                                  ; 56b4: 78 70 64... xpd
sound1
    !word 1                                                           ; 56b8: 01 00       ..             ; channel
    !word 10                                                          ; 56ba: 0a 00       ..             ; amplitude
sound1_pitch
    !word 69                                                          ; 56bc: 45 00       E.             ; pitch
sound1_duration
    !word 6                                                           ; 56be: 06 00       ..             ; duration
sound2
    !word 2                                                           ; 56c0: 02 00       ..             ; channel
    !word 11                                                          ; 56c2: 0b 00       ..             ; amplitude
    !word 181                                                         ; 56c4: b5 00       ..             ; pitch
    !word 6                                                           ; 56c6: 06 00       ..             ; duration
sound3
    !word 3                                                           ; 56c8: 03 00       ..             ; channel
    !word 12                                                          ; 56ca: 0c 00       ..             ; amplitude
    !word 169                                                         ; 56cc: a9 00       ..             ; pitch
    !word 6                                                           ; 56ce: 06 00       ..             ; duration
l56d0
    !byte $0e, $4f, $81                                               ; 56d0: 0e 4f 81    .O.
l56d3
    !byte   0,   0,   0, $19, $a9, $79, $79, $81, $79, $12,   3,   3  ; 56d3: 00 00 00... ...
    !byte   3,   8,   7,   1,   7, $40, $0f,   1,   1                 ; 56df: 03 08 07... ...
l56e8
    !byte   0, $41, $73,   0,   0,   0                                ; 56e8: 00 41 73... .As
l56ee
    !byte   3,   6,   9, $0c,   0,   0,   0,   0,   0,   0,   0,   0  ; 56ee: 03 06 09... ...
    !byte   0,   0,   0,   0,   0,   0                                ; 56fa: 00 00 00... ...

c5700
    lda #osbyte_flush_buffer_class                                    ; 5700: a9 0f       ..
    ldx #0                                                            ; 5702: a2 00       ..
    jsr osbyte                                                        ; 5704: 20 f4 ff     ..            ; Flush all buffers (X=0)
    ldx #5                                                            ; 5707: a2 05       ..
loop_c5709
    lda l56e8,x                                                       ; 5709: bd e8 56    ..V
    sta l56d0,x                                                       ; 570c: 9d d0 56    ..V
    dex                                                               ; 570f: ca          .
    bpl loop_c5709                                                    ; 5710: 10 f7       ..
    rts                                                               ; 5712: 60          `

sub_c5713
    lda #0                                                            ; 5713: a9 00       ..
    sta l008e                                                         ; 5715: 85 8e       ..
c5717
    lda #$fa                                                          ; 5717: a9 fa       ..
    sec                                                               ; 5719: 38          8
    sbc l008e                                                         ; 571a: e5 8e       ..
    tax                                                               ; 571c: aa          .
    ldy #$ff                                                          ; 571d: a0 ff       ..
    lda #osbyte_read_adc_or_get_buffer_status                         ; 571f: a9 80       ..
    jsr osbyte                                                        ; 5721: 20 f4 ff     ..            ; Read buffer status or ADC channel
    txa                                                               ; 5724: 8a          .
    beq c578d                                                         ; 5725: f0 66       .f
    ldx l008e                                                         ; 5727: a6 8e       ..
    txa                                                               ; 5729: 8a          .
    asl                                                               ; 572a: 0a          .
    asl                                                               ; 572b: 0a          .
    asl                                                               ; 572c: 0a          .
    sta offset_to_sound                                               ; 572d: 85 8f       ..
    lda l56d0,x                                                       ; 572f: bd d0 56    ..V
    tay                                                               ; 5732: a8          .
    cpx #0                                                            ; 5733: e0 00       ..
    bne c573b                                                         ; 5735: d0 04       ..
    cpy #$41                                                          ; 5737: c0 41       .A
    beq c5700                                                         ; 5739: f0 c5       ..
c573b
    lda l5600,y                                                       ; 573b: b9 00 56    ..V
    cmp #$c8                                                          ; 573e: c9 c8       ..
    bcc c575c                                                         ; 5740: 90 1a       ..
    tay                                                               ; 5742: a8          .
    lda l56d3,x                                                       ; 5743: bd d3 56    ..V
    bne c574e                                                         ; 5746: d0 06       ..
    lda l561a,y                                                       ; 5748: b9 1a 56    ..V
    sta l56d3,x                                                       ; 574b: 9d d3 56    ..V
c574e
    lda l560e,y                                                       ; 574e: b9 0e 56    ..V
    pha                                                               ; 5751: 48          H
    lda l5614,y                                                       ; 5752: b9 14 56    ..V
    tay                                                               ; 5755: a8          .
    pla                                                               ; 5756: 68          h
    dec l56d3,x                                                       ; 5757: de d3 56    ..V
    bpl c576e                                                         ; 575a: 10 12       ..
c575c
    pha                                                               ; 575c: 48          H
    and #3                                                            ; 575d: 29 03       ).
    tay                                                               ; 575f: a8          .
    lda #0                                                            ; 5760: a9 00       ..
    sta l56d3,x                                                       ; 5762: 9d d3 56    ..V
    lda l56ee,y                                                       ; 5765: b9 ee 56    ..V
    tay                                                               ; 5768: a8          .
    pla                                                               ; 5769: 68          h
    and #$fc                                                          ; 576a: 29 fc       ).
    ora #1                                                            ; 576c: 09 01       ..
c576e
    pha                                                               ; 576e: 48          H
    lda l56d3,x                                                       ; 576f: bd d3 56    ..V
    bne c5777                                                         ; 5772: d0 03       ..
    inc l56d0,x                                                       ; 5774: fe d0 56    ..V
c5777
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
c578d
    inc l008e                                                         ; 578d: e6 8e       ..
    ldx l008e                                                         ; 578f: a6 8e       ..
    cpx #3                                                            ; 5791: e0 03       ..
    bne c5717                                                         ; 5793: d0 82       ..
    rts                                                               ; 5795: 60          `

    !byte $d0,   7, $c8, $c0,   6, $d0,   2, $a0,   1, $84, $89, $85  ; 5796: d0 07 c8... ...
    !byte $87, $c9, $10, $30, $9d, $ee, $1e, $32, $d0, $98, $60,   0  ; 57a2: 87 c9 10... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 57ae: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 57ba: 00 00 00... ...
    !byte   0, $cb, $36,   5, $ff, $85, $18,   0,   0,   0, $85, $18  ; 57c6: 00 cb 36... ..6
    !byte   0,   0, $8f, $29, $80,   0,   0, $cb, $36,   5, $ff, $85  ; 57d2: 00 00 8f... ...
    !byte $18,   0,   0,   0, $c3, $36,   5, $ff, $82, $40,   0,   0  ; 57de: 18 00 00... ...
    !byte   0, $ef, $ff, $9d,   0,   0,   0,   0,   0, $14,   0,   0  ; 57ea: 00 ef ff... ...
    !byte   0, $81,   0,   0,   0, $83,   0,   0,   0,   0            ; 57f6: 00 81 00... ...
big_rockford_destination_screen_address
pydis_end
!if ('A') != $41 {
    !error "Assertion failed: 'A' == $41"
}
!if ('B') != $42 {
    !error "Assertion failed: 'B' == $42"
}
!if ('S') != $53 {
    !error "Assertion failed: 'S' == $53"
}
!if (<(l2c24)) != $24 {
    !error "Assertion failed: <(l2c24) == $24"
}
!if (<(palette_block)) != $29 {
    !error "Assertion failed: <(palette_block) == $29"
}
!if (<(set_clock_value)) != $70 {
    !error "Assertion failed: <(set_clock_value) == $70"
}
!if (<(sprite_addr_0)) != $00 {
    !error "Assertion failed: <(sprite_addr_0) == $00"
}
!if (<backwards_status_bar) != $28 {
    !error "Assertion failed: <backwards_status_bar == $28"
}
!if (<big_rockford_destination_screen_address) != $00 {
    !error "Assertion failed: <big_rockford_destination_screen_address == $00"
}
!if (<data_sets) != $f4 {
    !error "Assertion failed: <data_sets == $f4"
}
!if (<grid_of_screen_sprites) != $00 {
    !error "Assertion failed: <grid_of_screen_sprites == $00"
}
!if (<highscore_high_status_bar) != $50 {
    !error "Assertion failed: <highscore_high_status_bar == $50"
}
!if (<highscore_last_status_bar) != $dc {
    !error "Assertion failed: <highscore_last_status_bar == $dc"
}
!if (<number_of_players_status_bar) != $78 {
    !error "Assertion failed: <number_of_players_status_bar == $78"
}
!if (<players_and_men_status_bar) != $14 {
    !error "Assertion failed: <players_and_men_status_bar == $14"
}
!if (<sound1) != $b8 {
    !error "Assertion failed: <sound1 == $b8"
}
!if (<special_cave_0) != $00 {
    !error "Assertion failed: <special_cave_0 == $00"
}
!if (<special_cave_1) != $00 {
    !error "Assertion failed: <special_cave_1 == $00"
}
!if (<special_cave_2) != $3f {
    !error "Assertion failed: <special_cave_2 == $3f"
}
!if (<special_cave_3) != $40 {
    !error "Assertion failed: <special_cave_3 == $40"
}
!if (<sprite_addr_0) != $00 {
    !error "Assertion failed: <sprite_addr_0 == $00"
}
!if (<sprite_addr_1) != $20 {
    !error "Assertion failed: <sprite_addr_1 == $20"
}
!if (<sprite_addr_10) != $40 {
    !error "Assertion failed: <sprite_addr_10 == $40"
}
!if (<sprite_addr_11) != $60 {
    !error "Assertion failed: <sprite_addr_11 == $60"
}
!if (<sprite_addr_12) != $80 {
    !error "Assertion failed: <sprite_addr_12 == $80"
}
!if (<sprite_addr_13) != $a0 {
    !error "Assertion failed: <sprite_addr_13 == $a0"
}
!if (<sprite_addr_14) != $c0 {
    !error "Assertion failed: <sprite_addr_14 == $c0"
}
!if (<sprite_addr_15) != $e0 {
    !error "Assertion failed: <sprite_addr_15 == $e0"
}
!if (<sprite_addr_16) != $00 {
    !error "Assertion failed: <sprite_addr_16 == $00"
}
!if (<sprite_addr_17) != $20 {
    !error "Assertion failed: <sprite_addr_17 == $20"
}
!if (<sprite_addr_18) != $40 {
    !error "Assertion failed: <sprite_addr_18 == $40"
}
!if (<sprite_addr_19) != $60 {
    !error "Assertion failed: <sprite_addr_19 == $60"
}
!if (<sprite_addr_2) != $40 {
    !error "Assertion failed: <sprite_addr_2 == $40"
}
!if (<sprite_addr_20) != $80 {
    !error "Assertion failed: <sprite_addr_20 == $80"
}
!if (<sprite_addr_21) != $a0 {
    !error "Assertion failed: <sprite_addr_21 == $a0"
}
!if (<sprite_addr_22) != $c0 {
    !error "Assertion failed: <sprite_addr_22 == $c0"
}
!if (<sprite_addr_23) != $e0 {
    !error "Assertion failed: <sprite_addr_23 == $e0"
}
!if (<sprite_addr_24) != $00 {
    !error "Assertion failed: <sprite_addr_24 == $00"
}
!if (<sprite_addr_25) != $20 {
    !error "Assertion failed: <sprite_addr_25 == $20"
}
!if (<sprite_addr_26) != $40 {
    !error "Assertion failed: <sprite_addr_26 == $40"
}
!if (<sprite_addr_27) != $60 {
    !error "Assertion failed: <sprite_addr_27 == $60"
}
!if (<sprite_addr_28) != $80 {
    !error "Assertion failed: <sprite_addr_28 == $80"
}
!if (<sprite_addr_29) != $a0 {
    !error "Assertion failed: <sprite_addr_29 == $a0"
}
!if (<sprite_addr_3) != $60 {
    !error "Assertion failed: <sprite_addr_3 == $60"
}
!if (<sprite_addr_30) != $c0 {
    !error "Assertion failed: <sprite_addr_30 == $c0"
}
!if (<sprite_addr_31) != $e0 {
    !error "Assertion failed: <sprite_addr_31 == $e0"
}
!if (<sprite_addr_32) != $00 {
    !error "Assertion failed: <sprite_addr_32 == $00"
}
!if (<sprite_addr_33) != $20 {
    !error "Assertion failed: <sprite_addr_33 == $20"
}
!if (<sprite_addr_34) != $40 {
    !error "Assertion failed: <sprite_addr_34 == $40"
}
!if (<sprite_addr_35) != $60 {
    !error "Assertion failed: <sprite_addr_35 == $60"
}
!if (<sprite_addr_36) != $80 {
    !error "Assertion failed: <sprite_addr_36 == $80"
}
!if (<sprite_addr_37) != $a0 {
    !error "Assertion failed: <sprite_addr_37 == $a0"
}
!if (<sprite_addr_38) != $c0 {
    !error "Assertion failed: <sprite_addr_38 == $c0"
}
!if (<sprite_addr_39) != $e0 {
    !error "Assertion failed: <sprite_addr_39 == $e0"
}
!if (<sprite_addr_4) != $80 {
    !error "Assertion failed: <sprite_addr_4 == $80"
}
!if (<sprite_addr_40) != $00 {
    !error "Assertion failed: <sprite_addr_40 == $00"
}
!if (<sprite_addr_41) != $20 {
    !error "Assertion failed: <sprite_addr_41 == $20"
}
!if (<sprite_addr_42) != $40 {
    !error "Assertion failed: <sprite_addr_42 == $40"
}
!if (<sprite_addr_43) != $60 {
    !error "Assertion failed: <sprite_addr_43 == $60"
}
!if (<sprite_addr_44) != $80 {
    !error "Assertion failed: <sprite_addr_44 == $80"
}
!if (<sprite_addr_45) != $a0 {
    !error "Assertion failed: <sprite_addr_45 == $a0"
}
!if (<sprite_addr_46) != $c0 {
    !error "Assertion failed: <sprite_addr_46 == $c0"
}
!if (<sprite_addr_47) != $e0 {
    !error "Assertion failed: <sprite_addr_47 == $e0"
}
!if (<sprite_addr_48) != $00 {
    !error "Assertion failed: <sprite_addr_48 == $00"
}
!if (<sprite_addr_49) != $20 {
    !error "Assertion failed: <sprite_addr_49 == $20"
}
!if (<sprite_addr_5) != $a0 {
    !error "Assertion failed: <sprite_addr_5 == $a0"
}
!if (<sprite_addr_50) != $40 {
    !error "Assertion failed: <sprite_addr_50 == $40"
}
!if (<sprite_addr_51) != $60 {
    !error "Assertion failed: <sprite_addr_51 == $60"
}
!if (<sprite_addr_52) != $80 {
    !error "Assertion failed: <sprite_addr_52 == $80"
}
!if (<sprite_addr_53) != $a0 {
    !error "Assertion failed: <sprite_addr_53 == $a0"
}
!if (<sprite_addr_54) != $c0 {
    !error "Assertion failed: <sprite_addr_54 == $c0"
}
!if (<sprite_addr_55) != $e0 {
    !error "Assertion failed: <sprite_addr_55 == $e0"
}
!if (<sprite_addr_56) != $00 {
    !error "Assertion failed: <sprite_addr_56 == $00"
}
!if (<sprite_addr_57) != $20 {
    !error "Assertion failed: <sprite_addr_57 == $20"
}
!if (<sprite_addr_58) != $40 {
    !error "Assertion failed: <sprite_addr_58 == $40"
}
!if (<sprite_addr_59) != $60 {
    !error "Assertion failed: <sprite_addr_59 == $60"
}
!if (<sprite_addr_6) != $c0 {
    !error "Assertion failed: <sprite_addr_6 == $c0"
}
!if (<sprite_addr_60) != $80 {
    !error "Assertion failed: <sprite_addr_60 == $80"
}
!if (<sprite_addr_61) != $a0 {
    !error "Assertion failed: <sprite_addr_61 == $a0"
}
!if (<sprite_addr_62) != $c0 {
    !error "Assertion failed: <sprite_addr_62 == $c0"
}
!if (<sprite_addr_63) != $e0 {
    !error "Assertion failed: <sprite_addr_63 == $e0"
}
!if (<sprite_addr_64) != $00 {
    !error "Assertion failed: <sprite_addr_64 == $00"
}
!if (<sprite_addr_65) != $20 {
    !error "Assertion failed: <sprite_addr_65 == $20"
}
!if (<sprite_addr_66) != $40 {
    !error "Assertion failed: <sprite_addr_66 == $40"
}
!if (<sprite_addr_67) != $60 {
    !error "Assertion failed: <sprite_addr_67 == $60"
}
!if (<sprite_addr_68) != $80 {
    !error "Assertion failed: <sprite_addr_68 == $80"
}
!if (<sprite_addr_69) != $a0 {
    !error "Assertion failed: <sprite_addr_69 == $a0"
}
!if (<sprite_addr_7) != $e0 {
    !error "Assertion failed: <sprite_addr_7 == $e0"
}
!if (<sprite_addr_70) != $c0 {
    !error "Assertion failed: <sprite_addr_70 == $c0"
}
!if (<sprite_addr_71) != $e0 {
    !error "Assertion failed: <sprite_addr_71 == $e0"
}
!if (<sprite_addr_72) != $00 {
    !error "Assertion failed: <sprite_addr_72 == $00"
}
!if (<sprite_addr_73) != $20 {
    !error "Assertion failed: <sprite_addr_73 == $20"
}
!if (<sprite_addr_74) != $40 {
    !error "Assertion failed: <sprite_addr_74 == $40"
}
!if (<sprite_addr_75) != $60 {
    !error "Assertion failed: <sprite_addr_75 == $60"
}
!if (<sprite_addr_76) != $80 {
    !error "Assertion failed: <sprite_addr_76 == $80"
}
!if (<sprite_addr_77) != $a0 {
    !error "Assertion failed: <sprite_addr_77 == $a0"
}
!if (<sprite_addr_78) != $c0 {
    !error "Assertion failed: <sprite_addr_78 == $c0"
}
!if (<sprite_addr_79) != $e0 {
    !error "Assertion failed: <sprite_addr_79 == $e0"
}
!if (<sprite_addr_8) != $00 {
    !error "Assertion failed: <sprite_addr_8 == $00"
}
!if (<sprite_addr_80) != $00 {
    !error "Assertion failed: <sprite_addr_80 == $00"
}
!if (<sprite_addr_81) != $20 {
    !error "Assertion failed: <sprite_addr_81 == $20"
}
!if (<sprite_addr_82) != $40 {
    !error "Assertion failed: <sprite_addr_82 == $40"
}
!if (<sprite_addr_83) != $60 {
    !error "Assertion failed: <sprite_addr_83 == $60"
}
!if (<sprite_addr_84) != $80 {
    !error "Assertion failed: <sprite_addr_84 == $80"
}
!if (<sprite_addr_85) != $a0 {
    !error "Assertion failed: <sprite_addr_85 == $a0"
}
!if (<sprite_addr_86) != $c0 {
    !error "Assertion failed: <sprite_addr_86 == $c0"
}
!if (<sprite_addr_87) != $e0 {
    !error "Assertion failed: <sprite_addr_87 == $e0"
}
!if (<sprite_addr_88) != $00 {
    !error "Assertion failed: <sprite_addr_88 == $00"
}
!if (<sprite_addr_89) != $20 {
    !error "Assertion failed: <sprite_addr_89 == $20"
}
!if (<sprite_addr_9) != $20 {
    !error "Assertion failed: <sprite_addr_9 == $20"
}
!if (<sprite_addr_90) != $40 {
    !error "Assertion failed: <sprite_addr_90 == $40"
}
!if (<sprite_addr_91) != $60 {
    !error "Assertion failed: <sprite_addr_91 == $60"
}
!if (<sprite_addr_92) != $80 {
    !error "Assertion failed: <sprite_addr_92 == $80"
}
!if (<sprite_addr_93) != $a0 {
    !error "Assertion failed: <sprite_addr_93 == $a0"
}
!if (<sprite_addr_94) != $c0 {
    !error "Assertion failed: <sprite_addr_94 == $c0"
}
!if (<start_of_grid_screen_address) != $c0 {
    !error "Assertion failed: <start_of_grid_screen_address == $c0"
}
!if (>(l2c24)) != $2c {
    !error "Assertion failed: >(l2c24) == $2c"
}
!if (>(palette_block)) != $2a {
    !error "Assertion failed: >(palette_block) == $2a"
}
!if (>(set_clock_value)) != $1e {
    !error "Assertion failed: >(set_clock_value) == $1e"
}
!if (>(sprite_addr_0)) != $13 {
    !error "Assertion failed: >(sprite_addr_0) == $13"
}
!if (>backwards_status_bar) != $50 {
    !error "Assertion failed: >backwards_status_bar == $50"
}
!if (>big_rockford_destination_screen_address) != $58 {
    !error "Assertion failed: >big_rockford_destination_screen_address == $58"
}
!if (>big_rockford_sprite) != $34 {
    !error "Assertion failed: >big_rockford_sprite == $34"
}
!if (>data_sets) != $4c {
    !error "Assertion failed: >data_sets == $4c"
}
!if (>grid_of_screen_sprites) != $0c {
    !error "Assertion failed: >grid_of_screen_sprites == $0c"
}
!if (>sound1) != $56 {
    !error "Assertion failed: >sound1 == $56"
}
!if (>special_cave_0) != $47 {
    !error "Assertion failed: >special_cave_0 == $47"
}
!if (>special_cave_1) != $50 {
    !error "Assertion failed: >special_cave_1 == $50"
}
!if (>special_cave_2) != $50 {
    !error "Assertion failed: >special_cave_2 == $50"
}
!if (>special_cave_3) != $50 {
    !error "Assertion failed: >special_cave_3 == $50"
}
!if (>sprite_addr_0) != $13 {
    !error "Assertion failed: >sprite_addr_0 == $13"
}
!if (>sprite_addr_1) != $13 {
    !error "Assertion failed: >sprite_addr_1 == $13"
}
!if (>sprite_addr_10) != $14 {
    !error "Assertion failed: >sprite_addr_10 == $14"
}
!if (>sprite_addr_11) != $14 {
    !error "Assertion failed: >sprite_addr_11 == $14"
}
!if (>sprite_addr_12) != $14 {
    !error "Assertion failed: >sprite_addr_12 == $14"
}
!if (>sprite_addr_13) != $14 {
    !error "Assertion failed: >sprite_addr_13 == $14"
}
!if (>sprite_addr_14) != $14 {
    !error "Assertion failed: >sprite_addr_14 == $14"
}
!if (>sprite_addr_15) != $14 {
    !error "Assertion failed: >sprite_addr_15 == $14"
}
!if (>sprite_addr_16) != $15 {
    !error "Assertion failed: >sprite_addr_16 == $15"
}
!if (>sprite_addr_17) != $15 {
    !error "Assertion failed: >sprite_addr_17 == $15"
}
!if (>sprite_addr_18) != $15 {
    !error "Assertion failed: >sprite_addr_18 == $15"
}
!if (>sprite_addr_19) != $15 {
    !error "Assertion failed: >sprite_addr_19 == $15"
}
!if (>sprite_addr_2) != $13 {
    !error "Assertion failed: >sprite_addr_2 == $13"
}
!if (>sprite_addr_20) != $15 {
    !error "Assertion failed: >sprite_addr_20 == $15"
}
!if (>sprite_addr_21) != $15 {
    !error "Assertion failed: >sprite_addr_21 == $15"
}
!if (>sprite_addr_22) != $15 {
    !error "Assertion failed: >sprite_addr_22 == $15"
}
!if (>sprite_addr_23) != $15 {
    !error "Assertion failed: >sprite_addr_23 == $15"
}
!if (>sprite_addr_24) != $16 {
    !error "Assertion failed: >sprite_addr_24 == $16"
}
!if (>sprite_addr_25) != $16 {
    !error "Assertion failed: >sprite_addr_25 == $16"
}
!if (>sprite_addr_26) != $16 {
    !error "Assertion failed: >sprite_addr_26 == $16"
}
!if (>sprite_addr_27) != $16 {
    !error "Assertion failed: >sprite_addr_27 == $16"
}
!if (>sprite_addr_28) != $16 {
    !error "Assertion failed: >sprite_addr_28 == $16"
}
!if (>sprite_addr_29) != $16 {
    !error "Assertion failed: >sprite_addr_29 == $16"
}
!if (>sprite_addr_3) != $13 {
    !error "Assertion failed: >sprite_addr_3 == $13"
}
!if (>sprite_addr_30) != $16 {
    !error "Assertion failed: >sprite_addr_30 == $16"
}
!if (>sprite_addr_31) != $16 {
    !error "Assertion failed: >sprite_addr_31 == $16"
}
!if (>sprite_addr_32) != $17 {
    !error "Assertion failed: >sprite_addr_32 == $17"
}
!if (>sprite_addr_33) != $17 {
    !error "Assertion failed: >sprite_addr_33 == $17"
}
!if (>sprite_addr_34) != $17 {
    !error "Assertion failed: >sprite_addr_34 == $17"
}
!if (>sprite_addr_35) != $17 {
    !error "Assertion failed: >sprite_addr_35 == $17"
}
!if (>sprite_addr_36) != $17 {
    !error "Assertion failed: >sprite_addr_36 == $17"
}
!if (>sprite_addr_37) != $17 {
    !error "Assertion failed: >sprite_addr_37 == $17"
}
!if (>sprite_addr_38) != $17 {
    !error "Assertion failed: >sprite_addr_38 == $17"
}
!if (>sprite_addr_39) != $17 {
    !error "Assertion failed: >sprite_addr_39 == $17"
}
!if (>sprite_addr_4) != $13 {
    !error "Assertion failed: >sprite_addr_4 == $13"
}
!if (>sprite_addr_40) != $18 {
    !error "Assertion failed: >sprite_addr_40 == $18"
}
!if (>sprite_addr_41) != $18 {
    !error "Assertion failed: >sprite_addr_41 == $18"
}
!if (>sprite_addr_42) != $18 {
    !error "Assertion failed: >sprite_addr_42 == $18"
}
!if (>sprite_addr_43) != $18 {
    !error "Assertion failed: >sprite_addr_43 == $18"
}
!if (>sprite_addr_44) != $18 {
    !error "Assertion failed: >sprite_addr_44 == $18"
}
!if (>sprite_addr_45) != $18 {
    !error "Assertion failed: >sprite_addr_45 == $18"
}
!if (>sprite_addr_46) != $18 {
    !error "Assertion failed: >sprite_addr_46 == $18"
}
!if (>sprite_addr_47) != $18 {
    !error "Assertion failed: >sprite_addr_47 == $18"
}
!if (>sprite_addr_48) != $19 {
    !error "Assertion failed: >sprite_addr_48 == $19"
}
!if (>sprite_addr_49) != $19 {
    !error "Assertion failed: >sprite_addr_49 == $19"
}
!if (>sprite_addr_5) != $13 {
    !error "Assertion failed: >sprite_addr_5 == $13"
}
!if (>sprite_addr_50) != $19 {
    !error "Assertion failed: >sprite_addr_50 == $19"
}
!if (>sprite_addr_51) != $19 {
    !error "Assertion failed: >sprite_addr_51 == $19"
}
!if (>sprite_addr_52) != $19 {
    !error "Assertion failed: >sprite_addr_52 == $19"
}
!if (>sprite_addr_53) != $19 {
    !error "Assertion failed: >sprite_addr_53 == $19"
}
!if (>sprite_addr_54) != $19 {
    !error "Assertion failed: >sprite_addr_54 == $19"
}
!if (>sprite_addr_55) != $19 {
    !error "Assertion failed: >sprite_addr_55 == $19"
}
!if (>sprite_addr_56) != $1a {
    !error "Assertion failed: >sprite_addr_56 == $1a"
}
!if (>sprite_addr_57) != $1a {
    !error "Assertion failed: >sprite_addr_57 == $1a"
}
!if (>sprite_addr_58) != $1a {
    !error "Assertion failed: >sprite_addr_58 == $1a"
}
!if (>sprite_addr_59) != $1a {
    !error "Assertion failed: >sprite_addr_59 == $1a"
}
!if (>sprite_addr_6) != $13 {
    !error "Assertion failed: >sprite_addr_6 == $13"
}
!if (>sprite_addr_60) != $1a {
    !error "Assertion failed: >sprite_addr_60 == $1a"
}
!if (>sprite_addr_61) != $1a {
    !error "Assertion failed: >sprite_addr_61 == $1a"
}
!if (>sprite_addr_62) != $1a {
    !error "Assertion failed: >sprite_addr_62 == $1a"
}
!if (>sprite_addr_63) != $1a {
    !error "Assertion failed: >sprite_addr_63 == $1a"
}
!if (>sprite_addr_64) != $1b {
    !error "Assertion failed: >sprite_addr_64 == $1b"
}
!if (>sprite_addr_65) != $1b {
    !error "Assertion failed: >sprite_addr_65 == $1b"
}
!if (>sprite_addr_66) != $1b {
    !error "Assertion failed: >sprite_addr_66 == $1b"
}
!if (>sprite_addr_67) != $1b {
    !error "Assertion failed: >sprite_addr_67 == $1b"
}
!if (>sprite_addr_68) != $1b {
    !error "Assertion failed: >sprite_addr_68 == $1b"
}
!if (>sprite_addr_69) != $1b {
    !error "Assertion failed: >sprite_addr_69 == $1b"
}
!if (>sprite_addr_7) != $13 {
    !error "Assertion failed: >sprite_addr_7 == $13"
}
!if (>sprite_addr_70) != $1b {
    !error "Assertion failed: >sprite_addr_70 == $1b"
}
!if (>sprite_addr_71) != $1b {
    !error "Assertion failed: >sprite_addr_71 == $1b"
}
!if (>sprite_addr_72) != $1c {
    !error "Assertion failed: >sprite_addr_72 == $1c"
}
!if (>sprite_addr_73) != $1c {
    !error "Assertion failed: >sprite_addr_73 == $1c"
}
!if (>sprite_addr_74) != $1c {
    !error "Assertion failed: >sprite_addr_74 == $1c"
}
!if (>sprite_addr_75) != $1c {
    !error "Assertion failed: >sprite_addr_75 == $1c"
}
!if (>sprite_addr_76) != $1c {
    !error "Assertion failed: >sprite_addr_76 == $1c"
}
!if (>sprite_addr_77) != $1c {
    !error "Assertion failed: >sprite_addr_77 == $1c"
}
!if (>sprite_addr_78) != $1c {
    !error "Assertion failed: >sprite_addr_78 == $1c"
}
!if (>sprite_addr_79) != $1c {
    !error "Assertion failed: >sprite_addr_79 == $1c"
}
!if (>sprite_addr_8) != $14 {
    !error "Assertion failed: >sprite_addr_8 == $14"
}
!if (>sprite_addr_80) != $1d {
    !error "Assertion failed: >sprite_addr_80 == $1d"
}
!if (>sprite_addr_81) != $1d {
    !error "Assertion failed: >sprite_addr_81 == $1d"
}
!if (>sprite_addr_82) != $1d {
    !error "Assertion failed: >sprite_addr_82 == $1d"
}
!if (>sprite_addr_83) != $1d {
    !error "Assertion failed: >sprite_addr_83 == $1d"
}
!if (>sprite_addr_84) != $1d {
    !error "Assertion failed: >sprite_addr_84 == $1d"
}
!if (>sprite_addr_85) != $1d {
    !error "Assertion failed: >sprite_addr_85 == $1d"
}
!if (>sprite_addr_86) != $1d {
    !error "Assertion failed: >sprite_addr_86 == $1d"
}
!if (>sprite_addr_87) != $1d {
    !error "Assertion failed: >sprite_addr_87 == $1d"
}
!if (>sprite_addr_88) != $1e {
    !error "Assertion failed: >sprite_addr_88 == $1e"
}
!if (>sprite_addr_89) != $1e {
    !error "Assertion failed: >sprite_addr_89 == $1e"
}
!if (>sprite_addr_9) != $14 {
    !error "Assertion failed: >sprite_addr_9 == $14"
}
!if (>sprite_addr_90) != $1e {
    !error "Assertion failed: >sprite_addr_90 == $1e"
}
!if (>sprite_addr_91) != $1e {
    !error "Assertion failed: >sprite_addr_91 == $1e"
}
!if (>sprite_addr_92) != $1e {
    !error "Assertion failed: >sprite_addr_92 == $1e"
}
!if (>sprite_addr_93) != $1e {
    !error "Assertion failed: >sprite_addr_93 == $1e"
}
!if (>sprite_addr_94) != $1e {
    !error "Assertion failed: >sprite_addr_94 == $1e"
}
!if (>start_of_grid_screen_address) != $5b {
    !error "Assertion failed: >start_of_grid_screen_address == $5b"
}
!if (>tile_map) != $32 {
    !error "Assertion failed: >tile_map == $32"
}
!if (data_10_0) != $4028 {
    !error "Assertion failed: data_10_0 == $4028"
}
!if (data_10_1) != $4665 {
    !error "Assertion failed: data_10_1 == $4665"
}
!if (data_10_2) != $42ae {
    !error "Assertion failed: data_10_2 == $42ae"
}
!if (data_10_3) != $468a {
    !error "Assertion failed: data_10_3 == $468a"
}
!if (data_10_4) != $411b {
    !error "Assertion failed: data_10_4 == $411b"
}
!if (data_10_5) != $46bc {
    !error "Assertion failed: data_10_5 == $46bc"
}
!if (data_10_6) != $4172 {
    !error "Assertion failed: data_10_6 == $4172"
}
!if (data_10_7) != $3e00 {
    !error "Assertion failed: data_10_7 == $3e00"
}
!if (data_10_8) != $4246 {
    !error "Assertion failed: data_10_8 == $4246"
}
!if (data_10_9) != $3e43 {
    !error "Assertion failed: data_10_9 == $3e43"
}
!if (data_11_0) != $4028 {
    !error "Assertion failed: data_11_0 == $4028"
}
!if (data_11_1) != $4484 {
    !error "Assertion failed: data_11_1 == $4484"
}
!if (data_11_2) != $43cd {
    !error "Assertion failed: data_11_2 == $43cd"
}
!if (data_11_3) != $44b8 {
    !error "Assertion failed: data_11_3 == $44b8"
}
!if (data_11_4) != $4389 {
    !error "Assertion failed: data_11_4 == $4389"
}
!if (data_11_5) != $44ef {
    !error "Assertion failed: data_11_5 == $44ef"
}
!if (data_11_6) != $c22d {
    !error "Assertion failed: data_11_6 == $c22d"
}
!if (data_11_7) != $4511 {
    !error "Assertion failed: data_11_7 == $4511"
}
!if (data_11_8) != $c00d {
    !error "Assertion failed: data_11_8 == $c00d"
}
!if (data_11_9) != $453d {
    !error "Assertion failed: data_11_9 == $453d"
}
!if (data_12_0) != $43cd {
    !error "Assertion failed: data_12_0 == $43cd"
}
!if (data_12_1) != $41f1 {
    !error "Assertion failed: data_12_1 == $41f1"
}
!if (data_12_2) != $402f {
    !error "Assertion failed: data_12_2 == $402f"
}
!if (data_12_3) != $423e {
    !error "Assertion failed: data_12_3 == $423e"
}
!if (data_12_4) != $41fd {
    !error "Assertion failed: data_12_4 == $41fd"
}
!if (data_12_5) != $426e {
    !error "Assertion failed: data_12_5 == $426e"
}
!if (data_12_6) != $41b4 {
    !error "Assertion failed: data_12_6 == $41b4"
}
!if (data_12_7) != $42a6 {
    !error "Assertion failed: data_12_7 == $42a6"
}
!if (data_12_8) != $4170 {
    !error "Assertion failed: data_12_8 == $4170"
}
!if (data_12_9) != $3c00 {
    !error "Assertion failed: data_12_9 == $3c00"
}
!if (data_13_0) != $43cd {
    !error "Assertion failed: data_13_0 == $43cd"
}
!if (data_13_1) != $4324 {
    !error "Assertion failed: data_13_1 == $4324"
}
!if (data_13_2) != $3fb3 {
    !error "Assertion failed: data_13_2 == $3fb3"
}
!if (data_13_3) != $4252 {
    !error "Assertion failed: data_13_3 == $4252"
}
!if (data_13_4) != $433b {
    !error "Assertion failed: data_13_4 == $433b"
}
!if (data_13_5) != $4155 {
    !error "Assertion failed: data_13_5 == $4155"
}
!if (data_13_6) != $3f26 {
    !error "Assertion failed: data_13_6 == $3f26"
}
!if (data_13_7) != $4354 {
    !error "Assertion failed: data_13_7 == $4354"
}
!if (data_1_0) != $439d {
    !error "Assertion failed: data_1_0 == $439d"
}
!if (data_1_1) != $436f {
    !error "Assertion failed: data_1_1 == $436f"
}
!if (data_1_2) != $40d3 {
    !error "Assertion failed: data_1_2 == $40d3"
}
!if (data_1_3) != $43bb {
    !error "Assertion failed: data_1_3 == $43bb"
}
!if (data_1_4) != $c021 {
    !error "Assertion failed: data_1_4 == $c021"
}
!if (data_1_5) != $43ea {
    !error "Assertion failed: data_1_5 == $43ea"
}
!if (data_1_6) != $422c {
    !error "Assertion failed: data_1_6 == $422c"
}
!if (data_1_7) != $4419 {
    !error "Assertion failed: data_1_7 == $4419"
}
!if (data_1_8) != $435e {
    !error "Assertion failed: data_1_8 == $435e"
}
!if (data_1_9) != $4454 {
    !error "Assertion failed: data_1_9 == $4454"
}
!if (data_2_0) != $4252 {
    !error "Assertion failed: data_2_0 == $4252"
}
!if (data_2_1) != $4579 {
    !error "Assertion failed: data_2_1 == $4579"
}
!if (data_2_2) != $4028 {
    !error "Assertion failed: data_2_2 == $4028"
}
!if (data_2_3) != $45b0 {
    !error "Assertion failed: data_2_3 == $45b0"
}
!if (data_2_4) != $43cd {
    !error "Assertion failed: data_2_4 == $43cd"
}
!if (data_2_5) != $45de {
    !error "Assertion failed: data_2_5 == $45de"
}
!if (data_2_6) != $43e7 {
    !error "Assertion failed: data_2_6 == $43e7"
}
!if (data_2_7) != $460f {
    !error "Assertion failed: data_2_7 == $460f"
}
!if (data_2_8) != $435a {
    !error "Assertion failed: data_2_8 == $435a"
}
!if (data_2_9) != $463e {
    !error "Assertion failed: data_2_9 == $463e"
}
!if (data_3_0) != $4028 {
    !error "Assertion failed: data_3_0 == $4028"
}
!if (data_3_1) != $45e7 {
    !error "Assertion failed: data_3_1 == $45e7"
}
!if (data_3_2) != $4300 {
    !error "Assertion failed: data_3_2 == $4300"
}
!if (data_3_3) != $41b1 {
    !error "Assertion failed: data_3_3 == $41b1"
}
!if (data_3_4) != $41ac {
    !error "Assertion failed: data_3_4 == $41ac"
}
!if (data_3_5) != $4307 {
    !error "Assertion failed: data_3_5 == $4307"
}
!if (data_3_6) != $4392 {
    !error "Assertion failed: data_3_6 == $4392"
}
!if (data_3_7) != $431b {
    !error "Assertion failed: data_3_7 == $431b"
}
!if (data_4_0) != $4028 {
    !error "Assertion failed: data_4_0 == $4028"
}
!if (data_4_1) != $3e69 {
    !error "Assertion failed: data_4_1 == $3e69"
}
!if (data_4_2) != $4028 {
    !error "Assertion failed: data_4_2 == $4028"
}
!if (data_4_3) != $3ea1 {
    !error "Assertion failed: data_4_3 == $3ea1"
}
!if (data_4_4) != $4028 {
    !error "Assertion failed: data_4_4 == $4028"
}
!if (data_4_5) != $3eda {
    !error "Assertion failed: data_4_5 == $3eda"
}
!if (data_4_6) != $4028 {
    !error "Assertion failed: data_4_6 == $4028"
}
!if (data_4_7) != $3f29 {
    !error "Assertion failed: data_4_7 == $3f29"
}
!if (data_4_8) != $4028 {
    !error "Assertion failed: data_4_8 == $4028"
}
!if (data_4_9) != $3f5e {
    !error "Assertion failed: data_4_9 == $3f5e"
}
!if (data_5_0) != $4028 {
    !error "Assertion failed: data_5_0 == $4028"
}
!if (data_5_1) != $436d {
    !error "Assertion failed: data_5_1 == $436d"
}
!if (data_5_2) != $c309 {
    !error "Assertion failed: data_5_2 == $c309"
}
!if (data_5_3) != $414d {
    !error "Assertion failed: data_5_3 == $414d"
}
!if (data_5_4) != $c30e {
    !error "Assertion failed: data_5_4 == $c30e"
}
!if (data_6_0) != $411b {
    !error "Assertion failed: data_6_0 == $411b"
}
!if (data_6_1) != $3cff {
    !error "Assertion failed: data_6_1 == $3cff"
}
!if (data_6_2) != $42ee {
    !error "Assertion failed: data_6_2 == $42ee"
}
!if (data_6_3) != $3d2a {
    !error "Assertion failed: data_6_3 == $3d2a"
}
!if (data_6_4) != $412a {
    !error "Assertion failed: data_6_4 == $412a"
}
!if (data_6_5) != $3d5a {
    !error "Assertion failed: data_6_5 == $3d5a"
}
!if (data_6_6) != $412f {
    !error "Assertion failed: data_6_6 == $412f"
}
!if (data_6_7) != $3d88 {
    !error "Assertion failed: data_6_7 == $3d88"
}
!if (data_6_8) != $4261 {
    !error "Assertion failed: data_6_8 == $4261"
}
!if (data_6_9) != $3dad {
    !error "Assertion failed: data_6_9 == $3dad"
}
!if (data_7_0) != $43cd {
    !error "Assertion failed: data_7_0 == $43cd"
}
!if (data_7_1) != $3c46 {
    !error "Assertion failed: data_7_1 == $3c46"
}
!if (data_7_2) != $40bf {
    !error "Assertion failed: data_7_2 == $40bf"
}
!if (data_7_3) != $3c70 {
    !error "Assertion failed: data_7_3 == $3c70"
}
!if (data_7_4) != $c00d {
    !error "Assertion failed: data_7_4 == $c00d"
}
!if (data_7_5) != $3c9b {
    !error "Assertion failed: data_7_5 == $3c9b"
}
!if (data_7_6) != $4257 {
    !error "Assertion failed: data_7_6 == $4257"
}
!if (data_7_7) != $3cbf {
    !error "Assertion failed: data_7_7 == $3cbf"
}
!if (data_7_8) != $4037 {
    !error "Assertion failed: data_7_8 == $4037"
}
!if (data_7_9) != $3cda {
    !error "Assertion failed: data_7_9 == $3cda"
}
!if (data_8_0) != $40ae {
    !error "Assertion failed: data_8_0 == $40ae"
}
!if (data_8_1) != $40f5 {
    !error "Assertion failed: data_8_1 == $40f5"
}
!if (data_8_2) != $4266 {
    !error "Assertion failed: data_8_2 == $4266"
}
!if (data_8_3) != $4140 {
    !error "Assertion failed: data_8_3 == $4140"
}
!if (data_8_4) != $40dd {
    !error "Assertion failed: data_8_4 == $40dd"
}
!if (data_8_5) != $416c {
    !error "Assertion failed: data_8_5 == $416c"
}
!if (data_8_6) != $bf06 {
    !error "Assertion failed: data_8_6 == $bf06"
}
!if (data_8_7) != $4199 {
    !error "Assertion failed: data_8_7 == $4199"
}
!if (data_8_8) != $3f82 {
    !error "Assertion failed: data_8_8 == $3f82"
}
!if (data_8_9) != $41c4 {
    !error "Assertion failed: data_8_9 == $41c4"
}
!if (data_9_0) != $4028 {
    !error "Assertion failed: data_9_0 == $4028"
}
!if (data_9_1) != $3f92 {
    !error "Assertion failed: data_9_1 == $3f92"
}
!if (data_9_2) != $c00d {
    !error "Assertion failed: data_9_2 == $c00d"
}
!if (data_9_3) != $3fc9 {
    !error "Assertion failed: data_9_3 == $3fc9"
}
!if (data_9_4) != $4246 {
    !error "Assertion failed: data_9_4 == $4246"
}
!if (data_9_5) != $4015 {
    !error "Assertion failed: data_9_5 == $4015"
}
!if (data_9_6) != $4109 {
    !error "Assertion failed: data_9_6 == $4109"
}
!if (data_9_7) != $4052 {
    !error "Assertion failed: data_9_7 == $4052"
}
!if (data_9_8) != $40ae {
    !error "Assertion failed: data_9_8 == $40ae"
}
!if (data_9_9) != $40b4 {
    !error "Assertion failed: data_9_9 == $40b4"
}
!if (inkey_key_b) != $9b {
    !error "Assertion failed: inkey_key_b == $9b"
}
!if (inkey_key_colon) != $b7 {
    !error "Assertion failed: inkey_key_colon == $b7"
}
!if (inkey_key_escape) != $8f {
    !error "Assertion failed: inkey_key_escape == $8f"
}
!if (inkey_key_return) != $b6 {
    !error "Assertion failed: inkey_key_return == $b6"
}
!if (inkey_key_slash) != $97 {
    !error "Assertion failed: inkey_key_slash == $97"
}
!if (inkey_key_space) != $9d {
    !error "Assertion failed: inkey_key_space == $9d"
}
!if (inkey_key_x) != $bd {
    !error "Assertion failed: inkey_key_x == $bd"
}
!if (inkey_key_z) != $9e {
    !error "Assertion failed: inkey_key_z == $9e"
}
!if (opcode_lda_abs_y) != $b9 {
    !error "Assertion failed: opcode_lda_abs_y == $b9"
}
!if (opcode_ldy_abs) != $ac {
    !error "Assertion failed: opcode_ldy_abs == $ac"
}
!if (osbyte_flush_buffer_class) != $0f {
    !error "Assertion failed: osbyte_flush_buffer_class == $0f"
}
!if (osbyte_inkey) != $81 {
    !error "Assertion failed: osbyte_inkey == $81"
}
!if (osbyte_read_adc_or_get_buffer_status) != $80 {
    !error "Assertion failed: osbyte_read_adc_or_get_buffer_status == $80"
}
!if (osword_read_clock) != $01 {
    !error "Assertion failed: osword_read_clock == $01"
}
!if (osword_sound) != $07 {
    !error "Assertion failed: osword_sound == $07"
}
!if (osword_write_clock) != $02 {
    !error "Assertion failed: osword_write_clock == $02"
}
!if (osword_write_palette) != $0c {
    !error "Assertion failed: osword_write_palette == $0c"
}
!if (sprite_0) != $32 {
    !error "Assertion failed: sprite_0 == $32"
}
!if (sprite_1) != $33 {
    !error "Assertion failed: sprite_1 == $33"
}
!if (sprite_2) != $34 {
    !error "Assertion failed: sprite_2 == $34"
}
!if (sprite_3) != $35 {
    !error "Assertion failed: sprite_3 == $35"
}
!if (sprite_4) != $36 {
    !error "Assertion failed: sprite_4 == $36"
}
!if (sprite_5) != $37 {
    !error "Assertion failed: sprite_5 == $37"
}
!if (sprite_6) != $38 {
    !error "Assertion failed: sprite_6 == $38"
}
!if (sprite_7) != $39 {
    !error "Assertion failed: sprite_7 == $39"
}
!if (sprite_8) != $3a {
    !error "Assertion failed: sprite_8 == $3a"
}
!if (sprite_9) != $3b {
    !error "Assertion failed: sprite_9 == $3b"
}
!if (sprite_comma) != $3f {
    !error "Assertion failed: sprite_comma == $3f"
}
!if (sprite_diamond1) != $03 {
    !error "Assertion failed: sprite_diamond1 == $03"
}
!if (sprite_slash) != $3e {
    !error "Assertion failed: sprite_slash == $3e"
}
!if (sprite_space) != $00 {
    !error "Assertion failed: sprite_space == $00"
}
!if (total_caves) != $14 {
    !error "Assertion failed: total_caves == $14"
}
