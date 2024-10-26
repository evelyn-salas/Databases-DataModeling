-- 6) List the names of carriers that operate flights from Seattle to San Francisco, CA. Return each carrier's name only once. Use a nested query to answer this question. (5 points)
-- Name the output column carrier. Order the output ascending by carrier.
-- [Output relation cardinality: 3]  EDIT: It should be 4

WITH subFlight AS (
    SELECT DISTINCT f1.carrier_id
    FROM FLIGHTS AS f1
    WHERE f1.origin_city = 'Seattle WA'
    AND f1.dest_city = 'San Francisco CA'
)
SELECT c1.name AS carrier
FROM CARRIERS AS c1, subFlight AS sub
WHERE c1.cid = sub.carrier_id
ORDER BY c1.name Asc;

/*
Alaska Airlines Inc.
SkyWest Airlines Inc.
United Air Lines Inc.
Virgin America
*/