-- Q8

select C.name as name, sum(F.departure_delay) as delay
from FLIGHTS as F, CARRIERS as C 
where C.cid = F.carrier_id
group by C.cid;