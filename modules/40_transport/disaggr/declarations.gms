parameters
 i40_urban_shr(t_all, j, urb)                                   urban population share
 i40_dem_food_cell(t, j, k, urb)                          per capita primary food demand within a region by urban pop
;


positive variables
 v40_tfood(j, kff, dir, urb)                         Transported food production to or from a cluster (mio. tDM per yr)
 v40_amount_charged(j, k)                              Total transported feed accounted for in transport costs (mio. tDM per yr)
 vm_cost_transp(j,k)                               Transportation costs (mio. USD05MER per yr)
;

equations
 q40_local_food(j,kff)                  Local food constraint
 q40_transport_food(j,kff)              Determination of transported food production
 q40_cost_transport(j,k)   Cellular transport costs for k (mio. USD05MER per yr)

;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov40_tfood(t,j,kfop,dir,urb,type)   Transported food production to or from a cluster (mio. tDM per yr)
 ov40_tfeed(t,j,kfeed,dir,type)      Transported processed food to or from a cluster (mio. tDM per yr)
 ov40_tprod_food(t,j,k,type)         Total transported food accounted for in transport costs (mio. tDM per yr)
 ov40_tprod_feed(t,j,k,type)         Total transported feed accounted for in transport costs (mio. tDM per yr)
 ov_cost_transp(t,j,k,type)          Transportation costs (mio. USD05MER per yr)
 oq40_local_food(t,j,kfop,type)      Local food constraint
 oq40_feed_liv(t,j,kfeed,type)       Production constraint for livestock products (mio. tDM per yr)
 oq40_transport_food(t,j,kfop,type)  Determination of transported food production
 oq40_transport_feed(t,j,kfeed,type) Determination of transported feed production
 oq40_cost_transport(t,j,k,type)     Cellular transport costs for k (mio. USD05MER per yr)
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
