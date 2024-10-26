--8. Write a query that returns all states for which excess deaths (computed as Observed_Number - Upper_bound_threshold) were greater than zero 
--for the month of January, 2020.   Then change the query to compute the same answer for the month of March, 2020.  Then try April, May, and then September.
--  Consider how many states were reporting excess deaths before the pandemic vs. after.   Turn in your query for September, 2020.

SELECT [State]
FROM weighted
WHERE Observed_Number - Upper_Bound_Threshold > 0
AND MONTH(Week_Ending_Date) = 9
AND YEAR(Week_Ending_Date) = 2020
GROUP BY [State];