/*
 * Generated Tue May 24 10:20:38 PDT 2011
 */

			.section ".rodata"
NL:		.asciz "\n"
IntFMT:		.asciz "%d"
StrFMT:		.asciz "%s"
BoolFMT:		.asciz "false\0\0\0true"

			.section ".data"
			.align 4

	! instruction for a
			.global a
a:			.word 1

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
.tmp1:			.word 0

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp1
		set	.tmp1, %l1
		ld	[%l1], %l1
	! instruction to set global vars: a
		set	a, %l0
		st	%l1, [%l0]
		st	%l1, [%fp-4]
			.section ".data"
			.align 4

	! instruction to declare float label .tmp2
.tmp2:			.word 1

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp2
		set	.tmp2, %l1
		ld	[%l1], %l1
		st	%l1, [%fp-8]

	! instruction to print out boolean
	! instruction to set global vars: a
		set	a, %l0
		ld	[%l0], %l0
		set	BoolFMT, %o0
		sll %l0, 3, %l1
		add %o0, %l1, %o0
		call	printf
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! instruction to print out boolean
		ld	[%fp-8], %l0
		set	BoolFMT, %o0
		sll %l0, 3, %l1
		add %o0, %l1, %o0
		call	printf
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

		ret
		restore


!8 bytes for stack allocation.
SAVE.main=-(92 + 8) & -8
