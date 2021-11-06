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

*' local food constraint

q40_local_food(j2, kff) ..
                vm_prod(j2, kff)
                   =g=
                sum((dir,urb), v40_dem_for_local(j2, kff,dir, urb));

*' rural demand
q40_rural_demand(j2, kff) ..
                   v40_dem_for_local(j2, kff, "rural")
                   =e=
                   sum(ct,
                          i40_dem_food_cell(ct,j2, kff, "rural")) +
                          sum(kli,vm_prod(j2,kli) * sum((ct,cell(i2,j2)),im_feed_baskets(ct,i2,kli,kff)))
                   + v40_tfood(j2, kff, "from", "rural")
                   - v40_tfood(j2, kff, "to", "rural")
                   ;


*' urban
q40_urban_demand(j2, kff) ..
                   v40_dem_for_local(j2, kff, "urban")
                   =e=
                   sum(ct, i40_dem_food_cell(ct,j2, kff, "urban"))
               + v40_tfood(j2, kff, "from", "urban")
                                  - v40_tfood(j2, kff, "to", "urban")

        ;

*'  rural population pays receiving, *'  urban population pays receiving *'  rural farmers pay for exporting


q40_transport_food(j2,kff) ..
                  v40_amount_charged(j2,kff)  =e=
                    v40_tfood(j2, kff, "to", "rural") +
                    v40_tfood(j2, kff,"to", "urban") +
                   v40_tfood(j2, kff, "from", "rural") + 0
                   ;
*' packaging
q40_packaging_food(j2,kff) ..
                  vm_cost_packaging(j2,kff)  =e=
                   v40_tfood(j2, kff, "from", "rural") * s40_packaging_costs
                   ;

q40_cost_transport(j2,kff) ..
                 vm_cost_transp(j2,kff) =e=
                 v40_amount_charged(j2, kff)*f40_distance(j2)
                 * f40_transport_costs(kff);

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
