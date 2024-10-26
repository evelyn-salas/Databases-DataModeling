--1) For each origin city, find the destination city (or cities) with the longest direct flight. By direct flight, we mean a flight with no intermediate stops. Judge the longest flight in time, not distance. (10 points)
--Name the output columns origin_city, dest_city, and time representing the flight time between them. Do not include duplicates of the same origin/destination city pair. Order the result by origin_city and then dest_city (ascending, i.e. alphabetically).
--[Query result cardinality: 327] EDIT: It should be 334

 With longestFlight AS
    (
      Select Distinct origin_city, Max(actual_time) as time 
      from flights
      Group by origin_city
      )
Select Distinct x.dest_city, x.origin_city, y.time
from flights x 
JOIN longestFlight y on x.origin_city = y.origin_city AND x.actual_time = y.time
ORDER BY x.origin_city, x.dest_city;

/*
Minneapolis MN	Aberdeen SD
Dallas/Fort Worth TX	Abilene TX
Anchorage AK	Adak Island AK
New York NY	Aguadilla PR
Atlanta GA	Akron OH
Atlanta GA	Albany GA
Atlanta GA	Albany NY
Houston TX	Albuquerque NM
Atlanta GA	Alexandria LA
Atlanta GA	Allentown/Bethlehem/Easton PA
Detroit MI	Alpena MI
Houston TX	Amarillo TX
Barrow AK	Anchorage AK
Atlanta GA	Appleton WI
San Francisco CA	Arcata/Eureka CA
Chicago IL	Asheville NC
Cincinnati OH	Ashland WV
Los Angeles CA	Aspen CO
Honolulu HI	Atlanta GA
Fort Lauderdale FL	Atlantic City NJ
*/ 