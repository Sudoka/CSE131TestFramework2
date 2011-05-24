/*
 * Generated Tue May 24 10:20:13 PDT 2011
 */

			.section ".rodata"
NL:		.asciz "\n"
IntFMT:		.asciz "%d"
StrFMT:		.asciz "%s"
BoolFMT:		.asciz "false\0\0\0true"

			.section ".data"
			.align 4

	! instruction for f
			.global f
f:			.single 0r5.5

			.section ".text"
			.align 4
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp
	! instruction to set global vars: f
		set	f, %l1
		ld	[%l1], %f1
		st	%f1, [%fp-4]

		ret
		restore


!4 bytes for stack allocation.
SAVE.main=-(92 + 4) & -8
