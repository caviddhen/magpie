scalars
s40_pasture_transport_costs  Transport costs for pasture (USD05MER per tDM per min)     / 0 /
s40_packaging_costs          Packaging cost add-on for products exported from cluster  / 100 /
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
$include "./modules/40_transport/disaggr/input/f40_transport_costs.csv"
$offdelim
/;

f40_transport_costs("pasture") = s40_pasture_transport_costs;
