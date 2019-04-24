#!/bin/sh


for mbN in {1..20}
do

echo ${mbN}

cat >crab_pp_data_MB${mbN}.py <<EOF

from CRABClient.UserUtilities import config, getUsernameFromSiteDB
config = config()

config.General.requestName = 'Dfiner_Data_pp_Ds_phikkpi_MB${mbN}_noAlphaCut'
config.General.workArea = 'crab_projects'
config.General.transferOutputs = True
config.General.transferLogs = False

config.JobType.pluginName = 'Analysis'
config.JobType.psetName = '../finder_pp_75X_cfg.py'
#config.JobType.maxMemoryMB = 3500  ## avoid Memory issue


config.Data.inputDataset = '/MinimumBias${mbN}/Run2015E-PromptReco-v1/AOD'
config.Data.inputDBS ='global'
config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 1  ## set 4 will lead to memory issue
config.Data.outLFNDirBase = '/store/group/hi/%s/Dsfinder_phikkpi_180305/pp_data_noAlphaCut/' % (getUsernameFromSiteDB())
#config.Data.publication = True
config.Data.outputDatasetTag = 'Dfinder_Data_pp_Ds_phikkpi_MB${mbN}_noAlphaCut'

config.Data.lumiMask = 'https://cms-service-dqm.web.cern.ch/cms-service-dqm/CAF/certification/Collisions15/5TeV/Cert_262081-262328_5TeV_PromptReco_Collisions15_25ns_JSON.txt'

#config.JobType.inputFiles=['JPcalib_MC75X_ppqcd50.db']
#config.JobType.inputFiles=['fout_qcd.root','fout_bjt.root']

config.Site.storageSite = 'T2_US_Purdue'  # or T2_CH_CERN

#config.section_("Debug")
#config.Debug.extraJDL = ['+CMS_ALLOW_OVERFLOW=False']

EOF

#crab submit crab_pp_data_MB${mbN}.py

done 
