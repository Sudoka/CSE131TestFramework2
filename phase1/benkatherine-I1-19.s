/*
 * Generated Tue May 24 10:20:21 PDT 2011
 */

			.section ".rodata"
NL:		.asciz "\n"
IntFMT:		.asciz "%d"
StrFMT:		.asciz "%s"
BoolFMT:		.asciz "false\0\0\0true"

			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp
			.section ".data"
			.align 4

	! instruction to declare float label .tmp0
.tmp0:			.single 0r5.75

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp0
		set	.tmp0, %l1
		ld	[%l1], %f1
		st	%f1, [%fp-4]
		ld	[%fp-4], %f1
		st	%f1, [%fp-8]

		ret
		restore


!8 bytes for stack allocation.
SAVE.main=-(92 + 8) & -8