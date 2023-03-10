// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.5.1
// timestamp : Wed Aug  4 06:39:00 2021 GMT
// usage     : riscv_ctg \
//                  --cgf /home/bilalsakhawat/dev2/riscv-ctg/sample_cgfs/dataset.cgf \
//                  --cgf /home/bilalsakhawat/dev2/riscv-ctg/sample_cgfs/rv32ec.cgf \
//                  --base-isa rv32e \
//                  --randomize
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the c.addi16sp instruction of the RISC-V C extension for the caddi16sp covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32EC")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*E.*C.*) ;def RVTEST_E = True;def TEST_CASE_1=True;",caddi16sp)

RVTEST_SIGBASE( x1,signature_x1_1)

inst_0:
// rd==x2, imm_val == -512, rs1_val == 4194304, rs1_val != imm_val, rs1_val > 0 and imm_val < 0
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x400000; immval:-0x200
TEST_CI_OP( c.addi16sp, x2, 0x3ffe00, 0x400000, -0x200, x1, 0, x3)

inst_1:
// rs1_val == 2147483647, imm_val == 128, rs1_val > 0 and imm_val > 0, rs1_val == (2**(xlen-1)-1)
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x7fffffff; immval:0x80
TEST_CI_OP( c.addi16sp, x2, 0x8000007f, 0x7fffffff, 0x80, x1, 4, x3)

inst_2:
// rs1_val == -1073741825, rs1_val < 0 and imm_val > 0
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x40000001; immval:0x60
TEST_CI_OP( c.addi16sp, x2, 0xc000005f, -0x40000001, 0x60, x1, 8, x3)

inst_3:
// rs1_val == -536870913, rs1_val < 0 and imm_val < 0
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x20000001; immval:-0x60
TEST_CI_OP( c.addi16sp, x2, 0xdfffff9f, -0x20000001, -0x60, x1, 12, x3)

inst_4:
// rs1_val == -268435457, imm_val == -352
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x10000001; immval:-0x160
TEST_CI_OP( c.addi16sp, x2, 0xeffffe9f, -0x10000001, -0x160, x1, 16, x3)

inst_5:
// rs1_val == -134217729, imm_val == -80
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x8000001; immval:-0x50
TEST_CI_OP( c.addi16sp, x2, 0xf7ffffaf, -0x8000001, -0x50, x1, 20, x3)

inst_6:
// rs1_val == -67108865, imm_val == -144
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x4000001; immval:-0x90
TEST_CI_OP( c.addi16sp, x2, 0xfbffff6f, -0x4000001, -0x90, x1, 24, x3)

inst_7:
// rs1_val == -33554433, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x2000001; immval:0xf0
TEST_CI_OP( c.addi16sp, x2, 0xfe0000ef, -0x2000001, 0xf0, x1, 28, x3)

inst_8:
// rs1_val == -16777217, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x1000001; immval:-0x80
TEST_CI_OP( c.addi16sp, x2, 0xfeffff7f, -0x1000001, -0x80, x1, 32, x3)

inst_9:
// rs1_val == -8388609, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x800001; immval:-0x70
TEST_CI_OP( c.addi16sp, x2, 0xff7fff8f, -0x800001, -0x70, x1, 36, x3)

inst_10:
// rs1_val == -4194305, imm_val == 64
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x400001; immval:0x40
TEST_CI_OP( c.addi16sp, x2, 0xffc0003f, -0x400001, 0x40, x1, 40, x3)

inst_11:
// rs1_val == -2097153, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x200001; immval:-0x160
TEST_CI_OP( c.addi16sp, x2, 0xffdffe9f, -0x200001, -0x160, x1, 44, x3)

inst_12:
// rs1_val == -1048577, imm_val == 16
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x100001; immval:0x10
TEST_CI_OP( c.addi16sp, x2, 0xfff0000f, -0x100001, 0x10, x1, 48, x3)

inst_13:
// rs1_val == -524289, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x80001; immval:0x10
TEST_CI_OP( c.addi16sp, x2, 0xfff8000f, -0x80001, 0x10, x1, 52, x3)

inst_14:
// rs1_val == -262145, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x40001; immval:-0x100
TEST_CI_OP( c.addi16sp, x2, 0xfffbfeff, -0x40001, -0x100, x1, 56, x3)

inst_15:
// rs1_val == -131073, imm_val == 336
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x20001; immval:0x150
TEST_CI_OP( c.addi16sp, x2, 0xfffe014f, -0x20001, 0x150, x1, 60, x3)

inst_16:
// rs1_val == -65537, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x10001; immval:-0x50
TEST_CI_OP( c.addi16sp, x2, 0xfffeffaf, -0x10001, -0x50, x1, 64, x3)

inst_17:
// rs1_val == -32769, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x8001; immval:0x40
TEST_CI_OP( c.addi16sp, x2, 0xffff803f, -0x8001, 0x40, x1, 68, x3)

inst_18:
// rs1_val == -16385, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x4001; immval:0x50
TEST_CI_OP( c.addi16sp, x2, 0xffffc04f, -0x4001, 0x50, x1, 72, x3)

inst_19:
// rs1_val == -8193, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x2001; immval:-0x40
TEST_CI_OP( c.addi16sp, x2, 0xffffdfbf, -0x2001, -0x40, x1, 76, x3)

inst_20:
// rs1_val == -4097, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x1001; immval:0x80
TEST_CI_OP( c.addi16sp, x2, 0xfffff07f, -0x1001, 0x80, x1, 80, x3)

inst_21:
// rs1_val == -2049, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x801; immval:0x80
TEST_CI_OP( c.addi16sp, x2, 0xfffff87f, -0x801, 0x80, x1, 84, x3)

inst_22:
// rs1_val == -1025, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x401; immval:-0x10
TEST_CI_OP( c.addi16sp, x2, 0xfffffbef, -0x401, -0x10, x1, 88, x3)

inst_23:
// rs1_val == -513, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x201; immval:0x150
TEST_CI_OP( c.addi16sp, x2, 0xffffff4f, -0x201, 0x150, x1, 92, x3)

inst_24:
// rs1_val == -257, imm_val == -32
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x101; immval:-0x20
TEST_CI_OP( c.addi16sp, x2, 0xfffffedf, -0x101, -0x20, x1, 96, x3)

inst_25:
// rs1_val == -129, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x81; immval:-0x20
TEST_CI_OP( c.addi16sp, x2, 0xffffff5f, -0x81, -0x20, x1, 100, x3)

inst_26:
// rs1_val == -65, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x41; immval:0x90
TEST_CI_OP( c.addi16sp, x2, 0x4f, -0x41, 0x90, x1, 104, x3)

inst_27:
// rs1_val == -33, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x21; immval:0x10
TEST_CI_OP( c.addi16sp, x2, 0xffffffef, -0x21, 0x10, x1, 108, x3)

inst_28:
// rs1_val == -17, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x11; immval:-0x160
TEST_CI_OP( c.addi16sp, x2, 0xfffffe8f, -0x11, -0x160, x1, 112, x3)

inst_29:
// rs1_val == -9, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x9; immval:-0x60
TEST_CI_OP( c.addi16sp, x2, 0xffffff97, -0x9, -0x60, x1, 116, x3)

inst_30:
// rs1_val == -5, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x5; immval:-0x100
TEST_CI_OP( c.addi16sp, x2, 0xfffffefb, -0x5, -0x100, x1, 120, x3)

inst_31:
// rs1_val == -3, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x3; immval:-0x90
TEST_CI_OP( c.addi16sp, x2, 0xffffff6d, -0x3, -0x90, x1, 124, x3)

inst_32:
// rs1_val == -2, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x2; immval:0x70
TEST_CI_OP( c.addi16sp, x2, 0x6e, -0x2, 0x70, x1, 128, x3)

inst_33:
// imm_val == 496, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x400000; immval:0x1f0
TEST_CI_OP( c.addi16sp, x2, 0x4001f0, 0x400000, 0x1f0, x1, 132, x3)

inst_34:
// imm_val == -272, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x5; immval:-0x110
TEST_CI_OP( c.addi16sp, x2, 0xfffffeeb, -0x5, -0x110, x1, 136, x3)

inst_35:
// imm_val == -48, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x400001; immval:-0x30
TEST_CI_OP( c.addi16sp, x2, 0xffbfffcf, -0x400001, -0x30, x1, 140, x3)

inst_36:
// rs1_val == -2147483648, rs1_val == (-2**(xlen-1))
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x80000000; immval:-0xa0
TEST_CI_OP( c.addi16sp, x2, 0x7fffff60, -0x80000000, -0xa0, x1, 144, x3)

inst_37:
// rs1_val == 1073741824, imm_val == 256
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x40000000; immval:0x100
TEST_CI_OP( c.addi16sp, x2, 0x40000100, 0x40000000, 0x100, x1, 148, x3)

inst_38:
// rs1_val == 536870912, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x20000000; immval:-0x10
TEST_CI_OP( c.addi16sp, x2, 0x1ffffff0, 0x20000000, -0x10, x1, 152, x3)

inst_39:
// rs1_val == 268435456, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x10000000; immval:0x30
TEST_CI_OP( c.addi16sp, x2, 0x10000030, 0x10000000, 0x30, x1, 156, x3)

inst_40:
// rs1_val == 134217728, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x8000000; immval:-0xa0
TEST_CI_OP( c.addi16sp, x2, 0x7ffff60, 0x8000000, -0xa0, x1, 160, x3)

inst_41:
// rs1_val == 64, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x40; immval:0x80
TEST_CI_OP( c.addi16sp, x2, 0xc0, 0x40, 0x80, x1, 164, x3)

inst_42:
// rs1_val == 32, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x20; immval:0x1f0
TEST_CI_OP( c.addi16sp, x2, 0x210, 0x20, 0x1f0, x1, 168, x3)

inst_43:
// rs1_val == 16, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x10; immval:0x1f0
TEST_CI_OP( c.addi16sp, x2, 0x200, 0x10, 0x1f0, x1, 172, x3)

inst_44:
// rs1_val == 8, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x8; immval:0x70
TEST_CI_OP( c.addi16sp, x2, 0x78, 0x8, 0x70, x1, 176, x3)

inst_45:
// rs1_val == 4, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x4; immval:-0x110
TEST_CI_OP( c.addi16sp, x2, 0xfffffef4, 0x4, -0x110, x1, 180, x3)

inst_46:
// rs1_val == 2, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x2; immval:-0x50
TEST_CI_OP( c.addi16sp, x2, 0xffffffb2, 0x2, -0x50, x1, 184, x3)

inst_47:
// rs1_val == 1, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x1; immval:0x50
TEST_CI_OP( c.addi16sp, x2, 0x51, 0x1, 0x50, x1, 188, x3)

inst_48:
// imm_val == 32, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x9; immval:0x20
TEST_CI_OP( c.addi16sp, x2, 0x29, 0x9, 0x20, x1, 192, x3)

inst_49:
// rs1_val == -1431655766, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:-0x55555556; immval:0x30
TEST_CI_OP( c.addi16sp, x2, 0xaaaaaada, -0x55555556, 0x30, x1, 196, x3)

inst_50:
// rs1_val == 1431655765, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x55555555; immval:0x60
TEST_CI_OP( c.addi16sp, x2, 0x555555b5, 0x55555555, 0x60, x1, 200, x3)

inst_51:
// rs1_val == 0, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0; immval:-0x100
TEST_CI_OP( c.addi16sp, x2, 0xffffff00, 0x0, -0x100, x1, 204, x3)

inst_52:
// rs1_val == imm_val, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x40; immval:0x40
TEST_CI_OP( c.addi16sp, x2, 0x80, 0x40, 0x40, x1, 208, x3)

inst_53:
// rs1_val == 67108864, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x4000000; immval:-0x200
TEST_CI_OP( c.addi16sp, x2, 0x3fffe00, 0x4000000, -0x200, x1, 212, x3)

inst_54:
// rs1_val == 33554432, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x2000000; immval:-0x200
TEST_CI_OP( c.addi16sp, x2, 0x1fffe00, 0x2000000, -0x200, x1, 216, x3)

inst_55:
// rs1_val == 16777216, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x1000000; immval:-0x40
TEST_CI_OP( c.addi16sp, x2, 0xffffc0, 0x1000000, -0x40, x1, 220, x3)

inst_56:
// rs1_val == 8388608, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x800000; immval:0x10
TEST_CI_OP( c.addi16sp, x2, 0x800010, 0x800000, 0x10, x1, 224, x3)

inst_57:
// rs1_val == 2097152, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x200000; immval:0x20
TEST_CI_OP( c.addi16sp, x2, 0x200020, 0x200000, 0x20, x1, 228, x3)

inst_58:
// rs1_val == 1048576, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x100000; immval:0x90
TEST_CI_OP( c.addi16sp, x2, 0x100090, 0x100000, 0x90, x1, 232, x3)

inst_59:
// rs1_val == 524288, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x80000; immval:0x50
TEST_CI_OP( c.addi16sp, x2, 0x80050, 0x80000, 0x50, x1, 236, x3)

inst_60:
// rs1_val == 262144, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x40000; immval:-0x160
TEST_CI_OP( c.addi16sp, x2, 0x3fea0, 0x40000, -0x160, x1, 240, x3)

inst_61:
// rs1_val == 131072, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x20000; immval:-0xa0
TEST_CI_OP( c.addi16sp, x2, 0x1ff60, 0x20000, -0xa0, x1, 244, x3)

inst_62:
// rs1_val == 65536, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x10000; immval:0x150
TEST_CI_OP( c.addi16sp, x2, 0x10150, 0x10000, 0x150, x1, 248, x3)

inst_63:
// rs1_val == 32768, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x8000; immval:0x1f0
TEST_CI_OP( c.addi16sp, x2, 0x81f0, 0x8000, 0x1f0, x1, 252, x3)

inst_64:
// rs1_val == 16384, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x4000; immval:0x40
TEST_CI_OP( c.addi16sp, x2, 0x4040, 0x4000, 0x40, x1, 256, x3)

inst_65:
// rs1_val == 8192, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x2000; immval:0x80
TEST_CI_OP( c.addi16sp, x2, 0x2080, 0x2000, 0x80, x1, 260, x3)

inst_66:
// rs1_val == 4096, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x1000; immval:0x1f0
TEST_CI_OP( c.addi16sp, x2, 0x11f0, 0x1000, 0x1f0, x1, 264, x3)

inst_67:
// rs1_val == 2048, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x800; immval:0x100
TEST_CI_OP( c.addi16sp, x2, 0x900, 0x800, 0x100, x1, 268, x3)

inst_68:
// rs1_val == 1024, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x400; immval:0x1f0
TEST_CI_OP( c.addi16sp, x2, 0x5f0, 0x400, 0x1f0, x1, 272, x3)

inst_69:
// rs1_val == 512, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x200; immval:0x150
TEST_CI_OP( c.addi16sp, x2, 0x350, 0x200, 0x150, x1, 276, x3)

inst_70:
// rs1_val == 256, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x100; immval:0x1f0
TEST_CI_OP( c.addi16sp, x2, 0x2f0, 0x100, 0x1f0, x1, 280, x3)

inst_71:
// rs1_val == 128, 
// opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x80; immval:0x30
TEST_CI_OP( c.addi16sp, x2, 0xb0, 0x80, 0x30, x1, 284, x3)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN


signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 72*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
