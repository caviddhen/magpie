parameters
 p40_dem_food_cell(j, kfo)                          per capita food demand within a region
;


positive variables
 v40_tfood(j, kfo, dir)                         Transported food production to or from a cluster (mio. tDM per yr)
 v40_tfeed(j, kfeed, dir)                         Transported feed production to or from a cluster (mio. tDM per yr)
 v40_tprod(j,kff)                                    Transported production (mio. tDM per yr)
 vm_cost_transp(j,k)                               Transportation costs (mio. USD05MER per yr)
;

equations
 q40_local_food(j,kfo)                  Local food constraint
 q40_feed_liv(j,kfeed)                  Production constraint for livestock products (mio. tDM per yr)
 q40_transport_ff(j,kfo)              Determination of transported production
 q40_transport_noff(j,knonff)    Transport costs for non-food and feed
 q40_cost_transport(j,k)   Cellular transport costs for k (mio. USD05MER per yr)

;
