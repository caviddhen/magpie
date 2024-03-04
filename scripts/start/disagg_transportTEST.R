# |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
# |  authors, and contributors see CITATION.cff file. This file is part
# |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
# |  AGPL-3.0, you are granted additional permissions described in the
# |  MAgPIE License Exception, version 1.0 (see LICENSE file).
# |  Contact: magpie@pik-potsdam.de

# ----------------------------------------------------------
# description: Test rountine for disaggr transport
# position: 1
# ----------------------------------------------------------

## Load lucode2 and gms to use setScenario later
library(lucode2)
library(gms)

# Load #start_run(cfg) function which is needed to start MAgPIE runs
source("scripts/start_functions.R")

# Source default cfg. This loads the object "cfg" in R environment
source("config/default.cfg")

cfg$info$flag <- "2102Rural" #choose a meaningful flag.
# support function to create standardized title
.title <- function(...) return(paste(...,cfg$info$flag, sep="_"))

#crop rotation module on
cfg$gms$crop <- "penalty_apr22"

#disagg livst module off
cfg$gms$disagg_lvst <- "off"


#cellular residues module on 
cfg$gms$residues <- "flexcluster_jul23"

#sticky on 
cfg$gms$factor_costs <- "sticky_feb18"     

cfg$recalibrate <- FALSE     # def = "ifneeded"
cfg$recalibrate_landconversion_cost <- FALSE #def "ifneeded"

cfg$repositories <- append(list("https://rse.pik-potsdam.de/data/magpie/public"=NULL,
                                "./feedPatch"=NULL, "./tauPatch"=NULL), getOption("magpie_repos"))

cfg$input <- c(regional    = "rev4.96_h12_magpie.tgz",
                cellular    = "rev4.96_h12_fd712c0b_cellularmagpie_c200_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz",
               #cellular    = "rev4.96_h12_6bb49900_cellularmagpie_c400_MRI-ESM2-0-ssp245_lpjml-8e6c5eb1_clusterweight-dcc44a71.tgz",
               validation  = "rev4.96_h12_validation.tgz",
               additional  = "additional_data_rev4.47.tgz",
               calibration = "calibration_H12_sticky_feb18_glo_07Aug23.tgz",
               feedPatch =  "procPatch.tgz")
             #tauPatch = "tauPatchc400BF.tgz")

cfg$recalibrate_landconversion_cost <- FALSE #def "ifneeded"

#default with disagg livestock #############################################################################################################################################
cfg$title <- .title(paste0("Default"))
cfg$gms$disagg_lvst <- "foragebased_jul23"

#start_run(cfg, codeCheck = TRUE)

cfg$gms$disagg_lvst <- "off"


#default with module on############################################################################################################################################################################################
cfg$gms$transport <- "urbantrade_jan24"     # def = "off"


cfg$title <- .title(paste0("RuralTrade_DEF"))
#start_run(cfg, codeCheck = TRUE)

#with all feed industrial#############################################################################################################################################

cfg$input <- c(regional    = "rev4.96_h12_magpie.tgz",
                cellular    = "rev4.96_h12_fd712c0b_cellularmagpie_c200_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz",
               validation  = "rev4.96_h12_validation.tgz",
               additional  = "additional_data_rev4.47.tgz",
               calibration = "calibration_H12_sticky_feb18_glo_07Aug23.tgz",
               feedPatch =  "procPatch1.tgz")

cfg$title <- .title(paste0("RuralTrade_FeedInd"))
#start_run(cfg, codeCheck = TRUE)

#with all feed traditional#############################################################################################################################################

cfg$input <- c(regional    = "rev4.96_h12_magpie.tgz",
                cellular    = "rev4.96_h12_fd712c0b_cellularmagpie_c200_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz",
               validation  = "rev4.96_h12_validation.tgz",
               additional  = "additional_data_rev4.47.tgz",
               calibration = "calibration_H12_sticky_feb18_glo_07Aug23.tgz",
               feedPatch =  "procPatch0.tgz")

cfg$title <- .title(paste0("RuralTrade_FeedTrad"))
#start_run(cfg, codeCheck = TRUE)

#### with de-industrializaion of demand #############################################################################################################################################

cfg$input <- c(regional    = "rev4.96_h12_magpie.tgz",
                cellular    = "rev4.96_h12_fd712c0b_cellularmagpie_c200_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz",
               validation  = "rev4.96_h12_validation.tgz",
               additional  = "additional_data_rev4.47.tgz",
               calibration = "calibration_H12_sticky_feb18_glo_07Aug23.tgz",
               feedPatch =  "procPatch.tgz")

cfg$gms$s40_deg_industr <- 10

cfg$title <- .title(paste0("RuralTrade_TradDem10"))
#start_run(cfg, codeCheck = TRUE)


#### with de-industrializaion of demand and cost increase #############################################################################################################################################

cfg$input <- c(regional    = "rev4.96_h12_magpie.tgz",
                cellular    = "rev4.96_h12_fd712c0b_cellularmagpie_c200_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz",
               validation  = "rev4.96_h12_validation.tgz",
               additional  = "additional_data_rev4.47.tgz",
               calibration = "calibration_H12_sticky_feb18_glo_07Aug23.tgz",
               feedPatch =  "procPatch.tgz")

cfg$gms$s40_deg_industr <- 10
cfg$gms$s40_cost_increase <- 5

cfg$title <- .title(paste0("RuralTrade_TradDem10_MktCost10"))
start_run(cfg, codeCheck = TRUE)


###### with increased rural population share ######################################################################################################################################################

cfg$gms$s40_deg_industr <- 1
cfg$gms$s40_deg_rerural <- 3

cfg$title <- .title(paste0("RuralTrade_Rerural3"))
##start_run(cfg, codeCheck = TRUE)




# with ruminant decrease  ##################################################################################################################################################################################################################################################
cfg$gms$s40_deg_rerural <- 1

cfg$gms$s15_exo_diet <- 1             # def = 0

cfg$gms$c15_kcal_scen <- "healthy_BMI"       # def = healthy_BMI

cfg$gms$s15_exo_monogastric <- 0   # def = 1, options: 0,1
cfg$gms$s15_exo_ruminant    <- 1   # def = 1, options: 0,1
cfg$gms$s15_exo_fish        <- 0   # def = 1, options: 0,1
cfg$gms$s15_exo_fruitvegnut <- 0   # def = 1, options: 0,1
cfg$gms$s15_exo_pulses      <- 0   # def = 1, options: 0,1
cfg$gms$s15_exo_sugar       <- 0   # def = 1, options: 0,1
cfg$gms$s15_exo_oils        <- 0   # def = 1, options: 0,1
cfg$gms$s15_exo_brans       <- 0   # def = 1, options: 0,1
cfg$gms$s15_exo_scp         <- 0   # def = 1, options: 0,1

cfg$title <- .title(paste0("RuralTrade_RuminantDecr"))
#start_run(cfg, codeCheck = TRUE)




# with full EAT  ###########################################################################################################################################################################################################################################################################################################################################################################
cfg$gms$s15_exo_monogastric <- 1   # def = 1, options: 0,1
cfg$gms$s15_exo_ruminant    <- 1   # def = 1, options: 0,1
cfg$gms$s15_exo_fish        <- 1   # def = 1, options: 0,1
cfg$gms$s15_exo_fruitvegnut <- 1   # def = 1, options: 0,1
cfg$gms$s15_exo_pulses      <- 1   # def = 1, options: 0,1
cfg$gms$s15_exo_sugar       <- 1   # def = 1, options: 0,1
cfg$gms$s15_exo_oils        <- 1   # def = 1, options: 0,1
cfg$gms$s15_exo_brans       <- 1   # def = 1, options: 0,1
cfg$gms$s15_exo_scp         <- 1   # def = 1, options: 0,1

cfg$title <- .title(paste0("RuralTrade_EATLancet"))
#start_run(cfg, codeCheck = TRUE)



#########################################################################################################################


