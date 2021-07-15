# inspired by https://github.com/TheNetAdmin/Makefile-Templates

CC := gcc
CCFLAG := -g -fno-stack-protector
CCOBJFLAG := $(CCFLAG) -c
TARGET := exploit

# intermediate objects + target
OBJ := $(addsuffix .o, $(TARGET))
CLEAN_LIST := $(TARGET) \
			  $(OBJ)

# default for 'make'
default: all

# non-phony targets
$(TARGET): *.c
	$(CC) $(CCFLAG) -o $@ $?

# phony rules
.PHONY: all
all: $(TARGET)

.PHONY: clean
clean:
	@echo CLEAN $(CLEAN_LIST)
	@rm -f $(CLEAN_LIST)
