/*
 * Generated Tue May 24 10:20:44 PDT 2011
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
b:			.word 0

			.section ".text"
			.align 4
			.global main

			.section ".text"
			.align 4
main:
		set	SAVE.main, %g1
		save %sp, %g1, %sp
	! instruction to set global vars: a
		set	a, %l0
		ld	[%l0], %o0
		call	exit
		nop

		ret
		restore


!0 bytes for stack allocation.
SAVE.main=-(92 + 0) & -8
			.global foo

			.section ".text"
			.align 4
foo:
		set	foo.SIZE, %g1
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
		ld	[%fp-4], %o0
		call	exit
		nop

		ret
		restore


!4 bytes for stack allocation.
foo.SIZE=-(92 + 4) & -8
			.global bar

			.section ".text"
			.align 4
bar:
		set	bar.SIZE, %g1
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
		ld	[%fp-4], %l1
		st	%l1, [%fp-8]
		ld	[%fp-8], %o0
		call	exit
		nop

		ret
		restore


!8 bytes for stack allocation.
bar.SIZE=-(92 + 8) & -8
			.global foobar

			.section ".text"
			.align 4
foobar:
		set	foobar.SIZE, %g1
		save %sp, %g1, %sp
			.section ".data"
			.align 4

	! instruction to declare float label .tmp1
.tmp1:			.word 4

			.section ".text"
			.align 4
	! instruction to set global vars: .tmp1
		set	.tmp1, %l0
		ld	[%l0], %o0
		call	exit
		nop

		ret
		restore


!0 bytes for stack allocation.
foobar.SIZE=-(92 + 0) & -8
