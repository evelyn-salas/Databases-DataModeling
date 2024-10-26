--7. Building on the previous query, write a query that counts the number of weeks for each state where the Observed_Number > Upper_bound 
-- threshold during March 2020 - October 2020.  Sort the result by this count, in descending order.

SELECT [State], COUNT(Observed_Number) AS Week_Freq
FROM weighted
WHERE Observed_Number > Upper_Bound_Threshold
AND [Year] = 2020
AND MONTH(Week_Ending_Date) > 2
AND MONTH(Week_Ending_Date) < 11
GROUP BY [State]
ORDER BY Week_Freq DESC;