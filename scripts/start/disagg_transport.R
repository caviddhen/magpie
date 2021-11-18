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

cfg$info$flag <- "disaggr_transport_KSD" # choose a meaningful flag.

# newly download data
cfg$force_download <- TRUE


# support function to create standardized title
.title <- function(...) return(paste(...,cfg$info$flag, sep="_"))

# start a run with default settings
cfg$title <- .title("default")
start_run(cfg, codeCheck = TRUE)

#transport run
cfg$gms$transport <- "disaggr"
cfg$gms$disagg_lvst <- "off"

cfg$title <- .title("disaggr")

start_run(cfg, codeCheck = TRUE)


#off run
cfg$gms$transport <- "off"
cfg$gms$disagg_lvst <- "foragebased_aug18"

cfg$title <- .title("off")

start_run(cfg, codeCheck = TRUE)
