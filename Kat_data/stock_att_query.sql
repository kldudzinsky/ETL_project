CREATE TABLE stock_attendance_2017 (
id INT PRIMARY KEY,
Establishmen TEXT,
Number_of_Establishments int,
Number_of_Accomidations int,
Occupancy_rate float,
total_nights float,
forign_overnight_stays float
);

select * from origin_attendance;

CREATE TABLE sites_visited_2017 (
id INT PRIMARY KEY,
	Sites Text,
	Number_of_Visitors_Millions Float
);

CREATE TABLE origin_attendance (
id INT PRIMARY KEY,
	attendance_origin Text,
	overnights_mil Float,
	percentage_change_from_prev_yr Float
);
CREATE TABLE dom_tour_consumption (
id INT PRIMARY KEY,
	domestic_accomidations Text,
	yr_2013 Float,
	yr_2014 Float,
	yr_2015 Float,
	yr_2016 Float,
	yr_2017 Float
);
select * from dom_tour_consumption;

CREATE TABLE deu_attendance(
id INT PRIMARY KEY,
	eu_countries Text,
	overnight_stays_mil Float,
	non_res_overnights_mil Float
);
select * from eu_attendance;

CREATE TABLE international_receipts(
id INT PRIMARY KEY,
	receiving_country Text,
	yr_1990 Float,
	yr_2000 Float,
	yr_2017	Float,
	change_from_2000 Float
);
select * from international_receipts;