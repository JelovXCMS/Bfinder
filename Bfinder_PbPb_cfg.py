import FWCore.ParameterSet.Config as cms
import FWCore.ParameterSet.VarParsing as VarParsing
ivars = VarParsing.VarParsing('analysis')
#ivars.inputFiles='root://eoscms//eos/cms/store/user/twang/HIBmeson_20131220/test_20140106/JpsiKp/PyquenMix_embedHIJING_Bp2JpsiKp_5TeV_102_2_VpA.root'
#ivars.inputFiles='file:/afs/cern.ch/work/t/twang/MITHIG/GenHIBmeson_20131220/BoostGen5GeVB_20140214/subGENSIM_20140219/subBu/step4/HIJINGemb_BdJpsiKstar_TuneZ2star_5TeV_cff_step4_RAW2DIGI_L1Reco_RECO.root'
#ivars.inputFiles='file:/afs/cern.ch/work/t/twang/MITHIG/GenHIBmeson_20131220/BoostGen5GeVB_20140214/localRun/RunMore/PyquenMix_embedHIJING_Bp2JpsiKp_Bpt5_5TeV_boostedMC.root'
#ivars.inputFiles='file:/mnt/hadoop/cms/store/user/twang/Hijing_PPb502_MinimumBias/PyquenMix_STARTHI53_V27_HIJINGembed_pPb_step4_RAW2DIGI_L1Reco_RECO_Bpt5_BuJpsiK_20140225/5dc89fb1319c58a400229c5d020a3799/HIJINGemb_BuJpsiK_TuneZ2star_5TeV_cff_step4_RAW2DIGI_L1Reco_RECO_92_1_Yd0.root'
#ivars.inputFiles='file:/mnt/hadoop/cms/store/himc/HiWinter13/PYTHIA6_inclBtoPsiMuMu_5TeV02/GEN-SIM-RECO/pa_STARTHI53_V27-v1/20000/F66E8E9B-AD56-E311-9214-848F69FD3D0D.root'
#ivars.inputFiles='file:/mnt/hadoop/cms/store/user/tawei/Data_samples/HIRun2013/PAMuon/RECO/PromptReco-v1/000/210/676/00000/38291323-E567-E211-8DD9-5404A63886C5.root'
#ivars.inputFiles='file:/mnt/hadoop/cms/store/user/tawei/MC_samples/hckim-HIJINGemb_inclBtoPsiMuMu_5TeV_boost_FEVTDEBUGHLT_v7All/HIJINGemb_inclBtoPsiMuMu_5TeV_boost_RECO_STARTHI53_V27_evt600_3446_1_4Qm.root'
#ivars.inputFiles='file:/mnt/hadoop/cms/store/user/tawei/Data_samples/HIRun2011/HIDiMuon/RECO/25Oct2012-v1/00001/6AEAB3A5-1A21-E211-A508-D4AE5264CC75.root'
#ivars.inputFiles='file:/mnt/hadoop/cms/store/user/tawei/Data_samples/HIRun2011/HIHighPt/RECO/14Mar2014-v2/00000/06B96D13-E0B8-E311-BFD5-FA163ED7EAFC.root'
#ivars.inputFiles='file:/net/hisrv0001/home/tawei/tawei/Data_samples/HIRun2011/HIDiMuon/RAW/v1/000/183/013/RECO_02A69E73-C01F-E111-A008-00237DDC5AF6.root'
#ivars.inputFiles='file:/net/hisrv0001/home/tawei/tawei/Data_samples/HIRun2011/HIDiMuon/USER/L2DoubleMu3Skim_v10_38dff9fa051006d6e895e3c1df676d76-v1/40000/RECO_02F09DEB-FACF-E411-9976-7845C4FB82F2.root'
#ivars.inputFiles='file:/net/hisrv0001/home/tawei/twang/HIDiMuon/RECO_HIDiMuon_L2DoubleMu3Skim_v10_JpsiFilter_v1_20150327/cf203613c3d0bfa79df606745a236cc7/reco_94_1_fEZ.root'
#ivars.inputFiles='file:/mnt/hadoop/cms/store/user/twang/Hydjet1p8_TuneDrum_Quenched_MinBias_2760GeV/Pyquen_STARTHI53_LV1_Unquenched_PbPb_2760GeV_RAW2DIGI_RECO_BuKp_20150122_50kevt/49063ee7960b4ac6745251f7107935ce/RECO_100_2_Zkn.root'
ivars.inputFiles='file:/mnt/hadoop/cms/store/user/twang/Hydjet1p8_TuneDrum_Quenched_MinBias_2760GeV/Pyquen_D0tokaonpion_Pt0_D0pt1p0_TuneZ2_Unquenched_2760GeV_step3_20150612_250kevt/49063ee7960b4ac6745251f7107935ce/RECO_99_1_JJv.root'
#ivars.inputFiles='file:/mnt/hadoop/cms/store/user/tawei/Data_samples/HIRun2011/HIMinBiasUPC/RECO/14Mar2014-v2/00000/0018A8E7-F9AF-E311-ADAB-FA163E565820.root'
#ivars.inputFiles='root://xrootd.unl.edu//store/himc/HiFall13DR53X/Pyquen_D0tokaonpion_D0pt1p0_Pthat50_TuneZ2_Unquenched_2760GeV/GEN-SIM-RECO/NoPileUp_STARTHI53_LV1-v1/40000/00179174-C72F-E511-A069-00266CFFC51C.root'

ivars.outputFile='Bfinder_PbPb_all.root'
# get and parse the command line arguments
ivars.parseArguments()

### Add Calo muons
AddCaloMuon = False

### Run on MC?
runOnMC = True
#runOnMC = False

### Switching between "hiGenParticles"(pPb MC) and "genParticles" (pp MC)
HIFormat = True
#HIFormat = False

### Include SIM tracks for matching?
UseGenPlusSim = False

### Using pat muon with trigger or not
UsepatMuonsWithTrigger = True

process = cms.Process("demo")
process.load("FWCore.MessageService.MessageLogger_cfi")
### Set TransientTrackBuilder 
process.load("TrackingTools/TransientTrack/TransientTrackBuilder_cfi")
### Set Geometry/GlobalTag/BField
process.load("Configuration.StandardSequences.FrontierConditions_GlobalTag_cff")
process.load('Configuration.StandardSequences.GeometryRecoDB_cff')
process.load("Configuration.StandardSequences.Reconstruction_cff")
#process.load('Configuration.StandardSequences.ReconstructionHeavyIons_cff')
process.load("Configuration.StandardSequences.MagneticField_cff")
#process.load("Configuration.Geometry.GeometryIdeal_cff")
#process.load("Configuration.StandardSequences.MagneticField_AutoFromDBCurrent_cff")

### output module
process.out = cms.OutputModule("PoolOutputModule",
    fileName = cms.untracked.string('test.root'),
    SelectEvents   = cms.untracked.PSet( SelectEvents = cms.vstring('p') ),
    outputCommands = cms.untracked.vstring('drop *',
    )
)

### Set maxEvents
process.maxEvents = cms.untracked.PSet(input = cms.untracked.int32(2))

### Set global tag
if runOnMC:
    #process.GlobalTag.globaltag = cms.string( 'START53_V7F::All' )  #Summer12_DR53X
    #process.GlobalTag.globaltag = cms.string( 'STARTHI53_V26::All' ) 
    #process.GlobalTag.globaltag = cms.string( 'START52_V5::All' ) 
    #process.GlobalTag.globaltag = cms.string( 'START52_V7::All' )
    #process.GlobalTag.globaltag = cms.string( 'START53_V17::All' )
    process.GlobalTag.globaltag = cms.string( 'STARTHI53_LV1::All' ) ##PbPb
#    process.GlobalTag.globaltag = cms.string( 'START53_V27::All' ) ##pPb
else:
    #process.GlobalTag.globaltag = cms.string( 'FT_53_V6_AN2::All' ) #for 2012AB
    #process.GlobalTag.globaltag = cms.string( 'FT_53_V10_AN2::All' )#for 2012C
    #process.GlobalTag.globaltag = cms.string( 'FT_P_V42_AN2::All' ) #for 2012D
    process.GlobalTag.globaltag = cms.string( 'GR_R_53_LV6::All' ) ##PbPb
#    process.GlobalTag.globaltag = cms.string( 'GR_P_V43D::All' ) ##pp
#    process.GlobalTag.globaltag = cms.string( 'GR_P_V43F::All' ) ##pPb: /PAMuon/HIRun2013-28Sep2013-v1/RECO
#    process.GlobalTag.globaltag = cms.string( 'GR_P_V43D::All' ) ##pPb: /PAMuon/HIRun2013-PromptReco-v1/RECO

### PoolSource will be ignored when running crab
process.source = cms.Source("PoolSource",
    skipEvents=cms.untracked.uint32(0),
	fileNames = cms.untracked.vstring(ivars.inputFiles)
)
### Using JSON file
#if not runOnMC:
#    #import PhysicsTools.PythonAnalysis.LumiList as LumiList
#    import FWCore.PythonUtilities.LumiList as LumiList
#    process.source.lumisToProcess = LumiList.LumiList(filename =
#    '/net/hisrv0001/home/tawei/HeavyFlavor_20131030/Bfinder/CMSSW_5_3_20/src/Bfinder/JSON/Cert_181530-183126_HI7TeV_25Oct2012ReReco_Collisions11_JSON_MuonPhys_HF_manualPatch.txt'
#    ).getVLuminosityBlockRange()

### Set basic filter
process.primaryVertexFilter = cms.EDFilter("GoodVertexFilter",
	#vertexCollection = cms.InputTag('offlinePrimaryVertices'),
	#vertexCollection = cms.InputTag('offlinePrimaryVerticesWithBS'),
	vertexCollection = cms.InputTag('hiSelectedVertex'),
	minimumNDOF = cms.uint32(4) ,
	maxAbsZ = cms.double(24),	
	maxd0 = cms.double(2)	
)

process.noscraping = cms.EDFilter("FilterOutScraping",
    applyfilter = cms.untracked.bool(True),
	debugOn = cms.untracked.bool(False),
	numtrack = cms.untracked.uint32(10),
	thresh = cms.untracked.double(0.25)
)

# Common offline event selection
process.load("HeavyIonsAnalysis.Configuration.collisionEventSelection_cff")
process.PAprimaryVertexFilter.src = cms.InputTag("hiSelectedVertex")

#process.filter = cms.Sequence(process.primaryVertexFilter+process.noscraping)
#process.filter = cms.Sequence(process.noscraping)
#process.filter = cms.Sequence(process.PAcollisionEventSelection)
process.filter = cms.Sequence(process.collisionEventSelection)

##Producing Gen list with SIM particles
process.genParticlePlusGEANT = cms.EDProducer("GenPlusSimParticleProducer",
        src           = cms.InputTag("g4SimHits"), # use "famosSimHits" for FAMOS
        setStatus     = cms.int32(8),             # set status = 8 for GEANT GPs
        filter        = cms.vstring("pt > 0.0"),  # just for testing (optional)
	    genParticles   = cms.InputTag("genParticles") # original genParticle list
)

### Setup Pat
### Ref: https://twiki.cern.ch/twiki/bin/view/CMSPublic/SWGuidePATMCMatching
process.load("PhysicsTools.PatAlgos.patSequences_cff")
process.patMuons.embedCaloMETMuonCorrs = cms.bool(False)
process.patMuons.embedTcMETMuonCorrs = cms.bool(False)
from PhysicsTools.PatAlgos.tools.helpers import *
#removeIfInSequence(process, 'patHPSPFTauDiscriminationUpdate', "patDefaultSequence")
removeIfInSequence(process, 'patHPSPFTauDiscriminationUpdate', "patCandidates")
process.patMuons.pvSrc = cms.InputTag("hiSelectedVertex")

### keep only Pat:: part 
#from PhysicsTools.PatAlgos.patEventContent_cff import *
if HIFormat:
	process.muonMatch.matched = cms.InputTag("hiGenParticles")
	process.genParticlePlusGEANT.genParticles = cms.InputTag("hiGenParticles")

##Using GEN plus SIM list for matching
if UseGenPlusSim:
	process.muonMatch.matched = cms.InputTag("genParticlePlusGEANT")

#process.allLayer1Jets.addJetCorrFactors = False
from PhysicsTools.PatAlgos.tools.trackTools import *
#process.load( 'PhysicsTools.PatAlgos.mcMatchLayer0.muonMatch_cff' )
if runOnMC:
    makeTrackCandidates(process,              # patAODTrackCands
        label='TrackCands',                   # output collection will be 'allLayer0TrackCands', 'allLayer1TrackCands', 'selectedLayer1TrackCands'
#        tracks=cms.InputTag('generalTracks'), # input track collection
        tracks=cms.InputTag('hiGeneralTracks'), # input track collection
    	particleType='pi+',                   # particle type (for assigning a mass)
        preselection='pt > 0.3',              # preselection cut on candidates. Only methods of 'reco::Candidate' are available
        selection='pt > 0.3',                 # Selection on PAT Layer 1 objects ('selectedLayer1TrackCands')
    	isolation={},                         # Isolations to use ('source':deltaR; set to {} for None)
       	isoDeposits=[],
        mcAs='muon'                           # Replicate MC match as the one used for Muons
    );                                        # you can specify more than one collection for this
    ### MC+mcAs+Match/pat_label options
    #process.patTrackCandsMCMatch.matched = cms.InputTag("hiGenParticles")
    process.patTrackCandsMCMatch.resolveByMatchQuality = cms.bool(True)
    process.patTrackCandsMCMatch.resolveAmbiguities = cms.bool(True)
    process.patTrackCandsMCMatch.checkCharge = cms.bool(True)
    process.patTrackCandsMCMatch.maxDPtRel = cms.double(0.5)
    process.patTrackCandsMCMatch.maxDeltaR = cms.double(0.7)
    process.patTrackCandsMCMatch.mcPdgId = cms.vint32(111, 211, 311, 321)
    process.patTrackCandsMCMatch.mcStatus = cms.vint32(1)
    l1cands = getattr(process, 'patTrackCands')
    l1cands.addGenMatch = True

else :
    makeTrackCandidates(process,              # patAODTrackCands
        label='TrackCands',                   # output collection will be 'allLayer0TrackCands', 'allLayer1TrackCands', 'selectedLayer1TrackCands'
#        tracks=cms.InputTag('generalTracks'), # input track collection
        tracks=cms.InputTag('hiGeneralTracks'), # input track collection
        particleType='pi+',                   # particle type (for assigning a mass)
        preselection='pt > 0.3',              # preselection cut on candidates. Only methods of 'reco::Candidate' are available
        selection='pt > 0.3',                 # Selection on PAT Layer 1 objects ('selectedLayer1TrackCands')
        isolation={},                         # Isolations to use ('source':deltaR; set to {} for None)
        isoDeposits=[],
        mcAs=None                             # Replicate MC match as the one used for Muons
    );                                        # you can specify more than one collection for this
    l1cands = getattr(process, 'patTrackCands')
    l1cands.addGenMatch = False
from PhysicsTools.PatAlgos.tools.coreTools import *
removeAllPATObjectsBut(process, ['Muons'])
#removeSpecificPATObjects(process, ['Jets'])

if not runOnMC :
	removeMCMatching(process, ['All'] )

process.load("MuonAnalysis.MuonAssociators.patMuonsWithTrigger_cff")
from MuonAnalysis.MuonAssociators.patMuonsWithTrigger_cff import *
if runOnMC:
	addMCinfo(process)
	process.muonMatch.resolveByMatchQuality = True
changeTriggerProcessName(process, "HLT")
switchOffAmbiguityResolution(process) # Switch off ambiguity resolution: allow multiple reco muons to match to the same trigger muon
###Criterias from Hyunchul's 
process.muonL1Info.maxDeltaR = 0.3
process.muonL1Info.fallbackToME1 = True
process.muonMatchHLTL1.maxDeltaR = 0.3
process.muonMatchHLTL1.fallbackToME1 = True
process.muonMatchHLTL2.maxDeltaR = 0.3
process.muonMatchHLTL2.maxDPtRel = 10.0
process.muonMatchHLTL3.maxDeltaR = 0.1
process.muonMatchHLTL3.maxDPtRel = 10.0
process.muonMatchHLTCtfTrack.maxDeltaR = 0.1
process.muonMatchHLTCtfTrack.maxDPtRel = 10.0
process.muonMatchHLTTrackMu.maxDeltaR = 0.1
process.muonMatchHLTTrackMu.maxDPtRel = 10.0

# Merge muons, calomuons in a single collection for T&P
from RecoMuon.MuonIdentification.calomuons_cfi import calomuons;
process.mergedMuons = cms.EDProducer("CaloMuonMerger",                                                                                                                                                  
    muons     = cms.InputTag("muons"),
    mergeCaloMuons = cms.bool(True),  ### NEEDED TO RUN ON AOD
    caloMuons = cms.InputTag("calomuons"),
    minCaloCompatibility = cms.double(0.6),
    mergeTracks = cms.bool(False),
#    tracks = cms.InputTag("generalTracks"),
    tracks = cms.InputTag("hiGeneralTracks"),
)
if AddCaloMuon:
    #changeRecoMuonInput(process, "mergedMuons")#Add calo muon to the collection
    #process.patMuons.muonSource = cms.InputTag("mergedMuons")#Need to use the same collection as they are internally entengled
    #process.patMuons.embedCaloMETMuonCorrs = cms.bool(False)
    #process.patMuons.embedTcMETMuonCorrs   = cms.bool(False)

    #Or we change the muonMatch source of our patMuonsWithoutTrigger
    process.patMuonsWithoutTrigger.muonSource = cms.InputTag("mergedMuons")
    process.patMuonsWithoutTriggerMatch = PhysicsTools.PatAlgos.mcMatchLayer0.muonMatch_cfi.muonMatch.clone( src = cms.InputTag("mergedMuons"))
    if runOnMC:
        process.patMuonsWithTriggerSequence.replace(process.patMuonsWithoutTrigger, process.patMuonsWithoutTriggerMatch + process.patMuonsWithoutTrigger)
        process.patMuonsWithoutTrigger.genParticleMatch = 'patMuonsWithoutTriggerMatch'
    process.patDefaultSequence = cms.Sequence(process.mergedMuons*process.patDefaultSequence)

### Set Bfinder option
process.demo = cms.EDAnalyzer('Bfinder',
	Bchannel 		= cms.vint32(
		0,#RECONSTRUCTION: J/psi + K
		0,#RECONSTRUCTION: J/psi + Pi
		0,#RECONSTRUCTION: J/psi + Ks 
		0,#RECONSTRUCTION: J/psi + K* (K+, Pi-)
		0,#RECONSTRUCTION: J/psi + K* (K-, Pi+)
		0,#RECONSTRUCTION: J/psi + phi
		0,#RECONSTRUCTION: J/psi + pi pi <= psi', X(3872), Bs->J/psi f0
	),
    #MuonTriggerMatchingPath = cms.vstring("HLT_PAMu3_v*"),
    MuonTriggerMatchingPath = cms.vstring("HLT_HIL2DoubleMu3_v*"),
    #MuonTriggerMatchingPath = cms.vstring("HLT_PAMu3_v*", "HLT_PAMu7_v*", "HLT_PAMu12_v*"),
	HLTLabel        = cms.InputTag('TriggerResults::HLT'),
    GenLabel        = cms.InputTag('genParticles'),
	MuonLabel       = cms.InputTag('selectedPatMuons'),         #selectedPatMuons
	TrackLabel      = cms.InputTag('selectedPatTrackCands'),    #selectedPat
    PUInfoLabel     = cms.InputTag("addPileupInfo"),
    BSLabel     = cms.InputTag("offlineBeamSpot"),
    #PVLabel     = cms.InputTag("offlinePrimaryVerticesWithBS"),
    PVLabel     = cms.InputTag("hiSelectedVertex"),
    tkPtCut = cms.double(1.0),#before fit
    tkEtaCut = cms.double(999.0),#before fit
    jpsiPtCut = cms.double(3.0),#before fit
    bPtCut = cms.double(5.0),#before fit
    bEtaCut = cms.double(2.4),#before fit, not used currently
	VtxChiProbCut = cms.double(0.01),
    RunOnMC = cms.bool(False),
    doTkPreCut = cms.bool(False),
    doMuPreCut = cms.bool(True)
)
### Set Dfinder option
process.Dfinder = cms.EDAnalyzer('Dfinder',
	Dchannel 		= cms.vint32(
		0,#RECONSTRUCTION: K+pi-
		0,#RECONSTRUCTION: K-pi+
		0,#RECONSTRUCTION: K-pi+pi+
		0,#RECONSTRUCTION: K+pi-pi-
		0,#RECONSTRUCTION: K-pi-pi+pi+
		0,#RECONSTRUCTION: K+pi+pi-pi-
		0,#RECONSTRUCTION: K+K-(Phi)pi+
		0,#RECONSTRUCTION: K+K-(Phi)pi-
	),
	HLTLabel        = cms.InputTag('TriggerResults::HLT'),
    GenLabel        = cms.InputTag('genParticles'),
	TrackLabel      = cms.InputTag('selectedPatTrackCands'),    #selectedPat
    PUInfoLabel     = cms.InputTag("addPileupInfo"),
    BSLabel     = cms.InputTag("offlineBeamSpot"),
    #PVLabel     = cms.InputTag("offlinePrimaryVerticesWithBS"),
    PVLabel     = cms.InputTag("hiSelectedVertex"),
    tkPtCut = cms.double(1.),#before fit
    tkEtaCut = cms.double(1.1),#before fit
    dPtCut = cms.double(3.0),#before fit
    dEtaCut = cms.double(1.5),#before fit, not used currently
	VtxChiProbCut = cms.double(0.05),
    svpvDistanceCut = cms.double(2.0),
    MaxDocaCut = cms.double(999.),
    alphaCut = cms.double(999.),
    RunOnMC = cms.bool(False),
    doTkPreCut = cms.bool(True),
)
if runOnMC:
    process.demo.RunOnMC = cms.bool(True)
    process.Dfinder.RunOnMC = cms.bool(True)
if HIFormat:
	process.demo.GenLabel = cms.InputTag('hiGenParticles')
	process.Dfinder.GenLabel = cms.InputTag('hiGenParticles')
if UseGenPlusSim:
	process.demo.GenLabel = cms.InputTag('genParticlePlusGEANT')
	process.Dfinder.GenLabel = cms.InputTag('genParticlePlusGEANT')
if UsepatMuonsWithTrigger:
	process.demo.MuonLabel = cms.InputTag('patMuonsWithTrigger')	

### SetUp HLT info
#process.load('Bfinder.HiHLTAlgos.hltanalysis_cff')
#process.load('Bfinder.EventAnalysis.hltanalysis_cff')
process.load('HeavyIonsAnalysis.EventAnalysis.hltanalysis_cff')
process.hltanalysis.dummyBranches = cms.untracked.vstring()
process.hltanalysis.OfflinePrimaryVertices0 = cms.InputTag("hiSelectedVertex")
#if HIFormat:
	#process.hltanalysis.mctruth = cms.InputTag("hiGenParticles")# Will cause segmentation violation
	#process.hltanalysis.HLTProcessName = cms.string("HISIGNAL")
	#process.hltanalysis.hltresults = cms.InputTag("TriggerResults","","HISIGNAL")
	#process.hltanalysis.l1GtObjectMapRecord = cms.InputTag("hltL1GtObjectMap::HISIGNAL")
process.hltAna = cms.Path(process.filter*process.hltanalysis)

### Set output
process.TFileService = cms.Service("TFileService",
	fileName = cms.string(ivars.outputFile)
)

if runOnMC and UseGenPlusSim:
	process.patDefaultSequence *= process.genParticlePlusGEANT
if UsepatMuonsWithTrigger:
	process.patDefaultSequence *= process.patMuonsWithTriggerSequence

process.p = cms.Path(	
#    process.patDefaultSequence*process.demo
    process.filter*process.patDefaultSequence*process.demo*process.Dfinder
)
#process.e = cms.EndPath(process.out)
process.schedule = cms.Schedule(
	process.p
	,process.hltAna
#    ,process.e
)
