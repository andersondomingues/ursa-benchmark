TARGET   = forloop

GEM5_PATH=/home/ale/repos/riscv/gem5_src
SIM=$(GEM5_PATH)/build/RISCV/gem5.opt

app: 
	riscv32-unknown-elf-gcc -march=rv32im -mabi=ilp32 -Os -mcmodel=medlow -ffunction-sections -fdata-sections  ../../src/$(TARGET).c -o $(TARGET).elf
	
.PHONY: clean
clean:
	-rm -rf *~ *.o *.elf *.map simple.py m5out
	@echo "Cleanup complete!"
		
sim: app
	cp config/template.py simple.py
	sed -i 's/XTARGETX/$(TARGET).elf/g' simple.py
	$(SIM) simple.py
