*** |  (C) 2008-2023 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

*' @title Transport
*'
*' @description The [72_local_demand] module Calculations are based 
*' on cellular and global parameters and returns the corresponding 
*' cellular transport costs which are then used by the [11_costs] module. 
*'
*' @authors David M Chen

*###################### R SECTION START (MODULETYPES) ##########################
$Ifi "%local_demand%" == "cluster_demand_nov23" $include "./modules/72_local_demand/cluster_demand_nov23/realization.gms"
$Ifi "%local_demand%" == "off" $include "./modules/72_local_demand/off/realization.gms"
*###################### R SECTION END (MODULETYPES) ############################
