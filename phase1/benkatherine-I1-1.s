/*
 * Generated Tue May 24 10:20:11 PDT 2011
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
x:			.word 5

			.section ".text"
			.align 4
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp

	! instruction to print out .tmp2
		set	IntFMT, %o0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp2
.tmp2:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp2
		set	.tmp2, %l0
		ld	[%l0], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

		ret
		restore


!0 bytes for stack allocation.
SAVE.main=-(92 + 0) & -8
