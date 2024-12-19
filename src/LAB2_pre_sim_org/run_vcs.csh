vcs -gui -f e203_filelist.f -timescale=1ns/1ps -full64  -R +neg_tchk +maxdelays +notimingcheck +nospecify  +vc  +v2k  -sverilog -debug_access+all | tee vcs.log 

# -gui: start the DVE when simulation
