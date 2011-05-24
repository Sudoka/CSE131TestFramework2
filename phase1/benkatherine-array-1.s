/*
 * Generated Tue May 24 10:20:36 PDT 2011
 */

			.section ".rodata"
NL:		.asciz "\n"
IntFMT:		.asciz "%d"
StrFMT:		.asciz "%s"
BoolFMT:		.asciz "false\0\0\0true"

			.section ".bss"
			.align 4

	! instruction for x
			.global x
	!Array declaration for: x
x:			.skip 12

			.section ".text"
			.align 4
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp

	! access array x
			.section ".data"
			.align 4

	! instruction to declare float label .tmp1
.tmp1:			.word 2

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp1
		set	.tmp1, %l0
		ld	[%l0], %o0
		set	4, %o1
		call	.mul
		nop
		mov	%o0, %l0
	! instruction to set global vars: x
		set	x, %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-4]
			.section ".data"
			.align 4

	! instruction to declare float label .tmp2
.tmp2:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp2
		set	.tmp2, %l1
		ld	[%l1], %l1
		ld	[%fp-4], %l0
		st	%l1, [%l0]
		st	%l1, [%fp-8]

	! access array x
			.section ".data"
			.align 4

	! instruction to declare float label .tmp3
.tmp3:			.word 2

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp3
		set	.tmp3, %l0
		ld	[%l0], %o0
		set	4, %o1
		call	.mul
		nop
		mov	%o0, %l0
	! instruction to set global vars: x
		set	x, %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-8]

	! instruction to print out x
		set	IntFMT, %o0
		ld	[%fp-8], %l0
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


!8 bytes for stack allocation.
SAVE.main=-(92 + 8) & -8
