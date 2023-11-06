
*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/72_local_demand/off/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/72_local_demand/off/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/72_local_demand/off/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/72_local_demand/off/equations.gms"
$Ifi "%phase%" == "preloop" $include "./modules/72_local_demand/off/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/72_local_demand/off/presolve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/72_local_demand/off/postsolve.gms"
*######################## R SECTION END (PHASES) ###############################
