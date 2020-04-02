
*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/10_land/landloss_feb20/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/10_land/landloss_feb20/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/10_land/landloss_feb20/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/10_land/landloss_feb20/equations.gms"
$Ifi "%phase%" == "scaling" $include "./modules/10_land/landloss_feb20/scaling.gms"
$Ifi "%phase%" == "preloop" $include "./modules/10_land/landloss_feb20/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/10_land/landloss_feb20/presolve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/10_land/landloss_feb20/postsolve.gms"
*######################## R SECTION END (PHASES) ###############################
