SELECT * FROM cars.car_dekho;
use cars;
##READ DATA##
select*from car_dekho;
## Toatal cars total records & distonct Records ##

select count(*)  from car_dekho;  # total records 7927 #
select distinct(count(Name)) from car_dekho;

## how many car aviable in 2023 ##
select count(*) from car_dekho where year=2023;  # 6 no of cars #

## car aviable in 2020,2021,2022  ##
select count(*) from car_dekho where year in (2020,2021,2022) group by year;  ## 7,7,74 ##

## data of cars all years ##
select year, count(*) from car_dekho group by year;

## how many disel car in 2020  ##
select count(*) from car_dekho where year=2020 and fuel="Diesel";  ## 20 ##

## how many Petrol car in 2020  ##
select count(*) from car_dekho where year=2020 and fuel="Petrol";  ## 51 ##

## findout all fuel car come by year ##
select year, count(*) from car_dekho where fuel="Petrol" group by year;
select year, count(*) from car_dekho where fuel="Diesel" group by year;
select year, count(*) from car_dekho where fuel="CNG" group by year;

## which year have more than 100 car ##
select year, count(*) from car_dekho group by year having count(*)>100;

## which year have less than 100 car ##
select year, count(*) from car_dekho group by year having count(*)<100;

## All car count details between 2015 and 2023 ##
select count(*) from car_dekho where year between 2015 AND 2023 group by year;
select count(*) from car_dekho where year between 2015 AND 2023;

## All car count details between 2015 and 2023 ##
select * from car_dekho where year between 2015 AND 2023;