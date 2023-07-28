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

cfg$info$flag <- "2707_newTr" # choose a meaningful flag.
cfg$force_download <- FALSE

# support function to create standardized title
.title <- function(...) return(paste(...,cfg$info$flag, sep="_"))

cfg$gms$crop <- "penalty_apr22"

reshash <-  c("c200", "c500", "c1000", "c2000")
names(reshash) <- c("fd712c0b", "313af4df", "d97bab65", "99f75e90")

cfg$input <- c(regional    = "rev4.87LocalDem_h12_magpie.tgz",
               cellular    = c("rev4.87LocalDem_h12_fd712c0b_cellularmagpie_c200_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz", 
                        "rev4.871LocalDem_h12_fd712c0b_cellularmagpie_c200_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz"),
               validation  = "rev4.87LocalDem_h12_validation.tgz",
               additional  = "additional_data_rev4.43.tgz",
               calibration = "calibration_H12_per_ton_fao_may22_glo_23Mar23.tgz")

          
cfg$gms$transport <- "disaggr"
#disagg  liv
cfg$gms$disagg_lvst <- "off"

cfg$title <- .title(paste0("TESTrun"))


  start_run(cfg, codeCheck = FALSE)
