
i72_dem_food_cell(t, j, kfo, urb)         =
        (i72_urban_shr(t, j, urb) * im_pop_grid(t,j) * sum(cell(i,j),(pm_kcal_pc_calibrated(t, i, kfo)* 365))) /
               (fm_nutrition_attributes(t, kfo, "kcal") * 10**6)
                ;

v72_dem_for_local.fx(j, k, urb, "industr") = 0; 


*' fix costs and deg of industrialization scaledown until sm_fix_SSP2

  if(m_year(t) <= sm_fix_SSP2,
   s72_deg_industr = 1;
   s72_cost_increase = 1;            
 else 
  s72_deg_industr = s72_deg_industr;
   s72_cost_increase = s72_cost_increase;    
  );
