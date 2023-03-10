
// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.5.2
// timestamp : Tue Sep  7 16:48:56 2021 GMT
// usage     : riscv_ctg \
//                  -- cgf $cgf \
//                  -- xlen $xlen \
// -----------
//
// -----------
// Copyright (c) 2021. IIT Madras. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the flw instruction of the RISC-V F extension for the flw-align covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32IF")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*F.*);def TEST_CASE_1=True;",flw-align)

RVTEST_FP_ENABLE()
RVTEST_SIGBASE(x15,signature_x15_1)

inst_0:// rs1==x26, rd==f18, ea_align == 0 and (imm_val % 4) == 0, imm_val > 0
// opcode:flw op1:x26; dest:f18; immval:0x200; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x26,f18,0x200,0,flw,0,x17)

inst_1:// rs1==x4, rd==f28, ea_align == 0 and (imm_val % 4) == 1, imm_val < 0
// opcode:flw op1:x4; dest:f28; immval:-0x3; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x4,f28,-0x3,8,flw,0,x17)

inst_2:// rs1==x8, rd==f21, ea_align == 0 and (imm_val % 4) == 2, 
// opcode:flw op1:x8; dest:f21; immval:-0xa; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x8,f21,-0xa,16,flw,0,x17)

inst_3:// rs1==x30, rd==f12, ea_align == 0 and (imm_val % 4) == 3, 
// opcode:flw op1:x30; dest:f12; immval:-0x201; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x30,f12,-0x201,24,flw,0,x17)

inst_4:// rs1==x18, rd==f29, imm_val == 0, 
// opcode:flw op1:x18; dest:f29; immval:0x0; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x22,0,x18,f29,0x0,32,flw,0,x17)

inst_5:// rs1==x1, rd==f14, 
// opcode:flw op1:x1; dest:f14; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x1,f14,-0x800,40,flw,0,x17)

inst_6:// rs1==x2, rd==f30, 
// opcode:flw op1:x2; dest:f30; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x2,f30,-0x800,48,flw,0,x17)
RVTEST_SIGBASE(x19,signature_x19_0)

inst_7:// rs1==x15, rd==f9, 
// opcode:flw op1:x15; dest:f9; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x19,x18,0,x15,f9,-0x800,0,flw,0,x21)
RVTEST_SIGBASE(x15,signature_x15_2)

inst_8:// rs1==x31, rd==f15, 
// opcode:flw op1:x31; dest:f15; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x31,f15,-0x800,0,flw,0,x17)

inst_9:// rs1==x13, rd==f5, 
// opcode:flw op1:x13; dest:f5; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x13,f5,-0x800,8,flw,0,x17)

inst_10:// rs1==x3, rd==f7, 
// opcode:flw op1:x3; dest:f7; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x3,f7,-0x800,16,flw,0,x17)

inst_11:// rs1==x6, rd==f31, 
// opcode:flw op1:x6; dest:f31; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x6,f31,-0x800,24,flw,0,x17)
RVTEST_SIGBASE(x19,signature_x19_1)

inst_12:// rs1==x16, rd==f24, 
// opcode:flw op1:x16; dest:f24; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x19,x18,0,x16,f24,-0x800,0,flw,0,x21)

inst_13:// rs1==x17, rd==f26, 
// opcode:flw op1:x17; dest:f26; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x19,x18,0,x17,f26,-0x800,8,flw,0,x21)
RVTEST_SIGBASE(x15,signature_x15_3)

inst_14:// rs1==x28, rd==f0, 
// opcode:flw op1:x28; dest:f0; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x28,f0,-0x800,0,flw,0,x17)

inst_15:// rs1==x23, rd==f13, 
// opcode:flw op1:x23; dest:f13; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x23,f13,-0x800,8,flw,0,x17)

inst_16:// rs1==x7, rd==f10, 
// opcode:flw op1:x7; dest:f10; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x7,f10,-0x800,16,flw,0,x17)

inst_17:// rs1==x10, rd==f11, 
// opcode:flw op1:x10; dest:f11; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x10,f11,-0x800,24,flw,0,x17)

inst_18:// rs1==x25, rd==f6, 
// opcode:flw op1:x25; dest:f6; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x25,f6,-0x800,32,flw,0,x17)

inst_19:// rs1==x21, rd==f20, 
// opcode:flw op1:x21; dest:f20; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x21,f20,-0x800,40,flw,0,x17)

inst_20:// rs1==x11, rd==f17, 
// opcode:flw op1:x11; dest:f17; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x11,f17,-0x800,48,flw,0,x17)

inst_21:// rs1==x27, rd==f23, 
// opcode:flw op1:x27; dest:f23; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x27,f23,-0x800,56,flw,0,x17)

inst_22:// rs1==x12, rd==f19, 
// opcode:flw op1:x12; dest:f19; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x12,f19,-0x800,64,flw,0,x17)

inst_23:// rs1==x22, rd==f22, 
// opcode:flw op1:x22; dest:f22; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x22,f22,-0x800,72,flw,0,x17)

inst_24:// rs1==x24, rd==f8, 
// opcode:flw op1:x24; dest:f8; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x24,f8,-0x800,80,flw,0,x17)

inst_25:// rs1==x9, rd==f27, 
// opcode:flw op1:x9; dest:f27; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x9,f27,-0x800,88,flw,0,x17)

inst_26:// rs1==x29, rd==f25, 
// opcode:flw op1:x29; dest:f25; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x29,f25,-0x800,96,flw,0,x17)

inst_27:// rs1==x20, rd==f1, 
// opcode:flw op1:x20; dest:f1; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x20,f1,-0x800,104,flw,0,x17)

inst_28:// rs1==x5, rd==f4, 
// opcode:flw op1:x5; dest:f4; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x5,f4,-0x800,112,flw,0,x17)

inst_29:// rs1==x14, rd==f3, 
// opcode:flw op1:x14; dest:f3; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x14,f3,-0x800,120,flw,0,x17)

inst_30:// rs1==x19, rd==f16, 
// opcode:flw op1:x19; dest:f16; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x19,f16,-0x800,128,flw,0,x17)

inst_31:// rd==f2, 
// opcode:flw op1:x12; dest:f2; immval:-0x800; align:0; flagreg:$flag_reg
TEST_LOAD_F(x15,x18,0,x12,f2,-0x800,136,flw,0,x17)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN


signature_x15_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x15_1:
    .fill 14*(XLEN/32),4,0xdeadbeef


signature_x19_0:
    .fill 2*(XLEN/32),4,0xdeadbeef


signature_x15_2:
    .fill 8*(XLEN/32),4,0xdeadbeef


signature_x19_1:
    .fill 4*(XLEN/32),4,0xdeadbeef


signature_x15_3:
    .fill 36*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
