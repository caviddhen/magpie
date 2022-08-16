
*#################### R SECTION START (OUTPUT DEFINITIONS) #####################
 ov40_dem_for_local(t,j,k,urb,"marginal")    = v40_dem_for_local.m(j,k,urb);
 ov40_cell_import(t,j,k,urb,"marginal")      = v40_cell_import.m(j,k,urb);
 ov_cost_transp(t,j,kall,"marginal")         = vm_cost_transp.m(j,kall);
 ov_cost_packaging(t,j,k,"marginal")         = vm_cost_packaging.m(j,k);
 oq40_local_food(t,j,k,"marginal")           = q40_local_food.m(j,k);
 oq40_rural_demand(t,j,k,"marginal")         = q40_rural_demand.m(j,k);
 oq40_urban_demand(t,j,k,"marginal")         = q40_urban_demand.m(j,k);
 oq40_packaging_food(t,j,k,"marginal")       = q40_packaging_food.m(j,k);
 oq40_cost_transport_prim(t,j,k,"marginal")  = q40_cost_transport_prim.m(j,k);
 oq40_cost_transport_ksd(t,j,ksd,"marginal") = q40_cost_transport_ksd.m(j,ksd);
 ov40_dem_for_local(t,j,k,urb,"level")       = v40_dem_for_local.l(j,k,urb);
 ov40_cell_import(t,j,k,urb,"level")         = v40_cell_import.l(j,k,urb);
 ov_cost_transp(t,j,kall,"level")            = vm_cost_transp.l(j,kall);
 ov_cost_packaging(t,j,k,"level")            = vm_cost_packaging.l(j,k);
 oq40_local_food(t,j,k,"level")              = q40_local_food.l(j,k);
 oq40_rural_demand(t,j,k,"level")            = q40_rural_demand.l(j,k);
 oq40_urban_demand(t,j,k,"level")            = q40_urban_demand.l(j,k);
 oq40_packaging_food(t,j,k,"level")          = q40_packaging_food.l(j,k);
 oq40_cost_transport_prim(t,j,k,"level")     = q40_cost_transport_prim.l(j,k);
 oq40_cost_transport_ksd(t,j,ksd,"level")    = q40_cost_transport_ksd.l(j,ksd);
 ov40_dem_for_local(t,j,k,urb,"upper")       = v40_dem_for_local.up(j,k,urb);
 ov40_cell_import(t,j,k,urb,"upper")         = v40_cell_import.up(j,k,urb);
 ov_cost_transp(t,j,kall,"upper")            = vm_cost_transp.up(j,kall);
 ov_cost_packaging(t,j,k,"upper")            = vm_cost_packaging.up(j,k);
 oq40_local_food(t,j,k,"upper")              = q40_local_food.up(j,k);
 oq40_rural_demand(t,j,k,"upper")            = q40_rural_demand.up(j,k);
 oq40_urban_demand(t,j,k,"upper")            = q40_urban_demand.up(j,k);
 oq40_packaging_food(t,j,k,"upper")          = q40_packaging_food.up(j,k);
 oq40_cost_transport_prim(t,j,k,"upper")     = q40_cost_transport_prim.up(j,k);
 oq40_cost_transport_ksd(t,j,ksd,"upper")    = q40_cost_transport_ksd.up(j,ksd);
 ov40_dem_for_local(t,j,k,urb,"lower")       = v40_dem_for_local.lo(j,k,urb);
 ov40_cell_import(t,j,k,urb,"lower")         = v40_cell_import.lo(j,k,urb);
 ov_cost_transp(t,j,kall,"lower")            = vm_cost_transp.lo(j,kall);
 ov_cost_packaging(t,j,k,"lower")            = vm_cost_packaging.lo(j,k);
 oq40_local_food(t,j,k,"lower")              = q40_local_food.lo(j,k);
 oq40_rural_demand(t,j,k,"lower")            = q40_rural_demand.lo(j,k);
 oq40_urban_demand(t,j,k,"lower")            = q40_urban_demand.lo(j,k);
 oq40_packaging_food(t,j,k,"lower")          = q40_packaging_food.lo(j,k);
 oq40_cost_transport_prim(t,j,k,"lower")     = q40_cost_transport_prim.lo(j,k);
 oq40_cost_transport_ksd(t,j,ksd,"lower")    = q40_cost_transport_ksd.lo(j,ksd);
*##################### R SECTION END (OUTPUT DEFINITIONS) ######################

