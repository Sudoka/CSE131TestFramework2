/*
 * Generated Tue May 24 10:20:41 PDT 2011
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
.StringFMT1:			.asciz"HI, THIS IS KATHERINE"

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT1, %o1
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
