# |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
# |  authors, and contributors see CITATION.cff file. This file is part
# |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
# |  AGPL-3.0, you are granted additional permissions described in the
# |  MAgPIE License Exception, version 1.0 (see LICENSE file).
# |  Contact: magpie@pik-potsdam.de

# --------------------------------------------------------
# description: calculate and store new calibration for different factor costs, AEI and clustering
# --------------------------------------------------------


library(magpie4)
library(magclass)

# Load start_run(cfg) function which is needed to start MAgPIE runs
source("scripts/start_functions.R")

#start MAgPIE run
source("config/default.cfg")

cfg$results_folder <- "output/:title::date:"
cfg$recalibrate <- TRUE

#realization<-c("mixed_feb17","sticky_feb18")
realization<-c("sticky_feb18")
share<-c("constant")


for (i in realization){
  for (j in share){

cfg$title <- paste0("calib_run_best_",i,"_",j,"_")

#Selects factor costs realization
cfg$gms$factor_costs <- i
cfg$gms$c38_capital_share_variability  <- j

cfg$gms$c_timesteps <- 1
cfg$output <- c("rds_report")
cfg$sequential <- TRUE


start_run(cfg,codeCheck=FALSE)
magpie4::submitCalibration(paste0("H12","_",i,"_",j,"_"))

}
}
