#!/bin/sh

eval `scramv1 runtime -sh`
rm ../loop.exe
g++ ../loop.C $(root-config --cflags --libs) -Wall -O2 -o "../loop.exe"

#./submit_PBS_job_mutltifiles.sh INFILELIST isPbPb FilePerJob OUTPUTDIR JobIndex isReal
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB5.lis  1  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/cent30100/HIMB5  Ds_PbPb_Data_phikkpi_HIMB5 1

