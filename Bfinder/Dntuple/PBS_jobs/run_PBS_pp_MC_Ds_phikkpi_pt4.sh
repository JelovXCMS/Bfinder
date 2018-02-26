#!/bin/sh

eval `scramv1 runtime -sh`
rm ../loop.exe
g++ ../loop.C $(root-config --cflags --libs) -Wall -O2 -o "../loop.exe"

#./submit_PBS_job_mutltifiles.sh INFILELIST isPbPb FilePerJob OUTPUTDIR JobIndex isReal
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_phikkpi_pt4.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_MC/Ds_phikkpi  Ds_pp_MC_phikkpi_pt4 0

