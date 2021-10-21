*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

parameters
 i34_urban_area(t_all, j)            Cellular urban area
 i34_urban_area_reg(t_all, i)        Regional urban area
;

equations
 q34_urban_cell(j)           Constraint for urban land
 q34_urban_land(i)           Prescribe total regional urban land
;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov_cost_prod(t,i,kall,type)       Factor costs (mio. USD05MER per yr)
 ov_cost_inv(t,i,type)             Capital investment costs (mio USD05MER  per yr)
 oq38_cost_prod_crop(t,i,kcr,type) Regional factor input costs for plant production (mio. USD05MER per yr)
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
