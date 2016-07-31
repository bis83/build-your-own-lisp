ALL=01-interactive-prompt 02-using-editline 03-mpc-parser
CC=cc

all: $(ALL)

01-interactive-prompt: 01-interactive-prompt.c
	$(CC) -o $@ $^

02-using-editline: 02-using-editline.c
	$(CC) -o $@ $^ -ledit

03-mpc-parser: 03-mpc-parser.c
	$(CC) -o $@ $^ mpc.c -lm -ledit

get:
	curl https://raw.githubusercontent.com/orangeduck/mpc/master/mpc.h > mpc.h
	curl https://raw.githubusercontent.com/orangeduck/mpc/master/mpc.c > mpc.c

clean:
	rm -f $(ALL)

.PHONY: clean all get
