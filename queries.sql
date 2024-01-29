-- SELECT
SELECT name, genre, year
FROM movies;

-- AS is a keyword in SQL that allows you to rename a column or table using an alias. 
SELECT name AS 'Titles'
FROM movies;
-- Here we renamed the name column as Titles.

/*
DISTINCT is used to return unique values in the output. It filters
out all duplicate values in the specified column(s).
*/

SELECT DISTINCT tools 
FROM inventory;
