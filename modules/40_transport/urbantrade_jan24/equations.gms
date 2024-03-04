*' @equations

*' local production needs to be greater than traditional rural demand for food and feed (kres)

q40_local_crop_prod(j2, k) ..
                  vm_prod(j2,k)
                   =g=
                  v40_local_demand(j2, k);

 q40_local_rough_prod(j2, kres) ..
             vm_prod_res(j2,kres) 
             =g=
             v40_local_demand(j2, kres);


*' Rural demand is the cluster-level food and feed demand, multiplied by the 'traditional factor' (i40_proc_demand_shr)
*' It can be reduced by transporting more products from urban to rural (v4)_rural_transport

q40_rural_demand_trad(j2, k_nopast) ..
                   v40_local_demand(j2, k_nopast)
                   =e=
                     sum(ct,
                           i40_dem_food_cell(ct,j2, k_nopast) *  i40_rural_shr(ct, j2)  * (1 - (i40_proc_demand_shr(ct, j2, "food", k_nopast))/p40_deg_industr(ct)) 
                        + sum(kli, vm_prod(j2,kli) * sum(cell(i2,j2),im_feed_baskets(ct,i2,kli,k_nopast)))
                            * (1 - (i40_proc_demand_shr(ct, j2, "feed", k_nopast)/p40_deg_industr(ct)) ))
                   - v40_rural_transport(j2, k_nopast, "trad")
                   ;
 
q40_rural_demand_ruminant_feed_trad(j2) ..
                   sum(k_respasture, v40_local_demand(j2, k_respasture))
                   =e=
                   sum(ct, 
                     sum(k_respasture,
                       sum(kli_rum, 
                        vm_prod(j2,kli_rum) * sum(cell(i2,j2),im_feed_baskets(ct,i2,kli_rum,k_respasture)))
                     * (1 - (i40_proc_demand_shr(ct, j2, "feed", k_respasture)/p40_deg_industr(ct)))) )
                    - v40_rural_transport(j2, "pasture", "trad")
                   ;

*' need to define industrial and all need to be transported, as just the total industrial demand (no subtracting)
q40_rural_demand_ind(j2, k_nopast) .. 
           v40_rural_transport(j2, k_nopast, "industr")
                   =e=
                     sum(ct,
                           i40_dem_food_cell(ct,j2, k_nopast) * i40_rural_shr(ct, j2) * ((i40_proc_demand_shr(ct, j2, "food", k_nopast))/p40_deg_industr(ct)) 
                        + sum(kli, vm_prod(j2,kli) * sum(cell(i2,j2),im_feed_baskets(ct,i2,kli,k_nopast)))
                            * ((i40_proc_demand_shr(ct, j2, "feed", k_nopast)/p40_deg_industr(ct)) ))
                   ;


q40_rural_demand_ruminant_feed_ind(j2) ..
                   sum(k_respasture, v40_rural_transport(j2, k_respasture, "industr"))
                   =e=
                   sum(ct, 
                     sum(k_respasture,
                       sum(kli_rum, 
                        vm_prod(j2,kli_rum) * sum(cell(i2,j2),im_feed_baskets(ct,i2,kli_rum,k_respasture)))
                     * ((i40_proc_demand_shr(ct, j2, "feed", k_respasture)/p40_deg_industr(ct)))) )
                           ;
*' rename i40_proc_demand_shr


*' Rural demand for primary products does not see marketing costs.
 q40_mkt_prim(i2,k) ..
                  vm_cost_packaging(i2,k)  =g=
             sum(cell(i2,j2), 
                 (vm_prod(j2, k) - sum((urb, fvc), v40_local_demand(j2,k)))
                 * s40_mkt_costs * sum(ct, p40_cost_increase(ct)))
                   ;

*' Same with residues
 q40_mkt_res(i2,kres) ..
                  vm_cost_packaging(i2,kres)  =g=
             sum(cell(i2,j2), 
                 (vm_prod_res(j2, kres) - sum((urb, fvc), v40_local_demand(j2,kres)))
                 * s40_mkt_costs * sum(ct, p40_cost_increase(ct)))
                   ;

*' secondary products see marketing costs
 q40_mkt_nonprim(i2,k_sec) ..
                  vm_cost_packaging(i2, k_sec)  =g=
                vm_prod_reg(i2, k_sec) * s40_mkt_costs * sum(ct, p40_cost_increase(ct))
                   ;

*' No transport costs if consumed in rural location, but extra transport costs if transported back to rural

q40_cost_transport(j2,k) ..
  vm_cost_transp(j2,k) =e= (vm_prod(j2,k) - v40_local_demand(j2,k) +  sum(fvc, v40_rural_transport(j2, k, fvc)))
                           * f40_distance(j2)
                           * f40_transport_costs(k);

*' transport costs for secondary products only if it is transported back to 

q40_cost_transport_sec(j2,ksd) ..
  vm_cost_transp(j2,ksd) =g= sum(fvc, v40_rural_transport(j2, ksd, fvc) - v40_local_demand(j2, ksd))
                           * f40_distance(j2)
                           * f40_transport_costs_sec(ksd);
                          
