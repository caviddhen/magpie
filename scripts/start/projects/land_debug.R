# |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
# |  authors, and contributors see CITATION.cff file. This file is part
# |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
# |  AGPL-3.0, you are granted additional permissions described in the
# |  MAgPIE License Exception, version 1.0 (see LICENSE file).
# |  Contact: magpie@pik-potsdam.de

# ----------------------------------------------------------
# description: Sticky cost runs
# position: 5
# ----------------------------------------------------------


##### Version log (YYYYMMDD - Description - Author(s))
## v0.1 - 20200923 - Sticky cost runs - EMJB,AM

library(lucode2)
library(magclass)
library(gms)

# Load start_run(cfg) function which is needed to start MAgPIE runs
source("scripts/start_functions.R")

# Sources the default configuration file
source("config/default.cfg")

#recalibrate
cfg$recalibrate <- "ifneeded"


for(land in c("landmatrix_dec18","feb15")){
for (factor in c("sticky_feb18", "mixed_feb17")){
    # Set cc
    cfg<-gms::setScenario(cfg,cc)

    # Set factor costs
    cfg$gms$factor_costs = factor


    # Set land matrix
    cfg$gms$land <- land


    #Change the results folder name
    cfg$title<-paste0(factor, "_", land, "YesNPI_cc_DCtest")

    # Start run
    start_run(cfg=cfg)

    cfg$gms$c32_aff_policy <- "none"
    cfg$gms$c35_ad_policy <- "none"
    cfg$gms$c35_aolc_policy <- "none"

    cfg$title<-paste0(factor, "_", land, "NoNPI_cc_DCtest")
    # Start run
    start_run(cfg=cfg)

}
