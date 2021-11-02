
-- String functions

-- Concat in mysql
-- Joins more than one word
-- Takes more than one parameter
CONCAT (<columnname>,<columnname>) FROM <tablename>

-- Usage with alias
SELECT CONCAT(fist_name, " ",second_name) 
AS 'Full NAME' FROM peoplesTable;

-- Without
SELECT CONCAT(fist_name, " ",second_name) FROM peoplesTable;

--Can be combined
SELECT fist_name AS 'First',second_name AS 'Last' , 
CONCAT (fist_name,' ',second_name) AS 'Full Name' FROM peoplesTable;

-- Substring
-- Takes name and two index beggining and end
SELECT SUBSTRING (<columnname>,<startIndex>,<endIndex>) FROM <tablename>;

-- Usage
SELECT SUBSTRING ('Hello world',7); -- Moves from 7th index to the end of string

SELECT SUBSTRING ('Hello world',1,4); -- Moves from index 1 to 4

SELECT SUBSTRING(fist_name,1,10) AS 'First name' 
FROM peoplesTable WHERE second_name = 'Ochieng';

-- Substrng and Concat
SELECT CONCAT (SUBSTRING(first_name,1,3),'....') AS 'Short name'
FROM peoplesTable;

-- Replace eg
SELECT REPLACE ('Hello worl','l',7) AS 'Replaced';
-- NB : - Replace is case sensitive

-- Substring Concat Replace
SELECT CONCAT (SUBSTRING(REPLACE(title,'e','3'),1,10),'...') AS 'Edited' 
FROM peoplesTable;

-- Sets to upper and lower case
SELECT UPPER(first_name) FROM peoplesTable;

-- Upper
SELECT UPPER(CONCAT(first_name,' ',second_name)) AS 'full name in caps' 
FROM books;

-- Sets to lower
SELECT LOWER(second_name) FROM peoplesTable;

-- Char_length
SELECT CONCAT(fist_name,' is characters ',CHAR_LENGTH(first_name),' long') 
FROM peoplesTable;


-- The REPLACE() function, as well as the other string functions, 
--only change the query output, they don't affect the actual data in the database.
--UPPER,REVERSE all take on parameter;



