--1. Write a SQL query that returns those students were born after November 5, 1996. (2 pts)

Select * from tblStudent 
where StudentBirth > Cast('1996-11-05' as date);