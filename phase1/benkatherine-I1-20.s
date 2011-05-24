/*
 * Generated Tue May 24 10:20:23 PDT 2011
 */

			.section ".rodata"
NL:		.asciz "\n"
IntFMT:		.asciz "%d"
StrFMT:		.asciz "%s"
BoolFMT:		.asciz "false\0\0\0true"

			.section ".data"
			.align 4

	! instruction for x
x:			.word 0

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for y
y:			.word 4

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for z
z:			.word 0

			.section ".text"
			.align 4
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp
	! instruction to set global vars: y
		set	y, %l1
		ld	[%l1], %l1
	! instruction to set global vars: z
		set	z, %l0
		st	%l1, [%l0]
			.section ".data"
			.align 4

	! instruction for a
a:			.word 0

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for b
b:			.word 4

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction to declare float label .tmp1
.tmp1:			.word 4

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp1
		set	.tmp1, %l1
		ld	[%l1], %l1
	! instruction to set global vars: b
		set	b, %l0
		st	%l1, [%l0]
			.section ".data"
			.align 4

	! instruction for c
c:			.word 0

			.section ".text"
			.align 4
	! instruction to set global vars: a
		set	a, %l1
		ld	[%l1], %l1
	! instruction to set global vars: c
		set	c, %l0
		st	%l1, [%l0]
			.section ".data"
			.align 4

	! instruction for d
d:			.word 0

			.section ".text"
			.align 4
	! instruction to set global vars: b
		set	b, %l1
		ld	[%l1], %l1
	! instruction to set global vars: d
		set	d, %l0
		st	%l1, [%l0]

		ret
		restore


!0 bytes for stack allocation.
SAVE.main=-(92 + 0) & -8
