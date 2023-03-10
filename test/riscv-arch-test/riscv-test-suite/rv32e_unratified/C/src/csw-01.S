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
// This assembly file tests the c.sw instruction of the RISC-V C extension for the csw covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*E.*C.*) ;def RVTEST_E = True;def TEST_CASE_1=True;",csw)

RVTEST_SIGBASE( x1,signature_x1_1)

inst_0:
// rs1 != rs2, rs1==x15, rs2==x14, imm_val == 0, rs2_val == -16385
// opcode:c.sw; op1:x15; op2:x14; op2val:-0x4001; immval:0x0
TEST_STORE(x1,x2,0,x15,x14,-0x4001,0x0,0,c.sw,0)

inst_1:
// rs1==x11, rs2==x10, rs2_val == 2147483647, rs2_val == (2**(xlen-1)-1), imm_val > 0
// opcode:c.sw; op1:x11; op2:x10; op2val:0x7fffffff; immval:0x14
TEST_STORE(x1,x2,0,x11,x10,0x7fffffff,0x14,4,c.sw,0)

inst_2:
// rs1==x13, rs2==x8, rs2_val == -1073741825, 
// opcode:c.sw; op1:x13; op2:x8; op2val:-0x40000001; immval:0x14
TEST_STORE(x1,x2,0,x13,x8,-0x40000001,0x14,8,c.sw,0)

inst_3:
// rs1==x9, rs2==x13, rs2_val == -536870913, 
// opcode:c.sw; op1:x9; op2:x13; op2val:-0x20000001; immval:0x24
TEST_STORE(x1,x2,0,x9,x13,-0x20000001,0x24,12,c.sw,0)

inst_4:
// rs1==x10, rs2==x12, rs2_val == -268435457, imm_val == 32
// opcode:c.sw; op1:x10; op2:x12; op2val:-0x10000001; immval:0x20
TEST_STORE(x1,x2,0,x10,x12,-0x10000001,0x20,16,c.sw,0)

inst_5:
// rs1==x14, rs2==x15, rs2_val == -134217729, 
// opcode:c.sw; op1:x14; op2:x15; op2val:-0x8000001; immval:0x4c
TEST_STORE(x1,x2,0,x14,x15,-0x8000001,0x4c,20,c.sw,0)

inst_6:
// rs1==x8, rs2==x9, rs2_val == -67108865, 
// opcode:c.sw; op1:x8; op2:x9; op2val:-0x4000001; immval:0x48
TEST_STORE(x1,x2,0,x8,x9,-0x4000001,0x48,24,c.sw,0)

inst_7:
// rs1==x12, rs2==x11, rs2_val == -33554433, imm_val == 84
// opcode:c.sw; op1:x12; op2:x11; op2val:-0x2000001; immval:0x54
TEST_STORE(x1,x2,0,x12,x11,-0x2000001,0x54,28,c.sw,0)

inst_8:
// rs2_val == -16777217, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x1000001; immval:0x7c
TEST_STORE(x1,x2,0,x10,x11,-0x1000001,0x7c,32,c.sw,0)

inst_9:
// rs2_val == -8388609, imm_val == 4
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x800001; immval:0x4
TEST_STORE(x1,x2,0,x10,x11,-0x800001,0x4,36,c.sw,0)

inst_10:
// rs2_val == -4194305, imm_val == 60
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x400001; immval:0x3c
TEST_STORE(x1,x2,0,x10,x11,-0x400001,0x3c,40,c.sw,0)

inst_11:
// rs2_val == -2097153, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x200001; immval:0x30
TEST_STORE(x1,x2,0,x10,x11,-0x200001,0x30,44,c.sw,0)

inst_12:
// rs2_val == -1048577, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x100001; immval:0x7c
TEST_STORE(x1,x2,0,x10,x11,-0x100001,0x7c,48,c.sw,0)

inst_13:
// rs2_val == -524289, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x80001; immval:0x18
TEST_STORE(x1,x2,0,x10,x11,-0x80001,0x18,52,c.sw,0)

inst_14:
// rs2_val == -262145, imm_val == 40
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x40001; immval:0x28
TEST_STORE(x1,x2,0,x10,x11,-0x40001,0x28,56,c.sw,0)

inst_15:
// rs2_val == -131073, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x20001; immval:0x7c
TEST_STORE(x1,x2,0,x10,x11,-0x20001,0x7c,60,c.sw,0)

inst_16:
// rs2_val == -65537, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x10001; immval:0x14
TEST_STORE(x1,x2,0,x10,x11,-0x10001,0x14,64,c.sw,0)

inst_17:
// rs2_val == -32769, imm_val == 64
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x8001; immval:0x40
TEST_STORE(x1,x2,0,x10,x11,-0x8001,0x40,68,c.sw,0)

inst_18:
// rs2_val == -8193, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x2001; immval:0x0
TEST_STORE(x1,x2,0,x10,x11,-0x2001,0x0,72,c.sw,0)

inst_19:
// rs2_val == -4097, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x1001; immval:0x48
TEST_STORE(x1,x2,0,x10,x11,-0x1001,0x48,76,c.sw,0)

inst_20:
// rs2_val == -2049, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x801; immval:0x24
TEST_STORE(x1,x2,0,x10,x11,-0x801,0x24,80,c.sw,0)

inst_21:
// rs2_val == -1025, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x401; immval:0x28
TEST_STORE(x1,x2,0,x10,x11,-0x401,0x28,84,c.sw,0)

inst_22:
// rs2_val == -513, imm_val == 120
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x201; immval:0x78
TEST_STORE(x1,x2,0,x10,x11,-0x201,0x78,88,c.sw,0)

inst_23:
// rs2_val == -257, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x101; immval:0x24
TEST_STORE(x1,x2,0,x10,x11,-0x101,0x24,92,c.sw,0)

inst_24:
// rs2_val == -129, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x81; immval:0x4c
TEST_STORE(x1,x2,0,x10,x11,-0x81,0x4c,96,c.sw,0)

inst_25:
// rs2_val == -65, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x41; immval:0x14
TEST_STORE(x1,x2,0,x10,x11,-0x41,0x14,100,c.sw,0)

inst_26:
// rs2_val == -33, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x21; immval:0x28
TEST_STORE(x1,x2,0,x10,x11,-0x21,0x28,104,c.sw,0)

inst_27:
// rs2_val == -17, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x11; immval:0x34
TEST_STORE(x1,x2,0,x10,x11,-0x11,0x34,108,c.sw,0)

inst_28:
// rs2_val == -9, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x9; immval:0x28
TEST_STORE(x1,x2,0,x10,x11,-0x9,0x28,112,c.sw,0)

inst_29:
// rs2_val == -5, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x5; immval:0xc
TEST_STORE(x1,x2,0,x10,x11,-0x5,0xc,116,c.sw,0)

inst_30:
// rs2_val == -3, imm_val == 108
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x3; immval:0x6c
TEST_STORE(x1,x2,0,x10,x11,-0x3,0x6c,120,c.sw,0)

inst_31:
// rs2_val == -2, imm_val == 92
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x2; immval:0x5c
TEST_STORE(x1,x2,0,x10,x11,-0x2,0x5c,124,c.sw,0)

inst_32:
// imm_val == 116, rs2_val == 32768
// opcode:c.sw; op1:x10; op2:x11; op2val:0x8000; immval:0x74
TEST_STORE(x1,x2,0,x10,x11,0x8000,0x74,128,c.sw,0)

inst_33:
// rs2_val == -2147483648, rs2_val == (-2**(xlen-1))
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x80000000; immval:0x7c
TEST_STORE(x1,x2,0,x10,x11,-0x80000000,0x7c,132,c.sw,0)

inst_34:
// rs2_val == 1073741824, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x40000000; immval:0x38
TEST_STORE(x1,x2,0,x10,x11,0x40000000,0x38,136,c.sw,0)

inst_35:
// rs2_val == 536870912, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x20000000; immval:0x7c
TEST_STORE(x1,x2,0,x10,x11,0x20000000,0x7c,140,c.sw,0)

inst_36:
// rs2_val == 268435456, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x10000000; immval:0x1c
TEST_STORE(x1,x2,0,x10,x11,0x10000000,0x1c,144,c.sw,0)

inst_37:
// rs2_val == 134217728, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x8000000; immval:0x5c
TEST_STORE(x1,x2,0,x10,x11,0x8000000,0x5c,148,c.sw,0)

inst_38:
// rs2_val == 32, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x20; immval:0x2c
TEST_STORE(x1,x2,0,x10,x11,0x20,0x2c,152,c.sw,0)

inst_39:
// rs2_val == 16, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x10; immval:0x30
TEST_STORE(x1,x2,0,x10,x11,0x10,0x30,156,c.sw,0)

inst_40:
// rs2_val == 8, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x8; immval:0x24
TEST_STORE(x1,x2,0,x10,x11,0x8,0x24,160,c.sw,0)

inst_41:
// rs2_val == 4, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x4; immval:0x7c
TEST_STORE(x1,x2,0,x10,x11,0x4,0x7c,164,c.sw,0)

inst_42:
// rs2_val == 2, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x2; immval:0x34
TEST_STORE(x1,x2,0,x10,x11,0x2,0x34,168,c.sw,0)

inst_43:
// rs2_val == 1, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x1; immval:0x54
TEST_STORE(x1,x2,0,x10,x11,0x1,0x54,172,c.sw,0)

inst_44:
// imm_val == 16, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x100001; immval:0x10
TEST_STORE(x1,x2,0,x10,x11,-0x100001,0x10,176,c.sw,0)

inst_45:
// imm_val == 8, rs2_val == 524288
// opcode:c.sw; op1:x10; op2:x11; op2val:0x80000; immval:0x8
TEST_STORE(x1,x2,0,x10,x11,0x80000,0x8,180,c.sw,0)

inst_46:
// rs2_val == -1431655766, 
// opcode:c.sw; op1:x10; op2:x11; op2val:-0x55555556; immval:0x3c
TEST_STORE(x1,x2,0,x10,x11,-0x55555556,0x3c,184,c.sw,0)

inst_47:
// rs2_val == 1431655765, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x55555555; immval:0x10
TEST_STORE(x1,x2,0,x10,x11,0x55555555,0x10,188,c.sw,0)

inst_48:
// rs2_val == 0, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x0; immval:0x38
TEST_STORE(x1,x2,0,x10,x11,0x0,0x38,192,c.sw,0)

inst_49:
// rs2_val == 67108864, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x4000000; immval:0xc
TEST_STORE(x1,x2,0,x10,x11,0x4000000,0xc,196,c.sw,0)

inst_50:
// rs2_val == 33554432, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x2000000; immval:0x3c
TEST_STORE(x1,x2,0,x10,x11,0x2000000,0x3c,200,c.sw,0)

inst_51:
// rs2_val == 16777216, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x1000000; immval:0x20
TEST_STORE(x1,x2,0,x10,x11,0x1000000,0x20,204,c.sw,0)

inst_52:
// rs2_val == 8388608, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x800000; immval:0x10
TEST_STORE(x1,x2,0,x10,x11,0x800000,0x10,208,c.sw,0)

inst_53:
// rs2_val == 4194304, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x400000; immval:0x0
TEST_STORE(x1,x2,0,x10,x11,0x400000,0x0,212,c.sw,0)

inst_54:
// rs2_val == 2097152, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x200000; immval:0x24
TEST_STORE(x1,x2,0,x10,x11,0x200000,0x24,216,c.sw,0)

inst_55:
// rs2_val == 1048576, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x100000; immval:0x34
TEST_STORE(x1,x2,0,x10,x11,0x100000,0x34,220,c.sw,0)

inst_56:
// rs2_val == 262144, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x40000; immval:0x14
TEST_STORE(x1,x2,0,x10,x11,0x40000,0x14,224,c.sw,0)

inst_57:
// rs2_val == 131072, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x20000; immval:0x20
TEST_STORE(x1,x2,0,x10,x11,0x20000,0x20,228,c.sw,0)

inst_58:
// rs2_val == 65536, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x10000; immval:0x44
TEST_STORE(x1,x2,0,x10,x11,0x10000,0x44,232,c.sw,0)

inst_59:
// rs2_val == 16384, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x4000; immval:0x20
TEST_STORE(x1,x2,0,x10,x11,0x4000,0x20,236,c.sw,0)

inst_60:
// rs2_val == 8192, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x2000; immval:0x78
TEST_STORE(x1,x2,0,x10,x11,0x2000,0x78,240,c.sw,0)

inst_61:
// rs2_val == 4096, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x1000; immval:0x7c
TEST_STORE(x1,x2,0,x10,x11,0x1000,0x7c,244,c.sw,0)

inst_62:
// rs2_val == 2048, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x800; immval:0x6c
TEST_STORE(x1,x2,0,x10,x11,0x800,0x6c,248,c.sw,0)

inst_63:
// rs2_val == 1024, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x400; immval:0x4c
TEST_STORE(x1,x2,0,x10,x11,0x400,0x4c,252,c.sw,0)

inst_64:
// rs2_val == 512, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x200; immval:0x5c
TEST_STORE(x1,x2,0,x10,x11,0x200,0x5c,256,c.sw,0)

inst_65:
// rs2_val == 256, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x100; immval:0x28
TEST_STORE(x1,x2,0,x10,x11,0x100,0x28,260,c.sw,0)

inst_66:
// rs2_val == 128, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x80; immval:0x78
TEST_STORE(x1,x2,0,x10,x11,0x80,0x78,264,c.sw,0)

inst_67:
// rs2_val == 64, 
// opcode:c.sw; op1:x10; op2:x11; op2val:0x40; immval:0x3c
TEST_STORE(x1,x2,0,x10,x11,0x40,0x3c,268,c.sw,0)
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
    .fill 68*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
