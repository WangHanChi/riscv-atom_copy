
// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.5.2
// timestamp : Tue Sep  7 16:50:33 2021 GMT
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
// This assembly file tests the fsub.s instruction of the RISC-V F extension for the fsub_b12 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*F.*);def TEST_CASE_1=True;",fsub_b12)

RVTEST_FP_ENABLE()
RVTEST_VALBASEUPD(x16,test_fp)
RVTEST_SIGBASE(x15,signature_x15_1)

inst_0:
// rs1 == rs2 == rd, rs1==f8, rs2==f8, rd==f8, fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 1 and fe2 == 0xfe and fm2 == 0x08e8ca and rm_val == 0  
// opcode: fsub.s ; op1:f8; op2:f8; dest:f8; op1val:0x7dce622b; op2val:0x7dce622b; valaddr_reg:x16; val_offset:0; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f8, f8, f8, 0x0, 0, x16, 0, x17, x15, 0, x18)

inst_1:
// rs1 == rd != rs2, rs1==f10, rs2==f2, rd==f10, fs1 == 0 and fe1 == 0xfd and fm1 == 0x578fb8 and fs2 == 0 and fe2 == 0xfb and fm2 == 0x4fc538 and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f2; dest:f10; op1val:0x7ed78fb8; op2val:0x7dcfc538; valaddr_reg:x16; val_offset:8; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f10, f10, f2, 0x0, 0, x16, 8, x17, x15, 8, x18)

inst_2:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==f20, rs2==f14, rd==f24, fs1 == 0 and fe1 == 0xfe and fm1 == 0x1b5ad7 and fs2 == 0 and fe2 == 0xfc and fm2 == 0x5f1313 and rm_val == 0  
// opcode: fsub.s ; op1:f20; op2:f14; dest:f24; op1val:0x7f1b5ad7; op2val:0x7e5f1313; valaddr_reg:x16; val_offset:16; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f24, f20, f14, 0x0, 0, x16, 16, x17, x15, 16, x18)

inst_3:
// rs2 == rd != rs1, rs1==f25, rs2==f21, rd==f21, fs1 == 0 and fe1 == 0xfe and fm1 == 0x2a257f and fs2 == 0 and fe2 == 0xfb and fm2 == 0x5fc232 and rm_val == 0  
// opcode: fsub.s ; op1:f25; op2:f21; dest:f21; op1val:0x7f2a257f; op2val:0x7ddfc232; valaddr_reg:x16; val_offset:24; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f21, f25, f21, 0x0, 0, x16, 24, x17, x15, 24, x18)

inst_4:
// rs1 == rs2 != rd, rs1==f31, rs2==f31, rd==f25, fs1 == 0 and fe1 == 0xfe and fm1 == 0x167638 and fs2 == 1 and fe2 == 0xf9 and fm2 == 0x6249a5 and rm_val == 0  
// opcode: fsub.s ; op1:f31; op2:f31; dest:f25; op1val:0x7f167638; op2val:0x7f167638; valaddr_reg:x16; val_offset:32; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f25, f31, f31, 0x0, 0, x16, 32, x17, x15, 32, x18)

inst_5:
// rs1==f19, rs2==f7, rd==f6, fs1 == 0 and fe1 == 0xfe and fm1 == 0x37c42d and fs2 == 0 and fe2 == 0xfe and fm2 == 0x36ab8f and rm_val == 0  
// opcode: fsub.s ; op1:f19; op2:f7; dest:f6; op1val:0x7f37c42d; op2val:0x7f36ab8f; valaddr_reg:x16; val_offset:40; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f6, f19, f7, 0x0, 0, x16, 40, x17, x15, 40, x18)

inst_6:
// rs1==f15, rs2==f16, rd==f9, fs1 == 0 and fe1 == 0xfc and fm1 == 0x4ece7f and fs2 == 1 and fe2 == 0xfc and fm2 == 0x560df4 and rm_val == 0  
// opcode: fsub.s ; op1:f15; op2:f16; dest:f9; op1val:0x7e4ece7f; op2val:0xfe560df4; valaddr_reg:x16; val_offset:48; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f9, f15, f16, 0x0, 0, x16, 48, x17, x15, 48, x18)

inst_7:
// rs1==f11, rs2==f10, rd==f16, fs1 == 0 and fe1 == 0xfd and fm1 == 0x5ddf89 and fs2 == 0 and fe2 == 0xfb and fm2 == 0x364437 and rm_val == 0  
// opcode: fsub.s ; op1:f11; op2:f10; dest:f16; op1val:0x7edddf89; op2val:0x7db64437; valaddr_reg:x16; val_offset:56; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f16, f11, f10, 0x0, 0, x16, 56, x17, x15, 56, x18)

inst_8:
// rs1==f6, rs2==f25, rd==f30, fs1 == 0 and fe1 == 0xfd and fm1 == 0x4549ce and fs2 == 1 and fe2 == 0xfd and fm2 == 0x28758a and rm_val == 0  
// opcode: fsub.s ; op1:f6; op2:f25; dest:f30; op1val:0x7ec549ce; op2val:0xfea8758a; valaddr_reg:x16; val_offset:64; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f30, f6, f25, 0x0, 0, x16, 64, x17, x15, 64, x18)

inst_9:
// rs1==f0, rs2==f29, rd==f19, fs1 == 0 and fe1 == 0xfe and fm1 == 0x252cf6 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x713214 and rm_val == 0  
// opcode: fsub.s ; op1:f0; op2:f29; dest:f19; op1val:0x7f252cf6; op2val:0x7ef13214; valaddr_reg:x16; val_offset:72; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f19, f0, f29, 0x0, 0, x16, 72, x17, x15, 72, x18)

inst_10:
// rs1==f7, rs2==f30, rd==f11, fs1 == 0 and fe1 == 0xfe and fm1 == 0x13f0c0 and fs2 == 0 and fe2 == 0xfc and fm2 == 0x3155e7 and rm_val == 0  
// opcode: fsub.s ; op1:f7; op2:f30; dest:f11; op1val:0x7f13f0c0; op2val:0x7e3155e7; valaddr_reg:x16; val_offset:80; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f11, f7, f30, 0x0, 0, x16, 80, x17, x15, 80, x18)

inst_11:
// rs1==f26, rs2==f28, rd==f0, fs1 == 0 and fe1 == 0xfd and fm1 == 0x40dc0e and fs2 == 1 and fe2 == 0xfd and fm2 == 0x384200 and rm_val == 0  
// opcode: fsub.s ; op1:f26; op2:f28; dest:f0; op1val:0x7ec0dc0e; op2val:0xfeb84200; valaddr_reg:x16; val_offset:88; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f0, f26, f28, 0x0, 0, x16, 88, x17, x15, 88, x18)

inst_12:
// rs1==f24, rs2==f12, rd==f17, fs1 == 0 and fe1 == 0xfd and fm1 == 0x17246c and fs2 == 0 and fe2 == 0xfc and fm2 == 0x2b74d4 and rm_val == 0  
// opcode: fsub.s ; op1:f24; op2:f12; dest:f17; op1val:0x7e97246c; op2val:0x7e2b74d4; valaddr_reg:x16; val_offset:96; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f17, f24, f12, 0x0, 0, x16, 96, x17, x15, 96, x18)

inst_13:
// rs1==f17, rs2==f0, rd==f23, fs1 == 0 and fe1 == 0xfe and fm1 == 0x3cc5a4 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x15c2f3 and rm_val == 0  
// opcode: fsub.s ; op1:f17; op2:f0; dest:f23; op1val:0x7f3cc5a4; op2val:0x7e95c2f3; valaddr_reg:x16; val_offset:104; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f23, f17, f0, 0x0, 0, x16, 104, x17, x15, 104, x18)

inst_14:
// rs1==f3, rs2==f19, rd==f20, fs1 == 0 and fe1 == 0xfa and fm1 == 0x0597cb and fs2 == 1 and fe2 == 0xfd and fm2 == 0x7d664b and rm_val == 0  
// opcode: fsub.s ; op1:f3; op2:f19; dest:f20; op1val:0x7d0597cb; op2val:0xfefd664b; valaddr_reg:x16; val_offset:112; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f20, f3, f19, 0x0, 0, x16, 112, x17, x15, 112, x18)

inst_15:
// rs1==f23, rs2==f17, rd==f31, fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c0ad4 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x30af7e and rm_val == 0  
// opcode: fsub.s ; op1:f23; op2:f17; dest:f31; op1val:0x7ebc0ad4; op2val:0x7eb0af7e; valaddr_reg:x16; val_offset:120; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f31, f23, f17, 0x0, 0, x16, 120, x17, x15, 120, x18)

inst_16:
// rs1==f29, rs2==f4, rd==f7, fs1 == 0 and fe1 == 0xfd and fm1 == 0x480a54 and fs2 == 0 and fe2 == 0xfb and fm2 == 0x441f1f and rm_val == 0  
// opcode: fsub.s ; op1:f29; op2:f4; dest:f7; op1val:0x7ec80a54; op2val:0x7dc41f1f; valaddr_reg:x16; val_offset:128; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f7, f29, f4, 0x0, 0, x16, 128, x17, x15, 128, x18)

inst_17:
// rs1==f28, rs2==f13, rd==f4, fs1 == 0 and fe1 == 0xfd and fm1 == 0x433c5b and fs2 == 1 and fe2 == 0xfc and fm2 == 0x4f5f54 and rm_val == 0  
// opcode: fsub.s ; op1:f28; op2:f13; dest:f4; op1val:0x7ec33c5b; op2val:0xfe4f5f54; valaddr_reg:x16; val_offset:136; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f4, f28, f13, 0x0, 0, x16, 136, x17, x15, 136, x18)

inst_18:
// rs1==f1, rs2==f26, rd==f22, fs1 == 0 and fe1 == 0xfd and fm1 == 0x0fe2cd and fs2 == 1 and fe2 == 0xfa and fm2 == 0x456706 and rm_val == 0  
// opcode: fsub.s ; op1:f1; op2:f26; dest:f22; op1val:0x7e8fe2cd; op2val:0xfd456706; valaddr_reg:x16; val_offset:144; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f22, f1, f26, 0x0, 0, x16, 144, x17, x15, 144, x18)

inst_19:
// rs1==f13, rs2==f3, rd==f2, fs1 == 0 and fe1 == 0xfe and fm1 == 0x06fbdb and fs2 == 0 and fe2 == 0xf9 and fm2 == 0x2f7105 and rm_val == 0  
// opcode: fsub.s ; op1:f13; op2:f3; dest:f2; op1val:0x7f06fbdb; op2val:0x7caf7105; valaddr_reg:x16; val_offset:152; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f2, f13, f3, 0x0, 0, x16, 152, x17, x15, 152, x18)

inst_20:
// rs1==f2, rs2==f11, rd==f18, fs1 == 0 and fe1 == 0xfc and fm1 == 0x04dea3 and fs2 == 1 and fe2 == 0xfd and fm2 == 0x104dca and rm_val == 0  
// opcode: fsub.s ; op1:f2; op2:f11; dest:f18; op1val:0x7e04dea3; op2val:0xfe904dca; valaddr_reg:x16; val_offset:160; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f18, f2, f11, 0x0, 0, x16, 160, x17, x15, 160, x18)

inst_21:
// rs1==f22, rs2==f18, rd==f3, fs1 == 0 and fe1 == 0xfe and fm1 == 0x191a03 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x131b4d and rm_val == 0  
// opcode: fsub.s ; op1:f22; op2:f18; dest:f3; op1val:0x7f191a03; op2val:0x7e931b4d; valaddr_reg:x16; val_offset:168; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f3, f22, f18, 0x0, 0, x16, 168, x17, x15, 168, x18)

inst_22:
// rs1==f9, rs2==f1, rd==f14, fs1 == 0 and fe1 == 0xf9 and fm1 == 0x54206e and fs2 == 1 and fe2 == 0xfc and fm2 == 0x1fe890 and rm_val == 0  
// opcode: fsub.s ; op1:f9; op2:f1; dest:f14; op1val:0x7cd4206e; op2val:0xfe1fe890; valaddr_reg:x16; val_offset:176; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f14, f9, f1, 0x0, 0, x16, 176, x17, x15, 176, x18)

inst_23:
// rs1==f21, rs2==f23, rd==f5, fs1 == 0 and fe1 == 0xfd and fm1 == 0x42076b and fs2 == 1 and fe2 == 0xfb and fm2 == 0x00976d and rm_val == 0  
// opcode: fsub.s ; op1:f21; op2:f23; dest:f5; op1val:0x7ec2076b; op2val:0xfd80976d; valaddr_reg:x16; val_offset:184; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f5, f21, f23, 0x0, 0, x16, 184, x17, x15, 184, x18)

inst_24:
// rs1==f30, rs2==f5, rd==f26, fs1 == 0 and fe1 == 0xfe and fm1 == 0x296f9b and fs2 == 0 and fe2 == 0xf9 and fm2 == 0x5ee9fe and rm_val == 0  
// opcode: fsub.s ; op1:f30; op2:f5; dest:f26; op1val:0x7f296f9b; op2val:0x7cdee9fe; valaddr_reg:x16; val_offset:192; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f26, f30, f5, 0x0, 0, x16, 192, x17, x15, 192, x18)

inst_25:
// rs1==f12, rs2==f15, rd==f1, fs1 == 0 and fe1 == 0xfc and fm1 == 0x68fcac and fs2 == 1 and fe2 == 0xfc and fm2 == 0x5a465e and rm_val == 0  
// opcode: fsub.s ; op1:f12; op2:f15; dest:f1; op1val:0x7e68fcac; op2val:0xfe5a465e; valaddr_reg:x16; val_offset:200; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f1, f12, f15, 0x0, 0, x16, 200, x17, x15, 200, x18)

inst_26:
// rs1==f14, rs2==f24, rd==f15, fs1 == 0 and fe1 == 0xfe and fm1 == 0x1f5de9 and fs2 == 0 and fe2 == 0xfb and fm2 == 0x755870 and rm_val == 0  
// opcode: fsub.s ; op1:f14; op2:f24; dest:f15; op1val:0x7f1f5de9; op2val:0x7df55870; valaddr_reg:x16; val_offset:208; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f15, f14, f24, 0x0, 0, x16, 208, x17, x15, 208, x18)

inst_27:
// rs1==f27, rs2==f22, rd==f12, fs1 == 0 and fe1 == 0xfe and fm1 == 0x33cbed and fs2 == 0 and fe2 == 0xfd and fm2 == 0x45810c and rm_val == 0  
// opcode: fsub.s ; op1:f27; op2:f22; dest:f12; op1val:0x7f33cbed; op2val:0x7ec5810c; valaddr_reg:x16; val_offset:216; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f27, f22, 0x0, 0, x16, 216, x17, x15, 216, x18)

inst_28:
// rs1==f4, rs2==f9, rd==f29, fs1 == 0 and fe1 == 0xfe and fm1 == 0x0a8666 and fs2 == 0 and fe2 == 0xf7 and fm2 == 0x7cf3ad and rm_val == 0  
// opcode: fsub.s ; op1:f4; op2:f9; dest:f29; op1val:0x7f0a8666; op2val:0x7bfcf3ad; valaddr_reg:x16; val_offset:224; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f29, f4, f9, 0x0, 0, x16, 224, x17, x15, 224, x18)

inst_29:
// rs1==f5, rs2==f6, rd==f27, fs1 == 0 and fe1 == 0xfb and fm1 == 0x39afdd and fs2 == 1 and fe2 == 0xfc and fm2 == 0x22aa99 and rm_val == 0  
// opcode: fsub.s ; op1:f5; op2:f6; dest:f27; op1val:0x7db9afdd; op2val:0xfe22aa99; valaddr_reg:x16; val_offset:232; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f27, f5, f6, 0x0, 0, x16, 232, x17, x15, 232, x18)

inst_30:
// rs1==f16, rs2==f27, rd==f28, fs1 == 0 and fe1 == 0xfe and fm1 == 0x3e917d and fs2 == 0 and fe2 == 0xfb and fm2 == 0x4bab36 and rm_val == 0  
// opcode: fsub.s ; op1:f16; op2:f27; dest:f28; op1val:0x7f3e917d; op2val:0x7dcbab36; valaddr_reg:x16; val_offset:240; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f28, f16, f27, 0x0, 0, x16, 240, x17, x15, 240, x18)

inst_31:
// rs1==f18, rs2==f20, rd==f13, fs1 == 0 and fe1 == 0xfd and fm1 == 0x76a41a and fs2 == 0 and fe2 == 0xfd and fm2 == 0x2f40c6 and rm_val == 0  
// opcode: fsub.s ; op1:f18; op2:f20; dest:f13; op1val:0x7ef6a41a; op2val:0x7eaf40c6; valaddr_reg:x16; val_offset:248; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f13, f18, f20, 0x0, 0, x16, 248, x17, x15, 248, x18)

inst_32:
// fs1 == 0 and fe1 == 0xfe and fm1 == 0x20d0a1 and fs2 == 0 and fe2 == 0xfc and fm2 == 0x57e728 and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7f20d0a1; op2val:0x7e57e728; valaddr_reg:x16; val_offset:256; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 256, x17, x15, 256, x18)

inst_33:
// fs1 == 0 and fe1 == 0xfc and fm1 == 0x5e8d61 and fs2 == 0 and fe2 == 0xfc and fm2 == 0x4e0c55 and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7e5e8d61; op2val:0x7e4e0c55; valaddr_reg:x16; val_offset:264; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 264, x17, x15, 264, x18)

inst_34:
// fs1 == 0 and fe1 == 0xfc and fm1 == 0x280619 and fs2 == 1 and fe2 == 0xfc and fm2 == 0x38f39d and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7e280619; op2val:0xfe38f39d; valaddr_reg:x16; val_offset:272; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 272, x17, x15, 272, x18)

inst_35:
// fs1 == 0 and fe1 == 0xfc and fm1 == 0x330244 and fs2 == 0 and fe2 == 0xf5 and fm2 == 0x5a077f and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7e330244; op2val:0x7ada077f; valaddr_reg:x16; val_offset:280; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 280, x17, x15, 280, x18)

inst_36:
// fs1 == 0 and fe1 == 0xfd and fm1 == 0x282619 and fs2 == 1 and fe2 == 0xfa and fm2 == 0x31f1cb and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7ea82619; op2val:0xfd31f1cb; valaddr_reg:x16; val_offset:288; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 288, x17, x15, 288, x18)

inst_37:
// fs1 == 0 and fe1 == 0xf9 and fm1 == 0x326d35 and fs2 == 1 and fe2 == 0xfc and fm2 == 0x13f4b3 and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7cb26d35; op2val:0xfe13f4b3; valaddr_reg:x16; val_offset:296; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 296, x17, x15, 296, x18)

inst_38:
// fs1 == 0 and fe1 == 0xfc and fm1 == 0x26592c and fs2 == 1 and fe2 == 0xfc and fm2 == 0x1dd651 and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7e26592c; op2val:0xfe1dd651; valaddr_reg:x16; val_offset:304; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 304, x17, x15, 304, x18)

inst_39:
// fs1 == 0 and fe1 == 0xfe and fm1 == 0x34510e and fs2 == 0 and fe2 == 0xfd and fm2 == 0x564037 and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7f34510e; op2val:0x7ed64037; valaddr_reg:x16; val_offset:312; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 312, x17, x15, 312, x18)

inst_40:
// fs1 == 0 and fe1 == 0xf9 and fm1 == 0x1c56e0 and fs2 == 1 and fe2 == 0xfd and fm2 == 0x462194 and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7c9c56e0; op2val:0xfec62194; valaddr_reg:x16; val_offset:320; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 320, x17, x15, 320, x18)

inst_41:
// fs1 == 0 and fe1 == 0xfe and fm1 == 0x2d12f5 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x273366 and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7f2d12f5; op2val:0x7f273366; valaddr_reg:x16; val_offset:328; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 328, x17, x15, 328, x18)

inst_42:
// fs1 == 0 and fe1 == 0xfc and fm1 == 0x2fb07b and fs2 == 1 and fe2 == 0xfe and fm2 == 0x0991d2 and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7e2fb07b; op2val:0xff0991d2; valaddr_reg:x16; val_offset:336; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 336, x17, x15, 336, x18)

inst_43:
// fs1 == 0 and fe1 == 0xfd and fm1 == 0x2b0757 and fs2 == 1 and fe2 == 0xfc and fm2 == 0x5415da and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7eab0757; op2val:0xfe5415da; valaddr_reg:x16; val_offset:344; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 344, x17, x15, 344, x18)

inst_44:
// fs1 == 0 and fe1 == 0xfe and fm1 == 0x125b96 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x11f412 and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7f125b96; op2val:0x7f11f412; valaddr_reg:x16; val_offset:352; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 352, x17, x15, 352, x18)

inst_45:
// fs1 == 0 and fe1 == 0xfe and fm1 == 0x207786 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x1ac051 and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7f207786; op2val:0x7e9ac051; valaddr_reg:x16; val_offset:360; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 360, x17, x15, 360, x18)

inst_46:
// fs1 == 0 and fe1 == 0xfb and fm1 == 0x102b16 and fs2 == 0 and fe2 == 0xfa and fm2 == 0x4940d1 and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7d902b16; op2val:0x7d4940d1; valaddr_reg:x16; val_offset:368; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 368, x17, x15, 368, x18)

inst_47:
// fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a3631 and fs2 == 1 and fe2 == 0xfb and fm2 == 0x52a1db and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7efa3631; op2val:0xfdd2a1db; valaddr_reg:x16; val_offset:376; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 376, x17, x15, 376, x18)

inst_48:
// fs1 == 0 and fe1 == 0xfd and fm1 == 0x3e3f3f and fs2 == 0 and fe2 == 0xfa and fm2 == 0x0d23d9 and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7ebe3f3f; op2val:0x7d0d23d9; valaddr_reg:x16; val_offset:384; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 384, x17, x15, 384, x18)

inst_49:
// fs1 == 0 and fe1 == 0xfe and fm1 == 0x12a50c and fs2 == 0 and fe2 == 0xfd and fm2 == 0x4357ca and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7f12a50c; op2val:0x7ec357ca; valaddr_reg:x16; val_offset:392; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 392, x17, x15, 392, x18)

inst_50:
// fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 1 and fe2 == 0xfe and fm2 == 0x08e8ca and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7dce622b; op2val:0xff08e8ca; valaddr_reg:x16; val_offset:400; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 400, x17, x15, 400, x18)

inst_51:
// fs1 == 0 and fe1 == 0xfe and fm1 == 0x167638 and fs2 == 1 and fe2 == 0xf9 and fm2 == 0x6249a5 and rm_val == 0  
// opcode: fsub.s ; op1:f10; op2:f11; dest:f12; op1val:0x7f167638; op2val:0xfce249a5; valaddr_reg:x16; val_offset:408; rmval:0x0; correctval:0; testreg:x18
TEST_FPRR_OP(fsub.s, f12, f10, f11, 0x0, 0, x16, 408, x17, x15, 408, x18)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
test_fp:
.word 0x7dce622b
.word 0x7dce622b
.word 0x7ed78fb8
.word 0x7dcfc538
.word 0x7f1b5ad7
.word 0x7e5f1313
.word 0x7f2a257f
.word 0x7ddfc232
.word 0x7f167638
.word 0x7f167638
.word 0x7f37c42d
.word 0x7f36ab8f
.word 0x7e4ece7f
.word 0xfe560df4
.word 0x7edddf89
.word 0x7db64437
.word 0x7ec549ce
.word 0xfea8758a
.word 0x7f252cf6
.word 0x7ef13214
.word 0x7f13f0c0
.word 0x7e3155e7
.word 0x7ec0dc0e
.word 0xfeb84200
.word 0x7e97246c
.word 0x7e2b74d4
.word 0x7f3cc5a4
.word 0x7e95c2f3
.word 0x7d0597cb
.word 0xfefd664b
.word 0x7ebc0ad4
.word 0x7eb0af7e
.word 0x7ec80a54
.word 0x7dc41f1f
.word 0x7ec33c5b
.word 0xfe4f5f54
.word 0x7e8fe2cd
.word 0xfd456706
.word 0x7f06fbdb
.word 0x7caf7105
.word 0x7e04dea3
.word 0xfe904dca
.word 0x7f191a03
.word 0x7e931b4d
.word 0x7cd4206e
.word 0xfe1fe890
.word 0x7ec2076b
.word 0xfd80976d
.word 0x7f296f9b
.word 0x7cdee9fe
.word 0x7e68fcac
.word 0xfe5a465e
.word 0x7f1f5de9
.word 0x7df55870
.word 0x7f33cbed
.word 0x7ec5810c
.word 0x7f0a8666
.word 0x7bfcf3ad
.word 0x7db9afdd
.word 0xfe22aa99
.word 0x7f3e917d
.word 0x7dcbab36
.word 0x7ef6a41a
.word 0x7eaf40c6
.word 0x7f20d0a1
.word 0x7e57e728
.word 0x7e5e8d61
.word 0x7e4e0c55
.word 0x7e280619
.word 0xfe38f39d
.word 0x7e330244
.word 0x7ada077f
.word 0x7ea82619
.word 0xfd31f1cb
.word 0x7cb26d35
.word 0xfe13f4b3
.word 0x7e26592c
.word 0xfe1dd651
.word 0x7f34510e
.word 0x7ed64037
.word 0x7c9c56e0
.word 0xfec62194
.word 0x7f2d12f5
.word 0x7f273366
.word 0x7e2fb07b
.word 0xff0991d2
.word 0x7eab0757
.word 0xfe5415da
.word 0x7f125b96
.word 0x7f11f412
.word 0x7f207786
.word 0x7e9ac051
.word 0x7d902b16
.word 0x7d4940d1
.word 0x7efa3631
.word 0xfdd2a1db
.word 0x7ebe3f3f
.word 0x7d0d23d9
.word 0x7f12a50c
.word 0x7ec357ca
.word 0x7dce622b
.word 0xff08e8ca
.word 0x7f167638
.word 0xfce249a5
RVTEST_DATA_END

RVMODEL_DATA_BEGIN


signature_x15_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x15_1:
    .fill 104*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
