--1. (10 points) First, create a simple table using the following steps:
-- Create a table Edges(Source, Destination) where both Source and Destination are integers.
-- Insert the tuples (10,5), (6,25), (1,3), and (4,4)
-- Write a SQL statement that returns all tuples.
-- Write a SQL statement that returns only the column Source for all tuples.
-- Write a SQL statement that returns all tuples where Source > Destination.
-- Now try to insert the tuple ('-1','2000'). Do you get an error? Why or why not?

-- Now try to insert the tuple ('-1','two'). Do you get an error? Why or why not?

--CREATE TABLE Edges (
--    Source int,
--    Destination int,
--);

--INSERT INTO Edges (Source, Destination)
--VALUES (10, 5);

--INSERT INTO Edges (Source, Destination)
--VALUES (6, 25);

--INSERT INTO Edges (Source, Destination)
--VALUES (1, 3);

--INSERT INTO Edges (Source, Destination)
--VALUES (4, 4);

SELECT * FROM Edges;

SELECT Source FROM Edges;

SELECT * FROM Edges 
WHERE Source > Destination;

--INSERT INTO Edges (Source, Destination)
--Values (-1, 2000);

-- This seemed to work, I got no errors. Integers include any number from negative to postive 
-- infinity, so it makes sense that this worked (the numbers are of the right type).

--INSERT INTO Edges (Source, Destination)
--Values (-1, two);

-- This did not work because the second values is a string, and the columns must be of type int.