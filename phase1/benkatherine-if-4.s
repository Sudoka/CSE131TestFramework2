/*
 * Generated Tue May 24 10:20:55 PDT 2011
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
x:			.word 4

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for y
			.global y
y:			.word 5

			.section ".text"
			.align 4
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp

	! Doing > operation
	! instruction to set global vars: x
		set	x, %l0
		ld	[%l0], %l0
	! instruction to set global vars: y
		set	y, %l1
		ld	[%l1], %l1

		cmp	%l0, %l1

		ble	.CMP1
		nop
		set	1, %l0
		st	%l0, [%fp-4]
		ba	.CMP2
		nop
.CMP1:
		mov	%g0, %l0
		st	%l0, [%fp-4]
.CMP2:

	! Doing if/while 
 		ld	[%fp-4], %l0

		cmp	%l0, %g0

		be	.If1
		nop

			.section ".data"
.StringFMT1:			.asciz"Katherine "

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT1, %o1
		call	printf, 2
		nop

	! Doing > operation
	! instruction to set global vars: x
		set	x, %l0
		ld	[%l0], %l0
	! instruction to set global vars: y
		set	y, %l1
		ld	[%l1], %l1

		cmp	%l0, %l1

		ble	.CMP3
		nop
		set	1, %l0
		st	%l0, [%fp-8]
		ba	.CMP4
		nop
.CMP3:
		mov	%g0, %l0
		st	%l0, [%fp-8]
.CMP4:

	! Doing if/while 
 		ld	[%fp-8], %l0

		cmp	%l0, %g0

		be	.If2
		nop

			.section ".data"
.StringFMT2:			.asciz"is "

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT2, %o1
		call	printf, 2
		nop
		ba	.If3
		nop
.If2:

	! Doing else: 
 .If3:

			.section ".data"
.StringFMT3:			.asciz"a "

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT3, %o1
		call	printf, 2
		nop
		ba	.If4
		nop
.If1:

	! Doing else: 
 .If4:

	! Doing > operation
	! instruction to set global vars: y
		set	y, %l0
		ld	[%l0], %l0
	! instruction to set global vars: x
		set	x, %l1
		ld	[%l1], %l1

		cmp	%l0, %l1

		ble	.CMP5
		nop
		set	1, %l0
		st	%l0, [%fp-12]
		ba	.CMP6
		nop
.CMP5:
		mov	%g0, %l0
		st	%l0, [%fp-12]
.CMP6:

	! Doing if/while 
 		ld	[%fp-12], %l0

		cmp	%l0, %g0

		be	.If5
		nop

			.section ".data"
.StringFMT4:			.asciz"loser"

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT4, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop
		ba	.If6
		nop
.If5:

	! Doing else: 
 .If6:

		ret
		restore


!12 bytes for stack allocation.
SAVE.main=-(92 + 12) & -8
