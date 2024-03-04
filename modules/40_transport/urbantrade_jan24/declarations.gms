scalars
 s40_packaging_costs                 Packaging cost add-on for products exported from cluster
 s40_aggr_costs                      Aggregation cost add-on for non-subsistence products
 s40_deg_industr                     Degree by which to reduce industrialised demand 
 s40_cost_increase                   Scalar for increasing default input costs
 s40_deg_rerural                     Scalar for increasing rural population share
;

parameters
 i40_rural_shr(t_all, j)                               Urban population share (0-1)
 i40_dem_food_cell(t, j, kall)                         Per capita primary food demand within a region by urban pop (mio. tDM per yr)
 i40_proc_demand_shr(t_all, j, use, kall)                          Amount of food feed processing demanded in low and high income countries (0-1)
 p40_deg_industr(t)                                         Degree by which to reduce industrialised demand 
 p40_cost_increase(t)                                       Scalar for increasing default input costs
;


positive variables
 v40_local_demand(j, kall)              Rural local food demand (mio. tDM per yr)
 v40_rural_transport(j, kall, fvc)                Transported food production to rural populations (mio. tDM per yr)
 vm_cost_packaging(i, kall)                           packaging cost (mio. USD05MER per yr)
 vm_cost_transp(j,kall)                       Transportation costs (mio. USD05MER per yr)

;

equations
 q40_local_crop_prod(j, kall)                  Local crop production constraint
 q40_local_rough_prod(j, kres)                 Local roughage production constraint

 q40_rural_demand_trad(j, kall)                Rural food demand for traditional products
 q40_rural_demand_ruminant_feed_trad(j)       Rural ruminant traditional feed demand 

  q40_rural_demand_ind(j, kall)                Rural food demand for industrial products
 q40_rural_demand_ruminant_feed_ind(j)       Rural ruminant industrial feed demand 

 q40_mkt_prim(i, kall)                    Additional packing costs equation for primary products
 q40_mkt_res(i,kall)                       Additional packing costs equation for resiudes
 q40_mkt_nonprim(i, kall)                 Additional packing costs equation for nonprimary products

 q40_cost_transport(j,k)               Transport cost calculation
 q40_cost_transport_sec(j,ksd)              Transport costs for secondary products calculation

;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov40_local_demand(t,j,kall,type)               Rural local food demand (mio. tDM per yr)
 ov40_rural_transport(t,j,kall,fvc,type)        Transported food production to rural populations (mio. tDM per yr)
 ov_cost_packaging(t,i,kall,type)               packaging cost (mio. USD05MER per yr)
 ov_cost_transp(t,j,kall,type)                  Transportation costs (mio. USD05MER per yr)
 oq40_local_crop_prod(t,j,kall,type)            Local crop production constraint
 oq40_local_rough_prod(t,j,kres,type)           Local roughage production constraint
 oq40_rural_demand_trad(t,j,kall,type)          Rural food demand for traditional products
 oq40_rural_demand_ruminant_feed_trad(t,j,type) Rural ruminant traditional feed demand 
 oq40_rural_demand_ind(t,j,kall,type)           Rural food demand for industrial products
 oq40_rural_demand_ruminant_feed_ind(t,j,type)  Rural ruminant industrial feed demand 
 oq40_mkt_prim(t,i,kall,type)                   Additional packing costs equation for primary products
 oq40_mkt_res(t,i,kall,type)                    Additional packing costs equation for resiudes
 oq40_mkt_nonprim(t,i,kall,type)                Additional packing costs equation for nonprimary products
 oq40_cost_transport(t,j,k,type)                Transport cost calculation
 oq40_cost_transport_sec(t,j,ksd,type)          Transport costs for secondary products calculation
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
