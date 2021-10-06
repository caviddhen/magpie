parameters
 p40_dem_food_cell(t, j, k)                          per capita primary food demand within a region
;


positive variables
 v40_tfood(j, k, dir)                         Transported food production to or from a cluster (mio. tDM per yr)
 v40_tfeed(j, kfeed, dir)                         Transported processed food to or from a cluster (mio. tDM per yr)
 v40_tproc(j, ksd, dir)                         Transported feed production to or from a cluster (mio. tDM per yr)
 v40_tprod_food(j, k)                          Total transported food accounted for in transport costs (mio. tDM per yr)
 v40_tprod_feed(j, k)                          Total transported feed accounted for in transport costs (mio. tDM per yr)
 v40_tprod_proc(j, ksd)                          Total transported processed food accounted for in transport costs (mio. tDM per yr)
 vm_cost_transp(j,k)                               Transportation costs (mio. USD05MER per yr)
;

equations
 q40_local_food(j,k)                  Local food constraint
 q40_local_proc(j,ksd)                 Local processed food transported
 q40_feed_liv(j,kfeed)                  Production constraint for livestock products (mio. tDM per yr)
 q40_transport_food(j,k)              Determination of transported food production
 q40_transport_feed(j,kfeed)              Determination of transported feed production
 q40_transport_proc(j,ksd)               Determination of transported proc production
 q40_transport_noff(j,knonff)    Transport costs for non-food and feed
 q40_cost_transport(j,k)   Cellular transport costs for k (mio. USD05MER per yr)

;
