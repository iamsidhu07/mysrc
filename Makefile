CC?=gcc

CFLAGS=-Wall -Wextra -g

SRCS=helloworld.c

OBJS=$(SRCS:.c=.o)

EXEC=helloworld

all: $(EXEC)

# Compile source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Link object files into executable
$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $(EXEC)
clean:
	rm -f $(OBJS) $(EXEC)

