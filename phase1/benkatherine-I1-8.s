/*
 * Generated Tue May 24 10:20:31 PDT 2011
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
a:			.word 5

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for b
			.global b
b:			.word 6

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for c
			.global c
c:			.word 0

			.section ".text"
			.align 4
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp
	! instruction to set global vars: a
		set	a, %l1
		ld	[%l1], %l1
	! instruction to set global vars: c
		set	c, %l0
		st	%l1, [%l0]

		ret
		restore


!0 bytes for stack allocation.
SAVE.main=-(92 + 0) & -8
