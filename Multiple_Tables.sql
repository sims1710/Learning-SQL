-- Combining Tables with SQL - JOIN
SELECT *
FROM orders
JOIN customers
  ON orders.customer_id = customers.customer_id;

-- LEFT JOIN
/*
A left join will keep all rows from the first table, regardless 
of whether there is a matching row in the second table.
*/

SELECT *
FROM table1
LEFT JOIN table2
  ON table1.c2 = table2.c2;

-- Primary Key vs Foreign Key
/*
Primary keys have a few requirements:
- None of the values can be NULL.
- Each value must be unique (i.e., you can’t have two customers 
with the same customer_id in the customers table).
- A table can not have more than one primary key column.

When the primary key for one table appears in a different table, 
it is called a foreign key.
*/

-- CROSS JOIN 
