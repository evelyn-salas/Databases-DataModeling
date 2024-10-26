--3. Write a SQL query that returns the number of libraries at UW. (3 pts)

SELECT COUNT(*)
FROM tblBUILDING_TYPE
Full OUTER JOIN tblBUILDING ON tblBUILDING.BuildingID=tblBUILDING_TYPE.BuildingTypeID
WHERE BuildingTypeName ='Library'