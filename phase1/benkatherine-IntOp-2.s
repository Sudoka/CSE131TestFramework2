/*
 * Generated Tue May 24 10:20:35 PDT 2011
 */

			.section ".rodata"
NL:		.asciz "\n"
IntFMT:		.asciz "%d"
StrFMT:		.asciz "%s"
BoolFMT:		.asciz "false\0\0\0true"

			.section ".data"
			.align 4

	! instruction for x
			.global x
x:			.word 5

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for y
			.global y
y:			.word 6

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for a
			.global a
a:			.word 3

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for b
			.global b
b:			.word 4

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for z
			.global z
z:			.word 30

			.section ".text"
			.align 4
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp

	! Doing * operation
			.section ".data"
			.align 4

	! instruction to declare float label .tmp7
.tmp7:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp7
		set	.tmp7, %l0
		ld	[%l0], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp5
.tmp5:			.word 6

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp5
		set	.tmp5, %l1
		ld	[%l1], %l1
		mov	%l0, %o0
		mov	%l1, %o1
		call	.mul
		nop
		mov	%o0, %l0
		st	%l0, [%fp-4]

	! Doing * operation
			.section ".data"
			.align 4

	! instruction to declare float label .tmp11
.tmp11:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp11
		set	.tmp11, %l0
		ld	[%l0], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp9
.tmp9:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp9
		set	.tmp9, %l1
		ld	[%l1], %l1
		mov	%l0, %o0
		mov	%l1, %o1
		call	.mul
		nop
		mov	%o0, %l0
		st	%l0, [%fp-8]

	! Doing * operation
		ld	[%fp-8], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp12
.tmp12:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp12
		set	.tmp12, %l1
		ld	[%l1], %l1
		mov	%l0, %o0
		mov	%l1, %o1
		call	.mul
		nop
		mov	%o0, %l0
		st	%l0, [%fp-12]
		ld	[%fp-12], %l1
	! instruction to set global vars: x
		set	x, %l0
		st	%l1, [%l0]
		st	%l1, [%fp-12]

	! Doing * operation
			.section ".data"
			.align 4

	! instruction to declare float label .tmp18
.tmp18:			.word 6

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp18
		set	.tmp18, %l0
		ld	[%l0], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp16
.tmp16:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp16
		set	.tmp16, %l1
		ld	[%l1], %l1
		mov	%l0, %o0
		mov	%l1, %o1
		call	.mul
		nop
		mov	%o0, %l0
		st	%l0, [%fp-16]
		ld	[%fp-16], %l1
	! instruction to set global vars: y
		set	y, %l0
		st	%l1, [%l0]
		st	%l1, [%fp-16]

	! instruction to print out x
		set	IntFMT, %o0
	! instruction to set global vars: x
		set	x, %l0
		ld	[%l0], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! instruction to print out y
		set	IntFMT, %o0
	! instruction to set global vars: y
		set	y, %l0
		ld	[%l0], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! Doing * operation
			.section ".data"
			.align 4

	! instruction to declare float label .tmp22
.tmp22:			.word 1

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp22
		set	.tmp22, %l0
		ld	[%l0], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp20
.tmp20:			.word 4

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp20
		set	.tmp20, %l1
		ld	[%l1], %l1
		mov	%l0, %o0
		mov	%l1, %o1
		call	.mul
		nop
		mov	%o0, %l0
		st	%l0, [%fp-20]

	! instruction to print out .tmp23
		set	IntFMT, %o0
		ld	[%fp-20], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! Doing * operation
	! instruction to set global vars: x
		set	x, %l0
		ld	[%l0], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp24
.tmp24:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp24
		set	.tmp24, %l1
		ld	[%l1], %l1
		mov	%l0, %o0
		mov	%l1, %o1
		call	.mul
		nop
		mov	%o0, %l0
		st	%l0, [%fp-24]

	! instruction to print out 
		set	IntFMT, %o0
		ld	[%fp-24], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! Doing / operation
	! instruction to set global vars: x
		set	x, %l0
		ld	[%l0], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp25
.tmp25:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp25
		set	.tmp25, %l1
		ld	[%l1], %l1
		mov	%l0, %o0
		mov	%l1, %o1
		call	.div
		nop
		mov	%o0, %l0
		st	%l0, [%fp-28]

	! instruction to print out 
		set	IntFMT, %o0
		ld	[%fp-28], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! Doing / operation
	! instruction to set global vars: y
		set	y, %l0
		ld	[%l0], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp26
.tmp26:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp26
		set	.tmp26, %l1
		ld	[%l1], %l1
		mov	%l0, %o0
		mov	%l1, %o1
		call	.div
		nop
		mov	%o0, %l0
		st	%l0, [%fp-32]

	! Doing * operation
		ld	[%fp-32], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp27
.tmp27:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp27
		set	.tmp27, %l1
		ld	[%l1], %l1
		mov	%l0, %o0
		mov	%l1, %o1
		call	.mul
		nop
		mov	%o0, %l0
		st	%l0, [%fp-36]

	! Doing mod operation
 		ld	[%fp-36], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp28
.tmp28:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp28
		set	.tmp28, %l1
		ld	[%l1], %l1
		mov	%l0, %o0
		mov	%l1, %o1
		call	.rem
		nop
		mov	%o0, %l0
		st	%l0, [%fp-40]

	! instruction to print out 
		set	IntFMT, %o0
		ld	[%fp-40], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! Doing * operation
	! instruction to set global vars: a
		set	a, %l0
		ld	[%l0], %l0
	! instruction to set global vars: b
		set	b, %l1
		ld	[%l1], %l1
		mov	%l0, %o0
		mov	%l1, %o1
		call	.mul
		nop
		mov	%o0, %l0
		st	%l0, [%fp-44]

	! Doing * operation
		ld	[%fp-44], %l0
	! instruction to set global vars: a
		set	a, %l1
		ld	[%l1], %l1
		mov	%l0, %o0
		mov	%l1, %o1
		call	.mul
		nop
		mov	%o0, %l0
		st	%l0, [%fp-48]

	! instruction to print out 
		set	IntFMT, %o0
		ld	[%fp-48], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

		ret
		restore


!48 bytes for stack allocation.
SAVE.main=-(92 + 48) & -8
