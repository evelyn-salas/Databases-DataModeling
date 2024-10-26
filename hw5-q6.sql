-- 6. Using your new view, write a query that returns all records for which the Observed Number > Upper bound threshold. These records represent 
-- jurisdictions and weeks where the observed number of deaths was outside the 95% confidence interval for the estimated number of deaths.
--  That is, the high observed number of deaths is unlikely to be due to chance; it is statistically significant.

SELECT Observed_Number 
FROM weighted
WHERE Observed_Number > Upper_Bound_Threshold;