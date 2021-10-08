*' Get urban share

i40_urban_shr(t_all, j, urb) = sum(cell(i,j), (im_pop_urban(t_all, i) / im_pop(t_all, i)))

*' use regional first
*' p40_food_demand_cell.fx(j,kall) = sum(cell(i,j), vm_dem_food(i2,kfo) ;

*' p40_food_demand_cell.fx(j,kall) = sum(cell(iso,j), p15_kcal_pc(i,kall)) ;

*' iso to j conversion? matrix of j to iso . start with regional ? divide by population grid pop
