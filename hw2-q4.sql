--4. Write a SQL query to return the 10 youngest students enrolled in a course in the Information 
-- School during winter quarter 2009. (3 pts) (Hint: Use ORDER BY and top K)

Select top 10 x.*
from tblStudent X 
JOIN tblCLASS_LIST Y ON x.studentID = y.StudentID
JOIN tblClASS Z on y.ClassID = z.ClassID
JOIN tblCourse a on a.CourseID = z.CourseID
JOIN tblDEPARTMENT b on a.DeptID = b.DeptID
JOIN tblCOLLEGE c on b.CollegeID = c.CollegeID
JOIN tblQuarter d on d.QuarterID = z.QuarterID
where c.CollegeName = 'Information School'
AND z.year = 2009
AND QuarterName = 'Winter'
ORDER BY x.StudentBirth DESC;