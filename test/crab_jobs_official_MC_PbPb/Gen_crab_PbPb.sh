#!/bin/sh

	PNP=$1
	Channel=$2
	pthat=$3
	ptname=$4
	pPb=$5

	Date=`date '+%m%d%H'`

echo Date = ${Date}
echo filename = crab_${pPb}_MC_${PNP}_${Channel}_DsPT${ptname}_${Date}.py
echo dataset is empty, need to fill by hand!!!
cat > crab_${pPb}_MC_${PNP}_${Channel}_DsPT${ptname}_${Date}.py <<EOF

from CRABClient.UserUtilities import config, getUsernameFromSiteDB
config = config()

config.General.requestName = 'Dfinder_MC_${pPb}_Ds_${PNP}_${Channel}_pT${ptname}_${Date}'
config.General.workArea = 'crab_projects'
config.General.transferOutputs = True
config.General.transferLogs = False

config.JobType.pluginName = 'Analysis'
config.JobType.psetName = '../finder_PbPb_75X_MC_cfg.py'
#config.JobType.maxMemoryMB = 3500  ## some job failed in deafult 2000 (MB)


config.Data.inputDataset = '/${PNP}Ds-${Channel}_pThat-${pthat}_DsPT-${ptname}_HydjetCymbMB_5p02_Pythia8/HINPbPbWinter16DR-75X_mcRun2_HeavyIon_v14-v1/AODSIM' #need to be filled by hand
config.Data.inputDBS ='global'
config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 2
config.Data.outLFNDirBase = '/store/group/hi/%s/Dsfinder_officialMC_test/PbPb_MC/' % (getUsernameFromSiteDB())
#config.Data.publication = True
config.Data.outputDatasetTag = 'Dfinder_MC_${pPb}_Ds_${PNP}_${Channel}_pT${ptname}_${Date}'
#config.JobType.outputFiles = ['Dsfinder_pp.root']


#config.Data.lumiMask = 'https://cms-service-dqm.web.cern.ch/cms-service-dqm/CAF/certification/Collisions15/5TeV/Cert_262081-262328_5TeV_PromptReco_Collisions15_25ns_JSON.txt'

#config.JobType.inputFiles=['JPcalib_MC75X_ppqcd50.db']
#config.JobType.inputFiles=['fout_qcd.root','fout_bjt.root']
#config.Site.whitelist = ['T2_US_*']
#config.Site.blacklist = ['T2_US_Florida']
config.Site.storageSite = 'T2_US_Purdue'  # or T2_CH_CERN

#config.section_("Debug")
#config.Debug.extraJDL = ['+CMS_ALLOW_OVERFLOW=False']

EOF


crab submit  crab_${pPb}_MC_${PNP}_${Channel}_DsPT${ptname}_${Date}.py
