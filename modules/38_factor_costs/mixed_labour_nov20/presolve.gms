*** |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

*update CES parameters
pc38_sh(j,kcr,w) = (sum(cell(i,j), pm_interest(t,i)) * p38_capital_ini(j,kcr,w)**(1 + s38_ep)) / (sum(cell(i,j), pm_interest(t,i)) * p38_capital_ini(j,kcr,w)**(1 + s38_ep)  + s38_wage * p38_labour_ini(j,kcr,w)**(1 + s38_ep)) ; 
pc38_scale(j,kcr,w) = 1/([pc38_sh(j,kcr,w) * p38_capital_ini(j,kcr,w)**(-s38_ep) + (1 - pc38_sh(j,kcr,w)) * f38_labour_impact(t,j) * p38_labour_ini(j,kcr,w)**(-s38_ep)]**(-1/s38_ep));

*if (s38_ces_exo = 1)

* release bounds on K, L and C
v38_objective.lo = 0 ;
v38_objective.up = Inf ;

v38_fac_req.lo(j,kcr,w) = 0 ;
v38_fac_req.up(j,kcr,w) = Inf ;

v38_capital.lo(j,kcr,w) = 0;
v38_capital.up(j,kcr,w) = Inf;

v38_labour.lo(j,kcr,w) = 0;
v38_labour.up(j,kcr,w) = Inf;

* Solve the CES to get values for K, L and C
s38_ces = 1;
solve m38_prod_cost using nlp minimizing v38_objective ;
s38_ces = 0;

display pc38_sh;
display v38_capital.l;
display v38_labour.l;
display v38_fac_req.l;
display v38_objective.l;

* Fix K, L and for the MAgIPE run
v38_capital.fx(j,kcr,w) = v38_capital.l(j,kcr,w);
v38_labour.fx(j,kcr,w) = v38_labour.l(j,kcr,w);
v38_fac_req.fx(j,kcr,w) = v38_fac_req.l(j,kcr,w);
v38_objective.fx = v38_objective.l;


