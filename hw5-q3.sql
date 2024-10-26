--3. What is a key for this relation?  Recall a key is a set of attributes that together uniquely identify each record. Be careful; 
-- you will want to write queries to check for uniqueness.

SELECT COUNT(*)
FROM [Excess_Deaths_Associated_with_COVID-19_Nov]
GROUP BY Week_Ending_Date, [State], Outcome, [Type]
ORDER BY COUNT(*) desc;