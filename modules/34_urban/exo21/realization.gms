*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

*' @description Urban Land based on LUH2v2 Hurtt 2020 gridded urban land expansion

*' @limitations urban land is exogenous 

*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "presolve" $include "./modules/34_urban/static/presolve.gms"
*######################## R SECTION END (PHASES) ###############################
