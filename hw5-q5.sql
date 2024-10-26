--5. Using your new view, write a query that returns the number of deaths in the month of July for each year, averaging over all states.
--  That is, your query should return one row per year of data.  You can extract the month from the Week_Ending_Date attribute using the 
-- month function (Links to an external site.).  Notice which year is the highest.

SELECT AVG(Observed_Number) AS Avg_July_Deaths
FROM weighted
WHERE DATEPART(month, Week_Ending_Date) = '07'
GROUP BY [Year];