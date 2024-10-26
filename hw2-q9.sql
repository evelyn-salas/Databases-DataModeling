--9. Write a SQL query to determine which College offered the most courses Spring quarter 2014. 
--(3 pts) (Use ORDER BY)

Select top 1 y.DeptName, COUNT(x.CourseID) AS CourseFreq
FROM tblCOURSE X
Join tblDEPARTMENT Y on x.DeptID = y.DeptID
Join tblCLASS Z on x.CourseID = z.CourseID
Join tblQUARTER A on z.QuarterID = a.QuarterID
WHERE z.YEAR = 2014 
AND QuarterName = 'Spring'
GROUP By y.DeptName
ORDER By CourseFreq Desc;
