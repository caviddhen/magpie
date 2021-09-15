# |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
# |  authors, and contributors see CITATION.cff file. This file is part
# |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
# |  AGPL-3.0, you are granted additional permissions described in the
# |  MAgPIE License Exception, version 1.0 (see LICENSE file).
# |  Contact: magpie@pik-potsdam.de

# --------------------------------------------------------
# description: calculate and store new calibration factors
# --------------------------------------------------------

library(magpie4)
library(magclass)

# Load start_run(cfg) function which is needed to start MAgPIE runs
source("scripts/start_functions.R")

#start MAgPIE run
source("config/default.cfg")


cfg$input <- c(cellular    = "rev4.63+FAOonline_DC_h12_8ccecc72_cellularmagpie_debug_c200_MRI-ESM2-0-ssp370_lpjml-066f36d1.tgz",
               regional    = "rev4.63+FAOonline_DC_h12_magpie_debug.tgz",
               validation  = "rev4.63_h12_validation.tgz",
               additional  = cfg$input[grep("additional_data", cfg$input)])

      cfg$results_folder <- "output/:title:"
      cfg$recalibrate <- TRUE
      cfg$title <- paste0("FAOonline_calib_15sept")
      cfg$gms$c_timesteps <- 1
      cfg$output <- c("rds_report")
      cfg$sequential <- TRUE
      cfg$force_download <- TRUE
      start_run(cfg,codeCheck=FALSE)
      magpie4::submitCalibration("FAOonline2_15Sept")
