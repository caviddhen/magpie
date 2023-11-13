scalars
s72_packaging_costs          Packaging cost add-on for products exported from cluster        / 30 /
s72_aggr_costs               Packaging cost add-on for products exported from rural to urban        / 15 /
s72_deg_industr              Degree of industrialization (scalar for reducing current default inputs) / 10 /
;

table f72_food_proc_demand(k, income) Amount of processing required for low and high income countries (0-1)
$ondelim
$include "./modules/72_local_demand/cluster_demand_nov23/input/f72_food_proc_demand.cs3"
$offdelim
;


table f72_feed_proc_demand(kall, income) Amount of processing required for low and high income countries (0-1)
$ondelim
$include "./modules/72_local_demand/cluster_demand_nov23/input/f72_food_proc_demand.cs3"
$offdelim
;

