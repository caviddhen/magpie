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
                           i72_dem_food_cell(ct,j2, k, "rural") * (1 - (i72_food_proc_demand(ct, j2, k))/p72_deg_industr(ct)) 
                        + sum(kli, vm_prod(j2,kli) * sum(cell(i2,j2),im_feed_baskets(ct,i2,kli,k)))
                            * (1 - (i72_feed_proc_demand(ct, j2, k)/p72_deg_industr(ct)) ))
                   - v72_cell_import(j2, k, "rural", "trad")
                   ;
 
q72_rural_demand_ruminant_feed(j2, kres) ..
                   v72_dem_for_local(j2, kres, "rural", "trad")
                   =e=
                   sum(ct, 
                       sum(kli_rum, 
                        vm_prod(j2,kli_rum) * sum(cell(i2,j2),im_feed_baskets(ct,i2,kli_rum,kres)))
                     * (1 - (i72_feed_proc_demand(ct, j2, kres)/p72_deg_industr(ct)))) 
                    - v72_cell_import(j2, kres, "rural", "trad")
                   ;
*' potentially include livestock in urban trad

*' traditional local supply chain, still has aggregation costs, clean up naming 
q72_urban_demand_local(j2, k) ..
              v72_dem_for_local(j2, k, "urban", "trad")
              =e= 
              sum(ct, i72_dem_food_cell(ct,j2, k, "urban") * (1 - (i72_food_proc_demand(ct, j2, k)/p72_deg_industr(ct))))
               - v72_cell_import(j2, k, "urban", "trad")
        ;

*' industrialised regional supply chain
*' q72_demand_reg(j2, k, urb) ..
*'                    v72_dem_for_local(j2, k, urb, "industr")
*'                    =e=
*'                    sum(ct,
*'                           i72_dem_food_cell(ct,j2, k, urb) * (i72_food_proc_demand(ct, j2, k) ) ) 
*'                        - v72_cell_import(j2, k, urb, "industr");

*' vm_dem_packaged, add processed share to feed baskets, remove import                        sum(kli,vm_prod(j2,kli) * sum((ct,cell(i2,j2)),im_feed_baskets(ct,i2,kli,k))) 
                   

*' aggregation and packing costs
 q72_agg_pack_prim(j2,k) ..
                  vm_cost_packaging(j2,k)  =g=
                 (vm_prod(j2, k) - sum((urb, fvc), v72_dem_for_local(j2,k,"rural","trad"))) * s72_aggr_costs * sum(ct, p72_cost_increase(ct))
               + (vm_prod(j2, k) - sum((urb, fvc), v72_dem_for_local(j2,k,urb,"trad"))) * s72_packaging_costs * sum(ct, p72_cost_increase(ct))
                   ;

 q72_agg_pack_nonprim(j2,k_nonprim) ..
                  vm_cost_packaging(j2,k_nonprim)  =g=
                sum(cell(i2,j2), vm_prod_reg(i2, k_nonprim)) * s72_packaging_costs * sum(ct, p72_cost_increase(ct))
                   ;


*' make on wm basis?

*' transport costs for everything except for subsistence demand. Transport to rural gets extra transport cost
*'q72_cost_transport_prim(j2,k) ..
*'                 vm_cost_transp(j2, k) =g=
*'               ( vm_prod(j2, k)
*'                    - v72_dem_for_local(j2, k, "rural", "trad")
*'                    + sum(fvc, v72_cell_import(j2, k, "rural", fvc)) )
*'                                          * f72_distance(j2) *  f72_transport_costs(k) ;


*' all secondary products get transport costs
*' add these to transport costs, see if they're in gtap, otherwsie grain price

*'  q72_cost_transport_notk(j2, k_nonprim) ..
*'                                   vm_cost_transp(j2, k_nonprim) =g=
*'                                  sum(ct,
*'                                      i72_dem_food_cell(ct,j2, k_nonprim, "rural")) +
*'                                      sum(kli,vm_prod(j2,kli) * sum((ct,cell(i2,j2)),im_feed_baskets(ct,i2,kli,k_nonprim)))
*'                                   * f72_distance(j2) *  f72_transport_costs(k_nonprim) ;
