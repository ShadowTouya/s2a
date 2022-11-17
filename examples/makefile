CC          = gcc 

all:	
	@for example in $(shell find ./ -name "Exam*.c"); do \
		echo $$example; \
		./sc.exe <$$example >$$example.s; \
		$(CC) -m32 $$example.s -o $$example.exe; \
	done

run:
	@for example in $(shell find ./ -name "Exam*.exe"); do \
		echo "\n\n$$example"; \
		$$example; \
	done

clean:
	rm -f Exam*.c.s  Exam*.c.exe

