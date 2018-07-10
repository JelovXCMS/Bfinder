#!/bin/sh

INFILELIST=$1
echo $INFILELIST


while read line
do
crab_project=$line
echo $crab_project
#echo $crab_project >./status/${crab_project}.log
crab submit ${crab_project}

done<$INFILELIST

