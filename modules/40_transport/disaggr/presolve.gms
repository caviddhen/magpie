
p40_dem_food_cell(t, j,k)          =
          (sum(cell(i,j),(pm_kcal_pc_calibrated(t,i,kfo)$kall(k)* 365)) * im_pop_grid(t,j)) /
               (fm_nutrition_attributes(t,k,"kcal") * 10**6)
                ;

vm_costs_additional_mon.fx(i)=0;
