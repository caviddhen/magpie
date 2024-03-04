
*#################### R SECTION START (OUTPUT DEFINITIONS) #####################
 ov40_local_demand(t,j,kall,"marginal")               = v40_local_demand.m(j,kall);
 ov40_rural_transport(t,j,kall,fvc,"marginal")        = v40_rural_transport.m(j,kall,fvc);
 ov_cost_packaging(t,i,kall,"marginal")               = vm_cost_packaging.m(i,kall);
 ov_cost_transp(t,j,kall,"marginal")                  = vm_cost_transp.m(j,kall);
 oq40_local_crop_prod(t,j,kall,"marginal")            = q40_local_crop_prod.m(j,kall);
 oq40_local_rough_prod(t,j,kres,"marginal")           = q40_local_rough_prod.m(j,kres);
 oq40_rural_demand_trad(t,j,kall,"marginal")          = q40_rural_demand_trad.m(j,kall);
 oq40_rural_demand_ruminant_feed_trad(t,j,"marginal") = q40_rural_demand_ruminant_feed_trad.m(j);
 oq40_rural_demand_ind(t,j,kall,"marginal")           = q40_rural_demand_ind.m(j,kall);
 oq40_rural_demand_ruminant_feed_ind(t,j,"marginal")  = q40_rural_demand_ruminant_feed_ind.m(j);
 oq40_mkt_prim(t,i,kall,"marginal")                   = q40_mkt_prim.m(i,kall);
 oq40_mkt_res(t,i,kall,"marginal")                    = q40_mkt_res.m(i,kall);
 oq40_mkt_nonprim(t,i,kall,"marginal")                = q40_mkt_nonprim.m(i,kall);
 oq40_cost_transport(t,j,k,"marginal")                = q40_cost_transport.m(j,k);
 oq40_cost_transport_sec(t,j,ksd,"marginal")          = q40_cost_transport_sec.m(j,ksd);
 ov40_local_demand(t,j,kall,"level")                  = v40_local_demand.l(j,kall);
 ov40_rural_transport(t,j,kall,fvc,"level")           = v40_rural_transport.l(j,kall,fvc);
 ov_cost_packaging(t,i,kall,"level")                  = vm_cost_packaging.l(i,kall);
 ov_cost_transp(t,j,kall,"level")                     = vm_cost_transp.l(j,kall);
 oq40_local_crop_prod(t,j,kall,"level")               = q40_local_crop_prod.l(j,kall);
 oq40_local_rough_prod(t,j,kres,"level")              = q40_local_rough_prod.l(j,kres);
 oq40_rural_demand_trad(t,j,kall,"level")             = q40_rural_demand_trad.l(j,kall);
 oq40_rural_demand_ruminant_feed_trad(t,j,"level")    = q40_rural_demand_ruminant_feed_trad.l(j);
 oq40_rural_demand_ind(t,j,kall,"level")              = q40_rural_demand_ind.l(j,kall);
 oq40_rural_demand_ruminant_feed_ind(t,j,"level")     = q40_rural_demand_ruminant_feed_ind.l(j);
 oq40_mkt_prim(t,i,kall,"level")                      = q40_mkt_prim.l(i,kall);
 oq40_mkt_res(t,i,kall,"level")                       = q40_mkt_res.l(i,kall);
 oq40_mkt_nonprim(t,i,kall,"level")                   = q40_mkt_nonprim.l(i,kall);
 oq40_cost_transport(t,j,k,"level")                   = q40_cost_transport.l(j,k);
 oq40_cost_transport_sec(t,j,ksd,"level")             = q40_cost_transport_sec.l(j,ksd);
 ov40_local_demand(t,j,kall,"upper")                  = v40_local_demand.up(j,kall);
 ov40_rural_transport(t,j,kall,fvc,"upper")           = v40_rural_transport.up(j,kall,fvc);
 ov_cost_packaging(t,i,kall,"upper")                  = vm_cost_packaging.up(i,kall);
 ov_cost_transp(t,j,kall,"upper")                     = vm_cost_transp.up(j,kall);
 oq40_local_crop_prod(t,j,kall,"upper")               = q40_local_crop_prod.up(j,kall);
 oq40_local_rough_prod(t,j,kres,"upper")              = q40_local_rough_prod.up(j,kres);
 oq40_rural_demand_trad(t,j,kall,"upper")             = q40_rural_demand_trad.up(j,kall);
 oq40_rural_demand_ruminant_feed_trad(t,j,"upper")    = q40_rural_demand_ruminant_feed_trad.up(j);
 oq40_rural_demand_ind(t,j,kall,"upper")              = q40_rural_demand_ind.up(j,kall);
 oq40_rural_demand_ruminant_feed_ind(t,j,"upper")     = q40_rural_demand_ruminant_feed_ind.up(j);
 oq40_mkt_prim(t,i,kall,"upper")                      = q40_mkt_prim.up(i,kall);
 oq40_mkt_res(t,i,kall,"upper")                       = q40_mkt_res.up(i,kall);
 oq40_mkt_nonprim(t,i,kall,"upper")                   = q40_mkt_nonprim.up(i,kall);
 oq40_cost_transport(t,j,k,"upper")                   = q40_cost_transport.up(j,k);
 oq40_cost_transport_sec(t,j,ksd,"upper")             = q40_cost_transport_sec.up(j,ksd);
 ov40_local_demand(t,j,kall,"lower")                  = v40_local_demand.lo(j,kall);
 ov40_rural_transport(t,j,kall,fvc,"lower")           = v40_rural_transport.lo(j,kall,fvc);
 ov_cost_packaging(t,i,kall,"lower")                  = vm_cost_packaging.lo(i,kall);
 ov_cost_transp(t,j,kall,"lower")                     = vm_cost_transp.lo(j,kall);
 oq40_local_crop_prod(t,j,kall,"lower")               = q40_local_crop_prod.lo(j,kall);
 oq40_local_rough_prod(t,j,kres,"lower")              = q40_local_rough_prod.lo(j,kres);
 oq40_rural_demand_trad(t,j,kall,"lower")             = q40_rural_demand_trad.lo(j,kall);
 oq40_rural_demand_ruminant_feed_trad(t,j,"lower")    = q40_rural_demand_ruminant_feed_trad.lo(j);
 oq40_rural_demand_ind(t,j,kall,"lower")              = q40_rural_demand_ind.lo(j,kall);
 oq40_rural_demand_ruminant_feed_ind(t,j,"lower")     = q40_rural_demand_ruminant_feed_ind.lo(j);
 oq40_mkt_prim(t,i,kall,"lower")                      = q40_mkt_prim.lo(i,kall);
 oq40_mkt_res(t,i,kall,"lower")                       = q40_mkt_res.lo(i,kall);
 oq40_mkt_nonprim(t,i,kall,"lower")                   = q40_mkt_nonprim.lo(i,kall);
 oq40_cost_transport(t,j,k,"lower")                   = q40_cost_transport.lo(j,k);
 oq40_cost_transport_sec(t,j,ksd,"lower")             = q40_cost_transport_sec.lo(j,ksd);
*##################### R SECTION END (OUTPUT DEFINITIONS) ######################

