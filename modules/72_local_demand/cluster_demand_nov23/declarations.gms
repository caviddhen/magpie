scalars
 s72_packaging_costs                 Packaging cost add-on for products exported from cluster
 s72_aggr_costs                      Aggregation cost add-on for non-subsistence products
 s72_deg_industr                     Degree by which to reduce industrialised demand 
 s72_cost_increase                   Scalar for increasing default input costs

;

parameters
 i72_urban_shr(t_all, j, urb)                                Urban population share (0-1)
 i72_dem_food_cell(t, j, kall, urb)                          Per capita primary food demand within a region by urban pop (mio. tDM per yr)
 i72_dem_feed_cell(t, j, kall, urb)                         Feed demand within a cell based on cellular livestock production and feed baskets (mio. tDM)
 i72_food_proc_demand(t_all, j, k)                           Amount of food processing demanded in low and high income countries (0-1)
 i72_feed_proc_demand(t_all, j, kall)                       Amount of feed processing required for low and high income countries (0-1)
;


positive variables
 v72_dem_for_local(j, kall, urb, fvc)              Local food demand (mio. tDM per yr)
 v72_cell_import(j, kall, urb, fvc)                Transported food production to or from a cluster (mio. tDM per yr)
 vm_cost_packaging(j, kall)                           packaging cost (mio. USD05MER per yr)
;

equations
 q72_local_crop_prod(j, kall)                  Local crop production constraint
 q72_local_rough_prod(j, kres)                 Local roughage production constraint

 q72_rural_demand_subs(j, kall)                Rural food demand for subsistence products
 q72_rural_demand_ruminant_feed(j, kres)   Rural ruminant feed demand 

 q72_urban_demand_local(j, kall)               Urban food demand for local products
* q72_demand_reg(j, kall, urb)                  Food demand for regional products
 q72_agg_pack_prim(j, kall)                    Additional packing costs equation for primary products
 q72_agg_pack_nonprim(j, kall)                 Additional packing costs equation for nonprimary products
* q72_cost_transport_prim(j, kall)              Cellular transport costs for k
* q72_cost_transport_notk(j, kall)              Cellular transport costs for k 

;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov72_dem_for_local(t,j,kall,urb,fvc,type)      Local food demand (mio. tDM per yr)
 ov72_cell_import(t,j,kall,urb,fvc,type)        Transported food production to or from a cluster (mio. tDM per yr)
 ov_cost_packaging(t,j,kall,type)               packaging cost (mio. USD05MER per yr)
 oq72_local_crop_prod(t,j,kall,type)            Local crop production constraint
 oq72_local_rough_prod(t,j,kres,type)           Local roughage production constraint
 oq72_rural_demand_subs(t,j,kall,type)          Rural food demand for subsistence products
 oq72_rural_demand_ruminant_feed(t,j,kres,type) Rural ruminant feed demand 
 oq72_urban_demand_local(t,j,kall,type)         Urban food demand for local products
 oq72_agg_pack_prim(t,j,kall,type)              Additional packing costs equation for primary products
 oq72_agg_pack_nonprim(t,j,kall,type)           Additional packing costs equation for nonprimary products
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
