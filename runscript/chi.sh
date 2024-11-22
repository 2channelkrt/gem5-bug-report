gem5_dir=~/code/temp/gem5/

cmd=../binary/out.arm

config_file=${gem5_dir}/configs/deprecated/example/se.py
build=ARM

out_dir="m5out-chi"

debug_flags="--debug-flags=O3CPUAll,Ruby,Event,PacketQueue"

debug_file="chi-out.txt"
debug_start="50000000"

${gem5_dir}/build/${build}/gem5.opt ${debug_flags} -d ${out_dir} --debug-start ${debug_start} --debug-file ${debug_file} ${config_file} --cpu-type=O3CPU --caches --sys-clock="2.5GHz" --cpu-clock="2.5GHz" --cmd=${cmd} --mem-type="DDR4_2400_4x16" --ruby --ruby-clock="2.5GHz"