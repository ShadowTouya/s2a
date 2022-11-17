# A demo to show the basic idea of a "Simple C compiler"
	
## 1. Please complete the source code:

```sh
    Lines 318-322 in stmt.c (Control flow: if statement)
    Lines 330-336 in stmt.c (Control flow: while statement)	
    Lines 287-305 in expr.c (Function Call)
```

## 2. How to build and run 

```sh
iron@Katana:s2a$ sudo apt-get install gcc-multilib g++-multilib

iron@Katana:s2a$ make

gcc  -static -o sc lex.c expr.c error.c decl.c stmt.c main.c emit.c func.c
./sc < demo.c	> demo.s
gcc  -m32 demo.s -o demo

iron@Katana:s2a$ make run

./demo 2022 11 12 17 35
```

## 3. Use sc.bak to run the benchmarks in the sub-directory "examples"

```sh
iron@Katana:s2a$ make
iron@Katana:s2a$ make runexams
```

4. Overview

```sh
iron@Katana:s2a$ wc -l `find . -name "*.h"`
   8 ./decl.h
  36 ./expr.h
   6 ./error.h
  33 ./func.h
  28 ./stmt.h
  41 ./lex.h
  54 ./emit.h
 206 total
 
iron@Katana:s2a$ wc -l `find . -name "*.c"`
  400 ./stmt.c
   99 ./demo.c
  107 ./lex.c
  162 ./decl.c
   17 ./error.c
   84 ./emit.c
  351 ./expr.c
  160 ./main.c
  112 ./func.c
 1492 total
 ```
 
## 5. git

```sh 
 git clone ???
 git add .
 git commit -m "Update xxx"
 git push
```
 
					sheisc@163.com

