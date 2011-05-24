/*
 * Generated Tue May 24 10:20:43 PDT 2011
 */

			.section ".rodata"
NL:		.asciz "\n"
IntFMT:		.asciz "%d"
StrFMT:		.asciz "%s"
BoolFMT:		.asciz "false\0\0\0true"

			.global foo

			.section ".text"
			.align 4
foo:
		set	foo.SIZE, %g1
		save %sp, %g1, %sp

			.section ".data"
.StringFMT1:			.asciz"second"

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT1, %o1
		call	printf, 2
		nop
			.section ".data"
			.align 4

	! instruction to declare float label .tmp0
.tmp0:			.word 0

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp0
		set	.tmp0, %l0
		ld	[%l0], %l0
		mov	%l0, %i0

		ret
		restore


!0 bytes for stack allocation.
foo.SIZE=-(92 + 0) & -8
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp
		call	foo
		nop
		st	%o0, [%fp-4]

			.section ".data"
.StringFMT2:			.asciz"first"

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT2, %o1
		call	printf, 2
		nop

	! instruction to print out 
		set	IntFMT, %o0
		ld	[%fp-4], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

		ret
		restore


!4 bytes for stack allocation.
SAVE.main=-(92 + 4) & -8
