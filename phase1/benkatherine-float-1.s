/*
 * Generated Tue May 24 10:20:45 PDT 2011
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
x:			.single 0r5.5

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for y
			.global y
y:			.single 0r0.0

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for z
			.global z
z:			.single 0r0.0

			.section ".text"
			.align 4
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp

	! Doing + operation
	! instruction to set global vars: x
		set	x, %l0
		ld	[%l0], %f0
	! instruction to set global vars: y
		set	y, %l1
		ld	[%l1], %f1
		fadds %f0, %f1, %f0
		st	%f0, [%fp-4]
		ld	[%fp-4], %f1
	! instruction to set global vars: z
		set	z, %l0
		st	%f1, [%l0]

	! instruction to print float with label z
	! instruction to set global vars: z
		set	z, %l0
		ld	[%l0], %f0
		call	printFloat, 1
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

		ret
		restore


!4 bytes for stack allocation.
SAVE.main=-(92 + 4) & -8
