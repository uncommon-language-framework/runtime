	.file	"ReflectionValueCall.cpp"
	.intel_syntax noprefix
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
.lcomm _ZStL8__ioinit,1,1
_ZStL13allocator_arg:
	.space 1
_ZStL6ignore:
	.space 1
.LC0:
	.ascii "Enter call---\0"
.LC1:
	.ascii "Exit call---\0"
	.text
	.globl	_Z4func11MyValueTypeS_
	.def	_Z4func11MyValueTypeS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z4func11MyValueTypeS_
_Z4func11MyValueTypeS_:
.LFB2277:
	.file 1 "./ReflectionValueCall.cpp"
	.loc 1 23 1
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rsi
	.seh_pushreg	rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rbx
	.seh_pushreg	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, rcx
	mov	rbx, rdx
	.loc 1 24 15
	lea	rdx, .LC0[rip]
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.loc 1 24 39
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 25 58
	mov	rax, rsi
	.loc 1 25 65
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 25 75
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 26 59
	mov	rax, rbx
	.loc 1 26 66
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 26 76
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 27 15
	lea	rdx, .LC1[rip]
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.loc 1 27 38
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 28 1
	nop
	add	rsp, 32
	pop	rbx
	.cfi_restore 3
	pop	rsi
	.cfi_restore 4
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 24
	ret
	.cfi_endproc
.LFE2277:
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "Enter bigfunc---\0"
.LC3:
	.ascii "Exit bigfunc\0"
	.text
	.globl	_Z5func511MyValueTypeS_S_S_S_
	.def	_Z5func511MyValueTypeS_S_S_S_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z5func511MyValueTypeS_S_S_S_
_Z5func511MyValueTypeS_S_S_S_:
.LFB2278:
	.loc 1 31 1
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	r12
	.seh_pushreg	r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	rdi
	.seh_pushreg	rdi
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rsi
	.seh_pushreg	rsi
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	push	rbx
	.seh_pushreg	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, rcx
	mov	rbx, rdx
	mov	r12, r8
	mov	rdi, r9
	.loc 1 32 15
	lea	rdx, .LC2[rip]
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.loc 1 32 42
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 34 58
	mov	rax, rsi
	.loc 1 34 65
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 34 75
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 35 59
	mov	rax, rbx
	.loc 1 35 66
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 35 76
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 36 59
	mov	rax, r12
	.loc 1 36 66
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 36 76
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 37 59
	mov	rax, rdi
	.loc 1 37 66
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 37 76
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 38 59
	mov	rax, QWORD PTR 80[rbp]
	.loc 1 38 66
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 38 76
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 40 15
	lea	rdx, .LC3[rip]
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.loc 1 40 38
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 41 1
	nop
	add	rsp, 32
	pop	rbx
	.cfi_restore 3
	pop	rsi
	.cfi_restore 4
	pop	rdi
	.cfi_restore 5
	pop	r12
	.cfi_restore 12
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 40
	ret
	.cfi_endproc
.LFE2278:
	.seh_endproc
	.globl	_Z6func1011MyValueTypeS_S_S_S_S_S_S_S_S_
	.def	_Z6func1011MyValueTypeS_S_S_S_S_S_S_S_S_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6func1011MyValueTypeS_S_S_S_S_S_S_S_S_
_Z6func1011MyValueTypeS_S_S_S_S_S_S_S_S_:
.LFB2279:
	.loc 1 46 1
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	r12
	.seh_pushreg	r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	rdi
	.seh_pushreg	rdi
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rsi
	.seh_pushreg	rsi
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	push	rbx
	.seh_pushreg	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, rcx
	mov	rbx, rdx
	mov	r12, r8
	mov	rdi, r9
	.loc 1 47 15
	lea	rdx, .LC2[rip]
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.loc 1 47 42
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 49 58
	mov	rax, rsi
	.loc 1 49 65
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 49 75
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 50 59
	mov	rax, rbx
	.loc 1 50 66
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 50 76
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 51 59
	mov	rax, r12
	.loc 1 51 66
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 51 76
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 52 59
	mov	rax, rdi
	.loc 1 52 66
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 52 76
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 53 59
	mov	rax, QWORD PTR 80[rbp]
	.loc 1 53 66
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 53 76
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 54 59
	mov	rax, QWORD PTR 88[rbp]
	.loc 1 54 66
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 54 76
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 55 59
	mov	rax, QWORD PTR 96[rbp]
	.loc 1 55 66
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 55 76
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 56 59
	mov	rax, QWORD PTR 104[rbp]
	.loc 1 56 66
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 56 76
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 57 59
	mov	rax, QWORD PTR 112[rbp]
	.loc 1 57 66
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 57 76
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 58 60
	mov	rax, QWORD PTR 120[rbp]
	.loc 1 58 67
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 58 77
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 60 15
	lea	rdx, .LC3[rip]
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.loc 1 60 38
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 61 1
	nop
	add	rsp, 32
	pop	rbx
	.cfi_restore 3
	pop	rsi
	.cfi_restore 4
	pop	rdi
	.cfi_restore 5
	pop	r12
	.cfi_restore 12
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 40
	ret
	.cfi_endproc
.LFE2279:
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2280:
	.loc 1 64 1
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	r15
	.seh_pushreg	r15
	.cfi_def_cfa_offset 24
	.cfi_offset 15, -24
	push	r14
	.seh_pushreg	r14
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
	push	r13
	.seh_pushreg	r13
	.cfi_def_cfa_offset 40
	.cfi_offset 13, -40
	push	r12
	.seh_pushreg	r12
	.cfi_def_cfa_offset 48
	.cfi_offset 12, -48
	push	rdi
	.seh_pushreg	rdi
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rsi
	.seh_pushreg	rsi
	.cfi_def_cfa_offset 64
	.cfi_offset 4, -64
	push	rbx
	.seh_pushreg	rbx
	.cfi_def_cfa_offset 72
	.cfi_offset 3, -72
	sub	rsp, 456
	.seh_stackalloc	456
	.cfi_def_cfa_offset 528
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.cfi_def_cfa 6, 400
	.seh_endprologue
	.loc 1 64 1
	call	__main
.LVL0:
	.loc 1 72 21
	mov	QWORD PTR 232[rbp], 1230981
	.loc 1 74 8
	mov	rax, QWORD PTR 232[rbp]
	mov	QWORD PTR 243[rbp], rax
	mov	eax, DWORD PTR 240[rbp]
	mov	DWORD PTR 251[rbp], eax
	.loc 1 76 6
	mov	rax, QWORD PTR 243[rbp]
	mov	QWORD PTR 112[rbp], rax
	mov	eax, DWORD PTR 251[rbp]
	mov	DWORD PTR 120[rbp], eax
	mov	rax, QWORD PTR 243[rbp]
	mov	QWORD PTR 96[rbp], rax
	mov	eax, DWORD PTR 251[rbp]
	mov	DWORD PTR 104[rbp], eax
	lea	rdx, 96[rbp]
	lea	rax, 112[rbp]
	mov	rcx, rax
.LEHB0:
	call	_Z4func11MyValueTypeS_
	.loc 1 78 9
	lea	rax, _Z4func11MyValueTypeS_[rip]
	mov	QWORD PTR 296[rbp], rax
	.loc 1 80 10
	mov	rax, QWORD PTR 243[rbp]
	mov	QWORD PTR 96[rbp], rax
	mov	eax, DWORD PTR 251[rbp]
	mov	DWORD PTR 104[rbp], eax
	mov	rax, QWORD PTR 243[rbp]
	mov	QWORD PTR 112[rbp], rax
	mov	eax, DWORD PTR 251[rbp]
	mov	DWORD PTR 120[rbp], eax
	lea	rdx, 112[rbp]
	lea	rax, 96[rbp]
	mov	r8, QWORD PTR 296[rbp]
	mov	rcx, rax
	call	r8
.LVL1:
	.loc 1 84 44
	mov	ecx, 12
	call	_Znay
	.loc 1 84 15
	mov	QWORD PTR 224[rbp], rax
	.loc 1 86 14
	mov	rcx, QWORD PTR 224[rbp]
	.loc 1 86 8
	lea	rax, 232[rbp]
	mov	r8d, 12
	mov	rdx, rax
	call	memcpy
	.loc 1 90 10
	mov	rdx, QWORD PTR 224[rbp]
	mov	rcx, QWORD PTR 224[rbp]
	mov	rax, QWORD PTR 296[rbp]
	call	rax
.LVL2:
	.loc 1 93 8
	mov	rax, QWORD PTR 232[rbp]
	mov	QWORD PTR 212[rbp], rax
	mov	eax, DWORD PTR 240[rbp]
	mov	DWORD PTR 220[rbp], eax
	.loc 1 95 10
	lea	rdx, 212[rbp]
	lea	rax, 212[rbp]
	mov	r8, QWORD PTR 296[rbp]
	mov	rcx, rax
	call	r8
.LVL3:
.LEHE0:
	.loc 1 97 9
	mov	QWORD PTR 288[rbp], 10
	.loc 1 99 54
	lea	rax, 255[rbp]
	mov	rcx, rax
	call	_ZNSaI25WrappingValueTypeInstanceEC1Ev
	lea	rcx, 255[rbp]
	mov	rdx, QWORD PTR 288[rbp]
	lea	rax, 176[rbp]
	mov	r8, rcx
	mov	rcx, rax
.LEHB1:
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC1EyRKS1_
.LEHE1:
	lea	rax, 255[rbp]
	mov	rcx, rax
	call	_ZNSaI25WrappingValueTypeInstanceED1Ev
.LBB2:
	.loc 1 101 14
	mov	QWORD PTR 312[rbp], 0
.L6:
	.loc 1 101 29 discriminator 2
	mov	rax, QWORD PTR 312[rbp]
	cmp	rax, QWORD PTR 288[rbp]
	jnb	.L5
	.loc 1 103 12
	mov	rdx, QWORD PTR 312[rbp]
	lea	rax, 176[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	mov	rbx, rax
	.loc 1 103 51
	mov	ecx, 12
.LEHB2:
	call	_Znay
	.loc 1 103 22 discriminator 1
	mov	QWORD PTR [rbx], rax
	.loc 1 105 19 discriminator 1
	mov	rdx, QWORD PTR 312[rbp]
	lea	rax, 176[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	.loc 1 105 21 discriminator 1
	mov	rcx, QWORD PTR [rax]
	.loc 1 105 9 discriminator 1
	lea	rax, 232[rbp]
	mov	r8d, 12
	mov	rdx, rax
	call	memcpy
	.loc 1 101 2 discriminator 1
	add	QWORD PTR 312[rbp], 1
	jmp	.L6
.L5:
.LBE2:
	.loc 1 109 8
	lea	rax, _Z6func1011MyValueTypeS_S_S_S_S_S_S_S_S_[rip]
	mov	QWORD PTR 280[rbp], rax
	.loc 1 111 9
	mov	QWORD PTR 272[rbp], 0
	.loc 1 113 48
	lea	rax, 176[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4dataEv
	mov	QWORD PTR 264[rbp], rax
	.loc 1 120 46
	lea	rax, 176[rbp]
	mov	edx, 0
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 168[rbp], rax
	.loc 1 121 47
	lea	rax, 176[rbp]
	mov	edx, 1
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 160[rbp], rax
	.loc 1 122 46
	lea	rax, 176[rbp]
	mov	edx, 2
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 152[rbp], rax
	.loc 1 123 47
	lea	rax, 176[rbp]
	mov	edx, 3
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 144[rbp], rax
.LBB3:
	.loc 1 125 2
	cmp	QWORD PTR 288[rbp], 4
	jbe	.L7
.LBB4:
.LBB5:
	.loc 1 127 15
	mov	rax, QWORD PTR 288[rbp]
	sub	rax, 1
	mov	QWORD PTR 304[rbp], rax
.L9:
	.loc 1 127 33 discriminator 3
	cmp	QWORD PTR 304[rbp], 3
	jbe	.L7
.LBB6:
	.loc 1 129 45 discriminator 2
	mov	rax, QWORD PTR 304[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 264[rbp]
	add	rax, rdx
	.loc 1 129 30 discriminator 2
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 136[rbp], rax
	.loc 1 134 32 discriminator 2
	mov	rax, QWORD PTR 288[rbp]
	sub	rax, QWORD PTR 304[rbp]
	.loc 1 135 5 discriminator 2
	add	rax, 3
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 136[rbp]
/APP
 # 135 ".\ReflectionValueCall.cpp" 1
	mov [rsp+rdx], rax
	
 # 0 "" 2
/NO_APP
.LBE6:
	.loc 1 127 3 discriminator 2
	sub	QWORD PTR 304[rbp], 1
	jmp	.L9
.L7:
.LBE5:
.LBE4:
.LBE3:
	.loc 1 139 2
	cmp	QWORD PTR 288[rbp], 3
	jbe	.L10
	.loc 1 150 4
	mov	r10, QWORD PTR 168[rbp]
	mov	r11, QWORD PTR 160[rbp]
	mov	rbx, QWORD PTR 152[rbp]
	mov	rsi, QWORD PTR 144[rbp]
	mov	rdi, QWORD PTR 280[rbp]
	mov	r12, QWORD PTR 272[rbp]
/APP
 # 150 ".\ReflectionValueCall.cpp" 1
	mov rcx, r10
	mov rdx, r11
	mov r8, rbx
	mov r9, rsi
	call rdi
	mov r10, rax
	
 # 0 "" 2
/NO_APP
	mov	QWORD PTR 256[rbp], r10
	jmp	.L11
.L10:
	.loc 1 151 7
	cmp	QWORD PTR 288[rbp], 2
	jbe	.L12
	.loc 1 161 4
	mov	r9, QWORD PTR 168[rbp]
	mov	r10, QWORD PTR 160[rbp]
	mov	r11, QWORD PTR 152[rbp]
	mov	rbx, QWORD PTR 280[rbp]
	mov	rsi, QWORD PTR 272[rbp]
/APP
 # 161 ".\ReflectionValueCall.cpp" 1
	mov rcx, r9
	mov rdx, r10
	mov r8, r11
	call rbx
	mov r9, rax
	
 # 0 "" 2
/NO_APP
	mov	QWORD PTR 256[rbp], r9
	jmp	.L11
.L12:
	.loc 1 162 7
	cmp	QWORD PTR 288[rbp], 1
	jbe	.L13
	.loc 1 171 4
	mov	r8, QWORD PTR 168[rbp]
	mov	r9, QWORD PTR 160[rbp]
	mov	r10, QWORD PTR 280[rbp]
	mov	r11, QWORD PTR 272[rbp]
/APP
 # 171 ".\ReflectionValueCall.cpp" 1
	mov rcx, r8
	mov rdx, r9
	call r10
	mov r8, rax
	
 # 0 "" 2
/NO_APP
	mov	QWORD PTR 256[rbp], r8
	jmp	.L11
.L13:
	.loc 1 172 7
	cmp	QWORD PTR 288[rbp], 0
	je	.L11
	.loc 1 180 4
	mov	rdx, QWORD PTR 168[rbp]
	mov	r8, QWORD PTR 280[rbp]
	mov	r9, QWORD PTR 272[rbp]
/APP
 # 180 ".\ReflectionValueCall.cpp" 1
	mov rcx, rdx
	call r8
	mov rdx, rax
	
 # 0 "" 2
/NO_APP
	mov	QWORD PTR 256[rbp], rdx
.L11:
	.loc 1 182 497
	lea	rax, 176[rbp]
	mov	edx, 4
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	.loc 1 182 499
	mov	rbx, QWORD PTR [rax]
	.loc 1 182 447
	lea	rax, 176[rbp]
	mov	edx, 3
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	.loc 1 182 449
	mov	rsi, QWORD PTR [rax]
	.loc 1 182 397
	lea	rax, 176[rbp]
	mov	edx, 2
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	.loc 1 182 399
	mov	rdi, QWORD PTR [rax]
	.loc 1 182 347
	lea	rax, 176[rbp]
	mov	edx, 1
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	.loc 1 182 349
	mov	r12, QWORD PTR [rax]
	.loc 1 182 297
	lea	rax, 176[rbp]
	mov	edx, 0
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	.loc 1 182 299
	mov	r13, QWORD PTR [rax]
	.loc 1 182 247
	lea	rax, 176[rbp]
	mov	edx, 4
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	.loc 1 182 249
	mov	r14, QWORD PTR [rax]
	.loc 1 182 197
	lea	rax, 176[rbp]
	mov	edx, 3
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	.loc 1 182 199
	mov	r15, QWORD PTR [rax]
	.loc 1 182 147
	lea	rax, 176[rbp]
	mov	edx, 2
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	.loc 1 182 149
	mov	rdx, QWORD PTR [rax]
	mov	QWORD PTR -40[rbp], rdx
	.loc 1 182 97
	lea	rax, 176[rbp]
	mov	edx, 1
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	.loc 1 182 99
	mov	rcx, QWORD PTR [rax]
	mov	QWORD PTR -48[rbp], rcx
	.loc 1 182 47
	lea	rax, 176[rbp]
	mov	edx, 0
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	.loc 1 182 49
	mov	rax, QWORD PTR [rax]
	.loc 1 182 8
	mov	rdx, QWORD PTR [rax]
	mov	QWORD PTR 96[rbp], rdx
	mov	eax, DWORD PTR 8[rax]
	mov	DWORD PTR 104[rbp], eax
	mov	rcx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR 112[rbp], rax
	mov	eax, DWORD PTR 8[rcx]
	mov	DWORD PTR 120[rbp], eax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR 80[rbp], rax
	mov	eax, DWORD PTR 8[rdx]
	mov	DWORD PTR 88[rbp], eax
	mov	rax, QWORD PTR [r15]
	mov	QWORD PTR 64[rbp], rax
	mov	eax, DWORD PTR 8[r15]
	mov	DWORD PTR 72[rbp], eax
	mov	rax, QWORD PTR [r14]
	mov	QWORD PTR 48[rbp], rax
	mov	eax, DWORD PTR 8[r14]
	mov	DWORD PTR 56[rbp], eax
	mov	rax, QWORD PTR 0[r13]
	mov	QWORD PTR 32[rbp], rax
	mov	eax, DWORD PTR 8[r13]
	mov	DWORD PTR 40[rbp], eax
	mov	rax, QWORD PTR [r12]
	mov	QWORD PTR 16[rbp], rax
	mov	eax, DWORD PTR 8[r12]
	mov	DWORD PTR 24[rbp], eax
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR 0[rbp], rax
	mov	eax, DWORD PTR 8[rdi]
	mov	DWORD PTR 8[rbp], eax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR 8[rsi]
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR [rbx]
	mov	QWORD PTR -32[rbp], rax
	mov	eax, DWORD PTR 8[rbx]
	mov	DWORD PTR -24[rbp], eax
	lea	r9, 64[rbp]
	lea	r8, 80[rbp]
	lea	rdx, 112[rbp]
	lea	rax, 96[rbp]
	lea	rcx, -32[rbp]
	mov	QWORD PTR 72[rsp], rcx
	lea	rcx, -16[rbp]
	mov	QWORD PTR 64[rsp], rcx
	mov	rcx, rbp
	mov	QWORD PTR 56[rsp], rcx
	lea	rcx, 16[rbp]
	mov	QWORD PTR 48[rsp], rcx
	lea	rcx, 32[rbp]
	mov	QWORD PTR 40[rsp], rcx
	lea	rcx, 48[rbp]
	mov	QWORD PTR 32[rsp], rcx
	mov	rcx, rax
	call	_Z6func1011MyValueTypeS_S_S_S_S_S_S_S_S_
	.loc 1 184 33
	mov	edx, 12
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 184 43
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	.loc 1 185 31
	mov	edx, 3
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZNSolsEy
	.loc 1 185 41
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
.LEHE2:
	.loc 1 187 9
	mov	ebx, 0
	.loc 1 99 54
	lea	rax, 176[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EED1Ev
	mov	eax, ebx
	jmp	.L19
.L17:
	mov	rbx, rax
	lea	rax, 255[rbp]
	mov	rcx, rax
	call	_ZNSaI25WrappingValueTypeInstanceED1Ev
	mov	rax, rbx
	mov	rcx, rax
.LEHB3:
	call	_Unwind_Resume
.L18:
	mov	rbx, rax
	lea	rax, 176[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EED1Ev
	mov	rax, rbx
	mov	rcx, rax
	call	_Unwind_Resume
.LEHE3:
.L19:
	.loc 1 188 1
	add	rsp, 456
	pop	rbx
	.cfi_restore 3
	pop	rsi
	.cfi_restore 4
	pop	rdi
	.cfi_restore 5
	pop	r12
	.cfi_restore 12
	pop	r13
	.cfi_restore 13
	pop	r14
	.cfi_restore 14
	pop	r15
	.cfi_restore 15
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -392
	ret
	.cfi_endproc
.LFE2280:
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2280:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2280-.LLSDACSB2280
.LLSDACSB2280:
	.uleb128 .LEHB0-.LFB2280
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2280
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L17-.LFB2280
	.uleb128 0
	.uleb128 .LEHB2-.LFB2280
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L18-.LFB2280
	.uleb128 0
	.uleb128 .LEHB3-.LFB2280
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2280:
	.text
	.seh_endproc
	.section	.text$_ZNSaI25WrappingValueTypeInstanceEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI25WrappingValueTypeInstanceEC1Ev
	.def	_ZNSaI25WrappingValueTypeInstanceEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI25WrappingValueTypeInstanceEC1Ev
_ZNSaI25WrappingValueTypeInstanceEC1Ev:
.LFB2523:
	.file 2 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/allocator.h"
	.loc 2 131 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
.LBB7:
	.loc 2 131 27
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC2Ev
.LBE7:
	.loc 2 131 29
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2523:
	.seh_endproc
	.section	.text$_ZNSaI25WrappingValueTypeInstanceED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI25WrappingValueTypeInstanceED2Ev
	.def	_ZNSaI25WrappingValueTypeInstanceED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI25WrappingValueTypeInstanceED2Ev
_ZNSaI25WrappingValueTypeInstanceED2Ev:
.LFB2525:
	.loc 2 139 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
.LBB8:
	.loc 2 139 30
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceED2Ev
.LBE8:
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2525:
	.seh_endproc
	.section	.text$_ZNSaI25WrappingValueTypeInstanceED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI25WrappingValueTypeInstanceED1Ev
	.def	_ZNSaI25WrappingValueTypeInstanceED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI25WrappingValueTypeInstanceED1Ev
_ZNSaI25WrappingValueTypeInstanceED1Ev:
.LFB2526:
	.loc 2 139 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
.LBB9:
	.loc 2 139 30
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceED2Ev
.LBE9:
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2526:
	.seh_endproc
	.section	.text$_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC1EyRKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC1EyRKS1_
	.def	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC1EyRKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC1EyRKS1_
_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC1EyRKS1_:
.LFB2529:
	.file 3 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/stl_vector.h"
	.loc 3 415 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.seh_pushreg	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 40
	.seh_stackalloc	40
	.cfi_def_cfa_offset 64
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.cfi_def_cfa 6, -64
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
.LBB10:
	.loc 3 416 23
	mov	rax, QWORD PTR -64[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	r8, rcx
	mov	rcx, rax
.LEHB4:
	call	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC2EyRKS1_
.LEHE4:
	.loc 3 417 9
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR -64[rbp]
.LEHB5:
	call	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE21_M_default_initializeEy
.LEHE5:
.LBE10:
	.loc 3 417 37
	jmp	.L26
.L25:
	mov	rbx, rax
.LBB11:
	.loc 3 416 23
	mov	rax, QWORD PTR -64[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EED2Ev
	mov	rax, rbx
	mov	rcx, rax
.LEHB6:
	call	_Unwind_Resume
	nop
.LEHE6:
.L26:
.LBE11:
	.loc 3 417 37
	add	rsp, 40
	pop	rbx
	.cfi_restore 3
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -24
	ret
	.cfi_endproc
.LFE2529:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2529:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2529-.LLSDACSB2529
.LLSDACSB2529:
	.uleb128 .LEHB4-.LFB2529
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2529
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L25-.LFB2529
	.uleb128 0
	.uleb128 .LEHB6-.LFB2529
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE2529:
	.section	.text$_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC1EyRKS1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EED1Ev
	.def	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EED1Ev
_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EED1Ev:
.LFB2532:
	.loc 3 565 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
.LBB12:
	.loc 3 568 28
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	.loc 3 567 15
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt8_DestroyIP25WrappingValueTypeInstanceS0_EvT_S2_RSaIT0_E
	.loc 3 570 7
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EED2Ev
.LBE12:
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2532:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2532:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2532-.LLSDACSB2532
.LLSDACSB2532:
.LLSDACSE2532:
	.section	.text$_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
	.def	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy
_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy:
.LFB2533:
	.loc 3 930 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	.loc 3 933 25
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	.loc 3 933 34
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	.loc 3 933 39
	add	rax, rdx
	.loc 3 934 7
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2533:
	.seh_endproc
	.section	.text$_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4dataEv
	.def	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4dataEv
_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4dataEv:
.LFB2534:
	.loc 3 1055 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	.loc 3 1056 50
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE11_M_data_ptrIS0_EEPT_S5_
	.loc 3 1056 53
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2534:
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC2Ev
_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC2Ev:
.LFB2647:
	.file 4 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/ext/new_allocator.h"
	.loc 4 79 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	.loc 4 79 47
	nop
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2647:
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceED2Ev
_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceED2Ev:
.LFB2650:
	.loc 4 86 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	.loc 4 86 48
	nop
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2650:
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implD1Ev:
.LFB2655:
	.loc 3 88 14
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
.LBB13:
	.loc 3 88 14
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSaI25WrappingValueTypeInstanceED2Ev
.LBE13:
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2655:
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC2EyRKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC2EyRKS1_
	.def	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC2EyRKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC2EyRKS1_
_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC2EyRKS1_:
.LFB2656:
	.loc 3 258 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.seh_pushreg	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 40
	.seh_stackalloc	40
	.cfi_def_cfa_offset 64
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.cfi_def_cfa 6, -64
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
.LBB14:
	.loc 3 259 20
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implC1ERKS1_
	.loc 3 260 9
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR -64[rbp]
.LEHB7:
	call	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE17_M_create_storageEy
.LEHE7:
.LBE14:
	.loc 3 260 33
	jmp	.L38
.L37:
	mov	rbx, rax
.LBB15:
	.loc 3 259 20
	mov	rax, QWORD PTR -64[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implD1Ev
	mov	rax, rbx
	mov	rcx, rax
.LEHB8:
	call	_Unwind_Resume
	nop
.LEHE8:
.L38:
.LBE15:
	.loc 3 260 33
	add	rsp, 40
	pop	rbx
	.cfi_restore 3
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -24
	ret
	.cfi_endproc
.LFE2656:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2656:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2656-.LLSDACSB2656
.LLSDACSB2656:
	.uleb128 .LEHB7-.LFB2656
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L37-.LFB2656
	.uleb128 0
	.uleb128 .LEHB8-.LFB2656
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2656:
	.section	.text$_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC2EyRKS1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EED2Ev
	.def	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EED2Ev
_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EED2Ev:
.LFB2659:
	.loc 3 283 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
.LBB16:
	.loc 3 286 17
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	.loc 3 286 45
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	.loc 3 286 35
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 3
	.loc 3 285 2
	mov	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE13_M_deallocateEPS0_y
	.loc 3 287 7
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implD1Ev
.LBE16:
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2659:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2659:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2659-.LLSDACSB2659
.LLSDACSB2659:
.LLSDACSE2659:
	.section	.text$_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE21_M_default_initializeEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE21_M_default_initializeEy
	.def	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE21_M_default_initializeEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE21_M_default_initializeEy
_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE21_M_default_initializeEy:
.LFB2661:
	.loc 3 1482 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	.loc 3 1486 28
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	.loc 3 1485 36
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt27__uninitialized_default_n_aIP25WrappingValueTypeInstanceyS0_ET_S2_T0_RSaIT1_E
	mov	rdx, rax
	.loc 3 1484 2
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], rdx
	.loc 3 1487 7
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2661:
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB2662:
	.loc 3 237 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	.loc 3 238 60
	mov	rax, QWORD PTR 16[rbp]
	.loc 3 238 63
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2662:
	.seh_endproc
	.section	.text$_ZSt8_DestroyIP25WrappingValueTypeInstanceS0_EvT_S2_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIP25WrappingValueTypeInstanceS0_EvT_S2_RSaIT0_E
	.def	_ZSt8_DestroyIP25WrappingValueTypeInstanceS0_EvT_S2_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIP25WrappingValueTypeInstanceS0_EvT_S2_RSaIT0_E
_ZSt8_DestroyIP25WrappingValueTypeInstanceS0_EvT_S2_RSaIT0_E:
.LFB2663:
	.file 5 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/stl_construct.h"
	.loc 5 203 5
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	.loc 5 206 15
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt8_DestroyIP25WrappingValueTypeInstanceEvT_S2_
	.loc 5 207 5
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2663:
	.seh_endproc
	.section	.text$_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE11_M_data_ptrIS0_EEPT_S5_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE11_M_data_ptrIS0_EEPT_S5_
	.def	_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE11_M_data_ptrIS0_EEPT_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE11_M_data_ptrIS0_EEPT_S5_
_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE11_M_data_ptrIS0_EEPT_S5_:
.LFB2664:
	.loc 3 1700 2
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	.loc 3 1701 11
	mov	rax, QWORD PTR 24[rbp]
	.loc 3 1701 18
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2664:
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implC1ERKS1_
	.def	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implC1ERKS1_
_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implC1ERKS1_:
.LFB2703:
	.loc 3 99 2
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
.LBB17:
	.loc 3 100 68
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSaI25WrappingValueTypeInstanceEC2ERKS0_
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 16[rax], 0
.LBE17:
	.loc 3 101 4
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2703:
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE17_M_create_storageEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE17_M_create_storageEy
	.def	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE17_M_create_storageEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE17_M_create_storageEy
_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE17_M_create_storageEy:
.LFB2704:
	.loc 3 309 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	.loc 3 311 25
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE11_M_allocateEy
	mov	rdx, rax
	.loc 3 311 2
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	.loc 3 312 42
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	.loc 3 312 2
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], rdx
	.loc 3 313 50
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	.loc 3 313 59
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	add	rdx, rax
	.loc 3 313 2
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 16[rax], rdx
	.loc 3 314 7
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2704:
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE13_M_deallocateEPS0_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE13_M_deallocateEPS0_y
	.def	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE13_M_deallocateEPS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE13_M_deallocateEPS0_y
_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE13_M_deallocateEPS0_y:
.LFB2705:
	.loc 3 300 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	.loc 3 303 2
	cmp	QWORD PTR 24[rbp], 0
	je	.L50
	.loc 3 304 20
	mov	rax, QWORD PTR 16[rbp]
	.loc 3 304 19
	mov	rcx, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE10deallocateERS1_PS0_y
.L50:
	.loc 3 305 7
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2705:
	.seh_endproc
	.section	.text$_ZSt27__uninitialized_default_n_aIP25WrappingValueTypeInstanceyS0_ET_S2_T0_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt27__uninitialized_default_n_aIP25WrappingValueTypeInstanceyS0_ET_S2_T0_RSaIT1_E
	.def	_ZSt27__uninitialized_default_n_aIP25WrappingValueTypeInstanceyS0_ET_S2_T0_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt27__uninitialized_default_n_aIP25WrappingValueTypeInstanceyS0_ET_S2_T0_RSaIT1_E
_ZSt27__uninitialized_default_n_aIP25WrappingValueTypeInstanceyS0_ET_S2_T0_RSaIT1_E:
.LFB2706:
	.file 6 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/stl_uninitialized.h"
	.loc 6 643 5
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	.loc 6 645 44
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt25__uninitialized_default_nIP25WrappingValueTypeInstanceyET_S2_T0_
	.loc 6 645 60
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2706:
	.seh_endproc
	.section	.text$_ZSt8_DestroyIP25WrappingValueTypeInstanceEvT_S2_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIP25WrappingValueTypeInstanceEvT_S2_
	.def	_ZSt8_DestroyIP25WrappingValueTypeInstanceEvT_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIP25WrappingValueTypeInstanceEvT_S2_
_ZSt8_DestroyIP25WrappingValueTypeInstanceEvT_S2_:
.LFB2707:
	.loc 5 127 5
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	.loc 5 137 11
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIP25WrappingValueTypeInstanceEEvT_S4_
	.loc 5 138 5
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2707:
	.seh_endproc
	.section	.text$_ZNSaI25WrappingValueTypeInstanceEC2ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI25WrappingValueTypeInstanceEC2ERKS0_
	.def	_ZNSaI25WrappingValueTypeInstanceEC2ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI25WrappingValueTypeInstanceEC2ERKS0_
_ZNSaI25WrappingValueTypeInstanceEC2ERKS0_:
.LFB2743:
	.loc 2 133 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
.LBB18:
	.loc 2 134 34
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC2ERKS2_
.LBE18:
	.loc 2 134 38
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2743:
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE11_M_allocateEy
_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE11_M_allocateEy:
.LFB2745:
	.loc 3 293 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	.loc 3 296 18
	cmp	QWORD PTR 24[rbp], 0
	je	.L56
	.loc 3 296 34 discriminator 1
	mov	rax, QWORD PTR 16[rbp]
	.loc 3 296 33 discriminator 1
	mov	rdx, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE8allocateERS1_y
	.loc 3 296 58 discriminator 1
	jmp	.L58
.L56:
	.loc 3 296 18 discriminator 2
	mov	eax, 0
.L58:
	.loc 3 297 7 discriminator 5
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2745:
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE10deallocateERS1_PS0_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE10deallocateERS1_PS0_y
	.def	_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE10deallocateERS1_PS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE10deallocateERS1_PS0_y
_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE10deallocateERS1_PS0_y:
.LFB2746:
	.file 7 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/alloc_traits.h"
	.loc 7 461 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	.loc 7 462 9
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE10deallocateEPS1_y
	.loc 7 462 35
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2746:
	.seh_endproc
	.section	.text$_ZSt25__uninitialized_default_nIP25WrappingValueTypeInstanceyET_S2_T0_,"x"
	.linkonce discard
	.globl	_ZSt25__uninitialized_default_nIP25WrappingValueTypeInstanceyET_S2_T0_
	.def	_ZSt25__uninitialized_default_nIP25WrappingValueTypeInstanceyET_S2_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt25__uninitialized_default_nIP25WrappingValueTypeInstanceyET_S2_T0_
_ZSt25__uninitialized_default_nIP25WrappingValueTypeInstanceyET_S2_T0_:
.LFB2747:
	.loc 6 574 5
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	.loc 6 579 18
	mov	BYTE PTR -1[rbp], 1
	.loc 6 583 20
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP25WrappingValueTypeInstanceyEET_S4_T0_
	.loc 6 584 5
	add	rsp, 48
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2747:
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIP25WrappingValueTypeInstanceEEvT_S4_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIP25WrappingValueTypeInstanceEEvT_S4_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIP25WrappingValueTypeInstanceEEvT_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIP25WrappingValueTypeInstanceEEvT_S4_
_ZNSt12_Destroy_auxILb1EE9__destroyIP25WrappingValueTypeInstanceEEvT_S4_:
.LFB2748:
	.loc 5 117 9
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	.loc 5 117 57
	nop
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2748:
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC2ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC2ERKS2_
	.def	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC2ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC2ERKS2_
_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC2ERKS2_:
.LFB2779:
	.loc 4 81 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	.loc 4 81 67
	nop
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2779:
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE8allocateERS1_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE8allocateERS1_y
	.def	_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE8allocateERS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE8allocateERS1_y
_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE8allocateERS1_y:
.LFB2781:
	.loc 7 435 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	.loc 7 436 32
	mov	rax, QWORD PTR 24[rbp]
	mov	r8d, 0
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE8allocateEyPKv
	.loc 7 436 35
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2781:
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE10deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE10deallocateEPS1_y
	.def	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE10deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE10deallocateEPS1_y
_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE10deallocateEPS1_y:
.LFB2782:
	.loc 4 116 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	.loc 4 125 19
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZdlPv
	.loc 4 126 7
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2782:
	.seh_endproc
	.section	.text$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP25WrappingValueTypeInstanceyEET_S4_T0_,"x"
	.linkonce discard
	.globl	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP25WrappingValueTypeInstanceyEET_S4_T0_
	.def	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP25WrappingValueTypeInstanceyEET_S4_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP25WrappingValueTypeInstanceyEET_S4_T0_
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP25WrappingValueTypeInstanceyEET_S4_T0_:
.LFB2783:
	.loc 6 543 9
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	.loc 6 548 22
	mov	QWORD PTR -8[rbp], 0
	lea	rdx, -8[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt6fill_nIP25WrappingValueTypeInstanceyS0_ET_S2_T0_RKT1_
	.loc 6 548 49
	nop
	.loc 6 549 2
	add	rsp, 48
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2783:
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE8allocateEyPKv:
.LFB2811:
	.loc 4 99 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	.loc 4 101 10
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNK9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE8max_sizeEv
	cmp	QWORD PTR 24[rbp], rax
	seta	al
	.loc 4 101 2
	test	al, al
	je	.L70
	.loc 4 102 26
	call	_ZSt17__throw_bad_allocv
.L70:
	.loc 4 111 41
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	mov	rcx, rax
	call	_Znwy
	.loc 4 112 7
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2811:
	.seh_endproc
	.section	.text$_ZSt6fill_nIP25WrappingValueTypeInstanceyS0_ET_S2_T0_RKT1_,"x"
	.linkonce discard
	.globl	_ZSt6fill_nIP25WrappingValueTypeInstanceyS0_ET_S2_T0_RKT1_
	.def	_ZSt6fill_nIP25WrappingValueTypeInstanceyS0_ET_S2_T0_RKT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt6fill_nIP25WrappingValueTypeInstanceyS0_ET_S2_T0_RKT1_
_ZSt6fill_nIP25WrappingValueTypeInstanceyS0_ET_S2_T0_RKT1_:
.LFB2812:
	.file 8 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/stl_algobase.h"
	.loc 8 784 5
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	.loc 8 789 33
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt12__niter_baseIP25WrappingValueTypeInstanceET_S2_
	mov	rcx, rax
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	call	_ZSt10__fill_n_aIP25WrappingValueTypeInstanceyS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT1_E7__valueET_E6__typeES7_T0_RKS5_
	.loc 8 790 5
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2812:
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE8max_sizeEv:
.LFB2823:
	.loc 4 129 7
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	.loc 4 130 39
	movabs	rax, 2305843009213693951
	.loc 4 130 42
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2823:
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIP25WrappingValueTypeInstanceET_S2_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIP25WrappingValueTypeInstanceET_S2_
	.def	_ZSt12__niter_baseIP25WrappingValueTypeInstanceET_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIP25WrappingValueTypeInstanceET_S2_
_ZSt12__niter_baseIP25WrappingValueTypeInstanceET_S2_:
.LFB2824:
	.loc 8 277 5
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	.loc 8 278 14
	mov	rax, QWORD PTR 16[rbp]
	.loc 8 278 20
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2824:
	.seh_endproc
	.section	.text$_ZSt10__fill_n_aIP25WrappingValueTypeInstanceyS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT1_E7__valueET_E6__typeES7_T0_RKS5_,"x"
	.linkonce discard
	.globl	_ZSt10__fill_n_aIP25WrappingValueTypeInstanceyS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT1_E7__valueET_E6__typeES7_T0_RKS5_
	.def	_ZSt10__fill_n_aIP25WrappingValueTypeInstanceyS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT1_E7__valueET_E6__typeES7_T0_RKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10__fill_n_aIP25WrappingValueTypeInstanceyS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT1_E7__valueET_E6__typeES7_T0_RKS5_
_ZSt10__fill_n_aIP25WrappingValueTypeInstanceyS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT1_E7__valueET_E6__typeES7_T0_RKS5_:
.LFB2825:
	.loc 8 738 5
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
.LBB19:
	.loc 8 740 32
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -8[rbp], rax
.L80:
	.loc 8 741 13
	cmp	QWORD PTR -8[rbp], 0
	je	.L79
	.loc 8 742 2
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR [rax], rdx
	.loc 8 740 7
	sub	QWORD PTR -8[rbp], 1
	add	QWORD PTR 16[rbp], 8
	jmp	.L80
.L79:
.LBE19:
	.loc 8 743 14
	mov	rax, QWORD PTR 16[rbp]
	.loc 8 744 5
	add	rsp, 16
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2825:
	.seh_endproc
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2829:
	.file 9 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/iostream"
	.loc 9 74 25
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	.loc 9 74 25
	lea	rcx, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitD1Ev
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2829:
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB2828:
	.loc 1 188 1
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	.loc 1 188 1
	cmp	DWORD PTR 16[rbp], 1
	jne	.L85
	.loc 1 188 1 is_stmt 0 discriminator 1
	cmp	DWORD PTR 24[rbp], 65535
	jne	.L85
	.loc 9 74 25 is_stmt 1
	lea	rcx, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitC1Ev
	lea	rcx, __tcf_0[rip]
	call	atexit
.L85:
	.loc 1 188 1
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2828:
	.seh_endproc
	.def	_GLOBAL__sub_I__Z4func11MyValueTypeS_;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z4func11MyValueTypeS_
_GLOBAL__sub_I__Z4func11MyValueTypeS_:
.LFB2830:
	.loc 1 188 1
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	.loc 1 188 1
	mov	edx, 65535
	mov	ecx, 1
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	add	rsp, 32
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2830:
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__Z4func11MyValueTypeS_
	.text
.Letext0:
	.file 10 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/cwchar"
	.file 11 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/new"
	.file 12 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/exception_ptr.h"
	.file 13 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/type_traits"
	.file 14 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/x86_64-w64-mingw32/bits/c++config.h"
	.file 15 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/cpp_type_traits.h"
	.file 16 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/stl_pair.h"
	.file 17 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/debug/debug.h"
	.file 18 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/char_traits.h"
	.file 19 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/cstdint"
	.file 20 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/clocale"
	.file 21 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/cstdlib"
	.file 22 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/cstdio"
	.file 23 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/basic_string.h"
	.file 24 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/system_error"
	.file 25 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/ios_base.h"
	.file 26 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/cwctype"
	.file 27 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/iosfwd"
	.file 28 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/uses_allocator.h"
	.file 29 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/tuple"
	.file 30 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/functional"
	.file 31 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/vector.tcc"
	.file 32 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/initializer_list"
	.file 33 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/bits/predefined_ops.h"
	.file 34 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/ext/numeric_traits.h"
	.file 35 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/ext/alloc_traits.h"
	.file 36 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/ext/type_traits.h"
	.file 37 "D:/mingw64/x86_64-w64-mingw32/include/crtdefs.h"
	.file 38 "D:/mingw64/x86_64-w64-mingw32/include/locale.h"
	.file 39 "D:/mingw64/x86_64-w64-mingw32/include/wchar.h"
	.file 40 "D:/mingw64/x86_64-w64-mingw32/include/swprintf.inl"
	.file 41 "D:/mingw64/x86_64-w64-mingw32/include/stdint.h"
	.file 42 "D:/mingw64/x86_64-w64-mingw32/include/stdio.h"
	.file 43 "D:/mingw64/x86_64-w64-mingw32/include/ctype.h"
	.file 44 "D:/mingw64/x86_64-w64-mingw32/include/process.h"
	.file 45 "D:/mingw64/x86_64-w64-mingw32/include/pthread.h"
	.file 46 "D:/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/x86_64-w64-mingw32/bits/atomic_word.h"
	.file 47 "D:/mingw64/x86_64-w64-mingw32/include/stdlib.h"
	.file 48 "D:/mingw64/x86_64-w64-mingw32/include/malloc.h"
	.file 49 "D:/mingw64/x86_64-w64-mingw32/include/wctype.h"
	.file 50 "<built-in>"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x9b9b
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x6e
	.ascii "GNU C++14 8.1.0 -masm=intel -mtune=core2 -march=nocona -g\0"
	.byte	0x4
	.ascii ".\\ReflectionValueCall.cpp\0"
	.ascii "C:\\Users\\carlf\\programs\\ulr\\Ideas\\CPPLegalityTests\0"
	.secrel32	.Ldebug_ranges0+0
	.quad	0
	.secrel32	.Ldebug_line0
	.uleb128 0x6f
	.ascii "std\0"
	.byte	0x32
	.byte	0
	.long	0x585c
	.uleb128 0x49
	.ascii "__cxx11\0"
	.byte	0xe
	.word	0x104
	.byte	0x41
	.uleb128 0x42
	.byte	0xe
	.word	0x104
	.byte	0x41
	.long	0xaf
	.uleb128 0x2
	.byte	0xa
	.byte	0x40
	.byte	0xb
	.long	0x6de1
	.uleb128 0x2
	.byte	0xa
	.byte	0x8b
	.byte	0xb
	.long	0x666c
	.uleb128 0x2
	.byte	0xa
	.byte	0x8d
	.byte	0xb
	.long	0x6df9
	.uleb128 0x2
	.byte	0xa
	.byte	0x8e
	.byte	0xb
	.long	0x6e12
	.uleb128 0x2
	.byte	0xa
	.byte	0x8f
	.byte	0xb
	.long	0x6e32
	.uleb128 0x2
	.byte	0xa
	.byte	0x90
	.byte	0xb
	.long	0x6e56
	.uleb128 0x2
	.byte	0xa
	.byte	0x91
	.byte	0xb
	.long	0x6e75
	.uleb128 0x2
	.byte	0xa
	.byte	0x92
	.byte	0xb
	.long	0x6e9a
	.uleb128 0x2
	.byte	0xa
	.byte	0x93
	.byte	0xb
	.long	0x6eb8
	.uleb128 0x2
	.byte	0xa
	.byte	0x94
	.byte	0xb
	.long	0x6eda
	.uleb128 0x2
	.byte	0xa
	.byte	0x95
	.byte	0xb
	.long	0x6efb
	.uleb128 0x2
	.byte	0xa
	.byte	0x96
	.byte	0xb
	.long	0x6f14
	.uleb128 0x2
	.byte	0xa
	.byte	0x97
	.byte	0xb
	.long	0x6f26
	.uleb128 0x2
	.byte	0xa
	.byte	0x98
	.byte	0xb
	.long	0x6f56
	.uleb128 0x2
	.byte	0xa
	.byte	0x99
	.byte	0xb
	.long	0x6f80
	.uleb128 0x2
	.byte	0xa
	.byte	0x9a
	.byte	0xb
	.long	0x6fa1
	.uleb128 0x2
	.byte	0xa
	.byte	0x9b
	.byte	0xb
	.long	0x6fd3
	.uleb128 0x2
	.byte	0xa
	.byte	0x9c
	.byte	0xb
	.long	0x6ff1
	.uleb128 0x2
	.byte	0xa
	.byte	0x9e
	.byte	0xb
	.long	0x700d
	.uleb128 0x2
	.byte	0xa
	.byte	0x9e
	.byte	0xb
	.long	0x7029
	.uleb128 0x2
	.byte	0xa
	.byte	0xa0
	.byte	0xb
	.long	0x704a
	.uleb128 0x2
	.byte	0xa
	.byte	0xa1
	.byte	0xb
	.long	0x706b
	.uleb128 0x2
	.byte	0xa
	.byte	0xa2
	.byte	0xb
	.long	0x708b
	.uleb128 0x2
	.byte	0xa
	.byte	0xa4
	.byte	0xb
	.long	0x70b2
	.uleb128 0x2
	.byte	0xa
	.byte	0xa7
	.byte	0xb
	.long	0x70d8
	.uleb128 0x2
	.byte	0xa
	.byte	0xa7
	.byte	0xb
	.long	0x70f8
	.uleb128 0x2
	.byte	0xa
	.byte	0xaa
	.byte	0xb
	.long	0x711d
	.uleb128 0x2
	.byte	0xa
	.byte	0xac
	.byte	0xb
	.long	0x7143
	.uleb128 0x2
	.byte	0xa
	.byte	0xae
	.byte	0xb
	.long	0x7164
	.uleb128 0x2
	.byte	0xa
	.byte	0xb0
	.byte	0xb
	.long	0x7184
	.uleb128 0x2
	.byte	0xa
	.byte	0xb1
	.byte	0xb
	.long	0x71a9
	.uleb128 0x2
	.byte	0xa
	.byte	0xb2
	.byte	0xb
	.long	0x71c8
	.uleb128 0x2
	.byte	0xa
	.byte	0xb3
	.byte	0xb
	.long	0x71e7
	.uleb128 0x2
	.byte	0xa
	.byte	0xb4
	.byte	0xb
	.long	0x7207
	.uleb128 0x2
	.byte	0xa
	.byte	0xb5
	.byte	0xb
	.long	0x7226
	.uleb128 0x2
	.byte	0xa
	.byte	0xb6
	.byte	0xb
	.long	0x7246
	.uleb128 0x2
	.byte	0xa
	.byte	0xb7
	.byte	0xb
	.long	0x7277
	.uleb128 0x2
	.byte	0xa
	.byte	0xb8
	.byte	0xb
	.long	0x7291
	.uleb128 0x2
	.byte	0xa
	.byte	0xb9
	.byte	0xb
	.long	0x72b6
	.uleb128 0x2
	.byte	0xa
	.byte	0xba
	.byte	0xb
	.long	0x72db
	.uleb128 0x2
	.byte	0xa
	.byte	0xbb
	.byte	0xb
	.long	0x7300
	.uleb128 0x2
	.byte	0xa
	.byte	0xbc
	.byte	0xb
	.long	0x7332
	.uleb128 0x2
	.byte	0xa
	.byte	0xbd
	.byte	0xb
	.long	0x7351
	.uleb128 0x2
	.byte	0xa
	.byte	0xbf
	.byte	0xb
	.long	0x7380
	.uleb128 0x2
	.byte	0xa
	.byte	0xc1
	.byte	0xb
	.long	0x73a8
	.uleb128 0x2
	.byte	0xa
	.byte	0xc2
	.byte	0xb
	.long	0x73c7
	.uleb128 0x2
	.byte	0xa
	.byte	0xc3
	.byte	0xb
	.long	0x73eb
	.uleb128 0x2
	.byte	0xa
	.byte	0xc4
	.byte	0xb
	.long	0x7410
	.uleb128 0x2
	.byte	0xa
	.byte	0xc5
	.byte	0xb
	.long	0x7435
	.uleb128 0x2
	.byte	0xa
	.byte	0xc6
	.byte	0xb
	.long	0x744e
	.uleb128 0x2
	.byte	0xa
	.byte	0xc7
	.byte	0xb
	.long	0x7473
	.uleb128 0x2
	.byte	0xa
	.byte	0xc8
	.byte	0xb
	.long	0x7498
	.uleb128 0x2
	.byte	0xa
	.byte	0xc9
	.byte	0xb
	.long	0x74be
	.uleb128 0x2
	.byte	0xa
	.byte	0xca
	.byte	0xb
	.long	0x74e3
	.uleb128 0x2
	.byte	0xa
	.byte	0xcb
	.byte	0xb
	.long	0x74ff
	.uleb128 0x2
	.byte	0xa
	.byte	0xcc
	.byte	0xb
	.long	0x751a
	.uleb128 0x2
	.byte	0xa
	.byte	0xcd
	.byte	0xb
	.long	0x7539
	.uleb128 0x2
	.byte	0xa
	.byte	0xce
	.byte	0xb
	.long	0x7559
	.uleb128 0x2
	.byte	0xa
	.byte	0xcf
	.byte	0xb
	.long	0x7579
	.uleb128 0x2
	.byte	0xa
	.byte	0xd0
	.byte	0xb
	.long	0x7598
	.uleb128 0x17
	.byte	0xa
	.word	0x108
	.byte	0x16
	.long	0x75bd
	.uleb128 0x17
	.byte	0xa
	.word	0x109
	.byte	0x16
	.long	0x75ec
	.uleb128 0x17
	.byte	0xa
	.word	0x10a
	.byte	0x16
	.long	0x7611
	.uleb128 0x17
	.byte	0xa
	.word	0x118
	.byte	0xe
	.long	0x7380
	.uleb128 0x17
	.byte	0xa
	.word	0x11b
	.byte	0xe
	.long	0x70b2
	.uleb128 0x17
	.byte	0xa
	.word	0x11e
	.byte	0xe
	.long	0x711d
	.uleb128 0x17
	.byte	0xa
	.word	0x121
	.byte	0xe
	.long	0x7164
	.uleb128 0x17
	.byte	0xa
	.word	0x125
	.byte	0xe
	.long	0x75bd
	.uleb128 0x17
	.byte	0xa
	.word	0x126
	.byte	0xe
	.long	0x75ec
	.uleb128 0x17
	.byte	0xa
	.word	0x127
	.byte	0xe
	.long	0x7611
	.uleb128 0x43
	.secrel32	.LASF0
	.byte	0x1
	.byte	0xb
	.byte	0x56
	.byte	0xa
	.long	0x334
	.uleb128 0x4a
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x59
	.byte	0xe
	.ascii "_ZNSt9nothrow_tC4Ev\0"
	.byte	0x1
	.long	0x32d
	.uleb128 0x3
	.long	0x7637
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x2ff
	.uleb128 0x9
	.ascii "nothrow\0"
	.byte	0xb
	.byte	0x5d
	.byte	0x1a
	.ascii "_ZSt7nothrow\0"
	.long	0x334
	.uleb128 0x4b
	.ascii "__exception_ptr\0"
	.byte	0xc
	.byte	0x34
	.byte	0xd
	.long	0x7e5
	.uleb128 0x70
	.secrel32	.LASF1
	.byte	0x8
	.byte	0xc
	.byte	0x4f
	.byte	0xb
	.long	0x7d7
	.uleb128 0xa
	.ascii "_M_exception_object\0"
	.byte	0xc
	.byte	0x51
	.byte	0xd
	.long	0x763d
	.byte	0
	.uleb128 0x71
	.secrel32	.LASF1
	.byte	0xc
	.byte	0x53
	.byte	0x10
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EPv\0"
	.long	0x3d3
	.long	0x3de
	.uleb128 0x3
	.long	0x7640
	.uleb128 0x1
	.long	0x763d
	.byte	0
	.uleb128 0x4c
	.ascii "_M_addref\0"
	.byte	0xc
	.byte	0x55
	.byte	0xc
	.ascii "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv\0"
	.long	0x426
	.long	0x42c
	.uleb128 0x3
	.long	0x7640
	.byte	0
	.uleb128 0x4c
	.ascii "_M_release\0"
	.byte	0xc
	.byte	0x56
	.byte	0xc
	.ascii "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv\0"
	.long	0x477
	.long	0x47d
	.uleb128 0x3
	.long	0x7640
	.byte	0
	.uleb128 0x37
	.ascii "_M_get\0"
	.byte	0xc
	.byte	0x58
	.byte	0xd
	.ascii "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv\0"
	.long	0x763d
	.long	0x4c4
	.long	0x4ca
	.uleb128 0x3
	.long	0x7646
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF1
	.byte	0xc
	.byte	0x60
	.byte	0x7
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4Ev\0"
	.byte	0x1
	.long	0x505
	.long	0x50b
	.uleb128 0x3
	.long	0x7640
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF1
	.byte	0xc
	.byte	0x62
	.byte	0x7
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4ERKS0_\0"
	.byte	0x1
	.long	0x54a
	.long	0x555
	.uleb128 0x3
	.long	0x7640
	.uleb128 0x1
	.long	0x764c
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF1
	.byte	0xc
	.byte	0x65
	.byte	0x7
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EDn\0"
	.byte	0x1
	.long	0x591
	.long	0x59c
	.uleb128 0x3
	.long	0x7640
	.uleb128 0x1
	.long	0x849
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF1
	.byte	0xc
	.byte	0x69
	.byte	0x7
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EOS0_\0"
	.byte	0x1
	.long	0x5da
	.long	0x5e5
	.uleb128 0x3
	.long	0x7640
	.uleb128 0x1
	.long	0x7666
	.byte	0
	.uleb128 0x27
	.secrel32	.LASF2
	.byte	0xc
	.byte	0x76
	.byte	0x7
	.ascii "_ZNSt15__exception_ptr13exception_ptraSERKS0_\0"
	.long	0x766c
	.byte	0x1
	.long	0x628
	.long	0x633
	.uleb128 0x3
	.long	0x7640
	.uleb128 0x1
	.long	0x764c
	.byte	0
	.uleb128 0x27
	.secrel32	.LASF2
	.byte	0xc
	.byte	0x7a
	.byte	0x7
	.ascii "_ZNSt15__exception_ptr13exception_ptraSEOS0_\0"
	.long	0x766c
	.byte	0x1
	.long	0x675
	.long	0x680
	.uleb128 0x3
	.long	0x7640
	.uleb128 0x1
	.long	0x7666
	.byte	0
	.uleb128 0x38
	.ascii "~exception_ptr\0"
	.byte	0xc
	.byte	0x81
	.byte	0x7
	.ascii "_ZNSt15__exception_ptr13exception_ptrD4Ev\0"
	.byte	0x1
	.long	0x6c6
	.long	0x6d1
	.uleb128 0x3
	.long	0x7640
	.uleb128 0x3
	.long	0x66a7
	.byte	0
	.uleb128 0x38
	.ascii "swap\0"
	.byte	0xc
	.byte	0x84
	.byte	0x7
	.ascii "_ZNSt15__exception_ptr13exception_ptr4swapERS0_\0"
	.byte	0x1
	.long	0x713
	.long	0x71e
	.uleb128 0x3
	.long	0x7640
	.uleb128 0x1
	.long	0x766c
	.byte	0
	.uleb128 0x72
	.ascii "operator bool\0"
	.byte	0xc
	.byte	0x90
	.byte	0x10
	.ascii "_ZNKSt15__exception_ptr13exception_ptrcvbEv\0"
	.long	0x7672
	.byte	0x1
	.long	0x769
	.long	0x76f
	.uleb128 0x3
	.long	0x7646
	.byte	0
	.uleb128 0x73
	.ascii "__cxa_exception_type\0"
	.byte	0xc
	.byte	0x99
	.byte	0x7
	.ascii "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv\0"
	.long	0x767f
	.byte	0x1
	.long	0x7d0
	.uleb128 0x3
	.long	0x7646
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x36e
	.uleb128 0x2
	.byte	0xc
	.byte	0x49
	.byte	0x10
	.long	0x7ed
	.byte	0
	.uleb128 0x2
	.byte	0xc
	.byte	0x39
	.byte	0x1a
	.long	0x36e
	.uleb128 0x74
	.ascii "rethrow_exception\0"
	.byte	0xc
	.byte	0x45
	.byte	0x8
	.ascii "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE\0"
	.long	0x849
	.uleb128 0x1
	.long	0x36e
	.byte	0
	.uleb128 0x7
	.ascii "nullptr_t\0"
	.byte	0xe
	.byte	0xf2
	.byte	0x1d
	.long	0x7652
	.uleb128 0x39
	.ascii "type_info\0"
	.uleb128 0x5
	.long	0x85b
	.uleb128 0x11
	.ascii "integral_constant<bool, false>\0"
	.byte	0x1
	.byte	0xd
	.byte	0x45
	.byte	0xc
	.long	0x975
	.uleb128 0x4d
	.ascii "value\0"
	.byte	0xd
	.byte	0x47
	.byte	0x2d
	.long	0x767a
	.uleb128 0x26
	.secrel32	.LASF3
	.byte	0xd
	.byte	0x48
	.byte	0x2d
	.long	0x7672
	.uleb128 0x37
	.ascii "operator std::integral_constant<bool, false>::value_type\0"
	.byte	0xd
	.byte	0x4a
	.byte	0x11
	.ascii "_ZNKSt17integral_constantIbLb0EEcvbEv\0"
	.long	0x8a1
	.long	0x91c
	.long	0x922
	.uleb128 0x3
	.long	0x7685
	.byte	0
	.uleb128 0x3a
	.secrel32	.LASF4
	.byte	0xd
	.byte	0x4f
	.byte	0x1c
	.ascii "_ZNKSt17integral_constantIbLb0EEclEv\0"
	.long	0x8a1
	.long	0x95b
	.long	0x961
	.uleb128 0x3
	.long	0x7685
	.byte	0
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x7672
	.uleb128 0x44
	.ascii "__v\0"
	.long	0x7672
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x86b
	.uleb128 0x11
	.ascii "integral_constant<bool, true>\0"
	.byte	0x1
	.byte	0xd
	.byte	0x45
	.byte	0xc
	.long	0xa82
	.uleb128 0x4d
	.ascii "value\0"
	.byte	0xd
	.byte	0x47
	.byte	0x2d
	.long	0x767a
	.uleb128 0x26
	.secrel32	.LASF3
	.byte	0xd
	.byte	0x48
	.byte	0x2d
	.long	0x7672
	.uleb128 0x37
	.ascii "operator std::integral_constant<bool, true>::value_type\0"
	.byte	0xd
	.byte	0x4a
	.byte	0x11
	.ascii "_ZNKSt17integral_constantIbLb1EEcvbEv\0"
	.long	0x9af
	.long	0xa29
	.long	0xa2f
	.uleb128 0x3
	.long	0x768b
	.byte	0
	.uleb128 0x3a
	.secrel32	.LASF4
	.byte	0xd
	.byte	0x4f
	.byte	0x1c
	.ascii "_ZNKSt17integral_constantIbLb1EEclEv\0"
	.long	0x9af
	.long	0xa68
	.long	0xa6e
	.uleb128 0x3
	.long	0x768b
	.byte	0
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x7672
	.uleb128 0x44
	.ascii "__v\0"
	.long	0x7672
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0x97a
	.uleb128 0x7
	.ascii "false_type\0"
	.byte	0xd
	.byte	0x5a
	.byte	0x2d
	.long	0x86b
	.uleb128 0x11
	.ascii "integral_constant<long long unsigned int, 0>\0"
	.byte	0x1
	.byte	0xd
	.byte	0x45
	.byte	0xc
	.long	0xbc0
	.uleb128 0x4d
	.ascii "value\0"
	.byte	0xd
	.byte	0x47
	.byte	0x2d
	.long	0x662e
	.uleb128 0x26
	.secrel32	.LASF3
	.byte	0xd
	.byte	0x48
	.byte	0x2d
	.long	0x6614
	.uleb128 0x37
	.ascii "operator std::integral_constant<long long unsigned int, 0>::value_type\0"
	.byte	0xd
	.byte	0x4a
	.byte	0x11
	.ascii "_ZNKSt17integral_constantIyLy0EEcvyEv\0"
	.long	0xade
	.long	0xb67
	.long	0xb6d
	.uleb128 0x3
	.long	0x7691
	.byte	0
	.uleb128 0x3a
	.secrel32	.LASF4
	.byte	0xd
	.byte	0x4f
	.byte	0x1c
	.ascii "_ZNKSt17integral_constantIyLy0EEclEv\0"
	.long	0xade
	.long	0xba6
	.long	0xbac
	.uleb128 0x3
	.long	0x7691
	.byte	0
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x6614
	.uleb128 0x44
	.ascii "__v\0"
	.long	0x6614
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0xa9a
	.uleb128 0x58
	.ascii "__swappable_details\0"
	.byte	0xd
	.word	0x975
	.byte	0xd
	.uleb128 0x58
	.ascii "__swappable_with_details\0"
	.byte	0xd
	.word	0x9c3
	.byte	0xd
	.uleb128 0x11
	.ascii "__is_integer<long double>\0"
	.byte	0x1
	.byte	0xf
	.byte	0x7f
	.byte	0xc
	.long	0xc3e
	.uleb128 0x4e
	.byte	0x7
	.byte	0x4
	.long	0x69e6
	.byte	0xf
	.byte	0x81
	.byte	0xc
	.long	0xc34
	.uleb128 0x4f
	.secrel32	.LASF5
	.byte	0
	.byte	0
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x75dd
	.byte	0
	.uleb128 0x11
	.ascii "__is_integer<double>\0"
	.byte	0x1
	.byte	0xf
	.byte	0x7f
	.byte	0xc
	.long	0xc7b
	.uleb128 0x4e
	.byte	0x7
	.byte	0x4
	.long	0x69e6
	.byte	0xf
	.byte	0x81
	.byte	0xc
	.long	0xc71
	.uleb128 0x4f
	.secrel32	.LASF5
	.byte	0
	.byte	0
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x7370
	.byte	0
	.uleb128 0x11
	.ascii "__is_integer<float>\0"
	.byte	0x1
	.byte	0xf
	.byte	0x7f
	.byte	0xc
	.long	0xcb7
	.uleb128 0x4e
	.byte	0x7
	.byte	0x4
	.long	0x69e6
	.byte	0xf
	.byte	0x81
	.byte	0xc
	.long	0xcad
	.uleb128 0x4f
	.secrel32	.LASF5
	.byte	0
	.byte	0
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x739f
	.byte	0
	.uleb128 0x43
	.secrel32	.LASF6
	.byte	0x1
	.byte	0x10
	.byte	0x4c
	.byte	0xa
	.long	0xcf9
	.uleb128 0x4a
	.secrel32	.LASF6
	.byte	0x10
	.byte	0x4c
	.byte	0x2b
	.ascii "_ZNSt21piecewise_construct_tC4Ev\0"
	.byte	0x1
	.long	0xcf2
	.uleb128 0x3
	.long	0x76c7
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0xcb7
	.uleb128 0x59
	.ascii "piecewise_construct\0"
	.byte	0x10
	.byte	0x4f
	.byte	0x35
	.long	0xcf9
	.byte	0x1
	.byte	0
	.uleb128 0x5a
	.ascii "__debug\0"
	.byte	0x11
	.byte	0x32
	.byte	0xd
	.uleb128 0x2d
	.ascii "char_traits<char>\0"
	.byte	0x1
	.byte	0x12
	.word	0x113
	.byte	0xc
	.long	0x10e3
	.uleb128 0x50
	.secrel32	.LASF8
	.byte	0x12
	.word	0x11c
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE6assignERcRKc\0"
	.long	0xd7f
	.uleb128 0x1
	.long	0x76ef
	.uleb128 0x1
	.long	0x76f5
	.byte	0
	.uleb128 0x28
	.secrel32	.LASF7
	.byte	0x12
	.word	0x115
	.byte	0x21
	.long	0x65f8
	.uleb128 0x5
	.long	0xd7f
	.uleb128 0x13
	.ascii "eq\0"
	.byte	0x12
	.word	0x120
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE2eqERKcS2_\0"
	.long	0x7672
	.long	0xdcc
	.uleb128 0x1
	.long	0x76f5
	.uleb128 0x1
	.long	0x76f5
	.byte	0
	.uleb128 0x13
	.ascii "lt\0"
	.byte	0x12
	.word	0x124
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE2ltERKcS2_\0"
	.long	0x7672
	.long	0xe07
	.uleb128 0x1
	.long	0x76f5
	.uleb128 0x1
	.long	0x76f5
	.byte	0
	.uleb128 0x13
	.ascii "compare\0"
	.byte	0x12
	.word	0x12c
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE7compareEPKcS2_y\0"
	.long	0x66a7
	.long	0xe52
	.uleb128 0x1
	.long	0x76fb
	.uleb128 0x1
	.long	0x76fb
	.uleb128 0x1
	.long	0x10e3
	.byte	0
	.uleb128 0x13
	.ascii "length\0"
	.byte	0x12
	.word	0x13a
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE6lengthEPKc\0"
	.long	0x10e3
	.long	0xe8d
	.uleb128 0x1
	.long	0x76fb
	.byte	0
	.uleb128 0x13
	.ascii "find\0"
	.byte	0x12
	.word	0x144
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE4findEPKcyRS1_\0"
	.long	0x76fb
	.long	0xed3
	.uleb128 0x1
	.long	0x76fb
	.uleb128 0x1
	.long	0x10e3
	.uleb128 0x1
	.long	0x76f5
	.byte	0
	.uleb128 0x13
	.ascii "move\0"
	.byte	0x12
	.word	0x152
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE4moveEPcPKcy\0"
	.long	0x7701
	.long	0xf17
	.uleb128 0x1
	.long	0x7701
	.uleb128 0x1
	.long	0x76fb
	.uleb128 0x1
	.long	0x10e3
	.byte	0
	.uleb128 0x13
	.ascii "copy\0"
	.byte	0x12
	.word	0x15a
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE4copyEPcPKcy\0"
	.long	0x7701
	.long	0xf5b
	.uleb128 0x1
	.long	0x7701
	.uleb128 0x1
	.long	0x76fb
	.uleb128 0x1
	.long	0x10e3
	.byte	0
	.uleb128 0x20
	.secrel32	.LASF8
	.byte	0x12
	.word	0x162
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE6assignEPcyc\0"
	.long	0x7701
	.long	0xf9e
	.uleb128 0x1
	.long	0x7701
	.uleb128 0x1
	.long	0x10e3
	.uleb128 0x1
	.long	0xd7f
	.byte	0
	.uleb128 0x20
	.secrel32	.LASF9
	.byte	0x12
	.word	0x16a
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE12to_char_typeERKi\0"
	.long	0xd7f
	.long	0xfdd
	.uleb128 0x1
	.long	0x7707
	.byte	0
	.uleb128 0x28
	.secrel32	.LASF10
	.byte	0x12
	.word	0x116
	.byte	0x21
	.long	0x66a7
	.uleb128 0x5
	.long	0xfdd
	.uleb128 0x20
	.secrel32	.LASF11
	.byte	0x12
	.word	0x170
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE11to_int_typeERKc\0"
	.long	0xfdd
	.long	0x102d
	.uleb128 0x1
	.long	0x76f5
	.byte	0
	.uleb128 0x20
	.secrel32	.LASF12
	.byte	0x12
	.word	0x174
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_\0"
	.long	0x7672
	.long	0x1073
	.uleb128 0x1
	.long	0x7707
	.uleb128 0x1
	.long	0x7707
	.byte	0
	.uleb128 0x5b
	.ascii "eof\0"
	.byte	0x12
	.word	0x178
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE3eofEv\0"
	.long	0xfdd
	.uleb128 0x13
	.ascii "not_eof\0"
	.byte	0x12
	.word	0x17c
	.byte	0x7
	.ascii "_ZNSt11char_traitsIcE7not_eofERKi\0"
	.long	0xfdd
	.long	0x10d9
	.uleb128 0x1
	.long	0x7707
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF13
	.long	0x65f8
	.byte	0
	.uleb128 0x7
	.ascii "size_t\0"
	.byte	0xe
	.byte	0xee
	.byte	0x1a
	.long	0x6614
	.uleb128 0x2d
	.ascii "char_traits<wchar_t>\0"
	.byte	0x1
	.byte	0x12
	.word	0x184
	.byte	0xc
	.long	0x14b0
	.uleb128 0x50
	.secrel32	.LASF8
	.byte	0x12
	.word	0x18d
	.byte	0x7
	.ascii "_ZNSt11char_traitsIwE6assignERwRKw\0"
	.long	0x114c
	.uleb128 0x1
	.long	0x770d
	.uleb128 0x1
	.long	0x7713
	.byte	0
	.uleb128 0x28
	.secrel32	.LASF7
	.byte	0x12
	.word	0x186
	.byte	0x21
	.long	0x69d0
	.uleb128 0x5
	.long	0x114c
	.uleb128 0x13
	.ascii "eq\0"
	.byte	0x12
	.word	0x191
	.byte	0x7
	.ascii "_ZNSt11char_traitsIwE2eqERKwS2_\0"
	.long	0x7672
	.long	0x1199
	.uleb128 0x1
	.long	0x7713
	.uleb128 0x1
	.long	0x7713
	.byte	0
	.uleb128 0x13
	.ascii "lt\0"
	.byte	0x12
	.word	0x195
	.byte	0x7
	.ascii "_ZNSt11char_traitsIwE2ltERKwS2_\0"
	.long	0x7672
	.long	0x11d4
	.uleb128 0x1
	.long	0x7713
	.uleb128 0x1
	.long	0x7713
	.byte	0
	.uleb128 0x13
	.ascii "compare\0"
	.byte	0x12
	.word	0x199
	.byte	0x7
	.ascii "_ZNSt11char_traitsIwE7compareEPKwS2_y\0"
	.long	0x66a7
	.long	0x121f
	.uleb128 0x1
	.long	0x7719
	.uleb128 0x1
	.long	0x7719
	.uleb128 0x1
	.long	0x10e3
	.byte	0
	.uleb128 0x13
	.ascii "length\0"
	.byte	0x12
	.word	0x1a8
	.byte	0x7
	.ascii "_ZNSt11char_traitsIwE6lengthEPKw\0"
	.long	0x10e3
	.long	0x125a
	.uleb128 0x1
	.long	0x7719
	.byte	0
	.uleb128 0x13
	.ascii "find\0"
	.byte	0x12
	.word	0x1b3
	.byte	0x7
	.ascii "_ZNSt11char_traitsIwE4findEPKwyRS1_\0"
	.long	0x7719
	.long	0x12a0
	.uleb128 0x1
	.long	0x7719
	.uleb128 0x1
	.long	0x10e3
	.uleb128 0x1
	.long	0x7713
	.byte	0
	.uleb128 0x13
	.ascii "move\0"
	.byte	0x12
	.word	0x1c2
	.byte	0x7
	.ascii "_ZNSt11char_traitsIwE4moveEPwPKwy\0"
	.long	0x771f
	.long	0x12e4
	.uleb128 0x1
	.long	0x771f
	.uleb128 0x1
	.long	0x7719
	.uleb128 0x1
	.long	0x10e3
	.byte	0
	.uleb128 0x13
	.ascii "copy\0"
	.byte	0x12
	.word	0x1ca
	.byte	0x7
	.ascii "_ZNSt11char_traitsIwE4copyEPwPKwy\0"
	.long	0x771f
	.long	0x1328
	.uleb128 0x1
	.long	0x771f
	.uleb128 0x1
	.long	0x7719
	.uleb128 0x1
	.long	0x10e3
	.byte	0
	.uleb128 0x20
	.secrel32	.LASF8
	.byte	0x12
	.word	0x1d2
	.byte	0x7
	.ascii "_ZNSt11char_traitsIwE6assignEPwyw\0"
	.long	0x771f
	.long	0x136b
	.uleb128 0x1
	.long	0x771f
	.uleb128 0x1
	.long	0x10e3
	.uleb128 0x1
	.long	0x114c
	.byte	0
	.uleb128 0x20
	.secrel32	.LASF9
	.byte	0x12
	.word	0x1da
	.byte	0x7
	.ascii "_ZNSt11char_traitsIwE12to_char_typeERKt\0"
	.long	0x114c
	.long	0x13aa
	.uleb128 0x1
	.long	0x7725
	.byte	0
	.uleb128 0x28
	.secrel32	.LASF10
	.byte	0x12
	.word	0x187
	.byte	0x21
	.long	0x666c
	.uleb128 0x5
	.long	0x13aa
	.uleb128 0x20
	.secrel32	.LASF11
	.byte	0x12
	.word	0x1de
	.byte	0x7
	.ascii "_ZNSt11char_traitsIwE11to_int_typeERKw\0"
	.long	0x13aa
	.long	0x13fa
	.uleb128 0x1
	.long	0x7713
	.byte	0
	.uleb128 0x20
	.secrel32	.LASF12
	.byte	0x12
	.word	0x1e2
	.byte	0x7
	.ascii "_ZNSt11char_traitsIwE11eq_int_typeERKtS2_\0"
	.long	0x7672
	.long	0x1440
	.uleb128 0x1
	.long	0x7725
	.uleb128 0x1
	.long	0x7725
	.byte	0
	.uleb128 0x5b
	.ascii "eof\0"
	.byte	0x12
	.word	0x1e6
	.byte	0x7
	.ascii "_ZNSt11char_traitsIwE3eofEv\0"
	.long	0x13aa
	.uleb128 0x13
	.ascii "not_eof\0"
	.byte	0x12
	.word	0x1ea
	.byte	0x7
	.ascii "_ZNSt11char_traitsIwE7not_eofERKt\0"
	.long	0x13aa
	.long	0x14a6
	.uleb128 0x1
	.long	0x7725
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF13
	.long	0x69d0
	.byte	0
	.uleb128 0x2
	.byte	0x13
	.byte	0x30
	.byte	0xb
	.long	0x772b
	.uleb128 0x2
	.byte	0x13
	.byte	0x31
	.byte	0xb
	.long	0x774a
	.uleb128 0x2
	.byte	0x13
	.byte	0x32
	.byte	0xb
	.long	0x776b
	.uleb128 0x2
	.byte	0x13
	.byte	0x33
	.byte	0xb
	.long	0x778c
	.uleb128 0x2
	.byte	0x13
	.byte	0x35
	.byte	0xb
	.long	0x785f
	.uleb128 0x2
	.byte	0x13
	.byte	0x36
	.byte	0xb
	.long	0x7888
	.uleb128 0x2
	.byte	0x13
	.byte	0x37
	.byte	0xb
	.long	0x78b3
	.uleb128 0x2
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.long	0x78de
	.uleb128 0x2
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.long	0x77ad
	.uleb128 0x2
	.byte	0x13
	.byte	0x3b
	.byte	0xb
	.long	0x77d8
	.uleb128 0x2
	.byte	0x13
	.byte	0x3c
	.byte	0xb
	.long	0x7805
	.uleb128 0x2
	.byte	0x13
	.byte	0x3d
	.byte	0xb
	.long	0x7832
	.uleb128 0x2
	.byte	0x13
	.byte	0x3f
	.byte	0xb
	.long	0x7909
	.uleb128 0x2
	.byte	0x13
	.byte	0x40
	.byte	0xb
	.long	0x6649
	.uleb128 0x2
	.byte	0x13
	.byte	0x42
	.byte	0xb
	.long	0x773a
	.uleb128 0x2
	.byte	0x13
	.byte	0x43
	.byte	0xb
	.long	0x775a
	.uleb128 0x2
	.byte	0x13
	.byte	0x44
	.byte	0xb
	.long	0x777b
	.uleb128 0x2
	.byte	0x13
	.byte	0x45
	.byte	0xb
	.long	0x779c
	.uleb128 0x2
	.byte	0x13
	.byte	0x47
	.byte	0xb
	.long	0x7873
	.uleb128 0x2
	.byte	0x13
	.byte	0x48
	.byte	0xb
	.long	0x789d
	.uleb128 0x2
	.byte	0x13
	.byte	0x49
	.byte	0xb
	.long	0x78c8
	.uleb128 0x2
	.byte	0x13
	.byte	0x4a
	.byte	0xb
	.long	0x78f3
	.uleb128 0x2
	.byte	0x13
	.byte	0x4c
	.byte	0xb
	.long	0x77c2
	.uleb128 0x2
	.byte	0x13
	.byte	0x4d
	.byte	0xb
	.long	0x77ee
	.uleb128 0x2
	.byte	0x13
	.byte	0x4e
	.byte	0xb
	.long	0x781b
	.uleb128 0x2
	.byte	0x13
	.byte	0x4f
	.byte	0xb
	.long	0x7848
	.uleb128 0x2
	.byte	0x13
	.byte	0x51
	.byte	0xb
	.long	0x791a
	.uleb128 0x2
	.byte	0x13
	.byte	0x52
	.byte	0xb
	.long	0x665a
	.uleb128 0x2
	.byte	0x14
	.byte	0x35
	.byte	0xb
	.long	0x6a40
	.uleb128 0x2
	.byte	0x14
	.byte	0x36
	.byte	0xb
	.long	0x7958
	.uleb128 0x2
	.byte	0x14
	.byte	0x37
	.byte	0xb
	.long	0x7979
	.uleb128 0x7
	.ascii "ptrdiff_t\0"
	.byte	0xe
	.byte	0xef
	.byte	0x1c
	.long	0x6633
	.uleb128 0x7
	.ascii "true_type\0"
	.byte	0xd
	.byte	0x57
	.byte	0x2d
	.long	0x97a
	.uleb128 0x2
	.byte	0x15
	.byte	0x7f
	.byte	0xb
	.long	0x7b10
	.uleb128 0x2
	.byte	0x15
	.byte	0x80
	.byte	0xb
	.long	0x7b4b
	.uleb128 0x2
	.byte	0x15
	.byte	0x86
	.byte	0xb
	.long	0x7d2b
	.uleb128 0x2
	.byte	0x15
	.byte	0x8c
	.byte	0xb
	.long	0x7d45
	.uleb128 0x2
	.byte	0x15
	.byte	0x8d
	.byte	0xb
	.long	0x7d5d
	.uleb128 0x2
	.byte	0x15
	.byte	0x8e
	.byte	0xb
	.long	0x7d75
	.uleb128 0x2
	.byte	0x15
	.byte	0x8f
	.byte	0xb
	.long	0x7d8d
	.uleb128 0x2
	.byte	0x15
	.byte	0x91
	.byte	0xb
	.long	0x7dd7
	.uleb128 0x2
	.byte	0x15
	.byte	0x94
	.byte	0xb
	.long	0x7df3
	.uleb128 0x2
	.byte	0x15
	.byte	0x96
	.byte	0xb
	.long	0x7e0d
	.uleb128 0x2
	.byte	0x15
	.byte	0x99
	.byte	0xb
	.long	0x7e2a
	.uleb128 0x2
	.byte	0x15
	.byte	0x9a
	.byte	0xb
	.long	0x7e48
	.uleb128 0x2
	.byte	0x15
	.byte	0x9b
	.byte	0xb
	.long	0x7e6e
	.uleb128 0x2
	.byte	0x15
	.byte	0x9d
	.byte	0xb
	.long	0x7e92
	.uleb128 0x2
	.byte	0x15
	.byte	0xa3
	.byte	0xb
	.long	0x7eb6
	.uleb128 0x2
	.byte	0x15
	.byte	0xa5
	.byte	0xb
	.long	0x7ec4
	.uleb128 0x2
	.byte	0x15
	.byte	0xa6
	.byte	0xb
	.long	0x7ed9
	.uleb128 0x2
	.byte	0x15
	.byte	0xa7
	.byte	0xb
	.long	0x7ef8
	.uleb128 0x2
	.byte	0x15
	.byte	0xa8
	.byte	0xb
	.long	0x7f1c
	.uleb128 0x2
	.byte	0x15
	.byte	0xa9
	.byte	0xb
	.long	0x7f41
	.uleb128 0x2
	.byte	0x15
	.byte	0xab
	.byte	0xb
	.long	0x7f5a
	.uleb128 0x2
	.byte	0x15
	.byte	0xac
	.byte	0xb
	.long	0x7f80
	.uleb128 0x2
	.byte	0x15
	.byte	0xf0
	.byte	0x16
	.long	0x7d08
	.uleb128 0x2
	.byte	0x15
	.byte	0xf5
	.byte	0x16
	.long	0x5952
	.uleb128 0x2
	.byte	0x15
	.byte	0xf6
	.byte	0x16
	.long	0x7f9f
	.uleb128 0x2
	.byte	0x15
	.byte	0xf8
	.byte	0x16
	.long	0x7fbd
	.uleb128 0x2
	.byte	0x15
	.byte	0xf9
	.byte	0x16
	.long	0x8021
	.uleb128 0x2
	.byte	0x15
	.byte	0xfa
	.byte	0x16
	.long	0x7fd6
	.uleb128 0x2
	.byte	0x15
	.byte	0xfb
	.byte	0x16
	.long	0x7ffb
	.uleb128 0x2
	.byte	0x15
	.byte	0xfc
	.byte	0x16
	.long	0x8040
	.uleb128 0x2
	.byte	0x16
	.byte	0x62
	.byte	0xb
	.long	0x6cc6
	.uleb128 0x2
	.byte	0x16
	.byte	0x63
	.byte	0xb
	.long	0x7944
	.uleb128 0x2
	.byte	0x16
	.byte	0x65
	.byte	0xb
	.long	0x8060
	.uleb128 0x2
	.byte	0x16
	.byte	0x66
	.byte	0xb
	.long	0x8078
	.uleb128 0x2
	.byte	0x16
	.byte	0x67
	.byte	0xb
	.long	0x8092
	.uleb128 0x2
	.byte	0x16
	.byte	0x68
	.byte	0xb
	.long	0x80aa
	.uleb128 0x2
	.byte	0x16
	.byte	0x69
	.byte	0xb
	.long	0x80c4
	.uleb128 0x2
	.byte	0x16
	.byte	0x6a
	.byte	0xb
	.long	0x80de
	.uleb128 0x2
	.byte	0x16
	.byte	0x6b
	.byte	0xb
	.long	0x80f7
	.uleb128 0x2
	.byte	0x16
	.byte	0x6c
	.byte	0xb
	.long	0x811d
	.uleb128 0x2
	.byte	0x16
	.byte	0x6d
	.byte	0xb
	.long	0x8140
	.uleb128 0x2
	.byte	0x16
	.byte	0x6e
	.byte	0xb
	.long	0x815e
	.uleb128 0x2
	.byte	0x16
	.byte	0x71
	.byte	0xb
	.long	0x817f
	.uleb128 0x2
	.byte	0x16
	.byte	0x72
	.byte	0xb
	.long	0x81a7
	.uleb128 0x2
	.byte	0x16
	.byte	0x73
	.byte	0xb
	.long	0x81cc
	.uleb128 0x2
	.byte	0x16
	.byte	0x74
	.byte	0xb
	.long	0x81ec
	.uleb128 0x2
	.byte	0x16
	.byte	0x75
	.byte	0xb
	.long	0x820f
	.uleb128 0x2
	.byte	0x16
	.byte	0x76
	.byte	0xb
	.long	0x8235
	.uleb128 0x2
	.byte	0x16
	.byte	0x78
	.byte	0xb
	.long	0x824e
	.uleb128 0x2
	.byte	0x16
	.byte	0x79
	.byte	0xb
	.long	0x8266
	.uleb128 0x2
	.byte	0x16
	.byte	0x7e
	.byte	0xb
	.long	0x8277
	.uleb128 0x2
	.byte	0x16
	.byte	0x7f
	.byte	0xb
	.long	0x828d
	.uleb128 0x2
	.byte	0x16
	.byte	0x83
	.byte	0xb
	.long	0x82a8
	.uleb128 0x2
	.byte	0x16
	.byte	0x84
	.byte	0xb
	.long	0x82c2
	.uleb128 0x2
	.byte	0x16
	.byte	0x85
	.byte	0xb
	.long	0x82e1
	.uleb128 0x2
	.byte	0x16
	.byte	0x86
	.byte	0xb
	.long	0x82f7
	.uleb128 0x2
	.byte	0x16
	.byte	0x87
	.byte	0xb
	.long	0x8311
	.uleb128 0x2
	.byte	0x16
	.byte	0x88
	.byte	0xb
	.long	0x832c
	.uleb128 0x2
	.byte	0x16
	.byte	0x89
	.byte	0xb
	.long	0x8356
	.uleb128 0x2
	.byte	0x16
	.byte	0x8a
	.byte	0xb
	.long	0x8377
	.uleb128 0x2
	.byte	0x16
	.byte	0x8b
	.byte	0xb
	.long	0x8397
	.uleb128 0x2
	.byte	0x16
	.byte	0x8d
	.byte	0xb
	.long	0x83a8
	.uleb128 0x2
	.byte	0x16
	.byte	0x8f
	.byte	0xb
	.long	0x83c2
	.uleb128 0x2
	.byte	0x16
	.byte	0x90
	.byte	0xb
	.long	0x83e1
	.uleb128 0x2
	.byte	0x16
	.byte	0x91
	.byte	0xb
	.long	0x8407
	.uleb128 0x2
	.byte	0x16
	.byte	0x92
	.byte	0xb
	.long	0x8427
	.uleb128 0x2
	.byte	0x16
	.byte	0xb9
	.byte	0x16
	.long	0x844d
	.uleb128 0x2
	.byte	0x16
	.byte	0xba
	.byte	0x16
	.long	0x8474
	.uleb128 0x2
	.byte	0x16
	.byte	0xbb
	.byte	0x16
	.long	0x8499
	.uleb128 0x2
	.byte	0x16
	.byte	0xbc
	.byte	0x16
	.long	0x84b8
	.uleb128 0x2
	.byte	0x16
	.byte	0xbd
	.byte	0x16
	.long	0x84e4
	.uleb128 0x75
	.ascii "literals\0"
	.byte	0x17
	.word	0x1a08
	.byte	0x14
	.long	0x1835
	.uleb128 0x49
	.ascii "string_literals\0"
	.byte	0x17
	.word	0x1a0a
	.byte	0x14
	.uleb128 0x42
	.byte	0x17
	.word	0x1a0a
	.byte	0x14
	.long	0x1816
	.byte	0
	.uleb128 0x42
	.byte	0x17
	.word	0x1a08
	.byte	0x14
	.long	0x1804
	.uleb128 0x76
	.ascii "_V2\0"
	.byte	0x18
	.byte	0x47
	.byte	0x14
	.uleb128 0x5c
	.byte	0x18
	.byte	0x47
	.byte	0x14
	.long	0x183e
	.uleb128 0x3b
	.ascii "ios_base\0"
	.long	0x1905
	.uleb128 0x77
	.ascii "Init\0"
	.byte	0x1
	.byte	0x19
	.word	0x25b
	.byte	0xb
	.byte	0x1
	.uleb128 0x1b
	.ascii "Init\0"
	.byte	0x19
	.word	0x25f
	.byte	0x7
	.ascii "_ZNSt8ios_base4InitC4Ev\0"
	.byte	0x1
	.long	0x1893
	.long	0x1899
	.uleb128 0x3
	.long	0x8509
	.byte	0
	.uleb128 0x1b
	.ascii "~Init\0"
	.byte	0x19
	.word	0x260
	.byte	0x7
	.ascii "_ZNSt8ios_base4InitD4Ev\0"
	.byte	0x1
	.long	0x18c5
	.long	0x18d0
	.uleb128 0x3
	.long	0x8509
	.uleb128 0x3
	.long	0x66a7
	.byte	0
	.uleb128 0x5d
	.ascii "_S_refcount\0"
	.byte	0x19
	.word	0x263
	.byte	0x1b
	.long	0x7ac7
	.uleb128 0x5d
	.ascii "_S_synced_with_stdio\0"
	.byte	0x19
	.word	0x264
	.byte	0x14
	.long	0x7672
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1a
	.byte	0x52
	.byte	0xb
	.long	0x850f
	.uleb128 0x2
	.byte	0x1a
	.byte	0x53
	.byte	0xb
	.long	0x6696
	.uleb128 0x2
	.byte	0x1a
	.byte	0x54
	.byte	0xb
	.long	0x666c
	.uleb128 0x2
	.byte	0x1a
	.byte	0x5c
	.byte	0xb
	.long	0x8521
	.uleb128 0x2
	.byte	0x1a
	.byte	0x65
	.byte	0xb
	.long	0x8542
	.uleb128 0x2
	.byte	0x1a
	.byte	0x68
	.byte	0xb
	.long	0x8563
	.uleb128 0x2
	.byte	0x1a
	.byte	0x69
	.byte	0xb
	.long	0x857d
	.uleb128 0x3b
	.ascii "basic_ostream<char, std::char_traits<char> >\0"
	.long	0x1982
	.uleb128 0x8
	.secrel32	.LASF13
	.long	0x65f8
	.uleb128 0x3c
	.secrel32	.LASF14
	.long	0xd28
	.byte	0
	.uleb128 0x3b
	.ascii "basic_ostream<wchar_t, std::char_traits<wchar_t> >\0"
	.long	0x19cd
	.uleb128 0x8
	.secrel32	.LASF13
	.long	0x69d0
	.uleb128 0x3c
	.secrel32	.LASF14
	.long	0x10f2
	.byte	0
	.uleb128 0x3b
	.ascii "basic_istream<char, std::char_traits<char> >\0"
	.long	0x1a12
	.uleb128 0x8
	.secrel32	.LASF13
	.long	0x65f8
	.uleb128 0x3c
	.secrel32	.LASF14
	.long	0xd28
	.byte	0
	.uleb128 0x3b
	.ascii "basic_istream<wchar_t, std::char_traits<wchar_t> >\0"
	.long	0x1a5d
	.uleb128 0x8
	.secrel32	.LASF13
	.long	0x69d0
	.uleb128 0x3c
	.secrel32	.LASF14
	.long	0x10f2
	.byte	0
	.uleb128 0x7
	.ascii "istream\0"
	.byte	0x1b
	.byte	0x8a
	.byte	0x21
	.long	0x19cd
	.uleb128 0x9
	.ascii "cin\0"
	.byte	0x9
	.byte	0x3c
	.byte	0x12
	.ascii "_ZSt3cin\0"
	.long	0x1a5d
	.uleb128 0x7
	.ascii "ostream\0"
	.byte	0x1b
	.byte	0x8d
	.byte	0x21
	.long	0x193d
	.uleb128 0x9
	.ascii "cout\0"
	.byte	0x9
	.byte	0x3d
	.byte	0x12
	.ascii "_ZSt4cout\0"
	.long	0x1a82
	.uleb128 0x9
	.ascii "cerr\0"
	.byte	0x9
	.byte	0x3e
	.byte	0x12
	.ascii "_ZSt4cerr\0"
	.long	0x1a82
	.uleb128 0x9
	.ascii "clog\0"
	.byte	0x9
	.byte	0x3f
	.byte	0x12
	.ascii "_ZSt4clog\0"
	.long	0x1a82
	.uleb128 0x7
	.ascii "wistream\0"
	.byte	0x1b
	.byte	0xb2
	.byte	0x23
	.long	0x1a12
	.uleb128 0x9
	.ascii "wcin\0"
	.byte	0x9
	.byte	0x42
	.byte	0x13
	.ascii "_ZSt4wcin\0"
	.long	0x1ad7
	.uleb128 0x7
	.ascii "wostream\0"
	.byte	0x1b
	.byte	0xb5
	.byte	0x23
	.long	0x1982
	.uleb128 0x9
	.ascii "wcout\0"
	.byte	0x9
	.byte	0x43
	.byte	0x13
	.ascii "_ZSt5wcout\0"
	.long	0x1aff
	.uleb128 0x9
	.ascii "wcerr\0"
	.byte	0x9
	.byte	0x44
	.byte	0x13
	.ascii "_ZSt5wcerr\0"
	.long	0x1aff
	.uleb128 0x9
	.ascii "wclog\0"
	.byte	0x9
	.byte	0x45
	.byte	0x13
	.ascii "_ZSt5wclog\0"
	.long	0x1aff
	.uleb128 0x78
	.ascii "__ioinit\0"
	.byte	0x9
	.byte	0x4a
	.byte	0x19
	.long	0x185c
	.uleb128 0x11
	.ascii "_Destroy_aux<true>\0"
	.byte	0x1
	.byte	0x5
	.byte	0x71
	.byte	0xc
	.long	0x1c10
	.uleb128 0x5e
	.ascii "__destroy<WrappingValueTypeInstance*>\0"
	.byte	0x5
	.byte	0x75
	.byte	0x9
	.ascii "_ZNSt12_Destroy_auxILb1EE9__destroyIP25WrappingValueTypeInstanceEEvT_S4_\0"
	.uleb128 0x8
	.secrel32	.LASF15
	.long	0x862e
	.uleb128 0x1
	.long	0x862e
	.uleb128 0x1
	.long	0x862e
	.byte	0
	.byte	0
	.uleb128 0x2d
	.ascii "__uninitialized_default_n_1<true>\0"
	.byte	0x1
	.byte	0x6
	.word	0x21b
	.byte	0xc
	.long	0x1d2b
	.uleb128 0x13
	.ascii "__uninit_default_n<WrappingValueTypeInstance*, long long unsigned int>\0"
	.byte	0x6
	.word	0x21f
	.byte	0x9
	.ascii "_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP25WrappingValueTypeInstanceyEET_S4_T0_\0"
	.long	0x862e
	.long	0x1d12
	.uleb128 0x8
	.secrel32	.LASF15
	.long	0x862e
	.uleb128 0x8
	.secrel32	.LASF16
	.long	0x6614
	.uleb128 0x1
	.long	0x862e
	.uleb128 0x1
	.long	0x6614
	.byte	0
	.uleb128 0x44
	.ascii "_TrivialValueType\0"
	.long	0x7672
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.secrel32	.LASF17
	.byte	0x1
	.byte	0x1c
	.byte	0x2e
	.byte	0xa
	.long	0x1d67
	.uleb128 0x4a
	.secrel32	.LASF17
	.byte	0x1c
	.byte	0x2e
	.byte	0x25
	.ascii "_ZNSt15allocator_arg_tC4Ev\0"
	.byte	0x1
	.long	0x1d60
	.uleb128 0x3
	.long	0x85a6
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x1d2b
	.uleb128 0x59
	.ascii "allocator_arg\0"
	.byte	0x1c
	.byte	0x30
	.byte	0x2f
	.long	0x1d67
	.byte	0x1
	.byte	0
	.uleb128 0x79
	.ascii "_Swallow_assign\0"
	.byte	0x1
	.byte	0x1d
	.word	0x660
	.byte	0xa
	.uleb128 0x5
	.long	0x1d84
	.uleb128 0x7a
	.ascii "ignore\0"
	.byte	0x1d
	.word	0x66a
	.byte	0x2f
	.long	0x1d9a
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.ascii "_Placeholder<1>\0"
	.uleb128 0x5
	.long	0x1db1
	.uleb128 0x4b
	.ascii "placeholders\0"
	.byte	0x1e
	.byte	0xcd
	.byte	0xd
	.long	0x21fc
	.uleb128 0x9
	.ascii "_1\0"
	.byte	0x1e
	.byte	0xd3
	.byte	0x22
	.ascii "_ZNSt12placeholders2_1E\0"
	.long	0x1dc2
	.uleb128 0x9
	.ascii "_2\0"
	.byte	0x1e
	.byte	0xd4
	.byte	0x22
	.ascii "_ZNSt12placeholders2_2E\0"
	.long	0x220d
	.uleb128 0x9
	.ascii "_3\0"
	.byte	0x1e
	.byte	0xd5
	.byte	0x22
	.ascii "_ZNSt12placeholders2_3E\0"
	.long	0x2223
	.uleb128 0x9
	.ascii "_4\0"
	.byte	0x1e
	.byte	0xd6
	.byte	0x22
	.ascii "_ZNSt12placeholders2_4E\0"
	.long	0x2239
	.uleb128 0x9
	.ascii "_5\0"
	.byte	0x1e
	.byte	0xd7
	.byte	0x22
	.ascii "_ZNSt12placeholders2_5E\0"
	.long	0x224f
	.uleb128 0x9
	.ascii "_6\0"
	.byte	0x1e
	.byte	0xd8
	.byte	0x22
	.ascii "_ZNSt12placeholders2_6E\0"
	.long	0x2265
	.uleb128 0x9
	.ascii "_7\0"
	.byte	0x1e
	.byte	0xd9
	.byte	0x22
	.ascii "_ZNSt12placeholders2_7E\0"
	.long	0x227b
	.uleb128 0x9
	.ascii "_8\0"
	.byte	0x1e
	.byte	0xda
	.byte	0x22
	.ascii "_ZNSt12placeholders2_8E\0"
	.long	0x2291
	.uleb128 0x9
	.ascii "_9\0"
	.byte	0x1e
	.byte	0xdb
	.byte	0x22
	.ascii "_ZNSt12placeholders2_9E\0"
	.long	0x22a7
	.uleb128 0x9
	.ascii "_10\0"
	.byte	0x1e
	.byte	0xdc
	.byte	0x23
	.ascii "_ZNSt12placeholders3_10E\0"
	.long	0x22be
	.uleb128 0x9
	.ascii "_11\0"
	.byte	0x1e
	.byte	0xdd
	.byte	0x23
	.ascii "_ZNSt12placeholders3_11E\0"
	.long	0x22d5
	.uleb128 0x9
	.ascii "_12\0"
	.byte	0x1e
	.byte	0xde
	.byte	0x23
	.ascii "_ZNSt12placeholders3_12E\0"
	.long	0x22ec
	.uleb128 0x9
	.ascii "_13\0"
	.byte	0x1e
	.byte	0xdf
	.byte	0x23
	.ascii "_ZNSt12placeholders3_13E\0"
	.long	0x2303
	.uleb128 0x9
	.ascii "_14\0"
	.byte	0x1e
	.byte	0xe0
	.byte	0x23
	.ascii "_ZNSt12placeholders3_14E\0"
	.long	0x231a
	.uleb128 0x9
	.ascii "_15\0"
	.byte	0x1e
	.byte	0xe1
	.byte	0x23
	.ascii "_ZNSt12placeholders3_15E\0"
	.long	0x2331
	.uleb128 0x9
	.ascii "_16\0"
	.byte	0x1e
	.byte	0xe2
	.byte	0x23
	.ascii "_ZNSt12placeholders3_16E\0"
	.long	0x2348
	.uleb128 0x9
	.ascii "_17\0"
	.byte	0x1e
	.byte	0xe3
	.byte	0x23
	.ascii "_ZNSt12placeholders3_17E\0"
	.long	0x235f
	.uleb128 0x9
	.ascii "_18\0"
	.byte	0x1e
	.byte	0xe4
	.byte	0x23
	.ascii "_ZNSt12placeholders3_18E\0"
	.long	0x2376
	.uleb128 0x9
	.ascii "_19\0"
	.byte	0x1e
	.byte	0xe5
	.byte	0x23
	.ascii "_ZNSt12placeholders3_19E\0"
	.long	0x238d
	.uleb128 0x9
	.ascii "_20\0"
	.byte	0x1e
	.byte	0xe6
	.byte	0x23
	.ascii "_ZNSt12placeholders3_20E\0"
	.long	0x23a4
	.uleb128 0x9
	.ascii "_21\0"
	.byte	0x1e
	.byte	0xe7
	.byte	0x23
	.ascii "_ZNSt12placeholders3_21E\0"
	.long	0x23bb
	.uleb128 0x9
	.ascii "_22\0"
	.byte	0x1e
	.byte	0xe8
	.byte	0x23
	.ascii "_ZNSt12placeholders3_22E\0"
	.long	0x23d2
	.uleb128 0x9
	.ascii "_23\0"
	.byte	0x1e
	.byte	0xe9
	.byte	0x23
	.ascii "_ZNSt12placeholders3_23E\0"
	.long	0x23e9
	.uleb128 0x9
	.ascii "_24\0"
	.byte	0x1e
	.byte	0xea
	.byte	0x23
	.ascii "_ZNSt12placeholders3_24E\0"
	.long	0x2400
	.uleb128 0x9
	.ascii "_25\0"
	.byte	0x1e
	.byte	0xeb
	.byte	0x23
	.ascii "_ZNSt12placeholders3_25E\0"
	.long	0x2417
	.uleb128 0x9
	.ascii "_26\0"
	.byte	0x1e
	.byte	0xec
	.byte	0x23
	.ascii "_ZNSt12placeholders3_26E\0"
	.long	0x242e
	.uleb128 0x9
	.ascii "_27\0"
	.byte	0x1e
	.byte	0xed
	.byte	0x23
	.ascii "_ZNSt12placeholders3_27E\0"
	.long	0x2445
	.uleb128 0x9
	.ascii "_28\0"
	.byte	0x1e
	.byte	0xee
	.byte	0x23
	.ascii "_ZNSt12placeholders3_28E\0"
	.long	0x245c
	.uleb128 0x9
	.ascii "_29\0"
	.byte	0x1e
	.byte	0xef
	.byte	0x23
	.ascii "_ZNSt12placeholders3_29E\0"
	.long	0x2473
	.byte	0
	.uleb128 0xc
	.ascii "_Placeholder<2>\0"
	.uleb128 0x5
	.long	0x21fc
	.uleb128 0xc
	.ascii "_Placeholder<3>\0"
	.uleb128 0x5
	.long	0x2212
	.uleb128 0xc
	.ascii "_Placeholder<4>\0"
	.uleb128 0x5
	.long	0x2228
	.uleb128 0xc
	.ascii "_Placeholder<5>\0"
	.uleb128 0x5
	.long	0x223e
	.uleb128 0xc
	.ascii "_Placeholder<6>\0"
	.uleb128 0x5
	.long	0x2254
	.uleb128 0xc
	.ascii "_Placeholder<7>\0"
	.uleb128 0x5
	.long	0x226a
	.uleb128 0xc
	.ascii "_Placeholder<8>\0"
	.uleb128 0x5
	.long	0x2280
	.uleb128 0xc
	.ascii "_Placeholder<9>\0"
	.uleb128 0x5
	.long	0x2296
	.uleb128 0xc
	.ascii "_Placeholder<10>\0"
	.uleb128 0x5
	.long	0x22ac
	.uleb128 0xc
	.ascii "_Placeholder<11>\0"
	.uleb128 0x5
	.long	0x22c3
	.uleb128 0xc
	.ascii "_Placeholder<12>\0"
	.uleb128 0x5
	.long	0x22da
	.uleb128 0xc
	.ascii "_Placeholder<13>\0"
	.uleb128 0x5
	.long	0x22f1
	.uleb128 0xc
	.ascii "_Placeholder<14>\0"
	.uleb128 0x5
	.long	0x2308
	.uleb128 0xc
	.ascii "_Placeholder<15>\0"
	.uleb128 0x5
	.long	0x231f
	.uleb128 0xc
	.ascii "_Placeholder<16>\0"
	.uleb128 0x5
	.long	0x2336
	.uleb128 0xc
	.ascii "_Placeholder<17>\0"
	.uleb128 0x5
	.long	0x234d
	.uleb128 0xc
	.ascii "_Placeholder<18>\0"
	.uleb128 0x5
	.long	0x2364
	.uleb128 0xc
	.ascii "_Placeholder<19>\0"
	.uleb128 0x5
	.long	0x237b
	.uleb128 0xc
	.ascii "_Placeholder<20>\0"
	.uleb128 0x5
	.long	0x2392
	.uleb128 0xc
	.ascii "_Placeholder<21>\0"
	.uleb128 0x5
	.long	0x23a9
	.uleb128 0xc
	.ascii "_Placeholder<22>\0"
	.uleb128 0x5
	.long	0x23c0
	.uleb128 0xc
	.ascii "_Placeholder<23>\0"
	.uleb128 0x5
	.long	0x23d7
	.uleb128 0xc
	.ascii "_Placeholder<24>\0"
	.uleb128 0x5
	.long	0x23ee
	.uleb128 0xc
	.ascii "_Placeholder<25>\0"
	.uleb128 0x5
	.long	0x2405
	.uleb128 0xc
	.ascii "_Placeholder<26>\0"
	.uleb128 0x5
	.long	0x241c
	.uleb128 0xc
	.ascii "_Placeholder<27>\0"
	.uleb128 0x5
	.long	0x2433
	.uleb128 0xc
	.ascii "_Placeholder<28>\0"
	.uleb128 0x5
	.long	0x244a
	.uleb128 0xc
	.ascii "_Placeholder<29>\0"
	.uleb128 0x5
	.long	0x2461
	.uleb128 0x51
	.ascii "allocator<WrappingValueTypeInstance>\0"
	.byte	0x1
	.byte	0x2
	.byte	0x6c
	.byte	0xb
	.long	0x2579
	.uleb128 0x5f
	.long	0x5c80
	.byte	0
	.byte	0x1
	.uleb128 0x24
	.secrel32	.LASF18
	.byte	0x2
	.byte	0x83
	.byte	0x7
	.ascii "_ZNSaI25WrappingValueTypeInstanceEC4Ev\0"
	.byte	0x1
	.long	0x24e5
	.long	0x24eb
	.uleb128 0x3
	.long	0x8651
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF18
	.byte	0x2
	.byte	0x85
	.byte	0x7
	.ascii "_ZNSaI25WrappingValueTypeInstanceEC4ERKS0_\0"
	.byte	0x1
	.long	0x2527
	.long	0x2532
	.uleb128 0x3
	.long	0x8651
	.uleb128 0x1
	.long	0x865c
	.byte	0
	.uleb128 0x7b
	.ascii "~allocator\0"
	.byte	0x2
	.byte	0x8b
	.byte	0x7
	.ascii "_ZNSaI25WrappingValueTypeInstanceED4Ev\0"
	.byte	0x1
	.long	0x256d
	.uleb128 0x3
	.long	0x8651
	.uleb128 0x3
	.long	0x66a7
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x2478
	.uleb128 0x2d
	.ascii "allocator_traits<std::allocator<WrappingValueTypeInstance> >\0"
	.byte	0x1
	.byte	0x7
	.word	0x180
	.byte	0xc
	.long	0x2874
	.uleb128 0x28
	.secrel32	.LASF19
	.byte	0x7
	.word	0x188
	.byte	0x1b
	.long	0x862e
	.uleb128 0x20
	.secrel32	.LASF20
	.byte	0x7
	.word	0x1b3
	.byte	0x7
	.ascii "_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE8allocateERS1_y\0"
	.long	0x25c5
	.long	0x2636
	.uleb128 0x1
	.long	0x8662
	.uleb128 0x1
	.long	0x2648
	.byte	0
	.uleb128 0x28
	.secrel32	.LASF21
	.byte	0x7
	.word	0x183
	.byte	0x2c
	.long	0x2478
	.uleb128 0x5
	.long	0x2636
	.uleb128 0x28
	.secrel32	.LASF22
	.byte	0x7
	.word	0x197
	.byte	0x24
	.long	0x10e3
	.uleb128 0x20
	.secrel32	.LASF20
	.byte	0x7
	.word	0x1c1
	.byte	0x7
	.ascii "_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE8allocateERS1_yPKv\0"
	.long	0x25c5
	.long	0x26c1
	.uleb128 0x1
	.long	0x8662
	.uleb128 0x1
	.long	0x2648
	.uleb128 0x1
	.long	0x26c1
	.byte	0
	.uleb128 0x29
	.ascii "const_void_pointer\0"
	.byte	0x7
	.word	0x191
	.byte	0x2d
	.long	0x7adc
	.uleb128 0x50
	.secrel32	.LASF23
	.byte	0x7
	.word	0x1cd
	.byte	0x7
	.ascii "_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE10deallocateERS1_PS0_y\0"
	.long	0x2749
	.uleb128 0x1
	.long	0x8662
	.uleb128 0x1
	.long	0x25c5
	.uleb128 0x1
	.long	0x2648
	.byte	0
	.uleb128 0x20
	.secrel32	.LASF24
	.byte	0x7
	.word	0x1ef
	.byte	0x7
	.ascii "_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE8max_sizeERKS1_\0"
	.long	0x2648
	.long	0x27a8
	.uleb128 0x1
	.long	0x8668
	.byte	0
	.uleb128 0x13
	.ascii "select_on_container_copy_construction\0"
	.byte	0x7
	.word	0x1f8
	.byte	0x7
	.ascii "_ZNSt16allocator_traitsISaI25WrappingValueTypeInstanceEE37select_on_container_copy_constructionERKS1_\0"
	.long	0x2636
	.long	0x2847
	.uleb128 0x1
	.long	0x8668
	.byte	0
	.uleb128 0x28
	.secrel32	.LASF3
	.byte	0x7
	.word	0x185
	.byte	0x1d
	.long	0x85dd
	.uleb128 0x29
	.ascii "rebind_alloc\0"
	.byte	0x7
	.word	0x1a6
	.byte	0x25
	.long	0x2478
	.uleb128 0x8
	.secrel32	.LASF25
	.long	0x2478
	.byte	0
	.uleb128 0x11
	.ascii "_Vector_base<WrappingValueTypeInstance, std::allocator<WrappingValueTypeInstance> >\0"
	.byte	0x18
	.byte	0x3
	.byte	0x51
	.byte	0xc
	.long	0x311c
	.uleb128 0x43
	.secrel32	.LASF26
	.byte	0x18
	.byte	0x3
	.byte	0x58
	.byte	0xe
	.long	0x2b3b
	.uleb128 0x60
	.long	0x2478
	.byte	0
	.uleb128 0xa
	.ascii "_M_start\0"
	.byte	0x3
	.byte	0x5b
	.byte	0xa
	.long	0x2b3b
	.byte	0
	.uleb128 0xa
	.ascii "_M_finish\0"
	.byte	0x3
	.byte	0x5c
	.byte	0xa
	.long	0x2b3b
	.byte	0x8
	.uleb128 0xa
	.ascii "_M_end_of_storage\0"
	.byte	0x3
	.byte	0x5d
	.byte	0xa
	.long	0x2b3b
	.byte	0x10
	.uleb128 0x2e
	.secrel32	.LASF26
	.byte	0x3
	.byte	0x5f
	.byte	0x2
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implC4Ev\0"
	.long	0x297e
	.long	0x2984
	.uleb128 0x3
	.long	0x8680
	.byte	0
	.uleb128 0x2e
	.secrel32	.LASF26
	.byte	0x3
	.byte	0x63
	.byte	0x2
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implC4ERKS1_\0"
	.long	0x29e2
	.long	0x29ed
	.uleb128 0x3
	.long	0x8680
	.uleb128 0x1
	.long	0x868b
	.byte	0
	.uleb128 0x2e
	.secrel32	.LASF26
	.byte	0x3
	.byte	0x68
	.byte	0x2
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implC4EOS1_\0"
	.long	0x2a4a
	.long	0x2a55
	.uleb128 0x3
	.long	0x8680
	.uleb128 0x1
	.long	0x8691
	.byte	0
	.uleb128 0x4c
	.ascii "_M_swap_data\0"
	.byte	0x3
	.byte	0x6e
	.byte	0x7
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_impl12_M_swap_dataERS3_\0"
	.long	0x2ac7
	.long	0x2ad2
	.uleb128 0x3
	.long	0x8680
	.uleb128 0x1
	.long	0x8697
	.byte	0
	.uleb128 0x7c
	.ascii "~_Vector_impl\0"
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implD4Ev\0"
	.long	0x2b2f
	.uleb128 0x3
	.long	0x8680
	.uleb128 0x3
	.long	0x66a7
	.byte	0
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF19
	.byte	0x3
	.byte	0x56
	.byte	0x9
	.long	0x641b
	.uleb128 0x7
	.ascii "_Tp_alloc_type\0"
	.byte	0x3
	.byte	0x54
	.byte	0x15
	.long	0x646a
	.uleb128 0x5
	.long	0x2b47
	.uleb128 0x3a
	.secrel32	.LASF27
	.byte	0x3
	.byte	0xed
	.byte	0x7
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE19_M_get_Tp_allocatorEv\0"
	.long	0x869d
	.long	0x2bc6
	.long	0x2bcc
	.uleb128 0x3
	.long	0x86a3
	.byte	0
	.uleb128 0x3a
	.secrel32	.LASF27
	.byte	0x3
	.byte	0xf1
	.byte	0x7
	.ascii "_ZNKSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE19_M_get_Tp_allocatorEv\0"
	.long	0x868b
	.long	0x2c30
	.long	0x2c36
	.uleb128 0x3
	.long	0x86ae
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF21
	.byte	0x3
	.byte	0xea
	.byte	0x16
	.long	0x2478
	.uleb128 0x5
	.long	0x2c36
	.uleb128 0x37
	.ascii "get_allocator\0"
	.byte	0x3
	.byte	0xf5
	.byte	0x7
	.ascii "_ZNKSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE13get_allocatorEv\0"
	.long	0x2c36
	.long	0x2caf
	.long	0x2cb5
	.uleb128 0x3
	.long	0x86ae
	.byte	0
	.uleb128 0x2e
	.secrel32	.LASF28
	.byte	0x3
	.byte	0xf8
	.byte	0x7
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC4Ev\0"
	.long	0x2d01
	.long	0x2d07
	.uleb128 0x3
	.long	0x86a3
	.byte	0
	.uleb128 0x2e
	.secrel32	.LASF28
	.byte	0x3
	.byte	0xfb
	.byte	0x7
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC4ERKS1_\0"
	.long	0x2d57
	.long	0x2d62
	.uleb128 0x3
	.long	0x86a3
	.uleb128 0x1
	.long	0x86b4
	.byte	0
	.uleb128 0x2e
	.secrel32	.LASF28
	.byte	0x3
	.byte	0xfe
	.byte	0x7
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC4Ey\0"
	.long	0x2dae
	.long	0x2db9
	.uleb128 0x3
	.long	0x86a3
	.uleb128 0x1
	.long	0x10e3
	.byte	0
	.uleb128 0x32
	.secrel32	.LASF28
	.byte	0x3
	.word	0x102
	.byte	0x7
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC4EyRKS1_\0"
	.long	0x2e0b
	.long	0x2e1b
	.uleb128 0x3
	.long	0x86a3
	.uleb128 0x1
	.long	0x10e3
	.uleb128 0x1
	.long	0x86b4
	.byte	0
	.uleb128 0x32
	.secrel32	.LASF28
	.byte	0x3
	.word	0x107
	.byte	0x7
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC4EOS1_\0"
	.long	0x2e6b
	.long	0x2e76
	.uleb128 0x3
	.long	0x86a3
	.uleb128 0x1
	.long	0x8691
	.byte	0
	.uleb128 0x32
	.secrel32	.LASF28
	.byte	0x3
	.word	0x10a
	.byte	0x7
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC4EOS2_\0"
	.long	0x2ec6
	.long	0x2ed1
	.uleb128 0x3
	.long	0x86a3
	.uleb128 0x1
	.long	0x86ba
	.byte	0
	.uleb128 0x32
	.secrel32	.LASF28
	.byte	0x3
	.word	0x10e
	.byte	0x7
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC4EOS2_RKS1_\0"
	.long	0x2f26
	.long	0x2f36
	.uleb128 0x3
	.long	0x86a3
	.uleb128 0x1
	.long	0x86ba
	.uleb128 0x1
	.long	0x86b4
	.byte	0
	.uleb128 0x61
	.ascii "~_Vector_base\0"
	.byte	0x3
	.word	0x11b
	.byte	0x7
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EED4Ev\0"
	.long	0x2f8d
	.long	0x2f98
	.uleb128 0x3
	.long	0x86a3
	.uleb128 0x3
	.long	0x66a7
	.byte	0
	.uleb128 0xf
	.ascii "_M_impl\0"
	.byte	0x3
	.word	0x122
	.byte	0x14
	.long	0x28d1
	.byte	0
	.uleb128 0x62
	.ascii "_M_allocate\0"
	.byte	0x3
	.word	0x125
	.byte	0x7
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE11_M_allocateEy\0"
	.long	0x2b3b
	.long	0x300e
	.long	0x3019
	.uleb128 0x3
	.long	0x86a3
	.uleb128 0x1
	.long	0x10e3
	.byte	0
	.uleb128 0x61
	.ascii "_M_deallocate\0"
	.byte	0x3
	.word	0x12c
	.byte	0x7
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE13_M_deallocateEPS0_y\0"
	.long	0x3081
	.long	0x3091
	.uleb128 0x3
	.long	0x86a3
	.uleb128 0x1
	.long	0x2b3b
	.uleb128 0x1
	.long	0x10e3
	.byte	0
	.uleb128 0x1b
	.ascii "_M_create_storage\0"
	.byte	0x3
	.word	0x135
	.byte	0x7
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE17_M_create_storageEy\0"
	.byte	0x3
	.long	0x30fe
	.long	0x3109
	.uleb128 0x3
	.long	0x86a3
	.uleb128 0x1
	.long	0x10e3
	.byte	0
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x85dd
	.uleb128 0x8
	.secrel32	.LASF25
	.long	0x2478
	.byte	0
	.uleb128 0x5
	.long	0x2874
	.uleb128 0x7d
	.ascii "vector<WrappingValueTypeInstance, std::allocator<WrappingValueTypeInstance> >\0"
	.byte	0x18
	.byte	0x3
	.word	0x153
	.byte	0xb
	.long	0x4fa1
	.uleb128 0x17
	.byte	0x3
	.word	0x153
	.byte	0xb
	.long	0x2faa
	.uleb128 0x17
	.byte	0x3
	.word	0x153
	.byte	0xb
	.long	0x3019
	.uleb128 0x17
	.byte	0x3
	.word	0x153
	.byte	0xb
	.long	0x2f98
	.uleb128 0x17
	.byte	0x3
	.word	0x153
	.byte	0xb
	.long	0x2bcc
	.uleb128 0x17
	.byte	0x3
	.word	0x153
	.byte	0xb
	.long	0x2b63
	.uleb128 0x17
	.byte	0x3
	.word	0x153
	.byte	0xb
	.long	0x2c47
	.uleb128 0x5f
	.long	0x2874
	.byte	0
	.byte	0x2
	.uleb128 0x21
	.secrel32	.LASF29
	.byte	0x3
	.word	0x187
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC4Ev\0"
	.byte	0x1
	.long	0x31fd
	.long	0x3203
	.uleb128 0x3
	.long	0x86c0
	.byte	0
	.uleb128 0x63
	.secrel32	.LASF29
	.byte	0x3
	.word	0x192
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC4ERKS1_\0"
	.byte	0x1
	.long	0x324e
	.long	0x3259
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x86cb
	.byte	0
	.uleb128 0x2a
	.secrel32	.LASF21
	.byte	0x3
	.word	0x178
	.byte	0x1a
	.long	0x2478
	.byte	0x1
	.uleb128 0x5
	.long	0x3259
	.uleb128 0x63
	.secrel32	.LASF29
	.byte	0x3
	.word	0x19f
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC4EyRKS1_\0"
	.byte	0x1
	.long	0x32b8
	.long	0x32c8
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x32c8
	.uleb128 0x1
	.long	0x86cb
	.byte	0
	.uleb128 0x2a
	.secrel32	.LASF22
	.byte	0x3
	.word	0x176
	.byte	0x1a
	.long	0x10e3
	.byte	0x1
	.uleb128 0x21
	.secrel32	.LASF29
	.byte	0x3
	.word	0x1ab
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC4EyRKS0_RKS1_\0"
	.byte	0x1
	.long	0x3327
	.long	0x333c
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x32c8
	.uleb128 0x1
	.long	0x86d1
	.uleb128 0x1
	.long	0x86cb
	.byte	0
	.uleb128 0x2a
	.secrel32	.LASF3
	.byte	0x3
	.word	0x16c
	.byte	0x17
	.long	0x85dd
	.byte	0x1
	.uleb128 0x5
	.long	0x333c
	.uleb128 0x21
	.secrel32	.LASF29
	.byte	0x3
	.word	0x1ca
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC4ERKS2_\0"
	.byte	0x1
	.long	0x339a
	.long	0x33a5
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x86d7
	.byte	0
	.uleb128 0x21
	.secrel32	.LASF29
	.byte	0x3
	.word	0x1dc
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC4EOS2_\0"
	.byte	0x1
	.long	0x33ef
	.long	0x33fa
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x86dd
	.byte	0
	.uleb128 0x21
	.secrel32	.LASF29
	.byte	0x3
	.word	0x1e0
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC4ERKS2_RKS1_\0"
	.byte	0x1
	.long	0x344a
	.long	0x345a
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x86d7
	.uleb128 0x1
	.long	0x86cb
	.byte	0
	.uleb128 0x21
	.secrel32	.LASF29
	.byte	0x3
	.word	0x1ea
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC4EOS2_RKS1_\0"
	.byte	0x1
	.long	0x34a9
	.long	0x34b9
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x86dd
	.uleb128 0x1
	.long	0x86cb
	.byte	0
	.uleb128 0x21
	.secrel32	.LASF29
	.byte	0x3
	.word	0x203
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC4ESt16initializer_listIS0_ERKS1_\0"
	.byte	0x1
	.long	0x351d
	.long	0x352d
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x4fa6
	.uleb128 0x1
	.long	0x86cb
	.byte	0
	.uleb128 0x1b
	.ascii "~vector\0"
	.byte	0x3
	.word	0x235
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EED4Ev\0"
	.byte	0x1
	.long	0x3578
	.long	0x3583
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x3
	.long	0x66a7
	.byte	0
	.uleb128 0x27
	.secrel32	.LASF2
	.byte	0x1f
	.byte	0xba
	.byte	0x5
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEaSERKS2_\0"
	.long	0x86e3
	.byte	0x1
	.long	0x35d1
	.long	0x35dc
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x86d7
	.byte	0
	.uleb128 0x2b
	.secrel32	.LASF2
	.byte	0x3
	.word	0x254
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEaSEOS2_\0"
	.long	0x86e3
	.byte	0x1
	.long	0x362a
	.long	0x3635
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x86dd
	.byte	0
	.uleb128 0x2b
	.secrel32	.LASF2
	.byte	0x3
	.word	0x269
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEaSESt16initializer_listIS0_E\0"
	.long	0x86e3
	.byte	0x1
	.long	0x3698
	.long	0x36a3
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x4fa6
	.byte	0
	.uleb128 0x21
	.secrel32	.LASF8
	.byte	0x3
	.word	0x27c
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE6assignEyRKS0_\0"
	.byte	0x1
	.long	0x36f4
	.long	0x3704
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x32c8
	.uleb128 0x1
	.long	0x86d1
	.byte	0
	.uleb128 0x21
	.secrel32	.LASF8
	.byte	0x3
	.word	0x2a9
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE6assignESt16initializer_listIS0_E\0"
	.byte	0x1
	.long	0x3768
	.long	0x3773
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x4fa6
	.byte	0
	.uleb128 0x2a
	.secrel32	.LASF30
	.byte	0x3
	.word	0x171
	.byte	0x3d
	.long	0x648c
	.byte	0x1
	.uleb128 0xd
	.ascii "begin\0"
	.byte	0x3
	.word	0x2ba
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE5beginEv\0"
	.long	0x3773
	.byte	0x1
	.long	0x37d2
	.long	0x37d8
	.uleb128 0x3
	.long	0x86c0
	.byte	0
	.uleb128 0x2a
	.secrel32	.LASF31
	.byte	0x3
	.word	0x173
	.byte	0x7
	.long	0x6510
	.byte	0x1
	.uleb128 0xd
	.ascii "begin\0"
	.byte	0x3
	.word	0x2c3
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE5beginEv\0"
	.long	0x37d8
	.byte	0x1
	.long	0x3838
	.long	0x383e
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0xd
	.ascii "end\0"
	.byte	0x3
	.word	0x2cc
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE3endEv\0"
	.long	0x3773
	.byte	0x1
	.long	0x388b
	.long	0x3891
	.uleb128 0x3
	.long	0x86c0
	.byte	0
	.uleb128 0xd
	.ascii "end\0"
	.byte	0x3
	.word	0x2d5
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE3endEv\0"
	.long	0x37d8
	.byte	0x1
	.long	0x38df
	.long	0x38e5
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0x64
	.ascii "reverse_iterator\0"
	.byte	0x3
	.word	0x175
	.byte	0x30
	.long	0x51eb
	.byte	0x1
	.uleb128 0xd
	.ascii "rbegin\0"
	.byte	0x3
	.word	0x2de
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE6rbeginEv\0"
	.long	0x38e5
	.byte	0x1
	.long	0x3953
	.long	0x3959
	.uleb128 0x3
	.long	0x86c0
	.byte	0
	.uleb128 0x64
	.ascii "const_reverse_iterator\0"
	.byte	0x3
	.word	0x174
	.byte	0x35
	.long	0x528d
	.byte	0x1
	.uleb128 0xd
	.ascii "rbegin\0"
	.byte	0x3
	.word	0x2e7
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE6rbeginEv\0"
	.long	0x3959
	.byte	0x1
	.long	0x39ce
	.long	0x39d4
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0xd
	.ascii "rend\0"
	.byte	0x3
	.word	0x2f0
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4rendEv\0"
	.long	0x38e5
	.byte	0x1
	.long	0x3a23
	.long	0x3a29
	.uleb128 0x3
	.long	0x86c0
	.byte	0
	.uleb128 0xd
	.ascii "rend\0"
	.byte	0x3
	.word	0x2f9
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4rendEv\0"
	.long	0x3959
	.byte	0x1
	.long	0x3a79
	.long	0x3a7f
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0xd
	.ascii "cbegin\0"
	.byte	0x3
	.word	0x303
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE6cbeginEv\0"
	.long	0x37d8
	.byte	0x1
	.long	0x3ad3
	.long	0x3ad9
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0xd
	.ascii "cend\0"
	.byte	0x3
	.word	0x30c
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4cendEv\0"
	.long	0x37d8
	.byte	0x1
	.long	0x3b29
	.long	0x3b2f
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0xd
	.ascii "crbegin\0"
	.byte	0x3
	.word	0x315
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE7crbeginEv\0"
	.long	0x3959
	.byte	0x1
	.long	0x3b85
	.long	0x3b8b
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0xd
	.ascii "crend\0"
	.byte	0x3
	.word	0x31e
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE5crendEv\0"
	.long	0x3959
	.byte	0x1
	.long	0x3bdd
	.long	0x3be3
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0xd
	.ascii "size\0"
	.byte	0x3
	.word	0x325
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4sizeEv\0"
	.long	0x32c8
	.byte	0x1
	.long	0x3c33
	.long	0x3c39
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0x2b
	.secrel32	.LASF24
	.byte	0x3
	.word	0x32a
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE8max_sizeEv\0"
	.long	0x32c8
	.byte	0x1
	.long	0x3c8c
	.long	0x3c92
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0x1b
	.ascii "resize\0"
	.byte	0x3
	.word	0x338
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE6resizeEy\0"
	.byte	0x1
	.long	0x3ce1
	.long	0x3cec
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x32c8
	.byte	0
	.uleb128 0x1b
	.ascii "resize\0"
	.byte	0x3
	.word	0x34c
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE6resizeEyRKS0_\0"
	.byte	0x1
	.long	0x3d40
	.long	0x3d50
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x32c8
	.uleb128 0x1
	.long	0x86d1
	.byte	0
	.uleb128 0x1b
	.ascii "shrink_to_fit\0"
	.byte	0x3
	.word	0x36c
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE13shrink_to_fitEv\0"
	.byte	0x1
	.long	0x3dae
	.long	0x3db4
	.uleb128 0x3
	.long	0x86c0
	.byte	0
	.uleb128 0xd
	.ascii "capacity\0"
	.byte	0x3
	.word	0x375
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE8capacityEv\0"
	.long	0x32c8
	.byte	0x1
	.long	0x3e0c
	.long	0x3e12
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0xd
	.ascii "empty\0"
	.byte	0x3
	.word	0x37e
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE5emptyEv\0"
	.long	0x7672
	.byte	0x1
	.long	0x3e64
	.long	0x3e6a
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0x38
	.ascii "reserve\0"
	.byte	0x1f
	.byte	0x42
	.byte	0x5
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE7reserveEy\0"
	.byte	0x1
	.long	0x3eba
	.long	0x3ec5
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x32c8
	.byte	0
	.uleb128 0x2a
	.secrel32	.LASF32
	.byte	0x3
	.word	0x16f
	.byte	0x32
	.long	0x6427
	.byte	0x1
	.uleb128 0x2b
	.secrel32	.LASF33
	.byte	0x3
	.word	0x3a2
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy\0"
	.long	0x3ec5
	.byte	0x1
	.long	0x3f1e
	.long	0x3f29
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x32c8
	.byte	0
	.uleb128 0x2a
	.secrel32	.LASF34
	.byte	0x3
	.word	0x170
	.byte	0x37
	.long	0x6433
	.byte	0x1
	.uleb128 0x2b
	.secrel32	.LASF33
	.byte	0x3
	.word	0x3b4
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EEixEy\0"
	.long	0x3f29
	.byte	0x1
	.long	0x3f83
	.long	0x3f8e
	.uleb128 0x3
	.long	0x86e9
	.uleb128 0x1
	.long	0x32c8
	.byte	0
	.uleb128 0x1b
	.ascii "_M_range_check\0"
	.byte	0x3
	.word	0x3bd
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE14_M_range_checkEy\0"
	.byte	0x2
	.long	0x3fef
	.long	0x3ffa
	.uleb128 0x3
	.long	0x86e9
	.uleb128 0x1
	.long	0x32c8
	.byte	0
	.uleb128 0xd
	.ascii "at\0"
	.byte	0x3
	.word	0x3d3
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE2atEy\0"
	.long	0x3ec5
	.byte	0x1
	.long	0x4045
	.long	0x4050
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x32c8
	.byte	0
	.uleb128 0xd
	.ascii "at\0"
	.byte	0x3
	.word	0x3e5
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE2atEy\0"
	.long	0x3f29
	.byte	0x1
	.long	0x409c
	.long	0x40a7
	.uleb128 0x3
	.long	0x86e9
	.uleb128 0x1
	.long	0x32c8
	.byte	0
	.uleb128 0xd
	.ascii "front\0"
	.byte	0x3
	.word	0x3f0
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE5frontEv\0"
	.long	0x3ec5
	.byte	0x1
	.long	0x40f8
	.long	0x40fe
	.uleb128 0x3
	.long	0x86c0
	.byte	0
	.uleb128 0xd
	.ascii "front\0"
	.byte	0x3
	.word	0x3fb
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE5frontEv\0"
	.long	0x3f29
	.byte	0x1
	.long	0x4150
	.long	0x4156
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0xd
	.ascii "back\0"
	.byte	0x3
	.word	0x406
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4backEv\0"
	.long	0x3ec5
	.byte	0x1
	.long	0x41a5
	.long	0x41ab
	.uleb128 0x3
	.long	0x86c0
	.byte	0
	.uleb128 0xd
	.ascii "back\0"
	.byte	0x3
	.word	0x411
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4backEv\0"
	.long	0x3f29
	.byte	0x1
	.long	0x41fb
	.long	0x4201
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0xd
	.ascii "data\0"
	.byte	0x3
	.word	0x41f
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4dataEv\0"
	.long	0x862e
	.byte	0x1
	.long	0x4250
	.long	0x4256
	.uleb128 0x3
	.long	0x86c0
	.byte	0
	.uleb128 0xd
	.ascii "data\0"
	.byte	0x3
	.word	0x423
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4dataEv\0"
	.long	0x8645
	.byte	0x1
	.long	0x42a6
	.long	0x42ac
	.uleb128 0x3
	.long	0x86e9
	.byte	0
	.uleb128 0x21
	.secrel32	.LASF35
	.byte	0x3
	.word	0x432
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE9push_backERKS0_\0"
	.byte	0x1
	.long	0x42ff
	.long	0x430a
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x86d1
	.byte	0
	.uleb128 0x21
	.secrel32	.LASF35
	.byte	0x3
	.word	0x442
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE9push_backEOS0_\0"
	.byte	0x1
	.long	0x435c
	.long	0x4367
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x86f4
	.byte	0
	.uleb128 0x1b
	.ascii "pop_back\0"
	.byte	0x3
	.word	0x458
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE8pop_backEv\0"
	.byte	0x1
	.long	0x43ba
	.long	0x43c0
	.uleb128 0x3
	.long	0x86c0
	.byte	0
	.uleb128 0x27
	.secrel32	.LASF36
	.byte	0x1f
	.byte	0x76
	.byte	0x5
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_\0"
	.long	0x3773
	.byte	0x1
	.long	0x443b
	.long	0x444b
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x37d8
	.uleb128 0x1
	.long	0x86d1
	.byte	0
	.uleb128 0x2b
	.secrel32	.LASF36
	.byte	0x3
	.word	0x49c
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_\0"
	.long	0x3773
	.byte	0x1
	.long	0x44c7
	.long	0x44d7
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x37d8
	.uleb128 0x1
	.long	0x86f4
	.byte	0
	.uleb128 0x2b
	.secrel32	.LASF36
	.byte	0x3
	.word	0x4ad
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EESt16initializer_listIS0_E\0"
	.long	0x3773
	.byte	0x1
	.long	0x4568
	.long	0x4578
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x37d8
	.uleb128 0x1
	.long	0x4fa6
	.byte	0
	.uleb128 0x2b
	.secrel32	.LASF36
	.byte	0x3
	.word	0x4c6
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEyRS5_\0"
	.long	0x3773
	.byte	0x1
	.long	0x45f5
	.long	0x460a
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x37d8
	.uleb128 0x1
	.long	0x32c8
	.uleb128 0x1
	.long	0x86d1
	.byte	0
	.uleb128 0xd
	.ascii "erase\0"
	.byte	0x3
	.word	0x525
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE\0"
	.long	0x3773
	.byte	0x1
	.long	0x4683
	.long	0x468e
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x37d8
	.byte	0
	.uleb128 0xd
	.ascii "erase\0"
	.byte	0x3
	.word	0x540
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_\0"
	.long	0x3773
	.byte	0x1
	.long	0x470a
	.long	0x471a
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x37d8
	.uleb128 0x1
	.long	0x37d8
	.byte	0
	.uleb128 0x1b
	.ascii "swap\0"
	.byte	0x3
	.word	0x557
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE4swapERS2_\0"
	.byte	0x1
	.long	0x4768
	.long	0x4773
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x86e3
	.byte	0
	.uleb128 0x1b
	.ascii "clear\0"
	.byte	0x3
	.word	0x569
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE5clearEv\0"
	.byte	0x1
	.long	0x47c0
	.long	0x47c6
	.uleb128 0x3
	.long	0x86c0
	.byte	0
	.uleb128 0x1b
	.ascii "_M_fill_initialize\0"
	.byte	0x3
	.word	0x5c0
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE18_M_fill_initializeEyRKS0_\0"
	.byte	0x2
	.long	0x4833
	.long	0x4843
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x32c8
	.uleb128 0x1
	.long	0x86d1
	.byte	0
	.uleb128 0x1b
	.ascii "_M_default_initialize\0"
	.byte	0x3
	.word	0x5ca
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE21_M_default_initializeEy\0"
	.byte	0x2
	.long	0x48b1
	.long	0x48bc
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x32c8
	.byte	0
	.uleb128 0x38
	.ascii "_M_fill_assign\0"
	.byte	0x1f
	.byte	0xf5
	.byte	0x5
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE14_M_fill_assignEyRKS0_\0"
	.byte	0x2
	.long	0x4920
	.long	0x4930
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x10e3
	.uleb128 0x1
	.long	0x86d1
	.byte	0
	.uleb128 0x1b
	.ascii "_M_fill_insert\0"
	.byte	0x1f
	.word	0x1de
	.byte	0x5
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEyRKS0_\0"
	.byte	0x2
	.long	0x49bd
	.long	0x49d2
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x3773
	.uleb128 0x1
	.long	0x32c8
	.uleb128 0x1
	.long	0x86d1
	.byte	0
	.uleb128 0x1b
	.ascii "_M_default_append\0"
	.byte	0x1f
	.word	0x244
	.byte	0x5
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE17_M_default_appendEy\0"
	.byte	0x2
	.long	0x4a38
	.long	0x4a43
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x32c8
	.byte	0
	.uleb128 0xd
	.ascii "_M_shrink_to_fit\0"
	.byte	0x1f
	.word	0x27f
	.byte	0x5
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE16_M_shrink_to_fitEv\0"
	.long	0x7672
	.byte	0x2
	.long	0x4aab
	.long	0x4ab1
	.uleb128 0x3
	.long	0x86c0
	.byte	0
	.uleb128 0xd
	.ascii "_M_insert_rval\0"
	.byte	0x1f
	.word	0x147
	.byte	0x5
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_\0"
	.long	0x3773
	.byte	0x2
	.long	0x4b41
	.long	0x4b51
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x37d8
	.uleb128 0x1
	.long	0x86f4
	.byte	0
	.uleb128 0xd
	.ascii "_M_emplace_aux\0"
	.byte	0x3
	.word	0x65d
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_\0"
	.long	0x3773
	.byte	0x2
	.long	0x4be1
	.long	0x4bf1
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x37d8
	.uleb128 0x1
	.long	0x86f4
	.byte	0
	.uleb128 0xd
	.ascii "_M_check_len\0"
	.byte	0x3
	.word	0x663
	.byte	0x7
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE12_M_check_lenEyPKc\0"
	.long	0x32c8
	.byte	0x2
	.long	0x4c55
	.long	0x4c65
	.uleb128 0x3
	.long	0x86e9
	.uleb128 0x1
	.long	0x32c8
	.uleb128 0x1
	.long	0x6f4a
	.byte	0
	.uleb128 0x1b
	.ascii "_M_erase_at_end\0"
	.byte	0x3
	.word	0x671
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE15_M_erase_at_endEPS0_\0"
	.byte	0x2
	.long	0x4cca
	.long	0x4cd5
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x4cd5
	.byte	0
	.uleb128 0x2a
	.secrel32	.LASF19
	.byte	0x3
	.word	0x16d
	.byte	0x29
	.long	0x2b3b
	.byte	0x1
	.uleb128 0x27
	.secrel32	.LASF37
	.byte	0x1f
	.byte	0x9f
	.byte	0x5
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE\0"
	.long	0x3773
	.byte	0x2
	.long	0x4d5b
	.long	0x4d66
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x3773
	.byte	0
	.uleb128 0x27
	.secrel32	.LASF37
	.byte	0x1f
	.byte	0xac
	.byte	0x5
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EES6_\0"
	.long	0x3773
	.byte	0x2
	.long	0x4de1
	.long	0x4df1
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x3773
	.uleb128 0x1
	.long	0x3773
	.byte	0
	.uleb128 0x32
	.secrel32	.LASF38
	.byte	0x3
	.word	0x688
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE\0"
	.long	0x4e64
	.long	0x4e74
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x86dd
	.uleb128 0x1
	.long	0x15ba
	.byte	0
	.uleb128 0x32
	.secrel32	.LASF38
	.byte	0x3
	.word	0x693
	.byte	0x7
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb0EE\0"
	.long	0x4ee7
	.long	0x4ef7
	.uleb128 0x3
	.long	0x86c0
	.uleb128 0x1
	.long	0x86dd
	.uleb128 0x1
	.long	0xa87
	.byte	0
	.uleb128 0x62
	.ascii "_M_data_ptr<WrappingValueTypeInstance>\0"
	.byte	0x3
	.word	0x6a4
	.byte	0x2
	.ascii "_ZNKSt6vectorI25WrappingValueTypeInstanceSaIS0_EE11_M_data_ptrIS0_EEPT_S5_\0"
	.long	0x862e
	.long	0x4f83
	.long	0x4f8e
	.uleb128 0x12
	.ascii "_Up\0"
	.long	0x85dd
	.uleb128 0x3
	.long	0x86e9
	.uleb128 0x1
	.long	0x862e
	.byte	0
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x85dd
	.uleb128 0x3c
	.secrel32	.LASF25
	.long	0x2478
	.byte	0
	.uleb128 0x5
	.long	0x3121
	.uleb128 0x51
	.ascii "initializer_list<WrappingValueTypeInstance>\0"
	.byte	0x10
	.byte	0x20
	.byte	0x2f
	.byte	0xb
	.long	0x51e6
	.uleb128 0x2f
	.secrel32	.LASF30
	.byte	0x20
	.byte	0x36
	.byte	0x1a
	.long	0x8645
	.byte	0x1
	.uleb128 0xa
	.ascii "_M_array\0"
	.byte	0x20
	.byte	0x3a
	.byte	0x12
	.long	0x4fdb
	.byte	0
	.uleb128 0x2f
	.secrel32	.LASF22
	.byte	0x20
	.byte	0x35
	.byte	0x18
	.long	0x10e3
	.byte	0x1
	.uleb128 0xa
	.ascii "_M_len\0"
	.byte	0x20
	.byte	0x3b
	.byte	0x13
	.long	0x4ffa
	.byte	0x8
	.uleb128 0x2e
	.secrel32	.LASF39
	.byte	0x20
	.byte	0x3e
	.byte	0x11
	.ascii "_ZNSt16initializer_listI25WrappingValueTypeInstanceEC4EPKS0_y\0"
	.long	0x5065
	.long	0x5075
	.uleb128 0x3
	.long	0x86fa
	.uleb128 0x1
	.long	0x5075
	.uleb128 0x1
	.long	0x4ffa
	.byte	0
	.uleb128 0x2f
	.secrel32	.LASF31
	.byte	0x20
	.byte	0x37
	.byte	0x1a
	.long	0x8645
	.byte	0x1
	.uleb128 0x24
	.secrel32	.LASF39
	.byte	0x20
	.byte	0x42
	.byte	0x11
	.ascii "_ZNSt16initializer_listI25WrappingValueTypeInstanceEC4Ev\0"
	.byte	0x1
	.long	0x50cc
	.long	0x50d2
	.uleb128 0x3
	.long	0x86fa
	.byte	0
	.uleb128 0x3d
	.ascii "size\0"
	.byte	0x20
	.byte	0x47
	.byte	0x7
	.ascii "_ZNKSt16initializer_listI25WrappingValueTypeInstanceE4sizeEv\0"
	.long	0x4ffa
	.byte	0x1
	.long	0x5125
	.long	0x512b
	.uleb128 0x3
	.long	0x8700
	.byte	0
	.uleb128 0x3d
	.ascii "begin\0"
	.byte	0x20
	.byte	0x4b
	.byte	0x7
	.ascii "_ZNKSt16initializer_listI25WrappingValueTypeInstanceE5beginEv\0"
	.long	0x5075
	.byte	0x1
	.long	0x5180
	.long	0x5186
	.uleb128 0x3
	.long	0x8700
	.byte	0
	.uleb128 0x3d
	.ascii "end\0"
	.byte	0x20
	.byte	0x4f
	.byte	0x7
	.ascii "_ZNKSt16initializer_listI25WrappingValueTypeInstanceE3endEv\0"
	.long	0x5075
	.byte	0x1
	.long	0x51d7
	.long	0x51dd
	.uleb128 0x3
	.long	0x8700
	.byte	0
	.uleb128 0x12
	.ascii "_E\0"
	.long	0x85dd
	.byte	0
	.uleb128 0x5
	.long	0x4fa6
	.uleb128 0x39
	.ascii "reverse_iterator<__gnu_cxx::__normal_iterator<WrappingValueTypeInstance*, std::vector<WrappingValueTypeInstance, std::allocator<WrappingValueTypeInstance> > > >\0"
	.uleb128 0x39
	.ascii "reverse_iterator<__gnu_cxx::__normal_iterator<const WrappingValueTypeInstance*, std::vector<WrappingValueTypeInstance, std::allocator<WrappingValueTypeInstance> > > >\0"
	.uleb128 0x13
	.ascii "__fill_n_a<WrappingValueTypeInstance*, long long unsigned int, WrappingValueTypeInstance>\0"
	.byte	0x8
	.word	0x2e2
	.byte	0x5
	.ascii "_ZSt10__fill_n_aIP25WrappingValueTypeInstanceyS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT1_E7__valueET_E6__typeES7_T0_RKS5_\0"
	.long	0x65ce
	.long	0x544b
	.uleb128 0x8
	.secrel32	.LASF40
	.long	0x862e
	.uleb128 0x8
	.secrel32	.LASF16
	.long	0x6614
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x85dd
	.uleb128 0x1
	.long	0x862e
	.uleb128 0x1
	.long	0x6614
	.uleb128 0x1
	.long	0x864b
	.byte	0
	.uleb128 0x13
	.ascii "__niter_base<WrappingValueTypeInstance*>\0"
	.byte	0x8
	.word	0x115
	.byte	0x5
	.ascii "_ZSt12__niter_baseIP25WrappingValueTypeInstanceET_S2_\0"
	.long	0x862e
	.long	0x54c6
	.uleb128 0x8
	.secrel32	.LASF41
	.long	0x862e
	.uleb128 0x1
	.long	0x862e
	.byte	0
	.uleb128 0x13
	.ascii "fill_n<WrappingValueTypeInstance*, long long unsigned int, WrappingValueTypeInstance>\0"
	.byte	0x8
	.word	0x310
	.byte	0x5
	.ascii "_ZSt6fill_nIP25WrappingValueTypeInstanceyS0_ET_S2_T0_RKT1_\0"
	.long	0x862e
	.long	0x558f
	.uleb128 0x12
	.ascii "_OI\0"
	.long	0x862e
	.uleb128 0x8
	.secrel32	.LASF16
	.long	0x6614
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x85dd
	.uleb128 0x1
	.long	0x862e
	.uleb128 0x1
	.long	0x6614
	.uleb128 0x1
	.long	0x864b
	.byte	0
	.uleb128 0x13
	.ascii "__uninitialized_default_n<WrappingValueTypeInstance*, long long unsigned int>\0"
	.byte	0x6
	.word	0x23e
	.byte	0x5
	.ascii "_ZSt25__uninitialized_default_nIP25WrappingValueTypeInstanceyET_S2_T0_\0"
	.long	0x862e
	.long	0x564e
	.uleb128 0x8
	.secrel32	.LASF15
	.long	0x862e
	.uleb128 0x8
	.secrel32	.LASF16
	.long	0x6614
	.uleb128 0x1
	.long	0x862e
	.uleb128 0x1
	.long	0x6614
	.byte	0
	.uleb128 0x65
	.ascii "_Destroy<WrappingValueTypeInstance*>\0"
	.byte	0x5
	.byte	0x7f
	.byte	0x5
	.ascii "_ZSt8_DestroyIP25WrappingValueTypeInstanceEvT_S2_\0"
	.long	0x56c1
	.uleb128 0x8
	.secrel32	.LASF15
	.long	0x862e
	.uleb128 0x1
	.long	0x862e
	.uleb128 0x1
	.long	0x862e
	.byte	0
	.uleb128 0x13
	.ascii "__uninitialized_default_n_a<WrappingValueTypeInstance*, long long unsigned int, WrappingValueTypeInstance>\0"
	.byte	0x6
	.word	0x283
	.byte	0x5
	.ascii "_ZSt27__uninitialized_default_n_aIP25WrappingValueTypeInstanceyS0_ET_S2_T0_RSaIT1_E\0"
	.long	0x862e
	.long	0x57b8
	.uleb128 0x8
	.secrel32	.LASF15
	.long	0x862e
	.uleb128 0x8
	.secrel32	.LASF16
	.long	0x6614
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x85dd
	.uleb128 0x1
	.long	0x862e
	.uleb128 0x1
	.long	0x6614
	.uleb128 0x1
	.long	0x866e
	.byte	0
	.uleb128 0x5e
	.ascii "_Destroy<WrappingValueTypeInstance*, WrappingValueTypeInstance>\0"
	.byte	0x5
	.byte	0xcb
	.byte	0x5
	.ascii "_ZSt8_DestroyIP25WrappingValueTypeInstanceS0_EvT_S2_RSaIT0_E\0"
	.uleb128 0x8
	.secrel32	.LASF15
	.long	0x862e
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x85dd
	.uleb128 0x1
	.long	0x862e
	.uleb128 0x1
	.long	0x862e
	.uleb128 0x1
	.long	0x866e
	.byte	0
	.byte	0
	.uleb128 0x7e
	.ascii "__gnu_cxx\0"
	.byte	0xe
	.word	0x106
	.byte	0xb
	.long	0x65df
	.uleb128 0x49
	.ascii "__cxx11\0"
	.byte	0xe
	.word	0x108
	.byte	0x41
	.uleb128 0x42
	.byte	0xe
	.word	0x108
	.byte	0x41
	.long	0x586f
	.uleb128 0x2
	.byte	0xa
	.byte	0xf8
	.byte	0xb
	.long	0x75bd
	.uleb128 0x17
	.byte	0xa
	.word	0x101
	.byte	0xb
	.long	0x75ec
	.uleb128 0x17
	.byte	0xa
	.word	0x102
	.byte	0xb
	.long	0x7611
	.uleb128 0x5a
	.ascii "__ops\0"
	.byte	0x21
	.byte	0x23
	.byte	0xb
	.uleb128 0x2
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.long	0x10e3
	.uleb128 0x2
	.byte	0x4
	.byte	0x2d
	.byte	0xe
	.long	0x15a8
	.uleb128 0x11
	.ascii "__numeric_traits_integer<int>\0"
	.byte	0x1
	.byte	0x22
	.byte	0x37
	.byte	0xc
	.long	0x591a
	.uleb128 0xb
	.secrel32	.LASF42
	.byte	0x22
	.byte	0x3a
	.byte	0x1b
	.long	0x66ae
	.uleb128 0xb
	.secrel32	.LASF43
	.byte	0x22
	.byte	0x3b
	.byte	0x1b
	.long	0x66ae
	.uleb128 0xb
	.secrel32	.LASF44
	.byte	0x22
	.byte	0x3f
	.byte	0x19
	.long	0x767a
	.uleb128 0xb
	.secrel32	.LASF45
	.byte	0x22
	.byte	0x40
	.byte	0x18
	.long	0x66ae
	.uleb128 0x8
	.secrel32	.LASF46
	.long	0x66a7
	.byte	0
	.uleb128 0x2
	.byte	0x15
	.byte	0xc8
	.byte	0xb
	.long	0x7d08
	.uleb128 0x2
	.byte	0x15
	.byte	0xd8
	.byte	0xb
	.long	0x7f9f
	.uleb128 0x2
	.byte	0x15
	.byte	0xe3
	.byte	0xb
	.long	0x7fbd
	.uleb128 0x2
	.byte	0x15
	.byte	0xe4
	.byte	0xb
	.long	0x7fd6
	.uleb128 0x2
	.byte	0x15
	.byte	0xe5
	.byte	0xb
	.long	0x7ffb
	.uleb128 0x2
	.byte	0x15
	.byte	0xe7
	.byte	0xb
	.long	0x8021
	.uleb128 0x2
	.byte	0x15
	.byte	0xe8
	.byte	0xb
	.long	0x8040
	.uleb128 0x66
	.ascii "div\0"
	.byte	0x15
	.byte	0xd5
	.byte	0x3
	.ascii "_ZN9__gnu_cxx3divExx\0"
	.long	0x7d08
	.long	0x5982
	.uleb128 0x1
	.long	0x6633
	.uleb128 0x1
	.long	0x6633
	.byte	0
	.uleb128 0x2
	.byte	0x16
	.byte	0xaf
	.byte	0xb
	.long	0x844d
	.uleb128 0x2
	.byte	0x16
	.byte	0xb0
	.byte	0xb
	.long	0x8474
	.uleb128 0x2
	.byte	0x16
	.byte	0xb1
	.byte	0xb
	.long	0x8499
	.uleb128 0x2
	.byte	0x16
	.byte	0xb2
	.byte	0xb
	.long	0x84b8
	.uleb128 0x2
	.byte	0x16
	.byte	0xb3
	.byte	0xb
	.long	0x84e4
	.uleb128 0x11
	.ascii "__numeric_traits_floating<float>\0"
	.byte	0x1
	.byte	0x22
	.byte	0x64
	.byte	0xc
	.long	0x5a0e
	.uleb128 0xb
	.secrel32	.LASF47
	.byte	0x22
	.byte	0x67
	.byte	0x18
	.long	0x66ae
	.uleb128 0xb
	.secrel32	.LASF44
	.byte	0x22
	.byte	0x6a
	.byte	0x19
	.long	0x767a
	.uleb128 0xb
	.secrel32	.LASF48
	.byte	0x22
	.byte	0x6b
	.byte	0x18
	.long	0x66ae
	.uleb128 0xb
	.secrel32	.LASF49
	.byte	0x22
	.byte	0x6c
	.byte	0x18
	.long	0x66ae
	.uleb128 0x8
	.secrel32	.LASF46
	.long	0x739f
	.byte	0
	.uleb128 0x11
	.ascii "__numeric_traits_floating<double>\0"
	.byte	0x1
	.byte	0x22
	.byte	0x64
	.byte	0xc
	.long	0x5a73
	.uleb128 0xb
	.secrel32	.LASF47
	.byte	0x22
	.byte	0x67
	.byte	0x18
	.long	0x66ae
	.uleb128 0xb
	.secrel32	.LASF44
	.byte	0x22
	.byte	0x6a
	.byte	0x19
	.long	0x767a
	.uleb128 0xb
	.secrel32	.LASF48
	.byte	0x22
	.byte	0x6b
	.byte	0x18
	.long	0x66ae
	.uleb128 0xb
	.secrel32	.LASF49
	.byte	0x22
	.byte	0x6c
	.byte	0x18
	.long	0x66ae
	.uleb128 0x8
	.secrel32	.LASF46
	.long	0x7370
	.byte	0
	.uleb128 0x11
	.ascii "__numeric_traits_floating<long double>\0"
	.byte	0x1
	.byte	0x22
	.byte	0x64
	.byte	0xc
	.long	0x5add
	.uleb128 0xb
	.secrel32	.LASF47
	.byte	0x22
	.byte	0x67
	.byte	0x18
	.long	0x66ae
	.uleb128 0xb
	.secrel32	.LASF44
	.byte	0x22
	.byte	0x6a
	.byte	0x19
	.long	0x767a
	.uleb128 0xb
	.secrel32	.LASF48
	.byte	0x22
	.byte	0x6b
	.byte	0x18
	.long	0x66ae
	.uleb128 0xb
	.secrel32	.LASF49
	.byte	0x22
	.byte	0x6c
	.byte	0x18
	.long	0x66ae
	.uleb128 0x8
	.secrel32	.LASF46
	.long	0x75dd
	.byte	0
	.uleb128 0x11
	.ascii "__numeric_traits_integer<long unsigned int>\0"
	.byte	0x1
	.byte	0x22
	.byte	0x37
	.byte	0xc
	.long	0x5b4c
	.uleb128 0xb
	.secrel32	.LASF42
	.byte	0x22
	.byte	0x3a
	.byte	0x1b
	.long	0x6a1b
	.uleb128 0xb
	.secrel32	.LASF43
	.byte	0x22
	.byte	0x3b
	.byte	0x1b
	.long	0x6a1b
	.uleb128 0xb
	.secrel32	.LASF44
	.byte	0x22
	.byte	0x3f
	.byte	0x19
	.long	0x767a
	.uleb128 0xb
	.secrel32	.LASF45
	.byte	0x22
	.byte	0x40
	.byte	0x18
	.long	0x66ae
	.uleb128 0x8
	.secrel32	.LASF46
	.long	0x6a06
	.byte	0
	.uleb128 0x11
	.ascii "__numeric_traits_integer<char>\0"
	.byte	0x1
	.byte	0x22
	.byte	0x37
	.byte	0xc
	.long	0x5bae
	.uleb128 0xb
	.secrel32	.LASF42
	.byte	0x22
	.byte	0x3a
	.byte	0x1b
	.long	0x6600
	.uleb128 0xb
	.secrel32	.LASF43
	.byte	0x22
	.byte	0x3b
	.byte	0x1b
	.long	0x6600
	.uleb128 0xb
	.secrel32	.LASF44
	.byte	0x22
	.byte	0x3f
	.byte	0x19
	.long	0x767a
	.uleb128 0xb
	.secrel32	.LASF45
	.byte	0x22
	.byte	0x40
	.byte	0x18
	.long	0x66ae
	.uleb128 0x8
	.secrel32	.LASF46
	.long	0x65f8
	.byte	0
	.uleb128 0x11
	.ascii "__numeric_traits_integer<short int>\0"
	.byte	0x1
	.byte	0x22
	.byte	0x37
	.byte	0xc
	.long	0x5c15
	.uleb128 0xb
	.secrel32	.LASF42
	.byte	0x22
	.byte	0x3a
	.byte	0x1b
	.long	0x6d29
	.uleb128 0xb
	.secrel32	.LASF43
	.byte	0x22
	.byte	0x3b
	.byte	0x1b
	.long	0x6d29
	.uleb128 0xb
	.secrel32	.LASF44
	.byte	0x22
	.byte	0x3f
	.byte	0x19
	.long	0x767a
	.uleb128 0xb
	.secrel32	.LASF45
	.byte	0x22
	.byte	0x40
	.byte	0x18
	.long	0x66ae
	.uleb128 0x8
	.secrel32	.LASF46
	.long	0x6d1c
	.byte	0
	.uleb128 0x11
	.ascii "__numeric_traits_integer<long long int>\0"
	.byte	0x1
	.byte	0x22
	.byte	0x37
	.byte	0xc
	.long	0x5c80
	.uleb128 0xb
	.secrel32	.LASF42
	.byte	0x22
	.byte	0x3a
	.byte	0x1b
	.long	0x6644
	.uleb128 0xb
	.secrel32	.LASF43
	.byte	0x22
	.byte	0x3b
	.byte	0x1b
	.long	0x6644
	.uleb128 0xb
	.secrel32	.LASF44
	.byte	0x22
	.byte	0x3f
	.byte	0x19
	.long	0x767a
	.uleb128 0xb
	.secrel32	.LASF45
	.byte	0x22
	.byte	0x40
	.byte	0x18
	.long	0x66ae
	.uleb128 0x8
	.secrel32	.LASF46
	.long	0x6633
	.byte	0
	.uleb128 0x51
	.ascii "new_allocator<WrappingValueTypeInstance>\0"
	.byte	0x1
	.byte	0x4
	.byte	0x3a
	.byte	0xb
	.long	0x6033
	.uleb128 0x24
	.secrel32	.LASF50
	.byte	0x4
	.byte	0x4f
	.byte	0x7
	.ascii "_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC4Ev\0"
	.byte	0x1
	.long	0x5d01
	.long	0x5d07
	.uleb128 0x3
	.long	0x861d
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF50
	.byte	0x4
	.byte	0x51
	.byte	0x7
	.ascii "_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC4ERKS2_\0"
	.byte	0x1
	.long	0x5d5a
	.long	0x5d65
	.uleb128 0x3
	.long	0x861d
	.uleb128 0x1
	.long	0x8628
	.byte	0
	.uleb128 0x38
	.ascii "~new_allocator\0"
	.byte	0x4
	.byte	0x56
	.byte	0x7
	.ascii "_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceED4Ev\0"
	.byte	0x1
	.long	0x5dbf
	.long	0x5dca
	.uleb128 0x3
	.long	0x861d
	.uleb128 0x3
	.long	0x66a7
	.byte	0
	.uleb128 0x2f
	.secrel32	.LASF19
	.byte	0x4
	.byte	0x3f
	.byte	0x1a
	.long	0x862e
	.byte	0x1
	.uleb128 0x3d
	.ascii "address\0"
	.byte	0x4
	.byte	0x59
	.byte	0x7
	.ascii "_ZNK9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE7addressERS1_\0"
	.long	0x5dca
	.byte	0x1
	.long	0x5e38
	.long	0x5e43
	.uleb128 0x3
	.long	0x8634
	.uleb128 0x1
	.long	0x5e43
	.byte	0
	.uleb128 0x2f
	.secrel32	.LASF32
	.byte	0x4
	.byte	0x41
	.byte	0x1a
	.long	0x863f
	.byte	0x1
	.uleb128 0x7f
	.ascii "const_pointer\0"
	.byte	0x4
	.byte	0x40
	.byte	0x1a
	.long	0x8645
	.byte	0x1
	.uleb128 0x3d
	.ascii "address\0"
	.byte	0x4
	.byte	0x5d
	.byte	0x7
	.ascii "_ZNK9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE7addressERKS1_\0"
	.long	0x5e50
	.byte	0x1
	.long	0x5ec9
	.long	0x5ed4
	.uleb128 0x3
	.long	0x8634
	.uleb128 0x1
	.long	0x5ed4
	.byte	0
	.uleb128 0x2f
	.secrel32	.LASF34
	.byte	0x4
	.byte	0x42
	.byte	0x1a
	.long	0x864b
	.byte	0x1
	.uleb128 0x27
	.secrel32	.LASF20
	.byte	0x4
	.byte	0x63
	.byte	0x7
	.ascii "_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE8allocateEyPKv\0"
	.long	0x5dca
	.byte	0x1
	.long	0x5f3e
	.long	0x5f4e
	.uleb128 0x3
	.long	0x861d
	.uleb128 0x1
	.long	0x5f4e
	.uleb128 0x1
	.long	0x7adc
	.byte	0
	.uleb128 0x2f
	.secrel32	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0x1a
	.long	0x10e3
	.byte	0x1
	.uleb128 0x24
	.secrel32	.LASF23
	.byte	0x4
	.byte	0x74
	.byte	0x7
	.ascii "_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE10deallocateEPS1_y\0"
	.byte	0x1
	.long	0x5fb8
	.long	0x5fc8
	.uleb128 0x3
	.long	0x861d
	.uleb128 0x1
	.long	0x5dca
	.uleb128 0x1
	.long	0x5f4e
	.byte	0
	.uleb128 0x27
	.secrel32	.LASF24
	.byte	0x4
	.byte	0x81
	.byte	0x7
	.ascii "_ZNK9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceE8max_sizeEv\0"
	.long	0x5f4e
	.byte	0x1
	.long	0x6023
	.long	0x6029
	.uleb128 0x3
	.long	0x8634
	.byte	0
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x85dd
	.byte	0
	.uleb128 0x5
	.long	0x5c80
	.uleb128 0x11
	.ascii "__alloc_traits<std::allocator<WrappingValueTypeInstance>, WrappingValueTypeInstance>\0"
	.byte	0x1
	.byte	0x23
	.byte	0x32
	.byte	0xa
	.long	0x648c
	.uleb128 0x2
	.byte	0x23
	.byte	0x32
	.byte	0xa
	.long	0x2655
	.uleb128 0x2
	.byte	0x23
	.byte	0x32
	.byte	0xa
	.long	0x25d2
	.uleb128 0x2
	.byte	0x23
	.byte	0x32
	.byte	0xa
	.long	0x26dd
	.uleb128 0x2
	.byte	0x23
	.byte	0x32
	.byte	0xa
	.long	0x2749
	.uleb128 0x60
	.long	0x257e
	.byte	0
	.uleb128 0x66
	.ascii "_S_select_on_copy\0"
	.byte	0x23
	.byte	0x5e
	.byte	0x13
	.ascii "_ZN9__gnu_cxx14__alloc_traitsISaI25WrappingValueTypeInstanceES1_E17_S_select_on_copyERKS2_\0"
	.long	0x2478
	.long	0x613b
	.uleb128 0x1
	.long	0x865c
	.byte	0
	.uleb128 0x65
	.ascii "_S_on_swap\0"
	.byte	0x23
	.byte	0x61
	.byte	0x11
	.ascii "_ZN9__gnu_cxx14__alloc_traitsISaI25WrappingValueTypeInstanceES1_E10_S_on_swapERS2_S4_\0"
	.long	0x61af
	.uleb128 0x1
	.long	0x866e
	.uleb128 0x1
	.long	0x866e
	.byte	0
	.uleb128 0x3e
	.ascii "_S_propagate_on_copy_assign\0"
	.byte	0x23
	.byte	0x64
	.byte	0x1b
	.ascii "_ZN9__gnu_cxx14__alloc_traitsISaI25WrappingValueTypeInstanceES1_E27_S_propagate_on_copy_assignEv\0"
	.long	0x7672
	.uleb128 0x3e
	.ascii "_S_propagate_on_move_assign\0"
	.byte	0x23
	.byte	0x67
	.byte	0x1b
	.ascii "_ZN9__gnu_cxx14__alloc_traitsISaI25WrappingValueTypeInstanceES1_E27_S_propagate_on_move_assignEv\0"
	.long	0x7672
	.uleb128 0x3e
	.ascii "_S_propagate_on_swap\0"
	.byte	0x23
	.byte	0x6a
	.byte	0x1b
	.ascii "_ZN9__gnu_cxx14__alloc_traitsISaI25WrappingValueTypeInstanceES1_E20_S_propagate_on_swapEv\0"
	.long	0x7672
	.uleb128 0x3e
	.ascii "_S_always_equal\0"
	.byte	0x23
	.byte	0x6d
	.byte	0x1b
	.ascii "_ZN9__gnu_cxx14__alloc_traitsISaI25WrappingValueTypeInstanceES1_E15_S_always_equalEv\0"
	.long	0x7672
	.uleb128 0x3e
	.ascii "_S_nothrow_move\0"
	.byte	0x23
	.byte	0x70
	.byte	0x1b
	.ascii "_ZN9__gnu_cxx14__alloc_traitsISaI25WrappingValueTypeInstanceES1_E15_S_nothrow_moveEv\0"
	.long	0x7672
	.uleb128 0x26
	.secrel32	.LASF3
	.byte	0x23
	.byte	0x3a
	.byte	0x35
	.long	0x2847
	.uleb128 0x5
	.long	0x640a
	.uleb128 0x26
	.secrel32	.LASF19
	.byte	0x23
	.byte	0x3b
	.byte	0x35
	.long	0x25c5
	.uleb128 0x26
	.secrel32	.LASF32
	.byte	0x23
	.byte	0x40
	.byte	0x35
	.long	0x8674
	.uleb128 0x26
	.secrel32	.LASF34
	.byte	0x23
	.byte	0x41
	.byte	0x35
	.long	0x867a
	.uleb128 0x11
	.ascii "rebind<WrappingValueTypeInstance>\0"
	.byte	0x1
	.byte	0x23
	.byte	0x74
	.byte	0xe
	.long	0x6482
	.uleb128 0x7
	.ascii "other\0"
	.byte	0x23
	.byte	0x75
	.byte	0x41
	.long	0x2854
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x85dd
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF25
	.long	0x2478
	.byte	0
	.uleb128 0x39
	.ascii "__normal_iterator<WrappingValueTypeInstance*, std::vector<WrappingValueTypeInstance, std::allocator<WrappingValueTypeInstance> > >\0"
	.uleb128 0x39
	.ascii "__normal_iterator<const WrappingValueTypeInstance*, std::vector<WrappingValueTypeInstance, std::allocator<WrappingValueTypeInstance> > >\0"
	.uleb128 0x80
	.ascii "__enable_if<true, WrappingValueTypeInstance*>\0"
	.byte	0x1
	.byte	0x24
	.byte	0x31
	.byte	0xc
	.uleb128 0x7
	.ascii "__type\0"
	.byte	0x24
	.byte	0x32
	.byte	0x13
	.long	0x862e
	.byte	0
	.byte	0
	.uleb128 0x81
	.byte	0x8
	.ascii "__builtin_va_list\0"
	.long	0x65f8
	.uleb128 0x15
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x5
	.long	0x65f8
	.uleb128 0x7
	.ascii "size_t\0"
	.byte	0x25
	.byte	0x23
	.byte	0x2c
	.long	0x6614
	.uleb128 0x15
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x5
	.long	0x6614
	.uleb128 0x15
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x5
	.long	0x6633
	.uleb128 0x7
	.ascii "intptr_t\0"
	.byte	0x25
	.byte	0x3e
	.byte	0x23
	.long	0x6633
	.uleb128 0x7
	.ascii "uintptr_t\0"
	.byte	0x25
	.byte	0x4b
	.byte	0x2c
	.long	0x6614
	.uleb128 0x7
	.ascii "wint_t\0"
	.byte	0x25
	.byte	0x6a
	.byte	0x18
	.long	0x667b
	.uleb128 0x15
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x5
	.long	0x667b
	.uleb128 0x7
	.ascii "wctype_t\0"
	.byte	0x25
	.byte	0x6b
	.byte	0x18
	.long	0x667b
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x5
	.long	0x66a7
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x29
	.ascii "pthreadlocinfo\0"
	.byte	0x25
	.word	0x1a8
	.byte	0x28
	.long	0x66d7
	.uleb128 0x6
	.byte	0x8
	.long	0x66dd
	.uleb128 0x82
	.ascii "threadlocaleinfostruct\0"
	.word	0x160
	.byte	0x25
	.word	0x1bc
	.byte	0x10
	.long	0x68d9
	.uleb128 0x83
	.byte	0x20
	.byte	0x25
	.word	0x1c2
	.byte	0xa
	.long	0x6751
	.uleb128 0xf
	.ascii "locale\0"
	.byte	0x25
	.word	0x1c3
	.byte	0xb
	.long	0x69c4
	.byte	0
	.uleb128 0xf
	.ascii "wlocale\0"
	.byte	0x25
	.word	0x1c4
	.byte	0xe
	.long	0x69ca
	.byte	0x8
	.uleb128 0x67
	.secrel32	.LASF51
	.byte	0x25
	.word	0x1c5
	.byte	0xa
	.long	0x69e0
	.byte	0x10
	.uleb128 0xf
	.ascii "wrefcount\0"
	.byte	0x25
	.word	0x1c6
	.byte	0xa
	.long	0x69e0
	.byte	0x18
	.byte	0
	.uleb128 0x67
	.secrel32	.LASF51
	.byte	0x25
	.word	0x1bd
	.byte	0x7
	.long	0x66a7
	.byte	0
	.uleb128 0xf
	.ascii "lc_codepage\0"
	.byte	0x25
	.word	0x1be
	.byte	0x10
	.long	0x69e6
	.byte	0x4
	.uleb128 0xf
	.ascii "lc_collate_cp\0"
	.byte	0x25
	.word	0x1bf
	.byte	0x10
	.long	0x69e6
	.byte	0x8
	.uleb128 0xf
	.ascii "lc_handle\0"
	.byte	0x25
	.word	0x1c0
	.byte	0x1c
	.long	0x69f6
	.byte	0xc
	.uleb128 0xf
	.ascii "lc_id\0"
	.byte	0x25
	.word	0x1c1
	.byte	0x10
	.long	0x6a20
	.byte	0x24
	.uleb128 0xf
	.ascii "lc_category\0"
	.byte	0x25
	.word	0x1c7
	.byte	0x12
	.long	0x6a30
	.byte	0x48
	.uleb128 0x1f
	.ascii "lc_clike\0"
	.byte	0x25
	.word	0x1c8
	.byte	0x7
	.long	0x66a7
	.word	0x108
	.uleb128 0x1f
	.ascii "mb_cur_max\0"
	.byte	0x25
	.word	0x1c9
	.byte	0x7
	.long	0x66a7
	.word	0x10c
	.uleb128 0x1f
	.ascii "lconv_intl_refcount\0"
	.byte	0x25
	.word	0x1ca
	.byte	0x8
	.long	0x69e0
	.word	0x110
	.uleb128 0x1f
	.ascii "lconv_num_refcount\0"
	.byte	0x25
	.word	0x1cb
	.byte	0x8
	.long	0x69e0
	.word	0x118
	.uleb128 0x1f
	.ascii "lconv_mon_refcount\0"
	.byte	0x25
	.word	0x1cc
	.byte	0x8
	.long	0x69e0
	.word	0x120
	.uleb128 0x1f
	.ascii "lconv\0"
	.byte	0x25
	.word	0x1cd
	.byte	0x11
	.long	0x6bf2
	.word	0x128
	.uleb128 0x1f
	.ascii "ctype1_refcount\0"
	.byte	0x25
	.word	0x1ce
	.byte	0x8
	.long	0x69e0
	.word	0x130
	.uleb128 0x1f
	.ascii "ctype1\0"
	.byte	0x25
	.word	0x1cf
	.byte	0x13
	.long	0x6bf8
	.word	0x138
	.uleb128 0x1f
	.ascii "pctype\0"
	.byte	0x25
	.word	0x1d0
	.byte	0x19
	.long	0x6bfe
	.word	0x140
	.uleb128 0x1f
	.ascii "pclmap\0"
	.byte	0x25
	.word	0x1d1
	.byte	0x18
	.long	0x6c04
	.word	0x148
	.uleb128 0x1f
	.ascii "pcumap\0"
	.byte	0x25
	.word	0x1d2
	.byte	0x18
	.long	0x6c04
	.word	0x150
	.uleb128 0x1f
	.ascii "lc_time_curr\0"
	.byte	0x25
	.word	0x1d3
	.byte	0x1a
	.long	0x6c30
	.word	0x158
	.byte	0
	.uleb128 0x29
	.ascii "pthreadmbcinfo\0"
	.byte	0x25
	.word	0x1a9
	.byte	0x25
	.long	0x68f1
	.uleb128 0x6
	.byte	0x8
	.long	0x68f7
	.uleb128 0xc
	.ascii "threadmbcinfostruct\0"
	.uleb128 0x2d
	.ascii "localeinfo_struct\0"
	.byte	0x10
	.byte	0x25
	.word	0x1ac
	.byte	0x10
	.long	0x694d
	.uleb128 0xf
	.ascii "locinfo\0"
	.byte	0x25
	.word	0x1ad
	.byte	0x12
	.long	0x66bf
	.byte	0
	.uleb128 0xf
	.ascii "mbcinfo\0"
	.byte	0x25
	.word	0x1ae
	.byte	0x12
	.long	0x68d9
	.byte	0x8
	.byte	0
	.uleb128 0x29
	.ascii "_locale_tstruct\0"
	.byte	0x25
	.word	0x1af
	.byte	0x3
	.long	0x690c
	.uleb128 0x2d
	.ascii "tagLC_ID\0"
	.byte	0x6
	.byte	0x25
	.word	0x1b3
	.byte	0x10
	.long	0x69b5
	.uleb128 0xf
	.ascii "wLanguage\0"
	.byte	0x25
	.word	0x1b4
	.byte	0x12
	.long	0x667b
	.byte	0
	.uleb128 0xf
	.ascii "wCountry\0"
	.byte	0x25
	.word	0x1b5
	.byte	0x12
	.long	0x667b
	.byte	0x2
	.uleb128 0xf
	.ascii "wCodePage\0"
	.byte	0x25
	.word	0x1b6
	.byte	0x12
	.long	0x667b
	.byte	0x4
	.byte	0
	.uleb128 0x29
	.ascii "LC_ID\0"
	.byte	0x25
	.word	0x1b7
	.byte	0x3
	.long	0x6966
	.uleb128 0x6
	.byte	0x8
	.long	0x65f8
	.uleb128 0x6
	.byte	0x8
	.long	0x69d0
	.uleb128 0x15
	.byte	0x2
	.byte	0x7
	.ascii "wchar_t\0"
	.uleb128 0x5
	.long	0x69d0
	.uleb128 0x6
	.byte	0x8
	.long	0x66a7
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x33
	.long	0x6a06
	.long	0x6a06
	.uleb128 0x3f
	.long	0x6614
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x5
	.long	0x6a06
	.uleb128 0x33
	.long	0x69b5
	.long	0x6a30
	.uleb128 0x3f
	.long	0x6614
	.byte	0x5
	.byte	0
	.uleb128 0x33
	.long	0x6700
	.long	0x6a40
	.uleb128 0x3f
	.long	0x6614
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.ascii "lconv\0"
	.byte	0x58
	.byte	0x26
	.byte	0x2d
	.byte	0xa
	.long	0x6bf2
	.uleb128 0xa
	.ascii "decimal_point\0"
	.byte	0x26
	.byte	0x2e
	.byte	0xb
	.long	0x69c4
	.byte	0
	.uleb128 0xa
	.ascii "thousands_sep\0"
	.byte	0x26
	.byte	0x2f
	.byte	0xb
	.long	0x69c4
	.byte	0x8
	.uleb128 0xa
	.ascii "grouping\0"
	.byte	0x26
	.byte	0x30
	.byte	0xb
	.long	0x69c4
	.byte	0x10
	.uleb128 0xa
	.ascii "int_curr_symbol\0"
	.byte	0x26
	.byte	0x31
	.byte	0xb
	.long	0x69c4
	.byte	0x18
	.uleb128 0xa
	.ascii "currency_symbol\0"
	.byte	0x26
	.byte	0x32
	.byte	0xb
	.long	0x69c4
	.byte	0x20
	.uleb128 0xa
	.ascii "mon_decimal_point\0"
	.byte	0x26
	.byte	0x33
	.byte	0xb
	.long	0x69c4
	.byte	0x28
	.uleb128 0xa
	.ascii "mon_thousands_sep\0"
	.byte	0x26
	.byte	0x34
	.byte	0xb
	.long	0x69c4
	.byte	0x30
	.uleb128 0xa
	.ascii "mon_grouping\0"
	.byte	0x26
	.byte	0x35
	.byte	0xb
	.long	0x69c4
	.byte	0x38
	.uleb128 0xa
	.ascii "positive_sign\0"
	.byte	0x26
	.byte	0x36
	.byte	0xb
	.long	0x69c4
	.byte	0x40
	.uleb128 0xa
	.ascii "negative_sign\0"
	.byte	0x26
	.byte	0x37
	.byte	0xb
	.long	0x69c4
	.byte	0x48
	.uleb128 0xa
	.ascii "int_frac_digits\0"
	.byte	0x26
	.byte	0x38
	.byte	0xa
	.long	0x65f8
	.byte	0x50
	.uleb128 0xa
	.ascii "frac_digits\0"
	.byte	0x26
	.byte	0x39
	.byte	0xa
	.long	0x65f8
	.byte	0x51
	.uleb128 0xa
	.ascii "p_cs_precedes\0"
	.byte	0x26
	.byte	0x3a
	.byte	0xa
	.long	0x65f8
	.byte	0x52
	.uleb128 0xa
	.ascii "p_sep_by_space\0"
	.byte	0x26
	.byte	0x3b
	.byte	0xa
	.long	0x65f8
	.byte	0x53
	.uleb128 0xa
	.ascii "n_cs_precedes\0"
	.byte	0x26
	.byte	0x3c
	.byte	0xa
	.long	0x65f8
	.byte	0x54
	.uleb128 0xa
	.ascii "n_sep_by_space\0"
	.byte	0x26
	.byte	0x3d
	.byte	0xa
	.long	0x65f8
	.byte	0x55
	.uleb128 0xa
	.ascii "p_sign_posn\0"
	.byte	0x26
	.byte	0x3e
	.byte	0xa
	.long	0x65f8
	.byte	0x56
	.uleb128 0xa
	.ascii "n_sign_posn\0"
	.byte	0x26
	.byte	0x3f
	.byte	0xa
	.long	0x65f8
	.byte	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6a40
	.uleb128 0x6
	.byte	0x8
	.long	0x667b
	.uleb128 0x6
	.byte	0x8
	.long	0x6691
	.uleb128 0x6
	.byte	0x8
	.long	0x6c1b
	.uleb128 0x15
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x5
	.long	0x6c0a
	.uleb128 0xc
	.ascii "__lc_time_data\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x6c20
	.uleb128 0x11
	.ascii "_iobuf\0"
	.byte	0x30
	.byte	0x27
	.byte	0x29
	.byte	0xa
	.long	0x6cc6
	.uleb128 0xa
	.ascii "_ptr\0"
	.byte	0x27
	.byte	0x2a
	.byte	0xb
	.long	0x69c4
	.byte	0
	.uleb128 0xa
	.ascii "_cnt\0"
	.byte	0x27
	.byte	0x2b
	.byte	0x9
	.long	0x66a7
	.byte	0x8
	.uleb128 0xa
	.ascii "_base\0"
	.byte	0x27
	.byte	0x2c
	.byte	0xb
	.long	0x69c4
	.byte	0x10
	.uleb128 0xa
	.ascii "_flag\0"
	.byte	0x27
	.byte	0x2d
	.byte	0x9
	.long	0x66a7
	.byte	0x18
	.uleb128 0xa
	.ascii "_file\0"
	.byte	0x27
	.byte	0x2e
	.byte	0x9
	.long	0x66a7
	.byte	0x1c
	.uleb128 0xa
	.ascii "_charbuf\0"
	.byte	0x27
	.byte	0x2f
	.byte	0x9
	.long	0x66a7
	.byte	0x20
	.uleb128 0xa
	.ascii "_bufsiz\0"
	.byte	0x27
	.byte	0x30
	.byte	0x9
	.long	0x66a7
	.byte	0x24
	.uleb128 0xa
	.ascii "_tmpfname\0"
	.byte	0x27
	.byte	0x31
	.byte	0xb
	.long	0x69c4
	.byte	0x28
	.byte	0
	.uleb128 0x7
	.ascii "FILE\0"
	.byte	0x27
	.byte	0x33
	.byte	0x19
	.long	0x6c36
	.uleb128 0x1c
	.ascii "__imp__pctype\0"
	.byte	0x27
	.byte	0xba
	.byte	0x1c
	.long	0x6ce9
	.uleb128 0x6
	.byte	0x8
	.long	0x6bf8
	.uleb128 0x1c
	.ascii "__imp__wctype\0"
	.byte	0x27
	.byte	0xc9
	.byte	0x1c
	.long	0x6ce9
	.uleb128 0x1c
	.ascii "__imp__pwctype\0"
	.byte	0x27
	.byte	0xd8
	.byte	0x1c
	.long	0x6ce9
	.uleb128 0x15
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x5
	.long	0x6d1c
	.uleb128 0x2d
	.ascii "tm\0"
	.byte	0x24
	.byte	0x27
	.word	0x551
	.byte	0xa
	.long	0x6ddc
	.uleb128 0xf
	.ascii "tm_sec\0"
	.byte	0x27
	.word	0x552
	.byte	0x9
	.long	0x66a7
	.byte	0
	.uleb128 0xf
	.ascii "tm_min\0"
	.byte	0x27
	.word	0x553
	.byte	0x9
	.long	0x66a7
	.byte	0x4
	.uleb128 0xf
	.ascii "tm_hour\0"
	.byte	0x27
	.word	0x554
	.byte	0x9
	.long	0x66a7
	.byte	0x8
	.uleb128 0xf
	.ascii "tm_mday\0"
	.byte	0x27
	.word	0x555
	.byte	0x9
	.long	0x66a7
	.byte	0xc
	.uleb128 0xf
	.ascii "tm_mon\0"
	.byte	0x27
	.word	0x556
	.byte	0x9
	.long	0x66a7
	.byte	0x10
	.uleb128 0xf
	.ascii "tm_year\0"
	.byte	0x27
	.word	0x557
	.byte	0x9
	.long	0x66a7
	.byte	0x14
	.uleb128 0xf
	.ascii "tm_wday\0"
	.byte	0x27
	.word	0x558
	.byte	0x9
	.long	0x66a7
	.byte	0x18
	.uleb128 0xf
	.ascii "tm_yday\0"
	.byte	0x27
	.word	0x559
	.byte	0x9
	.long	0x66a7
	.byte	0x1c
	.uleb128 0xf
	.ascii "tm_isdst\0"
	.byte	0x27
	.word	0x55a
	.byte	0x9
	.long	0x66a7
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	0x6d2e
	.uleb128 0x29
	.ascii "mbstate_t\0"
	.byte	0x27
	.word	0x588
	.byte	0xf
	.long	0x66a7
	.uleb128 0x5
	.long	0x6de1
	.uleb128 0x4
	.ascii "btowc\0"
	.byte	0x27
	.word	0x58b
	.byte	0x12
	.long	0x666c
	.long	0x6e12
	.uleb128 0x1
	.long	0x66a7
	.byte	0
	.uleb128 0x4
	.ascii "fgetwc\0"
	.byte	0x27
	.word	0x303
	.byte	0x12
	.long	0x666c
	.long	0x6e2c
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6cc6
	.uleb128 0x4
	.ascii "fgetws\0"
	.byte	0x27
	.word	0x30c
	.byte	0x14
	.long	0x69ca
	.long	0x6e56
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x66a7
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x4
	.ascii "fputwc\0"
	.byte	0x27
	.word	0x305
	.byte	0x12
	.long	0x666c
	.long	0x6e75
	.uleb128 0x1
	.long	0x69d0
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x4
	.ascii "fputws\0"
	.byte	0x27
	.word	0x30d
	.byte	0xf
	.long	0x66a7
	.long	0x6e94
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x69db
	.uleb128 0x4
	.ascii "fwide\0"
	.byte	0x27
	.word	0x59a
	.byte	0xf
	.long	0x66a7
	.long	0x6eb8
	.uleb128 0x1
	.long	0x6e2c
	.uleb128 0x1
	.long	0x66a7
	.byte	0
	.uleb128 0xe
	.ascii "fwprintf\0"
	.byte	0x27
	.word	0x249
	.byte	0x5
	.long	0x66a7
	.long	0x6eda
	.uleb128 0x1
	.long	0x6e2c
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1d
	.byte	0
	.uleb128 0xe
	.ascii "fwscanf\0"
	.byte	0x27
	.word	0x225
	.byte	0x5
	.long	0x66a7
	.long	0x6efb
	.uleb128 0x1
	.long	0x6e2c
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1d
	.byte	0
	.uleb128 0x4
	.ascii "getwc\0"
	.byte	0x27
	.word	0x307
	.byte	0x12
	.long	0x666c
	.long	0x6f14
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x45
	.ascii "getwchar\0"
	.byte	0x27
	.word	0x308
	.byte	0x12
	.long	0x666c
	.uleb128 0x4
	.ascii "mbrlen\0"
	.byte	0x27
	.word	0x58c
	.byte	0x12
	.long	0x6605
	.long	0x6f4a
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x6f50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6600
	.uleb128 0x6
	.byte	0x8
	.long	0x6de1
	.uleb128 0x4
	.ascii "mbrtowc\0"
	.byte	0x27
	.word	0x58d
	.byte	0x12
	.long	0x6605
	.long	0x6f80
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x6f50
	.byte	0
	.uleb128 0x4
	.ascii "mbsinit\0"
	.byte	0x27
	.word	0x59b
	.byte	0xf
	.long	0x66a7
	.long	0x6f9b
	.uleb128 0x1
	.long	0x6f9b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6df4
	.uleb128 0x4
	.ascii "mbsrtowcs\0"
	.byte	0x27
	.word	0x58e
	.byte	0x12
	.long	0x6605
	.long	0x6fcd
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6fcd
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x6f50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6f4a
	.uleb128 0x4
	.ascii "putwc\0"
	.byte	0x27
	.word	0x309
	.byte	0x12
	.long	0x666c
	.long	0x6ff1
	.uleb128 0x1
	.long	0x69d0
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x4
	.ascii "putwchar\0"
	.byte	0x27
	.word	0x30a
	.byte	0x12
	.long	0x666c
	.long	0x700d
	.uleb128 0x1
	.long	0x69d0
	.byte	0
	.uleb128 0x46
	.secrel32	.LASF52
	.byte	0x28
	.byte	0x3e
	.byte	0x5
	.long	0x66a7
	.long	0x7029
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1d
	.byte	0
	.uleb128 0x46
	.secrel32	.LASF52
	.byte	0x28
	.byte	0x22
	.byte	0x5
	.long	0x66a7
	.long	0x704a
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1d
	.byte	0
	.uleb128 0xe
	.ascii "swscanf\0"
	.byte	0x27
	.word	0x20f
	.byte	0x5
	.long	0x66a7
	.long	0x706b
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1d
	.byte	0
	.uleb128 0x4
	.ascii "ungetwc\0"
	.byte	0x27
	.word	0x30b
	.byte	0x12
	.long	0x666c
	.long	0x708b
	.uleb128 0x1
	.long	0x666c
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0xe
	.ascii "vfwprintf\0"
	.byte	0x27
	.word	0x25f
	.byte	0x5
	.long	0x66a7
	.long	0x70b2
	.uleb128 0x1
	.long	0x6e2c
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x65df
	.byte	0
	.uleb128 0xe
	.ascii "vfwscanf\0"
	.byte	0x27
	.word	0x23f
	.byte	0x5
	.long	0x66a7
	.long	0x70d8
	.uleb128 0x1
	.long	0x6e2c
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x65df
	.byte	0
	.uleb128 0x46
	.secrel32	.LASF53
	.byte	0x28
	.byte	0x33
	.byte	0x5
	.long	0x66a7
	.long	0x70f8
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x65df
	.byte	0
	.uleb128 0x46
	.secrel32	.LASF53
	.byte	0x28
	.byte	0x1b
	.byte	0x5
	.long	0x66a7
	.long	0x711d
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x65df
	.byte	0
	.uleb128 0xe
	.ascii "vswscanf\0"
	.byte	0x27
	.word	0x231
	.byte	0x5
	.long	0x66a7
	.long	0x7143
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x65df
	.byte	0
	.uleb128 0xe
	.ascii "vwprintf\0"
	.byte	0x27
	.word	0x266
	.byte	0x5
	.long	0x66a7
	.long	0x7164
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x65df
	.byte	0
	.uleb128 0xe
	.ascii "vwscanf\0"
	.byte	0x27
	.word	0x238
	.byte	0x5
	.long	0x66a7
	.long	0x7184
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x65df
	.byte	0
	.uleb128 0x4
	.ascii "wcrtomb\0"
	.byte	0x27
	.word	0x58f
	.byte	0x12
	.long	0x6605
	.long	0x71a9
	.uleb128 0x1
	.long	0x69c4
	.uleb128 0x1
	.long	0x69d0
	.uleb128 0x1
	.long	0x6f50
	.byte	0
	.uleb128 0x4
	.ascii "wcscat\0"
	.byte	0x27
	.word	0x519
	.byte	0x14
	.long	0x69ca
	.long	0x71c8
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6e94
	.byte	0
	.uleb128 0x4
	.ascii "wcscmp\0"
	.byte	0x27
	.word	0x51b
	.byte	0xf
	.long	0x66a7
	.long	0x71e7
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6e94
	.byte	0
	.uleb128 0x4
	.ascii "wcscoll\0"
	.byte	0x27
	.word	0x538
	.byte	0xf
	.long	0x66a7
	.long	0x7207
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6e94
	.byte	0
	.uleb128 0x4
	.ascii "wcscpy\0"
	.byte	0x27
	.word	0x51c
	.byte	0x14
	.long	0x69ca
	.long	0x7226
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6e94
	.byte	0
	.uleb128 0x4
	.ascii "wcscspn\0"
	.byte	0x27
	.word	0x51d
	.byte	0x12
	.long	0x6605
	.long	0x7246
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6e94
	.byte	0
	.uleb128 0x4
	.ascii "wcsftime\0"
	.byte	0x27
	.word	0x565
	.byte	0x12
	.long	0x6605
	.long	0x7271
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x7271
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6ddc
	.uleb128 0x4
	.ascii "wcslen\0"
	.byte	0x27
	.word	0x51e
	.byte	0x12
	.long	0x6605
	.long	0x7291
	.uleb128 0x1
	.long	0x6e94
	.byte	0
	.uleb128 0x4
	.ascii "wcsncat\0"
	.byte	0x27
	.word	0x520
	.byte	0x14
	.long	0x69ca
	.long	0x72b6
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6605
	.byte	0
	.uleb128 0x4
	.ascii "wcsncmp\0"
	.byte	0x27
	.word	0x521
	.byte	0xf
	.long	0x66a7
	.long	0x72db
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6605
	.byte	0
	.uleb128 0x4
	.ascii "wcsncpy\0"
	.byte	0x27
	.word	0x522
	.byte	0x14
	.long	0x69ca
	.long	0x7300
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6605
	.byte	0
	.uleb128 0x4
	.ascii "wcsrtombs\0"
	.byte	0x27
	.word	0x590
	.byte	0x12
	.long	0x6605
	.long	0x732c
	.uleb128 0x1
	.long	0x69c4
	.uleb128 0x1
	.long	0x732c
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x6f50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6e94
	.uleb128 0x4
	.ascii "wcsspn\0"
	.byte	0x27
	.word	0x526
	.byte	0x12
	.long	0x6605
	.long	0x7351
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6e94
	.byte	0
	.uleb128 0xe
	.ascii "wcstod\0"
	.byte	0x27
	.word	0x4de
	.byte	0x12
	.long	0x7370
	.long	0x7370
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x737a
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x69ca
	.uleb128 0xe
	.ascii "wcstof\0"
	.byte	0x27
	.word	0x4e2
	.byte	0x11
	.long	0x739f
	.long	0x739f
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x737a
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x4
	.ascii "wcstok\0"
	.byte	0x27
	.word	0x528
	.byte	0x14
	.long	0x69ca
	.long	0x73c7
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6e94
	.byte	0
	.uleb128 0x4
	.ascii "wcstol\0"
	.byte	0x27
	.word	0x4ed
	.byte	0x10
	.long	0x66b3
	.long	0x73eb
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x737a
	.uleb128 0x1
	.long	0x66a7
	.byte	0
	.uleb128 0x4
	.ascii "wcstoul\0"
	.byte	0x27
	.word	0x4ef
	.byte	0x19
	.long	0x6a06
	.long	0x7410
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x737a
	.uleb128 0x1
	.long	0x66a7
	.byte	0
	.uleb128 0x4
	.ascii "wcsxfrm\0"
	.byte	0x27
	.word	0x536
	.byte	0x12
	.long	0x6605
	.long	0x7435
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6605
	.byte	0
	.uleb128 0x4
	.ascii "wctob\0"
	.byte	0x27
	.word	0x591
	.byte	0xf
	.long	0x66a7
	.long	0x744e
	.uleb128 0x1
	.long	0x666c
	.byte	0
	.uleb128 0x4
	.ascii "wmemcmp\0"
	.byte	0x27
	.word	0x596
	.byte	0xf
	.long	0x66a7
	.long	0x7473
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6605
	.byte	0
	.uleb128 0x4
	.ascii "wmemcpy\0"
	.byte	0x27
	.word	0x597
	.byte	0x14
	.long	0x69ca
	.long	0x7498
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6605
	.byte	0
	.uleb128 0x4
	.ascii "wmemmove\0"
	.byte	0x27
	.word	0x599
	.byte	0x14
	.long	0x69ca
	.long	0x74be
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6605
	.byte	0
	.uleb128 0x4
	.ascii "wmemset\0"
	.byte	0x27
	.word	0x594
	.byte	0x14
	.long	0x69ca
	.long	0x74e3
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x69d0
	.uleb128 0x1
	.long	0x6605
	.byte	0
	.uleb128 0xe
	.ascii "wprintf\0"
	.byte	0x27
	.word	0x254
	.byte	0x5
	.long	0x66a7
	.long	0x74ff
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1d
	.byte	0
	.uleb128 0xe
	.ascii "wscanf\0"
	.byte	0x27
	.word	0x21a
	.byte	0x5
	.long	0x66a7
	.long	0x751a
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1d
	.byte	0
	.uleb128 0x4
	.ascii "wcschr\0"
	.byte	0x27
	.word	0x51a
	.byte	0x22
	.long	0x69ca
	.long	0x7539
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x69d0
	.byte	0
	.uleb128 0x4
	.ascii "wcspbrk\0"
	.byte	0x27
	.word	0x524
	.byte	0x22
	.long	0x69ca
	.long	0x7559
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6e94
	.byte	0
	.uleb128 0x4
	.ascii "wcsrchr\0"
	.byte	0x27
	.word	0x525
	.byte	0x22
	.long	0x69ca
	.long	0x7579
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x69d0
	.byte	0
	.uleb128 0x4
	.ascii "wcsstr\0"
	.byte	0x27
	.word	0x527
	.byte	0x22
	.long	0x69ca
	.long	0x7598
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6e94
	.byte	0
	.uleb128 0x4
	.ascii "wmemchr\0"
	.byte	0x27
	.word	0x595
	.byte	0x22
	.long	0x69ca
	.long	0x75bd
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x69d0
	.uleb128 0x1
	.long	0x6605
	.byte	0
	.uleb128 0x4
	.ascii "wcstold\0"
	.byte	0x27
	.word	0x4eb
	.byte	0x17
	.long	0x75dd
	.long	0x75dd
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x737a
	.byte	0
	.uleb128 0x15
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x4
	.ascii "wcstoll\0"
	.byte	0x27
	.word	0x59c
	.byte	0x27
	.long	0x6633
	.long	0x7611
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x737a
	.uleb128 0x1
	.long	0x66a7
	.byte	0
	.uleb128 0x4
	.ascii "wcstoull\0"
	.byte	0x27
	.word	0x59d
	.byte	0x30
	.long	0x6614
	.long	0x7637
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x737a
	.uleb128 0x1
	.long	0x66a7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ff
	.uleb128 0x84
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x36e
	.uleb128 0x6
	.byte	0x8
	.long	0x7d7
	.uleb128 0x10
	.byte	0x8
	.long	0x7d7
	.uleb128 0x85
	.ascii "decltype(nullptr)\0"
	.uleb128 0x40
	.byte	0x8
	.long	0x36e
	.uleb128 0x10
	.byte	0x8
	.long	0x36e
	.uleb128 0x15
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x5
	.long	0x7672
	.uleb128 0x6
	.byte	0x8
	.long	0x866
	.uleb128 0x6
	.byte	0x8
	.long	0x975
	.uleb128 0x6
	.byte	0x8
	.long	0xa82
	.uleb128 0x6
	.byte	0x8
	.long	0xbc0
	.uleb128 0x15
	.byte	0x10
	.byte	0x7
	.ascii "__int128 unsigned\0"
	.uleb128 0x15
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x15
	.byte	0x10
	.byte	0x5
	.ascii "__int128\0"
	.uleb128 0x6
	.byte	0x8
	.long	0xcb7
	.uleb128 0x52
	.long	0xcfe
	.uleb128 0x4b
	.ascii "__gnu_debug\0"
	.byte	0x11
	.byte	0x38
	.byte	0xb
	.long	0x76ef
	.uleb128 0x5c
	.byte	0x11
	.byte	0x3a
	.byte	0x18
	.long	0xd1c
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xd7f
	.uleb128 0x10
	.byte	0x8
	.long	0xd8c
	.uleb128 0x6
	.byte	0x8
	.long	0xd8c
	.uleb128 0x6
	.byte	0x8
	.long	0xd7f
	.uleb128 0x10
	.byte	0x8
	.long	0xfea
	.uleb128 0x10
	.byte	0x8
	.long	0x114c
	.uleb128 0x10
	.byte	0x8
	.long	0x1159
	.uleb128 0x6
	.byte	0x8
	.long	0x1159
	.uleb128 0x6
	.byte	0x8
	.long	0x114c
	.uleb128 0x10
	.byte	0x8
	.long	0x13b7
	.uleb128 0x7
	.ascii "int8_t\0"
	.byte	0x29
	.byte	0x23
	.byte	0x15
	.long	0x76ac
	.uleb128 0x7
	.ascii "uint8_t\0"
	.byte	0x29
	.byte	0x24
	.byte	0x19
	.long	0x6c0a
	.uleb128 0x7
	.ascii "int16_t\0"
	.byte	0x29
	.byte	0x25
	.byte	0x10
	.long	0x6d1c
	.uleb128 0x7
	.ascii "uint16_t\0"
	.byte	0x29
	.byte	0x26
	.byte	0x19
	.long	0x667b
	.uleb128 0x7
	.ascii "int32_t\0"
	.byte	0x29
	.byte	0x27
	.byte	0xe
	.long	0x66a7
	.uleb128 0x7
	.ascii "uint32_t\0"
	.byte	0x29
	.byte	0x28
	.byte	0x14
	.long	0x69e6
	.uleb128 0x7
	.ascii "int64_t\0"
	.byte	0x29
	.byte	0x29
	.byte	0x26
	.long	0x6633
	.uleb128 0x7
	.ascii "uint64_t\0"
	.byte	0x29
	.byte	0x2a
	.byte	0x30
	.long	0x6614
	.uleb128 0x7
	.ascii "int_least8_t\0"
	.byte	0x29
	.byte	0x2d
	.byte	0x15
	.long	0x76ac
	.uleb128 0x7
	.ascii "uint_least8_t\0"
	.byte	0x29
	.byte	0x2e
	.byte	0x19
	.long	0x6c0a
	.uleb128 0x7
	.ascii "int_least16_t\0"
	.byte	0x29
	.byte	0x2f
	.byte	0x10
	.long	0x6d1c
	.uleb128 0x7
	.ascii "uint_least16_t\0"
	.byte	0x29
	.byte	0x30
	.byte	0x19
	.long	0x667b
	.uleb128 0x7
	.ascii "int_least32_t\0"
	.byte	0x29
	.byte	0x31
	.byte	0xe
	.long	0x66a7
	.uleb128 0x7
	.ascii "uint_least32_t\0"
	.byte	0x29
	.byte	0x32
	.byte	0x14
	.long	0x69e6
	.uleb128 0x7
	.ascii "int_least64_t\0"
	.byte	0x29
	.byte	0x33
	.byte	0x26
	.long	0x6633
	.uleb128 0x7
	.ascii "uint_least64_t\0"
	.byte	0x29
	.byte	0x34
	.byte	0x30
	.long	0x6614
	.uleb128 0x7
	.ascii "int_fast8_t\0"
	.byte	0x29
	.byte	0x3a
	.byte	0x15
	.long	0x76ac
	.uleb128 0x7
	.ascii "uint_fast8_t\0"
	.byte	0x29
	.byte	0x3b
	.byte	0x17
	.long	0x6c0a
	.uleb128 0x7
	.ascii "int_fast16_t\0"
	.byte	0x29
	.byte	0x3c
	.byte	0x10
	.long	0x6d1c
	.uleb128 0x7
	.ascii "uint_fast16_t\0"
	.byte	0x29
	.byte	0x3d
	.byte	0x19
	.long	0x667b
	.uleb128 0x7
	.ascii "int_fast32_t\0"
	.byte	0x29
	.byte	0x3e
	.byte	0xe
	.long	0x66a7
	.uleb128 0x7
	.ascii "uint_fast32_t\0"
	.byte	0x29
	.byte	0x3f
	.byte	0x18
	.long	0x69e6
	.uleb128 0x7
	.ascii "int_fast64_t\0"
	.byte	0x29
	.byte	0x40
	.byte	0x26
	.long	0x6633
	.uleb128 0x7
	.ascii "uint_fast64_t\0"
	.byte	0x29
	.byte	0x41
	.byte	0x30
	.long	0x6614
	.uleb128 0x7
	.ascii "intmax_t\0"
	.byte	0x29
	.byte	0x44
	.byte	0x26
	.long	0x6633
	.uleb128 0x7
	.ascii "uintmax_t\0"
	.byte	0x29
	.byte	0x45
	.byte	0x30
	.long	0x6614
	.uleb128 0x15
	.byte	0x2
	.byte	0x10
	.ascii "char16_t\0"
	.uleb128 0x15
	.byte	0x4
	.byte	0x10
	.ascii "char32_t\0"
	.uleb128 0x7
	.ascii "fpos_t\0"
	.byte	0x2a
	.byte	0x68
	.byte	0x25
	.long	0x6633
	.uleb128 0x5
	.long	0x7944
	.uleb128 0x41
	.ascii "setlocale\0"
	.byte	0x26
	.byte	0x50
	.byte	0x11
	.long	0x69c4
	.long	0x7979
	.uleb128 0x1
	.long	0x66a7
	.uleb128 0x1
	.long	0x6f4a
	.byte	0
	.uleb128 0x86
	.ascii "localeconv\0"
	.byte	0x26
	.byte	0x51
	.byte	0x21
	.long	0x6bf2
	.uleb128 0x33
	.long	0x6c1b
	.long	0x7999
	.uleb128 0x87
	.byte	0
	.uleb128 0x1c
	.ascii "__newclmap\0"
	.byte	0x2b
	.byte	0x50
	.byte	0x1e
	.long	0x798d
	.uleb128 0x1c
	.ascii "__newcumap\0"
	.byte	0x2b
	.byte	0x51
	.byte	0x1e
	.long	0x798d
	.uleb128 0x1c
	.ascii "__ptlocinfo\0"
	.byte	0x2b
	.byte	0x52
	.byte	0x19
	.long	0x66bf
	.uleb128 0x1c
	.ascii "__ptmbcinfo\0"
	.byte	0x2b
	.byte	0x53
	.byte	0x19
	.long	0x68d9
	.uleb128 0x1c
	.ascii "__globallocalestatus\0"
	.byte	0x2b
	.byte	0x54
	.byte	0xe
	.long	0x66a7
	.uleb128 0x1c
	.ascii "__locale_changed\0"
	.byte	0x2b
	.byte	0x55
	.byte	0xe
	.long	0x66a7
	.uleb128 0x1c
	.ascii "__initiallocinfo\0"
	.byte	0x2b
	.byte	0x56
	.byte	0x28
	.long	0x66dd
	.uleb128 0x1c
	.ascii "__initiallocalestructinfo\0"
	.byte	0x2b
	.byte	0x57
	.byte	0x1a
	.long	0x694d
	.uleb128 0x1c
	.ascii "__imp___mb_cur_max\0"
	.byte	0x2b
	.byte	0xcb
	.byte	0x10
	.long	0x69e0
	.uleb128 0x6
	.byte	0x8
	.long	0x7a79
	.uleb128 0x88
	.uleb128 0x1c
	.ascii "__security_cookie\0"
	.byte	0x2c
	.byte	0x7d
	.byte	0x14
	.long	0x665a
	.uleb128 0x68
	.long	0x7aa0
	.uleb128 0x1
	.long	0x763d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7a95
	.uleb128 0x1e
	.ascii "_pthread_key_dest\0"
	.byte	0x2d
	.word	0x123
	.byte	0x1f
	.long	0x7ac1
	.uleb128 0x6
	.byte	0x8
	.long	0x7aa0
	.uleb128 0x7
	.ascii "_Atomic_word\0"
	.byte	0x2e
	.byte	0x20
	.byte	0xd
	.long	0x66a7
	.uleb128 0x6
	.byte	0x8
	.long	0x7ae2
	.uleb128 0x89
	.uleb128 0x11
	.ascii "_div_t\0"
	.byte	0x8
	.byte	0x2f
	.byte	0x3b
	.byte	0x12
	.long	0x7b10
	.uleb128 0xa
	.ascii "quot\0"
	.byte	0x2f
	.byte	0x3c
	.byte	0x9
	.long	0x66a7
	.byte	0
	.uleb128 0xa
	.ascii "rem\0"
	.byte	0x2f
	.byte	0x3d
	.byte	0x9
	.long	0x66a7
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.ascii "div_t\0"
	.byte	0x2f
	.byte	0x3e
	.byte	0x5
	.long	0x7ae4
	.uleb128 0x11
	.ascii "_ldiv_t\0"
	.byte	0x8
	.byte	0x2f
	.byte	0x40
	.byte	0x12
	.long	0x7b4b
	.uleb128 0xa
	.ascii "quot\0"
	.byte	0x2f
	.byte	0x41
	.byte	0xa
	.long	0x66b3
	.byte	0
	.uleb128 0xa
	.ascii "rem\0"
	.byte	0x2f
	.byte	0x42
	.byte	0xa
	.long	0x66b3
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.ascii "ldiv_t\0"
	.byte	0x2f
	.byte	0x43
	.byte	0x5
	.long	0x7b1e
	.uleb128 0x33
	.long	0x6c0a
	.long	0x7b6a
	.uleb128 0x3f
	.long	0x6614
	.byte	0xb
	.byte	0
	.uleb128 0x33
	.long	0x69c4
	.long	0x7b7a
	.uleb128 0x3f
	.long	0x6614
	.byte	0
	.byte	0
	.uleb128 0x1c
	.ascii "_sys_errlist\0"
	.byte	0x2f
	.byte	0xac
	.byte	0x26
	.long	0x7b6a
	.uleb128 0x1c
	.ascii "_sys_nerr\0"
	.byte	0x2f
	.byte	0xad
	.byte	0x24
	.long	0x66a7
	.uleb128 0x1e
	.ascii "__imp___argc\0"
	.byte	0x2f
	.word	0x119
	.byte	0x10
	.long	0x69e0
	.uleb128 0x1e
	.ascii "__imp___argv\0"
	.byte	0x2f
	.word	0x11d
	.byte	0x13
	.long	0x7bcd
	.uleb128 0x6
	.byte	0x8
	.long	0x7bd3
	.uleb128 0x6
	.byte	0x8
	.long	0x69c4
	.uleb128 0x1e
	.ascii "__imp___wargv\0"
	.byte	0x2f
	.word	0x121
	.byte	0x16
	.long	0x7bf0
	.uleb128 0x6
	.byte	0x8
	.long	0x737a
	.uleb128 0x1e
	.ascii "__imp__environ\0"
	.byte	0x2f
	.word	0x127
	.byte	0x13
	.long	0x7bcd
	.uleb128 0x1e
	.ascii "__imp__wenviron\0"
	.byte	0x2f
	.word	0x12c
	.byte	0x16
	.long	0x7bf0
	.uleb128 0x1e
	.ascii "__imp__pgmptr\0"
	.byte	0x2f
	.word	0x132
	.byte	0x12
	.long	0x7bd3
	.uleb128 0x1e
	.ascii "__imp__wpgmptr\0"
	.byte	0x2f
	.word	0x137
	.byte	0x15
	.long	0x737a
	.uleb128 0x1e
	.ascii "__imp__osplatform\0"
	.byte	0x2f
	.word	0x13c
	.byte	0x19
	.long	0x7c71
	.uleb128 0x6
	.byte	0x8
	.long	0x69e6
	.uleb128 0x1e
	.ascii "__imp__osver\0"
	.byte	0x2f
	.word	0x141
	.byte	0x19
	.long	0x7c71
	.uleb128 0x1e
	.ascii "__imp__winver\0"
	.byte	0x2f
	.word	0x146
	.byte	0x19
	.long	0x7c71
	.uleb128 0x1e
	.ascii "__imp__winmajor\0"
	.byte	0x2f
	.word	0x14b
	.byte	0x19
	.long	0x7c71
	.uleb128 0x1e
	.ascii "__imp__winminor\0"
	.byte	0x2f
	.word	0x150
	.byte	0x19
	.long	0x7c71
	.uleb128 0x8a
	.byte	0x10
	.byte	0x2f
	.word	0x2bb
	.byte	0x12
	.ascii "7lldiv_t\0"
	.long	0x7d08
	.uleb128 0xf
	.ascii "quot\0"
	.byte	0x2f
	.word	0x2bb
	.byte	0x30
	.long	0x6633
	.byte	0
	.uleb128 0xf
	.ascii "rem\0"
	.byte	0x2f
	.word	0x2bb
	.byte	0x36
	.long	0x6633
	.byte	0x8
	.byte	0
	.uleb128 0x29
	.ascii "lldiv_t\0"
	.byte	0x2f
	.word	0x2bb
	.byte	0x3d
	.long	0x7cd6
	.uleb128 0x1c
	.ascii "_amblksiz\0"
	.byte	0x30
	.byte	0x35
	.byte	0x17
	.long	0x69e6
	.uleb128 0x4
	.ascii "atexit\0"
	.byte	0x2f
	.word	0x18a
	.byte	0xf
	.long	0x66a7
	.long	0x7d45
	.uleb128 0x1
	.long	0x7a73
	.byte	0
	.uleb128 0x4
	.ascii "atof\0"
	.byte	0x2f
	.word	0x18d
	.byte	0x12
	.long	0x7370
	.long	0x7d5d
	.uleb128 0x1
	.long	0x6f4a
	.byte	0
	.uleb128 0x4
	.ascii "atoi\0"
	.byte	0x2f
	.word	0x190
	.byte	0xf
	.long	0x66a7
	.long	0x7d75
	.uleb128 0x1
	.long	0x6f4a
	.byte	0
	.uleb128 0x4
	.ascii "atol\0"
	.byte	0x2f
	.word	0x192
	.byte	0x10
	.long	0x66b3
	.long	0x7d8d
	.uleb128 0x1
	.long	0x6f4a
	.byte	0
	.uleb128 0x4
	.ascii "bsearch\0"
	.byte	0x2f
	.word	0x196
	.byte	0x11
	.long	0x763d
	.long	0x7dbc
	.uleb128 0x1
	.long	0x7adc
	.uleb128 0x1
	.long	0x7adc
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x7dbc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7dc2
	.uleb128 0x8b
	.long	0x66a7
	.long	0x7dd7
	.uleb128 0x1
	.long	0x7adc
	.uleb128 0x1
	.long	0x7adc
	.byte	0
	.uleb128 0x4
	.ascii "div\0"
	.byte	0x2f
	.word	0x19c
	.byte	0x11
	.long	0x7b10
	.long	0x7df3
	.uleb128 0x1
	.long	0x66a7
	.uleb128 0x1
	.long	0x66a7
	.byte	0
	.uleb128 0x4
	.ascii "getenv\0"
	.byte	0x2f
	.word	0x19d
	.byte	0x11
	.long	0x69c4
	.long	0x7e0d
	.uleb128 0x1
	.long	0x6f4a
	.byte	0
	.uleb128 0x4
	.ascii "ldiv\0"
	.byte	0x2f
	.word	0x1a7
	.byte	0x12
	.long	0x7b4b
	.long	0x7e2a
	.uleb128 0x1
	.long	0x66b3
	.uleb128 0x1
	.long	0x66b3
	.byte	0
	.uleb128 0x4
	.ascii "mblen\0"
	.byte	0x2f
	.word	0x1a9
	.byte	0xf
	.long	0x66a7
	.long	0x7e48
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x6605
	.byte	0
	.uleb128 0x4
	.ascii "mbstowcs\0"
	.byte	0x2f
	.word	0x1b1
	.byte	0x12
	.long	0x6605
	.long	0x7e6e
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x6605
	.byte	0
	.uleb128 0x4
	.ascii "mbtowc\0"
	.byte	0x2f
	.word	0x1af
	.byte	0xf
	.long	0x66a7
	.long	0x7e92
	.uleb128 0x1
	.long	0x69ca
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x6605
	.byte	0
	.uleb128 0x34
	.ascii "qsort\0"
	.byte	0x2f
	.word	0x197
	.byte	0x10
	.long	0x7eb6
	.uleb128 0x1
	.long	0x763d
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x7dbc
	.byte	0
	.uleb128 0x45
	.ascii "rand\0"
	.byte	0x2f
	.word	0x1b4
	.byte	0xf
	.long	0x66a7
	.uleb128 0x34
	.ascii "srand\0"
	.byte	0x2f
	.word	0x1b6
	.byte	0x10
	.long	0x7ed9
	.uleb128 0x1
	.long	0x69e6
	.byte	0
	.uleb128 0xe
	.ascii "strtod\0"
	.byte	0x2f
	.word	0x1c2
	.byte	0x20
	.long	0x7370
	.long	0x7ef8
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x7bd3
	.byte	0
	.uleb128 0x4
	.ascii "strtol\0"
	.byte	0x2f
	.word	0x1e5
	.byte	0x10
	.long	0x66b3
	.long	0x7f1c
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x7bd3
	.uleb128 0x1
	.long	0x66a7
	.byte	0
	.uleb128 0x4
	.ascii "strtoul\0"
	.byte	0x2f
	.word	0x1e7
	.byte	0x19
	.long	0x6a06
	.long	0x7f41
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x7bd3
	.uleb128 0x1
	.long	0x66a7
	.byte	0
	.uleb128 0x41
	.ascii "system\0"
	.byte	0x2c
	.byte	0x55
	.byte	0xf
	.long	0x66a7
	.long	0x7f5a
	.uleb128 0x1
	.long	0x6f4a
	.byte	0
	.uleb128 0x4
	.ascii "wcstombs\0"
	.byte	0x2f
	.word	0x1f0
	.byte	0x12
	.long	0x6605
	.long	0x7f80
	.uleb128 0x1
	.long	0x69c4
	.uleb128 0x1
	.long	0x6e94
	.uleb128 0x1
	.long	0x6605
	.byte	0
	.uleb128 0x4
	.ascii "wctomb\0"
	.byte	0x2f
	.word	0x1ee
	.byte	0xf
	.long	0x66a7
	.long	0x7f9f
	.uleb128 0x1
	.long	0x69c4
	.uleb128 0x1
	.long	0x69d0
	.byte	0
	.uleb128 0x4
	.ascii "lldiv\0"
	.byte	0x2f
	.word	0x2bd
	.byte	0x25
	.long	0x7d08
	.long	0x7fbd
	.uleb128 0x1
	.long	0x6633
	.uleb128 0x1
	.long	0x6633
	.byte	0
	.uleb128 0x4
	.ascii "atoll\0"
	.byte	0x2f
	.word	0x2c8
	.byte	0x28
	.long	0x6633
	.long	0x7fd6
	.uleb128 0x1
	.long	0x6f4a
	.byte	0
	.uleb128 0x4
	.ascii "strtoll\0"
	.byte	0x2f
	.word	0x2c4
	.byte	0x28
	.long	0x6633
	.long	0x7ffb
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x7bd3
	.uleb128 0x1
	.long	0x66a7
	.byte	0
	.uleb128 0x4
	.ascii "strtoull\0"
	.byte	0x2f
	.word	0x2c5
	.byte	0x31
	.long	0x6614
	.long	0x8021
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x7bd3
	.uleb128 0x1
	.long	0x66a7
	.byte	0
	.uleb128 0xe
	.ascii "strtof\0"
	.byte	0x2f
	.word	0x1c9
	.byte	0x1f
	.long	0x739f
	.long	0x8040
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x7bd3
	.byte	0
	.uleb128 0x4
	.ascii "strtold\0"
	.byte	0x2f
	.word	0x1d4
	.byte	0x27
	.long	0x75dd
	.long	0x8060
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x7bd3
	.byte	0
	.uleb128 0x34
	.ascii "clearerr\0"
	.byte	0x2a
	.word	0x242
	.byte	0x10
	.long	0x8078
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x4
	.ascii "fclose\0"
	.byte	0x2a
	.word	0x243
	.byte	0xf
	.long	0x66a7
	.long	0x8092
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x4
	.ascii "feof\0"
	.byte	0x2a
	.word	0x24a
	.byte	0xf
	.long	0x66a7
	.long	0x80aa
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x4
	.ascii "ferror\0"
	.byte	0x2a
	.word	0x24b
	.byte	0xf
	.long	0x66a7
	.long	0x80c4
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x4
	.ascii "fflush\0"
	.byte	0x2a
	.word	0x24c
	.byte	0xf
	.long	0x66a7
	.long	0x80de
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x4
	.ascii "fgetc\0"
	.byte	0x2a
	.word	0x24d
	.byte	0xf
	.long	0x66a7
	.long	0x80f7
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x4
	.ascii "fgetpos\0"
	.byte	0x2a
	.word	0x24f
	.byte	0xf
	.long	0x66a7
	.long	0x8117
	.uleb128 0x1
	.long	0x6e2c
	.uleb128 0x1
	.long	0x8117
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7944
	.uleb128 0x4
	.ascii "fgets\0"
	.byte	0x2a
	.word	0x251
	.byte	0x11
	.long	0x69c4
	.long	0x8140
	.uleb128 0x1
	.long	0x69c4
	.uleb128 0x1
	.long	0x66a7
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x4
	.ascii "fopen\0"
	.byte	0x2a
	.word	0x258
	.byte	0x11
	.long	0x6e2c
	.long	0x815e
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x6f4a
	.byte	0
	.uleb128 0xe
	.ascii "fprintf\0"
	.byte	0x2a
	.word	0x14e
	.byte	0x5
	.long	0x66a7
	.long	0x817f
	.uleb128 0x1
	.long	0x6e2c
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1d
	.byte	0
	.uleb128 0x4
	.ascii "fread\0"
	.byte	0x2a
	.word	0x25d
	.byte	0x12
	.long	0x6605
	.long	0x81a7
	.uleb128 0x1
	.long	0x763d
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x4
	.ascii "freopen\0"
	.byte	0x2a
	.word	0x25e
	.byte	0x11
	.long	0x6e2c
	.long	0x81cc
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0xe
	.ascii "fscanf\0"
	.byte	0x2a
	.word	0x121
	.byte	0x5
	.long	0x66a7
	.long	0x81ec
	.uleb128 0x1
	.long	0x6e2c
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1d
	.byte	0
	.uleb128 0x4
	.ascii "fseek\0"
	.byte	0x2a
	.word	0x261
	.byte	0xf
	.long	0x66a7
	.long	0x820f
	.uleb128 0x1
	.long	0x6e2c
	.uleb128 0x1
	.long	0x66b3
	.uleb128 0x1
	.long	0x66a7
	.byte	0
	.uleb128 0x4
	.ascii "fsetpos\0"
	.byte	0x2a
	.word	0x25f
	.byte	0xf
	.long	0x66a7
	.long	0x822f
	.uleb128 0x1
	.long	0x6e2c
	.uleb128 0x1
	.long	0x822f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7953
	.uleb128 0x4
	.ascii "ftell\0"
	.byte	0x2a
	.word	0x262
	.byte	0x10
	.long	0x66b3
	.long	0x824e
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x4
	.ascii "getc\0"
	.byte	0x2a
	.word	0x28f
	.byte	0xf
	.long	0x66a7
	.long	0x8266
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0x45
	.ascii "getchar\0"
	.byte	0x2a
	.word	0x290
	.byte	0xf
	.long	0x66a7
	.uleb128 0x34
	.ascii "perror\0"
	.byte	0x2a
	.word	0x296
	.byte	0x10
	.long	0x828d
	.uleb128 0x1
	.long	0x6f4a
	.byte	0
	.uleb128 0xe
	.ascii "printf\0"
	.byte	0x2a
	.word	0x159
	.byte	0x5
	.long	0x66a7
	.long	0x82a8
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1d
	.byte	0
	.uleb128 0x4
	.ascii "remove\0"
	.byte	0x2a
	.word	0x2a4
	.byte	0xf
	.long	0x66a7
	.long	0x82c2
	.uleb128 0x1
	.long	0x6f4a
	.byte	0
	.uleb128 0x4
	.ascii "rename\0"
	.byte	0x2a
	.word	0x2a5
	.byte	0xf
	.long	0x66a7
	.long	0x82e1
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x6f4a
	.byte	0
	.uleb128 0x34
	.ascii "rewind\0"
	.byte	0x2a
	.word	0x2ab
	.byte	0x10
	.long	0x82f7
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0xe
	.ascii "scanf\0"
	.byte	0x2a
	.word	0x116
	.byte	0x5
	.long	0x66a7
	.long	0x8311
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1d
	.byte	0
	.uleb128 0x34
	.ascii "setbuf\0"
	.byte	0x2a
	.word	0x2ad
	.byte	0x10
	.long	0x832c
	.uleb128 0x1
	.long	0x6e2c
	.uleb128 0x1
	.long	0x69c4
	.byte	0
	.uleb128 0x4
	.ascii "setvbuf\0"
	.byte	0x2a
	.word	0x2b1
	.byte	0xf
	.long	0x66a7
	.long	0x8356
	.uleb128 0x1
	.long	0x6e2c
	.uleb128 0x1
	.long	0x69c4
	.uleb128 0x1
	.long	0x66a7
	.uleb128 0x1
	.long	0x6605
	.byte	0
	.uleb128 0xe
	.ascii "sprintf\0"
	.byte	0x2a
	.word	0x164
	.byte	0x5
	.long	0x66a7
	.long	0x8377
	.uleb128 0x1
	.long	0x69c4
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1d
	.byte	0
	.uleb128 0xe
	.ascii "sscanf\0"
	.byte	0x2a
	.word	0x10b
	.byte	0x5
	.long	0x66a7
	.long	0x8397
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1d
	.byte	0
	.uleb128 0x45
	.ascii "tmpfile\0"
	.byte	0x2a
	.word	0x2cb
	.byte	0x11
	.long	0x6e2c
	.uleb128 0x4
	.ascii "tmpnam\0"
	.byte	0x2a
	.word	0x2cc
	.byte	0x11
	.long	0x69c4
	.long	0x83c2
	.uleb128 0x1
	.long	0x69c4
	.byte	0
	.uleb128 0x4
	.ascii "ungetc\0"
	.byte	0x2a
	.word	0x2cd
	.byte	0xf
	.long	0x66a7
	.long	0x83e1
	.uleb128 0x1
	.long	0x66a7
	.uleb128 0x1
	.long	0x6e2c
	.byte	0
	.uleb128 0xe
	.ascii "vfprintf\0"
	.byte	0x2a
	.word	0x16f
	.byte	0x5
	.long	0x66a7
	.long	0x8407
	.uleb128 0x1
	.long	0x6e2c
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x65df
	.byte	0
	.uleb128 0xe
	.ascii "vprintf\0"
	.byte	0x2a
	.word	0x176
	.byte	0x5
	.long	0x66a7
	.long	0x8427
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x65df
	.byte	0
	.uleb128 0xe
	.ascii "vsprintf\0"
	.byte	0x2a
	.word	0x17d
	.byte	0x5
	.long	0x66a7
	.long	0x844d
	.uleb128 0x1
	.long	0x69c4
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x65df
	.byte	0
	.uleb128 0xe
	.ascii "snprintf\0"
	.byte	0x2a
	.word	0x184
	.byte	0x5
	.long	0x66a7
	.long	0x8474
	.uleb128 0x1
	.long	0x69c4
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1d
	.byte	0
	.uleb128 0xe
	.ascii "vfscanf\0"
	.byte	0x2a
	.word	0x140
	.byte	0x5
	.long	0x66a7
	.long	0x8499
	.uleb128 0x1
	.long	0x6e2c
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x65df
	.byte	0
	.uleb128 0xe
	.ascii "vscanf\0"
	.byte	0x2a
	.word	0x139
	.byte	0x5
	.long	0x66a7
	.long	0x84b8
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x65df
	.byte	0
	.uleb128 0xe
	.ascii "vsnprintf\0"
	.byte	0x2a
	.word	0x18f
	.byte	0x5
	.long	0x66a7
	.long	0x84e4
	.uleb128 0x1
	.long	0x69c4
	.uleb128 0x1
	.long	0x6605
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x65df
	.byte	0
	.uleb128 0xe
	.ascii "vsscanf\0"
	.byte	0x2a
	.word	0x132
	.byte	0x5
	.long	0x66a7
	.long	0x8509
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x6f4a
	.uleb128 0x1
	.long	0x65df
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x185c
	.uleb128 0x7
	.ascii "wctrans_t\0"
	.byte	0x31
	.byte	0xae
	.byte	0x13
	.long	0x69d0
	.uleb128 0x4
	.ascii "iswctype\0"
	.byte	0x27
	.word	0x123
	.byte	0xf
	.long	0x66a7
	.long	0x8542
	.uleb128 0x1
	.long	0x666c
	.uleb128 0x1
	.long	0x6696
	.byte	0
	.uleb128 0x41
	.ascii "towctrans\0"
	.byte	0x31
	.byte	0xaf
	.byte	0x12
	.long	0x666c
	.long	0x8563
	.uleb128 0x1
	.long	0x666c
	.uleb128 0x1
	.long	0x850f
	.byte	0
	.uleb128 0x41
	.ascii "wctrans\0"
	.byte	0x31
	.byte	0xb0
	.byte	0x15
	.long	0x850f
	.long	0x857d
	.uleb128 0x1
	.long	0x6f4a
	.byte	0
	.uleb128 0x41
	.ascii "wctype\0"
	.byte	0x31
	.byte	0xb1
	.byte	0x14
	.long	0x6696
	.long	0x8596
	.uleb128 0x1
	.long	0x6f4a
	.byte	0
	.uleb128 0x8c
	.long	0x1b5b
	.uleb128 0x9
	.byte	0x3
	.quad	_ZStL8__ioinit
	.uleb128 0x6
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x52
	.long	0x1d6c
	.uleb128 0x52
	.long	0x1d9f
	.uleb128 0x11
	.ascii "MyValueType\0"
	.byte	0xc
	.byte	0x1
	.byte	0x7
	.byte	0x8
	.long	0x85dd
	.uleb128 0xa
	.ascii "bytebuf\0"
	.byte	0x1
	.byte	0x9
	.byte	0x21
	.long	0x7b5a
	.byte	0
	.byte	0
	.uleb128 0x11
	.ascii "WrappingValueTypeInstance\0"
	.byte	0x8
	.byte	0x1
	.byte	0x11
	.byte	0x8
	.long	0x8612
	.uleb128 0xa
	.ascii "bytebuf\0"
	.byte	0x1
	.byte	0x13
	.byte	0x11
	.long	0x8617
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x85dd
	.uleb128 0x6
	.byte	0x8
	.long	0x6c0a
	.uleb128 0x6
	.byte	0x8
	.long	0x5c80
	.uleb128 0x5
	.long	0x861d
	.uleb128 0x10
	.byte	0x8
	.long	0x6033
	.uleb128 0x6
	.byte	0x8
	.long	0x85dd
	.uleb128 0x6
	.byte	0x8
	.long	0x6033
	.uleb128 0x5
	.long	0x8634
	.uleb128 0x10
	.byte	0x8
	.long	0x85dd
	.uleb128 0x6
	.byte	0x8
	.long	0x8612
	.uleb128 0x10
	.byte	0x8
	.long	0x8612
	.uleb128 0x6
	.byte	0x8
	.long	0x2478
	.uleb128 0x5
	.long	0x8651
	.uleb128 0x10
	.byte	0x8
	.long	0x2579
	.uleb128 0x10
	.byte	0x8
	.long	0x2636
	.uleb128 0x10
	.byte	0x8
	.long	0x2643
	.uleb128 0x10
	.byte	0x8
	.long	0x2478
	.uleb128 0x10
	.byte	0x8
	.long	0x640a
	.uleb128 0x10
	.byte	0x8
	.long	0x6416
	.uleb128 0x6
	.byte	0x8
	.long	0x28d1
	.uleb128 0x5
	.long	0x8680
	.uleb128 0x10
	.byte	0x8
	.long	0x2b5e
	.uleb128 0x40
	.byte	0x8
	.long	0x2b47
	.uleb128 0x10
	.byte	0x8
	.long	0x28d1
	.uleb128 0x10
	.byte	0x8
	.long	0x2b47
	.uleb128 0x6
	.byte	0x8
	.long	0x2874
	.uleb128 0x5
	.long	0x86a3
	.uleb128 0x6
	.byte	0x8
	.long	0x311c
	.uleb128 0x10
	.byte	0x8
	.long	0x2c42
	.uleb128 0x40
	.byte	0x8
	.long	0x2874
	.uleb128 0x6
	.byte	0x8
	.long	0x3121
	.uleb128 0x5
	.long	0x86c0
	.uleb128 0x10
	.byte	0x8
	.long	0x3267
	.uleb128 0x10
	.byte	0x8
	.long	0x334a
	.uleb128 0x10
	.byte	0x8
	.long	0x4fa1
	.uleb128 0x40
	.byte	0x8
	.long	0x3121
	.uleb128 0x10
	.byte	0x8
	.long	0x3121
	.uleb128 0x6
	.byte	0x8
	.long	0x4fa1
	.uleb128 0x5
	.long	0x86e9
	.uleb128 0x40
	.byte	0x8
	.long	0x333c
	.uleb128 0x6
	.byte	0x8
	.long	0x4fa6
	.uleb128 0x6
	.byte	0x8
	.long	0x51e6
	.uleb128 0x35
	.ascii "_ZNSt17integral_constantIbLb0EE5valueE\0"
	.long	0x893
	.byte	0
	.uleb128 0x35
	.ascii "_ZNSt17integral_constantIbLb1EE5valueE\0"
	.long	0x9a1
	.byte	0x1
	.uleb128 0x35
	.ascii "_ZNSt17integral_constantIyLy0EE5valueE\0"
	.long	0xad0
	.byte	0
	.uleb128 0x53
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIiE5__minE\0"
	.long	0x58e0
	.sleb128 -2147483648
	.uleb128 0x8d
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIiE5__maxE\0"
	.long	0x58ec
	.long	0x7fffffff
	.uleb128 0x35
	.ascii "_ZN9__gnu_cxx25__numeric_traits_floatingIfE16__max_exponent10E\0"
	.long	0x59f8
	.byte	0x26
	.uleb128 0x54
	.ascii "_ZN9__gnu_cxx25__numeric_traits_floatingIdE16__max_exponent10E\0"
	.long	0x5a5d
	.word	0x134
	.uleb128 0x54
	.ascii "_ZN9__gnu_cxx25__numeric_traits_floatingIeE16__max_exponent10E\0"
	.long	0x5ac7
	.word	0x1344
	.uleb128 0x35
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerImE8__digitsE\0"
	.long	0x5b36
	.byte	0x20
	.uleb128 0x35
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIcE5__maxE\0"
	.long	0x5b80
	.byte	0x7f
	.uleb128 0x53
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIsE5__minE\0"
	.long	0x5bdb
	.sleb128 -32768
	.uleb128 0x54
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIsE5__maxE\0"
	.long	0x5be7
	.word	0x7fff
	.uleb128 0x53
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIxE5__minE\0"
	.long	0x5c46
	.sleb128 -9223372036854775808
	.uleb128 0x8e
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIxE5__maxE\0"
	.long	0x5c52
	.quad	0x7fffffffffffffff
	.uleb128 0x69
	.ascii "_GLOBAL__sub_I__Z4func11MyValueTypeS_\0"
	.quad	.LFB2830
	.quad	.LFE2830-.LFB2830
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8f
	.ascii "__static_initialization_and_destruction_0\0"
	.quad	.LFB2828
	.quad	.LFE2828-.LFB2828
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ae9
	.uleb128 0x14
	.ascii "__initialize_p\0"
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.long	0x66a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.ascii "__priority\0"
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.long	0x66a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x69
	.ascii "__tcf_0\0"
	.quad	.LFB2829
	.quad	.LFE2829-.LFB2829
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x55
	.long	0x5335
	.quad	.LFB2825
	.quad	.LFE2825-.LFB2825
	.uleb128 0x1
	.byte	0x9c
	.long	0x8b91
	.uleb128 0x8
	.secrel32	.LASF40
	.long	0x862e
	.uleb128 0x8
	.secrel32	.LASF16
	.long	0x6614
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x85dd
	.uleb128 0x30
	.secrel32	.LASF54
	.byte	0x8
	.word	0x2e2
	.byte	0x20
	.long	0x862e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "__n\0"
	.byte	0x8
	.word	0x2e2
	.byte	0x2f
	.long	0x6614
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.secrel32	.LASF5
	.byte	0x8
	.word	0x2e2
	.byte	0x3f
	.long	0x864b
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x56
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x6a
	.ascii "__niter\0"
	.byte	0x8
	.word	0x2e4
	.byte	0x20
	.long	0x6614
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x55
	.long	0x544b
	.quad	.LFB2824
	.quad	.LFE2824-.LFB2824
	.uleb128 0x1
	.byte	0x9c
	.long	0x8bc7
	.uleb128 0x8
	.secrel32	.LASF41
	.long	0x862e
	.uleb128 0x18
	.ascii "__it\0"
	.byte	0x8
	.word	0x115
	.byte	0x1c
	.long	0x862e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x47
	.long	0x5fc8
	.long	0x8be6
	.quad	.LFB2823
	.quad	.LFE2823-.LFB2823
	.uleb128 0x1
	.byte	0x9c
	.long	0x8bf3
	.uleb128 0x22
	.secrel32	.LASF55
	.long	0x863a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.long	0x54c6
	.quad	.LFB2812
	.quad	.LFE2812-.LFB2812
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c5a
	.uleb128 0x12
	.ascii "_OI\0"
	.long	0x862e
	.uleb128 0x8
	.secrel32	.LASF16
	.long	0x6614
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x85dd
	.uleb128 0x30
	.secrel32	.LASF54
	.byte	0x8
	.word	0x310
	.byte	0x10
	.long	0x862e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "__n\0"
	.byte	0x8
	.word	0x310
	.byte	0x1f
	.long	0x6614
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.secrel32	.LASF5
	.byte	0x8
	.word	0x310
	.byte	0x2f
	.long	0x864b
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x31
	.long	0x5ee1
	.long	0x8c79
	.quad	.LFB2811
	.quad	.LFE2811-.LFB2811
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c9d
	.uleb128 0x22
	.secrel32	.LASF55
	.long	0x8623
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.ascii "__n\0"
	.byte	0x4
	.byte	0x63
	.byte	0x1a
	.long	0x5f4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	0x7adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x2c
	.long	0x1c3c
	.quad	.LFB2783
	.quad	.LFE2783-.LFB2783
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ceb
	.uleb128 0x8
	.secrel32	.LASF15
	.long	0x862e
	.uleb128 0x8
	.secrel32	.LASF16
	.long	0x6614
	.uleb128 0x30
	.secrel32	.LASF54
	.byte	0x6
	.word	0x21f
	.byte	0x2d
	.long	0x862e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "__n\0"
	.byte	0x6
	.word	0x21f
	.byte	0x3c
	.long	0x6614
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x31
	.long	0x5f5b
	.long	0x8d0a
	.quad	.LFB2782
	.quad	.LFE2782-.LFB2782
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d2e
	.uleb128 0x22
	.secrel32	.LASF55
	.long	0x8623
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.ascii "__p\0"
	.byte	0x4
	.byte	0x74
	.byte	0x1a
	.long	0x5dca
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	0x5f4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x2c
	.long	0x25d2
	.quad	.LFB2781
	.quad	.LFE2781-.LFB2781
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d6a
	.uleb128 0x18
	.ascii "__a\0"
	.byte	0x7
	.word	0x1b3
	.byte	0x20
	.long	0x8662
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "__n\0"
	.byte	0x7
	.word	0x1b3
	.byte	0x2f
	.long	0x2648
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x23
	.long	0x5d07
	.long	0x8d78
	.byte	0x2
	.long	0x8d87
	.uleb128 0x1a
	.secrel32	.LASF55
	.long	0x8623
	.uleb128 0x1
	.long	0x8628
	.byte	0
	.uleb128 0x57
	.long	0x8d6a
	.ascii "_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC2ERKS2_\0"
	.long	0x8de8
	.quad	.LFB2779
	.quad	.LFE2779-.LFB2779
	.uleb128 0x1
	.byte	0x9c
	.long	0x8df9
	.uleb128 0x16
	.long	0x8d78
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	0x8d81
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x55
	.long	0x1b88
	.quad	.LFB2748
	.quad	.LFE2748-.LFB2748
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e2e
	.uleb128 0x8
	.secrel32	.LASF15
	.long	0x862e
	.uleb128 0x36
	.long	0x862e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	0x862e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2c
	.long	0x558f
	.quad	.LFB2747
	.quad	.LFE2747-.LFB2747
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e95
	.uleb128 0x8
	.secrel32	.LASF15
	.long	0x862e
	.uleb128 0x8
	.secrel32	.LASF16
	.long	0x6614
	.uleb128 0x30
	.secrel32	.LASF54
	.byte	0x6
	.word	0x23e
	.byte	0x30
	.long	0x862e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "__n\0"
	.byte	0x6
	.word	0x23e
	.byte	0x3f
	.long	0x6614
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x6a
	.ascii "__assignable\0"
	.byte	0x6
	.word	0x243
	.byte	0x12
	.long	0x767a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2c
	.long	0x26dd
	.quad	.LFB2746
	.quad	.LFE2746-.LFB2746
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ee1
	.uleb128 0x18
	.ascii "__a\0"
	.byte	0x7
	.word	0x1cd
	.byte	0x22
	.long	0x8662
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "__p\0"
	.byte	0x7
	.word	0x1cd
	.byte	0x2f
	.long	0x25c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.ascii "__n\0"
	.byte	0x7
	.word	0x1cd
	.byte	0x3e
	.long	0x2648
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x31
	.long	0x2faa
	.long	0x8f00
	.quad	.LFB2745
	.quad	.LFE2745-.LFB2745
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f1d
	.uleb128 0x22
	.secrel32	.LASF55
	.long	0x86a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "__n\0"
	.byte	0x3
	.word	0x125
	.byte	0x1a
	.long	0x10e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x23
	.long	0x24eb
	.long	0x8f2b
	.byte	0x2
	.long	0x8f41
	.uleb128 0x1a
	.secrel32	.LASF55
	.long	0x8657
	.uleb128 0x6b
	.ascii "__a\0"
	.byte	0x2
	.byte	0x85
	.byte	0x22
	.long	0x865c
	.byte	0
	.uleb128 0x25
	.long	0x8f1d
	.ascii "_ZNSaI25WrappingValueTypeInstanceEC2ERKS0_\0"
	.long	0x8f8b
	.quad	.LFB2743
	.quad	.LFE2743-.LFB2743
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f9c
	.uleb128 0x16
	.long	0x8f2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	0x8f34
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2c
	.long	0x564e
	.quad	.LFB2707
	.quad	.LFE2707-.LFB2707
	.uleb128 0x1
	.byte	0x9c
	.long	0x8fe2
	.uleb128 0x8
	.secrel32	.LASF15
	.long	0x862e
	.uleb128 0x6c
	.secrel32	.LASF54
	.byte	0x5
	.byte	0x7f
	.byte	0x1f
	.long	0x862e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.ascii "__last\0"
	.byte	0x5
	.byte	0x7f
	.byte	0x39
	.long	0x862e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2c
	.long	0x56c1
	.quad	.LFB2706
	.quad	.LFE2706-.LFB2706
	.uleb128 0x1
	.byte	0x9c
	.long	0x9041
	.uleb128 0x8
	.secrel32	.LASF15
	.long	0x862e
	.uleb128 0x8
	.secrel32	.LASF16
	.long	0x6614
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x85dd
	.uleb128 0x30
	.secrel32	.LASF54
	.byte	0x6
	.word	0x283
	.byte	0x32
	.long	0x862e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "__n\0"
	.byte	0x6
	.word	0x283
	.byte	0x41
	.long	0x6614
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	0x866e
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x31
	.long	0x3019
	.long	0x9060
	.quad	.LFB2705
	.quad	.LFE2705-.LFB2705
	.uleb128 0x1
	.byte	0x9c
	.long	0x908d
	.uleb128 0x22
	.secrel32	.LASF55
	.long	0x86a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "__p\0"
	.byte	0x3
	.word	0x12c
	.byte	0x1d
	.long	0x2b3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.ascii "__n\0"
	.byte	0x3
	.word	0x12c
	.byte	0x29
	.long	0x10e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x31
	.long	0x3091
	.long	0x90ac
	.quad	.LFB2704
	.quad	.LFE2704-.LFB2704
	.uleb128 0x1
	.byte	0x9c
	.long	0x90c9
	.uleb128 0x22
	.secrel32	.LASF55
	.long	0x86a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "__n\0"
	.byte	0x3
	.word	0x135
	.byte	0x20
	.long	0x10e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x23
	.long	0x2984
	.long	0x90d7
	.byte	0x2
	.long	0x90ed
	.uleb128 0x1a
	.secrel32	.LASF55
	.long	0x8686
	.uleb128 0x6b
	.ascii "__a\0"
	.byte	0x3
	.byte	0x63
	.byte	0x25
	.long	0x868b
	.byte	0
	.uleb128 0x25
	.long	0x90c9
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implC1ERKS1_\0"
	.long	0x915a
	.quad	.LFB2703
	.quad	.LFE2703-.LFB2703
	.uleb128 0x1
	.byte	0x9c
	.long	0x916b
	.uleb128 0x16
	.long	0x90d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	0x90e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x47
	.long	0x4ef7
	.long	0x9193
	.quad	.LFB2664
	.quad	.LFE2664-.LFB2664
	.uleb128 0x1
	.byte	0x9c
	.long	0x91b2
	.uleb128 0x12
	.ascii "_Up\0"
	.long	0x85dd
	.uleb128 0x22
	.secrel32	.LASF55
	.long	0x86ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "__ptr\0"
	.byte	0x3
	.word	0x6a4
	.byte	0x13
	.long	0x862e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2c
	.long	0x57b8
	.quad	.LFB2663
	.quad	.LFE2663-.LFB2663
	.uleb128 0x1
	.byte	0x9c
	.long	0x9209
	.uleb128 0x8
	.secrel32	.LASF15
	.long	0x862e
	.uleb128 0x12
	.ascii "_Tp\0"
	.long	0x85dd
	.uleb128 0x6c
	.secrel32	.LASF54
	.byte	0x5
	.byte	0xcb
	.byte	0x1f
	.long	0x862e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.ascii "__last\0"
	.byte	0x5
	.byte	0xcb
	.byte	0x39
	.long	0x862e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	0x866e
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x47
	.long	0x2b63
	.long	0x9228
	.quad	.LFB2662
	.quad	.LFE2662-.LFB2662
	.uleb128 0x1
	.byte	0x9c
	.long	0x9235
	.uleb128 0x22
	.secrel32	.LASF55
	.long	0x86a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.long	0x4843
	.long	0x9254
	.quad	.LFB2661
	.quad	.LFE2661-.LFB2661
	.uleb128 0x1
	.byte	0x9c
	.long	0x9271
	.uleb128 0x22
	.secrel32	.LASF55
	.long	0x86c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "__n\0"
	.byte	0x3
	.word	0x5ca
	.byte	0x27
	.long	0x32c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x23
	.long	0x2f36
	.long	0x927f
	.byte	0x2
	.long	0x9292
	.uleb128 0x1a
	.secrel32	.LASF55
	.long	0x86a9
	.uleb128 0x1a
	.secrel32	.LASF56
	.long	0x66ae
	.byte	0
	.uleb128 0x25
	.long	0x9271
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EED2Ev\0"
	.long	0x92ed
	.quad	.LFB2659
	.quad	.LFE2659-.LFB2659
	.uleb128 0x1
	.byte	0x9c
	.long	0x92f6
	.uleb128 0x16
	.long	0x927f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.long	0x2db9
	.long	0x9304
	.byte	0x2
	.long	0x9328
	.uleb128 0x1a
	.secrel32	.LASF55
	.long	0x86a9
	.uleb128 0x48
	.ascii "__n\0"
	.byte	0x3
	.word	0x102
	.byte	0x1b
	.long	0x10e3
	.uleb128 0x48
	.ascii "__a\0"
	.byte	0x3
	.word	0x102
	.byte	0x36
	.long	0x86b4
	.byte	0
	.uleb128 0x25
	.long	0x92f6
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EEC2EyRKS1_\0"
	.long	0x9388
	.quad	.LFB2656
	.quad	.LFE2656-.LFB2656
	.uleb128 0x1
	.byte	0x9c
	.long	0x93a1
	.uleb128 0x16
	.long	0x9304
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	0x930d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	0x931a
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x90
	.long	0x2ad2
	.byte	0x3
	.byte	0x58
	.byte	0xe
	.long	0x93b3
	.byte	0x2
	.long	0x93c6
	.uleb128 0x1a
	.secrel32	.LASF55
	.long	0x8686
	.uleb128 0x1a
	.secrel32	.LASF56
	.long	0x66ae
	.byte	0
	.uleb128 0x25
	.long	0x93a1
	.ascii "_ZNSt12_Vector_baseI25WrappingValueTypeInstanceSaIS0_EE12_Vector_implD1Ev\0"
	.long	0x942f
	.quad	.LFB2655
	.quad	.LFE2655-.LFB2655
	.uleb128 0x1
	.byte	0x9c
	.long	0x9438
	.uleb128 0x16
	.long	0x93b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.long	0x5d65
	.long	0x9446
	.byte	0x2
	.long	0x9459
	.uleb128 0x1a
	.secrel32	.LASF55
	.long	0x8623
	.uleb128 0x1a
	.secrel32	.LASF56
	.long	0x66ae
	.byte	0
	.uleb128 0x57
	.long	0x9438
	.ascii "_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceED2Ev\0"
	.long	0x94b6
	.quad	.LFB2650
	.quad	.LFE2650-.LFB2650
	.uleb128 0x1
	.byte	0x9c
	.long	0x94bf
	.uleb128 0x16
	.long	0x9446
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.long	0x5cb2
	.long	0x94cd
	.byte	0x2
	.long	0x94d7
	.uleb128 0x1a
	.secrel32	.LASF55
	.long	0x8623
	.byte	0
	.uleb128 0x57
	.long	0x94bf
	.ascii "_ZN9__gnu_cxx13new_allocatorI25WrappingValueTypeInstanceEC2Ev\0"
	.long	0x9534
	.quad	.LFB2647
	.quad	.LFE2647-.LFB2647
	.uleb128 0x1
	.byte	0x9c
	.long	0x953d
	.uleb128 0x16
	.long	0x94cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.long	0x4201
	.long	0x955c
	.quad	.LFB2534
	.quad	.LFE2534-.LFB2534
	.uleb128 0x1
	.byte	0x9c
	.long	0x9569
	.uleb128 0x22
	.secrel32	.LASF55
	.long	0x86c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x47
	.long	0x3ed3
	.long	0x9588
	.quad	.LFB2533
	.quad	.LFE2533-.LFB2533
	.uleb128 0x1
	.byte	0x9c
	.long	0x95a5
	.uleb128 0x22
	.secrel32	.LASF55
	.long	0x86c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "__n\0"
	.byte	0x3
	.word	0x3a2
	.byte	0x1c
	.long	0x32c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x23
	.long	0x352d
	.long	0x95b3
	.byte	0x2
	.long	0x95c6
	.uleb128 0x1a
	.secrel32	.LASF55
	.long	0x86c6
	.uleb128 0x1a
	.secrel32	.LASF56
	.long	0x66ae
	.byte	0
	.uleb128 0x25
	.long	0x95a5
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EED1Ev\0"
	.long	0x961a
	.quad	.LFB2532
	.quad	.LFE2532-.LFB2532
	.uleb128 0x1
	.byte	0x9c
	.long	0x9623
	.uleb128 0x16
	.long	0x95b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.long	0x326c
	.long	0x9631
	.byte	0x2
	.long	0x9655
	.uleb128 0x1a
	.secrel32	.LASF55
	.long	0x86c6
	.uleb128 0x48
	.ascii "__n\0"
	.byte	0x3
	.word	0x19f
	.byte	0x18
	.long	0x32c8
	.uleb128 0x48
	.ascii "__a\0"
	.byte	0x3
	.word	0x19f
	.byte	0x33
	.long	0x86cb
	.byte	0
	.uleb128 0x25
	.long	0x9623
	.ascii "_ZNSt6vectorI25WrappingValueTypeInstanceSaIS0_EEC1EyRKS1_\0"
	.long	0x96ae
	.quad	.LFB2529
	.quad	.LFE2529-.LFB2529
	.uleb128 0x1
	.byte	0x9c
	.long	0x96c7
	.uleb128 0x16
	.long	0x9631
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	0x963a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	0x9647
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x23
	.long	0x2532
	.long	0x96d5
	.byte	0x2
	.long	0x96e8
	.uleb128 0x1a
	.secrel32	.LASF55
	.long	0x8657
	.uleb128 0x1a
	.secrel32	.LASF56
	.long	0x66ae
	.byte	0
	.uleb128 0x25
	.long	0x96c7
	.ascii "_ZNSaI25WrappingValueTypeInstanceED1Ev\0"
	.long	0x972e
	.quad	.LFB2526
	.quad	.LFE2526-.LFB2526
	.uleb128 0x1
	.byte	0x9c
	.long	0x9737
	.uleb128 0x16
	.long	0x96d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.long	0x96c7
	.ascii "_ZNSaI25WrappingValueTypeInstanceED2Ev\0"
	.long	0x977d
	.quad	.LFB2525
	.quad	.LFE2525-.LFB2525
	.uleb128 0x1
	.byte	0x9c
	.long	0x9786
	.uleb128 0x16
	.long	0x96d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.long	0x24ad
	.long	0x9794
	.byte	0x2
	.long	0x979e
	.uleb128 0x1a
	.secrel32	.LASF55
	.long	0x8657
	.byte	0
	.uleb128 0x25
	.long	0x9786
	.ascii "_ZNSaI25WrappingValueTypeInstanceEC1Ev\0"
	.long	0x97e4
	.quad	.LFB2523
	.quad	.LFE2523-.LFB2523
	.uleb128 0x1
	.byte	0x9c
	.long	0x97ed
	.uleb128 0x16
	.long	0x9794
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x91
	.ascii "main\0"
	.byte	0x1
	.byte	0x3f
	.byte	0x5
	.long	0x66a7
	.quad	.LFB2280
	.quad	.LFE2280-.LFB2280
	.uleb128 0x1
	.byte	0x9c
	.long	0x99bc
	.uleb128 0x19
	.ascii "obj\0"
	.byte	0x1
	.byte	0x47
	.byte	0xe
	.long	0x85b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -157
	.uleb128 0x19
	.ascii "num\0"
	.byte	0x1
	.byte	0x48
	.byte	0x15
	.long	0x6614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x19
	.ascii "reflfunc\0"
	.byte	0x1
	.byte	0x4e
	.byte	0x9
	.long	0x99c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x19
	.ascii "inst\0"
	.byte	0x1
	.byte	0x52
	.byte	0x1c
	.long	0x85dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x19
	.ascii "sendbuf\0"
	.byte	0x1
	.byte	0x5c
	.byte	0x10
	.long	0x7b5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x19
	.ascii "num_args\0"
	.byte	0x1
	.byte	0x61
	.byte	0x9
	.long	0x6605
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.ascii "args\0"
	.byte	0x1
	.byte	0x63
	.byte	0x29
	.long	0x3121
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x19
	.ascii "funcret\0"
	.byte	0x1
	.byte	0x6c
	.byte	0x8
	.long	0x763d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x19
	.ascii "func_to_call_with_inline_asm\0"
	.byte	0x1
	.byte	0x6d
	.byte	0x8
	.long	0x763d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x19
	.ascii "stackadd\0"
	.byte	0x1
	.byte	0x6f
	.byte	0x9
	.long	0x6605
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x19
	.ascii "argsarr\0"
	.byte	0x1
	.byte	0x71
	.byte	0x1d
	.long	0x862e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x19
	.ascii "first_arg\0"
	.byte	0x1
	.byte	0x78
	.byte	0x1c
	.long	0x85dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x19
	.ascii "second_arg\0"
	.byte	0x1
	.byte	0x79
	.byte	0x1c
	.long	0x85dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x19
	.ascii "third_arg\0"
	.byte	0x1
	.byte	0x7a
	.byte	0x1c
	.long	0x85dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x19
	.ascii "fourth_arg\0"
	.byte	0x1
	.byte	0x7b
	.byte	0x1c
	.long	0x85dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x92
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x9979
	.uleb128 0x19
	.ascii "argi\0"
	.byte	0x1
	.byte	0x65
	.byte	0xe
	.long	0x6605
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x56
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x19
	.ascii "i\0"
	.byte	0x1
	.byte	0x7f
	.byte	0xf
	.long	0x6605
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x56
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x19
	.ascii "arg\0"
	.byte	0x1
	.byte	0x81
	.byte	0x1e
	.long	0x85dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x68
	.long	0x99c3
	.uleb128 0x1d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x99bc
	.uleb128 0x6d
	.ascii "func10\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.ascii "_Z6func1011MyValueTypeS_S_S_S_S_S_S_S_S_\0"
	.quad	.LFB2279
	.quad	.LFE2279-.LFB2279
	.uleb128 0x1
	.byte	0x9c
	.long	0x9abc
	.uleb128 0x14
	.ascii "arg\0"
	.byte	0x1
	.byte	0x2c
	.byte	0xe
	.long	0x85b6
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.ascii "arg2\0"
	.byte	0x1
	.byte	0x2c
	.byte	0x1f
	.long	0x85b6
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.ascii "arg3\0"
	.byte	0x1
	.byte	0x2c
	.byte	0x31
	.long	0x85b6
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x14
	.ascii "arg4\0"
	.byte	0x1
	.byte	0x2c
	.byte	0x43
	.long	0x85b6
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x14
	.ascii "arg5\0"
	.byte	0x1
	.byte	0x2c
	.byte	0x55
	.long	0x85b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 32
	.byte	0x6
	.uleb128 0x14
	.ascii "arg6\0"
	.byte	0x1
	.byte	0x2d
	.byte	0xe
	.long	0x85b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 40
	.byte	0x6
	.uleb128 0x14
	.ascii "arg7\0"
	.byte	0x1
	.byte	0x2d
	.byte	0x20
	.long	0x85b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 48
	.byte	0x6
	.uleb128 0x14
	.ascii "arg8\0"
	.byte	0x1
	.byte	0x2d
	.byte	0x32
	.long	0x85b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 56
	.byte	0x6
	.uleb128 0x14
	.ascii "arg9\0"
	.byte	0x1
	.byte	0x2d
	.byte	0x44
	.long	0x85b6
	.uleb128 0x4
	.byte	0x91
	.sleb128 64
	.byte	0x6
	.uleb128 0x14
	.ascii "arg10\0"
	.byte	0x1
	.byte	0x2d
	.byte	0x56
	.long	0x85b6
	.uleb128 0x4
	.byte	0x91
	.sleb128 72
	.byte	0x6
	.byte	0
	.uleb128 0x6d
	.ascii "func5\0"
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.ascii "_Z5func511MyValueTypeS_S_S_S_\0"
	.quad	.LFB2278
	.quad	.LFE2278-.LFB2278
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b4b
	.uleb128 0x14
	.ascii "arg\0"
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.long	0x85b6
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.ascii "arg2\0"
	.byte	0x1
	.byte	0x1e
	.byte	0x29
	.long	0x85b6
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.ascii "arg3\0"
	.byte	0x1
	.byte	0x1e
	.byte	0x3b
	.long	0x85b6
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x14
	.ascii "arg4\0"
	.byte	0x1
	.byte	0x1e
	.byte	0x4d
	.long	0x85b6
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x14
	.ascii "arg5\0"
	.byte	0x1
	.byte	0x1e
	.byte	0x5f
	.long	0x85b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 32
	.byte	0x6
	.byte	0
	.uleb128 0x93
	.ascii "func\0"
	.byte	0x1
	.byte	0x16
	.byte	0x6
	.ascii "_Z4func11MyValueTypeS_\0"
	.quad	.LFB2277
	.quad	.LFE2277-.LFB2277
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.ascii "arg\0"
	.byte	0x1
	.byte	0x16
	.byte	0x17
	.long	0x85b6
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.ascii "arg2\0"
	.byte	0x1
	.byte	0x16
	.byte	0x28
	.long	0x85b6
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1e
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x30
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x8b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0x34
	.byte	0
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x34
	.byte	0
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x56
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x59
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xa
	.uleb128 0x6c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5a
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5c
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5f
	.uleb128 0x1c
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x60
	.uleb128 0x1c
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x61
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x62
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x63
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x64
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x65
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x66
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x67
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x68
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x69
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6e
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x6f
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x70
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x71
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x72
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x73
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x74
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x75
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x76
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x77
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x78
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x79
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xa
	.uleb128 0x6c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7d
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7e
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7f
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x80
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x81
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x82
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x83
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x84
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x85
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x86
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x87
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x88
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x89
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8c
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8d
	.uleb128 0x34
	.byte	0
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8e
	.uleb128 0x34
	.byte	0
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x8f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x90
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x91
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x92
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x93
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x25c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB2523
	.quad	.LFE2523-.LFB2523
	.quad	.LFB2525
	.quad	.LFE2525-.LFB2525
	.quad	.LFB2526
	.quad	.LFE2526-.LFB2526
	.quad	.LFB2529
	.quad	.LFE2529-.LFB2529
	.quad	.LFB2532
	.quad	.LFE2532-.LFB2532
	.quad	.LFB2533
	.quad	.LFE2533-.LFB2533
	.quad	.LFB2534
	.quad	.LFE2534-.LFB2534
	.quad	.LFB2647
	.quad	.LFE2647-.LFB2647
	.quad	.LFB2650
	.quad	.LFE2650-.LFB2650
	.quad	.LFB2655
	.quad	.LFE2655-.LFB2655
	.quad	.LFB2656
	.quad	.LFE2656-.LFB2656
	.quad	.LFB2659
	.quad	.LFE2659-.LFB2659
	.quad	.LFB2661
	.quad	.LFE2661-.LFB2661
	.quad	.LFB2662
	.quad	.LFE2662-.LFB2662
	.quad	.LFB2663
	.quad	.LFE2663-.LFB2663
	.quad	.LFB2664
	.quad	.LFE2664-.LFB2664
	.quad	.LFB2703
	.quad	.LFE2703-.LFB2703
	.quad	.LFB2704
	.quad	.LFE2704-.LFB2704
	.quad	.LFB2705
	.quad	.LFE2705-.LFB2705
	.quad	.LFB2706
	.quad	.LFE2706-.LFB2706
	.quad	.LFB2707
	.quad	.LFE2707-.LFB2707
	.quad	.LFB2743
	.quad	.LFE2743-.LFB2743
	.quad	.LFB2745
	.quad	.LFE2745-.LFB2745
	.quad	.LFB2746
	.quad	.LFE2746-.LFB2746
	.quad	.LFB2747
	.quad	.LFE2747-.LFB2747
	.quad	.LFB2748
	.quad	.LFE2748-.LFB2748
	.quad	.LFB2779
	.quad	.LFE2779-.LFB2779
	.quad	.LFB2781
	.quad	.LFE2781-.LFB2781
	.quad	.LFB2782
	.quad	.LFE2782-.LFB2782
	.quad	.LFB2783
	.quad	.LFE2783-.LFB2783
	.quad	.LFB2811
	.quad	.LFE2811-.LFB2811
	.quad	.LFB2812
	.quad	.LFE2812-.LFB2812
	.quad	.LFB2823
	.quad	.LFE2823-.LFB2823
	.quad	.LFB2824
	.quad	.LFE2824-.LFB2824
	.quad	.LFB2825
	.quad	.LFE2825-.LFB2825
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB2523
	.quad	.LFE2523
	.quad	.LFB2525
	.quad	.LFE2525
	.quad	.LFB2526
	.quad	.LFE2526
	.quad	.LFB2529
	.quad	.LFE2529
	.quad	.LFB2532
	.quad	.LFE2532
	.quad	.LFB2533
	.quad	.LFE2533
	.quad	.LFB2534
	.quad	.LFE2534
	.quad	.LFB2647
	.quad	.LFE2647
	.quad	.LFB2650
	.quad	.LFE2650
	.quad	.LFB2655
	.quad	.LFE2655
	.quad	.LFB2656
	.quad	.LFE2656
	.quad	.LFB2659
	.quad	.LFE2659
	.quad	.LFB2661
	.quad	.LFE2661
	.quad	.LFB2662
	.quad	.LFE2662
	.quad	.LFB2663
	.quad	.LFE2663
	.quad	.LFB2664
	.quad	.LFE2664
	.quad	.LFB2703
	.quad	.LFE2703
	.quad	.LFB2704
	.quad	.LFE2704
	.quad	.LFB2705
	.quad	.LFE2705
	.quad	.LFB2706
	.quad	.LFE2706
	.quad	.LFB2707
	.quad	.LFE2707
	.quad	.LFB2743
	.quad	.LFE2743
	.quad	.LFB2745
	.quad	.LFE2745
	.quad	.LFB2746
	.quad	.LFE2746
	.quad	.LFB2747
	.quad	.LFE2747
	.quad	.LFB2748
	.quad	.LFE2748
	.quad	.LFB2779
	.quad	.LFE2779
	.quad	.LFB2781
	.quad	.LFE2781
	.quad	.LFB2782
	.quad	.LFE2782
	.quad	.LFB2783
	.quad	.LFE2783
	.quad	.LFB2811
	.quad	.LFE2811
	.quad	.LFB2812
	.quad	.LFE2812
	.quad	.LFB2823
	.quad	.LFE2823
	.quad	.LFB2824
	.quad	.LFE2824
	.quad	.LFB2825
	.quad	.LFE2825
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF52:
	.ascii "swprintf\0"
.LASF31:
	.ascii "const_iterator\0"
.LASF5:
	.ascii "__value\0"
.LASF18:
	.ascii "allocator\0"
.LASF46:
	.ascii "_Value\0"
.LASF40:
	.ascii "_OutputIterator\0"
.LASF41:
	.ascii "_Iterator\0"
.LASF50:
	.ascii "new_allocator\0"
.LASF51:
	.ascii "refcount\0"
.LASF0:
	.ascii "nothrow_t\0"
.LASF28:
	.ascii "_Vector_base\0"
.LASF29:
	.ascii "vector\0"
.LASF17:
	.ascii "allocator_arg_t\0"
.LASF6:
	.ascii "piecewise_construct_t\0"
.LASF37:
	.ascii "_M_erase\0"
.LASF44:
	.ascii "__is_signed\0"
.LASF38:
	.ascii "_M_move_assign\0"
.LASF54:
	.ascii "__first\0"
.LASF53:
	.ascii "vswprintf\0"
.LASF14:
	.ascii "_Traits\0"
.LASF35:
	.ascii "push_back\0"
.LASF16:
	.ascii "_Size\0"
.LASF7:
	.ascii "char_type\0"
.LASF1:
	.ascii "exception_ptr\0"
.LASF9:
	.ascii "to_char_type\0"
.LASF2:
	.ascii "operator=\0"
.LASF47:
	.ascii "__max_digits10\0"
.LASF3:
	.ascii "value_type\0"
.LASF11:
	.ascii "to_int_type\0"
.LASF20:
	.ascii "allocate\0"
.LASF22:
	.ascii "size_type\0"
.LASF33:
	.ascii "operator[]\0"
.LASF13:
	.ascii "_CharT\0"
.LASF56:
	.ascii "__in_chrg\0"
.LASF36:
	.ascii "insert\0"
.LASF55:
	.ascii "this\0"
.LASF8:
	.ascii "assign\0"
.LASF43:
	.ascii "__max\0"
.LASF48:
	.ascii "__digits10\0"
.LASF30:
	.ascii "iterator\0"
.LASF34:
	.ascii "const_reference\0"
.LASF27:
	.ascii "_M_get_Tp_allocator\0"
.LASF4:
	.ascii "operator()\0"
.LASF32:
	.ascii "reference\0"
.LASF42:
	.ascii "__min\0"
.LASF19:
	.ascii "pointer\0"
.LASF12:
	.ascii "eq_int_type\0"
.LASF39:
	.ascii "initializer_list\0"
.LASF26:
	.ascii "_Vector_impl\0"
.LASF24:
	.ascii "max_size\0"
.LASF25:
	.ascii "_Alloc\0"
.LASF10:
	.ascii "int_type\0"
.LASF49:
	.ascii "__max_exponent10\0"
.LASF15:
	.ascii "_ForwardIterator\0"
.LASF23:
	.ascii "deallocate\0"
.LASF45:
	.ascii "__digits\0"
.LASF21:
	.ascii "allocator_type\0"
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEy;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
