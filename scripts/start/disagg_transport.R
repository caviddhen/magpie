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

cfg$info$flag <- "disaggr_LocalFood1" # choose a meaningful flag.

# newly download data
cfg$force_download <- TRUE


# support function to create standardized title
.title <- function(...) return(paste(...,cfg$info$flag, sep="_"))

#transport run
cfg$gms$disagg_lvst <- "off"


cfg$gms$transport <- "gtap_nov12"

cfg$title <- .title("disaggr_gtapdefault")

start_run(cfg, codeCheck = TRUE)


cfg$gms$transport <- "disaggr"

cfg$title <- .title("disaggr_0transp0pckg")

start_run(cfg, codeCheck = TRUE)

cfg$gms$s40_transport_cost_scalar  <- 0.1062 

cfg$title <- .title("disaggr_GTAPtransp0pckg")

start_run(cfg, codeCheck = TRUE)

cfg$gms$s40_transport_cost_scalar  <- 0 
cfg$gms$s40_packaging_costs  <- 10


cfg$title <- .title("disaggr_0transp10pckg")

start_run(cfg, codeCheck = TRUE)
