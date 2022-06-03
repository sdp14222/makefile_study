CC = g++
CXXFLAGS = -Wall -O2 -MD
OBJS = foo.o bar.o main.o

%.o : %.cc
	$(CC) $(CXXFLAGS) -c $<

main.out : $(OBJS)
	$(CC) $(CXXFLAGS) $(OBJS) -o main.out 

.PHONY : clean
clean :
	rm -f $(OBJS) main.out

-include $(OBJS:.o=.d)