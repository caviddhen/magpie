# |  (C) 2008-2019 Potsdam Institute for Climate Impact Research (PIK)
# |  authors, and contributors see CITATION.cff file. This file is part
# |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
# |  AGPL-3.0, you are granted additional permissions described in the
# |  MAgPIE License Exception, version 1.0 (see LICENSE file).
# |  Contact: magpie@pik-potsdam.de


######################################
#### Script to start a MAgPIE run ####
######################################

# Load start_run(cfg) function which is needed to start MAgPIE runs
source("scripts/start_functions.R")

# Source the default config and then over-write it before starting the run.
source("config/default.cfg")

# Change results folder name
cfg$results_folder <- "output/:title:"


cfg$gms$factor_costs <- "mixed_feb17"
cfg$title <- paste0("LabProd_Tests_31","_mixed_default_")
start_run(cfg,codeCheck=FALSE)

cfg$gms$factor_costs <- "mixed_labour_okt20"
cfg$gms$c38_labour_switch  <- "nocc"
cfg$title <- paste0("LabProd_Tests_31","_mixed_labour_","nocc")
start_run(cfg,codeCheck=FALSE)

cfg$gms$c38_labour_switch  <- "cc"
cfg$title <- paste0("LabProd_Tests_31","_mixed_labour_","cc")
start_run(cfg,codeCheck=FALSE)

cfg$gms$factor_costs <- "sticky_feb18"
cfg$gms$c38_labour_switch  <- "nocc"
cfg$title <- paste0("LabProd_Tests_31","_sticky_default_")
start_run(cfg,codeCheck=FALSE)

cfg$gms$factor_costs <- "sticky_labour_okt20"
cfg$gms$c38_labour_switch  <- "nocc"
cfg$title <- paste0("LabProd_Tests_31","_sticky_labour_","nocc")
start_run(cfg,codeCheck=FALSE)

cfg$gms$c38_labour_switch  <- "cc"
cfg$title <- paste0("LabProd_Tests_31","_sticky_labour_","cc")
start_run(cfg,codeCheck=FALSE)


cfg$gms$factor_costs <- "mixed_labour_nov20"
cfg$gms$c38_labour_switch  <- "nocc"
cfg$title <- paste0("LabProd_Tests_31","_CES_labour_","nocc")
start_run(cfg,codeCheck=FALSE)

cfg$gms$c38_labour_switch  <- "cc"
cfg$title <- paste0("LabProd_Tests_31","_CES_labour_","cc")
start_run(cfg,codeCheck=FALSE)
