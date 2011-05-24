/*
 * Generated Tue May 24 10:20:25 PDT 2011
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
x:			.word 4

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for y
			.global y
y:			.word 5

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for z
			.global z
z:			.word 0

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
		ld	[%l0], %l0
	! instruction to set global vars: y
		set	y, %l1
		ld	[%l1], %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-4]
		ld	[%fp-4], %l1
	! instruction to set global vars: z
		set	z, %l0
		st	%l1, [%l0]

		ret
		restore


!4 bytes for stack allocation.
SAVE.main=-(92 + 4) & -8
