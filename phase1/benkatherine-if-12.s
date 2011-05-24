/*
 * Generated Tue May 24 10:20:51 PDT 2011
 */

			.section ".rodata"
NL:		.asciz "\n"
IntFMT:		.asciz "%d"
StrFMT:		.asciz "%s"
BoolFMT:		.asciz "false\0\0\0true"

			.section ".data"
			.align 4

	! instruction for pass
			.global pass
pass:			.word 1

			.section ".text"
			.align 4
			.section ".data"
			.align 4

	! instruction for fail
			.global fail
fail:			.word 0

			.section ".text"
			.align 4
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp

	! Doing if/while 
 	! instruction to set global vars: pass
		set	pass, %l0
		ld	[%l0], %l0

		cmp	%l0, %g0

		be	.If1
		nop

			.section ".data"
.StringFMT1:			.asciz"pass"

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT1, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! Doing if/while 
 	! instruction to set global vars: fail
		set	fail, %l0
		ld	[%l0], %l0

		cmp	%l0, %g0

		be	.If2
		nop

			.section ".data"
.StringFMT2:			.asciz"fail"

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT2, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop
		ba	.If3
		nop
.If2:

			.section ".data"
.StringFMT3:			.asciz"pass"

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT3, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! Doing else: 
 .If3:
		ba	.If4
		nop
.If1:

	! Doing if/while 
 	! instruction to set global vars: pass
		set	pass, %l0
		ld	[%l0], %l0

		cmp	%l0, %g0

		be	.If5
		nop

			.section ".data"
.StringFMT4:			.asciz"fail"

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

			.section ".data"
.StringFMT5:			.asciz"fail"

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT5, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! Doing else: 
 .If6:

	! Doing else: 
 .If4:

	! Doing if/while 
 	! instruction to set global vars: fail
		set	fail, %l0
		ld	[%l0], %l0

		cmp	%l0, %g0

		be	.If7
		nop

			.section ".data"
.StringFMT6:			.asciz"fail"

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT6, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop
		ba	.If8
		nop
.If7:

	! Doing if/while 
 	! instruction to set global vars: pass
		set	pass, %l0
		ld	[%l0], %l0

		cmp	%l0, %g0

		be	.If9
		nop

			.section ".data"
.StringFMT7:			.asciz"pass"

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT7, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop
		ba	.If10
		nop
.If9:

			.section ".data"
.StringFMT8:			.asciz"fail"

			.section ".text"
		set	StrFMT, %o0
		set	.StringFMT8, %o1
		call	printf, 2
		nop

	! print out newline
		set	NL, %o0
		call	printf, 1
		nop

	! Doing else: 
 .If10:

	! Doing else: 
 .If8:

		ret
		restore


!0 bytes for stack allocation.
SAVE.main=-(92 + 0) & -8
