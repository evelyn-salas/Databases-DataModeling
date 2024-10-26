-- 3) For each origin city, find the percentage of departing flights shorter than 3 hours. For this question, 
-- treat flights with NULL actual_time values as longer than 3 hours. (10 points)
-- Name the output columns origin_city and percentage Order by percentage value, ascending. 
-- Be careful to handle cities without any flights shorter than 3 hours. We will accept either 0 or NULL 
-- as the result for those cities. Report percentages as percentages not decimals (e.g., report 75.25 rather than 0.7525).
-- [Query result cardinality: 323] EDIT: It should be 327

SELECT f2.origin_city AS origin_city, CAST((SELECT COUNT(*) AS NUMBER
FROM FLIGHTS AS f1
WHERE f1.actual_time < 180
AND f1.origin_city = f2.origin_city
GROUP BY f1.origin_city) AS FLOAT) * 100 /COUNT(*) AS PERCENTAGE
FROM FLIGHTS AS f2
GROUP BY f2.origin_city;

/*
Aguadilla PR	29.433962264150942
Albany GA	99.47916666666667
Alpena MI	100
Amarillo TX	99.5704467353952
Asheville NC	99.45652173913044
Austin TX	83.24706476454993
Bangor ME	99.33444259567388
Binghamton NY	100
Boston MA	69.70839849139914
Brownsville TX	99.49622166246851
Brunswick GA	99.40119760479043
Buffalo NY	94.60262441198316
Carlsbad CA	100
Chattanooga TN	99.87714987714988
Chicago IL	79.76594787020746
Cody WY	99.54954954954955
Columbia MO	100
Dallas/Fort Worth TX	81.08892777601018
Deadhorse AK	95.45454545454545
Dickinson ND	100
 */