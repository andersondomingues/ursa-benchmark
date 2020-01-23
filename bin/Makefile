
SUBDIR_ROOTS := gem5 hfsim qemu rv8 systemc
DIRS := . $(shell find $(SUBDIR_ROOTS) -type d)
GARBAGE_PATTERNS := *.o *~ *.map *.elf *.bin *.log *.txt *.hex
GARBAGE := $(foreach DIR,$(DIRS),$(addprefix $(DIR)/,$(GARBAGE_PATTERNS)))

clean:
	rm -rf $(GARBAGE)
