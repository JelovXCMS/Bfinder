#!/bin/sh

if [ "$#" -ne 5 ]; then
	echo "Wrong number of parameters. 5 expected, passed $#"
	exit
fi

INFILELIST=$1
isPbPb=$2  # need to be set in loop.C
FilePerJob=$3
OUTPUTDIR=$4
JobIndex=$5
TotalFiles=$(wc -l < "$INFILELIST")
Njobs=$((TotalFiles/FilePerJob+1))

echo "INFILELIST: $INFILELIST"
echo "Total number of file: $TotalFiles, FilePerJob: $FilePerJob"
echo "$Njobs jobs will be submitted"

rm loop.exe
g++ loop.C $(root-config --cflags --libs) -Wall -O2 -o loop.exe
#rm event_trigger_selection_histogram_cen30_100_forPBS.exe
#g++ event_trigger_selection_histogram_cen30_100_forPBS.C $(root-config --cflags --libs) -Wall -O2 -o event_trigger_selection_histogram_cen30_100_forPBS.exe
#rm Dmass_fit_PbPb_2gaus_pol4_cuteffi_scan_forPBS.exe
#g++ Dmass_fit_PbPb_2gaus_pol4_cuteffi_scan_forPBS.C $(root-config --cflags --libs) -Wall -O2 -o Dmass_fit_PbPb_2gaus_pol4_cuteffi_scan_forPBS.exe
#rm fit_pp_2gaus_pol2_cuteffi_scan_forPBS.exe
#g++ fit_pp_2gaus_pol2_cuteffi_scan_forPBS.C $(root-config --cflags --libs) -Wall -O2 -o fit_pp_2gaus_pol2_cuteffi_scan_forPBS.exe
#rm event_trigger_selection_histogram.exe
#g++ event_trigger_selection_histogram.C $(root-config --cflags --libs) -Wall -O2 -o event_trigger_selection_histogram.exe
##rm  fillpkpi.exe
##g++ fillpkpi.C $(root-config --cflags --libs) -Wall -O2 -o fillpkpi.exe
if [ ! -d $OUTPUTDIR ]; then
    mkdir $OUTPUTDIR
fi

for ((count=1; count <= $Njobs; count++))
do
	echo "Job $count"

	#decide start file and end file
	STARTFILE=$(((count-1)*FilePerJob))
	ENDFILE=$((count*FilePerJob))
	if [ $ENDFILE -gt $TotalFiles ]; then
		ENDFILE=$TotalFiles
	fi
	echo "Files from $STARTFILE to $ENDFILE"

# make the PBS file
cat > PBS_${STARTFILE}to${ENDFILE}_${JobIndex}.sh <<EOF
#!/bin/sh

#PBS -l nodes=1,walltime=04:00:00,mem=2400MB
#PBS -N Dntuple_${STARTFILE}to${ENDFILE}_${JobIndex}
#PBS -o /home/xiao147/private/newchannel_lambda_CtoproduceDntuple/CMSSW_7_5_8_patch3/src/Bfinder/Bfinder/Dntuple/PBS_${STARTFILE}to${ENDFILE}_${JobIndex}.log
#PBS -e /home/xiao147/private/newchannel_lambda_CtoproduceDntuple/CMSSW_7_5_8_patch3/src/Bfinder/Bfinder/Dntuple/PBS_${STARTFILE}to${ENDFILE}_${JobIndex}.err
#PBS -r n
#PBS -V
#PBS -q standby

cd /home/xiao147/private/newchannel_lambda_CtoproduceDntuple/CMSSW_7_5_8_patch3/src/Bfinder/Bfinder/Dntuple

./exec_condorfilelist.sh $INFILELIST $isPbPb $STARTFILE $ENDFILE $OUTPUTDIR
EOF

	chmod 744 PBS_${STARTFILE}to${ENDFILE}_${JobIndex}.sh

	qsub PBS_${STARTFILE}to${ENDFILE}_${JobIndex}.sh
	echo "PBS_${STARTFILE}to${ENDFILE}_${JobIndex}.sh submitted"

done

