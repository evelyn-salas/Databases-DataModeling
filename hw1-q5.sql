--5. (5 points)

--Write a SQL query that returns only the name and distance of all restaurants within and 
--including 20 minutes of your house. The query should list the restaurants in alphabetical 
--order of names (if you used text as your column type, you may need to cast it to varchar 
--in your select clause to sort in alphabetical order).

SELECT name FROM MyRestaurants 
WHERE distance <= 20
ORDER BY name ASC;
