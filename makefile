C_SRC       = lex.c expr.c error.c decl.c stmt.c main.c emit.c func.c
H_SRC			= lex.h expr.h error.h decl.h stmt.h tokens.txt emit.h func.h
#OBJS        = $(C_SRC:.c=.o)
CC          = gcc 
Exams:=$(shell find ./ -name "Exam*.c")

all:  $(C_SRC) $(H_SRC)
	$(CC) -static -o sc $(C_SRC)
	./sc < demo.c	> demo.s
	$(CC) -m32 demo.s -o demo
	make exams

run:
	./demo 2022 11 12 17 35


exams:
	make -C examples
	
runexams:
	make -C examples run	

clean:
	rm -f *.o sc demo 
	make -C examples clean
	

