*** |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

*' @equations
*' Land establishment costs apply on expansion of cropland, pasture and forestry.
*' Land clearing costs apply on reduction of carbon stock in primary forest, secondary forest
*' and other natural land.
*' The sum of land establishment and land clearing costs in the current time step
*' is multiplied with an annuity factor to distribute these costs over time.

q34_urban_cell(j2) ..
            vm_land(j2,"urban") =l= sum(ct, i34_urban(ct, j2));

q34_urban_land(i2) ..
            sum(cell(i,j), vm_land(i2,"urban")) =e= sum(ct, i34_urban_area_reg(ct, i2));
