-- SELECT
SELECT name, genre, year
FROM movies;

-- AS is a keyword in SQL that allows you to rename a column or table using an alias. 
SELECT name AS 'Titles'
FROM movies;
-- Here we renamed the name column as Titles.

-- DISTINCT
/*
DISTINCT is used to return unique values in the output. It filters
out all duplicate values in the specified column(s).
*/

SELECT DISTINCT tools 
FROM inventory;

-- WHERE
/*
We can restrict our query results using the WHERE clause in order to obtain 
only the information we want.
*/
SELECT *
FROM movies
WHERE imdb_rating > 8;

-- LIKE
-- LIKE can be a useful operator when you want to compare similar values.

SELECT * 
FROM movies
WHERE name LIKE 'Se_en';

/*
- LIKE is a special operator used with the WHERE clause to search for a specific
pattern in a column.
- name LIKE 'Se_en' is a condition evaluating the name column for a specific pattern.
- Se_en represents a pattern with a wildcard character.
- The _ means you can substitute any individual character here without breaking
the pattern. The names Seven and Se7en both match this pattern.
*/
