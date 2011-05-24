/*
 * Generated Tue May 24 10:20:12 PDT 2011
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
			.section ".data"
			.align 4

	! instruction for g
			.global g
g:			.single 0r0.0

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
	! instruction to set global vars: g
		set	g, %l0
		st	%f1, [%l0]

		ret
		restore


!0 bytes for stack allocation.
SAVE.main=-(92 + 0) & -8
