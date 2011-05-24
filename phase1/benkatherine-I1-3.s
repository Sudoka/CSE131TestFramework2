/*
 * Generated Tue May 24 10:20:28 PDT 2011
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
			.global foo

			.section ".text"
			.align 4
foo:
		set	foo.SIZE, %g1
		save %sp, %g1, %sp

		ret
		restore


!8 bytes for stack allocation.
foo.SIZE=-(92 + 8) & -8
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp

		ret
		restore


!12 bytes for stack allocation.
SAVE.main=-(92 + 12) & -8
