--4. In your own database that you created in the beginning of the quarter, create a view called weighted consisting of records where 
-- Type = 'Unweighted'.  To create a view in your database, you will "USE <yourdatabasename>" then write a create view statement that
-- references the table in a different database using the fully qualified 
-- table name: nchs_weekly_deaths.dbo.[Excess_Deaths_Associated_with_COVID-19_Nov]

CREATE VIEW weighted AS
SELECT * 
FROM  nchs_weekly_deaths.dbo.[Excess_Deaths_Associated_with_COVID-19_Nov]
WHERE Type = 'Unweighted';

Select * from weighted;