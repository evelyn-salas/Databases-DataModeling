--10. Write a SQL query to determine which courses were held in large lecture halls or auditorium
-- type classrooms summer 2016. (3 pts)

Select * 
FROM tblCLASS X
Join tblCOURSE Y on x.CourseID = y.CourseID
Join tblQUARTER Z on x.QuarterID = z.QuarterID
Join tblCLASSROOM A on x.ClassroomID = a.ClassroomID
Join tblCLASSROOM_TYPE B on a.ClassroomTypeID = b.ClassroomTypeID
WHERE (b.ClassroomTypeName = 'Large Lecture Hall'
OR b.ClassroomTypeName = 'Auditorium')
AND YEAR = 2016
AND QuarterName = 'Summer';
