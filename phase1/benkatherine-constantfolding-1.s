/*
 * Generated Tue May 24 10:20:37 PDT 2011
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
			.align 4

	! instruction to declare float label .tmp0
.tmp0:			.word 210

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp0
		set	.tmp0, %l1
		ld	[%l1], %l1
		st	%l1, [%fp-4]

	! Doing + operation
			.section ".data"
			.align 4

	! instruction to declare float label .tmp2
.tmp2:			.word 4

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp2
		set	.tmp2, %l0
		ld	[%l0], %l0
		ld	[%fp-4], %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-8]
		ld	[%fp-8], %l1
		st	%l1, [%fp-12]

	! Doing + operation
		ld	[%fp-4], %l0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp3
.tmp3:			.word 210

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp3
		set	.tmp3, %l1
		ld	[%l1], %l1
		add %l0, %l1, %l0
		st	%l0, [%fp-16]

	! instruction to print out .tmp5
		set	IntFMT, %o0
		ld	[%fp-16], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! instruction to print out c2
		set	IntFMT, %o0
		ld	[%fp-12], %l0
		mov	%l0, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop
			.section ".data"
			.align 4

	! instruction to declare float label .tmp6
.tmp6:			.single 0r420.25

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp6
		set	.tmp6, %l1
		ld	[%l1], %f1
		st	%f1, [%fp-20]

	! Doing + operation
		ld	[%fp-20], %f0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp7
.tmp7:			.single 0r662.5

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp7
		set	.tmp7, %l1
		ld	[%l1], %f1
		fadds %f0, %f1, %f0
		st	%f0, [%fp-24]

	! instruction to print float with label .tmp8
		ld	[%fp-24], %f0
		call	printFloat, 1
		nop

			.section ".data"
.StringFMT1:			.asciz"\n"

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT1, %o1
		call	printf, 2
		nop

	! instruction to print out .tmp9
		set	IntFMT, %o0
			.section ".data"
			.align 4

	! instruction to declare float label .tmp9
.tmp9:			.word 4

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp9
		set	.tmp9, %l0
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
