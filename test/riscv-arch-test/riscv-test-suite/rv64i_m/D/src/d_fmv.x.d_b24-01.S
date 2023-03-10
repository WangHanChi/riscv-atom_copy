
// -----------
// This file was generated by riscv_ctg (https://github.com/riscv-software-src/riscv-ctg)
// version   : 0.5.6
// timestamp : Mon Sep 20 15:14:31 2021 GMT
// usage     : riscv_ctg \
//                  -- cgf //                  --cgf /scratch/compliance_fd/riscv-ctg/sample_cgfs/dataset.cgf \
//                  --cgf /scratch/compliance_fd/riscv-ctg/sample_cgfs/sample_cgfs_fext/RV64D/rv64d_fmv.d.x.cgf \
//                  --cgf /scratch/compliance_fd/riscv-ctg/sample_cgfs/sample_cgfs_fext/RV64D/rv64d_fmv.x.d.cgf \
 \
//                  -- xlen 64  \
//                  --randomize \
// -----------
//
// -----------
// Copyright (c) 2021. IIT Madras. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the fmv.x.d instruction of the RISC-V FD extension for the fmv.x.d_b24 covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV64IFD")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*D.*);def TEST_CASE_1=True;",d_fmv.x.d_b24)

RVTEST_FP_ENABLE()
RVTEST_VALBASEUPD(x16,test_fp)
RVTEST_SIGBASE(x15,signature_x15_1)

inst_0:// rs1==f28, rd==x0, fs1 == 0 and fe1 == 0x3fb and fm1 == 0xc28f5c28f5c29 and rm_val == 0  
// opcode: fmv.x.d ; op1:f28; dest:x0; op1val:0x3fbc28f5c28f5c29; valaddr_reg:x16; val_offset:0; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x0, f28, 0x0, 0, x16, 0, x17, x15, 0, x18)
RVTEST_VALBASEMOV(x20, x16)
RVTEST_SIGBASE(x19,signature_x19_0)

inst_1:// rs1==f15, rd==x17, fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  
// opcode: fmv.x.d ; op1:f15; dest:x17; op1val:0x0; valaddr_reg:x20; val_offset:8; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x17, f15, 0x0, 0, x20, 8, x21, x19, 0, x18)
RVTEST_VALBASEMOV(x16, x20)
RVTEST_SIGBASE(x15,signature_x15_2)

inst_2:// rs1==f11, rd==x11, fs1 == 1 and fe1 == 0x3fe and fm1 == 0xccccccccccccd and rm_val == 0  
// opcode: fmv.x.d ; op1:f11; dest:x11; op1val:0xbfeccccccccccccd; valaddr_reg:x16; val_offset:16; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x11, f11, 0x0, 0, x16, 16, x17, x15, 0, x18)

inst_3:// rs1==f10, rd==x30, fs1 == 0 and fe1 == 0x3fe and fm1 == 0xccccccccccccd and rm_val == 0  
// opcode: fmv.x.d ; op1:f10; dest:x30; op1val:0x3feccccccccccccd; valaddr_reg:x16; val_offset:24; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x30, f10, 0x0, 0, x16, 24, x17, x15, 16, x18)
RVTEST_VALBASEMOV(x20, x16)
RVTEST_SIGBASE(x19,signature_x19_1)

inst_4:// rs1==f8, rd==x16, fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x47ae147ae147b and rm_val == 0  
// opcode: fmv.x.d ; op1:f8; dest:x16; op1val:0x3f847ae147ae147b; valaddr_reg:x20; val_offset:32; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x16, f8, 0x0, 0, x20, 32, x21, x19, 0, x18)
RVTEST_VALBASEMOV(x16, x20)
RVTEST_SIGBASE(x15,signature_x15_3)

inst_5:// rs1==f19, rd==x14, fs1 == 1 and fe1 == 0x3fb and fm1 == 0x999999999999a and rm_val == 0  
// opcode: fmv.x.d ; op1:f19; dest:x14; op1val:0xbfb999999999999a; valaddr_reg:x16; val_offset:40; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x14, f19, 0x0, 0, x16, 40, x17, x15, 0, x18)

inst_6:// rs1==f26, rd==x12, fs1 == 0 and fe1 == 0x3ff and fm1 == 0x199999999999a and rm_val == 0  
// opcode: fmv.x.d ; op1:f26; dest:x12; op1val:0x3ff199999999999a; valaddr_reg:x16; val_offset:48; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x12, f26, 0x0, 0, x16, 48, x17, x15, 16, x18)

inst_7:// rs1==f17, rd==x2, fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 0  
// opcode: fmv.x.d ; op1:f17; dest:x2; op1val:0x3ff0000000000000; valaddr_reg:x16; val_offset:56; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x2, f17, 0x0, 0, x16, 56, x17, x15, 32, x18)
RVTEST_VALBASEMOV(x20, x16)
RVTEST_SIGBASE(x19,signature_x19_2)

inst_8:// rs1==f2, rd==x15, fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x47ae147ae147b and rm_val == 0  
// opcode: fmv.x.d ; op1:f2; dest:x15; op1val:0xbf847ae147ae147b; valaddr_reg:x20; val_offset:64; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x15, f2, 0x0, 0, x20, 64, x21, x19, 0, x18)
RVTEST_VALBASEMOV(x16, x20)
RVTEST_SIGBASE(x15,signature_x15_4)

inst_9:// rs1==f6, rd==x21, fs1 == 1 and fe1 == 0x3fb and fm1 == 0xc28f5c28f5c29 and rm_val == 0  
// opcode: fmv.x.d ; op1:f6; dest:x21; op1val:0xbfbc28f5c28f5c29; valaddr_reg:x16; val_offset:72; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x21, f6, 0x0, 0, x16, 72, x17, x15, 0, x18)

inst_10:// rs1==f12, rd==x7, fs1 == 0 and fe1 == 0x3fb and fm1 == 0x999999999999a and rm_val == 0  
// opcode: fmv.x.d ; op1:f12; dest:x7; op1val:0x3fb999999999999a; valaddr_reg:x16; val_offset:80; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x7, f12, 0x0, 0, x16, 80, x17, x15, 16, x18)

inst_11:// rs1==f4, rd==x8, fs1 == 1 and fe1 == 0x3fe and fm1 == 0xc7ae147ae147b and rm_val == 0  
// opcode: fmv.x.d ; op1:f4; dest:x8; op1val:0xbfec7ae147ae147b; valaddr_reg:x16; val_offset:88; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x8, f4, 0x0, 0, x16, 88, x17, x15, 32, x18)

inst_12:// rs1==f1, rd==x13, fs1 == 1 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 0  
// opcode: fmv.x.d ; op1:f1; dest:x13; op1val:0xbff0000000000000; valaddr_reg:x16; val_offset:96; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x13, f1, 0x0, 0, x16, 96, x17, x15, 48, x18)

inst_13:// rs1==f27, rd==x6, fs1 == 1 and fe1 == 0x3fe and fm1 == 0xfae147ae147ae and rm_val == 0  
// opcode: fmv.x.d ; op1:f27; dest:x6; op1val:0xbfefae147ae147ae; valaddr_reg:x16; val_offset:104; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x6, f27, 0x0, 0, x16, 104, x17, x15, 64, x18)

inst_14:// rs1==f13, rd==x18, fs1 == 0 and fe1 == 0x3fe and fm1 == 0xfae147ae147ae and rm_val == 0  
// opcode: fmv.x.d ; op1:f13; dest:x18; op1val:0x3fefae147ae147ae; valaddr_reg:x16; val_offset:112; rmval:0x0; correctval:0; testreg:x22
TEST_FPID_OP(fmv.x.d, x18, f13, 0x0, 0, x16, 112, x17, x15, 80, x22)

inst_15:// rs1==f9, rd==x23, fs1 == 0 and fe1 == 0x3ff and fm1 == 0x028f5c28f5c29 and rm_val == 0  
// opcode: fmv.x.d ; op1:f9; dest:x23; op1val:0x3ff028f5c28f5c29; valaddr_reg:x16; val_offset:120; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x23, f9, 0x0, 0, x16, 120, x17, x15, 96, x18)

inst_16:// rs1==f16, rd==x9, fs1 == 1 and fe1 == 0x3ff and fm1 == 0x1c28f5c28f5c3 and rm_val == 0  
// opcode: fmv.x.d ; op1:f16; dest:x9; op1val:0xbff1c28f5c28f5c3; valaddr_reg:x16; val_offset:128; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x9, f16, 0x0, 0, x16, 128, x17, x15, 112, x18)

inst_17:// rs1==f18, rd==x10, fs1 == 1 and fe1 == 0x3ff and fm1 == 0x199999999999a and rm_val == 0  
// opcode: fmv.x.d ; op1:f18; dest:x10; op1val:0xbff199999999999a; valaddr_reg:x16; val_offset:136; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x10, f18, 0x0, 0, x16, 136, x17, x15, 128, x18)

inst_18:// rs1==f22, rd==x19, fs1 == 1 and fe1 == 0x3ff and fm1 == 0x028f5c28f5c29 and rm_val == 0  
// opcode: fmv.x.d ; op1:f22; dest:x19; op1val:0xbff028f5c28f5c29; valaddr_reg:x16; val_offset:144; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x19, f22, 0x0, 0, x16, 144, x17, x15, 144, x18)

inst_19:// rs1==f14, rd==x3, fs1 == 0 and fe1 == 0x3fe and fm1 == 0xc7ae147ae147b and rm_val == 0  
// opcode: fmv.x.d ; op1:f14; dest:x3; op1val:0x3fec7ae147ae147b; valaddr_reg:x16; val_offset:152; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x3, f14, 0x0, 0, x16, 152, x17, x15, 160, x18)

inst_20:// rs1==f20, rd==x25, fs1 == 0 and fe1 == 0x3ff and fm1 == 0x1c28f5c28f5c3 and rm_val == 0  
// opcode: fmv.x.d ; op1:f20; dest:x25; op1val:0x3ff1c28f5c28f5c3; valaddr_reg:x16; val_offset:160; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x25, f20, 0x0, 0, x16, 160, x17, x15, 176, x18)

inst_21:// rs1==f25, rd==x31, 
// opcode: fmv.x.d ; op1:f25; dest:x31; op1val:0x0; valaddr_reg:x16; val_offset:168; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x31, f25, 0x0, 0, x16, 168, x17, x15, 192, x18)

inst_22:// rs1==f29, rd==x1, 
// opcode: fmv.x.d ; op1:f29; dest:x1; op1val:0x0; valaddr_reg:x16; val_offset:176; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x1, f29, 0x0, 0, x16, 176, x17, x15, 208, x18)

inst_23:// rs1==f23, rd==x26, 
// opcode: fmv.x.d ; op1:f23; dest:x26; op1val:0x0; valaddr_reg:x16; val_offset:184; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x26, f23, 0x0, 0, x16, 184, x17, x15, 224, x18)

inst_24:// rs1==f31, rd==x27, 
// opcode: fmv.x.d ; op1:f31; dest:x27; op1val:0x0; valaddr_reg:x16; val_offset:192; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x27, f31, 0x0, 0, x16, 192, x17, x15, 240, x18)

inst_25:// rs1==f24, rd==x22, 
// opcode: fmv.x.d ; op1:f24; dest:x22; op1val:0x0; valaddr_reg:x16; val_offset:200; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x22, f24, 0x0, 0, x16, 200, x17, x15, 256, x18)

inst_26:// rs1==f30, rd==x4, 
// opcode: fmv.x.d ; op1:f30; dest:x4; op1val:0x0; valaddr_reg:x16; val_offset:208; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x4, f30, 0x0, 0, x16, 208, x17, x15, 272, x18)

inst_27:// rs1==f7, rd==x29, 
// opcode: fmv.x.d ; op1:f7; dest:x29; op1val:0x0; valaddr_reg:x16; val_offset:216; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x29, f7, 0x0, 0, x16, 216, x17, x15, 288, x18)

inst_28:// rs1==f21, rd==x24, 
// opcode: fmv.x.d ; op1:f21; dest:x24; op1val:0x0; valaddr_reg:x16; val_offset:224; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x24, f21, 0x0, 0, x16, 224, x17, x15, 304, x18)

inst_29:// rs1==f3, rd==x28, 
// opcode: fmv.x.d ; op1:f3; dest:x28; op1val:0x0; valaddr_reg:x16; val_offset:232; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x28, f3, 0x0, 0, x16, 232, x17, x15, 320, x18)

inst_30:// rs1==f0, rd==x5, 
// opcode: fmv.x.d ; op1:f0; dest:x5; op1val:0x0; valaddr_reg:x16; val_offset:240; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x5, f0, 0x0, 0, x16, 240, x17, x15, 336, x18)

inst_31:// rs1==f5, rd==x20, 
// opcode: fmv.x.d ; op1:f5; dest:x20; op1val:0x0; valaddr_reg:x16; val_offset:248; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x20, f5, 0x0, 0, x16, 248, x17, x15, 352, x18)

inst_32:// fs1 == 0 and fe1 == 0x3fb and fm1 == 0xc28f5c28f5c29 and rm_val == 0  
// opcode: fmv.x.d ; op1:f10; dest:x11; op1val:0x3fbc28f5c28f5c29; valaddr_reg:x16; val_offset:256; rmval:0x0; correctval:0; testreg:x18
TEST_FPID_OP(fmv.x.d, x11, f10, 0x0, 0, x16, 256, x17, x15, 368, x18)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
.word 0xabecafeb
.word 0xbecafeba
.word 0xecafebab
test_fp:
.dword 0x3fbc28f5c28f5c29
.dword 0x0
.dword 0xbfeccccccccccccd
.dword 0x3feccccccccccccd
.dword 0x3f847ae147ae147b
.dword 0xbfb999999999999a
.dword 0x3ff199999999999a
.dword 0x3ff0000000000000
.dword 0xbf847ae147ae147b
.dword 0xbfbc28f5c28f5c29
.dword 0x3fb999999999999a
.dword 0xbfec7ae147ae147b
.dword 0xbff0000000000000
.dword 0xbfefae147ae147ae
.dword 0x3fefae147ae147ae
.dword 0x3ff028f5c28f5c29
.dword 0xbff1c28f5c28f5c3
.dword 0xbff199999999999a
.dword 0xbff028f5c28f5c29
.dword 0x3fec7ae147ae147b
.dword 0x3ff1c28f5c28f5c3
.dword 0x0
.dword 0x0
.dword 0x0
.dword 0x0
.dword 0x0
.dword 0x0
.dword 0x0
.dword 0x0
.dword 0x0
.dword 0x0
.dword 0x0
.dword 0x3fbc28f5c28f5c29
RVTEST_DATA_END

RVMODEL_DATA_BEGIN


signature_x15_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x15_1:
    .fill 2*(XLEN/32),4,0xdeadbeef


signature_x19_0:
    .fill 2*(XLEN/32),4,0xdeadbeef


signature_x15_2:
    .fill 4*(XLEN/32),4,0xdeadbeef


signature_x19_1:
    .fill 2*(XLEN/32),4,0xdeadbeef


signature_x15_3:
    .fill 6*(XLEN/32),4,0xdeadbeef


signature_x19_2:
    .fill 2*(XLEN/32),4,0xdeadbeef


signature_x15_4:
    .fill 48*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
