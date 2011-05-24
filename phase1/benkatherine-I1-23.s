/*
 * Generated Tue May 24 10:20:26 PDT 2011
 */

			.section ".rodata"
NL:		.asciz "\n"
IntFMT:		.asciz "%d"
StrFMT:		.asciz "%s"
BoolFMT:		.asciz "false\0\0\0true"

			.section ".data"
			.align 4

	! instruction for a
			.global a
a:			.single 0r4.5

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for b
			.global b
b:			.word 5

			.section ".text"
			.align 4
			.section ".bss"
			.align 4

	! instruction for x
			.global x
	!Array declaration for: x
x:			.skip 12

			.section ".text"
			.align 4
			.section ".bss"
			.align 4

	! instruction for y
			.global y
	!Array declaration for: y
y:			.skip 16

			.section ".text"
			.align 4
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp
			.section ".data"
			.align 4

	! instruction to declare float label .tmp4
.tmp4:			.word 4

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp4
		set	.tmp4, %l1
		ld	[%l1], %f1
		fitos	%f1, %f1
		st	%f1, [%fp-8]
	! instruction to set global vars: b
		set	b, %l1
		ld	[%l1], %f1
		fitos	%f1, %f1
		st	%f1, [%fp-12]

	! instruction to print float with label c
		ld	[%fp-8], %f0
		call	printFloat, 1
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! instruction to print float with label d
		ld	[%fp-12], %f0
		call	printFloat, 1
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! access array x
			.section ".data"
			.align 4

	! instruction to declare float label .tmp5
.tmp5:			.word 2

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp5
		set	.tmp5, %l0
		ld	[%l0], %o0
		set	4, %o1
		call	.mul
		nop
		mov	%o0, %l0
	! instruction to set global vars: x
		set	x, %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-4]
			.section ".data"
			.align 4

	! instruction to declare float label .tmp6
.tmp6:			.word 3

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp6
		set	.tmp6, %l1
		ld	[%l1], %l1
		ld	[%fp-4], %l0
		st	%l1, [%l0]
		st	%l1, [%fp-16]

	! access array x
			.section ".data"
			.align 4

	! instruction to declare float label .tmp7
.tmp7:			.word 2

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp7
		set	.tmp7, %l0
		ld	[%l0], %o0
		set	4, %o1
		call	.mul
		nop
		mov	%o0, %l0
	! instruction to set global vars: x
		set	x, %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-16]
		ld	[%fp-16], %l1
		ld	[%l1], %f1
		fitos	%f1, %f1
		st	%f1, [%fp-24]

	! access array x
			.section ".data"
			.align 4

	! instruction to declare float label .tmp8
.tmp8:			.word 2

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp8
		set	.tmp8, %l0
		ld	[%l0], %o0
		set	4, %o1
		call	.mul
		nop
		mov	%o0, %l0
	! instruction to set global vars: x
		set	x, %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-20]

	! instruction to print out x
		set	IntFMT, %o0
		ld	[%fp-20], %l0
		ld	[%l0], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! instruction to print float with label e
		ld	[%fp-24], %f0
		call	printFloat, 1
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! access array y
			.section ".data"
			.align 4

	! instruction to declare float label .tmp9
.tmp9:			.word 3

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp9
		set	.tmp9, %l0
		ld	[%l0], %o0
		set	4, %o1
		call	.mul
		nop
		mov	%o0, %l0
	! instruction to set global vars: y
		set	y, %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-28]
			.section ".data"
			.align 4

	! instruction to declare float label .tmp10
.tmp10:			.single 0r3.3

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp10
		set	.tmp10, %l1
		ld	[%l1], %f1
		st	%f1, [%l0]
		st	%f1, [%fp-32]

	! access array y
			.section ".data"
			.align 4

	! instruction to declare float label .tmp11
.tmp11:			.word 3

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp11
		set	.tmp11, %l0
		ld	[%l0], %o0
		set	4, %o1
		call	.mul
		nop
		mov	%o0, %l0
	! instruction to set global vars: y
		set	y, %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-32]

	! instruction to print float with label y
		ld	[%fp-32], %l0
		ld	[%l0], %f0
		call	printFloat, 1
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! access array y
			.section ".data"
			.align 4

	! instruction to declare float label .tmp12
.tmp12:			.word 3

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp12
		set	.tmp12, %l0
		ld	[%l0], %o0
		set	4, %o1
		call	.mul
		nop
		mov	%o0, %l0
	! instruction to set global vars: y
		set	y, %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-36]
		ld	[%fp-36], %l1
		ld	[%l1], %f1
		st	%f1, [%fp-40]

	! instruction to print float with label f
		ld	[%fp-40], %f0
		call	printFloat, 1
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

		ret
		restore


!40 bytes for stack allocation.
SAVE.main=-(92 + 40) & -8
