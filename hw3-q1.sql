-- Q1 

Select Distinct F.flight_num as flight_num
from FLIGHTS as F, CARRIERS as C, WEEKDAYS as W
where F.origin_city = 'Seattle WA'
and F.dest_city = 'Boston MA'
and C.name = 'Alaska Airlines Inc.'

and W.day_of_week = 'Monday'
and F.carrier_id = C.cid
and F.day_of_week_id = W.did;