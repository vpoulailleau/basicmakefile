DEBUG=yes
EXEC=program.exe

# all c files in this directory
src = $(wildcard *.c)
# otherwise
#src = $(wildcard src_dir1/*.c) \
#      $(wildcard src_dir2/*.c)

# -g for debug
# -Wall to get all the possible warnings
# -ansi -pendantic to get portable code
ifeq ($(DEBUG),yes)
	CFLAGS=-W -Wall -ansi -pedantic -g
	LDFLAGS= -Wall
else
	CFLAGS=-W -Wall -ansi -pedantic
	LDFLAGS= -Wall
endif

###############################################
# end of the configuration
###############################################

all: $(EXEC)

obj = $(src:.c=.o)
dep = $(obj:.o=.d)

$(EXEC): $(obj)
	$(CC) $(LDFLAGS) -o $@ $^

-include $(dep)

%.d: %.c
	@$(CC) $(CFLAGS) $< -MM -MT $(@:.d=.o) >$@

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

.PHONY: clean
clean:
	rm -f $(obj) $(EXEC) $(dep)