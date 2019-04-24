#!/bin/sh

eval `scramv1 runtime -sh`
#rm ../loop.exe
#g++ ../loop.C $(root-config --cflags --libs) -Wall -O2 -o "../loop.exe"

# Ds_PbPb_MC_Prompt_Phi_pt0.lis

#./submit_PBS_job_mutltifiles.sh INFILELIST isPbPb FilePerJob OUTPUTDIR JobIndex isReal

njob=20

../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_Prompt_Phi_pt0.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_Prompt_Phi_pt0  Ds_PbPb_MC_Prompt_Phi_pt0 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_Prompt_Phi_pt2.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_Prompt_Phi_pt2  Ds_PbPb_MC_Prompt_Phi_pt2 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_Prompt_Phi_pt4.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_Prompt_Phi_pt4  Ds_PbPb_MC_Prompt_Phi_pt4 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_Prompt_Phi_pt6.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_Prompt_Phi_pt6  Ds_PbPb_MC_Prompt_Phi_pt6 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_Prompt_Phi_pt10.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_Prompt_Phi_pt10  Ds_PbPb_MC_Prompt_Phi_pt10 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_Prompt_Phi_pt19.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_Prompt_Phi_pt19  Ds_PbPb_MC_Prompt_Phi_pt19 0

# Ds_PbPb_MC_NonPrompt_Phi_pt0.lis

../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_NonPrompt_Phi_pt0.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_NonPrompt_Phi_pt0  Ds_PbPb_MC_NonPrompt_Phi_pt0 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_NonPrompt_Phi_pt2.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_NonPrompt_Phi_pt2  Ds_PbPb_MC_NonPrompt_Phi_pt2 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_NonPrompt_Phi_pt4.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_NonPrompt_Phi_pt4  Ds_PbPb_MC_NonPrompt_Phi_pt4 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_NonPrompt_Phi_pt6.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_NonPrompt_Phi_pt6  Ds_PbPb_MC_NonPrompt_Phi_pt6 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_NonPrompt_Phi_pt10.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_NonPrompt_Phi_pt10  Ds_PbPb_MC_NonPrompt_Phi_pt10 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_NonPrompt_Phi_pt19.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_NonPrompt_Phi_pt19  Ds_PbPb_MC_NonPrompt_Phi_pt19 0


../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_Prompt_f0_pt0.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_Prompt_f0_pt0  Ds_PbPb_MC_Prompt_f0_pt0 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_Prompt_f0_pt2.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_Prompt_f0_pt2  Ds_PbPb_MC_Prompt_f0_pt2 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_Prompt_f0_pt4.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_Prompt_f0_pt4  Ds_PbPb_MC_Prompt_f0_pt4 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_Prompt_f0_pt6.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_Prompt_f0_pt6  Ds_PbPb_MC_Prompt_f0_pt6 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_Prompt_f0_pt10.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_Prompt_f0_pt10  Ds_PbPb_MC_Prompt_f0_pt10 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_Prompt_f0_pt19.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_Prompt_f0_pt19  Ds_PbPb_MC_Prompt_f0_pt19 0

# Ds_PbPb_MC_NonPrompt_f0_pt0.lis

../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_NonPrompt_f0_pt0.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_NonPrompt_f0_pt0  Ds_PbPb_MC_NonPrompt_f0_pt0 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_NonPrompt_f0_pt2.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_NonPrompt_f0_pt2  Ds_PbPb_MC_NonPrompt_f0_pt2 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_NonPrompt_f0_pt4.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_NonPrompt_f0_pt4  Ds_PbPb_MC_NonPrompt_f0_pt4 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_NonPrompt_f0_pt6.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_NonPrompt_f0_pt6  Ds_PbPb_MC_NonPrompt_f0_pt6 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_NonPrompt_f0_pt10.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_NonPrompt_f0_pt10  Ds_PbPb_MC_NonPrompt_f0_pt10 0
../submit_PBS_job_mutltifiles.sh  input_list/Ds_PbPb_MC_NonPrompt_f0_pt19.lis  1  10  /scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/offPbPb_MC/Ds_PbPb_MC_NonPrompt_f0_pt19  Ds_PbPb_MC_NonPrompt_f0_pt19 0



