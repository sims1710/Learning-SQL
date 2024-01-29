-- Introduction to SQL: Data Manipulation

-- CREATE statements allow us to create a new table in the database.
SELECT * FROM celebs;

CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER
);

-- INSERT statement inserts a new row into a table.
INSERT INTO celebs (id, name, age) 
VALUES (1, 'Justin Bieber', 22); 

INSERT INTO celebs (id, name, age) 
VALUES (2, 'Beyonce Knowles', 33); 
 
INSERT INTO celebs (id, name, age) 
VALUES (3, 'Jeremy Lin', 26); 
 
INSERT INTO celebs (id, name, age) 
VALUES (4, 'Taylor Swift', 26); 

/* SELECT statements are used to fetch data from a database. In the statement below, 
SELECT returns all data in the name column of the celebs table. */
SELECT name FROM celebs;

-- You can also query data from all columns in a table with SELECT.
SELECT * FROM celebs;

-- The ALTER TABLE statement adds a new column to a table.
ALTER TABLE celebs 
ADD COLUMN twitter_handle TEXT; 

SELECT * FROM celebs

-- The UPDATE statement edits a row in a table.
UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 

/*
1. UPDATE is a clause that edits a row in the table. 
2. celebs is the name of the table. 
3. SET is a clause that indicates the column to edit.

* twitter_handle is the name of the column that is going to be updated
* @taylorswift13 is the new value that is going to be inserted into the twitter_handle column.
*/
UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 

SELECT * FROM celebs;
