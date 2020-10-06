*** |  (C) 2008-2019 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

*' @description In the labour_impact realization, the crop yield calculations 
*' are identical as in the above described realization (biocorrect).
*'
*' @limitations The exogenous implementation of pasture intensification cannot 
*' capture feedbacks between land scarcity and efforts to improve pasture 
*' management.


*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/14_yields/labour_impact/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/14_yields/labour_impact/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/14_yields/labour_impact/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/14_yields/labour_impact/equations.gms"
$Ifi "%phase%" == "preloop" $include "./modules/14_yields/labour_impact/preloop.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/14_yields/labour_impact/postsolve.gms"
$Ifi "%phase%" == "nl_fix" $include "./modules/14_yields/labour_impact/nl_fix.gms"
$Ifi "%phase%" == "nl_release" $include "./modules/14_yields/labour_impact/nl_release.gms"
*######################## R SECTION END (PHASES) ###############################