*** |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

$ifthen "%c38_labour_switch%" == "nocc"
loop(t_all,
 if(m_year(t_all) >= sm_fix_SSP2,
f38_labour_impact(t_all,j) = f38_labour_impact("y2020",j);
 );
);
$endif

i38_variable_costs(t_all,j,kcr) = (f38_fac_req_per_ton(kcr) * (1-s38_capital_cost_share) * (1-s38_mi_start))/f38_labour_impact(t_all,j);
