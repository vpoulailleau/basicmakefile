src = $(wildcard *.c)
obj = $(src:.c=.o)

LDFLAGS = 

program.exe: $(obj)
	$(CC) -o $@ $^ $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(obj) program.exe