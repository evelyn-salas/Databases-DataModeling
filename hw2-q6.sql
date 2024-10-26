--6. Write a SQL query that returns the 5 most-common states listed as permanent addresses for
--students who registered for at least one course in the 1930's. (3 pts) (Hint: Use ORDER BY and top K)

SELECT top 5 StudentPermState, COUNT(x.StudentPermState) AS StateFreq
FROM tblSTUDENT X
Full OUTER JOIN tblCLASS_LIST Y
ON X.StudentID = Y.StudentID
WHERE y.RegistrationDate > '1930-01-01'
AND y.RegistrationDate < '1939-12-31'
GROUP BY x.StudentPermState
ORDER BY StateFreq Desc;

