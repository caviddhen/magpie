# |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
# |  authors, and contributors see CITATION.cff file. This file is part
# |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
# |  AGPL-3.0, you are granted additional permissions described in the
# |  MAgPIE License Exception, version 1.0 (see LICENSE file).
# |  Contact: magpie@pik-potsdam.de

# ------------------------------------------------
# description: start run with default.cfg settings
# position: 1
# ------------------------------------------------

# Load start_run(cfg) function which is needed to start MAgPIE runs
source("scripts/start_functions.R")

source("config/default.cfg")

cfg$force_download <- TRUE

cfg$repositories <- append(list("https://rse.pik-potsdam.de/data/magpie/public"=NULL,
                                "./patch_inputdata"=NULL),
                           getOption("magpie_repos"))

cfg$input <- c("isimip_rcp-IPSL_CM5A_LR-rcp2p6-co2_rev48_c200_690d3718e151be1b450b394c1064b1c5.tgz",
                                    "rev4.52_h12_magpie.tgz",
                                    "rev4.52_h12_validation.tgz",
                                    "calibration_H12_c200_26Feb20.tgz",
                                    "additional_data_rev3.86.tgz",
               "patch_degr_sust_scale.tgz")

cfg$title <- paste0("Degr_14_sust_scale")

#start run
start_run(cfg=cfg)

###fair distribution

cfg$input <- c("isimip_rcp-IPSL_CM5A_LR-rcp2p6-co2_rev48_c200_690d3718e151be1b450b394c1064b1c5.tgz",
                                    "rev4.52_h12_magpie.tgz",
                                    "rev4.52_h12_validation.tgz",
                                    "calibration_H12_c200_26Feb20.tgz",
                                    "additional_data_rev3.86.tgz",
                                    "patch_degr_fair_dist.tgz")
cfg$title <- paste0("Degr_14_fair_dist")
start_run(cfg=cfg)



#### GHG pricing w/ fair distrib

cfg$gms$c56_pollutant_prices <- "R2M41-SSP2-Budg600"
cfg$title <- paste0("Degr_14_fair_eff")
start_run(cfg=cfg)


### GHG Pricing only
cfg$input <- c("isimip_rcp-IPSL_CM5A_LR-rcp2p6-co2_rev48_c200_690d3718e151be1b450b394c1064b1c5.tgz",
                                    "rev4.52_h12_magpie.tgz",
                                    "rev4.52_h12_validation.tgz",
                                    "calibration_H12_c200_26Feb20.tgz",
                                    "additional_data_rev3.86.tgz")
cfg$title <- paste0("Degr_14_ghg_price")
start_run(cfg=cfg)


## EAT Lancet
cfg$gms$s15_exo_diet <- 1
cfg$gms$c56_pollutant_prices <- "R2M41-SSP2-NPi"
cfg$title <- paste0("Degr_14_pref_change")
start_run(cfg=cfg)

### EAT Lancet and GHG pricing

cfg$gms$s15_exo_diet <- 1
cfg$gms$c56_pollutant_prices <- "R2M41-SSP2-Budg600"
cfg$title <- paste0("Degr_14_sust_change")
start_run(cfg=cfg)
