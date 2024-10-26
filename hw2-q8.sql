--8. Write a SQL query to determine which current instructor has been a Senior Lecturer the 
--longest. (3 pts) (Use ORDER BY)

Select top 1 * 
FROM tblINSTRUCTOR X
JOIN tblINSTRUCTOR_INSTRUCTOR_TYPE Y on x.InstructorID = y.InstructorID
JOIN tblINSTRUCTOR_TYPE Z on y.InstructorTypeID = z.InstructorTypeID
WHERE InstructorTypeName = 'Senior Lecturer'
AND EndDate is NULL
ORDER By BeginDate;
