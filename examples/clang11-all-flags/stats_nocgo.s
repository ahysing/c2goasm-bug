//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

DATA LCDATA1<>+0x000(SB)/8, $0x40f0000000000000
GLOBL LCDATA1<>(SB), 8, $8

TEXT ·__variance_uint32_nocgo_darwin(SB), $184-24

    MOVQ buffer+0(FP), DI
    MOVQ length+8(FP), SI
    MOVQ resultPointer+16(FP), DX
    MOVQ SP, BP
    ADDQ $16, SP
    ANDQ $-16, SP
    MOVQ BP, 160(SP)
    LEAQ LCDATA1<>(SB), BP

                                 // mov	r15, rdx
                                 // mov	rax, qword [rip + ___stack_chk_guard@GOTPCREL]
                                 // mov	rax, qword [rax]
                                 // mov	qword [rsp + 144], rax
                                 // test	esi, esi
	JLE LBB0_1
                                 // mov	r9d, esi
                                 // cmp	esi, 31
	JA LBB0_5
                                 // xor	ecx, ecx
                                 // xor	eax, eax
	JMP LBB0_4
LBB0_1:
                                 // vcvtsi2sd	xmm1, xmm0, esi
                                 // vxorpd	xmm11, xmm11, xmm11
                                 // vdivsd	xmm9, xmm11, xmm1
	JMP LBB0_16
LBB0_5:
                                 // mov	ecx, r9d
                                 // and	ecx, -32
                                 // lea	rbx, [rcx - 32]
                                 // mov	rax, rbx
                                 // shr	rax, 5
                                 // inc	rax
                                 // mov	r8d, eax
                                 // and	r8d, 1
                                 // test	rbx, rbx
	JE LBB0_6
                                 // mov	ebx, 1
                                 // sub	rbx, rax
                                 // lea	rbx, [r8 + rbx - 1]
                                 // vpxor	xmm0, xmm0, xmm0
                                 // xor	eax, eax
                                 // vpxor	xmm1, xmm1, xmm1
                                 // vpxor	xmm2, xmm2, xmm2
                                 // vpxor	xmm3, xmm3, xmm3
LBB0_8:
                                 // vpaddd	ymm0, ymm0, yword [rdi + 4*rax]
                                 // vpaddd	ymm1, ymm1, yword [rdi + 4*rax + 32]
                                 // vpaddd	ymm2, ymm2, yword [rdi + 4*rax + 64]
                                 // vpaddd	ymm3, ymm3, yword [rdi + 4*rax + 96]
                                 // vpaddd	ymm0, ymm0, yword [rdi + 4*rax + 128]
                                 // vpaddd	ymm1, ymm1, yword [rdi + 4*rax + 160]
                                 // vpaddd	ymm2, ymm2, yword [rdi + 4*rax + 192]
                                 // vpaddd	ymm3, ymm3, yword [rdi + 4*rax + 224]
                                 // add	rax, 64
                                 // add	rbx, 2
	JNE LBB0_8
                                 // test	r8, r8
	JE LBB0_11
LBB0_10:
                                 // vpaddd	ymm3, ymm3, yword [rdi + 4*rax + 96]
                                 // vpaddd	ymm2, ymm2, yword [rdi + 4*rax + 64]
                                 // vpaddd	ymm1, ymm1, yword [rdi + 4*rax + 32]
                                 // vpaddd	ymm0, ymm0, yword [rdi + 4*rax]
LBB0_11:
                                 // vpaddd	ymm1, ymm1, ymm3
                                 // vpaddd	ymm0, ymm0, ymm2
                                 // vpaddd	ymm0, ymm0, ymm1
                                 // vextracti128	xmm1, ymm0, 1
                                 // vpaddd	ymm0, ymm0, ymm1
                                 // vpshufd	xmm1, xmm0, 78
                                 // vpaddd	ymm0, ymm0, ymm1
                                 // vpshufd	xmm1, xmm0, 229
                                 // vpaddd	xmm0, xmm0, xmm1
                                 // vmovd	eax, xmm0
                                 // cmp	rcx, r9
	JE LBB0_12
LBB0_4:
                                 // add	eax, dword [rdi + 4*rcx]
                                 // inc	rcx
                                 // cmp	r9, rcx
	JNE LBB0_4
LBB0_12:
                                 // mov	eax, eax
                                 // vcvtsi2sd	xmm0, xmm4, rax
                                 // vcvtsi2sd	xmm1, xmm4, esi
                                 // vdivsd	xmm9, xmm0, xmm1
                                 // vxorpd	xmm11, xmm11, xmm11
                                 // cmp	esi, 16
	JL LBB0_16
                                 // mov	eax, esi
                                 // sar	eax, 31
                                 // shr	eax, 28
                                 // add	eax, esi
                                 // sar	eax, 4
                                 // vbroadcastsd	ymm2, xmm9
                                 // lea	rcx, [rdi + 48]
                                 // vxorpd	xmm11, xmm11, xmm11
                                 // vbroadcastsd	ymm3, qword 0[rbp] /* [rip + LCPI0_0] */
                                 // vpxor	xmm10, xmm10, xmm10
LBB0_14:
                                 // vmovdqu	xmm5, oword [rcx - 48]
                                 // vmovdqu	xmm6, oword [rcx - 32]
                                 // vmovdqu	xmm7, oword [rcx - 16]
                                 // vpsrld	xmm1, xmm5, 16
                                 // vcvtdq2pd	ymm1, xmm1
                                 // vmovdqu	xmm4, oword [rcx]
                                 // vpblendw	xmm5, xmm5, xmm10, 170
                                 // vcvtdq2pd	ymm5, xmm5
                                 // vmulpd	ymm1, ymm1, ymm3
                                 // vpsrld	xmm0, xmm6, 16
                                 // vcvtdq2pd	ymm0, xmm0
                                 // vaddpd	ymm1, ymm1, ymm5
                                 // vpblendw	xmm5, xmm6, xmm10, 170
                                 // vcvtdq2pd	ymm5, xmm5
                                 // vmulpd	ymm0, ymm0, ymm3
                                 // vpsrld	xmm6, xmm7, 16
                                 // vcvtdq2pd	ymm6, xmm6
                                 // vaddpd	ymm0, ymm0, ymm5
                                 // vpblendw	xmm5, xmm7, xmm10, 170
                                 // vcvtdq2pd	ymm5, xmm5
                                 // vmulpd	ymm6, ymm6, ymm3
                                 // vpsrld	xmm7, xmm4, 16
                                 // vcvtdq2pd	ymm7, xmm7
                                 // vaddpd	ymm8, ymm6, ymm5
                                 // vpblendw	xmm4, xmm4, xmm10, 170
                                 // vcvtdq2pd	ymm4, xmm4
                                 // vmulpd	ymm5, ymm7, ymm3
                                 // vaddpd	ymm4, ymm5, ymm4
                                 // vsubpd	ymm5, ymm1, ymm2
                                 // vsubpd	ymm6, ymm0, ymm2
                                 // vsubpd	ymm7, ymm8, ymm2
                                 // vsubpd	ymm8, ymm4, ymm2
                                 // vmulsd	xmm0, xmm5, xmm5
                                 // vaddsd	xmm0, xmm11, xmm0
                                 // vpermilpd	xmm1, xmm5, 1
                                 // vmulsd	xmm1, xmm1, xmm1
                                 // vaddsd	xmm0, xmm0, xmm1
                                 // vextractf128	xmm1, ymm5, 1
                                 // vmulsd	xmm4, xmm1, xmm1
                                 // vaddsd	xmm0, xmm0, xmm4
                                 // vpermilpd	xmm1, xmm1, 1
                                 // vmulsd	xmm1, xmm1, xmm1
                                 // vaddsd	xmm0, xmm0, xmm1
                                 // vmulsd	xmm1, xmm6, xmm6
                                 // vaddsd	xmm0, xmm0, xmm1
                                 // vpermilpd	xmm1, xmm6, 1
                                 // vmulsd	xmm1, xmm1, xmm1
                                 // vaddsd	xmm0, xmm0, xmm1
                                 // vextractf128	xmm1, ymm6, 1
                                 // vmulsd	xmm4, xmm1, xmm1
                                 // vaddsd	xmm0, xmm0, xmm4
                                 // vpermilpd	xmm1, xmm1, 1
                                 // vmulsd	xmm1, xmm1, xmm1
                                 // vaddsd	xmm0, xmm0, xmm1
                                 // vmulsd	xmm1, xmm7, xmm7
                                 // vaddsd	xmm0, xmm0, xmm1
                                 // vpermilpd	xmm1, xmm7, 1
                                 // vmulsd	xmm1, xmm1, xmm1
                                 // vaddsd	xmm0, xmm0, xmm1
                                 // vextractf128	xmm1, ymm7, 1
                                 // vmulsd	xmm4, xmm1, xmm1
                                 // vaddsd	xmm0, xmm0, xmm4
                                 // vpermilpd	xmm1, xmm1, 1
                                 // vmulsd	xmm1, xmm1, xmm1
                                 // vaddsd	xmm0, xmm0, xmm1
                                 // vmulsd	xmm1, xmm8, xmm8
                                 // vaddsd	xmm0, xmm0, xmm1
                                 // vpermilpd	xmm1, xmm8, 1
                                 // vmulsd	xmm1, xmm1, xmm1
                                 // vaddsd	xmm0, xmm0, xmm1
                                 // vextractf128	xmm1, ymm8, 1
                                 // vmulsd	xmm4, xmm1, xmm1
                                 // vaddsd	xmm0, xmm0, xmm4
                                 // vpermilpd	xmm1, xmm1, 1
                                 // vmulsd	xmm1, xmm1, xmm1
                                 // vaddsd	xmm11, xmm0, xmm1
                                 // add	rcx, 64
                                 // dec	rax
	JNE LBB0_14
                                 // vmovupd	yword [rsp + 16], ymm5
                                 // vmovupd	yword [rsp + 48], ymm6
                                 // vmovupd	yword [rsp + 80], ymm7
                                 // vmovupd	yword [rsp + 112], ymm8
LBB0_16:
                                 // mov	r9d, esi
                                 // sar	r9d, 31
                                 // shr	r9d, 28
                                 // add	r9d, esi
                                 // and	r9d, -16
                                 // mov	edx, esi
                                 // sub	edx, r9d
                                 // test	edx, edx
	JLE LBB0_41
                                 // movsxd	r10, r9d
                                 // movsxd	r14, esi
                                 // lea	r11, [r10 + 1]
                                 // cmp	r11, r14
                                 // cmovl	r11, r14
                                 // sub	r11, r10
                                 // cmp	r11, 15
	JA LBB0_21
                                 // mov	rax, r10
	JMP LBB0_19
LBB0_21:
                                 // mov	dword [rsp + 12], esi
                                 // mov	rsi, r15
                                 // mov	r15, r11
                                 // and	r15, -16
                                 // lea	rax, [r15 + r10]
                                 // add	r9d, r15d
                                 // lea	r13, [rdi + 4*r10 + 48]
                                 // xor	r8d, r8d
                                 // vbroadcastsd	ymm2, qword 0[rbp] /* [rip + LCPI0_0] */
                                 // vxorpd	xmm3, xmm3, xmm3
                                 // mov	r12, 68719476736
                                 // xor	ecx, ecx
LBB0_22:
                                 // vmovdqu	xmm0, oword [r13 + 4*rcx - 48]
                                 // vmovdqu	xmm1, oword [r13 + 4*rcx - 32]
                                 // vmovdqu	xmm4, oword [r13 + 4*rcx - 16]
                                 // vmovdqu	xmm5, oword [r13 + 4*rcx]
                                 // vpsrld	xmm6, xmm0, 16
                                 // vcvtdq2pd	ymm6, xmm6
                                 // vmulpd	ymm6, ymm6, ymm2
                                 // vpblendw	xmm0, xmm0, xmm3, 170
                                 // vcvtdq2pd	ymm0, xmm0
                                 // vaddpd	ymm0, ymm6, ymm0
                                 // vpsrld	xmm6, xmm1, 16
                                 // vcvtdq2pd	ymm6, xmm6
                                 // vmulpd	ymm6, ymm6, ymm2
                                 // vpblendw	xmm1, xmm1, xmm3, 170
                                 // vcvtdq2pd	ymm1, xmm1
                                 // vaddpd	ymm1, ymm6, ymm1
                                 // vpsrld	xmm6, xmm4, 16
                                 // vcvtdq2pd	ymm6, xmm6
                                 // vmulpd	ymm6, ymm6, ymm2
                                 // vpblendw	xmm4, xmm4, xmm3, 170
                                 // vcvtdq2pd	ymm4, xmm4
                                 // vaddpd	ymm4, ymm6, ymm4
                                 // vpsrld	xmm6, xmm5, 16
                                 // vcvtdq2pd	ymm6, xmm6
                                 // vmulpd	ymm6, ymm6, ymm2
                                 // vpblendw	xmm5, xmm5, xmm3, 170
                                 // vcvtdq2pd	ymm5, xmm5
                                 // vaddpd	ymm5, ymm6, ymm5
                                 // mov	rbx, r8
                                 // sar	rbx, 29
                                 // vmovupd	yword [rsp + rbx + 16], ymm0
                                 // vmovupd	yword [rsp + rbx + 48], ymm1
                                 // vmovupd	yword [rsp + rbx + 80], ymm4
                                 // vmovupd	yword [rsp + rbx + 112], ymm5
                                 // add	rcx, 16
                                 // add	r8, r12
                                 // cmp	r15, rcx
	JNE LBB0_22
                                 // cmp	r11, r15
                                 // mov	r15, rsi
                                 // mov	esi, dword [rsp + 12]
	JE LBB0_24
LBB0_19:
                                 // movsxd	rcx, r9d
                                 // sub	rcx, r10
                                 // lea	rcx, [rsp + 8*rcx + 16]
LBB0_20:
                                 // mov	ebx, dword [rdi + 4*rax]
                                 // vcvtsi2sd	xmm0, xmm12, rbx
                                 // vmovsd	qword [rcx], xmm0
                                 // inc	rax
                                 // add	rcx, 8
                                 // cmp	rax, r14
	JL LBB0_20
LBB0_24:
                                 // test	edx, edx
	JLE LBB0_41
                                 // mov	ecx, edx
                                 // cmp	edx, 15
	JA LBB0_28
                                 // xor	edi, edi
	JMP LBB0_27
LBB0_28:
                                 // mov	edi, ecx
                                 // and	edi, -16
                                 // vbroadcastsd	ymm2, xmm9
                                 // lea	rbx, [rdi - 16]
                                 // mov	rax, rbx
                                 // shr	rax, 4
                                 // inc	rax
                                 // mov	r9d, eax
                                 // and	r9d, 1
                                 // test	rbx, rbx
	JE LBB0_29
                                 // mov	ebx, 1
                                 // sub	rbx, rax
                                 // lea	rbx, [r9 + rbx - 1]
                                 // xor	eax, eax
LBB0_31:
                                 // vmovupd	ymm0, yword [rsp + 8*rax + 16]
                                 // vmovupd	ymm1, yword [rsp + 8*rax + 48]
                                 // vmovupd	ymm3, yword [rsp + 8*rax + 80]
                                 // vmovupd	ymm4, yword [rsp + 8*rax + 112]
                                 // vsubpd	ymm0, ymm0, ymm2
                                 // vsubpd	ymm1, ymm1, ymm2
                                 // vsubpd	ymm3, ymm3, ymm2
                                 // vsubpd	ymm4, ymm4, ymm2
                                 // vmovupd	yword [rsp + 8*rax + 16], ymm0
                                 // vmovupd	yword [rsp + 8*rax + 48], ymm1
                                 // vmovupd	yword [rsp + 8*rax + 80], ymm3
                                 // vmovupd	yword [rsp + 8*rax + 112], ymm4
                                 // vmovupd	ymm0, yword [rsp + 8*rax + 144]
                                 // vmovupd	ymm1, yword [rsp + 8*rax + 176]
                                 // vmovupd	ymm3, yword [rsp + 8*rax + 208]
                                 // vmovupd	ymm4, yword [rsp + 8*rax + 240]
                                 // vsubpd	ymm0, ymm0, ymm2
                                 // vsubpd	ymm1, ymm1, ymm2
                                 // vsubpd	ymm3, ymm3, ymm2
                                 // vsubpd	ymm4, ymm4, ymm2
                                 // vmovupd	yword [rsp + 8*rax + 144], ymm0
                                 // vmovupd	yword [rsp + 8*rax + 176], ymm1
                                 // vmovupd	yword [rsp + 8*rax + 208], ymm3
                                 // vmovupd	yword [rsp + 8*rax + 240], ymm4
                                 // add	rax, 32
                                 // add	rbx, 2
	JNE LBB0_31
                                 // test	r9, r9
	JE LBB0_34
LBB0_33:
                                 // vmovupd	ymm0, yword [rsp + 8*rax + 16]
                                 // vmovupd	ymm1, yword [rsp + 8*rax + 48]
                                 // vmovupd	ymm3, yword [rsp + 8*rax + 80]
                                 // vmovupd	ymm4, yword [rsp + 8*rax + 112]
                                 // vsubpd	ymm0, ymm0, ymm2
                                 // vsubpd	ymm1, ymm1, ymm2
                                 // vsubpd	ymm3, ymm3, ymm2
                                 // vsubpd	ymm2, ymm4, ymm2
                                 // vmovupd	yword [rsp + 8*rax + 16], ymm0
                                 // vmovupd	yword [rsp + 8*rax + 48], ymm1
                                 // vmovupd	yword [rsp + 8*rax + 80], ymm3
                                 // vmovupd	yword [rsp + 8*rax + 112], ymm2
LBB0_34:
                                 // cmp	rdi, rcx
	JE LBB0_35
LBB0_27:
                                 // vmovsd	xmm0, qword [rsp + 8*rdi + 16]
                                 // vsubsd	xmm0, xmm0, xmm9
                                 // vmovsd	qword [rsp + 8*rdi + 16], xmm0
                                 // inc	rdi
                                 // cmp	rcx, rdi
	JNE LBB0_27
LBB0_35:
                                 // test	edx, edx
	JLE LBB0_41
                                 // lea	rdx, [rcx - 1]
                                 // mov	eax, ecx
                                 // and	eax, 3
                                 // cmp	rdx, 3
	JAE LBB0_43
                                 // xor	edi, edi
                                 // test	rax, rax
	JNE LBB0_39
	JMP LBB0_41
LBB0_43:
                                 // sub	rcx, rax
                                 // xor	edi, edi
LBB0_44:
                                 // vmovsd	xmm0, qword [rsp + 8*rdi + 16]
                                 // vmovsd	xmm1, qword [rsp + 8*rdi + 24]
                                 // vmulsd	xmm0, xmm0, xmm0
                                 // vaddsd	xmm0, xmm11, xmm0
                                 // vmulsd	xmm1, xmm1, xmm1
                                 // vaddsd	xmm0, xmm0, xmm1
                                 // vmovsd	xmm1, qword [rsp + 8*rdi + 32]
                                 // vmulsd	xmm1, xmm1, xmm1
                                 // vaddsd	xmm0, xmm0, xmm1
                                 // vmovsd	xmm1, qword [rsp + 8*rdi + 40]
                                 // vmulsd	xmm1, xmm1, xmm1
                                 // vaddsd	xmm11, xmm0, xmm1
                                 // add	rdi, 4
                                 // cmp	rcx, rdi
	JNE LBB0_44
                                 // test	rax, rax
	JE LBB0_41
LBB0_39:
                                 // lea	rcx, [rsp + 8*rdi + 16]
                                 // xor	edi, edi
LBB0_40:
                                 // vmovsd	xmm0, qword [rcx + 8*rdi]
                                 // vmulsd	xmm0, xmm0, xmm0
                                 // vaddsd	xmm11, xmm11, xmm0
                                 // inc	rdi
                                 // cmp	rax, rdi
	JNE LBB0_40
LBB0_41:
                                 // dec	esi
                                 // vcvtsi2sd	xmm0, xmm12, esi
                                 // vdivsd	xmm0, xmm11, xmm0
                                 // vmovsd	qword [r15], xmm0
                                 // mov	rax, qword [rip + ___stack_chk_guard@GOTPCREL]
                                 // mov	rax, qword [rax]
                                 // cmp	rax, qword [rsp + 144]
	JNE LBB0_45
    MOVQ 160(SP), SP
    VZEROUPPER
    RET
LBB0_6:
                                 // vpxor	xmm0, xmm0, xmm0
                                 // xor	eax, eax
                                 // vpxor	xmm1, xmm1, xmm1
                                 // vpxor	xmm2, xmm2, xmm2
                                 // vpxor	xmm3, xmm3, xmm3
                                 // test	r8, r8
	JNE LBB0_10
	JMP LBB0_11
LBB0_29:
                                 // xor	eax, eax
                                 // test	r9, r9
	JNE LBB0_33
	JMP LBB0_34
LBB0_45:
                                 // vzeroupper
	CALL ___stack_chk_fail

.subsections_via_symbols

