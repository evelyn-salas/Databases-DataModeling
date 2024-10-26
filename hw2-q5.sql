--5. Write a SQL query to that returns the 5 oldest buildings on UW campus by the year that they
-- were opened. (3 pts) (Hint: Use ORDER BY and top K)

SELECT TOP 5 * FROM tblBUILDING
ORDER BY YearOpened;