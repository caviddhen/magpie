*** |  (C) 2008-2023 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

sets
  
income low income country or high income country for calculation based on dev state
 / lic, hic /
 
kroughage(kall) roughage products for local ruminant consumption
/ pasture, res_cereals,res_fibrous, res_nonfibrous /

 fvc food value chain type
  / trad, industr /
  
 use food or feed
  / food, feed /

k_nonprim(kall) All products except for k
/
set.ksd, set.kforestry, set.kres
/

k_sec(kall) Secondary and forestry products
/
set.ksd, set.kforestry
/

;

*** EOF sets.gms ***
