/*
 * Generated Tue May 24 10:20:09 PDT 2011
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
x:			.word 0

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for y
			.global y
y:			.word 0

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for z
			.global z
z:			.word 10

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for q
			.global q
q:			.single 0r5.0

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for w
			.global w
w:			.word 5

			.section ".text"
			.align 4
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp
	! instruction to set global vars: x
		set	x, %l1
		ld	[%l1], %l1
		st	%l1, [%fp-8]

	! Doing + operation
	! instruction to set global vars: x
		set	x, %l0
		ld	[%l0], %l0
	! instruction to set global vars: x
		set	x, %l1
		ld	[%l1], %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-12]

	! Doing + operation
		ld	[%fp-12], %l0
	! instruction to set global vars: z
		set	z, %l1
		ld	[%l1], %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-16]
		ld	[%fp-16], %l1
		st	%l1, [%fp-20]

	! instruction to print out a
		set	IntFMT, %o0
		ld	[%fp-8], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! instruction to print out b
		set	IntFMT, %o0
		ld	[%fp-20], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! Doing + operation
	! instruction to set global vars: w
		set	w, %l0
		ld	[%l0], %f0
		fitos	%f0, %f0
	! instruction to set global vars: q
		set	q, %l1
		ld	[%l1], %f1
		fadds %f0, %f1, %f0
		st	%f0, [%fp-24]
		ld	[%fp-24], %f1
		st	%f1, [%fp-28]

	! Doing + operation
			.section ".data"
			.align 4

	! instruction to declare float label .tmp6
.tmp6:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp6
		set	.tmp6, %l0
		ld	[%l0], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp4
.tmp4:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp4
		set	.tmp4, %l1
		ld	[%l1], %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-32]

	! Doing + operation
		ld	[%fp-32], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp7
.tmp7:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp7
		set	.tmp7, %l1
		ld	[%l1], %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-36]

	! Doing + operation
		ld	[%fp-36], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp10
.tmp10:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp10
		set	.tmp10, %l1
		ld	[%l1], %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-40]

	! Doing + operation
		ld	[%fp-40], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp13
.tmp13:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp13
		set	.tmp13, %l1
		ld	[%l1], %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-44]
		ld	[%fp-44], %f1
		fitos	%f1, %f1
		st	%f1, [%fp-48]

	! instruction to print float with label c
		ld	[%fp-28], %f0
		call	printFloat, 1
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! instruction to print float with label d
		ld	[%fp-48], %f0
		call	printFloat, 1
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! Doing + operation
		ld	[%fp-48], %f0
		ld	[%fp-28], %f1
		fadds %f0, %f1, %f0
		st	%f0, [%fp-52]

	! instruction to print float with label 
		ld	[%fp-52], %f0
		call	printFloat, 1
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

		ret
		restore


!52 bytes for stack allocation.
SAVE.main=-(92 + 52) & -8
