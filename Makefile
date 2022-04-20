app.out: main.o foo.o bar.o
	gcc -o app.out main.o foo.o bar.o

main.o: foo.h bar.h main.c
foo.o: foo.h foo.c
bar.o: bar.h bar.c