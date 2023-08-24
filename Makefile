ifeq ($(suffix $(SHELL)),.exe)
	rm = del
else
	rm = rm
endif

params = --std=08 
cf = work-obj08.cf 
all : $(cf)
	ghdl -m $(params) comp_dos_tb
	ghdl -r $(params) comp_dos_tb
 $(cf) : *.vhd
	ghdl -i $(params) *.vhd
clean : 
	ghdl clean
	$(rm) $(cf) *.o comp_dos_tb.exe
