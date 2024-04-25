*** |  (C) 2008-2024 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

*#################### R SECTION START (OUTPUT DEFINITIONS) #####################
 ov21_trade(t,i_ex,i_im,k_trade,"marginal")      = v21_trade.m(i_ex,i_im,k_trade);
 ov21_cost_tariff_reg(t,i,k_trade,"marginal")    = v21_cost_tariff_reg.m(i,k_trade);
 ov21_cost_margin_reg(t,i,k_trade,"marginal")    = v21_cost_margin_reg.m(i,k_trade);
 ov_cost_trade(t,i,"marginal")                   = vm_cost_trade.m(i);
 ov21_cost_trade_reg(t,i,k_trade,"marginal")     = v21_cost_trade_reg.m(i,k_trade);
 ov21_total(t,k_trade,"marginal")                = v21_total.m(k_trade);
 oq21_trade_glo(t,k_trade,"marginal")            = q21_trade_glo.m(k_trade);
 oq21_total(t,k_trade,"marginal")                = q21_total.m(k_trade);
 oq21_notrade(t,h,k_notrade,"marginal")          = q21_notrade.m(h,k_notrade);
 oq21_trade_bilat(t,h,k_trade,"marginal")        = q21_trade_bilat.m(h,k_trade);
 oq21_trade_hist(t,i_ex,i_im,k_trade,"marginal") = q21_trade_hist.m(i_ex,i_im,k_trade);
 oq21_costs_tariffs(t,i,k_trade,"marginal")      = q21_costs_tariffs.m(i,k_trade);
 oq21_costs_margins(t,i,k_trade,"marginal")      = q21_costs_margins.m(i,k_trade);
 oq21_cost_trade_reg(t,i,k_trade,"marginal")     = q21_cost_trade_reg.m(i,k_trade);
 oq21_cost_trade(t,i,"marginal")                 = q21_cost_trade.m(i);
 ov21_trade(t,i_ex,i_im,k_trade,"level")         = v21_trade.l(i_ex,i_im,k_trade);
 ov21_cost_tariff_reg(t,i,k_trade,"level")       = v21_cost_tariff_reg.l(i,k_trade);
 ov21_cost_margin_reg(t,i,k_trade,"level")       = v21_cost_margin_reg.l(i,k_trade);
 ov_cost_trade(t,i,"level")                      = vm_cost_trade.l(i);
 ov21_cost_trade_reg(t,i,k_trade,"level")        = v21_cost_trade_reg.l(i,k_trade);
 ov21_total(t,k_trade,"level")                   = v21_total.l(k_trade);
 oq21_trade_glo(t,k_trade,"level")               = q21_trade_glo.l(k_trade);
 oq21_total(t,k_trade,"level")                   = q21_total.l(k_trade);
 oq21_notrade(t,h,k_notrade,"level")             = q21_notrade.l(h,k_notrade);
 oq21_trade_bilat(t,h,k_trade,"level")           = q21_trade_bilat.l(h,k_trade);
 oq21_trade_hist(t,i_ex,i_im,k_trade,"level")    = q21_trade_hist.l(i_ex,i_im,k_trade);
 oq21_costs_tariffs(t,i,k_trade,"level")         = q21_costs_tariffs.l(i,k_trade);
 oq21_costs_margins(t,i,k_trade,"level")         = q21_costs_margins.l(i,k_trade);
 oq21_cost_trade_reg(t,i,k_trade,"level")        = q21_cost_trade_reg.l(i,k_trade);
 oq21_cost_trade(t,i,"level")                    = q21_cost_trade.l(i);
 ov21_trade(t,i_ex,i_im,k_trade,"upper")         = v21_trade.up(i_ex,i_im,k_trade);
 ov21_cost_tariff_reg(t,i,k_trade,"upper")       = v21_cost_tariff_reg.up(i,k_trade);
 ov21_cost_margin_reg(t,i,k_trade,"upper")       = v21_cost_margin_reg.up(i,k_trade);
 ov_cost_trade(t,i,"upper")                      = vm_cost_trade.up(i);
 ov21_cost_trade_reg(t,i,k_trade,"upper")        = v21_cost_trade_reg.up(i,k_trade);
 ov21_total(t,k_trade,"upper")                   = v21_total.up(k_trade);
 oq21_trade_glo(t,k_trade,"upper")               = q21_trade_glo.up(k_trade);
 oq21_total(t,k_trade,"upper")                   = q21_total.up(k_trade);
 oq21_notrade(t,h,k_notrade,"upper")             = q21_notrade.up(h,k_notrade);
 oq21_trade_bilat(t,h,k_trade,"upper")           = q21_trade_bilat.up(h,k_trade);
 oq21_trade_hist(t,i_ex,i_im,k_trade,"upper")    = q21_trade_hist.up(i_ex,i_im,k_trade);
 oq21_costs_tariffs(t,i,k_trade,"upper")         = q21_costs_tariffs.up(i,k_trade);
 oq21_costs_margins(t,i,k_trade,"upper")         = q21_costs_margins.up(i,k_trade);
 oq21_cost_trade_reg(t,i,k_trade,"upper")        = q21_cost_trade_reg.up(i,k_trade);
 oq21_cost_trade(t,i,"upper")                    = q21_cost_trade.up(i);
 ov21_trade(t,i_ex,i_im,k_trade,"lower")         = v21_trade.lo(i_ex,i_im,k_trade);
 ov21_cost_tariff_reg(t,i,k_trade,"lower")       = v21_cost_tariff_reg.lo(i,k_trade);
 ov21_cost_margin_reg(t,i,k_trade,"lower")       = v21_cost_margin_reg.lo(i,k_trade);
 ov_cost_trade(t,i,"lower")                      = vm_cost_trade.lo(i);
 ov21_cost_trade_reg(t,i,k_trade,"lower")        = v21_cost_trade_reg.lo(i,k_trade);
 ov21_total(t,k_trade,"lower")                   = v21_total.lo(k_trade);
 oq21_trade_glo(t,k_trade,"lower")               = q21_trade_glo.lo(k_trade);
 oq21_total(t,k_trade,"lower")                   = q21_total.lo(k_trade);
 oq21_notrade(t,h,k_notrade,"lower")             = q21_notrade.lo(h,k_notrade);
 oq21_trade_bilat(t,h,k_trade,"lower")           = q21_trade_bilat.lo(h,k_trade);
 oq21_trade_hist(t,i_ex,i_im,k_trade,"lower")    = q21_trade_hist.lo(i_ex,i_im,k_trade);
 oq21_costs_tariffs(t,i,k_trade,"lower")         = q21_costs_tariffs.lo(i,k_trade);
 oq21_costs_margins(t,i,k_trade,"lower")         = q21_costs_margins.lo(i,k_trade);
 oq21_cost_trade_reg(t,i,k_trade,"lower")        = q21_cost_trade_reg.lo(i,k_trade);
 oq21_cost_trade(t,i,"lower")                    = q21_cost_trade.lo(i);
*##################### R SECTION END (OUTPUT DEFINITIONS) ######################
