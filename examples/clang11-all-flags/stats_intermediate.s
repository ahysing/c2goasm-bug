	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function variance_uint32_nocgo_darwin
LCPI0_0:
	.quad	4679240012837945344     ## double 65536
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_variance_uint32_nocgo_darwin
	.p2align	4, 0x90
_variance_uint32_nocgo_darwin:          ## @variance_uint32_nocgo_darwin
## %bb.0:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	and	rsp, -16
	sub	rsp, 160
	mov	r15, rdx
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 144], rax
	test	esi, esi
	jle	LBB0_1
## %bb.2:
	mov	r9d, esi
	cmp	esi, 31
	ja	LBB0_5
## %bb.3:
	xor	ecx, ecx
	xor	eax, eax
	jmp	LBB0_4
LBB0_1:
	vcvtsi2sd	xmm1, xmm0, esi
	vxorpd	xmm11, xmm11, xmm11
	vdivsd	xmm9, xmm11, xmm1
	jmp	LBB0_16
LBB0_5:
	mov	ecx, r9d
	and	ecx, -32
	lea	rbx, [rcx - 32]
	mov	rax, rbx
	shr	rax, 5
	inc	rax
	mov	r8d, eax
	and	r8d, 1
	test	rbx, rbx
	je	LBB0_6
## %bb.7:
	mov	ebx, 1
	sub	rbx, rax
	lea	rbx, [r8 + rbx - 1]
	vpxor	xmm0, xmm0, xmm0
	xor	eax, eax
	vpxor	xmm1, xmm1, xmm1
	vpxor	xmm2, xmm2, xmm2
	vpxor	xmm3, xmm3, xmm3
	.p2align	4, 0x90
LBB0_8:                                 ## =>This Inner Loop Header: Depth=1
	vpaddd	ymm0, ymm0, ymmword ptr [rdi + 4*rax]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 4*rax + 32]
	vpaddd	ymm2, ymm2, ymmword ptr [rdi + 4*rax + 64]
	vpaddd	ymm3, ymm3, ymmword ptr [rdi + 4*rax + 96]
	vpaddd	ymm0, ymm0, ymmword ptr [rdi + 4*rax + 128]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 4*rax + 160]
	vpaddd	ymm2, ymm2, ymmword ptr [rdi + 4*rax + 192]
	vpaddd	ymm3, ymm3, ymmword ptr [rdi + 4*rax + 224]
	add	rax, 64
	add	rbx, 2
	jne	LBB0_8
## %bb.9:
	test	r8, r8
	je	LBB0_11
LBB0_10:
	vpaddd	ymm3, ymm3, ymmword ptr [rdi + 4*rax + 96]
	vpaddd	ymm2, ymm2, ymmword ptr [rdi + 4*rax + 64]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 4*rax + 32]
	vpaddd	ymm0, ymm0, ymmword ptr [rdi + 4*rax]
LBB0_11:
	vpaddd	ymm1, ymm1, ymm3
	vpaddd	ymm0, ymm0, ymm2
	vpaddd	ymm0, ymm0, ymm1
	vextracti128	xmm1, ymm0, 1
	vpaddd	ymm0, ymm0, ymm1
	vpshufd	xmm1, xmm0, 78          ## xmm1 = xmm0[2,3,0,1]
	vpaddd	ymm0, ymm0, ymm1
	vpshufd	xmm1, xmm0, 229         ## xmm1 = xmm0[1,1,2,3]
	vpaddd	xmm0, xmm0, xmm1
	vmovd	eax, xmm0
	cmp	rcx, r9
	je	LBB0_12
	.p2align	4, 0x90
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	add	eax, dword ptr [rdi + 4*rcx]
	inc	rcx
	cmp	r9, rcx
	jne	LBB0_4
LBB0_12:
	mov	eax, eax
	vcvtsi2sd	xmm0, xmm4, rax
	vcvtsi2sd	xmm1, xmm4, esi
	vdivsd	xmm9, xmm0, xmm1
	vxorpd	xmm11, xmm11, xmm11
	cmp	esi, 16
	jl	LBB0_16
## %bb.13:
	mov	eax, esi
	sar	eax, 31
	shr	eax, 28
	add	eax, esi
	sar	eax, 4
	vbroadcastsd	ymm2, xmm9
	lea	rcx, [rdi + 48]
	vxorpd	xmm11, xmm11, xmm11
	vbroadcastsd	ymm3, qword ptr [rip + LCPI0_0] ## ymm3 = [6.5536E+4,6.5536E+4,6.5536E+4,6.5536E+4]
	vpxor	xmm10, xmm10, xmm10
	.p2align	4, 0x90
LBB0_14:                                ## =>This Inner Loop Header: Depth=1
	vmovdqu	xmm5, xmmword ptr [rcx - 48]
	vmovdqu	xmm6, xmmword ptr [rcx - 32]
	vmovdqu	xmm7, xmmword ptr [rcx - 16]
	vpsrld	xmm1, xmm5, 16
	vcvtdq2pd	ymm1, xmm1
	vmovdqu	xmm4, xmmword ptr [rcx]
	vpblendw	xmm5, xmm5, xmm10, 170 ## xmm5 = xmm5[0],xmm10[1],xmm5[2],xmm10[3],xmm5[4],xmm10[5],xmm5[6],xmm10[7]
	vcvtdq2pd	ymm5, xmm5
	vmulpd	ymm1, ymm1, ymm3
	vpsrld	xmm0, xmm6, 16
	vcvtdq2pd	ymm0, xmm0
	vaddpd	ymm1, ymm1, ymm5
	vpblendw	xmm5, xmm6, xmm10, 170 ## xmm5 = xmm6[0],xmm10[1],xmm6[2],xmm10[3],xmm6[4],xmm10[5],xmm6[6],xmm10[7]
	vcvtdq2pd	ymm5, xmm5
	vmulpd	ymm0, ymm0, ymm3
	vpsrld	xmm6, xmm7, 16
	vcvtdq2pd	ymm6, xmm6
	vaddpd	ymm0, ymm0, ymm5
	vpblendw	xmm5, xmm7, xmm10, 170 ## xmm5 = xmm7[0],xmm10[1],xmm7[2],xmm10[3],xmm7[4],xmm10[5],xmm7[6],xmm10[7]
	vcvtdq2pd	ymm5, xmm5
	vmulpd	ymm6, ymm6, ymm3
	vpsrld	xmm7, xmm4, 16
	vcvtdq2pd	ymm7, xmm7
	vaddpd	ymm8, ymm6, ymm5
	vpblendw	xmm4, xmm4, xmm10, 170 ## xmm4 = xmm4[0],xmm10[1],xmm4[2],xmm10[3],xmm4[4],xmm10[5],xmm4[6],xmm10[7]
	vcvtdq2pd	ymm4, xmm4
	vmulpd	ymm5, ymm7, ymm3
	vaddpd	ymm4, ymm5, ymm4
	vsubpd	ymm5, ymm1, ymm2
	vsubpd	ymm6, ymm0, ymm2
	vsubpd	ymm7, ymm8, ymm2
	vsubpd	ymm8, ymm4, ymm2
	vmulsd	xmm0, xmm5, xmm5
	vaddsd	xmm0, xmm11, xmm0
	vpermilpd	xmm1, xmm5, 1   ## xmm1 = xmm5[1,0]
	vmulsd	xmm1, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm1
	vextractf128	xmm1, ymm5, 1
	vmulsd	xmm4, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm4
	vpermilpd	xmm1, xmm1, 1   ## xmm1 = xmm1[1,0]
	vmulsd	xmm1, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm1
	vmulsd	xmm1, xmm6, xmm6
	vaddsd	xmm0, xmm0, xmm1
	vpermilpd	xmm1, xmm6, 1   ## xmm1 = xmm6[1,0]
	vmulsd	xmm1, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm1
	vextractf128	xmm1, ymm6, 1
	vmulsd	xmm4, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm4
	vpermilpd	xmm1, xmm1, 1   ## xmm1 = xmm1[1,0]
	vmulsd	xmm1, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm1
	vmulsd	xmm1, xmm7, xmm7
	vaddsd	xmm0, xmm0, xmm1
	vpermilpd	xmm1, xmm7, 1   ## xmm1 = xmm7[1,0]
	vmulsd	xmm1, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm1
	vextractf128	xmm1, ymm7, 1
	vmulsd	xmm4, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm4
	vpermilpd	xmm1, xmm1, 1   ## xmm1 = xmm1[1,0]
	vmulsd	xmm1, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm1
	vmulsd	xmm1, xmm8, xmm8
	vaddsd	xmm0, xmm0, xmm1
	vpermilpd	xmm1, xmm8, 1   ## xmm1 = xmm8[1,0]
	vmulsd	xmm1, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm1
	vextractf128	xmm1, ymm8, 1
	vmulsd	xmm4, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm4
	vpermilpd	xmm1, xmm1, 1   ## xmm1 = xmm1[1,0]
	vmulsd	xmm1, xmm1, xmm1
	vaddsd	xmm11, xmm0, xmm1
	add	rcx, 64
	dec	rax
	jne	LBB0_14
## %bb.15:
	vmovupd	ymmword ptr [rsp + 16], ymm5
	vmovupd	ymmword ptr [rsp + 48], ymm6
	vmovupd	ymmword ptr [rsp + 80], ymm7
	vmovupd	ymmword ptr [rsp + 112], ymm8
LBB0_16:
	mov	r9d, esi
	sar	r9d, 31
	shr	r9d, 28
	add	r9d, esi
	and	r9d, -16
	mov	edx, esi
	sub	edx, r9d
	test	edx, edx
	jle	LBB0_41
## %bb.17:
	movsxd	r10, r9d
	movsxd	r14, esi
	lea	r11, [r10 + 1]
	cmp	r11, r14
	cmovl	r11, r14
	sub	r11, r10
	cmp	r11, 15
	ja	LBB0_21
## %bb.18:
	mov	rax, r10
	jmp	LBB0_19
LBB0_21:
	mov	dword ptr [rsp + 12], esi ## 4-byte Spill
	mov	rsi, r15
	mov	r15, r11
	and	r15, -16
	lea	rax, [r15 + r10]
	add	r9d, r15d
	lea	r13, [rdi + 4*r10 + 48]
	xor	r8d, r8d
	vbroadcastsd	ymm2, qword ptr [rip + LCPI0_0] ## ymm2 = [6.5536E+4,6.5536E+4,6.5536E+4,6.5536E+4]
	vxorpd	xmm3, xmm3, xmm3
	movabs	r12, 68719476736
	xor	ecx, ecx
	.p2align	4, 0x90
LBB0_22:                                ## =>This Inner Loop Header: Depth=1
	vmovdqu	xmm0, xmmword ptr [r13 + 4*rcx - 48]
	vmovdqu	xmm1, xmmword ptr [r13 + 4*rcx - 32]
	vmovdqu	xmm4, xmmword ptr [r13 + 4*rcx - 16]
	vmovdqu	xmm5, xmmword ptr [r13 + 4*rcx]
	vpsrld	xmm6, xmm0, 16
	vcvtdq2pd	ymm6, xmm6
	vmulpd	ymm6, ymm6, ymm2
	vpblendw	xmm0, xmm0, xmm3, 170 ## xmm0 = xmm0[0],xmm3[1],xmm0[2],xmm3[3],xmm0[4],xmm3[5],xmm0[6],xmm3[7]
	vcvtdq2pd	ymm0, xmm0
	vaddpd	ymm0, ymm6, ymm0
	vpsrld	xmm6, xmm1, 16
	vcvtdq2pd	ymm6, xmm6
	vmulpd	ymm6, ymm6, ymm2
	vpblendw	xmm1, xmm1, xmm3, 170 ## xmm1 = xmm1[0],xmm3[1],xmm1[2],xmm3[3],xmm1[4],xmm3[5],xmm1[6],xmm3[7]
	vcvtdq2pd	ymm1, xmm1
	vaddpd	ymm1, ymm6, ymm1
	vpsrld	xmm6, xmm4, 16
	vcvtdq2pd	ymm6, xmm6
	vmulpd	ymm6, ymm6, ymm2
	vpblendw	xmm4, xmm4, xmm3, 170 ## xmm4 = xmm4[0],xmm3[1],xmm4[2],xmm3[3],xmm4[4],xmm3[5],xmm4[6],xmm3[7]
	vcvtdq2pd	ymm4, xmm4
	vaddpd	ymm4, ymm6, ymm4
	vpsrld	xmm6, xmm5, 16
	vcvtdq2pd	ymm6, xmm6
	vmulpd	ymm6, ymm6, ymm2
	vpblendw	xmm5, xmm5, xmm3, 170 ## xmm5 = xmm5[0],xmm3[1],xmm5[2],xmm3[3],xmm5[4],xmm3[5],xmm5[6],xmm3[7]
	vcvtdq2pd	ymm5, xmm5
	vaddpd	ymm5, ymm6, ymm5
	mov	rbx, r8
	sar	rbx, 29
	vmovupd	ymmword ptr [rsp + rbx + 16], ymm0
	vmovupd	ymmword ptr [rsp + rbx + 48], ymm1
	vmovupd	ymmword ptr [rsp + rbx + 80], ymm4
	vmovupd	ymmword ptr [rsp + rbx + 112], ymm5
	add	rcx, 16
	add	r8, r12
	cmp	r15, rcx
	jne	LBB0_22
## %bb.23:
	cmp	r11, r15
	mov	r15, rsi
	mov	esi, dword ptr [rsp + 12] ## 4-byte Reload
	je	LBB0_24
LBB0_19:
	movsxd	rcx, r9d
	sub	rcx, r10
	lea	rcx, [rsp + 8*rcx + 16]
	.p2align	4, 0x90
LBB0_20:                                ## =>This Inner Loop Header: Depth=1
	mov	ebx, dword ptr [rdi + 4*rax]
	vcvtsi2sd	xmm0, xmm12, rbx
	vmovsd	qword ptr [rcx], xmm0
	inc	rax
	add	rcx, 8
	cmp	rax, r14
	jl	LBB0_20
LBB0_24:
	test	edx, edx
	jle	LBB0_41
## %bb.25:
	mov	ecx, edx
	cmp	edx, 15
	ja	LBB0_28
## %bb.26:
	xor	edi, edi
	jmp	LBB0_27
LBB0_28:
	mov	edi, ecx
	and	edi, -16
	vbroadcastsd	ymm2, xmm9
	lea	rbx, [rdi - 16]
	mov	rax, rbx
	shr	rax, 4
	inc	rax
	mov	r9d, eax
	and	r9d, 1
	test	rbx, rbx
	je	LBB0_29
## %bb.30:
	mov	ebx, 1
	sub	rbx, rax
	lea	rbx, [r9 + rbx - 1]
	xor	eax, eax
	.p2align	4, 0x90
LBB0_31:                                ## =>This Inner Loop Header: Depth=1
	vmovupd	ymm0, ymmword ptr [rsp + 8*rax + 16]
	vmovupd	ymm1, ymmword ptr [rsp + 8*rax + 48]
	vmovupd	ymm3, ymmword ptr [rsp + 8*rax + 80]
	vmovupd	ymm4, ymmword ptr [rsp + 8*rax + 112]
	vsubpd	ymm0, ymm0, ymm2
	vsubpd	ymm1, ymm1, ymm2
	vsubpd	ymm3, ymm3, ymm2
	vsubpd	ymm4, ymm4, ymm2
	vmovupd	ymmword ptr [rsp + 8*rax + 16], ymm0
	vmovupd	ymmword ptr [rsp + 8*rax + 48], ymm1
	vmovupd	ymmword ptr [rsp + 8*rax + 80], ymm3
	vmovupd	ymmword ptr [rsp + 8*rax + 112], ymm4
	vmovupd	ymm0, ymmword ptr [rsp + 8*rax + 144]
	vmovupd	ymm1, ymmword ptr [rsp + 8*rax + 176]
	vmovupd	ymm3, ymmword ptr [rsp + 8*rax + 208]
	vmovupd	ymm4, ymmword ptr [rsp + 8*rax + 240]
	vsubpd	ymm0, ymm0, ymm2
	vsubpd	ymm1, ymm1, ymm2
	vsubpd	ymm3, ymm3, ymm2
	vsubpd	ymm4, ymm4, ymm2
	vmovupd	ymmword ptr [rsp + 8*rax + 144], ymm0
	vmovupd	ymmword ptr [rsp + 8*rax + 176], ymm1
	vmovupd	ymmword ptr [rsp + 8*rax + 208], ymm3
	vmovupd	ymmword ptr [rsp + 8*rax + 240], ymm4
	add	rax, 32
	add	rbx, 2
	jne	LBB0_31
## %bb.32:
	test	r9, r9
	je	LBB0_34
LBB0_33:
	vmovupd	ymm0, ymmword ptr [rsp + 8*rax + 16]
	vmovupd	ymm1, ymmword ptr [rsp + 8*rax + 48]
	vmovupd	ymm3, ymmword ptr [rsp + 8*rax + 80]
	vmovupd	ymm4, ymmword ptr [rsp + 8*rax + 112]
	vsubpd	ymm0, ymm0, ymm2
	vsubpd	ymm1, ymm1, ymm2
	vsubpd	ymm3, ymm3, ymm2
	vsubpd	ymm2, ymm4, ymm2
	vmovupd	ymmword ptr [rsp + 8*rax + 16], ymm0
	vmovupd	ymmword ptr [rsp + 8*rax + 48], ymm1
	vmovupd	ymmword ptr [rsp + 8*rax + 80], ymm3
	vmovupd	ymmword ptr [rsp + 8*rax + 112], ymm2
LBB0_34:
	cmp	rdi, rcx
	je	LBB0_35
	.p2align	4, 0x90
LBB0_27:                                ## =>This Inner Loop Header: Depth=1
	vmovsd	xmm0, qword ptr [rsp + 8*rdi + 16] ## xmm0 = mem[0],zero
	vsubsd	xmm0, xmm0, xmm9
	vmovsd	qword ptr [rsp + 8*rdi + 16], xmm0
	inc	rdi
	cmp	rcx, rdi
	jne	LBB0_27
LBB0_35:
	test	edx, edx
	jle	LBB0_41
## %bb.36:
	lea	rdx, [rcx - 1]
	mov	eax, ecx
	and	eax, 3
	cmp	rdx, 3
	jae	LBB0_43
## %bb.37:
	xor	edi, edi
	test	rax, rax
	jne	LBB0_39
	jmp	LBB0_41
LBB0_43:
	sub	rcx, rax
	xor	edi, edi
	.p2align	4, 0x90
LBB0_44:                                ## =>This Inner Loop Header: Depth=1
	vmovsd	xmm0, qword ptr [rsp + 8*rdi + 16] ## xmm0 = mem[0],zero
	vmovsd	xmm1, qword ptr [rsp + 8*rdi + 24] ## xmm1 = mem[0],zero
	vmulsd	xmm0, xmm0, xmm0
	vaddsd	xmm0, xmm11, xmm0
	vmulsd	xmm1, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm1
	vmovsd	xmm1, qword ptr [rsp + 8*rdi + 32] ## xmm1 = mem[0],zero
	vmulsd	xmm1, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm1
	vmovsd	xmm1, qword ptr [rsp + 8*rdi + 40] ## xmm1 = mem[0],zero
	vmulsd	xmm1, xmm1, xmm1
	vaddsd	xmm11, xmm0, xmm1
	add	rdi, 4
	cmp	rcx, rdi
	jne	LBB0_44
## %bb.38:
	test	rax, rax
	je	LBB0_41
LBB0_39:
	lea	rcx, [rsp + 8*rdi + 16]
	xor	edi, edi
	.p2align	4, 0x90
LBB0_40:                                ## =>This Inner Loop Header: Depth=1
	vmovsd	xmm0, qword ptr [rcx + 8*rdi] ## xmm0 = mem[0],zero
	vmulsd	xmm0, xmm0, xmm0
	vaddsd	xmm11, xmm11, xmm0
	inc	rdi
	cmp	rax, rdi
	jne	LBB0_40
LBB0_41:
	dec	esi
	vcvtsi2sd	xmm0, xmm12, esi
	vdivsd	xmm0, xmm11, xmm0
	vmovsd	qword ptr [r15], xmm0
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rsp + 144]
	jne	LBB0_45
## %bb.42:
	lea	rsp, [rbp - 40]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	vzeroupper
	ret
LBB0_6:
	vpxor	xmm0, xmm0, xmm0
	xor	eax, eax
	vpxor	xmm1, xmm1, xmm1
	vpxor	xmm2, xmm2, xmm2
	vpxor	xmm3, xmm3, xmm3
	test	r8, r8
	jne	LBB0_10
	jmp	LBB0_11
LBB0_29:
	xor	eax, eax
	test	r9, r9
	jne	LBB0_33
	jmp	LBB0_34
LBB0_45:
	vzeroupper
	call	___stack_chk_fail
                                        ## -- End function

.subsections_via_symbols
