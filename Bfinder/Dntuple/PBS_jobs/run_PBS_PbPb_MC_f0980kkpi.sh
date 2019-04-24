#!/bin/sh

isPbPb=1

eval `scramv1 runtime -sh`
#rm ../loop.exe
#g++ ../loop.C $(root-config --cflags --libs) -Wall -O2 -o "../loop.exe"
#./submit_PBS_job_mutltifiles.sh INFILELIST isPbPb FilePerJob OUTPUTDIR JobIndex isReal
../submit_PBS_job_mutltifiles.sh  input_list/privateMC/Ds_PbPb_MC_Prompt_f0980kkpi_pt0.lis  ${isPbPb}  2  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_MC/Ds_PbPb_MC_Prompt_f0980kkpi_pt0  Ds_PbPb_MC_Prompt_f0980kkpi_pt0 0
../submit_PBS_job_mutltifiles.sh  input_list/privateMC/Ds_PbPb_MC_Prompt_f0980kkpi_pt1p8.lis  ${isPbPb}  2  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_MC/Ds_PbPb_MC_Prompt_f0980kkpi_pt1p8  Ds_PbPb_MC_Prompt_f0980kkpi_pt1p8 0
../submit_PBS_job_mutltifiles.sh  input_list/privateMC/Ds_PbPb_MC_Prompt_f0980kkpi_pt3p8.lis  ${isPbPb}  5  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_MC/Ds_PbPb_MC_Prompt_f0980kkpi_pt3p8  Ds_PbPb_MC_Prompt_f0980kkpi_pt3p8 0
../submit_PBS_job_mutltifiles.sh  input_list/privateMC/Ds_PbPb_MC_Prompt_f0980kkpi_pt5p7.lis  ${isPbPb}  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_MC/Ds_PbPb_MC_Prompt_f0980kkpi_pt5p7  Ds_PbPb_MC_Prompt_f0980kkpi_pt5p7 0
../submit_PBS_job_mutltifiles.sh  input_list/privateMC/Ds_PbPb_MC_Prompt_f0980kkpi_pt9p5.lis  ${isPbPb}  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_MC/Ds_PbPb_MC_Prompt_f0980kkpi_pt9p5  Ds_PbPb_MC_Prompt_f0980kkpi_pt9p5 0
../submit_PBS_job_mutltifiles.sh  input_list/privateMC/Ds_PbPb_MC_Prompt_f0980kkpi_pt19.lis  ${isPbPb}  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_MC/Ds_PbPb_MC_Prompt_f0980kkpi_pt19  Ds_PbPb_MC_Prompt_f0980kkpi_pt19 0

../submit_PBS_job_mutltifiles.sh  input_list/privateMC/Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt0.lis  ${isPbPb}  2  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_MC/Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt0  Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt0 0
../submit_PBS_job_mutltifiles.sh  input_list/privateMC/Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt1p8.lis  ${isPbPb}  2  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_MC/Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt1p8  Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt1p8 0
../submit_PBS_job_mutltifiles.sh  input_list/privateMC/Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt3p8.lis  ${isPbPb}  5  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_MC/Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt3p8  Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt3p8 0
../submit_PBS_job_mutltifiles.sh  input_list/privateMC/Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt5p7.lis  ${isPbPb}  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_MC/Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt5p7  Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt5p7 0
../submit_PBS_job_mutltifiles.sh  input_list/privateMC/Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt9p5.lis  ${isPbPb}  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_MC/Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt9p5  Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt9p5 0
../submit_PBS_job_mutltifiles.sh  input_list/privateMC/Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt19.lis  ${isPbPb}  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/PbPb_MC/Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt19  Ds_PbPb_MC_NonPrompt22_f0980kkpi_pt19 0

