*' @equations

*' While regional feedbaskets determine the overall feed availablity within a region,
*' the cellular distribution of livestock production is underconstrained. Livestock production,
*' is determinded by the availability of feed stuff with in cluster.

*' The difference between food and feed stuff available and consumed in each cell is either
*' negative (additional feed stuff is needed in a cell) or positive (surplus feed stuff
*' can be exported). We calculate the transorted feed stuff splitted into 'from' and 'to' by

*' ########### CURRENTLY ONLY PRIMARY PRODUCTION ###########

*' Cellular demand has to match production + transportation

*' to is what is imported
*' from is exported

*' Amount of food produced in cell has to be larger than total demand for local food in that cell


q72_local_crop_prod(j2, k) ..
                  vm_prod(j2,k)
                   =g=
                  sum((urb, fvc), v72_dem_for_local(j2, k, urb, fvc));

 q72_local_rough_prod(j2, kres) ..
             vm_prod_res(j2,kres) 
             =g=
             sum((urb,fvc), v72_dem_for_local(j2, kres, urb, fvc));


*' Subsistence farming - only for rural populations, and unprocessed fraction of demand, and roughage feed for ruminants (pastr and residutes) can not be imported into a cell 
*' based on livvestock production

q72_rural_demand_subs(j2, k) ..
                   v72_dem_for_local(j2, k, "rural", "trad")
                   =e=
                     sum(ct,
                           i72_dem_food_cell(ct,j2, k, "rural") * (1 - (i72_proc_demand(ct, j2, "food", k))/p72_deg_industr(ct)) 
                        + sum(kli, vm_prod(j2,kli) * sum(cell(i2,j2),im_feed_baskets(ct,i2,kli,k)))
                            * (1 - (i72_proc_demand(ct, j2, "feed", k)/p72_deg_industr(ct)) ))
                   - v72_cell_import(j2, k, "rural", "trad")
                   ;
 
q72_rural_demand_ruminant_feed(j2, kres) ..
                   v72_dem_for_local(j2, kres, "rural", "trad")
                   =e=
                   sum(ct, 
                       sum(kli_rum, 
                        vm_prod(j2,kli_rum) * sum(cell(i2,j2),im_feed_baskets(ct,i2,kli_rum,kres)))
                     * (1 - (i72_proc_demand(ct, j2, "feed", kres)/p72_deg_industr(ct)))) 
                    - v72_cell_import(j2, kres, "rural", "trad")
                   ;
*' potentially include livestock in urban trad

*' traditional local supply chain, still has aggregation costs, clean up naming 
q72_urban_demand_local(j2, k) ..
              v72_dem_for_local(j2, k, "urban", "trad")
              =e= 
              sum(ct, i72_dem_food_cell(ct,j2, k, "urban") * (1 - (i72_proc_demand(ct, j2, "food", k)/p72_deg_industr(ct))))
               - v72_cell_import(j2, k, "urban", "trad")
        ;

*' aggregation and packing costs
 q72_agg_pack_prim(i2,k) ..
                  vm_cost_packaging(i2,k)  =g=
             sum(cell(i2,j2), 
                 (vm_prod(j2, k) - sum((urb, fvc), v72_dem_for_local(j2,k,"rural","trad"))) * s72_aggr_costs * sum(ct, p72_cost_increase(ct))
               + (vm_prod(j2, k) - sum((urb, fvc), v72_dem_for_local(j2,k,urb,"trad"))) * s72_packaging_costs * sum(ct, p72_cost_increase(ct)))
                   ;

 q72_agg_pack_nonprim(i2,k_nonprim) ..
                  vm_cost_packaging(i2, k_nonprim)  =g=
                vm_prod_reg(i2, k_nonprim) * s72_packaging_costs * sum(ct, p72_cost_increase(ct))
                   ;
