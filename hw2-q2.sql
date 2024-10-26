--2. Write a SQL query that returns all buildings on West Campus. (2 pts)

Select  * 
from tblBuilding X 
JOIN tblLocation Y ON  x.LocationID = y.LocationID
where y.LocationName = 'West Campus';