scalars
 s40_packaging_costs                 packaging cost add-on for products exported from cluster
 s40_transport_cost_scalar           transport cost scalar based on GTAP wheat price
;

parameters
 i40_urban_shr(t_all, j, urb)                                   urban population share
 i40_dem_food_cell(t, j, kall, urb)                          per capita primary food demand within a region by urban pop
;


positive variables
 v40_dem_for_local(j, k, urb)                      Local food demand (mio. tDM per yr)
 v40_tfood(j, k, dir, urb)                         Transported food production to or from a cluster (mio. tDM per yr)
 vm_cost_transp(j, kall)                               Transportation costs (mio. USD05MER per yr)
 vm_cost_packaging(j, k)                           packaging cost (mio. USD05MER per yr)
;

equations
 q40_local_food(j, k)                  Local food constraint
 q40_rural_demand(j, k)               Rural food demand
 q40_urban_demand(j, k)               Urban food demand
 q40_packaging_food(j, k)               Additional packing costs equation
 q40_cost_transport_prim(j, k)   Cellular transport costs for k (mio. USD05MER per yr)
 q40_cost_transport_ksd(j, ksd)   Cellular transport costs for k (mio. USD05MER per yr)

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
