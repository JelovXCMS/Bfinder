#!/bin/sh

eval `scramv1 runtime -sh`
#rm ../loop.exe
#g++ ../loop.C $(root-config --cflags --libs) -Wall -O2 -o "../loop.exe"

#./submit_PBS_job_mutltifiles.sh INFILELIST isPbPb FilePerJob OUTPUTDIR JobIndex isReal
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB4.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB4  Ds_pp_Data_phikkpi_MB4 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB15.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB15  Ds_pp_Data_phikkpi_MB15 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB16.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB16  Ds_pp_Data_phikkpi_MB16 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB17.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB17  Ds_pp_Data_phikkpi_MB17 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB18.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB18  Ds_pp_Data_phikkpi_MB18 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB19.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB19  Ds_pp_Data_phikkpi_MB19 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB20.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB20  Ds_pp_Data_phikkpi_MB20 1
