#!/bin/sh


for mbN in {5..7}
do

echo ${mbN}

cat >crab_PbPb_data_MB${mbN}.py <<EOF

from CRABClient.UserUtilities import config, getUsernameFromSiteDB
config = config()

config.General.requestName = 'Data_PbPb_Ds_phikkpi_HiMB${mbN}'
config.General.workArea = 'crab_projects'
config.General.transferOutputs = True
config.General.transferLogs = False

config.JobType.pluginName = 'Analysis'
config.JobType.psetName = '../finder_PbPb_75X_cfg.py'

config.Data.inputDataset = '/HIMinimumBias${mbN}/HIRun2015-PromptReco-v1/AOD'
config.Data.inputDBS ='global'
config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 2
config.Data.outLFNDirBase = '/store/user/%s/Ds_phikkpi_18220/PbPb_data/cent30100/' % (getUsernameFromSiteDB())
#config.Data.publication = True
config.Data.outputDatasetTag = 'Data_PbPb_Ds_phikkpi_HiMB${mbN}'

config.Data.lumiMask = 'https://cms-service-dqm.web.cern.ch/cms-service-dqm/CAF/certification/Collisions15/HI/Cert_262548-263757_PromptReco_HICollisions15_JSON_v2.txt'

config.Site.storageSite = 'T2_US_Purdue'  # or T2_CH_CERN

config.section_("Debug")
config.Debug.extraJDL = ['+CMS_ALLOW_OVERFLOW=False']

EOF

done 
