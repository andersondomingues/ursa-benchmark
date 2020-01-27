if {[file isdirectory work]} { vdel -all -lib work }
vlib work

set HF_PATH /home/ale/repos/riscv/hf-risc

#core
vcom -93 -explicit ${HF_PATH}/riscv/core_rv32i/bshifter.vhd
vcom -93 -explicit ${HF_PATH}/riscv/core_rv32i/alu.vhd
vcom -93 -explicit ${HF_PATH}/riscv/core_rv32i/reg_bank.vhd
vcom -93 -explicit ${HF_PATH}/riscv/core_rv32i/control.vhd
vcom -93 -explicit ${HF_PATH}/riscv/core_rv32i/datapath.vhd
vcom -93 -explicit ${HF_PATH}/riscv/core_rv32i/int_control.vhd
vcom -93 -explicit ${HF_PATH}/riscv/core_rv32i/cpu.vhd
# peripheral
vcom -93 -explicit ${HF_PATH}/devices/peripherals/minimal_soc.vhd
vcom -93 -explicit ${HF_PATH}/riscv/sim/boot_ram.vhd
vcom -93 -explicit ${HF_PATH}/riscv/sim/ram.vhd
#top
vcom -93 -explicit ${HF_PATH}/riscv/sim/hf-riscv_tb.vhd

quit
