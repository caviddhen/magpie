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


cfg$gms$factor_costs <- "sticky_labour_okt20"
cfg$gms$yields <- "dynamic_labour_okt18"

			# Update title
			 cfg$title <- paste0("LabProd_Tests_26","_","cost_increase")
			 cfg$gms$c38_labour_switch  <- "cc"
			 cfg$gms$c14_yld_dcrs_switch  <- "nocc"

			 start_run(cfg=cfg)

			# Update title
			cfg$title <- paste0("LabProd_Tests_26","_","yld_decrease")
			cfg$gms$c38_labour_switch  <- "nocc"
			cfg$gms$c14_yld_dcrs_switch  <- "cc"
			start_run(cfg=cfg)


			# Update title
			 cfg$title <- paste0("LabProd_Tests_26","_","default")
			 cfg$gms$c14_yld_dcrs_switch <- "nocc"
			# Start the run
			 start_run(cfg=cfg)
