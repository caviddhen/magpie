*' @description The disaggr realization is transported related.

*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/40_transport/disaggr/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/40_transport/disaggr/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/40_transport/disaggr/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/40_transport/disaggr/equations.gms"
$Ifi "%phase%" == "preloop" $include "./modules/40_transport/disaggr/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/40_transport/disaggr/presolve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/40_transport/disaggr/postsolve.gms"
*######################## R SECTION END (PHASES) ###############################
