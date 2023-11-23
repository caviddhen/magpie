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

# Load start_run(cfg) function which is needed to start MAgPIE runs
source("scripts/start_functions.R")

# Source default cfg. This loads the object "cfg" in R environment
source("config/default.cfg")

cfg$info$flag <- "2211LD2_harm" #choose a meaningful flag.
cfg$force_download <- FALSE

# support function to create standardized title
.title <- function(...) return(paste(...,cfg$info$flag, sep="_"))

#crop rotation module on
cfg$gms$crop <- "penalty_apr22"

#cellular residues module on 
cfg$gms$residues <- "flexcluster_jul23"

#sticky on 
cfg$gms$factor_costs <- "sticky_feb18"     

cfg$recalibrate <- FALSE     # def = "ifneeded"
cfg$recalibrate_landconversion_cost <- FALSE #def "ifneeded"

cfg$repositories <- append(list("https://rse.pik-potsdam.de/data/magpie/public"=NULL,
                                "./feedPatch"=NULL), getOption("magpie_repos"))


cfg$input <- c(regional    = "rev4.94_h12_magpie.tgz",
               cellular    = "rev4.94_h12_fd712c0b_cellularmagpie_c200_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz",
               validation  = "rev4.94_h12_validation.tgz",
               additional  = "additional_data_rev4.46.tgz",
               calibration = "calibration_H12_sticky_feb18_glo_07Aug23.tgz",
               feedPatch = "feedPatch.tgz")


#default with disagg livestock
cfg$title <- .title(paste0("Default"))
start_run(cfg, codeCheck = TRUE)

#default with module on
cfg$title <- .title(paste0("ClDemON"))
cfg$gms$local_demand <- "cluster_demand_nov23"     # def = "off"
start_run(cfg, codeCheck = TRUE)

#with 3x high costs
cfg$gms$s72_cost_increase <- 3
cfg$title <- .title(paste0("ClDemON_3XCosts"))
start_run(cfg, codeCheck = TRUE)

#with de-industrialization 
cfg$gms$s72_deg_industr <- 10
cfg$title <- .title(paste0("ClDemON_3XCosts_10trad"))
start_run(cfg, codeCheck = TRUE)


#with de-industrializaion and 3x costs 
cfg$gms$s72_cost_increase <- 1
cfg$title <- .title(paste0("ClDemON_10trad"))
start_run(cfg, codeCheck = TRUE)

