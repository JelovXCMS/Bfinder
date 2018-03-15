#!/bin/sh


for mbN in {2..4}
do

echo ${mbN}
	for parti in {1..4}
	do
	echo part ${parti}

cat >crab_PbPb_data_MB${mbN}_GJpart${parti}.py <<EOF

from CRABClient.UserUtilities import config, getUsernameFromSiteDB
config = config()

config.General.requestName = 'Data_PbPb_Ds_phikkpi_HiMB${mbN}_GJpart${parti}'
config.General.workArea = 'crab_projects'
config.General.transferOutputs = True
config.General.transferLogs = False

config.JobType.pluginName = 'Analysis'
config.JobType.psetName = '../finder_PbPb_75X_cfg.py'
config.JobType.maxMemoryMB = 3500  ## avoid Memory issue
config.JobType.maxJobRuntimeMin = 1800  ## increase wall time from default 1315 to 1800mins (30hr)


config.Data.inputDataset = '/HIMinimumBias${mbN}/HIRun2015-PromptReco-v1/AOD'
config.Data.inputDBS ='global'
config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 1  ## not tested 2 for GJ
config.Data.outLFNDirBase = '/store/user/%s/Dsfinder_phikkpi_180305/PbPb_data/MB_GJ/' % (getUsernameFromSiteDB())
#config.Data.publication = True
config.Data.outputDatasetTag = 'Data_PbPb_Ds_phikkpi_HiMB${mbN}_GJpart${parti}'

config.Data.lumiMask = 'Cert_262548-263757_PromptReco_HICollisions15_JSON_v2_part${parti}.txt'

config.Site.storageSite = 'T2_US_Purdue'  # or T2_CH_CERN

config.section_("Debug")
config.Debug.extraJDL = ['+CMS_ALLOW_OVERFLOW=False']

EOF
	done
done 
