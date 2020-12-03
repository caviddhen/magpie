######################################################################################
#### Script to start a MAgPIE run using different factor_costs realizations ##########
######################################################################################

# Load start_run(cfg) function which is needed to start MAgPIE runs
source("scripts/start_functions.R")

# Sources the default configuration file
source("config/default.cfg")

#Factor cost realizations
realization<-c("sticky_feb18")
mode<-c("regional","global")
climate<-c("nocc","cc")
share<-c("constant")
RCP<-c("6p0")
SSPS<-c("SSP2")
year_shock<-c(7)
resolutions<-c("c200")
#year_shock<-c(10)
year<-c(2025)

for (rel in resolutions){
for (r in realization){
  for (c in climate){
    for (s in share){
      for (rc in RCP){
        for (ssp in SSPS){
          for (y in 1:length(year)){
            for (m in mode){
       #Scenario setting[]
       cfg<-gms::setScenario(cfg,c(c,ssp))
       cfg$title<-paste0("H_runs_",rel,"_",ssp,"_rcp_",rc,"_",c,"_",s,"_")

        cfg$force_download <- TRUE

        cfg$input <- c(paste0("isimip_rcp-IPSL_CM5A_LR-rcp",rc,"-co2_rev48_",rel,"_690d3718e151be1b450b394c1064b1c5.tgz"),
         "rev4.52_h12_magpie.tgz",
         "rev4.52_h12_validation.tgz",
         "additional_data_rev3.86.tgz",
         "additional_regional_sticky.tgz",
         "calibration_H12_sticky_feb18__03Dec20.tgz")
        #recalibrate
        cfg$recalibrate <- FALSE

        cfg$gms$factor_costs <- r
        cfg$gms$c38_sticky_mode<-mode

        start_run(cfg=cfg)
           }
         }
       }
      }
     }
   }
  }
 }
