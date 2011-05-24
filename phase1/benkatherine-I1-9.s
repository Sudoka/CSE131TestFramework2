/*
 * Generated Tue May 24 10:20:32 PDT 2011
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
.tmp0:			.word 4

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp0
		set	.tmp0, %l1
		ld	[%l1], %l1
		st	%l1, [%fp-4]
		ld	[%fp-4], %l1
		st	%l1, [%fp-8]

		ret
		restore


!8 bytes for stack allocation.
SAVE.main=-(92 + 8) & -8
