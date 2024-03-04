scalars
s40_pasture_transport_costs  Transport costs for pasture (USD05MER per tDM per min)     / 0 /
s40_packaging_costs          Packaging cost add-on for products exported from cluster        / 30 /
s40_aggr_costs               Packaging cost add-on for products exported from rural to urban        / 15 /
s40_deg_industr              Degree of industrialization (scalar for reducing current default inputs) / 10 /
s40_cost_increase            Scalar for increasing default input costs / 5 /
;

table f40_proc_demand(income, use, kall) Amount of processing required for low and high income countries (0-1)
$ondelim
$include "./modules/40_transport/clustertrade_jan24/input/f40_proc_demand.csv"
$offdelim
;

parameters
f40_distance(j) Transport distance to urban center (min)
/
$ondelim
$include "./modules/40_transport/input/transport_distance.cs2"
$offdelim
/
;

parameter f40_transport_costs(kall) Relative transport costs (USD05MER per tDM per min)
/
$ondelim
$include "./modules/40_transport/input/f40_transport_costs.csv"
$offdelim
/;

f40_transport_costs("pasture") = s40_pasture_transport_costs;
