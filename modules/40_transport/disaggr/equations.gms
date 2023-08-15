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


q40_local_crop_prod(j2, k) ..
                  vm_prod(j2,k)
                   =g=
                  sum((urb, fvc), v40_dem_for_local(j2, k, urb, fvc));

 q40_local_rough_prod(j2, kres) ..
             vm_prod_res(j2,kres) 
             =g=
             sum((urb,fvc), v40_dem_for_local(j2, kres, urb, fvc));


*' Subsistence farming - only for rural populations, and unprocessed fraction of demand, and roughage feed for ruminants (pastr and residutes) can not be imported into a cell 
*' based on livvestock production

q40_rural_demand_subs(j2, k) ..
                   v40_dem_for_local(j2, k, "rural", "trad")
                   =e=
                     sum(ct,
                           i40_dem_food_cell(ct,j2, k, "rural") * (1 - i40_food_proc_demand(ct, j2, k)) 
                        + sum(kli, vm_prod(j2,kli) * sum(cell(i2,j2),im_feed_baskets(ct,i2,kli,k)))
                            * (1 - i40_feed_proc_demand(ct, j2, k)))
                   - v40_cell_import(j2, k, "rural", "trad")
                   ;
 
q40_rural_demand_ruminant_feed(j2, kres) ..
                   v40_dem_for_local(j2, kres, "rural", "trad")
                   =e=
                   sum(ct, 
                       sum(kli_rum, 
                        vm_prod(j2,kli_rum) * sum(cell(i2,j2),im_feed_baskets(ct,i2,kli_rum,kres)))
                     * (1 - i40_feed_proc_demand(ct, j2, kres)))
                    - v40_cell_import(j2, kres, "rural", "trad")
                   ;
*' potentially include livestock in urban trad

*' traditional local supply chain, still has aggregation costs, clean up naming 
q40_urban_demand_local(j2, k) ..
              v40_dem_for_local(j2, k, "urban", "trad")
              =e= 
              sum(ct, i40_dem_food_cell(ct,j2, k, "urban") * (1 - i40_food_proc_demand(ct, j2, k) ))
               - v40_cell_import(j2, k, "urban", "trad")
        ;

*' industrialised regional supply chain
q40_demand_reg(j2, k, urb) ..
                   v40_dem_for_local(j2, k, urb, "industr")
                   =e=
                   sum(ct,
                          i40_dem_food_cell(ct,j2, k, urb) * (i40_food_proc_demand(ct, j2, k) ) ) 
                       - v40_cell_import(j2, k, urb, "industr");

*' vm_dem_packaged, add processed share to feed baskets, remove import                        sum(kli,vm_prod(j2,kli) * sum((ct,cell(i2,j2)),im_feed_baskets(ct,i2,kli,k))) 
                   

*' aggregation and packing costs
 q40_agg_pack_prim(j2,k) ..
                  vm_cost_packaging(j2,k)  =g=
                 (vm_prod(j2, k) - sum((urb, fvc), v40_dem_for_local(j2,k,"rural","trad"))) * s40_aggr_costs 
               + (vm_prod(j2, k) - sum((urb, fvc), v40_dem_for_local(j2,k,urb,"trad"))) * s40_packaging_costs
                   ;

 q40_agg_pack_nonprim(j2,k_nonprim) ..
                  vm_cost_packaging(j2,k_nonprim)  =g=
                sum(cell(i2,j2), vm_prod_reg(i2, k_nonprim)) * s40_packaging_costs
                   ;


*' make on wm basis

*' transport costs for everything except for subsistence demand. Transport to rural gets extra transport cost
q40_cost_transport_prim(j2,k) ..
                 vm_cost_transp(j2, k) =g=
                ( vm_prod(j2, k)
                    - v40_dem_for_local(j2, k, "rural", "trad")
                    + sum(fvc, v40_cell_import(j2, k, "rural", fvc)) )
                                          * f40_distance(j2) *  f40_transport_costs(k) ;


*' all secondary products get transport costs
*' add these to transport costs, see if they're in gtap, otherwsie grain price

  q40_cost_transport_notk(j2, k_nonprim) ..
                                   vm_cost_transp(j2, k_nonprim) =g=
                                   sum(ct,
                                      i40_dem_food_cell(ct,j2, k_nonprim, "rural")) +
                                      sum(kli,vm_prod(j2,kli) * sum((ct,cell(i2,j2)),im_feed_baskets(ct,i2,kli,k_nonprim)))
                                   * f40_distance(j2) *  f40_transport_costs(k_nonprim) ;


*' internationally traded products need port transport costs

*' 



*' When demand is greater it has in a cell both urb and rur have to pay;
* ' When rural wants to export it has to pay

*' look at shadow price of q40_local_food  vm_prod

*' merge food and feed !!!

*' secondary Products

*' q40_local_proc(j2,ksd) ..
*'                           vm_prod_processing(j,ksd) =g=
*'                           sum(urb, sum(cell(i2,j2), vm_dem_processing(i2,ksd)) *
*'                                                     i40_urban_shr(j, urb) +
*'                              v40_tproc(j2, ksd, "from", urb) - v40_tproc(j2, ksd, "to", urb))
*'                            ;
*' q40_feed_liv(j2,kfeed) ..
*'                vm_prod(j2,kfeed) -  sum(kli,vm_prod(j2,kli)
*'                  * sum((ct,cell(i2,j2)),im_feed_baskets(ct,i2,kli,kfeed))) =g=
*'                    v40_tfeed(j2, kfeed, "from") - v40_tfeed(j2, kfeed, "to")
*'                    ;

*' amount counted in transportation costs



*'   q40_transport_feed(j2,kfeed) ..
*'                         v40_tprod_feed(j2,kfeed)  =e=
*'                         v40_tfeed(j2, kfeed, "from") +
*'                         v40_tfeed(j2, kfeed, "to") + 0
*'                                     ;


*' urban don't pay to but from
*' rural pay processed from
*' rural don't pay any for local food


*' urban and rural? use urban and rural share, all production by default rural,
*' for local urban share one cost factor and transport across regions would satisfy
*' other cities
*' all products goes into urban

*' 'vm_tprod' is the interface variable to the transport module and is specified for
*' different settings of 's71_transport', ranging from all feed stuff is accounted for transport (0),
*' to just additional feed stuff transported from (1), or to (2) a cluster, or both (3) is subject
*' to transport costs.

*' For all other items  production items full transport costs occur
