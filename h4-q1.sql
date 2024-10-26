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