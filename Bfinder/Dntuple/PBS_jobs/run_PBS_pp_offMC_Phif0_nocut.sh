#!/bin/sh

eval `scramv1 runtime -sh`
#rm ../loop.exe
#g++ ../loop.C $(root-config --cflags --libs) -Wall -O2 -o "../loop.exe"

# Ds_pp_MC_Prompt_Phi_pt0_nocut.lis

#./submit_PBS_job_mutltifiles.sh INFILELIST isPbPb FilePerJob OUTPUTDIR JobIndex isReal

nfile=5

../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_Phi_pt0_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_Prompt_Phi_pt0  Ds_pp_MC_Prompt_Phi_pt0 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_Phi_pt2_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_Prompt_Phi_pt2  Ds_pp_MC_Prompt_Phi_pt2 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_Phi_pt4_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_Prompt_Phi_pt4  Ds_pp_MC_Prompt_Phi_pt4 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_Phi_pt6_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_Prompt_Phi_pt6  Ds_pp_MC_Prompt_Phi_pt6 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_Phi_pt10_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_Prompt_Phi_pt10  Ds_pp_MC_Prompt_Phi_pt10 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_Phi_pt19_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_Prompt_Phi_pt19  Ds_pp_MC_Prompt_Phi_pt19 0

# Ds_pp_MC_NonPrompt_Phi_pt0_nocut.lis

../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_Phi_pt0_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_NonPrompt_Phi_pt0  Ds_pp_MC_NonPrompt_Phi_pt0 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_Phi_pt2_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_NonPrompt_Phi_pt2  Ds_pp_MC_NonPrompt_Phi_pt2 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_Phi_pt4_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_NonPrompt_Phi_pt4  Ds_pp_MC_NonPrompt_Phi_pt4 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_Phi_pt6_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_NonPrompt_Phi_pt6  Ds_pp_MC_NonPrompt_Phi_pt6 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_Phi_pt10_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_NonPrompt_Phi_pt10  Ds_pp_MC_NonPrompt_Phi_pt10 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_Phi_pt19_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_NonPrompt_Phi_pt19  Ds_pp_MC_NonPrompt_Phi_pt19 0


#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_f0_pt0_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_Prompt_f0_pt0  Ds_pp_MC_Prompt_f0_pt0 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_f0_pt2_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_Prompt_f0_pt2  Ds_pp_MC_Prompt_f0_pt2 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_f0_pt4_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_Prompt_f0_pt4  Ds_pp_MC_Prompt_f0_pt4 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_f0_pt6_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_Prompt_f0_pt6  Ds_pp_MC_Prompt_f0_pt6 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_f0_pt10_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_Prompt_f0_pt10  Ds_pp_MC_Prompt_f0_pt10 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_Prompt_f0_pt19_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_Prompt_f0_pt19  Ds_pp_MC_Prompt_f0_pt19 0
#
## Ds_pp_MC_NonPrompt_f0_pt0_nocut.lis
#
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_f0_pt0_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_NonPrompt_f0_pt0  Ds_pp_MC_NonPrompt_f0_pt0 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_f0_pt2_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_NonPrompt_f0_pt2  Ds_pp_MC_NonPrompt_f0_pt2 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_f0_pt4_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_NonPrompt_f0_pt4  Ds_pp_MC_NonPrompt_f0_pt4 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_f0_pt6_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_NonPrompt_f0_pt6  Ds_pp_MC_NonPrompt_f0_pt6 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_f0_pt10_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_NonPrompt_f0_pt10  Ds_pp_MC_NonPrompt_f0_pt10 0
#../submit_PBS_job_mutltifiles.sh  input_list/Ds_pp_MC_NonPrompt_f0_pt19_nocut.lis  0  ${nfile}  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offpp_MC_nocut/Ds_pp_MC_NonPrompt_f0_pt19  Ds_pp_MC_NonPrompt_f0_pt19 0



