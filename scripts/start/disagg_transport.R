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

cfg$info$flag <- "1003_disaggr" # choose a meaningful flag.

# newly download data
cfg$force_download <- TRUE

# support function to create standardized title
.title <- function(...) return(paste(...,cfg$info$flag, sep="_"))

#transport run
cfg$gms$disagg_lvst <- "off"

cfg$gms$transport <- "gtap_nov12"

cfg$gms$crop <- "penalty_apr22"

cfg$title <- .title("gtapdefault")

cfg$input <- c(regional    = "rev4.82HRlocaldem_h12_magpie.tgz",
               cellular    = "rev4.82HRlocaldem_h12_fd712c0b_cellularmagpie_c200_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz",
               validation  = "rev4.82HRlocaldem_h12_validation.tgz",
               additional  = "additional_data_rev4.39.tgz",
               calibration = "calibration_H12_per_ton_fao_may22_glo_13Feb23.tgz")

start_run(cfg, codeCheck = TRUE)

cfg$gms$transport <- "disaggr"
cfg$gms$s40_packaging_costs <- 100
cfg$gms$s40_transport_cost_scalar <- 0.1062

cfg$title <- .title("disaggc200")
start_run(cfg, codeCheck = TRUE)

cfg$title <- .title("disaggc500")
cfg$input <- c(regional    = "rev4.82HRlocaldem_h12_magpie.tgz",
               cellular    = "rev4.82HRlocaldem_h12_fd712c0b_cellularmagpie_c500_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz",
               validation  = "WARNINGS1rev4.82HRlocaldem_h12_validation.tgz",
               additional  = "additional_data_rev4.39.tgz",
               calibration = "calibration_H12_per_ton_fao_may22_glo_13Feb23.tgz")
start_run(cfg, codeCheck = TRUE)

cfg$title <- .title("disaggc1000")
cfg$input <- c(regional    = "rev4.82HRlocaldem_h12_magpie.tgz",
               cellular    = "rev4.82HRlocaldem_h12_fd712c0b_cellularmagpie_c1000_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz",
               validation  = "rev4.82HRlocaldem_h12_validation.tgz",
               additional  = "additional_data_rev4.39.tgz",
               calibration = "calibration_H12_per_ton_fao_may22_glo_13Feb23.tgz")
start_run(cfg, codeCheck = TRUE)

cfg$title <- .title("disaggc2000")
cfg$input <- c(regional    = "rev4.82HRlocaldem_h12_magpie.tgz",
               cellular    = "rev4.82HRlocaldem_h12_fd712c0b_cellularmagpie_c2000_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz",
               validation  = "rev4.82HRlocaldem_h12_validation.tgz",
               additional  = "additional_data_rev4.39.tgz",
               calibration = "calibration_H12_per_ton_fao_may22_glo_13Feb23.tgz")
start_run(cfg, codeCheck = TRUE)


cfg$title <- .title("disaggc5000")
cfg$input <- c(regional    = "rev4.82HRlocaldem_h12_magpie.tgz",
               cellular    = "rev4.82HRlocaldem_h12_fd712c0b_cellularmagpie_c5000_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz",
               validation  = "rev4.82HRlocaldem_h12_validation.tgz",
               additional  = "additional_data_rev4.39.tgz",
               calibration = "calibration_H12_per_ton_fao_may22_glo_13Feb23.tgz")
start_run(cfg, codeCheck = TRUE)

cfg$title <- .title("disaggc10000")
cfg$input <- c(regional    = "rev4.82HRlocaldem_h12_magpie.tgz",
               cellular    = "rev4.82HRlocaldem_h12_fd712c0b_cellularmagpie_c10000_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz",
               validation  = "rev4.82HRlocaldem_h12_validation.tgz",
               additional  = "additional_data_rev4.39.tgz",
               calibration = "calibration_H12_per_ton_fao_may22_glo_13Feb23.tgz")
start_run(cfg, codeCheck = TRUE)
