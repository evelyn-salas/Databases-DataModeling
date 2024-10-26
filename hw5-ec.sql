-- Extra credit: Use the table [Weekly_counts_of_deaths_by_jurisdiction_and_race_and_Hispanic_origin] in the same database to compute proportion of deaths
-- from all non-white ethnicities, by month, for each month in 2020.  


SELECT DATEPART(MONTH, Week_Ending_Date) AS [MONTH], SUM(Number_of_Deaths) AS [sum],
    general = (SELECT SUM(Number_of_Deaths) AS [sum]
    FROM [Weekly_counts_of_deaths_by_jurisdiction_and_race_and_Hispanic_origin]
    WHERE year(Week_Ending_Date) = 2020
    GROUP BY DATEPART(MONTH, Week_Ending_Date)
    )
FROM [Weekly_counts_of_deaths_by_jurisdiction_and_race_and_Hispanic_origin]
WHERE year(Week_Ending_Date) = 2020
AND (Race_Ethnicity = 'Hispanic'
    OR Race_Ethnicity = 'Non-Hispanic American Indian or Alaska Native'
    OR Race_Ethnicity = 'Non-Hispanic Asian'
    OR Race_Ethnicity = 'Non-Hispanic Black'
    OR Race_Ethnicity = 'Other')
GROUP BY DATEPART(MONTH, Week_Ending_Date);
