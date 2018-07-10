#!/bin/sh

eval `scramv1 runtime -sh`
#rm ../loop.exe
#g++ ../loop.C $(root-config --cflags --libs) -Wall -O2 -o "../loop.exe"

#./submit_PBS_job_mutltifiles.sh INFILELIST isPbPb FilePerJob OUTPUTDIR JobIndex isReal
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB13.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB13  Ds_pp_Data_phikkpi_MB13 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB14.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB14  Ds_pp_Data_phikkpi_MB14 1

