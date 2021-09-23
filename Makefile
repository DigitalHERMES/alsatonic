prefix=/usr
CC=gcc
CFLAGS=-lm -lasound
EXEC=alsatonic

all: $(EXEC)

$(EXEC): alsatonic.c
	$(CC) alsatonic.c -o $(EXEC) $(CFLAGS)

.PHONY: clean install
install: $(EXEC)
	install -D $(EXEC) $(DESTDIR)$(prefix)/bin/$(EXEC)

clean:
	rm -rf $(EXEC)
