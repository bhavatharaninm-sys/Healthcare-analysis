Create database year2017;
use year2017;
rename table `2017.q3` to 2017_q3;
desc 2017_q1;
create view Year_2017 as select * from 2017_q1 union select * from 2017_q2 union select * from 2017_q3 union select * from 2017_q4;
select * from 2017_q4;
select * from year_2017;
desc year_2017;
#Total Revenue
select sum(grip_tot) + sum(grop_tot) as Total_Revenue from year_2017;

#Gross Inpatient Revenue
select sum(grip_tot) from year_2017;

#Gross Outpatient Revenue
select sum(grop_tot) from year_2017;

#Total available beds
select sum(avl_beds) from year_2017;

#Total staff beds
select sum(stf_beds) from year_2017;

#Total Licensed Beds
select sum(lic_beds) from year_2017;



