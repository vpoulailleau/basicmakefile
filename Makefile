# all c files in this directory
src = $(wildcard *.c)
# otherwise
#src = $(wildcard src_dir1/*.c) \
#      $(wildcard src_dir2/*.c)

EXE=program.exe
CFLAGS = -Wall
LDFLAGS = -Wall

# end of the configuration

obj = $(src:.c=.o)
dep = $(obj:.o=.d)

$(EXE): $(obj)
	$(CC) $(LDFLAGS) -o $@ $^

-include $(dep)   # include all dep files in the makefile

%.d: %.c
	@$(CC) $(CFLAGS) $< -MM -MT $(@:.d=.o) >$@

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

.PHONY: clean
clean:
	rm -f $(obj) $(EXE) $(dep)