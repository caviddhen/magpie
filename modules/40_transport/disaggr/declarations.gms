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
 v40_cell_import(j, k, urb)                         Transported food production to or from a cluster (mio. tDM per yr)
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
 ov40_dem_for_local(t,j,k,urb,type)    Local food demand (mio. tDM per yr)
 ov40_cell_import(t,j,k,urb,type)      Transported food production to or from a cluster (mio. tDM per yr)
 ov_cost_transp(t,j,kall,type)         Transportation costs (mio. USD05MER per yr)
 ov_cost_packaging(t,j,k,type)         packaging cost (mio. USD05MER per yr)
 oq40_local_food(t,j,k,type)           Local food constraint
 oq40_rural_demand(t,j,k,type)         Rural food demand
 oq40_urban_demand(t,j,k,type)         Urban food demand
 oq40_packaging_food(t,j,k,type)       Additional packing costs equation
 oq40_cost_transport_prim(t,j,k,type)  Cellular transport costs for k (mio. USD05MER per yr)
 oq40_cost_transport_ksd(t,j,ksd,type) Cellular transport costs for k (mio. USD05MER per yr)
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
