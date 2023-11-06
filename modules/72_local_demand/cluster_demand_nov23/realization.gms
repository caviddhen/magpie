*' @description The disaggr realization is transported related.

*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/72_local_demand/cluster_demand_nov23/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/72_local_demand/cluster_demand_nov23/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/72_local_demand/cluster_demand_nov23/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/72_local_demand/cluster_demand_nov23/equations.gms"
$Ifi "%phase%" == "preloop" $include "./modules/72_local_demand/cluster_demand_nov23/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/72_local_demand/cluster_demand_nov23/presolve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/72_local_demand/cluster_demand_nov23/postsolve.gms"
*######################## R SECTION END (PHASES) ###############################
