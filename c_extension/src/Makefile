CC = gcc

# common flags, libraries
CFLAGS = -std=c11 -O3
CFLAGS += -Wall
CFLAGS += -fopenmp
#CFLAGS += -Wno-unknown-pragmas
LIBS = -lm

all: main clean

clean:
	rm *.o

OBJ = my_cfunctions.o

main: main.o $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@ $(LIBS)

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

