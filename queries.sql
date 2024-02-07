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

-- Like II

/*
The percentage sign % is another wildcard character that can be used with LIKE.

This statement below filters the result set to only include movies with names 
that begin with the letter ‘A’:
*/
SELECT * 
FROM movies
WHERE name LIKE 'A%';

-- % is a wildcard character that matches zero or more missing characters in the pattern. For example:

/*
A% matches all movies with names that begin with letter ‘A’
%a matches all movies that end with ‘a’
We can also use % both before and after a pattern:
*/

SELECT * 
FROM movies 
WHERE name LIKE '%man%';

-- Here, any movie that contains the word ‘man’ in its name will be returned in the result.

-- Is Null
-- To filter for all movies with an IMDb rating:

SELECT name
FROM movies 
WHERE imdb_rating IS NOT NULL;

-- BETWEEN
/*
The BETWEEN operator is used in a WHERE clause to filter the result set 
within a certain range. It accepts two values that are either numbers, 
text or dates.

For example, this statement filters the result set to only include 
movies with years from 1990 up to, and including 1999.
*/

SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 1999;

/*
In this statement, BETWEEN filters the result set to only include movies with 
names that begin with the letter ‘A’ up to, but not including ones that begin with ‘J’.
*/

SELECT *
FROM movies
WHERE name BETWEEN 'A' AND 'J';
