scalars
 s40_packaging_costs                 Packaging cost add-on for products exported from cluster
 s40_aggr_costs                      Aggregation cost add-on for non-subsistence products
 s40_deg_industr                     Degree by which to reduce industrialised demand 
 s40_cost_increase                   Scalar for increasing default input costs
;

parameters
 i40_urban_shr(t_all, j, urb)                               Urban population share (0-1)
 i40_dem_food_cell(t, j, kall, urb)                         Per capita primary food demand within a region by urban pop (mio. tDM per yr)
 i40_dem_feed_cell(t, j, kall, urb)                         Feed demand within a cell based on cellular livestock production and feed baskets (mio. tDM)
 i40_proc_demand(t_all, j, use, kall)                          Amount of food feed processing demanded in low and high income countries (0-1)
 p40_deg_industr(t)                                         Degree by which to reduce industrialised demand 
 p40_cost_increase(t)                                       Scalar for increasing default input costs
;


positive variables
 v40_dem_for_local(j, kall, urb, fvc)              Local food demand (mio. tDM per yr)
 v40_cell_import(j, kall, urb, fvc)                Transported food production to or from a cluster (mio. tDM per yr)
 vm_cost_packaging(i, kall)                           packaging cost (mio. USD05MER per yr)
 vm_cost_transp(j,k)                       Transportation costs (mio. USD05MER per yr)
;

equations
 q40_local_crop_prod(j, kall)                  Local crop production constraint
 q40_local_rough_prod(j, kres)                 Local roughage production constraint

 q40_rural_demand_subs(j, kall)                Rural food demand for subsistence products
 q40_rural_demand_ruminant_feed(j, kres)       Rural ruminant feed demand 

 q40_urban_demand_local(j, kall)               Urban food demand for local products
 q40_agg_pack_prim(i, kall)                    Additional packing costs equation for primary products
 q40_agg_pack_res(i, kall)                     Additional packing costs equation for residues
 q40_agg_pack_nonprim(i, kall)                 Additional packing costs equation for nonprimary products

 q40_cost_transport(j,k)                       Transport Costs

;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov40_dem_for_local(t,j,kall,urb,fvc,type)      Local food demand (mio. tDM per yr)
 ov40_cell_import(t,j,kall,urb,fvc,type)        Transported food production to or from a cluster (mio. tDM per yr)
 ov_cost_packaging(t,i,kall,type)               packaging cost (mio. USD05MER per yr)
 ov_cost_transp(t,j,k,type)                     Transportation costs (mio. USD05MER per yr)
 oq40_local_crop_prod(t,j,kall,type)            Local crop production constraint
 oq40_local_rough_prod(t,j,kres,type)           Local roughage production constraint
 oq40_rural_demand_subs(t,j,kall,type)          Rural food demand for subsistence products
 oq40_rural_demand_ruminant_feed(t,j,kres,type) Rural ruminant feed demand 
 oq40_urban_demand_local(t,j,kall,type)         Urban food demand for local products
 oq40_agg_pack_prim(t,i,kall,type)              Additional packing costs equation for primary products
 oq40_agg_pack_res(t,i,kall,type)               Additional packing costs equation for residues
 oq40_agg_pack_nonprim(t,i,kall,type)           Additional packing costs equation for nonprimary products
 oq40_cost_transport(t,j,k,type)                Transport Costs
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
