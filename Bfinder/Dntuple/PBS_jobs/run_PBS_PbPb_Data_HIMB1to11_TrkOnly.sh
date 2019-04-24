#!/bin/sh

eval `scramv1 runtime -sh`
#rm ../loop.exe
#g++ ../loop.C $(root-config --cflags --libs) -Wall -O2 -o "../loop.exe"

#./submit_PBS_job_mutltifiles.sh INFILELIST isPbPb FilePerJob OUTPUTDIR JobIndex isReal

FilePerJob=100;

../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB1_TrkOnly.lis  1  ${FilePerJob}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/TrkOnly/HIMB1  Ds_PbPb_Data_phikkpi_HIMB1_TrkOnly 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB2_TrkOnly.lis  1  ${FilePerJob}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/TrkOnly/HIMB2  Ds_PbPb_Data_phikkpi_HIMB2_TrkOnly 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB3_TrkOnly.lis  1  ${FilePerJob}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/TrkOnly/HIMB3  Ds_PbPb_Data_phikkpi_HIMB3_TrkOnly 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB4_TrkOnly.lis  1  ${FilePerJob}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/TrkOnly/HIMB4  Ds_PbPb_Data_phikkpi_HIMB4_TrkOnly 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB5_TrkOnly.lis  1  ${FilePerJob}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/TrkOnly/HIMB5  Ds_PbPb_Data_phikkpi_HIMB5_TrkOnly 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB6_TrkOnly.lis  1  ${FilePerJob}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/TrkOnly/HIMB6  Ds_PbPb_Data_phikkpi_HIMB6_TrkOnly 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB7_TrkOnly.lis  1  ${FilePerJob}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/TrkOnly/HIMB7  Ds_PbPb_Data_phikkpi_HIMB7_TrkOnly 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB8_TrkOnly.lis  1  ${FilePerJob}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/TrkOnly/HIMB8  Ds_PbPb_Data_phikkpi_HIMB8_TrkOnly 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB9_TrkOnly.lis  1  ${FilePerJob}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/TrkOnly/HIMB9  Ds_PbPb_Data_phikkpi_HIMB9_TrkOnly 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB10_TrkOnly.lis  1  ${FilePerJob}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/TrkOnly/HIMB10  Ds_PbPb_Data_phikkpi_HIMB10_TrkOnly 1
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_Data_phikkpi_HIMB11_TrkOnly.lis  1  ${FilePerJob}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_Data/TrkOnly/HIMB11  Ds_PbPb_Data_phikkpi_HIMB11_TrkOnly 1

