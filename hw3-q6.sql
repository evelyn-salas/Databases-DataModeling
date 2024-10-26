-- Q6

select C.name as carrier, max(price) as max_price
from FLIGHTS as F, CARRIERS as C
where C.cid = F.carrier_id
and ((F.origin_city = 'Seattle WA' and F.dest_city = 'New York NY') 
or (F.dest_city = 'Seattle WA' and F.origin_city = 'New York NY'))
group by C.cid;