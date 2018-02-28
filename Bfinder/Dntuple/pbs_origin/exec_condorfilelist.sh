#!/bin/sh

echo `hostname`
echo `date`
export SCRAM_ARCH=slc6_amd64_gcc491
source /apps/osg/cmssoft/cmsset_default.sh
#export X509_USER_PROXY=/home/sun229/.myproxy
export X509_USER_PROXY=/home/xiao147/myproxy
DIR="Bfinder/Bfinder/Dntuple"
## I change the following line to the one that follows this line.
#cd /home/sun229/DmesonAna/Run2015Ana/CMSSW_7_5_8_patch2/src 
cd /home/xiao147/private/newchannel_lambda_CtoproduceDntuple/CMSSW_7_5_8_patch3/src
eval `scramv1 runtime -sh`
cd $DIR

INFILELIST=$1
isPbPb=$2
STARTFILE=$3
ENDFILE=$4
OUTPUTDIR=$5

echo "INFILELIST: $INFILELIST"
echo "STARTFILE: $STARTFILE, ENDFILE: $ENDFILE"

if [ ! -d $OUTPUTDIR ]; then
	mkdir $OUTPUTDIR
fi

fileCounter=-1

while read line
do
	fileCounter=$((fileCounter+1))
	if [ $fileCounter -lt $STARTFILE ] || [ $fileCounter -ge $ENDFILE ]; then
		continue
	fi
	echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
	echo "<<<<<<<<<<<<< NEW INPUTFILE >>>>>>>>>>>>>>>>>"
	echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
	echo "fileCounter: $fileCounter, inputfile: $line"

	Inputfile=$line
	Outputfile="$OUTPUTDIR/Dntuple_$(basename ${Inputfile})_${fileCounter}.root"
	echo "Outputfile: $Outputfile"
        ./loop.exe $Inputfile $Outputfile
        #./event_trigger_selection_histogram_cen30_100_forPBS.exe $Inputfile $Outputfile
        #./Dmass_fit_PbPb_2gaus_pol4_cuteffi_scan_forPBS.exe $Inputfile $Outputfile
        #./fit_pp_2gaus_pol2_cuteffi_scan_forPBS.exe $Inputfile $Outputfile
       # ./event_trigger_selection_histogram.exe $Inputfile $Outputfile
        ##./fillpkpi.exe $Inputfile $Outputfile	
	echo "<<<<<<<<<<<<< DONE!!!!!!! <<<<<<<<<<<<<<<<<"
done<$INFILELIST
echo `date`

