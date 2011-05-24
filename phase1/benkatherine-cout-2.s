/*
 * Generated Tue May 24 10:20:40 PDT 2011
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

	! Doing + operation
	! instruction to set global vars: a
		set	a, %l0
		ld	[%l0], %l0
	! instruction to set global vars: b
		set	b, %l1
		ld	[%l1], %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-4]

	! Doing + operation
		ld	[%fp-4], %l0
	! instruction to set global vars: b
		set	b, %l1
		ld	[%l1], %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-8]
		ld	[%fp-8], %l1
	! instruction to set global vars: c
		set	c, %l0
		st	%l1, [%l0]

	! instruction to print out a
		set	IntFMT, %o0
	! instruction to set global vars: a
		set	a, %l0
		ld	[%l0], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! Doing + operation
	! instruction to set global vars: a
		set	a, %l0
		ld	[%l0], %l0
	! instruction to set global vars: b
		set	b, %l1
		ld	[%l1], %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-12]

	! instruction to print out 
		set	IntFMT, %o0
		ld	[%fp-12], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! Doing - operation
	! instruction to set global vars: a
		set	a, %l0
		ld	[%l0], %l0
	! instruction to set global vars: b
		set	b, %l1
		ld	[%l1], %l1
		sub %l0, %l1, %l0
		st	%l0, [%fp-16]

	! Doing - operation
		ld	[%fp-16], %l0
	! instruction to set global vars: b
		set	b, %l1
		ld	[%l1], %l1
		sub %l0, %l1, %l0
		st	%l0, [%fp-20]

	! instruction to print out 
		set	IntFMT, %o0
		ld	[%fp-20], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! Doing + operation
			.section ".data"
			.align 4

	! instruction to declare float label .tmp5
.tmp5:			.word 5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp5
		set	.tmp5, %l0
		ld	[%l0], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp3
.tmp3:			.word 6

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp3
		set	.tmp3, %l1
		ld	[%l1], %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-24]

	! instruction to print out .tmp6
		set	IntFMT, %o0
		ld	[%fp-24], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! instruction to print out c
		set	IntFMT, %o0
	! instruction to set global vars: c
		set	c, %l0
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


!24 bytes for stack allocation.
SAVE.main=-(92 + 24) & -8
