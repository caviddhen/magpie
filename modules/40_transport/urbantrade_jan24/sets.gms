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


k_nopast(kall) all k products except pasture
/
tece, maiz, trce, rice_pro, soybean, rapeseed, groundnut, sunflower,
oilpalm, puls_pro, potato, cassav_sp, sugr_cane, sugr_beet, others,
foddr, cottn_pro, begr, betr, livst_rum, livst_pig,
livst_chick, livst_egg, livst_milk, fish, wood, woodfuel
/

k_respasture(kall) Secondary and forestry products
/
pasture, set.kres
/

kli_rum(kli) Ruminant livestock
/
livst_rum, livst_milk
/

k_sec(kall) Secondary and forestry products
/
set.ksd, set.kforestry
/

;


alias (k_respasture, k_respasture2);

*** EOF sets.gms ***
