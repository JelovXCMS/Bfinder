#!/bin/sh

eval `scramv1 runtime -sh`
#rm ../loop.exe
#g++ ../loop.C $(root-config --cflags --libs) -Wall -O2 -o "../loop.exe"

#./submit_PBS_job_mutltifiles.sh INFILELIST isPbPb FilePerJob OUTPUTDIR JobIndex isReal
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_f0980kkpi_pt0.lis  0  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_MC/Ds_pp_MC_Prompt_f0980kkpi_pt0  Ds_pp_MC_Prompt_f0980kkpi_pt0 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_f0980kkpi_pt1p8.lis  0  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_MC/Ds_pp_MC_Prompt_f0980kkpi_pt1p8  Ds_pp_MC_Prompt_f0980kkpi_pt1p8 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_f0980kkpi_pt3p8.lis  0  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_MC/Ds_pp_MC_Prompt_f0980kkpi_pt3p8  Ds_pp_MC_Prompt_f0980kkpi_pt3p8 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_f0980kkpi_pt5p7.lis  0  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_MC/Ds_pp_MC_Prompt_f0980kkpi_pt5p7  Ds_pp_MC_Prompt_f0980kkpi_pt5p7 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_f0980kkpi_pt9p5.lis  0  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_MC/Ds_pp_MC_Prompt_f0980kkpi_pt9p5  Ds_pp_MC_Prompt_f0980kkpi_pt9p5 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_f0980kkpi_pt19.lis  0  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_MC/Ds_pp_MC_Prompt_f0980kkpi_pt19  Ds_pp_MC_Prompt_f0980kkpi_pt19 0

../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_f0980kkpi_pt0.lis  0  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_MC/Ds_pp_MC_NonPrompt_f0980kkpi_pt0  Ds_pp_MC_NonPrompt_f0980kkpi_pt0 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_f0980kkpi_pt1p8.lis  0  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_MC/Ds_pp_MC_NonPrompt_f0980kkpi_pt1p8  Ds_pp_MC_NonPrompt_f0980kkpi_pt1p8 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_f0980kkpi_pt3p8.lis  0  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_MC/Ds_pp_MC_NonPrompt_f0980kkpi_pt3p8  Ds_pp_MC_NonPrompt_f0980kkpi_pt3p8 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_f0980kkpi_pt5p7.lis  0  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_MC/Ds_pp_MC_NonPrompt_f0980kkpi_pt5p7  Ds_pp_MC_NonPrompt_f0980kkpi_pt5p7 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_f0980kkpi_pt9p5.lis  0  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_MC/Ds_pp_MC_NonPrompt_f0980kkpi_pt9p5  Ds_pp_MC_NonPrompt_f0980kkpi_pt9p5 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_f0980kkpi_pt19.lis  0  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_MC/Ds_pp_MC_NonPrompt_f0980kkpi_pt19  Ds_pp_MC_NonPrompt_f0980kkpi_pt19 0
#
