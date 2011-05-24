/*
 * Generated Tue May 24 10:20:53 PDT 2011
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
x:			.word 5

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for y
			.global y
y:			.word 6

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
		ba	.If2
		nop
.If1:

	! Doing else: 
 .If2:

	! Doing > operation
	! instruction to set global vars: y
		set	y, %l0
		ld	[%l0], %l0
	! instruction to set global vars: x
		set	x, %l1
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

		be	.If3
		nop
		ba	.If4
		nop
.If3:

	! Doing else: 
 .If4:

		ret
		restore


!8 bytes for stack allocation.
SAVE.main=-(92 + 8) & -8
