*' @equations

*' While regional feedbaskets determine the overall feed availablity within a region,
*' the cellular distribution of livestock production is underconstrained. Livestock production,
*' is determinded by the availability of feed stuff with in cluster.

*' The difference between food and feed stuff available and consumed in each cell is either
*' negative (additional feed stuff is needed in a cell) or positive (surplus feed stuff
*' can be exported). We calculate the transorted feed stuff splitted into 'from' and 'to' by

*' ########### CURRENTLY ONLY PRIMARY PRODUCTION ###########

*' Cellular demand has to match production + transportation

q40_local_food(j2, kfop) ..
                 vm_prod(j2, kfop) =g=
                    sum(urb, sum(ct,i40_dem_food_cell(ct,j2, kfop, urb)) +
                     v40_tfood(j2, kfop, "from", urb) - v40_tfood(j2, kfop, "to", urb))
				 ;
*' secondary Products

*' q40_local_proc(j2,ksd) ..
*'                           vm_prod_processing(j,ksd) =g=
*'                           sum(urb, sum(cell(i2,j2), vm_dem_processing(i2,ksd)) *
*'                                                     i40_urban_shr(j, urb) +
*'                              v40_tproc(j2, ksd, "from", urb) - v40_tproc(j2, ksd, "to", urb))
*'                            ;
q40_feed_liv(j2,kfeed) ..
                vm_prod(j2,kfeed) -  sum(kli,vm_prod(j2,kli)
               * sum((ct,cell(i2,j2)),im_feed_baskets(ct,i2,kli,kfeed))) =g=
                 v40_tfeed(j2, kfeed, "from") - v40_tfeed(j2, kfeed, "to")
                 ;

*' amount counted in transportation costs

q40_transport_food(j2,kfop) ..
                 v40_tprod_food(j2,kfop)  =e=
                   sum(urb, v40_tfood(j2, kfop, "from", "rural") +
*'                  v40_tproc(j2, ksd, "from", urb) +
                   v40_tfood(j2, kfop, "to", urb)) + 0
                                 ;

q40_transport_feed(j2,kfeed) ..
                      v40_tprod_feed(j2,kfeed)  =e=
                      v40_tfeed(j2, kfeed, "from") +
                      v40_tfeed(j2, kfeed, "to") + 0
                                  ;

  q40_cost_transport(j2,k) ..
                vm_cost_transp(j2,k) =e=
                (v40_tprod_food(j2, k)+v40_tprod_feed(j2, k))*f40_distance(j2)
                * f40_transport_costs(k);


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
