SRC := helloworld.c
CC ?= gcc
OBJ := helloworld

install: $(OBJ)
	$(CC) $(SRC) -o $(OBJ)

clean:
	rm $(OBJ)
	
