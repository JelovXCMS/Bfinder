#!/bin/sh

cmsenv
crabInit
ls --color=never crab_projects/ >crabjob.lis


INFILELIST=crabjob.lis
echo $INFILELIST


while read line
do
crab_project=$line
echo $crab_project
#echo $crab_project >./status/${crab_project}.log
crab resubmit crab_projects/${crab_project}

done<$INFILELIST

