
*#################### R SECTION START (OUTPUT DEFINITIONS) #####################
 ov72_dem_for_local(t,j,kall,urb,fvc,"marginal")      = v72_dem_for_local.m(j,kall,urb,fvc);
 ov72_cell_import(t,j,kall,urb,fvc,"marginal")        = v72_cell_import.m(j,kall,urb,fvc);
 ov_cost_packaging(t,j,kall,"marginal")               = vm_cost_packaging.m(j,kall);
 oq72_local_crop_prod(t,j,kall,"marginal")            = q72_local_crop_prod.m(j,kall);
 oq72_local_rough_prod(t,j,kres,"marginal")           = q72_local_rough_prod.m(j,kres);
 oq72_rural_demand_subs(t,j,kall,"marginal")          = q72_rural_demand_subs.m(j,kall);
 oq72_rural_demand_ruminant_feed(t,j,kres,"marginal") = q72_rural_demand_ruminant_feed.m(j,kres);
 oq72_urban_demand_local(t,j,kall,"marginal")         = q72_urban_demand_local.m(j,kall);
 oq72_agg_pack_prim(t,j,kall,"marginal")              = q72_agg_pack_prim.m(j,kall);
 oq72_agg_pack_nonprim(t,j,kall,"marginal")           = q72_agg_pack_nonprim.m(j,kall);
 ov72_dem_for_local(t,j,kall,urb,fvc,"level")         = v72_dem_for_local.l(j,kall,urb,fvc);
 ov72_cell_import(t,j,kall,urb,fvc,"level")           = v72_cell_import.l(j,kall,urb,fvc);
 ov_cost_packaging(t,j,kall,"level")                  = vm_cost_packaging.l(j,kall);
 oq72_local_crop_prod(t,j,kall,"level")               = q72_local_crop_prod.l(j,kall);
 oq72_local_rough_prod(t,j,kres,"level")              = q72_local_rough_prod.l(j,kres);
 oq72_rural_demand_subs(t,j,kall,"level")             = q72_rural_demand_subs.l(j,kall);
 oq72_rural_demand_ruminant_feed(t,j,kres,"level")    = q72_rural_demand_ruminant_feed.l(j,kres);
 oq72_urban_demand_local(t,j,kall,"level")            = q72_urban_demand_local.l(j,kall);
 oq72_agg_pack_prim(t,j,kall,"level")                 = q72_agg_pack_prim.l(j,kall);
 oq72_agg_pack_nonprim(t,j,kall,"level")              = q72_agg_pack_nonprim.l(j,kall);
 ov72_dem_for_local(t,j,kall,urb,fvc,"upper")         = v72_dem_for_local.up(j,kall,urb,fvc);
 ov72_cell_import(t,j,kall,urb,fvc,"upper")           = v72_cell_import.up(j,kall,urb,fvc);
 ov_cost_packaging(t,j,kall,"upper")                  = vm_cost_packaging.up(j,kall);
 oq72_local_crop_prod(t,j,kall,"upper")               = q72_local_crop_prod.up(j,kall);
 oq72_local_rough_prod(t,j,kres,"upper")              = q72_local_rough_prod.up(j,kres);
 oq72_rural_demand_subs(t,j,kall,"upper")             = q72_rural_demand_subs.up(j,kall);
 oq72_rural_demand_ruminant_feed(t,j,kres,"upper")    = q72_rural_demand_ruminant_feed.up(j,kres);
 oq72_urban_demand_local(t,j,kall,"upper")            = q72_urban_demand_local.up(j,kall);
 oq72_agg_pack_prim(t,j,kall,"upper")                 = q72_agg_pack_prim.up(j,kall);
 oq72_agg_pack_nonprim(t,j,kall,"upper")              = q72_agg_pack_nonprim.up(j,kall);
 ov72_dem_for_local(t,j,kall,urb,fvc,"lower")         = v72_dem_for_local.lo(j,kall,urb,fvc);
 ov72_cell_import(t,j,kall,urb,fvc,"lower")           = v72_cell_import.lo(j,kall,urb,fvc);
 ov_cost_packaging(t,j,kall,"lower")                  = vm_cost_packaging.lo(j,kall);
 oq72_local_crop_prod(t,j,kall,"lower")               = q72_local_crop_prod.lo(j,kall);
 oq72_local_rough_prod(t,j,kres,"lower")              = q72_local_rough_prod.lo(j,kres);
 oq72_rural_demand_subs(t,j,kall,"lower")             = q72_rural_demand_subs.lo(j,kall);
 oq72_rural_demand_ruminant_feed(t,j,kres,"lower")    = q72_rural_demand_ruminant_feed.lo(j,kres);
 oq72_urban_demand_local(t,j,kall,"lower")            = q72_urban_demand_local.lo(j,kall);
 oq72_agg_pack_prim(t,j,kall,"lower")                 = q72_agg_pack_prim.lo(j,kall);
 oq72_agg_pack_nonprim(t,j,kall,"lower")              = q72_agg_pack_nonprim.lo(j,kall);
*##################### R SECTION END (OUTPUT DEFINITIONS) ######################

