#Auto-Genereated by SE352
.data
	.input_fmtstr:	.string	"%d"		# (main.c, 144)
	.output_fmtstr:	.string	"%d\012"		# (main.c, 145)

.text
.globl  SQAless
SQAless:
	movl 8(%esp), %eax		# (main.c, 35)
	cmpl %eax, 4(%esp)		# (main.c, 36)
	setl    %al		# (main.c, 37)
	movzbl  %al, %eax		# (main.c, 38)
	ret		# (main.c, 39)

.text
.globl  SQAlarger
SQAlarger:
	movl 8(%esp), %eax		# (main.c, 35)
	cmpl %eax, 4(%esp)		# (main.c, 36)
	setg    %al		# (main.c, 37)
	movzbl  %al, %eax		# (main.c, 38)
	ret		# (main.c, 39)

.text
.globl  SQAequal
SQAequal:
	movl 8(%esp), %eax		# (main.c, 35)
	cmpl %eax, 4(%esp)		# (main.c, 36)
	sete    %al		# (main.c, 37)
	movzbl  %al, %eax		# (main.c, 38)
	ret		# (main.c, 39)

.text
.globl  SQAstore
SQAstore:
	movl 12(%esp), %eax		# (main.c, 99)
	movl 4(%esp), %ecx		# (main.c, 100)
	movl 8(%esp), %edx		# (main.c, 101)
	movl %eax, (%ecx,%edx)		# (main.c, 102)
	ret		# (main.c, 103)

.text
.globl  SQAload
SQAload:
	movl 4(%esp), %edx		# (main.c, 119)
	movl 8(%esp), %eax		# (main.c, 120)
	movl (%edx,%eax), %eax		# (main.c, 121)
	ret		# (main.c, 122)

.text
.globl	main
main:
	pushl %ebp		# (emit.c, 17)
	pushl %ebx		# (emit.c, 18)
	pushl %esi		# (emit.c, 19)
	pushl %edi		# (emit.c, 20)
	movl %esp, %ebp		# (emit.c, 21)
	subl $12, %esp		# (emit.c, 23)
	movl $3, %eax		# (stmt.c, 354)
	movl %eax, -4(%ebp)		# (stmt.c, 355)
Label_0:
	cmpl $0, -4(%ebp)		# (stmt.c, 332)
	je Label_1		# (stmt.c, 333)
	leal .output_fmtstr, %eax		# (stmt.c, 384)
	pushl -4(%ebp)		# (stmt.c, 385)
	pushl %eax		# (stmt.c, 386)
	call printf		# (stmt.c, 387)
	addl $8, %esp		# (stmt.c, 388)
	movl -4(%ebp), %eax		# (expr.c, 321)
	subl $1, %eax		# (expr.c, 322)
	movl %eax, -8(%ebp)		# (expr.c, 323)
	movl -8(%ebp), %eax		# (stmt.c, 354)
	movl %eax, -4(%ebp)		# (stmt.c, 355)
	jmp Label_0		# (stmt.c, 335)
Label_1:
	movl $0, %eax		# (stmt.c, 397)
	movl %ebp, %esp		# (emit.c, 40)
	popl %edi		# (emit.c, 41)
	popl %esi		# (emit.c, 42)
	popl %ebx		# (emit.c, 43)
	popl %ebp		# (emit.c, 44)
	ret		# (emit.c, 45)
