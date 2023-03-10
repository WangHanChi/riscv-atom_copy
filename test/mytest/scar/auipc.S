.global _start
_start:

auipc x1, 0x00000433
auipc x2, 0x00000a44
auipc x3, 0x0000032d
auipc x4, 0x00000010
auipc x5, 0x00000004
auipc x6, 0x0000046b
auipc x7, 0x00000301
auipc x8, 0x00000128

# Subtract initial PC offset
la x9, _start
sub x1, x1, x9
sub x2, x2, x9
sub x3, x3, x9
sub x4, x4, x9
sub x5, x5, x9
sub x6, x6, x9
sub x7, x7, x9
sub x8, x8, x9

ebreak

# $-ASSERTIONS-$
# eq x1 0x00433000
# eq x2 0x00a44004
# eq x3 0x0032d008
# eq x4 0x0001000c
# eq x5 0x00004010
# eq x6 0x0046b014
# eq x7 0x00301018
# eq x8 0x0012801c
