vcs -gui -f e203_filelist.f -timescale=1ns/1ps -R +neg_tchk +maxdelays +notimingcheck +nospecify +vc +v2k -sverilog -debug_access+all -kdb +error+999 +lint=PCWM +lint=TFIPC-L| tee vcs.log
