#!/bin/sh

eval `scramv1 runtime -sh`
#rm ../loop.exe
#g++ ../loop.C $(root-config --cflags --libs) -Wall -O2 -o "../loop.exe"

#./submit_PBS_job_mutltifiles.sh INFILELIST isPbPb FilePerJob OUTPUTDIR JobIndex isReal
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB2_GJpart1.lis  1  50  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/GJ/HIMB2_GJpart1  Ds_PbPb_Data_phikkpi_HIMB2_GJpar1 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB2_GJpart2.lis  1  50  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/GJ/HIMB2_GJpart2  Ds_PbPb_Data_phikkpi_HIMB2_GJpar2 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB2_GJpart3.lis  1  50  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/GJ/HIMB2_GJpart3  Ds_PbPb_Data_phikkpi_HIMB2_GJpar3 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB2_GJpart4.lis  1  50  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/GJ/HIMB2_GJpart4  Ds_PbPb_Data_phikkpi_HIMB2_GJpar4 1

