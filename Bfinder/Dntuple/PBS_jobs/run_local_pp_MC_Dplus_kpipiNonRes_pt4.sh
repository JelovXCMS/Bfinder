#!/bin/sh

INFILELIST=input_list/Ds_pp_MC_Dplus_kpipiNonRes_pt4.lis
OUTPUTDIR=/scratch/halstead/p/peng43/Ds_phikkpi/Dntuple/pp_MC/Dplus_kpipiNonRes_pt4
TotalFiles=$(wc -l < "$INFILELIST")
StartFiles=0
isPbPb=0
isReal=0

echo $TotalFiles

eval `scramv1 runtime -sh`
rm ../loop.exe
g++ ../loop.C $(root-config --cflags --libs) -Wall -O2 -o ../loop.exe


cd /home/peng43/work/Project/Ds_PbPb/CMSSW/DsFinder/working_DsFinder/CMSSW_7_5_8_patch3/src/Bfinder/Bfinder/Dntuple

## ./exec_condorfilelist.sh		inputFilelist		isPbPb		startfile		endfile		outputfolder 	isReal	 
./exec_condorfilelist.sh $INFILELIST $isPbPb $StartFiles $TotalFiles $OUTPUTDIR $isReal
