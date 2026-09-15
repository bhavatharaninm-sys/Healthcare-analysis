CREATE DATABASE year2017;
USE year2017;

RENAME TABLE `2017.q3` TO 2017_q3;

DESC 2017_q1;

CREATE VIEW Year_2017 AS
SELECT * FROM 2017_q1
UNION ALL
SELECT * FROM 2017_q2
UNION ALL
SELECT * FROM 2017_q3
UNION ALL
SELECT * FROM 2017_q4;

SELECT * FROM 2017_q4;
SELECT * FROM Year_2017;

DESC Year_2017;

# Total Revenue
SELECT SUM(grip_tot) + SUM(grop_tot) AS Total_Revenue
FROM Year_2017;

# Gross Inpatient Revenue
SELECT SUM(grip_tot) AS Gross_Inpatient_Revenue
FROM Year_2017;

# Gross Outpatient Revenue
SELECT SUM(grop_tot) AS Gross_Outpatient_Revenue
FROM Year_2017;

# Total Available Beds
SELECT SUM(avl_beds) AS Total_Available_Beds
FROM Year_2017;

# Total Staff Beds
SELECT SUM(stf_beds) AS Total_Staff_Beds
FROM Year_2017;

# Total Licensed Beds
SELECT SUM(lic_beds) AS Total_Licensed_Beds
FROM Year_2017;
