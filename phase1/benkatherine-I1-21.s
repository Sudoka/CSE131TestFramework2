/*
 * Generated Tue May 24 10:20:24 PDT 2011
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
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp
			.section ".data"
			.align 4

	! instruction to declare float label .tmp1
.tmp1:			.word 6

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp1
		set	.tmp1, %l1
		ld	[%l1], %l1
		st	%l1, [%fp-4]
	! instruction to set global vars: x
		set	x, %l1
		ld	[%l1], %l1
		st	%l1, [%fp-8]

		ret
		restore


!8 bytes for stack allocation.
SAVE.main=-(92 + 8) & -8
