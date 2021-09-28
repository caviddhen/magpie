
p40_dem_food_cell(t, j,kall)          =
          (sum(cell(i,j),(pm_kcal_pc_calibrated(t,i,kfo) * 365)) * im_pop_grid(t,j)) /
               (fm_nutrition_attributes(t,kfo,"kcal") * 10**6)
                ;

*' maybe put sum over entire top of division

vm_costs_additional_mon.fx(i)=0;
