-- 4) List all cities that cannot be reached from Seattle WA though a direct flight but can be reached with one stop (i.e., with any two flights that go through an intermediate city). Do not include Seattle WA as one of these destinations (even though you could get back with two flights).  Remember that the dataset is a reduced version of the full dataset, so some of the cities won't seem to make sense in the real world.  (10 points)
-- Name the output column city. Order the output ascending by city.
-- There are multiple ways to write this query.  One way is to define the "onestop" destinations originating in Seattle, then removing the "nonstop" destinations originating in Seattle.
-- [Query result cardinality: 254] EDIT: It should be 256

SELECT DISTINCT f2.dest_city AS city
FROM Flights f1 
JOIN Flights f2 ON f1.dest_city = f2.origin_city
WHERE f2.dest_city != 'Seattle WA'
AND f1.origin_city = 'Seattle WA'
AND f2.dest_city NOT IN 
(
    SELECT dest_city
    FROM Flights 
    WHERE origin_city  = 'Seattle WA'
)
ORDER BY city;

/*
Aberdeen SD
Abilene TX
Adak Island AK
Aguadilla PR
Akron OH
Albany GA
Albany NY
Alexandria LA
Allentown/Bethlehem/Easton PA
Alpena MI
Amarillo TX
Appleton WI
Arcata/Eureka CA
Asheville NC
Ashland WV
Aspen CO
Atlantic City NJ
Augusta GA
Bakersfield CA
Bangor ME
*/