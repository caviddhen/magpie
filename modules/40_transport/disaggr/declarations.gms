parameters
 p40_dem_food_cell(t, j, kall)                          per capita primary food demand within a region
;


positive variables
 v40_tfood(j, kfop, dir)                         Transported food production to or from a cluster (mio. tDM per yr)
 v40_tfeed(j, kfeed, dir)                         Transported processed food to or from a cluster (mio. tDM per yr)
 v40_tprod_food(j, k)                          Total transported food accounted for in transport costs (mio. tDM per yr)
 v40_tprod_feed(j, k)                          Total transported feed accounted for in transport costs (mio. tDM per yr)
 vm_cost_transp(j,k)                               Transportation costs (mio. USD05MER per yr)
;

equations
 q40_local_food(j,kfop)                  Local food constraint
 q40_feed_liv(j,kfeed)                  Production constraint for livestock products (mio. tDM per yr)
 q40_transport_food(j,kfop)              Determination of transported food production
 q40_transport_feed(j,kfeed)              Determination of transported feed production
 q40_cost_transport(j,k)   Cellular transport costs for k (mio. USD05MER per yr)

;
