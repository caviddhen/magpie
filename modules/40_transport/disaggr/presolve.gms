
p40_dem_food_cell(j2,kfo)          =
                (sum(ct,im_pop_grid(ct,j2) *  sum( cell(i2,j2), p15_kcal_pc_calibrated(ct,j2,kfo)) * 365) /
                sum(ct,(f15_nutrition_attributes(ct,kfo,"kcal") * 10**6))
                ;

*' maybe put sum over entire top of division

vm_costs_additional_mon.fx(i)=0;
