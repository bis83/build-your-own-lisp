ALL=01-interactive-prompt 02-using-editline
CC=cc

all: $(ALL)

01-interactive-prompt:
	$(CC) -o $@ $@.c

02-using-editline:
	$(CC) -o $@ $@.c -ledit

clean:
	rm -f $(ALL)

.PHONY: clean all
