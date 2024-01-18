drop table aqi_2001 
;

create table aqi_2001 (
	state_name varchar(100),
	county_name varchar(100),
	state_code varchar(50),
	county_code int,
	date date,
	AQI int,
	category varchar(50),
	defining_parameter varchar(50),
	defining_site varchar(50),
	number_of_sites_reporting int
	)
;

copy aqi_2001(state_name, county_name, state_code, county_code, date, AQI, category, defining_parameter, defining_site, number_of_sites_reporting)
from '/Users/jonedwards11/Public/daily_aqi_by_county_2001.csv'
delimiter ','
csv header
;

drop table aqi_2011
;

create table aqi_2011 (
	state_name varchar(100),
	county_name varchar(100),
	state_code varchar(50),
	county_code int,
	date date,
	AQI int,
	category varchar(50),
	defining_parameter varchar(50),
	defining_site varchar(50),
	number_of_sites_reporting int
	)
;

copy aqi_2011(state_name, county_name, state_code, county_code, date, AQI, category, defining_parameter, defining_site, number_of_sites_reporting)
from '/Users/jonedwards11/Public/daily_aqi_by_county_2011.csv'
delimiter ','
csv header
;

drop table aqi_2021
;

create table aqi_2021 (
	state_name varchar(100),
	county_name varchar(100),
	state_code varchar(50),
	county_code int,
	date date,
	AQI int,
	category varchar(50),
	defining_parameter varchar(50),
	defining_site varchar(50),
	number_of_sites_reporting int
	)
;

copy aqi_2021(state_name, county_name, state_code, county_code, date, AQI, category, defining_parameter, defining_site, number_of_sites_reporting)
from '/Users/jonedwards11/Public/daily_aqi_by_county_2021.csv'
delimiter ','
csv header
;

drop table aqi_total
;

create table aqi_total (
	state_name varchar(100),
	county_name varchar(100),
	state_code varchar(50),
	county_code int,
	date date,
	AQI int,
	category varchar(50),
	defining_parameter varchar(50),
	defining_site varchar(50),
	number_of_sites_reporting int
	)
;

insert into aqi_total (
	select *
	from aqi_2001 a
	union all
	select *
	from aqi_2011
	union all
	select *
	from aqi_2021 )
;
