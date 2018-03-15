#!/bin/sh

eval `scramv1 runtime -sh`
rm ../loop.exe
g++ ../loop.C $(root-config --cflags --libs) -Wall -O2 -o "../loop.exe"

#./submit_PBS_job_mutltifiles.sh INFILELIST isPbPb FilePerJob OUTPUTDIR JobIndex isReal
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB5.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB5  Ds_pp_Data_phikkpi_MB5 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB6.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB6  Ds_pp_Data_phikkpi_MB6 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB7.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB7  Ds_pp_Data_phikkpi_MB7 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB8.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB8  Ds_pp_Data_phikkpi_MB8 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB9.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB9  Ds_pp_Data_phikkpi_MB9 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB10.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB10  Ds_pp_Data_phikkpi_MB10 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB11.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB11  Ds_pp_Data_phikkpi_MB11 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB12.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB12  Ds_pp_Data_phikkpi_MB12 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB13.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB13  Ds_pp_Data_phikkpi_MB13 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_Data_phikkpi_MB14.lis  0  20  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_Data/MB14  Ds_pp_Data_phikkpi_MB14 1

