!function: void main() {
!
!int a = 6;
!cout << a;
!
!}

!---Global Variables----
    .section	".data"
    .align 4
!no globals
!--DEFAULT STRING FORMATTERS--
    .section	".rodata"
    intFmt:	.asciz "%d"
    endl:	.asciz "\n"
    
!--main---
    .section 	".text"
    .align	4
    .global	main
main:
    set SAVE.main,	%g1
    save	%sp,	%g1,	%sp
    
!int a = 6;
    set	6,	%l0
    !add	%fp,	-4,	%l1 ! move the address of the 0th local var into reg %l0
    st	%l0,	[%fp-4]	! store 6 (in reg %l0) into address of 0th local var (a)
    
! cout
    set intFmt,	%o0		! set the "%d" format into argument reg 0
    add %fp,	-4,	%l1	! move the address of the 0th local var into reg %l0
    ld	[%l1],	%l0		! load the value of the 0th local var (a) into reg %l0
    mov	%l0,	%o1		! move the value into argument reg 1
    call printf			! printf
    nop
    ret				!return
    restore			!return
! 4 bytes tmp
    SAVE.main = -(92 + 4) & -8
    
