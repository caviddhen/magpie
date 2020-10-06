*** |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

$setglobal c38_labour_switch  normal

table f38_fac_req(kcr,w) Factor requirement costs (USD05MER per tDM)
$ondelim
$include "./modules/38_factor_costs/input/f38_fac_req.csv"
$offdelim;

table f38_region_yield(i,kcr) Regional crop yields (tDM per ha)
$ondelim
$include "./modules/38_factor_costs/mixed_feb17/input/f38_region_yield.csv"
$offdelim;

table i38_labour_impact(t_all,j,strfactor) LAMACLIMA yield reduction
$ondelim
$include "./modules/38_factor_costs/input/f38_labour_impact.cs3"
$offdelim
;
$if "%c38_labour_switch%" == "cc" i38_labour_impact(t_all,j) = f38_labour_impact(t_all,j,"factor");
$if "%c38_labour_switch%" == "normal" i38_labour_impact(t_all,j) = f38_labour_impact(t_all,j,"normal");
