# |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
# |  authors, and contributors see CITATION.cff file. This file is part
# |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
# |  AGPL-3.0, you are granted additional permissions described in the
# |  MAgPIE License Exception, version 1.0 (see LICENSE file).
# |  Contact: magpie@pik-potsdam.de

# ------------------------------------------------
# description: start run with default.cfg settings
# position: 1
# ------------------------------------------------

library(lucode)
source("scripts/start_functions.R")
source("config/default.cfg")

cfg$input <- c("rev4.51+mrmagpie10_yieldtest_h12_5a23c697b74f282b13acf0cdc4b8f06f_cellularmagpie.tgz",
              "rev4.51+mrmagpie10_yieldtest_h12_magpie.tgz",
             "rev4.51+mrmagpie10_yieldtest_h12_validation.tgz",
              "additional_data_rev3.88.tgz")

cfg$gms$forestry  <- "static_sep16"
#start MAgPIE run
start_run(cfg,codeCheck=TRUE) # Start MAgPIE run
