/*
 * Generated Tue May 24 10:20:42 PDT 2011
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

	! instruction for a
			.global a
a:			.single 0r5.75

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for b
			.global b
b:			.single 0r0.0

			.section ".text"
			.align 4
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp

	! instruction to print float with label .tmp1
			.section ".data"
			.align 4

	! instruction to declare float label .tmp1
.tmp1:			.single 0r5.75

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp1
		set	.tmp1, %l0
		ld	[%l0], %f0
		call	printFloat, 1
		nop

		ret
		restore


!4 bytes for stack allocation.
SAVE.main=-(92 + 4) & -8
