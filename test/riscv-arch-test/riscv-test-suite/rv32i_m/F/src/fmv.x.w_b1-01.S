
// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.5.2
// timestamp : Tue Sep  7 17:29:12 2021 GMT
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
// This assembly file tests the fmv.x.w instruction of the RISC-V F extension for the fmv.x.w_b1 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*F.*);def TEST_CASE_1=True;",fmv.x.w_b1)

RVTEST_FP_ENABLE()
RVTEST_VALBASEUPD(x20,test_fp)
RVTEST_SIGBASE(x19,signature_x19_1)

inst_0:// rs1==f10, rd==x17, fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  
// opcode: fmv.x.w ; op1:f10; dest:x17; op1val:0x0; valaddr_reg:x20; val_offset:0; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x17, f10, 0x0, 0, x20, 0, x21, x19, 0, x18)
RVTEST_VALBASEMOV(x16, x20)
RVTEST_SIGBASE(x15,signature_x15_0)

inst_1:// rs1==f2, rd==x11, fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  
// opcode: fmv.x.w ; op1:f2; dest:x11; op1val:0xbf800000; valaddr_reg:x16; val_offset:4; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x11, f2, 0x0, 0, x16, 4, x17, x15, 0, x18)

inst_2:// rs1==f3, rd==x7, fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  
// opcode: fmv.x.w ; op1:f3; dest:x7; op1val:0x3f800000; valaddr_reg:x16; val_offset:8; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x7, f3, 0x0, 0, x16, 8, x17, x15, 8, x18)

inst_3:// rs1==f11, rd==x1, fs1 == 1 and fe1 == 0xff and fm1 == 0x2aaaaa and rm_val == 0  
// opcode: fmv.x.w ; op1:f11; dest:x1; op1val:0xffaaaaaa; valaddr_reg:x16; val_offset:12; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x1, f11, 0x0, 0, x16, 12, x17, x15, 16, x18)

inst_4:// rs1==f29, rd==x8, fs1 == 0 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  
// opcode: fmv.x.w ; op1:f29; dest:x8; op1val:0x7f800001; valaddr_reg:x16; val_offset:16; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x8, f29, 0x0, 0, x16, 16, x17, x15, 24, x18)

inst_5:// rs1==f18, rd==x6, fs1 == 1 and fe1 == 0xff and fm1 == 0x455555 and rm_val == 0  
// opcode: fmv.x.w ; op1:f18; dest:x6; op1val:0xffc55555; valaddr_reg:x16; val_offset:20; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x6, f18, 0x0, 0, x16, 20, x17, x15, 32, x18)

inst_6:// rs1==f16, rd==x0, fs1 == 0 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  
// opcode: fmv.x.w ; op1:f16; dest:x0; op1val:0x7fc00001; valaddr_reg:x16; val_offset:24; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x0, f16, 0x0, 0, x16, 24, x17, x15, 40, x18)

inst_7:// rs1==f12, rd==x27, fs1 == 1 and fe1 == 0xff and fm1 == 0x400000 and rm_val == 0  
// opcode: fmv.x.w ; op1:f12; dest:x27; op1val:0xffc00000; valaddr_reg:x16; val_offset:28; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x27, f12, 0x0, 0, x16, 28, x17, x15, 48, x18)

inst_8:// rs1==f4, rd==x29, fs1 == 0 and fe1 == 0xff and fm1 == 0x400000 and rm_val == 0  
// opcode: fmv.x.w ; op1:f4; dest:x29; op1val:0x7fc00000; valaddr_reg:x16; val_offset:32; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x29, f4, 0x0, 0, x16, 32, x17, x15, 56, x18)

inst_9:// rs1==f26, rd==x23, fs1 == 1 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  
// opcode: fmv.x.w ; op1:f26; dest:x23; op1val:0xff800000; valaddr_reg:x16; val_offset:36; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x23, f26, 0x0, 0, x16, 36, x17, x15, 64, x18)

inst_10:// rs1==f9, rd==x13, fs1 == 0 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  
// opcode: fmv.x.w ; op1:f9; dest:x13; op1val:0x7f800000; valaddr_reg:x16; val_offset:40; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x13, f9, 0x0, 0, x16, 40, x17, x15, 72, x18)

inst_11:// rs1==f23, rd==x26, fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  
// opcode: fmv.x.w ; op1:f23; dest:x26; op1val:0xff7fffff; valaddr_reg:x16; val_offset:44; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x26, f23, 0x0, 0, x16, 44, x17, x15, 80, x18)

inst_12:// rs1==f27, rd==x10, fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  
// opcode: fmv.x.w ; op1:f27; dest:x10; op1val:0x7f7fffff; valaddr_reg:x16; val_offset:48; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x10, f27, 0x0, 0, x16, 48, x17, x15, 88, x18)

inst_13:// rs1==f22, rd==x21, fs1 == 1 and fe1 == 0x01 and fm1 == 0x055555 and rm_val == 0  
// opcode: fmv.x.w ; op1:f22; dest:x21; op1val:0x80855555; valaddr_reg:x16; val_offset:52; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x21, f22, 0x0, 0, x16, 52, x17, x15, 96, x18)

inst_14:// rs1==f21, rd==x12, fs1 == 0 and fe1 == 0x01 and fm1 == 0x000001 and rm_val == 0  
// opcode: fmv.x.w ; op1:f21; dest:x12; op1val:0x800001; valaddr_reg:x16; val_offset:56; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x12, f21, 0x0, 0, x16, 56, x17, x15, 104, x18)

inst_15:// rs1==f0, rd==x25, fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and rm_val == 0  
// opcode: fmv.x.w ; op1:f0; dest:x25; op1val:0x80800000; valaddr_reg:x16; val_offset:60; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x25, f0, 0x0, 0, x16, 60, x17, x15, 112, x18)

inst_16:// rs1==f31, rd==x9, fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and rm_val == 0  
// opcode: fmv.x.w ; op1:f31; dest:x9; op1val:0x800000; valaddr_reg:x16; val_offset:64; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x9, f31, 0x0, 0, x16, 64, x17, x15, 120, x18)

inst_17:// rs1==f17, rd==x18, fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and rm_val == 0  
// opcode: fmv.x.w ; op1:f17; dest:x18; op1val:0x807fffff; valaddr_reg:x16; val_offset:68; rmval:0x0; correctval:0; testreg:x22
TEST_FPID_OP(fmv.x.w, x18, f17, 0x0, 0, x16, 68, x17, x15, 128, x22)
RVTEST_VALBASEMOV(x20, x16)
RVTEST_SIGBASE(x19,signature_x19_2)

inst_18:// rs1==f1, rd==x16, fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and rm_val == 0  
// opcode: fmv.x.w ; op1:f1; dest:x16; op1val:0x7fffff; valaddr_reg:x20; val_offset:72; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x16, f1, 0x0, 0, x20, 72, x21, x19, 0, x18)
RVTEST_VALBASEMOV(x16, x20)
RVTEST_SIGBASE(x15,signature_x15_1)

inst_19:// rs1==f6, rd==x20, fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffe and rm_val == 0  
// opcode: fmv.x.w ; op1:f6; dest:x20; op1val:0x807ffffe; valaddr_reg:x16; val_offset:76; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x20, f6, 0x0, 0, x16, 76, x17, x15, 0, x18)

inst_20:// rs1==f7, rd==x30, fs1 == 0 and fe1 == 0x00 and fm1 == 0x000002 and rm_val == 0  
// opcode: fmv.x.w ; op1:f7; dest:x30; op1val:0x2; valaddr_reg:x16; val_offset:80; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x30, f7, 0x0, 0, x16, 80, x17, x15, 8, x18)

inst_21:// rs1==f19, rd==x31, fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and rm_val == 0  
// opcode: fmv.x.w ; op1:f19; dest:x31; op1val:0x80000001; valaddr_reg:x16; val_offset:84; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x31, f19, 0x0, 0, x16, 84, x17, x15, 16, x18)

inst_22:// rs1==f24, rd==x24, fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and rm_val == 0  
// opcode: fmv.x.w ; op1:f24; dest:x24; op1val:0x1; valaddr_reg:x16; val_offset:88; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x24, f24, 0x0, 0, x16, 88, x17, x15, 24, x18)
RVTEST_VALBASEMOV(x20, x16)
RVTEST_SIGBASE(x19,signature_x19_3)

inst_23:// rs1==f8, rd==x15, fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  
// opcode: fmv.x.w ; op1:f8; dest:x15; op1val:0x80000000; valaddr_reg:x20; val_offset:92; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x15, f8, 0x0, 0, x20, 92, x21, x19, 0, x18)
RVTEST_VALBASEMOV(x16, x20)
RVTEST_SIGBASE(x15,signature_x15_2)

inst_24:// rs1==f13, rd==x28, 
// opcode: fmv.x.w ; op1:f13; dest:x28; op1val:0x0; valaddr_reg:x16; val_offset:96; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x28, f13, 0x0, 0, x16, 96, x17, x15, 0, x18)

inst_25:// rs1==f14, rd==x22, 
// opcode: fmv.x.w ; op1:f14; dest:x22; op1val:0x0; valaddr_reg:x16; val_offset:100; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x22, f14, 0x0, 0, x16, 100, x17, x15, 8, x18)

inst_26:// rs1==f20, rd==x19, 
// opcode: fmv.x.w ; op1:f20; dest:x19; op1val:0x0; valaddr_reg:x16; val_offset:104; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x19, f20, 0x0, 0, x16, 104, x17, x15, 16, x18)

inst_27:// rs1==f30, rd==x14, 
// opcode: fmv.x.w ; op1:f30; dest:x14; op1val:0x0; valaddr_reg:x16; val_offset:108; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x14, f30, 0x0, 0, x16, 108, x17, x15, 24, x18)

inst_28:// rs1==f25, rd==x3, 
// opcode: fmv.x.w ; op1:f25; dest:x3; op1val:0x0; valaddr_reg:x16; val_offset:112; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x3, f25, 0x0, 0, x16, 112, x17, x15, 32, x18)

inst_29:// rs1==f28, rd==x5, 
// opcode: fmv.x.w ; op1:f28; dest:x5; op1val:0x0; valaddr_reg:x16; val_offset:116; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x5, f28, 0x0, 0, x16, 116, x17, x15, 40, x18)

inst_30:// rs1==f15, rd==x2, 
// opcode: fmv.x.w ; op1:f15; dest:x2; op1val:0x0; valaddr_reg:x16; val_offset:120; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x2, f15, 0x0, 0, x16, 120, x17, x15, 48, x18)

inst_31:// rs1==f5, rd==x4, 
// opcode: fmv.x.w ; op1:f5; dest:x4; op1val:0x0; valaddr_reg:x16; val_offset:124; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x4, f5, 0x0, 0, x16, 124, x17, x15, 56, x18)

inst_32:// fs1 == 0 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  
// opcode: fmv.x.w ; op1:f10; dest:x11; op1val:0x7fc00001; valaddr_reg:x16; val_offset:128; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.w, x11, f10, 0x0, 0, x16, 128, x17, x15, 64, x18)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
test_fp:
.word 0x0
.word 0xbf800000
.word 0x3f800000
.word 0xffaaaaaa
.word 0x7f800001
.word 0xffc55555
.word 0x7fc00001
.word 0xffc00000
.word 0x7fc00000
.word 0xff800000
.word 0x7f800000
.word 0xff7fffff
.word 0x7f7fffff
.word 0x80855555
.word 0x800001
.word 0x80800000
.word 0x800000
.word 0x807fffff
.word 0x7fffff
.word 0x807ffffe
.word 0x2
.word 0x80000001
.word 0x1
.word 0x80000000
.word 0x0
.word 0x0
.word 0x0
.word 0x0
.word 0x0
.word 0x0
.word 0x0
.word 0x0
.word 0x7fc00001
RVTEST_DATA_END

RVMODEL_DATA_BEGIN


signature_x19_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x19_1:
    .fill 2*(XLEN/32),4,0xdeadbeef


signature_x15_0:
    .fill 34*(XLEN/32),4,0xdeadbeef


signature_x19_2:
    .fill 2*(XLEN/32),4,0xdeadbeef


signature_x15_1:
    .fill 8*(XLEN/32),4,0xdeadbeef


signature_x19_3:
    .fill 2*(XLEN/32),4,0xdeadbeef


signature_x15_2:
    .fill 18*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
