
i72_dem_food_cell(t, j, kfo, urb)         =
        (i72_urban_shr(t, j, urb) * im_pop_grid(t,j) * sum(cell(i,j),(pm_kcal_pc_calibrated(t, i, kfo)* 365))) /
               (fm_nutrition_attributes(t, kfo, "kcal") * 10**6)
                ;

v72_dem_for_local.fx(j, k, urb, "industr") = 0; 
