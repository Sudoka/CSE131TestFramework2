/*
 * Generated Tue May 24 10:20:46 PDT 2011
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
x:			.single 0r0.0

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for y
			.global y
y:			.single 0r0.0

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

	! instruction to declare float label .tmp0
.tmp0:			.single 0r94.25

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp0
		set	.tmp0, %l1
		ld	[%l1], %f1
	! instruction to set global vars: x
		set	x, %l0
		st	%f1, [%l0]
		st	%f1, [%fp-4]

	! Doing + operation
	! instruction to set global vars: x
		set	x, %l0
		ld	[%l0], %f0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp1
.tmp1:			.word 1

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp1
		set	.tmp1, %l1
		ld	[%l1], %f1
		fitos	%f1, %f1
		fadds %f0, %f1, %f0
		st	%f0, [%fp-8]

	! Doing / operation
		ld	[%fp-8], %f0
	! instruction to set global vars: x
		set	x, %l1
		ld	[%l1], %f1
		fdivs %f0, %f1, %f0
		st	%f0, [%fp-12]
		ld	[%fp-12], %f1
	! instruction to set global vars: y
		set	y, %l0
		st	%f1, [%l0]
		st	%f1, [%fp-12]

	! instruction to print float with label y
	! instruction to set global vars: y
		set	y, %l0
		ld	[%l0], %f0
		call	printFloat, 1
		nop
			.section ".data"
			.align 4

	! instruction to declare float label .tmp2
.tmp2:			.word 0

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp2
		set	.tmp2, %l0
		ld	[%l0], %l0
		mov	%l0, %i0

		ret
		restore


!12 bytes for stack allocation.
SAVE.main=-(92 + 12) & -8
