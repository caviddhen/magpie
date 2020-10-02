
*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/38_factor_costs/labour_prod/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/38_factor_costs/labour_prod/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/38_factor_costs/labour_prod/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/38_factor_costs/labour_prod/equations.gms"
$Ifi "%phase%" == "scaling" $include "./modules/38_factor_costs/labour_prod/scaling.gms"
$Ifi "%phase%" == "start" $include "./modules/38_factor_costs/labour_prod/start.gms"
$Ifi "%phase%" == "preloop" $include "./modules/38_factor_costs/labour_prod/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/38_factor_costs/labour_prod/presolve.gms"
$Ifi "%phase%" == "solve" $include "./modules/38_factor_costs/labour_prod/solve.gms"
$Ifi "%phase%" == "intersolve" $include "./modules/38_factor_costs/labour_prod/intersolve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/38_factor_costs/labour_prod/postsolve.gms"
$Ifi "%phase%" == "nl_fix" $include "./modules/38_factor_costs/labour_prod/nl_fix.gms"
$Ifi "%phase%" == "nl_release" $include "./modules/38_factor_costs/labour_prod/nl_release.gms"
$Ifi "%phase%" == "nl_relax" $include "./modules/38_factor_costs/labour_prod/nl_relax.gms"
*######################## R SECTION END (PHASES) ###############################
