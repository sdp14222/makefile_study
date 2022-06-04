CC = g++

# Compiler Options
CXXFLAGS = -Wall -O2 

# Linker Options
LDFLAGS = 

# Header File Path
INCLUDE = -Iinclude/

# Source File Path 
SRC_DIR = ./src

# Object File Path
OBJ_DIR = ./obj

# Execute File name
TARGET = main

# Source Files
# Make 할 소스 파일들
# wildcard 로 SRC_DIR 에서 *.cc 로 된 파일들 목록을 뽑아낸 뒤에
# notdir 로 파일 이름만 뽑아낸다.
# wildcard 는 함수로 해당 조건에 맞는 파일들을 뽑아낸다.
# (e.g SRCS 는 foo.cc bar.cc main.cc 가 된다.)
SRCS = $(notdir $(wildcard $(SRC_DIR)/*.cc))

OBJS = $(SRCS:.cc=.o)

# OBJS 안의 object 파일들 이름 앞에 $(OBJ_DIR)/ 을 붙인다.
# patsubst 함수는 $(patsubst 패턴,치환 후 형태,변수) 의 같은 꼴로 사용
OBJECTS = $(patsubst %.o,$(OBJ_DIR)/%.o,$(OBJS))
DEPS = $(OBJECTS:.o=.d)

all: main

$(OBJ_DIR)/%.o : $(SRC_DIR)/%.cc
	$(CC) $(CXXFLAGS) $(INCLUDE) -c $< -o $@ -MD $(LDFLAGS)

$(TARGET) : $(OBJECTS)
	$(CC) $(CXXFLAGS) $(OBJECTS) -o $(TARGET) $(LDFLAGS)

.PHONY: clean all
clean:
	rm -f $(OBJECTS) $(DEPS) $(TARGET)

-include $(DEPS)