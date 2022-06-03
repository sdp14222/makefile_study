CC = g++
CXXFLAGS = -Wall -O2
OBJS = foo.o bar.o main.o

%.o : %.cc %.h
	$(CC) $(CXXFLAGS) -c $<

main.o : main.cc foo.h bar.h
	$(CC) $(CXXFLAGS) -c main.cc

main.out : foo.o bar.o main.o
	$(CC) $(CXXFLAGS) $(OBJS) -o main.out 

.PHONY : clean
clean :
	rm -f $(OBJS) main.out