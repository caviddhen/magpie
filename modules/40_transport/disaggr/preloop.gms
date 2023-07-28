

i40_urban_shr(t_all, j, "urban") = im_pop_urban_grid(t_all, j) / (im_pop_grid(t_all,j) + 0.00000001) ;
i40_urban_shr(t_all, j, "rural") = (im_pop_grid(t_all, j) -  im_pop_urban_grid(t_all, j)) / (im_pop_grid(t_all,j) + 0.00000001) ;



 i40_food_proc_demand(t_all, j, k) = sum(cell(i,j), (f40_food_proc_demand(k, "lic") 
                                       - (f40_food_proc_demand(k, "lic") - f40_food_proc_demand(k, "hic")) * im_development_state(t_all,i))) ;

 i40_feed_proc_demand(t_all, j, k) = sum(cell(i,j), (f40_feed_proc_demand(k, "lic") 
                                       - (f40_feed_proc_demand(k, "lic") - f40_feed_proc_demand(k, "hic")) * im_development_state(t_all,i))) ;

