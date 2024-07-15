	.file	"MethodInfo.cpp"
	.intel_syntax noprefix
	.text
	.section	.text$_ZnwyPv,"x"
	.linkonce discard
	.globl	_ZnwyPv
	.def	_ZnwyPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZnwyPv
_ZnwyPv:
.LFB5047:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
.lcomm _ZStL8__ioinit,1,1
	.section	.text$_ZN3ULR10MemberInfoC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN3ULR10MemberInfoC2Ev
	.def	_ZN3ULR10MemberInfoC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3ULR10MemberInfoC2Ev
_ZN3ULR10MemberInfoC2Ev:
.LFB9399:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR .refptr._ZTVN3ULR10MemberInfoE[rip]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.text
	.align 2
	.globl	_ZN3ULR10MethodInfoC2EPcbSt6vectorIPNS_4TypeESaIS4_EES4_PvibS1_
	.def	_ZN3ULR10MethodInfoC2EPcbSt6vectorIPNS_4TypeESaIS4_EES4_PvibS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3ULR10MethodInfoC2EPcbSt6vectorIPNS_4TypeESaIS4_EES4_PvibS1_
_ZN3ULR10MethodInfoC2EPcbSt6vectorIPNS_4TypeESaIS4_EES4_PvibS1_:
.LFB9401:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -48[rbp], rcx
	mov	QWORD PTR -40[rbp], rdx
	mov	eax, r8d
	mov	QWORD PTR -24[rbp], r9
	mov	edx, DWORD PTR 8[rbp]
	mov	BYTE PTR -32[rbp], al
	mov	eax, edx
	mov	BYTE PTR -84[rbp], al
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZN3ULR10MemberInfoC2Ev
	lea	rdx, _ZTVN3ULR10MethodInfoE[rip+16]
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 48
	mov	rcx, rax
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEC1Ev
	mov	rax, QWORD PTR -48[rbp]
	mov	DWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	rdx, QWORD PTR -48[rbp]
	movzx	eax, BYTE PTR -32[rbp]
	mov	BYTE PTR 24[rdx], al
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 72[rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	edx, DWORD PTR 0[rbp]
	mov	DWORD PTR 40[rax], edx
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, rax
.LEHB0:
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEaSERKS4_
.LEHE0:
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 88[rax], rdx
	mov	rdx, QWORD PTR -48[rbp]
	movzx	eax, BYTE PTR -84[rbp]
	mov	BYTE PTR 44[rdx], al
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR 16[rbp]
	mov	QWORD PTR 80[rax], rdx
	jmp	.L7
.L6:
	mov	rbx, rax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 48
	mov	rcx, rax
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EED1Ev
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZN3ULR10MemberInfoD2Ev
	mov	rax, rbx
	mov	rcx, rax
.LEHB1:
	call	_Unwind_Resume
	nop
.LEHE1:
.L7:
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9401:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9401-.LLSDACSB9401
.LLSDACSB9401:
	.uleb128 .LEHB0-.LFB9401
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L6-.LFB9401
	.uleb128 0
	.uleb128 .LEHB1-.LFB9401
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE9401:
	.text
	.seh_endproc
	.globl	_ZN3ULR10MethodInfoC1EPcbSt6vectorIPNS_4TypeESaIS4_EES4_PvibS1_
	.def	_ZN3ULR10MethodInfoC1EPcbSt6vectorIPNS_4TypeESaIS4_EES4_PvibS1_;	.scl	2;	.type	32;	.endef
	.set	_ZN3ULR10MethodInfoC1EPcbSt6vectorIPNS_4TypeESaIS4_EES4_PvibS1_,_ZN3ULR10MethodInfoC2EPcbSt6vectorIPNS_4TypeESaIS4_EES4_PvibS1_
	.align 2
	.globl	_ZN3ULR10MethodInfoD2Ev
	.def	_ZN3ULR10MethodInfoD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3ULR10MethodInfoD2Ev
_ZN3ULR10MethodInfoD2Ev:
.LFB9404:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	lea	rdx, _ZTVN3ULR10MethodInfoE[rip+16]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 32[rax]
	mov	rcx, rax
	call	free
	mov	rax, QWORD PTR 16[rbp]
	add	rax, 48
	mov	rcx, rax
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EED1Ev
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZN3ULR10MemberInfoD2Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	_ZN3ULR10MethodInfoD1Ev
	.def	_ZN3ULR10MethodInfoD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3ULR10MethodInfoD1Ev,_ZN3ULR10MethodInfoD2Ev
	.align 2
	.globl	_ZN3ULR10MethodInfoD0Ev
	.def	_ZN3ULR10MethodInfoD0Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3ULR10MethodInfoD0Ev
_ZN3ULR10MethodInfoD0Ev:
.LFB9406:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN3ULR10MethodInfoD1Ev
	mov	edx, 96
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZdlPvy
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN3ULR10MethodInfo6InvokeEPcSt6vectorIS1_SaIS1_EE
	.def	_ZN3ULR10MethodInfo6InvokeEPcSt6vectorIS1_SaIS1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3ULR10MethodInfo6InvokeEPcSt6vectorIS1_SaIS1_EE
_ZN3ULR10MethodInfo6InvokeEPcSt6vectorIS1_SaIS1_EE:
.LFB9407:
	push	rbp
	.seh_pushreg	rbp
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 416
	.seh_stackalloc	416
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR 352[rbp], rcx
	mov	QWORD PTR 360[rbp], rdx
	mov	QWORD PTR 368[rbp], r8
	mov	rax, QWORD PTR 352[rbp]
	lea	rdx, 48[rax]
	lea	rax, -48[rbp]
	mov	rcx, rax
.LEHB2:
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEC1ERKS4_
.LEHE2:
	mov	rax, QWORD PTR 352[rbp]
	lea	rdx, 88[rax]
	lea	rax, -48[rbp]
	mov	rcx, rax
.LEHB3:
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_
	mov	rax, QWORD PTR 352[rbp]
	movzx	eax, BYTE PTR 24[rax]
	xor	eax, 1
	test	al, al
	je	.L11
	mov	rax, QWORD PTR 352[rbp]
	lea	rbx, 16[rax]
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1IPS3_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISC_SB_E7__valueES8_E6__typeEEE
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -48[rbp]
	mov	r8, rbx
	mov	rcx, rax
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE7emplaceIJRS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS8_IPKS2_S4_EEDpOT_
	mov	rax, QWORD PTR 352[rbp]
	mov	rax, QWORD PTR 16[rax]
	movzx	eax, BYTE PTR 8[rax]
	cmp	al, 1
	jne	.L12
	mov	rax, QWORD PTR 360[rbp]
	add	rax, 296
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 368[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPcSaIS0_EE5beginEv
	mov	QWORD PTR 8[rbp], rax
	lea	rdx, 8[rbp]
	mov	rax, rbp
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE
	lea	rcx, -8[rbp]
	mov	rdx, QWORD PTR 0[rbp]
	mov	rax, QWORD PTR 368[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt6vectorIPcSaIS0_EE7emplaceIJS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS5_IPKS0_S2_EEDpOT_
	jmp	.L11
.L12:
	mov	rax, QWORD PTR 368[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPcSaIS0_EE5beginEv
	mov	QWORD PTR 24[rbp], rax
	lea	rdx, 24[rbp]
	lea	rax, 16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE
	lea	rcx, 360[rbp]
	mov	rdx, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 368[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt6vectorIPcSaIS0_EE7emplaceIJRS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS6_IPKS0_S2_EEDpOT_
.LEHE3:
.L11:
	mov	rax, QWORD PTR 368[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIPcSaIS0_EE4sizeEv
	mov	QWORD PTR 136[rbp], rax
	lea	rax, 39[rbp]
	mov	rcx, rax
	call	_ZNSaIPvEC1Ev
	lea	rcx, 39[rbp]
	mov	rdx, QWORD PTR 136[rbp]
	lea	rax, -80[rbp]
	mov	r8, rcx
	mov	rcx, rax
.LEHB4:
	call	_ZNSt6vectorIPvSaIS0_EEC1EyRKS1_
.LEHE4:
	lea	rax, 39[rbp]
	mov	rcx, rax
	call	_ZNSaIPvED1Ev
	mov	rdx, QWORD PTR 136[rbp]
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEixEy
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 128[rbp], rax
	mov	QWORD PTR 280[rbp], 0
.L21:
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv
	sub	rax, 1
	cmp	QWORD PTR 280[rbp], rax
	setb	al
	test	al, al
	je	.L14
	mov	rdx, QWORD PTR 280[rbp]
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEixEy
	mov	rax, QWORD PTR [rax]
	movzx	eax, BYTE PTR 8[rax]
	cmp	al, 1
	sete	al
	test	al, al
	je	.L15
	mov	rdx, QWORD PTR 280[rbp]
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEixEy
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 40[rax]
	cmp	rax, 8
	ja	.L16
	mov	rax, QWORD PTR 352[rbp]
	movzx	eax, BYTE PTR 24[rax]
	test	al, al
	jne	.L17
	cmp	QWORD PTR 280[rbp], 0
	je	.L16
.L17:
	mov	eax, 1
	jmp	.L18
.L16:
	mov	eax, 0
.L18:
	test	al, al
	je	.L19
	mov	rdx, QWORD PTR 280[rbp]
	mov	rax, QWORD PTR 368[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPcSaIS0_EEixEy
	mov	rax, QWORD PTR [rax]
	add	rax, 8
	mov	rbx, QWORD PTR [rax]
	mov	rdx, QWORD PTR 280[rbp]
	lea	rax, -80[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPvSaIS0_EEixEy
	mov	QWORD PTR [rax], rbx
	jmp	.L20
.L19:
	mov	rdx, QWORD PTR 280[rbp]
	mov	rax, QWORD PTR 368[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPcSaIS0_EEixEy
	mov	rax, QWORD PTR [rax]
	lea	rbx, 8[rax]
	mov	rdx, QWORD PTR 280[rbp]
	lea	rax, -80[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPvSaIS0_EEixEy
	mov	QWORD PTR [rax], rbx
	jmp	.L20
.L15:
	mov	rdx, QWORD PTR 280[rbp]
	mov	rax, QWORD PTR 368[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPcSaIS0_EEixEy
	mov	rbx, QWORD PTR [rax]
	mov	rdx, QWORD PTR 280[rbp]
	lea	rax, -80[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPvSaIS0_EEixEy
	mov	QWORD PTR [rax], rbx
.L20:
	add	QWORD PTR 280[rbp], 1
	jmp	.L21
.L14:
	mov	rax, QWORD PTR 128[rbp]
	movzx	eax, BYTE PTR 8[rax]
	cmp	al, 1
	jne	.L22
	mov	rax, QWORD PTR 128[rbp]
	mov	rax, QWORD PTR 40[rax]
	cmp	rax, 8
	ja	.L23
	lea	rax, -80[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPvSaIS0_EE4dataEv
	mov	QWORD PTR 120[rbp], rax
	cmp	QWORD PTR 136[rbp], 0
	je	.L24
	mov	rax, QWORD PTR 120[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 272[rbp], rax
.L24:
	cmp	QWORD PTR 136[rbp], 1
	jbe	.L25
	mov	rax, QWORD PTR 120[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR 264[rbp], rax
.L25:
	cmp	QWORD PTR 136[rbp], 2
	jbe	.L26
	mov	rax, QWORD PTR 120[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR 256[rbp], rax
.L26:
	cmp	QWORD PTR 136[rbp], 3
	jbe	.L27
	mov	rax, QWORD PTR 120[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	QWORD PTR 248[rbp], rax
.L27:
	mov	QWORD PTR 240[rbp], 0
	cmp	QWORD PTR 136[rbp], 4
	jbe	.L28
	mov	rax, QWORD PTR 136[rbp]
	sal	rax, 3
	sub	rax, 32
	mov	QWORD PTR 240[rbp], rax
	mov	rax, QWORD PTR 136[rbp]
	sub	rax, 1
	mov	QWORD PTR 232[rbp], rax
.L30:
	cmp	QWORD PTR 232[rbp], 3
	jbe	.L28
	mov	rax, QWORD PTR 232[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 120[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 112[rbp], rax
	mov	rax, QWORD PTR 136[rbp]
	sub	rax, QWORD PTR 232[rbp]
	add	rax, 3
	sal	rax, 3
	sub	rax, QWORD PTR 240[rbp]
	mov	rdx, QWORD PTR 112[rbp]
/APP
 # 100 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	mov [rsp+rax], rdx
	
 # 0 "" 2
/NO_APP
	sub	QWORD PTR 232[rbp], 1
	jmp	.L30
.L28:
	cmp	QWORD PTR 136[rbp], 3
	jbe	.L31
	mov	rax, QWORD PTR 352[rbp]
	mov	r13, QWORD PTR 72[rax]
	mov	rbx, QWORD PTR 272[rbp]
	mov	rsi, QWORD PTR 264[rbp]
	mov	rdi, QWORD PTR 256[rbp]
	mov	r12, QWORD PTR 248[rbp]
	mov	r14, QWORD PTR 240[rbp]
/APP
 # 121 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	sub rsp, r14
	mov rcx, rbx
	movq xmm0, rbx
	mov rdx, rsi
	movq xmm1, rsi
	mov r8, rdi
	movq xmm2, rdi
	mov r9, r12
	movq xmm3, r12
	call r13
	add rsp, r14
	mov rbx, rax
	
 # 0 "" 2
/NO_APP
	mov	QWORD PTR -88[rbp], rbx
	jmp	.L32
.L31:
	cmp	QWORD PTR 136[rbp], 2
	jbe	.L33
	mov	rax, QWORD PTR 352[rbp]
	mov	r12, QWORD PTR 72[rax]
	mov	rbx, QWORD PTR 272[rbp]
	mov	rsi, QWORD PTR 264[rbp]
	mov	rdi, QWORD PTR 256[rbp]
	mov	r13, QWORD PTR 240[rbp]
/APP
 # 137 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	sub rsp, r13
	mov rcx, rbx
	movq xmm0, rbx
	mov rdx, rsi
	movq xmm1, rsi
	mov r8, rdi
	movq xmm2, rdi
	call r12
	add rsp, r13
	mov rbx, rax
	
 # 0 "" 2
/NO_APP
	mov	QWORD PTR -88[rbp], rbx
	jmp	.L32
.L33:
	cmp	QWORD PTR 136[rbp], 1
	jbe	.L34
	mov	rax, QWORD PTR 352[rbp]
	mov	rdi, QWORD PTR 72[rax]
	mov	rbx, QWORD PTR 272[rbp]
	mov	rsi, QWORD PTR 264[rbp]
	mov	r12, QWORD PTR 240[rbp]
/APP
 # 151 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	sub rsp, r12
	mov rcx, rbx
	movq xmm0, rbx
	mov rdx, rsi
	movq xmm1, rsi
	call rdi
	add rsp, r12
	mov rbx, rax
	
 # 0 "" 2
/NO_APP
	mov	QWORD PTR -88[rbp], rbx
	jmp	.L32
.L34:
	cmp	QWORD PTR 136[rbp], 0
	je	.L35
	mov	rax, QWORD PTR 352[rbp]
	mov	rsi, QWORD PTR 72[rax]
	mov	rbx, QWORD PTR 272[rbp]
	mov	rdi, QWORD PTR 240[rbp]
/APP
 # 163 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	sub rsp, rdi
	mov rcx, rbx
	movq xmm0, rbx
	call rsi
	add rsp, rdi
	mov rbx, rax
	
 # 0 "" 2
/NO_APP
	mov	QWORD PTR -88[rbp], rbx
	jmp	.L32
.L35:
	mov	rax, QWORD PTR 352[rbp]
	mov	rbx, QWORD PTR 72[rax]
	mov	rsi, QWORD PTR 240[rbp]
/APP
 # 173 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	sub rsp, rsi
	call rbx
	add rsp, rsi
	mov rbx, rax
	
 # 0 "" 2
/NO_APP
	mov	QWORD PTR -88[rbp], rbx
.L32:
	mov	rax, QWORD PTR .refptr.internal_api[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 128[rbp]
	mov	rdx, QWORD PTR 40[rdx]
	add	rdx, 8
	mov	rcx, rax
.LEHB5:
	call	_ZN3ULR8Resolver10ULRAPIImpl14AllocateObjectEy
	mov	QWORD PTR 104[rbp], rax
	mov	rax, QWORD PTR 104[rbp]
	mov	rdx, QWORD PTR 128[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 128[rbp]
	mov	rdx, QWORD PTR 40[rax]
	mov	rax, QWORD PTR 104[rbp]
	lea	rcx, 8[rax]
	lea	rax, -88[rbp]
	mov	r8, rdx
	mov	rdx, rax
	call	memcpy
	mov	rbx, QWORD PTR 104[rbp]
	jmp	.L36
.L23:
	mov	rax, QWORD PTR .refptr.internal_api[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 128[rbp]
	mov	rdx, QWORD PTR 40[rdx]
	add	rdx, 8
	mov	rcx, rax
	call	_ZN3ULR8Resolver10ULRAPIImpl14AllocateObjectEy
	mov	QWORD PTR 96[rbp], rax
	mov	rax, QWORD PTR 96[rbp]
	mov	rdx, QWORD PTR 128[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 96[rbp]
	add	rax, 8
	mov	QWORD PTR 40[rbp], rax
	lea	rax, -80[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPvSaIS0_EE5beginEv
	mov	QWORD PTR 56[rbp], rax
	lea	rdx, 56[rbp]
	lea	rax, 48[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE
	lea	rcx, 40[rbp]
	mov	rdx, QWORD PTR 48[rbp]
	lea	rax, -80[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt6vectorIPvSaIS0_EE7emplaceIJPPN3ULR4TypeEEEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS9_IPKS0_S2_EEDpOT_
.LEHE5:
	lea	rax, -80[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIPvSaIS0_EE4sizeEv
	mov	QWORD PTR 136[rbp], rax
	lea	rax, -80[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPvSaIS0_EE4dataEv
	mov	QWORD PTR 88[rbp], rax
	cmp	QWORD PTR 136[rbp], 0
	je	.L37
	mov	rax, QWORD PTR 88[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 224[rbp], rax
.L37:
	cmp	QWORD PTR 136[rbp], 1
	jbe	.L38
	mov	rax, QWORD PTR 88[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR 216[rbp], rax
.L38:
	cmp	QWORD PTR 136[rbp], 2
	jbe	.L39
	mov	rax, QWORD PTR 88[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR 208[rbp], rax
.L39:
	cmp	QWORD PTR 136[rbp], 3
	jbe	.L40
	mov	rax, QWORD PTR 88[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	QWORD PTR 200[rbp], rax
.L40:
	cmp	QWORD PTR 136[rbp], 4
	jbe	.L41
	mov	rax, QWORD PTR 136[rbp]
	sub	rax, 1
	mov	QWORD PTR 192[rbp], rax
.L43:
	cmp	QWORD PTR 192[rbp], 3
	jbe	.L41
	mov	rax, QWORD PTR 192[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 88[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 80[rbp], rax
	mov	rax, QWORD PTR 136[rbp]
	sub	rax, QWORD PTR 192[rbp]
	add	rax, 3
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 80[rbp]
/APP
 # 214 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	mov [rsp+rdx], rax
	
 # 0 "" 2
/NO_APP
	sub	QWORD PTR 192[rbp], 1
	jmp	.L43
.L41:
	cmp	QWORD PTR 136[rbp], 3
	jbe	.L44
	mov	rax, QWORD PTR 352[rbp]
	mov	r13, QWORD PTR 72[rax]
	mov	rbx, QWORD PTR 224[rbp]
	mov	rsi, QWORD PTR 216[rbp]
	mov	rdi, QWORD PTR 208[rbp]
	mov	r12, QWORD PTR 200[rbp]
/APP
 # 232 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	mov rcx, rbx
	movq xmm0, rbx
	mov rdx, rsi
	movq xmm1, rsi
	mov r8, rdi
	movq xmm2, rdi
	mov r9, r12
	movq xmm3, r12
	call r13
	
 # 0 "" 2
/NO_APP
	jmp	.L45
.L44:
	cmp	QWORD PTR 136[rbp], 2
	jbe	.L46
	mov	rax, QWORD PTR 352[rbp]
	mov	r12, QWORD PTR 72[rax]
	mov	rbx, QWORD PTR 224[rbp]
	mov	rsi, QWORD PTR 216[rbp]
	mov	rdi, QWORD PTR 208[rbp]
/APP
 # 245 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	mov rcx, rbx
	movq xmm0, rbx
	mov rdx, rsi
	movq xmm1, rsi
	mov r8, rdi
	movq xmm2, rdi
	call r12
	
 # 0 "" 2
/NO_APP
	jmp	.L45
.L46:
	cmp	QWORD PTR 136[rbp], 1
	jbe	.L47
	mov	rax, QWORD PTR 352[rbp]
	mov	rdi, QWORD PTR 72[rax]
	mov	rbx, QWORD PTR 224[rbp]
	mov	rsi, QWORD PTR 216[rbp]
/APP
 # 256 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	mov rcx, rbx
	movq xmm0, rbx
	mov rdx, rsi
	movq xmm1, rsi
	call rdi
	
 # 0 "" 2
/NO_APP
	jmp	.L45
.L47:
	cmp	QWORD PTR 136[rbp], 0
	je	.L45
	mov	rax, QWORD PTR 352[rbp]
	mov	rsi, QWORD PTR 72[rax]
	mov	rbx, QWORD PTR 224[rbp]
/APP
 # 265 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	mov rcx, rbx
	movq xmm0, rbx
	call rsi
	
 # 0 "" 2
/NO_APP
.L45:
	mov	rbx, QWORD PTR 96[rbp]
	jmp	.L36
.L22:
	lea	rax, -80[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPvSaIS0_EE4dataEv
	mov	QWORD PTR 72[rbp], rax
	cmp	QWORD PTR 136[rbp], 0
	je	.L48
	mov	rax, QWORD PTR 72[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 176[rbp], rax
.L48:
	cmp	QWORD PTR 136[rbp], 1
	jbe	.L49
	mov	rax, QWORD PTR 72[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR 168[rbp], rax
.L49:
	cmp	QWORD PTR 136[rbp], 2
	jbe	.L50
	mov	rax, QWORD PTR 72[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR 160[rbp], rax
.L50:
	cmp	QWORD PTR 136[rbp], 3
	jbe	.L51
	mov	rax, QWORD PTR 72[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	QWORD PTR 152[rbp], rax
.L51:
	cmp	QWORD PTR 136[rbp], 4
	jbe	.L52
	mov	rax, QWORD PTR 136[rbp]
	sub	rax, 1
	mov	QWORD PTR 144[rbp], rax
.L54:
	cmp	QWORD PTR 144[rbp], 3
	jbe	.L52
	mov	rax, QWORD PTR 144[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 72[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 64[rbp], rax
	mov	rax, QWORD PTR 136[rbp]
	sub	rax, QWORD PTR 144[rbp]
	add	rax, 3
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 64[rbp]
/APP
 # 294 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	mov [rsp+rdx], rax
	
 # 0 "" 2
/NO_APP
	sub	QWORD PTR 144[rbp], 1
	jmp	.L54
.L52:
	cmp	QWORD PTR 136[rbp], 3
	jbe	.L55
	mov	rax, QWORD PTR 352[rbp]
	mov	r13, QWORD PTR 72[rax]
	mov	rbx, QWORD PTR 176[rbp]
	mov	rsi, QWORD PTR 168[rbp]
	mov	rdi, QWORD PTR 160[rbp]
	mov	r12, QWORD PTR 152[rbp]
/APP
 # 313 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	mov rcx, rbx
	movq xmm0, rbx
	mov rdx, rsi
	movq xmm1, rsi
	mov r8, rdi
	movq xmm2, rdi
	mov r9, r12
	movq xmm3, r12
	call r13
	mov rbx, rax
	
 # 0 "" 2
/NO_APP
	mov	QWORD PTR 184[rbp], rbx
	jmp	.L56
.L55:
	cmp	QWORD PTR 136[rbp], 2
	jbe	.L57
	mov	rax, QWORD PTR 352[rbp]
	mov	r12, QWORD PTR 72[rax]
	mov	rbx, QWORD PTR 176[rbp]
	mov	rsi, QWORD PTR 168[rbp]
	mov	rdi, QWORD PTR 160[rbp]
/APP
 # 327 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	mov rcx, rbx
	movq xmm0, rbx
	mov rdx, rsi
	movq xmm1, rsi
	mov r8, rdi
	movq xmm2, rdi
	call r12
	mov rbx, rax
	
 # 0 "" 2
/NO_APP
	mov	QWORD PTR 184[rbp], rbx
	jmp	.L56
.L57:
	cmp	QWORD PTR 136[rbp], 1
	jbe	.L58
	mov	rax, QWORD PTR 352[rbp]
	mov	rdi, QWORD PTR 72[rax]
	mov	rbx, QWORD PTR 176[rbp]
	mov	rsi, QWORD PTR 168[rbp]
/APP
 # 339 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	mov rcx, rbx
	movq xmm0, rbx
	mov rdx, rsi
	movq xmm1, rsi
	call rdi
	mov rbx, rax
	
 # 0 "" 2
/NO_APP
	mov	QWORD PTR 184[rbp], rbx
	jmp	.L56
.L58:
	cmp	QWORD PTR 136[rbp], 0
	je	.L59
	mov	rax, QWORD PTR 352[rbp]
	mov	rsi, QWORD PTR 72[rax]
	mov	rbx, QWORD PTR 176[rbp]
/APP
 # 349 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	mov rcx, rbx
	movq xmm0, rbx
	call rsi
	mov rbx, rax
	
 # 0 "" 2
/NO_APP
	mov	QWORD PTR 184[rbp], rbx
	jmp	.L56
.L59:
	mov	rax, QWORD PTR 352[rbp]
	mov	rbx, QWORD PTR 72[rax]
/APP
 # 357 "c:\Users\carlf\programs\ulr\ULR\Lib\Assembly\MethodInfo.cpp" 1
	call rbx
	mov rbx, rax
	
 # 0 "" 2
/NO_APP
	mov	QWORD PTR 184[rbp], rbx
.L56:
	mov	rbx, QWORD PTR 184[rbp]
.L36:
	lea	rax, -80[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPvSaIS0_EED1Ev
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EED1Ev
	mov	rax, rbx
	jmp	.L67
.L65:
	mov	rbx, rax
	lea	rax, 39[rbp]
	mov	rcx, rax
	call	_ZNSaIPvED1Ev
	jmp	.L62
.L66:
	mov	rbx, rax
	lea	rax, -80[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPvSaIS0_EED1Ev
	jmp	.L62
.L64:
	mov	rbx, rax
.L62:
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EED1Ev
	mov	rax, rbx
	mov	rcx, rax
.LEHB6:
	call	_Unwind_Resume
.LEHE6:
.L67:
	add	rsp, 416
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9407:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9407-.LLSDACSB9407
.LLSDACSB9407:
	.uleb128 .LEHB2-.LFB9407
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB9407
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L64-.LFB9407
	.uleb128 0
	.uleb128 .LEHB4-.LFB9407
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L65-.LFB9407
	.uleb128 0
	.uleb128 .LEHB5-.LFB9407
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L66-.LFB9407
	.uleb128 0
	.uleb128 .LEHB6-.LFB9407
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE9407:
	.text
	.seh_endproc
	.section	.text$_ZSt3maxIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3maxIyERKT_S2_S2_
	.def	_ZSt3maxIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3maxIyERKT_S2_S2_
_ZSt3maxIyERKT_S2_S2_:
.LFB9657:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jnb	.L69
	mov	rax, QWORD PTR 24[rbp]
	jmp	.L70
.L69:
	mov	rax, QWORD PTR 16[rbp]
.L70:
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEC1Ev
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEC1Ev
_ZNSt6vectorIPN3ULR4TypeESaIS2_EEC1Ev:
.LFB9719:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EEC2Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9719:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9719-.LLSDACSB9719
.LLSDACSB9719:
.LLSDACSE9719:
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EEC1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EED1Ev
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EED1Ev
_ZNSt6vectorIPN3ULR4TypeESaIS2_EED1Ev:
.LFB9722:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt8_DestroyIPPN3ULR4TypeES2_EvT_S4_RSaIT0_E
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EED2Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9722:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9722-.LLSDACSB9722
.LLSDACSB9722:
.LLSDACSE9722:
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E27_S_propagate_on_copy_assignEv,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E27_S_propagate_on_copy_assignEv
	.def	_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E27_S_propagate_on_copy_assignEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E27_S_propagate_on_copy_assignEv
_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E27_S_propagate_on_copy_assignEv:
.LFB9724:
	.seh_endprologue
	mov	eax, 0
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E15_S_always_equalEv,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E15_S_always_equalEv
	.def	_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E15_S_always_equalEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E15_S_always_equalEv
_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E15_S_always_equalEv:
.LFB9725:
	.seh_endprologue
	mov	eax, 1
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EEaSERKS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEaSERKS4_
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEaSERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEaSERKS4_
_ZNSt6vectorIPN3ULR4TypeESaIS2_EEaSERKS4_:
.LFB9723:
	push	rbp
	.seh_pushreg	rbp
	push	r12
	.seh_pushreg	r12
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 48[rbp], rcx
	mov	QWORD PTR 56[rbp], rdx
	mov	rax, QWORD PTR 56[rbp]
	cmp	rax, QWORD PTR 48[rbp]
	je	.L78
	call	_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E27_S_propagate_on_copy_assignEv
	test	al, al
	je	.L79
	call	_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E15_S_always_equalEv
	xor	eax, 1
	test	al, al
	je	.L80
	mov	rax, QWORD PTR 56[rbp]
	mov	rcx, rax
	call	_ZNKSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZStneIPN3ULR4TypeEEbRKSaIT_ES6_
	test	al, al
	je	.L80
	mov	eax, 1
	jmp	.L81
.L80:
	mov	eax, 0
.L81:
	test	al, al
	je	.L82
	mov	rcx, QWORD PTR 48[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5clearEv
	mov	rax, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR 48[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR [rdx]
	sub	rcx, rdx
	mov	rdx, rcx
	sar	rdx, 3
	mov	rcx, rdx
	mov	rdx, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR [rdx]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE13_M_deallocateEPS2_y
	mov	rax, QWORD PTR 48[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR 48[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR 48[rbp]
	mov	QWORD PTR 16[rax], 0
.L82:
	mov	rax, QWORD PTR 56[rbp]
	mov	rcx, rax
	call	_ZNKSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt15__alloc_on_copyISaIPN3ULR4TypeEEEvRT_RKS4_
.L79:
	mov	rax, QWORD PTR 56[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv
	mov	QWORD PTR -8[rbp], rax
	mov	rcx, QWORD PTR 48[rbp]
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE8capacityEv
	cmp	QWORD PTR -8[rbp], rax
	seta	al
	test	al, al
	je	.L83
	mov	rax, QWORD PTR 56[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE3endEv
	mov	rbx, rax
	mov	rax, QWORD PTR 56[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	r9, rbx
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 48[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_yT_SC_
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rax, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 48[rbp]
	mov	rax, QWORD PTR [rax]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt8_DestroyIPPN3ULR4TypeES2_EvT_S4_RSaIT0_E
	mov	rax, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR 48[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR [rdx]
	sub	rcx, rdx
	mov	rdx, rcx
	sar	rdx, 3
	mov	rcx, rdx
	mov	rdx, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR [rdx]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE13_M_deallocateEPS2_y
	mov	rax, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	add	rdx, rax
	mov	rax, QWORD PTR 48[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L84
.L83:
	mov	rcx, QWORD PTR 48[rbp]
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv
	cmp	QWORD PTR -8[rbp], rax
	setbe	al
	test	al, al
	je	.L85
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rsi, rax
	mov	rcx, QWORD PTR 48[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE3endEv
	mov	rbx, rax
	mov	rcx, QWORD PTR 48[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv
	mov	r12, rax
	mov	rax, QWORD PTR 56[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE3endEv
	mov	rdi, rax
	mov	rax, QWORD PTR 56[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv
	mov	r8, r12
	mov	rdx, rdi
	mov	rcx, rax
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RSaIT0_E
	jmp	.L84
.L85:
	mov	rax, QWORD PTR 48[rbp]
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR 56[rbp]
	mov	rsi, QWORD PTR [rax]
	mov	rcx, QWORD PTR 48[rbp]
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv
	sal	rax, 3
	lea	rdx, [rsi+rax]
	mov	rax, QWORD PTR 56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	r8, rbx
	mov	rcx, rax
	call	_ZSt4copyIPPN3ULR4TypeES3_ET0_T_S5_S4_
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	r12, rax
	mov	rax, QWORD PTR 48[rbp]
	mov	rsi, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 56[rbp]
	mov	rbx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 56[rbp]
	mov	rdi, QWORD PTR [rax]
	mov	rcx, QWORD PTR 48[rbp]
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv
	sal	rax, 3
	add	rax, rdi
	mov	r9, r12
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt22__uninitialized_copy_aIPPN3ULR4TypeES3_S2_ET0_T_S5_S4_RSaIT1_E
.L84:
	mov	rax, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	add	rdx, rax
	mov	rax, QWORD PTR 48[rbp]
	mov	QWORD PTR 8[rax], rdx
.L78:
	mov	rax, QWORD PTR 48[rbp]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EEC1ERKS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEC1ERKS4_
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEC1ERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEC1ERKS4_
_ZNSt6vectorIPN3ULR4TypeESaIS2_EEC1ERKS4_:
.LFB9728:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -32[rbp], rcx
	mov	QWORD PTR -24[rbp], rdx
	mov	rbx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rax
	call	_ZNKSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	lea	rax, -81[rbp]
	mov	rcx, rax
.LEHB7:
	call	_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E17_S_select_on_copyERKS4_
.LEHE7:
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv
	mov	rdx, rax
	lea	rax, -81[rbp]
	mov	r8, rax
	mov	rcx, rbx
.LEHB8:
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EEC2EyRKS3_
.LEHE8:
	lea	rax, -81[rbp]
	mov	rcx, rax
	call	_ZNSaIPN3ULR4TypeEED1Ev
	mov	rax, QWORD PTR -32[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rdi, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE3endEv
	mov	rsi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv
	mov	r9, rdi
	mov	r8, rbx
	mov	rdx, rsi
	mov	rcx, rax
.LEHB9:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E
.LEHE9:
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L92
.L90:
	mov	rbx, rax
	lea	rax, -81[rbp]
	mov	rcx, rax
	call	_ZNSaIPN3ULR4TypeEED1Ev
	mov	rax, rbx
	mov	rcx, rax
.LEHB10:
	call	_Unwind_Resume
.L91:
	mov	rbx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EED2Ev
	mov	rax, rbx
	mov	rcx, rax
	call	_Unwind_Resume
	nop
.LEHE10:
.L92:
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9728:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9728-.LLSDACSB9728
.LLSDACSB9728:
	.uleb128 .LEHB7-.LFB9728
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB9728
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L90-.LFB9728
	.uleb128 0
	.uleb128 .LEHB9-.LFB9728
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L91-.LFB9728
	.uleb128 0
	.uleb128 .LEHB10-.LFB9728
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE9728:
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EEC1ERKS4_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_:
.LFB9729:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR 16[rax]
	cmp	rdx, rax
	je	.L94
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rcx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JRS2_EEEvRS3_PT_DpOT0_
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L95
.L94:
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE3endEv
	mov	r8, rbx
	mov	rdx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
.L95:
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE4backEv
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv:
.LFB9730:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rdx, QWORD PTR 16[rbp]
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS4_
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1IPS3_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISC_SB_E7__valueES8_E6__typeEEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1IPS3_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISC_SB_E7__valueES8_E6__typeEEE
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1IPS3_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISC_SB_E7__valueES8_E6__typeEEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1IPS3_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISC_SB_E7__valueES8_E6__typeEEE
_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1IPS3_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISC_SB_E7__valueES8_E6__typeEEE:
.LFB9733:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE7emplaceIJRS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS8_IPKS2_S4_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE7emplaceIJRS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS8_IPKS2_S4_EEDpOT_
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE7emplaceIJRS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS8_IPKS2_S4_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE7emplaceIJRS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS8_IPKS2_S4_EEDpOT_
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE7emplaceIJRS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS8_IPKS2_S4_EEDpOT_:
.LFB9734:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE14_M_emplace_auxIJRS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS8_IPKS2_S4_EEDpOT_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPcSaIS0_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPcSaIS0_EE5beginEv
	.def	_ZNSt6vectorIPcSaIS0_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPcSaIS0_EE5beginEv
_ZNSt6vectorIPcSaIS0_EE5beginEv:
.LFB9735:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rdx, QWORD PTR 16[rbp]
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC1ERKS2_
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE
_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE:
.LFB9738:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPcSaIS0_EE7emplaceIJS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS5_IPKS0_S2_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPcSaIS0_EE7emplaceIJS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS5_IPKS0_S2_EEDpOT_
	.def	_ZNSt6vectorIPcSaIS0_EE7emplaceIJS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS5_IPKS0_S2_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPcSaIS0_EE7emplaceIJS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS5_IPKS0_S2_EEDpOT_
_ZNSt6vectorIPcSaIS0_EE7emplaceIJS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS5_IPKS0_S2_EEDpOT_:
.LFB9739:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPcEOT_RNSt16remove_referenceIS1_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPcSaIS0_EE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPcSaIS0_EE7emplaceIJRS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS6_IPKS0_S2_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPcSaIS0_EE7emplaceIJRS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS6_IPKS0_S2_EEDpOT_
	.def	_ZNSt6vectorIPcSaIS0_EE7emplaceIJRS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS6_IPKS0_S2_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPcSaIS0_EE7emplaceIJRS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS6_IPKS0_S2_EEDpOT_
_ZNSt6vectorIPcSaIS0_EE7emplaceIJRS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS6_IPKS0_S2_EEDpOT_:
.LFB9740:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPcEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPcSaIS0_EE14_M_emplace_auxIJRS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS6_IPKS0_S2_EEDpOT_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPcSaIS0_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPcSaIS0_EE4sizeEv
	.def	_ZNKSt6vectorIPcSaIS0_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPcSaIS0_EE4sizeEv
_ZNKSt6vectorIPcSaIS0_EE4sizeEv:
.LFB9741:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 3
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIPvEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIPvEC1Ev
	.def	_ZNSaIPvEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIPvEC1Ev
_ZNSaIPvEC1Ev:
.LFB9744:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPvEC2Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIPvED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIPvED2Ev
	.def	_ZNSaIPvED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIPvED2Ev
_ZNSaIPvED2Ev:
.LFB9746:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPvED2Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIPvED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIPvED1Ev
	.def	_ZNSaIPvED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIPvED1Ev
_ZNSaIPvED1Ev:
.LFB9747:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPvED2Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPvSaIS0_EEC1EyRKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPvSaIS0_EEC1EyRKS1_
	.def	_ZNSt6vectorIPvSaIS0_EEC1EyRKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPvSaIS0_EEC1EyRKS1_
_ZNSt6vectorIPvSaIS0_EEC1EyRKS1_:
.LFB9750:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -64[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	r8, rcx
	mov	rcx, rax
.LEHB11:
	call	_ZNSt12_Vector_baseIPvSaIS0_EEC2EyRKS1_
.LEHE11:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR -64[rbp]
.LEHB12:
	call	_ZNSt6vectorIPvSaIS0_EE21_M_default_initializeEy
.LEHE12:
	jmp	.L117
.L116:
	mov	rbx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPvSaIS0_EED2Ev
	mov	rax, rbx
	mov	rcx, rax
.LEHB13:
	call	_Unwind_Resume
	nop
.LEHE13:
.L117:
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9750:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9750-.LLSDACSB9750
.LLSDACSB9750:
	.uleb128 .LEHB11-.LFB9750
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB9750
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L116-.LFB9750
	.uleb128 0
	.uleb128 .LEHB13-.LFB9750
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE9750:
	.section	.text$_ZNSt6vectorIPvSaIS0_EEC1EyRKS1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIPvSaIS0_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPvSaIS0_EED1Ev
	.def	_ZNSt6vectorIPvSaIS0_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPvSaIS0_EED1Ev
_ZNSt6vectorIPvSaIS0_EED1Ev:
.LFB9753:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPvSaIS0_EED2Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9753:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9753-.LLSDACSB9753
.LLSDACSB9753:
.LLSDACSE9753:
	.section	.text$_ZNSt6vectorIPvSaIS0_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEixEy
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EEixEy
_ZNSt6vectorIPN3ULR4TypeESaIS2_EEixEy:
.LFB9754:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	add	rax, rdx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv
	.def	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv
_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv:
.LFB9755:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 3
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPvSaIS0_EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPvSaIS0_EEixEy
	.def	_ZNSt6vectorIPvSaIS0_EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPvSaIS0_EEixEy
_ZNSt6vectorIPvSaIS0_EEixEy:
.LFB9756:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	add	rax, rdx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPcSaIS0_EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPcSaIS0_EEixEy
	.def	_ZNSt6vectorIPcSaIS0_EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPcSaIS0_EEixEy
_ZNSt6vectorIPcSaIS0_EEixEy:
.LFB9757:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	add	rax, rdx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPvSaIS0_EE4dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPvSaIS0_EE4dataEv
	.def	_ZNSt6vectorIPvSaIS0_EE4dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPvSaIS0_EE4dataEv
_ZNSt6vectorIPvSaIS0_EE4dataEv:
.LFB9758:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNKSt6vectorIPvSaIS0_EE11_M_data_ptrIS0_EEPT_S5_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPvSaIS0_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPvSaIS0_EE5beginEv
	.def	_ZNSt6vectorIPvSaIS0_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPvSaIS0_EE5beginEv
_ZNSt6vectorIPvSaIS0_EE5beginEv:
.LFB9759:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rdx, QWORD PTR 16[rbp]
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEC1ERKS2_
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE
_ZN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE:
.LFB9762:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPvSaIS0_EE7emplaceIJPPN3ULR4TypeEEEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS9_IPKS0_S2_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPvSaIS0_EE7emplaceIJPPN3ULR4TypeEEEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS9_IPKS0_S2_EEDpOT_
	.def	_ZNSt6vectorIPvSaIS0_EE7emplaceIJPPN3ULR4TypeEEEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS9_IPKS0_S2_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPvSaIS0_EE7emplaceIJPPN3ULR4TypeEEEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS9_IPKS0_S2_EEDpOT_
_ZNSt6vectorIPvSaIS0_EE7emplaceIJPPN3ULR4TypeEEEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS9_IPKS0_S2_EEDpOT_:
.LFB9763:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPvSaIS0_EE14_M_emplace_auxIJPPN3ULR4TypeEEEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS9_IPKS0_S2_EEDpOT_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPvSaIS0_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPvSaIS0_EE4sizeEv
	.def	_ZNKSt6vectorIPvSaIS0_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPvSaIS0_EE4sizeEv
_ZNKSt6vectorIPvSaIS0_EE4sizeEv:
.LFB9764:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 3
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implD1Ev:
.LFB9858:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSaIPN3ULR4TypeEED2Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EEC2Ev
	.def	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EEC2Ev
_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EEC2Ev:
.LFB9859:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implC1Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EED2Ev
	.def	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EED2Ev
_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EED2Ev:
.LFB9862:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE13_M_deallocateEPS2_y
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implD1Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9862:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9862-.LLSDACSB9862
.LLSDACSB9862:
.LLSDACSE9862:
	.section	.text$_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB9864:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPPN3ULR4TypeES2_EvT_S4_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPPN3ULR4TypeES2_EvT_S4_RSaIT0_E
	.def	_ZSt8_DestroyIPPN3ULR4TypeES2_EvT_S4_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPPN3ULR4TypeES2_EvT_S4_RSaIT0_E
_ZSt8_DestroyIPPN3ULR4TypeES2_EvT_S4_RSaIT0_E:
.LFB9865:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt8_DestroyIPPN3ULR4TypeEEvT_S4_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB9866:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZStneIPN3ULR4TypeEEbRKSaIT_ES6_,"x"
	.linkonce discard
	.globl	_ZStneIPN3ULR4TypeEEbRKSaIT_ES6_
	.def	_ZStneIPN3ULR4TypeEEbRKSaIT_ES6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStneIPN3ULR4TypeEEbRKSaIT_ES6_
_ZStneIPN3ULR4TypeEEbRKSaIT_ES6_:
.LFB9867:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	eax, 0
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5clearEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5clearEv
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5clearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5clearEv
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5clearEv:
.LFB9868:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE15_M_erase_at_endEPS2_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE13_M_deallocateEPS2_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE13_M_deallocateEPS2_y
	.def	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE13_M_deallocateEPS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE13_M_deallocateEPS2_y
_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE13_M_deallocateEPS2_y:
.LFB9869:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	cmp	QWORD PTR 24[rbp], 0
	je	.L149
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE10deallocateERS3_PS2_y
.L149:
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt15__alloc_on_copyISaIPN3ULR4TypeEEEvRT_RKS4_,"x"
	.linkonce discard
	.globl	_ZSt15__alloc_on_copyISaIPN3ULR4TypeEEEvRT_RKS4_
	.def	_ZSt15__alloc_on_copyISaIPN3ULR4TypeEEEvRT_RKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt15__alloc_on_copyISaIPN3ULR4TypeEEEvRT_RKS4_
_ZSt15__alloc_on_copyISaIPN3ULR4TypeEEEvRT_RKS4_:
.LFB9870:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt18__do_alloc_on_copyISaIPN3ULR4TypeEEEvRT_RKS4_St17integral_constantIbLb0EE
	nop
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE8capacityEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE8capacityEv
	.def	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE8capacityEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE8capacityEv
_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE8capacityEv:
.LFB9871:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 3
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv
	.def	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv
_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv:
.LFB9872:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS5_
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE3endEv
	.def	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE3endEv
_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE3endEv:
.LFB9873:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS5_
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_yT_SC_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_yT_SC_
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_yT_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_yT_SC_
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_yT_SC_:
.LFB9874:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -48[rbp], rcx
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -32[rbp], r8
	mov	QWORD PTR -24[rbp], r9
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, rax
.LEHB14:
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE11_M_allocateEy
.LEHE14:
	mov	QWORD PTR -88[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	r8, rax
	mov	rcx, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	r9, r8
	mov	r8, rcx
	mov	rcx, rax
.LEHB15:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E
.LEHE15:
	mov	rax, QWORD PTR -88[rbp]
	jmp	.L163
.L161:
	mov	rcx, rax
	call	__cxa_begin_catch
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	r8, rcx
	mov	rcx, rax
.LEHB16:
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE13_M_deallocateEPS2_y
	call	__cxa_rethrow
.LEHE16:
.L162:
	mov	rbx, rax
	call	__cxa_end_catch
	mov	rax, rbx
	mov	rcx, rax
.LEHB17:
	call	_Unwind_Resume
.LEHE17:
.L163:
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA9874:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT9874-.LLSDATTD9874
.LLSDATTD9874:
	.byte	0x1
	.uleb128 .LLSDACSE9874-.LLSDACSB9874
.LLSDACSB9874:
	.uleb128 .LEHB14-.LFB9874
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB9874
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L161-.LFB9874
	.uleb128 0x1
	.uleb128 .LEHB16-.LFB9874
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L162-.LFB9874
	.uleb128 0
	.uleb128 .LEHB17-.LFB9874
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE9874:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT9874:
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_yT_SC_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_,"x"
	.linkonce discard
	.globl	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_
	.def	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_:
.LFB9875:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEET_SB_
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEET_SB_
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	r8, rax
	mov	rdx, rbx
	call	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET1_T0_SE_SD_
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE3endEv
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE3endEv
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE3endEv:
.LFB9876:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	lea	rdx, 8[rax]
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS4_
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RSaIT0_E
	.def	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RSaIT0_E
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RSaIT0_E:
.LFB9877:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEEvT_SA_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4copyIPPN3ULR4TypeES3_ET0_T_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt4copyIPPN3ULR4TypeES3_ET0_T_S5_S4_
	.def	_ZSt4copyIPPN3ULR4TypeES3_ET0_T_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyIPPN3ULR4TypeES3_ET0_T_S5_S4_
_ZSt4copyIPPN3ULR4TypeES3_ET0_T_S5_S4_:
.LFB9878:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZSt12__miter_baseIPPN3ULR4TypeEET_S4_
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZSt12__miter_baseIPPN3ULR4TypeEET_S4_
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	r8, rax
	mov	rdx, rbx
	call	_ZSt14__copy_move_a2ILb0EPPN3ULR4TypeES3_ET1_T0_S5_S4_
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aIPPN3ULR4TypeES3_S2_ET0_T_S5_S4_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aIPPN3ULR4TypeES3_S2_ET0_T_S5_S4_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aIPPN3ULR4TypeES3_S2_ET0_T_S5_S4_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aIPPN3ULR4TypeES3_S2_ET0_T_S5_S4_RSaIT1_E
_ZSt22__uninitialized_copy_aIPPN3ULR4TypeES3_S2_ET0_T_S5_S4_RSaIT1_E:
.LFB9879:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	QWORD PTR 40[rbp], r9
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt18uninitialized_copyIPPN3ULR4TypeES3_ET0_T_S5_S4_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E17_S_select_on_copyERKS4_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E17_S_select_on_copyERKS4_
	.def	_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E17_S_select_on_copyERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E17_S_select_on_copyERKS4_
_ZN9__gnu_cxx14__alloc_traitsISaIPN3ULR4TypeEES3_E17_S_select_on_copyERKS4_:
.LFB9880:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE37select_on_container_copy_constructionERKS3_
	mov	rax, QWORD PTR 16[rbp]
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIPN3ULR4TypeEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIPN3ULR4TypeEED2Ev
	.def	_ZNSaIPN3ULR4TypeEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIPN3ULR4TypeEED2Ev
_ZNSaIPN3ULR4TypeEED2Ev:
.LFB9882:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEED2Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIPN3ULR4TypeEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIPN3ULR4TypeEED1Ev
	.def	_ZNSaIPN3ULR4TypeEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIPN3ULR4TypeEED1Ev
_ZNSaIPN3ULR4TypeEED1Ev:
.LFB9883:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEED2Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EEC2EyRKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EEC2EyRKS3_
	.def	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EEC2EyRKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EEC2EyRKS3_
_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EEC2EyRKS3_:
.LFB9885:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implC1ERKS3_
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR -64[rbp]
.LEHB18:
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE17_M_create_storageEy
.LEHE18:
	jmp	.L180
.L179:
	mov	rbx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implD1Ev
	mov	rax, rbx
	mov	rcx, rax
.LEHB19:
	call	_Unwind_Resume
	nop
.LEHE19:
.L180:
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9885:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9885-.LLSDACSB9885
.LLSDACSB9885:
	.uleb128 .LEHB18-.LFB9885
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L179-.LFB9885
	.uleb128 0
	.uleb128 .LEHB19-.LFB9885
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE9885:
	.section	.text$_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EEC2EyRKS3_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E:
.LFB9887:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	QWORD PTR 40[rbp], r9
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	.def	_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB9888:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JRS2_EEEvRS3_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JRS2_EEEvRS3_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JRS2_EEEvRS3_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JRS2_EEEvRS3_PT_DpOT0_
_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JRS2_EEEvRS3_PT_DpOT0_:
.LFB9889:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE9constructIS3_JRS3_EEEvPT_DpOT0_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "vector::_M_realloc_insert\0"
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:
.LFB9890:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 104
	.seh_stackalloc	104
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR 0[rbp], rcx
	mov	QWORD PTR 8[rbp], rdx
	mov	QWORD PTR 16[rbp], r8
	lea	r8, .LC0[rip]
	mov	edx, 1
	mov	rcx, QWORD PTR 0[rbp]
.LEHB20:
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE12_M_check_lenEyPKc
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -64[rbp], rax
	mov	rcx, QWORD PTR 0[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv
	mov	QWORD PTR -88[rbp], rax
	lea	rdx, -88[rbp]
	lea	rax, 8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxmiIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE11_M_allocateEy
.LEHE20:
	mov	QWORD PTR -80[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rcx, rax
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JRS2_EEEvRS3_PT_DpOT0_
	mov	QWORD PTR -40[rbp], 0
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, 8[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
	mov	rdx, QWORD PTR [rax]
	mov	rcx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r9, rbx
	mov	r8, rcx
	mov	rcx, rax
.LEHB21:
	call	_ZSt34__uninitialized_move_if_noexcept_aIPPN3ULR4TypeES3_SaIS2_EET0_T_S6_S5_RT1_
	mov	QWORD PTR -40[rbp], rax
	add	QWORD PTR -40[rbp], 8
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, 8[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	r9, rbx
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt34__uninitialized_move_if_noexcept_aIPPN3ULR4TypeES3_SaIS2_EET0_T_S6_S5_RT1_
.LEHE21:
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r8, rcx
	mov	rcx, rax
.LEHB22:
	call	_ZSt8_DestroyIPPN3ULR4TypeES2_EvT_S4_RSaIT0_E
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR 16[rdx]
	sub	rdx, QWORD PTR -56[rbp]
	sar	rdx, 3
	mov	rcx, rdx
	mov	rdx, QWORD PTR -56[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE13_M_deallocateEPS2_y
.LEHE22:
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L193
.L191:
	mov	rcx, rax
	call	__cxa_begin_catch
	cmp	QWORD PTR -40[rbp], 0
	jne	.L188
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
.LEHB23:
	call	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE7destroyIS2_EEvRS3_PT_
	jmp	.L189
.L188:
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt8_DestroyIPPN3ULR4TypeES2_EvT_S4_RSaIT0_E
.L189:
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE13_M_deallocateEPS2_y
	call	__cxa_rethrow
.LEHE23:
.L192:
	mov	rbx, rax
	call	__cxa_end_catch
	mov	rax, rbx
	mov	rcx, rax
.LEHB24:
	call	_Unwind_Resume
	nop
.LEHE24:
.L193:
	add	rsp, 104
	pop	rbx
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA9890:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT9890-.LLSDATTD9890
.LLSDATTD9890:
	.byte	0x1
	.uleb128 .LLSDACSE9890-.LLSDACSB9890
.LLSDACSB9890:
	.uleb128 .LEHB20-.LFB9890
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB9890
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L191-.LFB9890
	.uleb128 0x1
	.uleb128 .LEHB22-.LFB9890
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB9890
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L192-.LFB9890
	.uleb128 0
	.uleb128 .LEHB24-.LFB9890
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSE9890:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT9890:
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE4backEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE4backEv
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE4backEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE4backEv
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE4backEv:
.LFB9891:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE3endEv
	mov	QWORD PTR -8[rbp], rax
	lea	rax, -8[rbp]
	mov	edx, 1
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEmiEx
	mov	QWORD PTR -16[rbp], rax
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEdeEv
	nop
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS4_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS4_
_ZN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS4_:
.LFB9894:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv:
.LFB9895:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE14_M_emplace_auxIJRS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS8_IPKS2_S4_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE14_M_emplace_auxIJRS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS8_IPKS2_S4_EEDpOT_
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE14_M_emplace_auxIJRS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS8_IPKS2_S4_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE14_M_emplace_auxIJRS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS8_IPKS2_S4_EEDpOT_
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE14_M_emplace_auxIJRS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS8_IPKS2_S4_EEDpOT_:
.LFB9896:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 120
	.seh_stackalloc	120
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE6cbeginEv
	mov	QWORD PTR -72[rbp], rax
	lea	rdx, -72[rbp]
	lea	rax, 24[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxmiIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 16[rax]
	cmp	rdx, rax
	je	.L200
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4cendEv
	mov	QWORD PTR -64[rbp], rax
	lea	rdx, -64[rbp]
	lea	rax, 24[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxeqIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	test	al, al
	je	.L201
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rcx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JRS2_EEEvRS3_PT_DpOT0_
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L203
.L201:
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rdx, rax
	lea	rax, -96[rbp]
	mov	r8, rdx
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, rax
.LEHB25:
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_valueC1IJRS2_EEEPS4_DpOT_
.LEHE25:
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_value6_M_valEv
	mov	rcx, rax
	call	_ZSt4moveIRPN3ULR4TypeEEONSt16remove_referenceIT_E4typeEOS5_
	mov	rbx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv
	mov	QWORD PTR -56[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -56[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEplEx
	mov	r8, rbx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
.LEHB26:
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_
.LEHE26:
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_valueD1Ev
	jmp	.L203
.L200:
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rbx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE5beginEv
	mov	QWORD PTR -48[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEplEx
	mov	r8, rbx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
.LEHB27:
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
.L203:
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	sal	rax, 3
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	lea	rdx, -32[rbp]
	lea	rax, -40[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS4_
	mov	rax, QWORD PTR -40[rbp]
	jmp	.L207
.L206:
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_valueD1Ev
	mov	rax, rbx
	mov	rcx, rax
	call	_Unwind_Resume
.LEHE27:
.L207:
	add	rsp, 120
	pop	rbx
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9896:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9896-.LLSDACSB9896
.LLSDACSB9896:
	.uleb128 .LEHB25-.LFB9896
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB9896
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L206-.LFB9896
	.uleb128 0
	.uleb128 .LEHB27-.LFB9896
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE9896:
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE14_M_emplace_auxIJRS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS8_IPKS2_S4_EEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC1ERKS2_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC1ERKS2_
_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC1ERKS2_:
.LFB9899:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB9900:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIPcEOT_RNSt16remove_referenceIS1_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIPcEOT_RNSt16remove_referenceIS1_E4typeE
	.def	_ZSt7forwardIPcEOT_RNSt16remove_referenceIS1_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIPcEOT_RNSt16remove_referenceIS1_E4typeE
_ZSt7forwardIPcEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB9901:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPcSaIS0_EE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPcSaIS0_EE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_
	.def	_ZNSt6vectorIPcSaIS0_EE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPcSaIS0_EE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_
_ZNSt6vectorIPcSaIS0_EE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_:
.LFB9902:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt4moveIRPcEONSt16remove_referenceIT_E4typeEOS3_
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPcSaIS0_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRPcEOT_RNSt16remove_referenceIS2_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRPcEOT_RNSt16remove_referenceIS2_E4typeE
	.def	_ZSt7forwardIRPcEOT_RNSt16remove_referenceIS2_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRPcEOT_RNSt16remove_referenceIS2_E4typeE
_ZSt7forwardIRPcEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB9903:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPcSaIS0_EE14_M_emplace_auxIJRS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS6_IPKS0_S2_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPcSaIS0_EE14_M_emplace_auxIJRS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS6_IPKS0_S2_EEDpOT_
	.def	_ZNSt6vectorIPcSaIS0_EE14_M_emplace_auxIJRS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS6_IPKS0_S2_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPcSaIS0_EE14_M_emplace_auxIJRS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS6_IPKS0_S2_EEDpOT_
_ZNSt6vectorIPcSaIS0_EE14_M_emplace_auxIJRS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS6_IPKS0_S2_EEDpOT_:
.LFB9904:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 120
	.seh_stackalloc	120
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNKSt6vectorIPcSaIS0_EE6cbeginEv
	mov	QWORD PTR -72[rbp], rax
	lea	rdx, -72[rbp]
	lea	rax, 24[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxmiIPKPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 16[rax]
	cmp	rdx, rax
	je	.L218
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNKSt6vectorIPcSaIS0_EE4cendEv
	mov	QWORD PTR -64[rbp], rax
	lea	rdx, -64[rbp]
	lea	rax, 24[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxeqIPKPcSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	test	al, al
	je	.L219
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPcEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rcx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	r8, rcx
	mov	rcx, rax
.LEHB28:
	call	_ZNSt16allocator_traitsISaIPcEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L221
.L219:
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPcEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	lea	rax, -96[rbp]
	mov	r8, rdx
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueC1IJRS0_EEEPS2_DpOT_
.LEHE28:
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_valEv
	mov	rcx, rax
	call	_ZSt4moveIRPcEONSt16remove_referenceIT_E4typeEOS3_
	mov	rbx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPcSaIS0_EE5beginEv
	mov	QWORD PTR -56[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -56[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEplEx
	mov	r8, rbx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
.LEHB29:
	call	_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_
.LEHE29:
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueD1Ev
	jmp	.L221
.L218:
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPcEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rbx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPcSaIS0_EE5beginEv
	mov	QWORD PTR -48[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEplEx
	mov	r8, rbx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
.LEHB30:
	call	_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.L221:
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	sal	rax, 3
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	lea	rdx, -32[rbp]
	lea	rax, -40[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC1ERKS2_
	mov	rax, QWORD PTR -40[rbp]
	jmp	.L225
.L224:
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueD1Ev
	mov	rax, rbx
	mov	rcx, rax
	call	_Unwind_Resume
.LEHE30:
.L225:
	add	rsp, 120
	pop	rbx
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9904:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9904-.LLSDACSB9904
.LLSDACSB9904:
	.uleb128 .LEHB28-.LFB9904
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB9904
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L224-.LFB9904
	.uleb128 0
	.uleb128 .LEHB30-.LFB9904
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE9904:
	.section	.text$_ZNSt6vectorIPcSaIS0_EE14_M_emplace_auxIJRS0_EEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS6_IPKS0_S2_EEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPvEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPvEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIPvEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPvEC2Ev
_ZN9__gnu_cxx13new_allocatorIPvEC2Ev:
.LFB9906:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPvED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPvED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIPvED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPvED2Ev
_ZN9__gnu_cxx13new_allocatorIPvED2Ev:
.LFB9909:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD1Ev:
.LFB9914:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSaIPvED2Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPvSaIS0_EEC2EyRKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPvSaIS0_EEC2EyRKS1_
	.def	_ZNSt12_Vector_baseIPvSaIS0_EEC2EyRKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPvSaIS0_EEC2EyRKS1_
_ZNSt12_Vector_baseIPvSaIS0_EEC2EyRKS1_:
.LFB9915:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC1ERKS1_
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR -64[rbp]
.LEHB31:
	call	_ZNSt12_Vector_baseIPvSaIS0_EE17_M_create_storageEy
.LEHE31:
	jmp	.L232
.L231:
	mov	rbx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD1Ev
	mov	rax, rbx
	mov	rcx, rax
.LEHB32:
	call	_Unwind_Resume
	nop
.LEHE32:
.L232:
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9915:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9915-.LLSDACSB9915
.LLSDACSB9915:
	.uleb128 .LEHB31-.LFB9915
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L231-.LFB9915
	.uleb128 0
	.uleb128 .LEHB32-.LFB9915
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
.LLSDACSE9915:
	.section	.text$_ZNSt12_Vector_baseIPvSaIS0_EEC2EyRKS1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPvSaIS0_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPvSaIS0_EED2Ev
	.def	_ZNSt12_Vector_baseIPvSaIS0_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPvSaIS0_EED2Ev
_ZNSt12_Vector_baseIPvSaIS0_EED2Ev:
.LFB9918:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_y
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD1Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9918:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9918-.LLSDACSB9918
.LLSDACSB9918:
.LLSDACSE9918:
	.section	.text$_ZNSt12_Vector_baseIPvSaIS0_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIPvSaIS0_EE21_M_default_initializeEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPvSaIS0_EE21_M_default_initializeEy
	.def	_ZNSt6vectorIPvSaIS0_EE21_M_default_initializeEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPvSaIS0_EE21_M_default_initializeEy
_ZNSt6vectorIPvSaIS0_EE21_M_default_initializeEy:
.LFB9920:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt27__uninitialized_default_n_aIPPvyS0_ET_S2_T0_RSaIT1_E
	mov	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], rdx
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB9921:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E
	.def	_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E
_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E:
.LFB9922:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt8_DestroyIPPvEvT_S2_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPvSaIS0_EE11_M_data_ptrIS0_EEPT_S5_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPvSaIS0_EE11_M_data_ptrIS0_EEPT_S5_
	.def	_ZNKSt6vectorIPvSaIS0_EE11_M_data_ptrIS0_EEPT_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPvSaIS0_EE11_M_data_ptrIS0_EEPT_S5_
_ZNKSt6vectorIPvSaIS0_EE11_M_data_ptrIS0_EEPT_S5_:
.LFB9923:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEC1ERKS2_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEC1ERKS2_
_ZN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEC1ERKS2_:
.LFB9926:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB9927:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIPPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIPPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	.def	_ZSt7forwardIPPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIPPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
_ZSt7forwardIPPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB9928:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPvSaIS0_EE14_M_emplace_auxIJPPN3ULR4TypeEEEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS9_IPKS0_S2_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPvSaIS0_EE14_M_emplace_auxIJPPN3ULR4TypeEEEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS9_IPKS0_S2_EEDpOT_
	.def	_ZNSt6vectorIPvSaIS0_EE14_M_emplace_auxIJPPN3ULR4TypeEEEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS9_IPKS0_S2_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPvSaIS0_EE14_M_emplace_auxIJPPN3ULR4TypeEEEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS9_IPKS0_S2_EEDpOT_
_ZNSt6vectorIPvSaIS0_EE14_M_emplace_auxIJPPN3ULR4TypeEEEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS9_IPKS0_S2_EEDpOT_:
.LFB9929:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 120
	.seh_stackalloc	120
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNKSt6vectorIPvSaIS0_EE6cbeginEv
	mov	QWORD PTR -72[rbp], rax
	lea	rdx, -72[rbp]
	lea	rax, 24[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxmiIPKPvSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 16[rax]
	cmp	rdx, rax
	je	.L246
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNKSt6vectorIPvSaIS0_EE4cendEv
	mov	QWORD PTR -64[rbp], rax
	lea	rdx, -64[rbp]
	lea	rax, 24[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxeqIPKPvSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	test	al, al
	je	.L247
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rcx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	r8, rcx
	mov	rcx, rax
.LEHB33:
	call	_ZNSt16allocator_traitsISaIPvEE9constructIS0_JPPN3ULR4TypeEEEEvRS1_PT_DpOT0_
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L249
.L247:
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rdx, rax
	lea	rax, -96[rbp]
	mov	r8, rdx
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPvSaIS0_EE16_Temporary_valueC1IJPPN3ULR4TypeEEEEPS2_DpOT_
.LEHE33:
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPvSaIS0_EE16_Temporary_value6_M_valEv
	mov	rcx, rax
	call	_ZSt4moveIRPvEONSt16remove_referenceIT_E4typeEOS3_
	mov	rbx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPvSaIS0_EE5beginEv
	mov	QWORD PTR -56[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -56[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEplEx
	mov	r8, rbx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
.LEHB34:
	call	_ZNSt6vectorIPvSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_
.LEHE34:
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPvSaIS0_EE16_Temporary_valueD1Ev
	jmp	.L249
.L246:
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rbx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPvSaIS0_EE5beginEv
	mov	QWORD PTR -48[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEplEx
	mov	r8, rbx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
.LEHB35:
	call	_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJPPN3ULR4TypeEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.L249:
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	sal	rax, 3
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	lea	rdx, -32[rbp]
	lea	rax, -40[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEC1ERKS2_
	mov	rax, QWORD PTR -40[rbp]
	jmp	.L253
.L252:
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIPvSaIS0_EE16_Temporary_valueD1Ev
	mov	rax, rbx
	mov	rcx, rax
	call	_Unwind_Resume
.LEHE35:
.L253:
	add	rsp, 120
	pop	rbx
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9929:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9929-.LLSDACSB9929
.LLSDACSB9929:
	.uleb128 .LEHB33-.LFB9929
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB9929
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L252-.LFB9929
	.uleb128 0
	.uleb128 .LEHB35-.LFB9929
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE9929:
	.section	.text$_ZNSt6vectorIPvSaIS0_EE14_M_emplace_auxIJPPN3ULR4TypeEEEEN9__gnu_cxx17__normal_iteratorIPS0_S2_EENS9_IPKS0_S2_EEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implC1Ev
	.def	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implC1Ev
_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implC1Ev:
.LFB9977:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSaIPN3ULR4TypeEEC2Ev
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 16[rax], 0
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPPN3ULR4TypeEEvT_S4_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPPN3ULR4TypeEEvT_S4_
	.def	_ZSt8_DestroyIPPN3ULR4TypeEEvT_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPPN3ULR4TypeEEvT_S4_
_ZSt8_DestroyIPPN3ULR4TypeEEvT_S4_:
.LFB9978:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPPN3ULR4TypeEEEvT_S6_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE15_M_erase_at_endEPS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE15_M_erase_at_endEPS2_
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE15_M_erase_at_endEPS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE15_M_erase_at_endEPS2_
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE15_M_erase_at_endEPS2_:
.LFB9979:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR 24[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L258
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt8_DestroyIPPN3ULR4TypeES2_EvT_S4_RSaIT0_E
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	QWORD PTR 8[rax], rdx
.L258:
	nop
	add	rsp, 48
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9979:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9979-.LLSDACSB9979
.LLSDACSB9979:
.LLSDACSE9979:
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE15_M_erase_at_endEPS2_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE10deallocateERS3_PS2_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE10deallocateERS3_PS2_y
	.def	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE10deallocateERS3_PS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE10deallocateERS3_PS2_y
_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE10deallocateERS3_PS2_y:
.LFB9980:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE10deallocateEPS3_y
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18__do_alloc_on_copyISaIPN3ULR4TypeEEEvRT_RKS4_St17integral_constantIbLb0EE,"x"
	.linkonce discard
	.globl	_ZSt18__do_alloc_on_copyISaIPN3ULR4TypeEEEvRT_RKS4_St17integral_constantIbLb0EE
	.def	_ZSt18__do_alloc_on_copyISaIPN3ULR4TypeEEEvRT_RKS4_St17integral_constantIbLb0EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18__do_alloc_on_copyISaIPN3ULR4TypeEEEvRT_RKS4_St17integral_constantIbLb0EE
_ZSt18__do_alloc_on_copyISaIPN3ULR4TypeEEEvRT_RKS4_St17integral_constantIbLb0EE:
.LFB9981:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	BYTE PTR 32[rbp], r8b
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS5_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS5_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS5_
_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS5_:
.LFB9984:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE11_M_allocateEy
_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE11_M_allocateEy:
.LFB9985:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	cmp	QWORD PTR 24[rbp], 0
	je	.L263
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE8allocateERS3_y
	jmp	.L265
.L263:
	mov	eax, 0
.L265:
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEET_SB_,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEET_SB_
	.def	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEET_SB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEET_SB_
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEET_SB_:
.LFB9986:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET1_T0_SE_SD_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET1_T0_SE_SD_
	.def	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET1_T0_SE_SD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET1_T0_SE_SD_
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET1_T0_SE_SD_:
.LFB9987:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE
	mov	rsi, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPKPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE
	mov	rbx, rax
	mov	rcx, QWORD PTR 32[rbp]
	call	_ZSt12__niter_baseIPKPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt13__copy_move_aILb0EPKPN3ULR4TypeEPS2_ET1_T0_S7_S6_
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS4_
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEEvT_SA_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEEvT_SA_
	.def	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEEvT_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEEvT_SA_
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEEvT_SA_:
.LFB9988:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS6_SaIS6_EEEEEEvT_SC_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIPPN3ULR4TypeEET_S4_,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIPPN3ULR4TypeEET_S4_
	.def	_ZSt12__miter_baseIPPN3ULR4TypeEET_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIPPN3ULR4TypeEET_S4_
_ZSt12__miter_baseIPPN3ULR4TypeEET_S4_:
.LFB9989:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__copy_move_a2ILb0EPPN3ULR4TypeES3_ET1_T0_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb0EPPN3ULR4TypeES3_ET1_T0_S5_S4_
	.def	_ZSt14__copy_move_a2ILb0EPPN3ULR4TypeES3_ET1_T0_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb0EPPN3ULR4TypeES3_ET1_T0_S5_S4_
_ZSt14__copy_move_a2ILb0EPPN3ULR4TypeES3_ET1_T0_S5_S4_:
.LFB9990:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_
	mov	rsi, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_
	mov	rbx, rax
	mov	rcx, QWORD PTR 32[rbp]
	call	_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt13__copy_move_aILb0EPPN3ULR4TypeES3_ET1_T0_S5_S4_
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyIPPN3ULR4TypeES3_ET0_T_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyIPPN3ULR4TypeES3_ET0_T_S5_S4_
	.def	_ZSt18uninitialized_copyIPPN3ULR4TypeES3_ET0_T_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyIPPN3ULR4TypeES3_ET0_T_S5_S4_
_ZSt18uninitialized_copyIPPN3ULR4TypeES3_ET0_T_S5_S4_:
.LFB9991:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN3ULR4TypeES5_EET0_T_S7_S6_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE37select_on_container_copy_constructionERKS3_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE37select_on_container_copy_constructionERKS3_
	.def	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE37select_on_container_copy_constructionERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE37select_on_container_copy_constructionERKS3_
_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE37select_on_container_copy_constructionERKS3_:
.LFB9992:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSaIPN3ULR4TypeEEC1ERKS2_
	mov	rax, QWORD PTR 16[rbp]
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEED2Ev
_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEED2Ev:
.LFB9994:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implC1ERKS3_
	.def	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implC1ERKS3_
_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE12_Vector_implC1ERKS3_:
.LFB9998:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSaIPN3ULR4TypeEEC2ERKS2_
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 16[rax], 0
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE17_M_create_storageEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE17_M_create_storageEy
	.def	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE17_M_create_storageEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE17_M_create_storageEy
_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE17_M_create_storageEy:
.LFB9999:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt12_Vector_baseIPN3ULR4TypeESaIS2_EE11_M_allocateEy
	mov	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	add	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_
	.def	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_:
.LFB10000:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE9constructIS3_JRS3_EEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE9constructIS3_JRS3_EEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE9constructIS3_JRS3_EEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE9constructIS3_JRS3_EEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE9constructIS3_JRS3_EEEvPT_DpOT0_:
.LFB10001:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	ecx, 8
	call	_ZnwyPv
	mov	QWORD PTR [rax], rbx
	nop
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE12_M_check_lenEyPKc
_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE12_M_check_lenEyPKc:
.LFB10002:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -48[rbp], rcx
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -32[rbp], r8
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE8max_sizeEv
	mov	rbx, rax
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, QWORD PTR -40[rbp]
	cmp	rdx, rax
	setb	al
	test	al, al
	je	.L286
	mov	rax, QWORD PTR -32[rbp]
	mov	rcx, rax
	call	_ZSt20__throw_length_errorPKc
.L286:
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv
	mov	rbx, rax
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv
	mov	QWORD PTR -96[rbp], rax
	lea	rdx, -40[rbp]
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZSt3maxIyERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	add	rax, rbx
	mov	QWORD PTR -88[rbp], rax
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4sizeEv
	cmp	QWORD PTR -88[rbp], rax
	jb	.L287
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE8max_sizeEv
	cmp	QWORD PTR -88[rbp], rax
	jbe	.L288
.L287:
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE8max_sizeEv
	jmp	.L289
.L288:
	mov	rax, QWORD PTR -88[rbp]
.L289:
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.def	_ZN9__gnu_cxxmiIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
_ZN9__gnu_cxxmiIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_:
.LFB10003:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	sub	rbx, rax
	mov	rax, rbx
	sar	rax, 3
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt34__uninitialized_move_if_noexcept_aIPPN3ULR4TypeES3_SaIS2_EET0_T_S6_S5_RT1_,"x"
	.linkonce discard
	.globl	_ZSt34__uninitialized_move_if_noexcept_aIPPN3ULR4TypeES3_SaIS2_EET0_T_S6_S5_RT1_
	.def	_ZSt34__uninitialized_move_if_noexcept_aIPPN3ULR4TypeES3_SaIS2_EET0_T_S6_S5_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt34__uninitialized_move_if_noexcept_aIPPN3ULR4TypeES3_SaIS2_EET0_T_S6_S5_RT1_
_ZSt34__uninitialized_move_if_noexcept_aIPPN3ULR4TypeES3_SaIS2_EET0_T_S6_S5_RT1_:
.LFB10004:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	QWORD PTR -40[rbp], r9
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZSt32__make_move_if_noexcept_iteratorIPN3ULR4TypeESt13move_iteratorIPS2_EET0_PT_
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZSt32__make_move_if_noexcept_iteratorIPN3ULR4TypeESt13move_iteratorIPS2_EET0_PT_
	mov	rcx, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	r9, rdx
	mov	r8, rax
	mov	rdx, rbx
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPPN3ULR4TypeEES4_S3_ET0_T_S7_S6_RSaIT1_E
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE7destroyIS2_EEvRS3_PT_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE7destroyIS2_EEvRS3_PT_
	.def	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE7destroyIS2_EEvRS3_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE7destroyIS2_EEvRS3_PT_
_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE7destroyIS2_EEvRS3_PT_:
.LFB10005:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE7destroyIS3_EEvPT_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEmiEx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEmiEx
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEmiEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEmiEx
_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEmiEx:
.LFB10006:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	neg	rax
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS4_
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEdeEv:
.LFB10007:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE6cbeginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE6cbeginEv
	.def	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE6cbeginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE6cbeginEv
_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE6cbeginEv:
.LFB10008:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS5_
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_
	.def	_ZN9__gnu_cxxmiIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_
_ZN9__gnu_cxxmiIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_:
.LFB10009:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	sub	rbx, rax
	mov	rax, rbx
	sar	rax, 3
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4cendEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4cendEv
	.def	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4cendEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4cendEv
_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE4cendEv:
.LFB10010:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS5_
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxeqIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxeqIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.def	_ZN9__gnu_cxxeqIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxeqIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
_ZN9__gnu_cxxeqIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_:
.LFB10011:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	sete	al
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_valueC1IJRS2_EEEPS4_DpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_valueC1IJRS2_EEEPS4_DpOT_
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_valueC1IJRS2_EEEPS4_DpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_valueC1IJRS2_EEEPS4_DpOT_
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_valueC1IJRS2_EEEPS4_DpOT_:
.LFB10014:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_value6_M_ptrEv
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR [rax]
	mov	r8, rbx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JRS2_EEEvRS3_PT_DpOT0_
	nop
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_valueD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_valueD1Ev
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_valueD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_valueD1Ev
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_valueD1Ev:
.LFB10017:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_value6_M_ptrEv
	mov	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE7destroyIS2_EEvRS3_PT_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEplEx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEplEx
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEplEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEplEx
_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEplEx:
.LFB10018:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEC1ERKS4_
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_value6_M_valEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_value6_M_valEv
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_value6_M_valEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_value6_M_valEv
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_value6_M_valEv:
.LFB10019:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	add	rax, 8
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRPN3ULR4TypeEEONSt16remove_referenceIT_E4typeEOS5_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRPN3ULR4TypeEEONSt16remove_referenceIT_E4typeEOS5_
	.def	_ZSt4moveIRPN3ULR4TypeEEONSt16remove_referenceIT_E4typeEOS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRPN3ULR4TypeEEONSt16remove_referenceIT_E4typeEOS5_
_ZSt4moveIRPN3ULR4TypeEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB10020:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_:
.LFB10021:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, 8
	mov	rcx, rax
	call	_ZSt4moveIRPN3ULR4TypeEEONSt16remove_referenceIT_E4typeEOS5_
	mov	rcx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 32[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR 32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rsi, -8[rax]
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rbx, -16[rax]
	lea	rax, 40[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt13move_backwardIPPN3ULR4TypeES3_ET0_T_S5_S4_
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPN3ULR4TypeEEOT_RNSt16remove_referenceIS3_E4typeE
	mov	rbx, QWORD PTR [rax]
	lea	rax, 40[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEEdeEv
	mov	QWORD PTR [rax], rbx
	nop
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPcSaIS0_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPcSaIS0_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_
	.def	_ZNSt6vectorIPcSaIS0_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPcSaIS0_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_
_ZNSt6vectorIPcSaIS0_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_:
.LFB10022:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 104
	.seh_stackalloc	104
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR 0[rbp], rcx
	mov	QWORD PTR 8[rbp], rdx
	mov	QWORD PTR 16[rbp], r8
	mov	rcx, QWORD PTR 0[rbp]
	call	_ZNKSt6vectorIPcSaIS0_EE6cbeginEv
	mov	QWORD PTR -88[rbp], rax
	lea	rdx, -88[rbp]
	lea	rax, 8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxmiIPKPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 0[rbp]
	mov	rax, QWORD PTR 16[rax]
	cmp	rdx, rax
	je	.L318
	mov	rcx, QWORD PTR 0[rbp]
	call	_ZNKSt6vectorIPcSaIS0_EE4cendEv
	mov	QWORD PTR -80[rbp], rax
	lea	rdx, -80[rbp]
	lea	rax, 8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxeqIPKPcSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	test	al, al
	je	.L319
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZSt4moveIRPcEONSt16remove_referenceIT_E4typeEOS3_
	mov	rcx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 0[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPcEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	mov	rax, QWORD PTR 0[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L321
.L319:
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZSt4moveIRPcEONSt16remove_referenceIT_E4typeEOS3_
	mov	rbx, rax
	mov	rcx, QWORD PTR 0[rbp]
	call	_ZNSt6vectorIPcSaIS0_EE5beginEv
	mov	QWORD PTR -72[rbp], rax
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -72[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEplEx
	mov	r8, rbx
	mov	rdx, rax
	mov	rcx, QWORD PTR 0[rbp]
	call	_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_
	jmp	.L321
.L318:
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZSt4moveIRPcEONSt16remove_referenceIT_E4typeEOS3_
	mov	rbx, rax
	mov	rcx, QWORD PTR 0[rbp]
	call	_ZNSt6vectorIPcSaIS0_EE5beginEv
	mov	QWORD PTR -64[rbp], rax
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -64[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEplEx
	mov	r8, rbx
	mov	rdx, rax
	mov	rcx, QWORD PTR 0[rbp]
	call	_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.L321:
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	sal	rax, 3
	add	rax, rdx
	mov	QWORD PTR -48[rbp], rax
	lea	rdx, -48[rbp]
	lea	rax, -56[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC1ERKS2_
	mov	rax, QWORD PTR -56[rbp]
	add	rsp, 104
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRPcEONSt16remove_referenceIT_E4typeEOS3_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRPcEONSt16remove_referenceIT_E4typeEOS3_
	.def	_ZSt4moveIRPcEONSt16remove_referenceIT_E4typeEOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRPcEONSt16remove_referenceIT_E4typeEOS3_
_ZSt4moveIRPcEONSt16remove_referenceIT_E4typeEOS3_:
.LFB10023:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPcSaIS0_EE6cbeginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPcSaIS0_EE6cbeginEv
	.def	_ZNKSt6vectorIPcSaIS0_EE6cbeginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPcSaIS0_EE6cbeginEv
_ZNKSt6vectorIPcSaIS0_EE6cbeginEv:
.LFB10024:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC1ERKS3_
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPKPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPKPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.def	_ZN9__gnu_cxxmiIPKPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPKPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
_ZN9__gnu_cxxmiIPKPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB10025:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	sub	rbx, rax
	mov	rax, rbx
	sar	rax, 3
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPcSaIS0_EE4cendEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPcSaIS0_EE4cendEv
	.def	_ZNKSt6vectorIPcSaIS0_EE4cendEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPcSaIS0_EE4cendEv
_ZNKSt6vectorIPcSaIS0_EE4cendEv:
.LFB10026:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC1ERKS3_
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxeqIPKPcSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxeqIPKPcSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.def	_ZN9__gnu_cxxeqIPKPcSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxeqIPKPcSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
_ZN9__gnu_cxxeqIPKPcSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_:
.LFB10027:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	sete	al
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPcEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPcEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaIPcEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPcEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_
_ZNSt16allocator_traitsISaIPcEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_:
.LFB10028:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPcEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPcE9constructIS1_JRS1_EEEvPT_DpOT0_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueC1IJRS0_EEEPS2_DpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueC1IJRS0_EEEPS2_DpOT_
	.def	_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueC1IJRS0_EEEPS2_DpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueC1IJRS0_EEEPS2_DpOT_
_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueC1IJRS0_EEEPS2_DpOT_:
.LFB10031:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPcEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_ptrEv
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR [rax]
	mov	r8, rbx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPcEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_
	nop
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueD1Ev
	.def	_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueD1Ev
_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueD1Ev:
.LFB10034:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_ptrEv
	mov	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPcEE7destroyIS0_EEvRS1_PT_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10034:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10034-.LLSDACSB10034
.LLSDACSB10034:
.LLSDACSE10034:
	.section	.text$_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEplEx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEplEx
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEplEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEplEx
_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEplEx:
.LFB10035:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC1ERKS2_
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_valEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_valEv
	.def	_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_valEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_valEv
_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_valEv:
.LFB10036:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	add	rax, 8
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_
	.def	_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_
_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_:
.LFB10037:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, 8
	mov	rcx, rax
	call	_ZSt4moveIRPcEONSt16remove_referenceIT_E4typeEOS3_
	mov	rcx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 32[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPcEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR 32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rsi, -8[rax]
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rbx, -16[rax]
	lea	rax, 40[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt13move_backwardIPPcS1_ET0_T_S3_S2_
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPcEOT_RNSt16remove_referenceIS1_E4typeE
	mov	rbx, QWORD PTR [rax]
	lea	rax, 40[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEdeEv
	mov	QWORD PTR [rax], rbx
	nop
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.def	_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
.LFB10038:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 104
	.seh_stackalloc	104
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR 0[rbp], rcx
	mov	QWORD PTR 8[rbp], rdx
	mov	QWORD PTR 16[rbp], r8
	lea	r8, .LC0[rip]
	mov	edx, 1
	mov	rcx, QWORD PTR 0[rbp]
.LEHB36:
	call	_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEyPKc
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -64[rbp], rax
	mov	rcx, QWORD PTR 0[rbp]
	call	_ZNSt6vectorIPcSaIS0_EE5beginEv
	mov	QWORD PTR -88[rbp], rax
	lea	rdx, -88[rbp]
	lea	rax, 8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxmiIPPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEy
.LEHE36:
	mov	QWORD PTR -80[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPcEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rcx, rax
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPcEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_
	mov	QWORD PTR -40[rbp], 0
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, 8[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rdx, QWORD PTR [rax]
	mov	rcx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r9, rbx
	mov	r8, rcx
	mov	rcx, rax
.LEHB37:
	call	_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_
	mov	QWORD PTR -40[rbp], rax
	add	QWORD PTR -40[rbp], 8
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, 8[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	r9, rbx
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_
.LEHE37:
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r8, rcx
	mov	rcx, rax
.LEHB38:
	call	_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR 16[rdx]
	sub	rdx, QWORD PTR -56[rbp]
	sar	rdx, 3
	mov	rcx, rdx
	mov	rdx, QWORD PTR -56[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_y
.LEHE38:
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L348
.L346:
	mov	rcx, rax
	call	__cxa_begin_catch
	cmp	QWORD PTR -40[rbp], 0
	jne	.L343
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
.LEHB39:
	call	_ZNSt16allocator_traitsISaIPcEE7destroyIS0_EEvRS1_PT_
	jmp	.L344
.L343:
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E
.L344:
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_y
	call	__cxa_rethrow
.LEHE39:
.L347:
	mov	rbx, rax
	call	__cxa_end_catch
	mov	rax, rbx
	mov	rcx, rax
.LEHB40:
	call	_Unwind_Resume
	nop
.LEHE40:
.L348:
	add	rsp, 104
	pop	rbx
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA10038:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10038-.LLSDATTD10038
.LLSDATTD10038:
	.byte	0x1
	.uleb128 .LLSDACSE10038-.LLSDACSB10038
.LLSDACSB10038:
	.uleb128 .LEHB36-.LFB10038
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB10038
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L346-.LFB10038
	.uleb128 0x1
	.uleb128 .LEHB38-.LFB10038
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB10038
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L347-.LFB10038
	.uleb128 0
	.uleb128 .LEHB40-.LFB10038
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
.LLSDACSE10038:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT10038:
	.section	.text$_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC1ERKS1_
	.def	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC1ERKS1_
_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC1ERKS1_:
.LFB10041:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSaIPvEC2ERKS0_
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 16[rax], 0
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPvSaIS0_EE17_M_create_storageEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPvSaIS0_EE17_M_create_storageEy
	.def	_ZNSt12_Vector_baseIPvSaIS0_EE17_M_create_storageEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPvSaIS0_EE17_M_create_storageEy
_ZNSt12_Vector_baseIPvSaIS0_EE17_M_create_storageEy:
.LFB10042:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEy
	mov	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	add	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_y
	.def	_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_y
_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_y:
.LFB10043:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	cmp	QWORD PTR 24[rbp], 0
	je	.L353
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPvEE10deallocateERS1_PS0_y
.L353:
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt27__uninitialized_default_n_aIPPvyS0_ET_S2_T0_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt27__uninitialized_default_n_aIPPvyS0_ET_S2_T0_RSaIT1_E
	.def	_ZSt27__uninitialized_default_n_aIPPvyS0_ET_S2_T0_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt27__uninitialized_default_n_aIPPvyS0_ET_S2_T0_RSaIT1_E
_ZSt27__uninitialized_default_n_aIPPvyS0_ET_S2_T0_RSaIT1_E:
.LFB10044:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt25__uninitialized_default_nIPPvyET_S2_T0_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPPvEvT_S2_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPPvEvT_S2_
	.def	_ZSt8_DestroyIPPvEvT_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPPvEvT_S2_
_ZSt8_DestroyIPPvEvT_S2_:
.LFB10045:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPPvEEvT_S4_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPvSaIS0_EE6cbeginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPvSaIS0_EE6cbeginEv
	.def	_ZNKSt6vectorIPvSaIS0_EE6cbeginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPvSaIS0_EE6cbeginEv
_ZNKSt6vectorIPvSaIS0_EE6cbeginEv:
.LFB10046:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEEC1ERKS3_
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPKPvSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPKPvSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.def	_ZN9__gnu_cxxmiIPKPvSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPKPvSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
_ZN9__gnu_cxxmiIPKPvSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB10047:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	sub	rbx, rax
	mov	rax, rbx
	sar	rax, 3
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPvSaIS0_EE4cendEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPvSaIS0_EE4cendEv
	.def	_ZNKSt6vectorIPvSaIS0_EE4cendEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPvSaIS0_EE4cendEv
_ZNKSt6vectorIPvSaIS0_EE4cendEv:
.LFB10048:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEEC1ERKS3_
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxeqIPKPvSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxeqIPKPvSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.def	_ZN9__gnu_cxxeqIPKPvSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxeqIPKPvSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
_ZN9__gnu_cxxeqIPKPvSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_:
.LFB10049:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	sete	al
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPvEE9constructIS0_JPPN3ULR4TypeEEEEvRS1_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPvEE9constructIS0_JPPN3ULR4TypeEEEEvRS1_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaIPvEE9constructIS0_JPPN3ULR4TypeEEEEvRS1_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPvEE9constructIS0_JPPN3ULR4TypeEEEEvRS1_PT_DpOT0_
_ZNSt16allocator_traitsISaIPvEE9constructIS0_JPPN3ULR4TypeEEEEvRS1_PT_DpOT0_:
.LFB10050:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPvE9constructIS1_JPPN3ULR4TypeEEEEvPT_DpOT0_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPvSaIS0_EE16_Temporary_valueC1IJPPN3ULR4TypeEEEEPS2_DpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPvSaIS0_EE16_Temporary_valueC1IJPPN3ULR4TypeEEEEPS2_DpOT_
	.def	_ZNSt6vectorIPvSaIS0_EE16_Temporary_valueC1IJPPN3ULR4TypeEEEEPS2_DpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPvSaIS0_EE16_Temporary_valueC1IJPPN3ULR4TypeEEEEPS2_DpOT_
_ZNSt6vectorIPvSaIS0_EE16_Temporary_valueC1IJPPN3ULR4TypeEEEEPS2_DpOT_:
.LFB10053:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNSt6vectorIPvSaIS0_EE16_Temporary_value6_M_ptrEv
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR [rax]
	mov	r8, rbx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPvEE9constructIS0_JPPN3ULR4TypeEEEEvRS1_PT_DpOT0_
	nop
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPvSaIS0_EE16_Temporary_valueD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPvSaIS0_EE16_Temporary_valueD1Ev
	.def	_ZNSt6vectorIPvSaIS0_EE16_Temporary_valueD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPvSaIS0_EE16_Temporary_valueD1Ev
_ZNSt6vectorIPvSaIS0_EE16_Temporary_valueD1Ev:
.LFB10056:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPvSaIS0_EE16_Temporary_value6_M_ptrEv
	mov	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPvEE7destroyIS0_EEvRS1_PT_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10056:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10056-.LLSDACSB10056
.LLSDACSB10056:
.LLSDACSE10056:
	.section	.text$_ZNSt6vectorIPvSaIS0_EE16_Temporary_valueD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEplEx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEplEx
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEplEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEplEx
_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEplEx:
.LFB10057:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEC1ERKS2_
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPvSaIS0_EE16_Temporary_value6_M_valEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPvSaIS0_EE16_Temporary_value6_M_valEv
	.def	_ZNSt6vectorIPvSaIS0_EE16_Temporary_value6_M_valEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPvSaIS0_EE16_Temporary_value6_M_valEv
_ZNSt6vectorIPvSaIS0_EE16_Temporary_value6_M_valEv:
.LFB10058:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	add	rax, 8
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRPvEONSt16remove_referenceIT_E4typeEOS3_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRPvEONSt16remove_referenceIT_E4typeEOS3_
	.def	_ZSt4moveIRPvEONSt16remove_referenceIT_E4typeEOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRPvEONSt16remove_referenceIT_E4typeEOS3_
_ZSt4moveIRPvEONSt16remove_referenceIT_E4typeEOS3_:
.LFB10059:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPvSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPvSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_
	.def	_ZNSt6vectorIPvSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPvSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_
_ZNSt6vectorIPvSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_:
.LFB10060:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, 8
	mov	rcx, rax
	call	_ZSt4moveIRPvEONSt16remove_referenceIT_E4typeEOS3_
	mov	rcx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 32[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPvEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR 32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rsi, -8[rax]
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rbx, -16[rax]
	lea	rax, 40[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt13move_backwardIPPvS1_ET0_T_S3_S2_
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPvEOT_RNSt16remove_referenceIS1_E4typeE
	mov	rbx, QWORD PTR [rax]
	lea	rax, 40[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEdeEv
	mov	QWORD PTR [rax], rbx
	nop
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJPPN3ULR4TypeEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJPPN3ULR4TypeEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.def	_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJPPN3ULR4TypeEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJPPN3ULR4TypeEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJPPN3ULR4TypeEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
.LFB10061:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 104
	.seh_stackalloc	104
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR 0[rbp], rcx
	mov	QWORD PTR 8[rbp], rdx
	mov	QWORD PTR 16[rbp], r8
	lea	r8, .LC0[rip]
	mov	edx, 1
	mov	rcx, QWORD PTR 0[rbp]
.LEHB41:
	call	_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEyPKc
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -64[rbp], rax
	mov	rcx, QWORD PTR 0[rbp]
	call	_ZNSt6vectorIPvSaIS0_EE5beginEv
	mov	QWORD PTR -88[rbp], rax
	lea	rdx, -88[rbp]
	lea	rax, 8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxmiIPPvSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEy
.LEHE41:
	mov	QWORD PTR -80[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rcx, rax
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPvEE9constructIS0_JPPN3ULR4TypeEEEEvRS1_PT_DpOT0_
	mov	QWORD PTR -40[rbp], 0
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, 8[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rdx, QWORD PTR [rax]
	mov	rcx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r9, rbx
	mov	r8, rcx
	mov	rcx, rax
.LEHB42:
	call	_ZSt34__uninitialized_move_if_noexcept_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_
	mov	QWORD PTR -40[rbp], rax
	add	QWORD PTR -40[rbp], 8
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, 8[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	r9, rbx
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt34__uninitialized_move_if_noexcept_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_
.LEHE42:
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r8, rcx
	mov	rcx, rax
.LEHB43:
	call	_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR 16[rdx]
	sub	rdx, QWORD PTR -56[rbp]
	sar	rdx, 3
	mov	rcx, rdx
	mov	rdx, QWORD PTR -56[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_y
.LEHE43:
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L382
.L380:
	mov	rcx, rax
	call	__cxa_begin_catch
	cmp	QWORD PTR -40[rbp], 0
	jne	.L377
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
.LEHB44:
	call	_ZNSt16allocator_traitsISaIPvEE7destroyIS0_EEvRS1_PT_
	jmp	.L378
.L377:
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E
.L378:
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_y
	call	__cxa_rethrow
.LEHE44:
.L381:
	mov	rbx, rax
	call	__cxa_end_catch
	mov	rax, rbx
	mov	rcx, rax
.LEHB45:
	call	_Unwind_Resume
	nop
.LEHE45:
.L382:
	add	rsp, 104
	pop	rbx
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA10061:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10061-.LLSDATTD10061
.LLSDATTD10061:
	.byte	0x1
	.uleb128 .LLSDACSE10061-.LLSDACSB10061
.LLSDACSB10061:
	.uleb128 .LEHB41-.LFB10061
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB42-.LFB10061
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L380-.LFB10061
	.uleb128 0x1
	.uleb128 .LEHB43-.LFB10061
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB10061
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L381-.LFB10061
	.uleb128 0
	.uleb128 .LEHB45-.LFB10061
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
.LLSDACSE10061:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT10061:
	.section	.text$_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJPPN3ULR4TypeEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSaIPN3ULR4TypeEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIPN3ULR4TypeEEC2Ev
	.def	_ZNSaIPN3ULR4TypeEEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIPN3ULR4TypeEEC2Ev
_ZNSaIPN3ULR4TypeEEC2Ev:
.LFB10107:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEEC2Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPPN3ULR4TypeEEEvT_S6_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPPN3ULR4TypeEEEvT_S6_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPPN3ULR4TypeEEEvT_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPPN3ULR4TypeEEEvT_S6_
_ZNSt12_Destroy_auxILb1EE9__destroyIPPN3ULR4TypeEEEvT_S6_:
.LFB10109:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE10deallocateEPS3_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE10deallocateEPS3_y
	.def	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE10deallocateEPS3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE10deallocateEPS3_y
_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE10deallocateEPS3_y:
.LFB10110:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZdlPv
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE8allocateERS3_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE8allocateERS3_y
	.def	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE8allocateERS3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE8allocateERS3_y
_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE8allocateERS3_y:
.LFB10111:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	r8d, 0
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE8allocateEyPKv
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPKPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPKPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE
	.def	_ZSt12__niter_baseIPKPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPKPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE
_ZSt12__niter_baseIPKPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE:
.LFB10112:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	lea	rcx, 16[rbp]
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE
	.def	_ZSt12__niter_baseIPPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE
_ZSt12__niter_baseIPPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE:
.LFB10113:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	lea	rcx, 16[rbp]
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13__copy_move_aILb0EPKPN3ULR4TypeEPS2_ET1_T0_S7_S6_,"x"
	.linkonce discard
	.globl	_ZSt13__copy_move_aILb0EPKPN3ULR4TypeEPS2_ET1_T0_S7_S6_
	.def	_ZSt13__copy_move_aILb0EPKPN3ULR4TypeEPS2_ET1_T0_S7_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__copy_move_aILb0EPKPN3ULR4TypeEPS2_ET1_T0_S7_S6_
_ZSt13__copy_move_aILb0EPKPN3ULR4TypeEPS2_ET1_T0_S7_S6_:
.LFB10114:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ULR4TypeEEEPT_PKS6_S9_S7_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS6_SaIS6_EEEEEEvT_SC_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS6_SaIS6_EEEEEEvT_SC_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS6_SaIS6_EEEEEEvT_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS6_SaIS6_EEEEEEvT_SC_
_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPPN3ULR4TypeESt6vectorIS6_SaIS6_EEEEEEvT_SC_:
.LFB10115:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_
	.def	_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_
_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_:
.LFB10116:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13__copy_move_aILb0EPPN3ULR4TypeES3_ET1_T0_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt13__copy_move_aILb0EPPN3ULR4TypeES3_ET1_T0_S5_S4_
	.def	_ZSt13__copy_move_aILb0EPPN3ULR4TypeES3_ET1_T0_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__copy_move_aILb0EPPN3ULR4TypeES3_ET1_T0_S5_S4_
_ZSt13__copy_move_aILb0EPPN3ULR4TypeES3_ET1_T0_S5_S4_:
.LFB10117:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ULR4TypeEEEPT_PKS6_S9_S7_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN3ULR4TypeES5_EET0_T_S7_S6_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN3ULR4TypeES5_EET0_T_S7_S6_
	.def	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN3ULR4TypeES5_EET0_T_S7_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN3ULR4TypeES5_EET0_T_S7_S6_
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN3ULR4TypeES5_EET0_T_S7_S6_:
.LFB10118:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt4copyIPPN3ULR4TypeES3_ET0_T_S5_S4_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIPN3ULR4TypeEEC2ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIPN3ULR4TypeEEC2ERKS2_
	.def	_ZNSaIPN3ULR4TypeEEC2ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIPN3ULR4TypeEEC2ERKS2_
_ZNSaIPN3ULR4TypeEEC2ERKS2_:
.LFB10120:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEEC2ERKS4_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIPN3ULR4TypeEEC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIPN3ULR4TypeEEC1ERKS2_
	.def	_ZNSaIPN3ULR4TypeEEC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIPN3ULR4TypeEEC1ERKS2_
_ZNSaIPN3ULR4TypeEEC1ERKS2_:
.LFB10121:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEEC2ERKS4_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_
	.def	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_:
.LFB10122:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE8max_sizeEv
	.def	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE8max_sizeEv
_ZNKSt6vectorIPN3ULR4TypeESaIS2_EE8max_sizeEv:
.LFB10123:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt12_Vector_baseIPN3ULR4TypeESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE8max_sizeERKS3_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt32__make_move_if_noexcept_iteratorIPN3ULR4TypeESt13move_iteratorIPS2_EET0_PT_,"x"
	.linkonce discard
	.globl	_ZSt32__make_move_if_noexcept_iteratorIPN3ULR4TypeESt13move_iteratorIPS2_EET0_PT_
	.def	_ZSt32__make_move_if_noexcept_iteratorIPN3ULR4TypeESt13move_iteratorIPS2_EET0_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt32__make_move_if_noexcept_iteratorIPN3ULR4TypeESt13move_iteratorIPS2_EET0_PT_
_ZSt32__make_move_if_noexcept_iteratorIPN3ULR4TypeESt13move_iteratorIPS2_EET0_PT_:
.LFB10124:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	lea	rax, -8[rbp]
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt13move_iteratorIPPN3ULR4TypeEEC1ES3_
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aISt13move_iteratorIPPN3ULR4TypeEES4_S3_ET0_T_S7_S6_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aISt13move_iteratorIPPN3ULR4TypeEES4_S3_ET0_T_S7_S6_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aISt13move_iteratorIPPN3ULR4TypeEES4_S3_ET0_T_S7_S6_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aISt13move_iteratorIPPN3ULR4TypeEES4_S3_ET0_T_S7_S6_RSaIT1_E
_ZSt22__uninitialized_copy_aISt13move_iteratorIPPN3ULR4TypeEES4_S3_ET0_T_S7_S6_RSaIT1_E:
.LFB10125:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	QWORD PTR 40[rbp], r9
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt18uninitialized_copyISt13move_iteratorIPPN3ULR4TypeEES4_ET0_T_S7_S6_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE7destroyIS3_EEvPT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE7destroyIS3_EEvPT_
	.def	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE7destroyIS3_EEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE7destroyIS3_EEvPT_
_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE7destroyIS3_EEvPT_:
.LFB10126:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS3_SaIS3_EEE4baseEv:
.LFB10127:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_value6_M_ptrEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_value6_M_ptrEv
	.def	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_value6_M_ptrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_value6_M_ptrEv
_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_value6_M_ptrEv:
.LFB10128:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPN3ULR4TypeESaIS2_EE16_Temporary_value6_M_valEv
	mov	rcx, rax
	call	_ZNSt14pointer_traitsIPPN3ULR4TypeEE10pointer_toERS2_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_:
.LFB10129:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPN3ULR4TypeEEOT_RNSt16remove_referenceIS3_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE9constructIS3_JS3_EEEvPT_DpOT0_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13move_backwardIPPN3ULR4TypeES3_ET0_T_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt13move_backwardIPPN3ULR4TypeES3_ET0_T_S5_S4_
	.def	_ZSt13move_backwardIPPN3ULR4TypeES3_ET0_T_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13move_backwardIPPN3ULR4TypeES3_ET0_T_S5_S4_
_ZSt13move_backwardIPPN3ULR4TypeES3_ET0_T_S5_S4_:
.LFB10130:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZSt12__miter_baseIPPN3ULR4TypeEET_S4_
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZSt12__miter_baseIPPN3ULR4TypeEET_S4_
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	r8, rax
	mov	rdx, rbx
	call	_ZSt23__copy_move_backward_a2ILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIPN3ULR4TypeEEOT_RNSt16remove_referenceIS3_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIPN3ULR4TypeEEOT_RNSt16remove_referenceIS3_E4typeE
	.def	_ZSt7forwardIPN3ULR4TypeEEOT_RNSt16remove_referenceIS3_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIPN3ULR4TypeEEOT_RNSt16remove_referenceIS3_E4typeE
_ZSt7forwardIPN3ULR4TypeEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB10131:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPcEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPcEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaIPcEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPcEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
_ZNSt16allocator_traitsISaIPcEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_:
.LFB10132:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPcEOT_RNSt16remove_referenceIS1_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPcE9constructIS1_JS1_EEEvPT_DpOT0_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.def	_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
.LFB10133:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 104
	.seh_stackalloc	104
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR 0[rbp], rcx
	mov	QWORD PTR 8[rbp], rdx
	mov	QWORD PTR 16[rbp], r8
	lea	r8, .LC0[rip]
	mov	edx, 1
	mov	rcx, QWORD PTR 0[rbp]
.LEHB46:
	call	_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEyPKc
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -64[rbp], rax
	mov	rcx, QWORD PTR 0[rbp]
	call	_ZNSt6vectorIPcSaIS0_EE5beginEv
	mov	QWORD PTR -88[rbp], rax
	lea	rdx, -88[rbp]
	lea	rax, 8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxmiIPPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEy
.LEHE46:
	mov	QWORD PTR -80[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPcEOT_RNSt16remove_referenceIS1_E4typeE
	mov	rcx, rax
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPcEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	mov	QWORD PTR -40[rbp], 0
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, 8[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rdx, QWORD PTR [rax]
	mov	rcx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r9, rbx
	mov	r8, rcx
	mov	rcx, rax
.LEHB47:
	call	_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_
	mov	QWORD PTR -40[rbp], rax
	add	QWORD PTR -40[rbp], 8
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, 8[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	r9, rbx
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_
.LEHE47:
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r8, rcx
	mov	rcx, rax
.LEHB48:
	call	_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR 16[rdx]
	sub	rdx, QWORD PTR -56[rbp]
	sar	rdx, 3
	mov	rcx, rdx
	mov	rdx, QWORD PTR -56[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_y
.LEHE48:
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L430
.L428:
	mov	rcx, rax
	call	__cxa_begin_catch
	cmp	QWORD PTR -40[rbp], 0
	jne	.L425
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
.LEHB49:
	call	_ZNSt16allocator_traitsISaIPcEE7destroyIS0_EEvRS1_PT_
	jmp	.L426
.L425:
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E
.L426:
	mov	rax, QWORD PTR 0[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_y
	call	__cxa_rethrow
.LEHE49:
.L429:
	mov	rbx, rax
	call	__cxa_end_catch
	mov	rax, rbx
	mov	rcx, rax
.LEHB50:
	call	_Unwind_Resume
	nop
.LEHE50:
.L430:
	add	rsp, 104
	pop	rbx
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA10133:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10133-.LLSDATTD10133
.LLSDATTD10133:
	.byte	0x1
	.uleb128 .LLSDACSE10133-.LLSDACSB10133
.LLSDACSB10133:
	.uleb128 .LEHB46-.LFB10133
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB10133
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L428-.LFB10133
	.uleb128 0x1
	.uleb128 .LEHB48-.LFB10133
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB10133
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L429-.LFB10133
	.uleb128 0
	.uleb128 .LEHB50-.LFB10133
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
.LLSDACSE10133:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT10133:
	.section	.text$_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC1ERKS3_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC1ERKS3_
_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC1ERKS3_:
.LFB10136:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB10137:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPcE9constructIS1_JRS1_EEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPcE9constructIS1_JRS1_EEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorIPcE9constructIS1_JRS1_EEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPcE9constructIS1_JRS1_EEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorIPcE9constructIS1_JRS1_EEEvPT_DpOT0_:
.LFB10138:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRPcEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	ecx, 8
	call	_ZnwyPv
	mov	QWORD PTR [rax], rbx
	nop
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_ptrEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_ptrEv
	.def	_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_ptrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_ptrEv
_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_ptrEv:
.LFB10139:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_valEv
	mov	rcx, rax
	call	_ZNSt14pointer_traitsIPPcE10pointer_toERS0_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPcEE7destroyIS0_EEvRS1_PT_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPcEE7destroyIS0_EEvRS1_PT_
	.def	_ZNSt16allocator_traitsISaIPcEE7destroyIS0_EEvRS1_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPcEE7destroyIS0_EEvRS1_PT_
_ZNSt16allocator_traitsISaIPcEE7destroyIS0_EEvRS1_PT_:
.LFB10140:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPcE7destroyIS1_EEvPT_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13move_backwardIPPcS1_ET0_T_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt13move_backwardIPPcS1_ET0_T_S3_S2_
	.def	_ZSt13move_backwardIPPcS1_ET0_T_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13move_backwardIPPcS1_ET0_T_S3_S2_
_ZSt13move_backwardIPPcS1_ET0_T_S3_S2_:
.LFB10141:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZSt12__miter_baseIPPcET_S2_
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZSt12__miter_baseIPPcET_S2_
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	r8, rax
	mov	rdx, rbx
	call	_ZSt23__copy_move_backward_a2ILb1EPPcS1_ET1_T0_S3_S2_
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEdeEv:
.LFB10142:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEyPKc
_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEyPKc:
.LFB10143:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -48[rbp], rcx
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -32[rbp], r8
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv
	mov	rbx, rax
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPcSaIS0_EE4sizeEv
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, QWORD PTR -40[rbp]
	cmp	rdx, rax
	setb	al
	test	al, al
	je	.L443
	mov	rax, QWORD PTR -32[rbp]
	mov	rcx, rax
	call	_ZSt20__throw_length_errorPKc
.L443:
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPcSaIS0_EE4sizeEv
	mov	rbx, rax
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPcSaIS0_EE4sizeEv
	mov	QWORD PTR -96[rbp], rax
	lea	rdx, -40[rbp]
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZSt3maxIyERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	add	rax, rbx
	mov	QWORD PTR -88[rbp], rax
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPcSaIS0_EE4sizeEv
	cmp	QWORD PTR -88[rbp], rax
	jb	.L444
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv
	cmp	QWORD PTR -88[rbp], rax
	jbe	.L445
.L444:
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv
	jmp	.L446
.L445:
	mov	rax, QWORD PTR -88[rbp]
.L446:
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.def	_ZN9__gnu_cxxmiIPPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
_ZN9__gnu_cxxmiIPPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:
.LFB10144:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	sub	rbx, rax
	mov	rax, rbx
	sar	rax, 3
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEy
_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEy:
.LFB10145:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	cmp	QWORD PTR 24[rbp], 0
	je	.L451
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_y
	jmp	.L453
.L451:
	mov	eax, 0
.L453:
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB10146:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_,"x"
	.linkonce discard
	.globl	_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_
	.def	_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_
_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB10147:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	QWORD PTR -40[rbp], r9
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZSt32__make_move_if_noexcept_iteratorIPcSt13move_iteratorIPS0_EET0_PT_
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZSt32__make_move_if_noexcept_iteratorIPcSt13move_iteratorIPS0_EET0_PT_
	mov	rcx, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	r9, rdx
	mov	r8, rax
	mov	rdx, rbx
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPPcES2_S1_ET0_T_S5_S4_RSaIT1_E
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E
	.def	_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E
_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E:
.LFB10148:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt8_DestroyIPPcEvT_S2_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_y
	.def	_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_y
_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_y:
.LFB10149:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	cmp	QWORD PTR 24[rbp], 0
	je	.L461
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_y
.L461:
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIPvEC2ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIPvEC2ERKS0_
	.def	_ZNSaIPvEC2ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIPvEC2ERKS0_
_ZNSaIPvEC2ERKS0_:
.LFB10151:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPvEC2ERKS2_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEy
_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEy:
.LFB10153:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	cmp	QWORD PTR 24[rbp], 0
	je	.L464
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPvEE8allocateERS1_y
	jmp	.L466
.L464:
	mov	eax, 0
.L466:
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPvEE10deallocateERS1_PS0_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPvEE10deallocateERS1_PS0_y
	.def	_ZNSt16allocator_traitsISaIPvEE10deallocateERS1_PS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPvEE10deallocateERS1_PS0_y
_ZNSt16allocator_traitsISaIPvEE10deallocateERS1_PS0_y:
.LFB10154:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_y
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt25__uninitialized_default_nIPPvyET_S2_T0_,"x"
	.linkonce discard
	.globl	_ZSt25__uninitialized_default_nIPPvyET_S2_T0_
	.def	_ZSt25__uninitialized_default_nIPPvyET_S2_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt25__uninitialized_default_nIPPvyET_S2_T0_
_ZSt25__uninitialized_default_nIPPvyET_S2_T0_:
.LFB10155:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	BYTE PTR -1[rbp], 1
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPvyEET_S4_T0_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPPvEEvT_S4_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPPvEEvT_S4_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPPvEEvT_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPPvEEvT_S4_
_ZNSt12_Destroy_auxILb1EE9__destroyIPPvEEvT_S4_:
.LFB10156:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEEC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEEC1ERKS3_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEEC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEEC1ERKS3_
_ZN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEEC1ERKS3_:
.LFB10159:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB10160:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPvE9constructIS1_JPPN3ULR4TypeEEEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPvE9constructIS1_JPPN3ULR4TypeEEEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorIPvE9constructIS1_JPPN3ULR4TypeEEEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPvE9constructIS1_JPPN3ULR4TypeEEEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorIPvE9constructIS1_JPPN3ULR4TypeEEEEvPT_DpOT0_:
.LFB10161:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPPN3ULR4TypeEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	ecx, 8
	call	_ZnwyPv
	mov	QWORD PTR [rax], rbx
	nop
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIPvSaIS0_EE16_Temporary_value6_M_ptrEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIPvSaIS0_EE16_Temporary_value6_M_ptrEv
	.def	_ZNSt6vectorIPvSaIS0_EE16_Temporary_value6_M_ptrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPvSaIS0_EE16_Temporary_value6_M_ptrEv
_ZNSt6vectorIPvSaIS0_EE16_Temporary_value6_M_ptrEv:
.LFB10162:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt6vectorIPvSaIS0_EE16_Temporary_value6_M_valEv
	mov	rcx, rax
	call	_ZNSt14pointer_traitsIPPvE10pointer_toERS0_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPvEE7destroyIS0_EEvRS1_PT_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPvEE7destroyIS0_EEvRS1_PT_
	.def	_ZNSt16allocator_traitsISaIPvEE7destroyIS0_EEvRS1_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPvEE7destroyIS0_EEvRS1_PT_
_ZNSt16allocator_traitsISaIPvEE7destroyIS0_EEvRS1_PT_:
.LFB10163:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPvE7destroyIS1_EEvPT_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPvEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPvEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaIPvEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPvEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
_ZNSt16allocator_traitsISaIPvEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_:
.LFB10164:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPvEOT_RNSt16remove_referenceIS1_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPvE9constructIS1_JS1_EEEvPT_DpOT0_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13move_backwardIPPvS1_ET0_T_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt13move_backwardIPPvS1_ET0_T_S3_S2_
	.def	_ZSt13move_backwardIPPvS1_ET0_T_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13move_backwardIPPvS1_ET0_T_S3_S2_
_ZSt13move_backwardIPPvS1_ET0_T_S3_S2_:
.LFB10165:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZSt12__miter_baseIPPvET_S2_
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZSt12__miter_baseIPPvET_S2_
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	r8, rax
	mov	rdx, rbx
	call	_ZSt23__copy_move_backward_a2ILb1EPPvS1_ET1_T0_S3_S2_
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEEdeEv:
.LFB10166:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIPvEOT_RNSt16remove_referenceIS1_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIPvEOT_RNSt16remove_referenceIS1_E4typeE
	.def	_ZSt7forwardIPvEOT_RNSt16remove_referenceIS1_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIPvEOT_RNSt16remove_referenceIS1_E4typeE
_ZSt7forwardIPvEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB10167:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEyPKc
_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEyPKc:
.LFB10168:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -48[rbp], rcx
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -32[rbp], r8
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPvSaIS0_EE8max_sizeEv
	mov	rbx, rax
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPvSaIS0_EE4sizeEv
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, QWORD PTR -40[rbp]
	cmp	rdx, rax
	setb	al
	test	al, al
	je	.L486
	mov	rax, QWORD PTR -32[rbp]
	mov	rcx, rax
	call	_ZSt20__throw_length_errorPKc
.L486:
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPvSaIS0_EE4sizeEv
	mov	rbx, rax
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPvSaIS0_EE4sizeEv
	mov	QWORD PTR -96[rbp], rax
	lea	rdx, -40[rbp]
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZSt3maxIyERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	add	rax, rbx
	mov	QWORD PTR -88[rbp], rax
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPvSaIS0_EE4sizeEv
	cmp	QWORD PTR -88[rbp], rax
	jb	.L487
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPvSaIS0_EE8max_sizeEv
	cmp	QWORD PTR -88[rbp], rax
	jbe	.L488
.L487:
	mov	rcx, QWORD PTR -48[rbp]
	call	_ZNKSt6vectorIPvSaIS0_EE8max_sizeEv
	jmp	.L489
.L488:
	mov	rax, QWORD PTR -88[rbp]
.L489:
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPPvSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPPvSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.def	_ZN9__gnu_cxxmiIPPvSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPPvSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
_ZN9__gnu_cxxmiIPPvSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:
.LFB10169:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	sub	rbx, rax
	mov	rax, rbx
	sar	rax, 3
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt34__uninitialized_move_if_noexcept_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_,"x"
	.linkonce discard
	.globl	_ZSt34__uninitialized_move_if_noexcept_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_
	.def	_ZSt34__uninitialized_move_if_noexcept_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt34__uninitialized_move_if_noexcept_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_
_ZSt34__uninitialized_move_if_noexcept_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB10170:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	QWORD PTR -40[rbp], r9
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZSt32__make_move_if_noexcept_iteratorIPvSt13move_iteratorIPS0_EET0_PT_
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZSt32__make_move_if_noexcept_iteratorIPvSt13move_iteratorIPS0_EET0_PT_
	mov	rcx, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	r9, rdx
	mov	r8, rax
	mov	rdx, rbx
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPPvES2_S1_ET0_T_S5_S4_RSaIT1_E
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEEC2Ev
_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEEC2Ev:
.LFB10220:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE8allocateEyPKv:
.LFB10222:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNK9__gnu_cxx13new_allocatorIPN3ULR4TypeEE8max_sizeEv
	cmp	QWORD PTR 24[rbp], rax
	seta	al
	test	al, al
	je	.L499
	call	_ZSt17__throw_bad_allocv
.L499:
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	mov	rcx, rax
	call	_Znwy
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ULR4TypeEEEPT_PKS6_S9_S7_,"x"
	.linkonce discard
	.globl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ULR4TypeEEEPT_PKS6_S9_S7_
	.def	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ULR4TypeEEEPT_PKS6_S9_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ULR4TypeEEEPT_PKS6_S9_S7_
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ULR4TypeEEEPT_PKS6_S9_S7_:
.LFB10223:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	sub	rax, QWORD PTR 16[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L501
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 32[rbp]
	mov	r8, rdx
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	memmove
.L501:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 32[rbp]
	add	rax, rdx
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEEC2ERKS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEEC2ERKS4_
	.def	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEEC2ERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEEC2ERKS4_
_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEEC2ERKS4_:
.LFB10225:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_,"x"
	.linkonce discard
	.globl	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_
	.def	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_:
.LFB10227:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEET_SB_
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEET_SB_
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	r8, rax
	mov	rdx, rbx
	call	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET1_T0_SD_SC_
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE8max_sizeERKS3_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE8max_sizeERKS3_
	.def	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE8max_sizeERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE8max_sizeERKS3_
_ZNSt16allocator_traitsISaIPN3ULR4TypeEEE8max_sizeERKS3_:
.LFB10228:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNK9__gnu_cxx13new_allocatorIPN3ULR4TypeEE8max_sizeEv
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt13move_iteratorIPPN3ULR4TypeEEC1ES3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt13move_iteratorIPPN3ULR4TypeEEC1ES3_
	.def	_ZNSt13move_iteratorIPPN3ULR4TypeEEC1ES3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13move_iteratorIPPN3ULR4TypeEEC1ES3_
_ZNSt13move_iteratorIPPN3ULR4TypeEEC1ES3_:
.LFB10231:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyISt13move_iteratorIPPN3ULR4TypeEES4_ET0_T_S7_S6_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyISt13move_iteratorIPPN3ULR4TypeEES4_ET0_T_S7_S6_
	.def	_ZSt18uninitialized_copyISt13move_iteratorIPPN3ULR4TypeEES4_ET0_T_S7_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyISt13move_iteratorIPPN3ULR4TypeEES4_ET0_T_S7_S6_
_ZSt18uninitialized_copyISt13move_iteratorIPPN3ULR4TypeEES4_ET0_T_S7_S6_:
.LFB10232:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPN3ULR4TypeEES6_EET0_T_S9_S8_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14pointer_traitsIPPN3ULR4TypeEE10pointer_toERS2_,"x"
	.linkonce discard
	.globl	_ZNSt14pointer_traitsIPPN3ULR4TypeEE10pointer_toERS2_
	.def	_ZNSt14pointer_traitsIPPN3ULR4TypeEE10pointer_toERS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14pointer_traitsIPPN3ULR4TypeEE10pointer_toERS2_
_ZNSt14pointer_traitsIPPN3ULR4TypeEE10pointer_toERS2_:
.LFB10233:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt9addressofIPN3ULR4TypeEEPT_RS3_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE9constructIS3_JS3_EEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE9constructIS3_JS3_EEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE9constructIS3_JS3_EEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE9constructIS3_JS3_EEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorIPN3ULR4TypeEE9constructIS3_JS3_EEEvPT_DpOT0_:
.LFB10234:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPN3ULR4TypeEEOT_RNSt16remove_referenceIS3_E4typeE
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	ecx, 8
	call	_ZnwyPv
	mov	QWORD PTR [rax], rbx
	nop
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt23__copy_move_backward_a2ILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt23__copy_move_backward_a2ILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_
	.def	_ZSt23__copy_move_backward_a2ILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt23__copy_move_backward_a2ILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_
_ZSt23__copy_move_backward_a2ILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_:
.LFB10235:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_
	mov	rsi, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_
	mov	rbx, rax
	mov	rcx, QWORD PTR 32[rbp]
	call	_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt22__copy_move_backward_aILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPcE9constructIS1_JS1_EEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPcE9constructIS1_JS1_EEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorIPcE9constructIS1_JS1_EEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPcE9constructIS1_JS1_EEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorIPcE9constructIS1_JS1_EEEvPT_DpOT0_:
.LFB10236:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPcEOT_RNSt16remove_referenceIS1_E4typeE
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	ecx, 8
	call	_ZnwyPv
	mov	QWORD PTR [rax], rbx
	nop
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14pointer_traitsIPPcE10pointer_toERS0_,"x"
	.linkonce discard
	.globl	_ZNSt14pointer_traitsIPPcE10pointer_toERS0_
	.def	_ZNSt14pointer_traitsIPPcE10pointer_toERS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14pointer_traitsIPPcE10pointer_toERS0_
_ZNSt14pointer_traitsIPPcE10pointer_toERS0_:
.LFB10237:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt9addressofIPcEPT_RS1_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPcE7destroyIS1_EEvPT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPcE7destroyIS1_EEvPT_
	.def	_ZN9__gnu_cxx13new_allocatorIPcE7destroyIS1_EEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPcE7destroyIS1_EEvPT_
_ZN9__gnu_cxx13new_allocatorIPcE7destroyIS1_EEvPT_:
.LFB10238:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIPPcET_S2_,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIPPcET_S2_
	.def	_ZSt12__miter_baseIPPcET_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIPPcET_S2_
_ZSt12__miter_baseIPPcET_S2_:
.LFB10239:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt23__copy_move_backward_a2ILb1EPPcS1_ET1_T0_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt23__copy_move_backward_a2ILb1EPPcS1_ET1_T0_S3_S2_
	.def	_ZSt23__copy_move_backward_a2ILb1EPPcS1_ET1_T0_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt23__copy_move_backward_a2ILb1EPPcS1_ET1_T0_S3_S2_
_ZSt23__copy_move_backward_a2ILb1EPPcS1_ET1_T0_S3_S2_:
.LFB10240:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPcET_S2_
	mov	rsi, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPcET_S2_
	mov	rbx, rax
	mov	rcx, QWORD PTR 32[rbp]
	call	_ZSt12__niter_baseIPPcET_S2_
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt22__copy_move_backward_aILb1EPPcS1_ET1_T0_S3_S2_
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv
	.def	_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv
_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv:
.LFB10241:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPcEE8max_sizeERKS1_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPcEE8allocateERS1_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_y
	.def	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_y
_ZNSt16allocator_traitsISaIPcEE8allocateERS1_y:
.LFB10242:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	r8d, 0
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEyPKv
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt32__make_move_if_noexcept_iteratorIPcSt13move_iteratorIPS0_EET0_PT_,"x"
	.linkonce discard
	.globl	_ZSt32__make_move_if_noexcept_iteratorIPcSt13move_iteratorIPS0_EET0_PT_
	.def	_ZSt32__make_move_if_noexcept_iteratorIPcSt13move_iteratorIPS0_EET0_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt32__make_move_if_noexcept_iteratorIPcSt13move_iteratorIPS0_EET0_PT_
_ZSt32__make_move_if_noexcept_iteratorIPcSt13move_iteratorIPS0_EET0_PT_:
.LFB10243:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	lea	rax, -8[rbp]
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt13move_iteratorIPPcEC1ES1_
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aISt13move_iteratorIPPcES2_S1_ET0_T_S5_S4_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aISt13move_iteratorIPPcES2_S1_ET0_T_S5_S4_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aISt13move_iteratorIPPcES2_S1_ET0_T_S5_S4_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aISt13move_iteratorIPPcES2_S1_ET0_T_S5_S4_RSaIT1_E
_ZSt22__uninitialized_copy_aISt13move_iteratorIPPcES2_S1_ET0_T_S5_S4_RSaIT1_E:
.LFB10244:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	QWORD PTR 40[rbp], r9
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt18uninitialized_copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPPcEvT_S2_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPPcEvT_S2_
	.def	_ZSt8_DestroyIPPcEvT_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPPcEvT_S2_
_ZSt8_DestroyIPPcEvT_S2_:
.LFB10245:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPPcEEvT_S4_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_y
	.def	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_y
_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_y:
.LFB10246:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_y
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPvEC2ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPvEC2ERKS2_
	.def	_ZN9__gnu_cxx13new_allocatorIPvEC2ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPvEC2ERKS2_
_ZN9__gnu_cxx13new_allocatorIPvEC2ERKS2_:
.LFB10248:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPvEE8allocateERS1_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPvEE8allocateERS1_y
	.def	_ZNSt16allocator_traitsISaIPvEE8allocateERS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPvEE8allocateERS1_y
_ZNSt16allocator_traitsISaIPvEE8allocateERS1_y:
.LFB10250:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	r8d, 0
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN9__gnu_cxx13new_allocatorIPvE8allocateEyPKv
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_y
	.def	_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_y
_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_y:
.LFB10251:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZdlPv
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPvyEET_S4_T0_,"x"
	.linkonce discard
	.globl	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPvyEET_S4_T0_
	.def	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPvyEET_S4_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPvyEET_S4_T0_
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPvyEET_S4_T0_:
.LFB10252:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR -8[rbp], 0
	lea	rdx, -8[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt6fill_nIPPvyS0_ET_S2_T0_RKT1_
	nop
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14pointer_traitsIPPvE10pointer_toERS0_,"x"
	.linkonce discard
	.globl	_ZNSt14pointer_traitsIPPvE10pointer_toERS0_
	.def	_ZNSt14pointer_traitsIPPvE10pointer_toERS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14pointer_traitsIPPvE10pointer_toERS0_
_ZNSt14pointer_traitsIPPvE10pointer_toERS0_:
.LFB10253:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt9addressofIPvEPT_RS1_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPvE7destroyIS1_EEvPT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPvE7destroyIS1_EEvPT_
	.def	_ZN9__gnu_cxx13new_allocatorIPvE7destroyIS1_EEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPvE7destroyIS1_EEvPT_
_ZN9__gnu_cxx13new_allocatorIPvE7destroyIS1_EEvPT_:
.LFB10254:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPvE9constructIS1_JS1_EEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPvE9constructIS1_JS1_EEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorIPvE9constructIS1_JS1_EEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPvE9constructIS1_JS1_EEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorIPvE9constructIS1_JS1_EEEvPT_DpOT0_:
.LFB10255:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIPvEOT_RNSt16remove_referenceIS1_E4typeE
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	ecx, 8
	call	_ZnwyPv
	mov	QWORD PTR [rax], rbx
	nop
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIPPvET_S2_,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIPPvET_S2_
	.def	_ZSt12__miter_baseIPPvET_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIPPvET_S2_
_ZSt12__miter_baseIPPvET_S2_:
.LFB10256:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt23__copy_move_backward_a2ILb1EPPvS1_ET1_T0_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt23__copy_move_backward_a2ILb1EPPvS1_ET1_T0_S3_S2_
	.def	_ZSt23__copy_move_backward_a2ILb1EPPvS1_ET1_T0_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt23__copy_move_backward_a2ILb1EPPvS1_ET1_T0_S3_S2_
_ZSt23__copy_move_backward_a2ILb1EPPvS1_ET1_T0_S3_S2_:
.LFB10257:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPvET_S2_
	mov	rsi, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPvET_S2_
	mov	rbx, rax
	mov	rcx, QWORD PTR 32[rbp]
	call	_ZSt12__niter_baseIPPvET_S2_
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt22__copy_move_backward_aILb1EPPvS1_ET1_T0_S3_S2_
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIPvSaIS0_EE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIPvSaIS0_EE8max_sizeEv
	.def	_ZNKSt6vectorIPvSaIS0_EE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIPvSaIS0_EE8max_sizeEv
_ZNKSt6vectorIPvSaIS0_EE8max_sizeEv:
.LFB10258:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	call	_ZNSt16allocator_traitsISaIPvEE8max_sizeERKS1_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt32__make_move_if_noexcept_iteratorIPvSt13move_iteratorIPS0_EET0_PT_,"x"
	.linkonce discard
	.globl	_ZSt32__make_move_if_noexcept_iteratorIPvSt13move_iteratorIPS0_EET0_PT_
	.def	_ZSt32__make_move_if_noexcept_iteratorIPvSt13move_iteratorIPS0_EET0_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt32__make_move_if_noexcept_iteratorIPvSt13move_iteratorIPS0_EET0_PT_
_ZSt32__make_move_if_noexcept_iteratorIPvSt13move_iteratorIPS0_EET0_PT_:
.LFB10259:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	lea	rax, -8[rbp]
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt13move_iteratorIPPvEC1ES1_
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aISt13move_iteratorIPPvES2_S1_ET0_T_S5_S4_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aISt13move_iteratorIPPvES2_S1_ET0_T_S5_S4_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aISt13move_iteratorIPPvES2_S1_ET0_T_S5_S4_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aISt13move_iteratorIPPvES2_S1_ET0_T_S5_S4_RSaIT1_E
_ZSt22__uninitialized_copy_aISt13move_iteratorIPPvES2_S1_ET0_T_S5_S4_RSaIT1_E:
.LFB10260:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	QWORD PTR 40[rbp], r9
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt18uninitialized_copyISt13move_iteratorIPPvES2_ET0_T_S5_S4_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorIPN3ULR4TypeEE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorIPN3ULR4TypeEE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorIPN3ULR4TypeEE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorIPN3ULR4TypeEE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorIPN3ULR4TypeEE8max_sizeEv:
.LFB10288:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	movabs	rax, 2305843009213693951
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET1_T0_SD_SC_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET1_T0_SD_SC_
	.def	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET1_T0_SD_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET1_T0_SD_SC_
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKPN3ULR4TypeESt6vectorIS4_SaIS4_EEEEPS4_ET1_T0_SD_SC_:
.LFB10289:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_
	mov	rsi, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPKPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE
	mov	rbx, rax
	mov	rcx, QWORD PTR 32[rbp]
	call	_ZSt12__niter_baseIPKPN3ULR4TypeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt13__copy_move_aILb0EPKPN3ULR4TypeEPS2_ET1_T0_S7_S6_
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPN3ULR4TypeEES6_EET0_T_S9_S8_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPN3ULR4TypeEES6_EET0_T_S9_S8_
	.def	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPN3ULR4TypeEES6_EET0_T_S9_S8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPN3ULR4TypeEES6_EET0_T_S9_S8_
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPN3ULR4TypeEES6_EET0_T_S9_S8_:
.LFB10290:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt4copyISt13move_iteratorIPPN3ULR4TypeEES4_ET0_T_S7_S6_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt9addressofIPN3ULR4TypeEEPT_RS3_,"x"
	.linkonce discard
	.globl	_ZSt9addressofIPN3ULR4TypeEEPT_RS3_
	.def	_ZSt9addressofIPN3ULR4TypeEEPT_RS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9addressofIPN3ULR4TypeEEPT_RS3_
_ZSt9addressofIPN3ULR4TypeEEPT_RS3_:
.LFB10291:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt11__addressofIPN3ULR4TypeEEPT_RS3_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__copy_move_backward_aILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt22__copy_move_backward_aILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_
	.def	_ZSt22__copy_move_backward_aILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__copy_move_backward_aILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_
_ZSt22__copy_move_backward_aILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_:
.LFB10292:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN3ULR4TypeEEEPT_PKS6_S9_S7_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt9addressofIPcEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt9addressofIPcEPT_RS1_
	.def	_ZSt9addressofIPcEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9addressofIPcEPT_RS1_
_ZSt9addressofIPcEPT_RS1_:
.LFB10293:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt11__addressofIPcEPT_RS1_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPPcET_S2_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPPcET_S2_
	.def	_ZSt12__niter_baseIPPcET_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPPcET_S2_
_ZSt12__niter_baseIPPcET_S2_:
.LFB10294:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__copy_move_backward_aILb1EPPcS1_ET1_T0_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt22__copy_move_backward_aILb1EPPcS1_ET1_T0_S3_S2_
	.def	_ZSt22__copy_move_backward_aILb1EPPcS1_ET1_T0_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__copy_move_backward_aILb1EPPcS1_ET1_T0_S3_S2_
_ZSt22__copy_move_backward_aILb1EPPcS1_ET1_T0_S3_S2_:
.LFB10295:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPcEE8max_sizeERKS1_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPcEE8max_sizeERKS1_
	.def	_ZNSt16allocator_traitsISaIPcEE8max_sizeERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPcEE8max_sizeERKS1_
_ZNSt16allocator_traitsISaIPcEE8max_sizeERKS1_:
.LFB10296:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNK9__gnu_cxx13new_allocatorIPcE8max_sizeEv
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB10297:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPcE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorIPcE8allocateEyPKv:
.LFB10298:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNK9__gnu_cxx13new_allocatorIPcE8max_sizeEv
	cmp	QWORD PTR 24[rbp], rax
	seta	al
	test	al, al
	je	.L578
	call	_ZSt17__throw_bad_allocv
.L578:
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	mov	rcx, rax
	call	_Znwy
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt13move_iteratorIPPcEC1ES1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt13move_iteratorIPPcEC1ES1_
	.def	_ZNSt13move_iteratorIPPcEC1ES1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13move_iteratorIPPcEC1ES1_
_ZNSt13move_iteratorIPPcEC1ES1_:
.LFB10301:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_
	.def	_ZSt18uninitialized_copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_
_ZSt18uninitialized_copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_:
.LFB10302:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPcES4_EET0_T_S7_S6_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPPcEEvT_S4_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPPcEEvT_S4_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPPcEEvT_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPPcEEvT_S4_
_ZNSt12_Destroy_auxILb1EE9__destroyIPPcEEvT_S4_:
.LFB10303:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_y
	.def	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_y
_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_y:
.LFB10304:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZdlPv
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIPvE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIPvE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorIPvE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIPvE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorIPvE8allocateEyPKv:
.LFB10305:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNK9__gnu_cxx13new_allocatorIPvE8max_sizeEv
	cmp	QWORD PTR 24[rbp], rax
	seta	al
	test	al, al
	je	.L588
	call	_ZSt17__throw_bad_allocv
.L588:
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	mov	rcx, rax
	call	_Znwy
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt6fill_nIPPvyS0_ET_S2_T0_RKT1_,"x"
	.linkonce discard
	.globl	_ZSt6fill_nIPPvyS0_ET_S2_T0_RKT1_
	.def	_ZSt6fill_nIPPvyS0_ET_S2_T0_RKT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt6fill_nIPPvyS0_ET_S2_T0_RKT1_
_ZSt6fill_nIPPvyS0_ET_S2_T0_RKT1_:
.LFB10306:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt12__niter_baseIPPvET_S2_
	mov	rcx, rax
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	call	_ZSt10__fill_n_aIPPvyS0_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES7_T0_RKS5_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt9addressofIPvEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt9addressofIPvEPT_RS1_
	.def	_ZSt9addressofIPvEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9addressofIPvEPT_RS1_
_ZSt9addressofIPvEPT_RS1_:
.LFB10307:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt11__addressofIPvEPT_RS1_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPPvET_S2_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPPvET_S2_
	.def	_ZSt12__niter_baseIPPvET_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPPvET_S2_
_ZSt12__niter_baseIPPvET_S2_:
.LFB10308:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__copy_move_backward_aILb1EPPvS1_ET1_T0_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt22__copy_move_backward_aILb1EPPvS1_ET1_T0_S3_S2_
	.def	_ZSt22__copy_move_backward_aILb1EPPvS1_ET1_T0_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__copy_move_backward_aILb1EPPvS1_ET1_T0_S3_S2_
_ZSt22__copy_move_backward_aILb1EPPvS1_ET1_T0_S3_S2_:
.LFB10309:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPvEEPT_PKS4_S7_S5_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIPvEE8max_sizeERKS1_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIPvEE8max_sizeERKS1_
	.def	_ZNSt16allocator_traitsISaIPvEE8max_sizeERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIPvEE8max_sizeERKS1_
_ZNSt16allocator_traitsISaIPvEE8max_sizeERKS1_:
.LFB10310:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNK9__gnu_cxx13new_allocatorIPvE8max_sizeEv
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB10311:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt13move_iteratorIPPvEC1ES1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt13move_iteratorIPPvEC1ES1_
	.def	_ZNSt13move_iteratorIPPvEC1ES1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13move_iteratorIPPvEC1ES1_
_ZNSt13move_iteratorIPPvEC1ES1_:
.LFB10314:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyISt13move_iteratorIPPvES2_ET0_T_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyISt13move_iteratorIPPvES2_ET0_T_S5_S4_
	.def	_ZSt18uninitialized_copyISt13move_iteratorIPPvES2_ET0_T_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyISt13move_iteratorIPPvES2_ET0_T_S5_S4_
_ZSt18uninitialized_copyISt13move_iteratorIPPvES2_ET0_T_S5_S4_:
.LFB10315:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPvES4_EET0_T_S7_S6_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4copyISt13move_iteratorIPPN3ULR4TypeEES4_ET0_T_S7_S6_,"x"
	.linkonce discard
	.globl	_ZSt4copyISt13move_iteratorIPPN3ULR4TypeEES4_ET0_T_S7_S6_
	.def	_ZSt4copyISt13move_iteratorIPPN3ULR4TypeEES4_ET0_T_S7_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyISt13move_iteratorIPPN3ULR4TypeEES4_ET0_T_S7_S6_
_ZSt4copyISt13move_iteratorIPPN3ULR4TypeEES4_ET0_T_S7_S6_:
.LFB10330:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZSt12__miter_baseIPPN3ULR4TypeEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZSt12__miter_baseIPPN3ULR4TypeEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	r8, rax
	mov	rdx, rbx
	call	_ZSt14__copy_move_a2ILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofIPN3ULR4TypeEEPT_RS3_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofIPN3ULR4TypeEEPT_RS3_
	.def	_ZSt11__addressofIPN3ULR4TypeEEPT_RS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofIPN3ULR4TypeEEPT_RS3_
_ZSt11__addressofIPN3ULR4TypeEEPT_RS3_:
.LFB10331:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN3ULR4TypeEEEPT_PKS6_S9_S7_,"x"
	.linkonce discard
	.globl	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN3ULR4TypeEEEPT_PKS6_S9_S7_
	.def	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN3ULR4TypeEEEPT_PKS6_S9_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN3ULR4TypeEEEPT_PKS6_S9_S7_
_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN3ULR4TypeEEEPT_PKS6_S9_S7_:
.LFB10332:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	sub	rax, QWORD PTR 16[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L609
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	neg	rax
	mov	rcx, rax
	mov	rax, QWORD PTR 32[rbp]
	add	rax, rcx
	mov	r8, rdx
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	memmove
.L609:
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	neg	rax
	mov	rdx, rax
	mov	rax, QWORD PTR 32[rbp]
	add	rax, rdx
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofIPcEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofIPcEPT_RS1_
	.def	_ZSt11__addressofIPcEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofIPcEPT_RS1_
_ZSt11__addressofIPcEPT_RS1_:
.LFB10333:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_,"x"
	.linkonce discard
	.globl	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_
	.def	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_
_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_:
.LFB10334:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	sub	rax, QWORD PTR 16[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L614
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	neg	rax
	mov	rcx, rax
	mov	rax, QWORD PTR 32[rbp]
	add	rax, rcx
	mov	r8, rdx
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	memmove
.L614:
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	neg	rax
	mov	rdx, rax
	mov	rax, QWORD PTR 32[rbp]
	add	rax, rdx
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorIPcE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorIPcE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorIPcE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorIPcE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorIPcE8max_sizeEv:
.LFB10335:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	movabs	rax, 2305843009213693951
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPcES4_EET0_T_S7_S6_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPcES4_EET0_T_S7_S6_
	.def	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPcES4_EET0_T_S7_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPcES4_EET0_T_S7_S6_
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPcES4_EET0_T_S7_S6_:
.LFB10336:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt4copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorIPvE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorIPvE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorIPvE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorIPvE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorIPvE8max_sizeEv:
.LFB10337:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	movabs	rax, 2305843009213693951
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10__fill_n_aIPPvyS0_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES7_T0_RKS5_,"x"
	.linkonce discard
	.globl	_ZSt10__fill_n_aIPPvyS0_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES7_T0_RKS5_
	.def	_ZSt10__fill_n_aIPPvyS0_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES7_T0_RKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10__fill_n_aIPPvyS0_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES7_T0_RKS5_
_ZSt10__fill_n_aIPPvyS0_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES7_T0_RKS5_:
.LFB10338:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -8[rbp], rax
.L624:
	cmp	QWORD PTR -8[rbp], 0
	je	.L623
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	sub	QWORD PTR -8[rbp], 1
	add	QWORD PTR 16[rbp], 8
	jmp	.L624
.L623:
	mov	rax, QWORD PTR 16[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofIPvEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofIPvEPT_RS1_
	.def	_ZSt11__addressofIPvEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofIPvEPT_RS1_
_ZSt11__addressofIPvEPT_RS1_:
.LFB10339:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPvEEPT_PKS4_S7_S5_,"x"
	.linkonce discard
	.globl	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPvEEPT_PKS4_S7_S5_
	.def	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPvEEPT_PKS4_S7_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPvEEPT_PKS4_S7_S5_
_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPvEEPT_PKS4_S7_S5_:
.LFB10340:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	sub	rax, QWORD PTR 16[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L629
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	neg	rax
	mov	rcx, rax
	mov	rax, QWORD PTR 32[rbp]
	add	rax, rcx
	mov	r8, rdx
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	memmove
.L629:
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	neg	rax
	mov	rdx, rax
	mov	rax, QWORD PTR 32[rbp]
	add	rax, rdx
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPvES4_EET0_T_S7_S6_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPvES4_EET0_T_S7_S6_
	.def	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPvES4_EET0_T_S7_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPvES4_EET0_T_S7_S6_
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPvES4_EET0_T_S7_S6_:
.LFB10341:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZSt4copyISt13move_iteratorIPPvES2_ET0_T_S5_S4_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIPPN3ULR4TypeEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIPPN3ULR4TypeEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	.def	_ZSt12__miter_baseIPPN3ULR4TypeEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIPPN3ULR4TypeEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
_ZSt12__miter_baseIPPN3ULR4TypeEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
.LFB10345:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	lea	rcx, 16[rbp]
	call	_ZNKSt13move_iteratorIPPN3ULR4TypeEE4baseEv
	mov	rcx, rax
	call	_ZSt12__miter_baseIPPN3ULR4TypeEET_S4_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__copy_move_a2ILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_
	.def	_ZSt14__copy_move_a2ILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_
_ZSt14__copy_move_a2ILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_:
.LFB10346:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_
	mov	rsi, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_
	mov	rbx, rax
	mov	rcx, QWORD PTR 32[rbp]
	call	_ZSt12__niter_baseIPPN3ULR4TypeEET_S4_
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt13__copy_move_aILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt4copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_
	.def	_ZSt4copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_
_ZSt4copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_:
.LFB10347:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZSt12__miter_baseIPPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZSt12__miter_baseIPPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	r8, rax
	mov	rdx, rbx
	call	_ZSt14__copy_move_a2ILb1EPPcS1_ET1_T0_S3_S2_
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4copyISt13move_iteratorIPPvES2_ET0_T_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt4copyISt13move_iteratorIPPvES2_ET0_T_S5_S4_
	.def	_ZSt4copyISt13move_iteratorIPPvES2_ET0_T_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyISt13move_iteratorIPPvES2_ET0_T_S5_S4_
_ZSt4copyISt13move_iteratorIPPvES2_ET0_T_S5_S4_:
.LFB10348:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -48[rbp], r8
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	_ZSt12__miter_baseIPPvEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	mov	rbx, rax
	mov	rcx, QWORD PTR -64[rbp]
	call	_ZSt12__miter_baseIPPvEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	r8, rax
	mov	rdx, rbx
	call	_ZSt14__copy_move_a2ILb1EPPvS1_ET1_T0_S3_S2_
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt13move_iteratorIPPN3ULR4TypeEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt13move_iteratorIPPN3ULR4TypeEE4baseEv
	.def	_ZNKSt13move_iteratorIPPN3ULR4TypeEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt13move_iteratorIPPN3ULR4TypeEE4baseEv
_ZNKSt13move_iteratorIPPN3ULR4TypeEE4baseEv:
.LFB10349:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13__copy_move_aILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt13__copy_move_aILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_
	.def	_ZSt13__copy_move_aILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__copy_move_aILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_
_ZSt13__copy_move_aILb1EPPN3ULR4TypeES3_ET1_T0_S5_S4_:
.LFB10350:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ULR4TypeEEEPT_PKS6_S9_S7_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIPPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIPPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	.def	_ZSt12__miter_baseIPPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIPPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
_ZSt12__miter_baseIPPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
.LFB10351:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	lea	rcx, 16[rbp]
	call	_ZNKSt13move_iteratorIPPcE4baseEv
	mov	rcx, rax
	call	_ZSt12__miter_baseIPPcET_S2_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__copy_move_a2ILb1EPPcS1_ET1_T0_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb1EPPcS1_ET1_T0_S3_S2_
	.def	_ZSt14__copy_move_a2ILb1EPPcS1_ET1_T0_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb1EPPcS1_ET1_T0_S3_S2_
_ZSt14__copy_move_a2ILb1EPPcS1_ET1_T0_S3_S2_:
.LFB10352:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPcET_S2_
	mov	rsi, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPcET_S2_
	mov	rbx, rax
	mov	rcx, QWORD PTR 32[rbp]
	call	_ZSt12__niter_baseIPPcET_S2_
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt13__copy_move_aILb1EPPcS1_ET1_T0_S3_S2_
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIPPvEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIPPvEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	.def	_ZSt12__miter_baseIPPvEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIPPvEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
_ZSt12__miter_baseIPPvEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
.LFB10353:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	lea	rcx, 16[rbp]
	call	_ZNKSt13move_iteratorIPPvE4baseEv
	mov	rcx, rax
	call	_ZSt12__miter_baseIPPvET_S2_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__copy_move_a2ILb1EPPvS1_ET1_T0_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb1EPPvS1_ET1_T0_S3_S2_
	.def	_ZSt14__copy_move_a2ILb1EPPvS1_ET1_T0_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb1EPPvS1_ET1_T0_S3_S2_
_ZSt14__copy_move_a2ILb1EPPvS1_ET1_T0_S3_S2_:
.LFB10354:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPvET_S2_
	mov	rsi, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPPvET_S2_
	mov	rbx, rax
	mov	rcx, QWORD PTR 32[rbp]
	call	_ZSt12__niter_baseIPPvET_S2_
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt13__copy_move_aILb1EPPvS1_ET1_T0_S3_S2_
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ULR4TypeEEEPT_PKS6_S9_S7_,"x"
	.linkonce discard
	.globl	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ULR4TypeEEEPT_PKS6_S9_S7_
	.def	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ULR4TypeEEEPT_PKS6_S9_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ULR4TypeEEEPT_PKS6_S9_S7_
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ULR4TypeEEEPT_PKS6_S9_S7_:
.LFB10355:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	sub	rax, QWORD PTR 16[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L654
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 32[rbp]
	mov	r8, rdx
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	memmove
.L654:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 32[rbp]
	add	rax, rdx
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt13move_iteratorIPPcE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt13move_iteratorIPPcE4baseEv
	.def	_ZNKSt13move_iteratorIPPcE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt13move_iteratorIPPcE4baseEv
_ZNKSt13move_iteratorIPPcE4baseEv:
.LFB10356:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13__copy_move_aILb1EPPcS1_ET1_T0_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt13__copy_move_aILb1EPPcS1_ET1_T0_S3_S2_
	.def	_ZSt13__copy_move_aILb1EPPcS1_ET1_T0_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__copy_move_aILb1EPPcS1_ET1_T0_S3_S2_
_ZSt13__copy_move_aILb1EPPcS1_ET1_T0_S3_S2_:
.LFB10357:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt13move_iteratorIPPvE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt13move_iteratorIPPvE4baseEv
	.def	_ZNKSt13move_iteratorIPPvE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt13move_iteratorIPPvE4baseEv
_ZNKSt13move_iteratorIPPvE4baseEv:
.LFB10358:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13__copy_move_aILb1EPPvS1_ET1_T0_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt13__copy_move_aILb1EPPvS1_ET1_T0_S3_S2_
	.def	_ZSt13__copy_move_aILb1EPPvS1_ET1_T0_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__copy_move_aILb1EPPvS1_ET1_T0_S3_S2_
_ZSt13__copy_move_aILb1EPPvS1_ET1_T0_S3_S2_:
.LFB10359:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	r8, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPvEEPT_PKS4_S7_S5_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_,"x"
	.linkonce discard
	.globl	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_
	.def	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_:
.LFB10360:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	sub	rax, QWORD PTR 16[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L665
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 32[rbp]
	mov	r8, rdx
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	memmove
.L665:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 32[rbp]
	add	rax, rdx
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPvEEPT_PKS4_S7_S5_,"x"
	.linkonce discard
	.globl	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPvEEPT_PKS4_S7_S5_
	.def	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPvEEPT_PKS4_S7_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPvEEPT_PKS4_S7_S5_
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPvEEPT_PKS4_S7_S5_:
.LFB10361:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	sub	rax, QWORD PTR 16[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L668
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 32[rbp]
	mov	r8, rdx
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	memmove
.L668:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 32[rbp]
	add	rax, rdx
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.globl	_ZTVN3ULR10MethodInfoE
	.section	.rdata$_ZTVN3ULR10MethodInfoE,"dr"
	.linkonce same_size
	.align 8
_ZTVN3ULR10MethodInfoE:
	.quad	0
	.quad	_ZTIN3ULR10MethodInfoE
	.quad	_ZN3ULR10MethodInfoD1Ev
	.quad	_ZN3ULR10MethodInfoD0Ev
	.globl	_ZTIN3ULR10MethodInfoE
	.section	.rdata$_ZTIN3ULR10MethodInfoE,"dr"
	.linkonce same_size
	.align 8
_ZTIN3ULR10MethodInfoE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN3ULR10MethodInfoE
	.quad	_ZTIN3ULR10MemberInfoE
	.globl	_ZTSN3ULR10MethodInfoE
	.section	.rdata$_ZTSN3ULR10MethodInfoE,"dr"
	.linkonce same_size
	.align 16
_ZTSN3ULR10MethodInfoE:
	.ascii "N3ULR10MethodInfoE\0"
	.globl	_ZTIN3ULR10MemberInfoE
	.section	.rdata$_ZTIN3ULR10MemberInfoE,"dr"
	.linkonce same_size
	.align 8
_ZTIN3ULR10MemberInfoE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN3ULR10MemberInfoE
	.globl	_ZTSN3ULR10MemberInfoE
	.section	.rdata$_ZTSN3ULR10MemberInfoE,"dr"
	.linkonce same_size
	.align 16
_ZTSN3ULR10MemberInfoE:
	.ascii "N3ULR10MemberInfoE\0"
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB10383:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	lea	rcx, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitD1Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB10382:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	cmp	DWORD PTR 16[rbp], 1
	jne	.L673
	cmp	DWORD PTR 24[rbp], 65535
	jne	.L673
	lea	rcx, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitC1Ev
	lea	rcx, __tcf_0[rip]
	call	atexit
.L673:
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I__ZN3ULR10MethodInfoC2EPcbSt6vectorIPNS_4TypeESaIS4_EES4_PvibS1_;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZN3ULR10MethodInfoC2EPcbSt6vectorIPNS_4TypeESaIS4_EES4_PvibS1_
_GLOBAL__sub_I__ZN3ULR10MethodInfoC2EPcbSt6vectorIPNS_4TypeESaIS4_EES4_PvibS1_:
.LFB10384:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	edx, 65535
	mov	ecx, 1
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__ZN3ULR10MethodInfoC2EPcbSt6vectorIPNS_4TypeESaIS4_EES4_PvibS1_
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_ZN3ULR10MemberInfoD2Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3ULR8Resolver10ULRAPIImpl14AllocateObjectEy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.internal_api, "dr"
	.globl	.refptr.internal_api
	.linkonce	discard
.refptr.internal_api:
	.quad	internal_api
	.section	.rdata$.refptr._ZTVN3ULR10MemberInfoE, "dr"
	.globl	.refptr._ZTVN3ULR10MemberInfoE
	.linkonce	discard
.refptr._ZTVN3ULR10MemberInfoE:
	.quad	_ZTVN3ULR10MemberInfoE
