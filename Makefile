CC = c++ --std=c++11
CFLAGS = -L/usr/local/lib -lgmp
EXE = main
MAIN_DIR = .
OBJECTS = $(MAIN_DIR)/$(EXE).o

$(EXE): $(OBJECTS)
	$(CC) $(OBJECTS) $(CFLAGS) -o $(EXE)

.c.o: $@.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm *.o $(EXE)

