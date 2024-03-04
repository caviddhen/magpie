

i40_urban_shr(t_all, j, "urban") = im_pop_urban_grid(t_all, j) / (im_pop_grid(t_all,j) + 0.00000001) ;
i40_urban_shr(t_all, j, "rural") = (im_pop_grid(t_all, j) -  im_pop_urban_grid(t_all, j)) / (im_pop_grid(t_all,j) + 0.00000001) ;



 i40_proc_demand(t_all, j, use, kall) = sum(cell(i,j), (f40_proc_demand("lic", use, kall) 
                                       - (f40_proc_demand("lic", use, kall) - f40_proc_demand("hic", use, kall)) * im_development_state(t_all,i))) ;

loop(t,
 if(m_year(t) <= sm_fix_SSP2,
   p40_deg_industr(t) = 1;
   p40_cost_increase(t) = 1;            
 else 
  p40_deg_industr(t) = s40_deg_industr;
  p40_cost_increase(t) = s40_cost_increase;    
  );
 );
