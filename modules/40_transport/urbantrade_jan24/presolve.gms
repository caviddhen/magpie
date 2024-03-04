
i40_dem_food_cell(t, j, kfo)         =
     (im_pop_grid(t,j) * sum(cell(i,j),(pm_kcal_pc_calibrated(t, i, kfo)* 365))) /
               (fm_nutrition_attributes(t, kfo, "kcal") * 10**6)
                ;
