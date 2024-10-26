-- 5) List all cities that cannot be reached from Seattle through a direct flight nor with one stop (i.e., with any two flights that go through an intermediate city).  (10 points)
-- Name the output column city. Order the output ascending by city.
-- (You can assume all cities to be the collection of all origin_city or all dest_city)
--[Output relation cardinality: 4 if you use dest_city as all cities, or 5 if you use origin_city] EDIT: It should be 3 if you use dest_city,  and also 3 if you use origin_city

SELECT DISTINCT f4.origin_city AS city
FROM Flights AS f4
WHERE f4.origin_city NOT IN 
(
    SELECT DISTINCT f3.dest_city AS city
    FROM FLIGHTS AS f2, FLIGHTS AS f3
    WHERE f2.dest_city = f3.origin_city
    AND f2.origin_city = 'Seattle WA'
)
AND f4.origin_city NOT IN 
(
    SELECT DISTINCT f1.dest_city AS city
    FROM FLIGHTS AS f1
    WHERE f1.origin_city = 'Seattle WA'
)
ORDER BY f4.origin_city Asc;

/*
Devils Lake ND
Hattiesburg/Laurel MS
St. Augustine FL
Victoria TX
*/