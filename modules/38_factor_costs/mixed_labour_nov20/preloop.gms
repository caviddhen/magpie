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
f38_labour_impact(t_all,j) = f38_labour_impact("y2020",j);
 );
);
$endif

* Initialise K, L and C
p38_fac_req_ini(j,kcr,w) = f38_fac_req(kcr,w);
s38_beta  = 1 - s38_alpha ; 
*alpha = (K.l * i)/C.l ;  
p38_capital_ini(j,kcr,w) = (s38_alpha*p38_fac_req_ini(j,kcr,w))/sum(cell(i,j), pm_interest("y1995",i));
p38_labour_ini(j,kcr,w) = (s38_beta*p38_fac_req_ini(j,kcr,w))/s38_wage;

v38_fac_req.l(j,kcr,w) = p38_fac_req_ini(j,kcr,w);
v38_capital.l(j,kcr,w) = p38_capital_ini(j,kcr,w);
v38_labour.l(j,kcr,w) = p38_labour_ini(j,kcr,w);

* 	Calibrate the CES function:
s38_es = 0.3 ;
s38_ep = (1/s38_es) - 1 ;
