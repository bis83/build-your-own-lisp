ALL=01-interactive-prompt 02-using-editline 03-mpc-parser 04-evaluation 05-error 06-sexpr 07-qexpr
CC=cc

all: $(ALL)

01-interactive-prompt: 01-interactive-prompt.c
	$(CC) -o $@ $^

02-using-editline: 02-using-editline.c
	$(CC) -o $@ $^ -ledit

03-mpc-parser: 03-mpc-parser.c
	$(CC) -o $@ $^ mpc.c -lm -ledit

04-evaluation: 04-evaluation.c
	$(CC) -o $@ $^ mpc.c -lm -ledit

05-error: 05-error.c
	$(CC) -o $@ $^ mpc.c -lm -ledit

06-sexpr: 06-sexpr.c
	$(CC) -o $@ $^ mpc.c -lm -ledit

07-qexpr: 07-qexpr.c
	$(CC) -o $@ $^ mpc.c -lm -ledit

get:
	curl https://raw.githubusercontent.com/orangeduck/mpc/master/mpc.h > mpc.h
	curl https://raw.githubusercontent.com/orangeduck/mpc/master/mpc.c > mpc.c

clean:
	rm -f $(ALL)

.PHONY: clean all get
