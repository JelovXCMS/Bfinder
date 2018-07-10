#!/bin/bash


	PNPArr=(Prmt NonPr)
	pthatArr=(0 0 0 2 4 9)
	DspTArr=(0 2 4 6 10 19)

	Channel=PhiPi

for idx in {0..5}
do

source ./Gen_crab_pp.sh Prmt ${Channel} ${pthatArr[${idx}]} ${DspTArr[${idx}]} pp
source ./Gen_crab_pp.sh NonPr ${Channel} ${pthatArr[${idx}]} ${DspTArr[${idx}]} pp

done

