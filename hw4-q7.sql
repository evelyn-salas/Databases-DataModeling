-- 7) Express the same query as above, but do so without using a nested query. Again, name the output columncarrier and order ascending. (5 points)
-- [Output relation cardinality: 3] EDIT: It should be 4

SELECT DISTINCT c.name AS carrier
FROM CARRIERS AS c, FLIGHTS AS f
WHERE c.cid = f.carrier_id
AND f.dest_city = 'San Francisco CA'
AND f.origin_city = 'Seattle WA'
ORDER BY c.name Asc;

/*
Alaska Airlines Inc.
SkyWest Airlines Inc.
United Air Lines Inc.
Virgin America
*/