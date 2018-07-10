#!/bin/sh


for mbN in {1..11}
do

echo ${mbN}

cat >crab_PbPb_data_MB${mbN}_TrkOnly.py <<EOF

from CRABClient.UserUtilities import config, getUsernameFromSiteDB
config = config()

config.General.requestName = 'Data_PbPb_Ds_phikkpi_HiMB${mbN}_TrkOnly'
config.General.workArea = 'crab_projects'
config.General.transferOutputs = True
config.General.transferLogs = False

config.JobType.pluginName = 'Analysis'
config.JobType.psetName = '../finder_PbPb_75X_cfg.py'
#config.JobType.maxMemoryMB = 3500  ## avoid Memory issue


config.Data.inputDataset = '/HIMinimumBias${mbN}/HIRun2015-PromptReco-v1/AOD'
config.Data.inputDBS ='global'
config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 1  ## 2 will give about 3700 jobs, tested work
config.Data.outLFNDirBase = '/store/user/%s/Dsfinder_phikkpi_180305/PbPb_data/MB_TrkOnly/' % (getUsernameFromSiteDB())
#config.Data.publication = True
config.Data.outputDatasetTag = 'Data_PbPb_Ds_phikkpi_HiMB${mbN}_TrkOnly'

config.Data.lumiMask = 'https://cms-service-dqm.web.cern.ch/cms-service-dqm/CAF/certification/Collisions15/HI/Cert_263685-263757_PromptReco_HICollisions15_TrackerOnly_JSON.txt'

config.Site.storageSite = 'T2_US_Purdue'  # or T2_CH_CERN

#config.section_("Debug")
#config.Debug.extraJDL = ['+CMS_ALLOW_OVERFLOW=False']

EOF

done 
