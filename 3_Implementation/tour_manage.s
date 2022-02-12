	.file	"tour_manage.c"
	.text
	.globl	start
	.bss
	.align 8
	.type	start, @object
	.size	start, 8
start:
	.zero	8
	.comm	k,4,4
	.comm	amount,4,4
	.comm	selected_type,60,32
	.comm	place,30,16
	.comm	date,20,16
	.section	.rodata
	.align 8
.LC0:
	.string	"\t\t\t\t***TOUR MANAGEMENT SYSTEM*"
	.align 8
.LC1:
	.string	"\t\t\t\t1. International Tour Packages"
.LC2:
	.string	"\t\t\t\t2. India Tour Packages"
.LC3:
	.string	"\t\t\t\tEnter Choice : "
.LC4:
	.string	"%d"
.LC5:
	.string	"Enter Right Choice"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	je	.L2
	cmpl	$2, %eax
	je	.L3
	jmp	.L7
.L2:
	movl	$0, %eax
	call	international
	jmp	.L5
.L3:
	movl	$0, %eax
	call	india
	jmp	.L5
.L7:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	nop
.L5:
	movl	$0, %eax
	call	traveller_details
	movl	$0, %eax
	call	display_receipt
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC6:
	.string	"\t\t\t\t1. Kerala Tour Packages 5 Days 4 Nights (19880/-)"
	.align 8
.LC7:
	.string	"\t\t\t\t2. Manali Tour Packages 6 Days 5 Nights (37500/-)"
	.align 8
.LC8:
	.string	"\t\t\t\t3. Himachal Tour Packages 9 Days 8 Nights (20000/-)"
.LC9:
	.string	"\t\t\t\tEnter Choice: "
.LC10:
	.string	"Enter valid Choice"
	.text
	.globl	india
	.type	india, @function
india:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$8022072439005802057, %rax
	movabsq	$7019813713794331253, %rdx
	movq	%rax, selected_type(%rip)
	movq	%rdx, 8+selected_type(%rip)
	movw	$25959, 16+selected_type(%rip)
	movb	$0, 18+selected_type(%rip)
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	jne	.L9
	movabsq	$6061952216559936843, %rax
	movq	%rax, place(%rip)
	movl	$7501167, 8+place(%rip)
	movl	$19880, amount(%rip)
	jmp	.L14
.L9:
	movl	-12(%rbp), %eax
	cmpl	$2, %eax
	jne	.L11
	movabsq	$6061961012652695885, %rax
	movq	%rax, place(%rip)
	movl	$7501167, 8+place(%rip)
	movl	$37500, amount(%rip)
	jmp	.L14
.L11:
	movl	-12(%rbp), %eax
	cmpl	$3, %eax
	jne	.L12
	movabsq	$7809638004882762056, %rax
	movq	%rax, place(%rip)
	movl	$1970230304, 8+place(%rip)
	movw	$114, 12+place(%rip)
	movl	$20000, amount(%rip)
	jmp	.L14
.L12:
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
.L14:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	india, .-india
	.section	.rodata
	.align 8
.LC11:
	.string	"\t\t\t\t1. Maldives Tour Packages 6 Days 5 Nights (656000/-)"
	.align 8
.LC12:
	.string	"\t\t\t\t2. Switzerland Tour Packages 5 Days 4 Nights (29000/-)"
	.align 8
.LC13:
	.string	"\t\t\t\t3. Europe Tour Packages 11 Days 10 Nights (30000/-)"
	.text
	.globl	international
	.type	international, @function
international:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$8386105418748030537, %rax
	movabsq	$8022072486116880233, %rdx
	movq	%rax, selected_type(%rip)
	movq	%rdx, 8+selected_type(%rip)
	movabsq	$7019813713794331253, %rax
	movq	%rax, 16+selected_type(%rip)
	movw	$25959, 24+selected_type(%rip)
	movb	$0, 26+selected_type(%rip)
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	jne	.L16
	movabsq	$8315182482037956941, %rax
	movq	%rax, place(%rip)
	movl	$1970230304, 8+place(%rip)
	movw	$114, 12+place(%rip)
	movl	$656000, amount(%rip)
	jmp	.L21
.L16:
	movl	-12(%rbp), %eax
	cmpl	$2, %eax
	jne	.L18
	movabsq	$7814419880054716243, %rax
	movabsq	$8247620699710320225, %rdx
	movq	%rax, place(%rip)
	movq	%rdx, 8+place(%rip)
	movb	$0, 16+place(%rip)
	movl	$29000, amount(%rip)
	jmp	.L21
.L18:
	movl	-12(%rbp), %eax
	cmpl	$3, %eax
	jne	.L19
	movabsq	$6061956632021202245, %rax
	movq	%rax, place(%rip)
	movl	$7501167, 8+place(%rip)
	movl	$30000, amount(%rip)
	jmp	.L21
.L19:
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
.L21:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	international, .-international
	.section	.rodata
	.align 8
.LC14:
	.string	"\t\t\t\tEnter Number Of Travellers: "
.LC15:
	.string	"\t\t\t\tEnter Date (DD/MM/YY): "
.LC16:
	.string	"%s"
	.align 8
.LC17:
	.string	"\t\t\t\tEnter The %dth Traveller Name: "
	.align 8
.LC18:
	.string	"\t\t\t\tEnter The %dth Traveller Gender: "
	.align 8
.LC19:
	.string	"\t\t\t\tEnter The %dth Traveller Age: "
	.text
	.globl	traveller_details
	.type	traveller_details, @function
traveller_details:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	k(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	leaq	date(%rip), %rsi
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$1, -44(%rbp)
	jmp	.L23
.L24:
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC18(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	leaq	-38(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-48(%rbp), %edx
	leaq	-38(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	add_node
	addl	$1, -44(%rbp)
.L23:
	movl	k(%rip), %eax
	cmpl	%eax, -44(%rbp)
	jle	.L24
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	traveller_details, .-traveller_details
	.globl	add_node
	.type	add_node, @function
add_node:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	$0, -8(%rbp)
	movl	$56, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-8(%rbp), %rax
	leaq	30(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	start(%rip), %rax
	testq	%rax, %rax
	jne	.L27
	movq	-8(%rbp), %rax
	movq	%rax, start(%rip)
	jmp	.L31
.L27:
	movq	start(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L29
.L30:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
.L29:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L31:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	add_node, .-add_node
	.section	.rodata
	.align 8
.LC20:
	.string	"\n\t\t\t\t**Take Screenshot For Further Use**"
.LC21:
	.string	"\t%dst Traveller  Name :%s\n "
.LC22:
	.string	"\t%dst Traveller Gender:%s\n "
.LC23:
	.string	"\t%dst Traveller Age: %d\n "
.LC24:
	.string	"\t--------------------------"
.LC25:
	.string	"\tSelected Type: %s\n "
.LC26:
	.string	"\tPackage: %s\n"
.LC27:
	.string	"\tDate:%s\n "
.LC28:
	.string	"\tTotal Amount: %d"
	.align 8
.LC29:
	.string	"\n\n\t\t\t\t**Thank You For registration**"
	.text
	.globl	display_receipt
	.type	display_receipt, @function
display_receipt:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	start(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	movl	$1, -16(%rbp)
	jmp	.L33
.L34:
	movq	-8(%rbp), %rdx
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	leaq	30(%rax), %rdx
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movl	40(%rax), %edx
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	addl	$1, -16(%rbp)
.L33:
	movl	k(%rip), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L34
	leaq	selected_type(%rip), %rsi
	leaq	.LC25(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	place(%rip), %rsi
	leaq	.LC26(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	date(%rip), %rsi
	leaq	.LC27(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	amount(%rip), %edx
	movl	k(%rip), %eax
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC28(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	display_receipt, .-display_receipt
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
