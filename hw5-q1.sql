-- 1. What is the domain of the attribute "Type"?  (That is, what are the unique values in that column?)
SELECT [Type] FROM [Excess_Deaths_Associated_with_COVID-19_Nov]
GROUP BY [Type];
