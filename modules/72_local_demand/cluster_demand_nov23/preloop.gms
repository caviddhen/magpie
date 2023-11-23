

i72_urban_shr(t_all, j, "urban") = im_pop_urban_grid(t_all, j) / (im_pop_grid(t_all,j) + 0.00000001) ;
i72_urban_shr(t_all, j, "rural") = (im_pop_grid(t_all, j) -  im_pop_urban_grid(t_all, j)) / (im_pop_grid(t_all,j) + 0.00000001) ;



 i72_food_proc_demand(t_all, j, k) = sum(cell(i,j), (f72_food_proc_demand(k, "lic") 
                                       - (f72_food_proc_demand(k, "lic") - f72_food_proc_demand(k, "hic")) * im_development_state(t_all,i))) ;

 i72_feed_proc_demand(t_all, j, k) = sum(cell(i,j), (f72_feed_proc_demand(k, "lic") 
                                       - (f72_feed_proc_demand(k, "lic") - f72_feed_proc_demand(k, "hic")) * im_development_state(t_all,i))) ;

loop(t,
 if(m_year(t) <= sm_fix_SSP2,
   p72_deg_industr(t) = 1;
   p72_cost_increase(t) = 1;            
 else 
  p72_deg_industr(t) = s72_deg_industr;
  p72_cost_increase(t) = s72_cost_increase;    
  );
 );
