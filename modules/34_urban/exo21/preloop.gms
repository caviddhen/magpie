*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

* get the scenario GDP & Populaiton data for iso countries
loop(t_all,
 if(m_year(t_all) <= sm_fix_SSP2,
  i34_urban_area(j) = f34_UrbanLand_c200(j,"SSP2");
else
i34_urban_area(j) = f34_UrbanLand_c200(j,"%c09_gdp_scenario%");
 );
);

* get the scenario GDP & Populaiton data for MAgPIE regions
im_urban_area_reg(i) = sum(cell(i,j), im_urban_area(j))

* GPD per capita for MAgPIE regions
 im_gdp_pc_mer(t_all,i)$(
     sum(i_to_iso(i,iso),
       im_pop_iso(t_all,iso)
     ) >0 ) =
                             sum(i_to_iso(i,iso),
                               i09_gdp_mer_iso(t_all,iso)
                             ) / sum(i_to_iso(i,iso),
                                 im_pop_iso(t_all,iso)
                             );

 i09_gdp_pc_ppp(t_all,i)$(
     sum(i_to_iso(i,iso),
       im_pop_iso(t_all,iso)
     ) >0 ) =
                             sum(i_to_iso(i,iso),
                                i09_gdp_ppp_iso(t_all,iso)
                             ) / sum(i_to_iso(i,iso),
                                 im_pop_iso(t_all,iso)
                             );

* GDP per capita for ISO countries
im_gdp_pc_ppp_iso(t_all,iso)=0;
im_gdp_pc_ppp_iso(t_all,iso)$(i09_gdp_ppp_iso(t_all,iso)*im_pop_iso(t_all,iso)>0)  = i09_gdp_ppp_iso(t_all,iso)/im_pop_iso(t_all,iso);
im_gdp_pc_ppp_iso(t_all,iso)$(im_gdp_pc_ppp_iso(t_all,iso)=0) = sum(i_to_iso(i,iso), i09_gdp_pc_ppp(t_all,i));
