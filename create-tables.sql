-- Creating Tables

DROP TABLE Flights;
DROP TABLE Carriers;
DROP TABLE WEEKDAYS;
DROP TABLE MONTHS;

CREATE TABLE CARRIERS (cid varchar(7) primary key, name varchar(83));
CREATE TABLE MONTHS (mid int primary key, month varchar(9));
CREATE TABLE WEEKDAYS (did int primary key, day_of_week varchar(9));
CREATE TABLE FLIGHTS (fid int primary key, 
month_id int references Months(mid), -- 12
day_of_month int,    -- 1-31 
day_of_week_id int references WEEKDAYS(did), -- 7
carrier_id varchar(7) references Carriers(cid), 
flight_num int,
origin_city varchar(34), 
origin_state varchar(47), 
dest_city varchar(34), 
dest_state varchar(46), 
departure_delay int, -- in mins
taxi_out int,        -- in mins
arrival_delay int,   -- in mins
canceled bit,        -- 1 means canceled
actual_time int,     -- in mins
distance int,        -- in miles
capacity int, 
price int            -- in $             
);

Insert into Carriers
Select * from flights.dbo.CARRIERS;
Insert into WEEKDAYS
Select * from flights.dbo.WEEKDAYS;

Insert into MONTHS
Select * from flights.dbo.MONTHS;

Insert into Flights
Select * from flights.dbo.Flights;

Select distinct flight_num
from flights x JOIN Carriers y on x.carrier_id = y.cid
where origin_city = 'Seattle WA' AND dest_city = 'Boston MA'
AND y.name = 'Alaska Airlines Inc.';

Select c.name as name,
f1.flight_num AS f1_flight_num,
f1.origin_city as f1_origin_city,
f1.dest_city AS f1_dest_city,
f1.actual_time as f1_actual_time,
f2.flight_num AS f2_flight_num,
f2.origin_city as f2_origin_city,
f2.dest_city AS f2_dest_city,
f2.actual_time AS factual_time,
(f1.actual_time + f2.actual_time) actual_time
from Flights f1 
JOIN FLights f2 on f1.dest_city = f2.origin_city
JOIN Carriers c on f1.carrier_id = c.cid
where f1.month_id = f2.month_id 
AND f1.day_of_month = f2.day_of_month
AND f1.carrier_id = f2.carrier_id;