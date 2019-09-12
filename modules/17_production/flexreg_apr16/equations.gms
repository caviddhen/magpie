*** |  (C) 2008-2019 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

*' @equations

q17_prod_glo_timber(j2,kforestry)..
 vm_prod(j2,kforestry)
 =e=
 vm_prod_cell_forestry(j2,kforestry) + vm_prod_cell_natveg(j2,kforestry)
 ;

$ontext
 q17_prod_cell_woodfuel(j2)..
  vm_prod(j2,"woodfuel")
  =e=
  vm_prod_cell_forestry(j2,"woodfuel") + vm_prod_cell_natveg(j2,"woodfuel");
$offtext

*' The equation above describes regional production of a MAgPIE timber commodity
*' `vm_prod_reg_cell_xx` as the cluster level production for `vm_prod` of the same commodity.

q17_prod_reg(i2,k) ..
vm_prod_reg(i2,k) =e= sum(cell(i2,j2), vm_prod(j2,k));

*' The equation above describes regional production of a MAgPIE plant commodity
*' `vm_prod_reg` as the sum of the cluster level production `vm_prod` of the
*' same commodity.
