PREFIX ?= /usr/local
SRC = l1li.c
CFLAGS = -std=c99 -Wall -pedantic
BIN = l1lI 

.PHONY: clean uninstall

$(BIN): $(SRC)
		$(CC) $(SRC) $(CFLAGS) -o $@

install: $(BIN)
		install $(BIN) $(PREFIX)/bin

clean:
		rm -f $(BIN)

uninstall:
		rm -f $(PREFIX)/bin/$(BIN)
