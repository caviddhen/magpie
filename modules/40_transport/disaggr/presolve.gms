

i40_dem_food_cell(t, j, kfo, urb)         =
        (i40_urban_shr(t, j, urb) * im_pop_grid(t,j) * sum(cell(i,j),(pm_kcal_pc_calibrated(t, i, kfo)* 365))) /
               (fm_nutrition_attributes(t, kfo, "kcal") * 10**6)
                ;

vm_costs_additional_mon.fx(i)=0;
