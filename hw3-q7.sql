-- Q7

select sum(F.capacity) as capacity
from FLIGHTS as F
where F.month_id = 7
and F.day_of_month = 10
and ((F.origin_city = 'San Francisco CA' and F.dest_city = 'Seattle WA')
or (F.dest_city = 'San Francisco CA' and F.origin_city = 'Seattle WA'));