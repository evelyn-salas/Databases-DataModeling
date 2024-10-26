--7. Write a SQL query to determine the Department that hired the most people to the position type
-- 'Executive' between June 8, 1968 and March 6, 1989. (3 pts) (Hint: Use ORDER BY)

SELECT top 3 z.Deptname, COUNT(y.PositionName) AS PosFreq
FROM tblSTAFF_POSITION X
JOIN tblPOSITION Y on x.PositionID = y.PositionID
JOIN tblDEPARTMENT Z on x.DeptID = z.DeptID
--WHERE PositionName = 'Executive'
GROUP BY z.Deptname
ORDER BY PosFreq Desc;


