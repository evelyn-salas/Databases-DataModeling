-- Q3

select top 1 W.day_of_week as day_of_week, avg(F.arrival_delay) as delay
from FLIGHTS as F, WEEKDAYS as W
where F.day_of_week_id = W.did
group by F.day_of_week_id
order by avg(F.arrival_delay) desc;