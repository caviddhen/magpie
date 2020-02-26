
*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/10_land/landloss_feb20/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/10_land/landloss_feb20/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/10_land/landloss_feb20/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/10_land/landloss_feb20/equations.gms"
$Ifi "%phase%" == "scaling" $include "./modules/10_land/landloss_feb20/scaling.gms"
$Ifi "%phase%" == "preloop" $include "./modules/10_land/landloss_feb20/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/10_land/landloss_feb20/presolve.gms"
$Ifi "%phase%" == "solve" $include "./modules/10_land/landloss_feb20/solve.gms"
$Ifi "%phase%" == "intersolve" $include "./modules/10_land/landloss_feb20/intersolve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/10_land/landloss_feb20/postsolve.gms"
$Ifi "%phase%" == "nl_fix" $include "./modules/10_land/landloss_feb20/nl_fix.gms"
$Ifi "%phase%" == "nl_release" $include "./modules/10_land/landloss_feb20/nl_release.gms"
$Ifi "%phase%" == "nl_relax" $include "./modules/10_land/landloss_feb20/nl_relax.gms"
*######################## R SECTION END (PHASES) ###############################
