*** |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

equations
 q38_cost_prod_crop(i,kcr)      Regional factor input costs for plant production (mio. USD05MER per yr)
 q38_costfun(j,kcr,w)
 q38_ces_prodfun(j,kcr,w)
 q38_objective
;

parameters
pc38_sh(j,kcr,w)
pc38_scale(j,kcr,w)
p38_fac_req_ini(j,kcr,w)
p38_capital_ini(j,kcr,w)
p38_labour_ini(j,kcr,w)
;

scalars
s38_beta
s38_ep
;

variables
v38_objective
;

positive variables
vm_cost_prod(i,kall)             Factor costs (mio. USD05MER per yr)
vm_cost_inv(i)                  Capital investment costs (mio USD05MER  per yr)
v38_capital(j,kcr,w)
v38_labour(j,kcr,w)
v38_fac_req(j,kcr,w)
;

Model m38_prod_cost / q38_costfun, q38_ces_prodfun, q38_objective / ;

m38_prod_cost.optfile   = 0 ;
m38_prod_cost.scaleopt  = 1 ;
m38_prod_cost.solprint  = 0 ;
m38_prod_cost.holdfixed = 1 ;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov38_objective(t,type)            
 ov_cost_prod(t,i,kall,type)       Factor costs (mio. USD05MER per yr)
 ov_cost_inv(t,i,type)             Capital investment costs (mio USD05MER  per yr)
 ov38_capital(t,j,kcr,w,type)      
 ov38_labour(t,j,kcr,w,type)       
 ov38_fac_req(t,j,kcr,w,type)      
 oq38_cost_prod_crop(t,i,kcr,type) Regional factor input costs for plant production (mio. USD05MER per yr)
 oq38_costfun(t,j,kcr,w,type)      
 oq38_ces_prodfun(t,j,kcr,w,type)  
 oq38_objective(t,type)            
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
