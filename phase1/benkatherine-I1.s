/*
 * Generated Tue May 24 10:20:33 PDT 2011
 */

			.section ".rodata"
NL:		.asciz "\n"
IntFMT:		.asciz "%d"
StrFMT:		.asciz "%s"
BoolFMT:		.asciz "false\0\0\0true"

			.section ".data"
			.align 4

	! instruction for w
			.global w
w:			.word 5

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for v
			.global v
v:			.word 0

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for x
			.global x
x:			.word 0

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for y
			.global y
y:			.word 0

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for z
			.global z
z:			.word 0

			.section ".text"
			.align 4
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp

		ret
		restore


!0 bytes for stack allocation.
SAVE.main=-(92 + 0) & -8
