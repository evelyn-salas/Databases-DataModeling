-- Q4

select distinct C.name as name 
from FLIGHTS as F, CARRIERS as C 
where C.cid = F.carrier_id
group by F.year, F.month_id, F.day_of_month, C.cid
having count(fid) > 1000;