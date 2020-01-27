set StdArithNoWarnings 0
set NumericStdNoWarnings 0 

vsim -novopt work.tb

# shut up the annoying warnings
set StdArithNoWarnings 1
set StdNumNoWarnings 1
set NumericStdNoWarnings 1
run 0 ns;
set StdArithNoWarnings 0
set StdNumNoWarnings 0
set NumericStdNoWarnings 0

#do wave.do

set runtime [time {vsim -do "run -all" -novopt work.tb}]
#run -all

quit
