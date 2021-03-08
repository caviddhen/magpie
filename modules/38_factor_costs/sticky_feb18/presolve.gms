*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

*' If a shock in the calculation of input factors is considered
$ifthen.c1 "%c38_sticky_mode%" == "global"
f38_immobile(i)=0.7;
f38_capital_cost_share(i)=0.46;
$ifthen.c2 "%c38_capital_share_variability%" == "variable"
if(ord(t) < s38_year_shock,
f38_capital_cost_share(i)=0.46;
else
f38_capital_cost_share(i)=0;
);
$endif.c2
$endif.c1

*' calculation of capital needed per unit produced
i38_capital_need(i,kcr,"mobile") = f38_fac_req_per_ton(kcr) * f38_capital_cost_share(i) / pm_interest(t,i) * (1-f38_immobile(i));
i38_capital_need(i,kcr,"immobile") = f38_fac_req_per_ton(kcr)*f38_capital_cost_share(i) / pm_interest(t,i) * f38_immobile(i);

if (ord(t) = 1,

i38_variable_costs(i2,kcr) = f38_fac_req_per_ton(kcr) * (1-f38_capital_cost_share(i2)) * (1-s38_mi_start);

*' Estimate capital stock based on capital remuneration
p38_capital_immobile(t,j,kcr)   = sum(cell(i,j), i38_capital_need(i,kcr,"immobile")*pm_croparea_start(j,kcr)*f38_region_yield(i,kcr)* fm_tau1995(i));
p38_capital_mobile(t,j)   = sum((cell(i,j),kcr), i38_capital_need(i,kcr,"mobile")*pm_croparea_start(j,kcr)*f38_region_yield(i,kcr)* fm_tau1995(i));

vm_prod.l(j,kcr)=sum(cell(i,j),pm_croparea_start(j,kcr)*f38_region_yield(i,kcr)* fm_tau1995(i));
  );

*' The maximum allocation of mobile and immobile capital is equal to the existing capital
vm_cost_inv.up(i)=im_gdp_pc_mer(t,i)*im_pop(t,i)*s38_fraction_gdp;
