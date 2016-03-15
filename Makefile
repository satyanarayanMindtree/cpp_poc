CC=$(CROSS_COMPILER)g++
CFLAGS= -g -wall
INCLUDES=
SOURCE= cpp_main.cpp
TARGET=test_app

OBJS = $(SOURCE:.cpp=.o)

all: build

build: $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

.cpp:
	$(CC) $(CFLAGS) $(INCLUDES) -c $<
	
clean:
	$(RM) ./*.o 
	$(RM) $(TARGET)