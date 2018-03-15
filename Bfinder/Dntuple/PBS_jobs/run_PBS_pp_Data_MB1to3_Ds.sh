#!/bin/sh

eval `scramv1 runtime -sh`
rm ../loop.exe
g++ ../loop.C $(root-config --cflags --libs) -Wall -O2 -o "../loop.exe"

#./submit_PBS_job_mutltifiles.sh INFILELIST isPbPb FilePerJob OUTPUTDIR JobIndex isReal
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB1.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB1  Ds_pp_Data_phikkpi_MB1 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB2.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB2  Ds_pp_Data_phikkpi_MB2 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB3.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB3  Ds_pp_Data_phikkpi_MB3 1

