# |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
# |  authors, and contributors see CITATION.cff file. This file is part
# |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
# |  AGPL-3.0, you are granted additional permissions described in the
# |  MAgPIE License Exception, version 1.0 (see LICENSE file).
# |  Contact: magpie@pik-potsdam.de

# -------------------------------------------------------------
# description: test with new fao data
# ------------------------------------------------------------

library(gms)
source("scripts/start_functions.R")
source("config/default.cfg")

cfg$title   = paste0("FAOnline6_default")

start_run(cfg=cfg)


cfg$input <- c(cellular    = "rev4.63+FAO_onlineDC_h12_8ccecc72_cellularmagpie_debug_c200_MRI-ESM2-0-ssp370_lpjml-066f36d1.tgz",
               regional    = "rev4.63+FAO_onlineDC_h12_magpie_debug.tgz",
               validation  = "rev4.63_h12_validation.tgz",
               calibration = "calibration_FAOonline2_15Sept_15Sep21.tgz",
               additional  = cfg$input[grep("additional_data", cfg$input)])

cfg$force_download <- TRUE

#recalibrate
cfg$recalibrate <- TRUE

cfg$title   = paste0("FAOnline6_online")

start_run(cfg=cfg)
