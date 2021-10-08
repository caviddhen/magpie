
*#################### R SECTION START (OUTPUT DEFINITIONS) #####################
 ov40_tfood(t,j,kfop,dir,urb,"marginal")   = v40_tfood.m(j,kfop,dir,urb);
 ov40_tfeed(t,j,kfeed,dir,"marginal")      = v40_tfeed.m(j,kfeed,dir);
 ov40_tprod_food(t,j,k,"marginal")         = v40_tprod_food.m(j,k);
 ov40_tprod_feed(t,j,k,"marginal")         = v40_tprod_feed.m(j,k);
 ov_cost_transp(t,j,k,"marginal")          = vm_cost_transp.m(j,k);
 oq40_local_food(t,j,kfop,"marginal")      = q40_local_food.m(j,kfop);
 oq40_feed_liv(t,j,kfeed,"marginal")       = q40_feed_liv.m(j,kfeed);
 oq40_transport_food(t,j,kfop,"marginal")  = q40_transport_food.m(j,kfop);
 oq40_transport_feed(t,j,kfeed,"marginal") = q40_transport_feed.m(j,kfeed);
 oq40_cost_transport(t,j,k,"marginal")     = q40_cost_transport.m(j,k);
 ov40_tfood(t,j,kfop,dir,urb,"level")      = v40_tfood.l(j,kfop,dir,urb);
 ov40_tfeed(t,j,kfeed,dir,"level")         = v40_tfeed.l(j,kfeed,dir);
 ov40_tprod_food(t,j,k,"level")            = v40_tprod_food.l(j,k);
 ov40_tprod_feed(t,j,k,"level")            = v40_tprod_feed.l(j,k);
 ov_cost_transp(t,j,k,"level")             = vm_cost_transp.l(j,k);
 oq40_local_food(t,j,kfop,"level")         = q40_local_food.l(j,kfop);
 oq40_feed_liv(t,j,kfeed,"level")          = q40_feed_liv.l(j,kfeed);
 oq40_transport_food(t,j,kfop,"level")     = q40_transport_food.l(j,kfop);
 oq40_transport_feed(t,j,kfeed,"level")    = q40_transport_feed.l(j,kfeed);
 oq40_cost_transport(t,j,k,"level")        = q40_cost_transport.l(j,k);
 ov40_tfood(t,j,kfop,dir,urb,"upper")      = v40_tfood.up(j,kfop,dir,urb);
 ov40_tfeed(t,j,kfeed,dir,"upper")         = v40_tfeed.up(j,kfeed,dir);
 ov40_tprod_food(t,j,k,"upper")            = v40_tprod_food.up(j,k);
 ov40_tprod_feed(t,j,k,"upper")            = v40_tprod_feed.up(j,k);
 ov_cost_transp(t,j,k,"upper")             = vm_cost_transp.up(j,k);
 oq40_local_food(t,j,kfop,"upper")         = q40_local_food.up(j,kfop);
 oq40_feed_liv(t,j,kfeed,"upper")          = q40_feed_liv.up(j,kfeed);
 oq40_transport_food(t,j,kfop,"upper")     = q40_transport_food.up(j,kfop);
 oq40_transport_feed(t,j,kfeed,"upper")    = q40_transport_feed.up(j,kfeed);
 oq40_cost_transport(t,j,k,"upper")        = q40_cost_transport.up(j,k);
 ov40_tfood(t,j,kfop,dir,urb,"lower")      = v40_tfood.lo(j,kfop,dir,urb);
 ov40_tfeed(t,j,kfeed,dir,"lower")         = v40_tfeed.lo(j,kfeed,dir);
 ov40_tprod_food(t,j,k,"lower")            = v40_tprod_food.lo(j,k);
 ov40_tprod_feed(t,j,k,"lower")            = v40_tprod_feed.lo(j,k);
 ov_cost_transp(t,j,k,"lower")             = vm_cost_transp.lo(j,k);
 oq40_local_food(t,j,kfop,"lower")         = q40_local_food.lo(j,kfop);
 oq40_feed_liv(t,j,kfeed,"lower")          = q40_feed_liv.lo(j,kfeed);
 oq40_transport_food(t,j,kfop,"lower")     = q40_transport_food.lo(j,kfop);
 oq40_transport_feed(t,j,kfeed,"lower")    = q40_transport_feed.lo(j,kfeed);
 oq40_cost_transport(t,j,k,"lower")        = q40_cost_transport.lo(j,k);
*##################### R SECTION END (OUTPUT DEFINITIONS) ######################

