*' @description The disaggr realization is transported related.

*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/40_transport/urbantrade_jan24/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/40_transport/urbantrade_jan24/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/40_transport/urbantrade_jan24/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/40_transport/urbantrade_jan24/equations.gms"
$Ifi "%phase%" == "preloop" $include "./modules/40_transport/urbantrade_jan24/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/40_transport/urbantrade_jan24/presolve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/40_transport/urbantrade_jan24/postsolve.gms"
*######################## R SECTION END (PHASES) ###############################
