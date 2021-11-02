-- Selects gives back the data requested

-- Returns all columns of peoplesTable table;
SELECT * FROM peoplesTable ;

-- Select specific column 
SELECT <column_name> FROM <tablename>;

-- Selects only the first name;
SELECT fist_name FROM peoplesTable;

-- Select with an alias e.g 
-- returns First name instead of first_name
SELECT first_name AS 'First name' FROM peoplesTable;

-- Finding orders placed by George : Using a subquery
SELECT * FROM orders WHERE customer_id = 
(
    SELECT id FROM customers
    WHERE last_name = 'George'
);





