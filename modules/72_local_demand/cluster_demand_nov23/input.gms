scalars
s72_packaging_costs          Packaging cost add-on for products exported from cluster        / 10 /
s72_aggr_costs               Packaging cost add-on for products exported from rural to urban        / 5 /
s72_deg_industr              Degree of industrialization (scalar for reducing current default inputs) / 10 /
s72_cost_increase            Scalar for increasing default input costs / 1 /
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

