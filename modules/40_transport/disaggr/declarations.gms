scalars
 s40_packaging_costs                 packaging cost add-on for products exported from cluster
 s40_transport_cost_scalar           transport cost scalar based on GTAP wheat price
 s40_aggr_costs                       aggregation cost add-on for non-subsistence products
;

parameters
 i40_urban_shr(t_all, j, urb)                                Urban population share (0-1)
 i40_dem_food_cell(t, j, kall, urb)                          Per capita primary food demand within a region by urban pop (mio. tDM per yr)
 i40_dem_feed_cell(t, j, kall, urb)                         Feed demand within a cell based on cellular livestock production and feed baskets (mio. tDM)
 i40_food_proc_demand(t_all, j, k)                           Amount of food processing demanded in low and high income countries (0-1)
 i40_feed_proc_demand(t_all, j, kall)                       Amount of feed processing required for low and high income countries (0-1)
;


positive variables
 v40_dem_for_local(j, kall, urb, fvc)              Local food demand (mio. tDM per yr)
 v40_cell_import(j, k, urb, fvc)                   Transported food production to or from a cluster (mio. tDM per yr)
 vm_cost_transp(j, kall)                           Transportation costs (mio. USD05MER per yr)
 vm_cost_packaging(j, k)                           packaging cost (mio. USD05MER per yr)
;

equations
 q40_local_crop_prod(j, kall)                  Local crop production constraint
 q40_local_rough_prod(j, kres)            Local roughage production constraint

 q40_rural_demand_subs(j, kall)                Rural food demand for subsistence products
 q40_rural_demand_ruminant_feed(j, kroughage)   Rural ruminant feed demand 

 q40_urban_demand_local(j, kall)               Urban food demand for local products
 q40_demand_reg(j, kall, urb)                       Food demand for regional products
 q40_agg_pack_food(j, kall)                    Additional packing costs equation
 q40_cost_transport_prim(j, kall)              Cellular transport costs for k
 q40_cost_transport_ksd(j, kall)               Cellular transport costs for k 

;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov40_dem_for_local(t,j,kall,urb,fvc,type)           Local food demand (mio. tDM per yr)
 ov40_cell_import(t,j,k,urb,fvc,type)                Transported food production to or from a cluster (mio. tDM per yr)
 ov_cost_transp(t,j,kall,type)                       Transportation costs (mio. USD05MER per yr)
 ov_cost_packaging(t,j,k,type)                       packaging cost (mio. USD05MER per yr)
 oq40_local_crop_prod(t,j,kall,type)                 Local crop production constraint
 oq40_local_rough_prod(t,j,kres,type)                Local roughage production constraint
 oq40_rural_demand_subs(t,j,kall,type)               Rural food demand for subsistence products
 oq40_rural_demand_ruminant_feed(t,j,kroughage,type) Rural ruminant feed demand 
 oq40_urban_demand_local(t,j,kall,type)              Urban food demand for local products
 oq40_demand_reg(t,j,kall,urb,type)                  Food demand for regional products
 oq40_agg_pack_food(t,j,kall,type)                   Additional packing costs equation
 oq40_cost_transport_prim(t,j,kall,type)             Cellular transport costs for k
 oq40_cost_transport_ksd(t,j,kall,type)              Cellular transport costs for k 
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
