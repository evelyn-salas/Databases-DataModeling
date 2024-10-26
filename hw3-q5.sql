-- Q5

select distinct C.name as name, avg(CAST(F.canceled AS FLOAT)) as PERCENT
from FLIGHTS as F, CARRIERS as C 
where C.cid = F.carrier_id
and F.origin_city = 'Seattle WA'
group by C.cid 
having percent > 0.005
order by percent asc;
