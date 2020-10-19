*** |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

vm_cost_inv.fx(i)=0;

$ifthen "%c38_labour_switch%" == "nocc"
loop(t_all,
 if(m_year(t_all) >= sm_fix_SSP2,
i38_labour_impact(t_all,j) = f38_labour_impact("y2020",j);
 );
);
$elseif  "%c38_labour_switch%" == "cc"
i38_labour_impact(t_all,j) = f38_labour_impact(t_all,j);
$endif
