######################################################################################
#### Script to start a MAgPIE run using different factor_costs realizations ##########
######################################################################################

library(gms)

# Load start_run(cfg) function which is needed to start MAgPIE runs
source("scripts/start_functions.R")

# Sources the default configuration file
source("config/default.cfg")

climate<-c("cc","nocc")

for (k in 1:length(climate)){
          #Change the results folder name
        #NBC STANDS FOR NEW BEST CALIBRATION
        cfg$title<-paste0("YieldTest29","_rcp6p0_",climate[k])

        cfg <- setScenario(cfg,climate[k])

        #recalibrate
        cfg$recalibrate <- TRUE

        #forestry
        cfg$gms$forestry  <- "static_sep16"

        start_run(cfg=cfg)
        }
