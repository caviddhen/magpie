# |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
# |  authors, and contributors see CITATION.cff file. This file is part
# |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
# |  AGPL-3.0, you are granted additional permissions described in the
# |  MAgPIE License Exception, version 1.0 (see LICENSE file).
# |  Contact: magpie@pik-potsdam.de

# ------------------------------------------------
# description: start run with default.cfg settings
# position: 1
# ------------------------------------------------
library(gms)

# Load start_run(cfg) function which is needed to start MAgPIE runs
source("scripts/start_functions.R")
source("config/default.cfg")
source("scripts/start/extra/lpjml_addon.R")

cfg$force_download <- TRUE
cfg$repositories <- append(list("https://rse.pik-potsdam.de/data/magpie/public"=NULL,
                                "./patch_inputdata"=NULL),
                           getOption("magpie_repos"))


cfg$input[5] <-"calibration_H12_newlpjml_bestcalib_fc-sticky-free_crop-endoApr21_20May21.tgz"

cfg$crop_calib_max<- 2
cfg$best_calib <- TRUE
cfg$gms$factor_costs <- "sticky_feb18"
cfg$gms$c38_sticky_mode  <- "free"

degr_scens <- list(NULL, "patch_degr_sust_scale.tgz", "patch_degr_fair_dist.tgz")
input <- cfg$input
degr_flag <- "_BAU"
eat_flag <- NULL
ghg_flag <- NULL
## BAU
for (degr in degr_scens){
  for (eat in c("NOEAT", "EAT")){
    for (ghg in c("R2M41-SSP2-NPi","R2M41-SSP2-Budg600")){

  cfg$input <- c(input, degr)
  if (!is.null(degr)){
    if(degr =="patch_degr_sust_scale.tgz"){
    degr_flag <- "_SCALE"
  } else if (degr=="patch_degr_fair_dist.tgz"){
    degr_flag <- "_FAIR"
    }}

  if (eat =="EAT"){
      cfg$gms$s15_exo_diet <- 1
      cfg$gms$c15_exo_scen_targetyear <- "y2030"
      cfg$gms$s15_exo_waste <- 1
      cfg$gms$s15_waste_scen <- 1.1
      eat_flag <- "_EAT"} else{

      cfg$gms$s15_exo_diet <- 0
      cfg$gms$c15_exo_scen_targetyear <- "y2030"
      cfg$gms$s15_exo_waste <- 0
      cfg$gms$s15_waste_scen <- 1
      eat_flag <- NULL}

  cfg$gms$c56_pollutant_prices <- ghg
  if (ghg == "R2M41-SSP2-Budg600"){
    ghg_flag <- "_GHG"
  } else {ghg_flag <- NULL}

cfg$title <- paste0("Degr_0721", degr_flag,ghg_flag, eat_flag)
start_run(cfg=cfg)

}}}
