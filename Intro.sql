--Basic console sql syntax

-- List available databases
SHOW DATABASES;

-- General command to create DB
CREATE DATABASE database_name;

-- Specific example
CREATE DATABASE testDB;

-- Selects which database to use
USE DATABASE;

-- Delete a database
DROP DATABASE <databasename>;

-- e.g
DROP DATABASE testDB;

-- Selects which db to use
SELECT DATABASE();

-- Creates a new sql table
CREATE TABLE tablename(
    column_name data_type,
    column_name data_type
);

-- Example table 
CREATE TABLE peoplesTable (
    fist_name VARCHAR(100),
    second_name VARCHAR(100)
);

-- Shows table
SHOW TABLES;

-- Show columns from tables
SHOW COLUMNS FROM peoplesTable;

-- OR 
DESC peoplesTable;

-- Drop everyhting 
DROP TABLE 

-- Table insert
-- Use command
INSERT INTO <tablename> (<column_name>,<column_name>) VALUES 
(<data>,<data>);

-- Mutiple Insert
INSERT INTO <tablename>(<column_name>,<column_name>) VALUES 
(<data>,<data>),(<data>,<data>),(<data>,<data>);

-- Example 
INSERT INTO people(first_name, last_name, age)
    VALUES('Linda', 'Belcher', 45)
      ,('Phillip', 'Frond', 38)
      ,('Calvin', 'Fischoeder', 70);
      
-- Notes about insert

-- Order doesn't matter if there's an 
-- exchange of string and int the data will take zero

-- You can add qoutes in data using escape(backslash)
-- or alternate single and double quotes.

--"This text has \"quotes\" in it" or 'This text has \'quotes\' in it'

--Alternate single and double quotes: "This text has 'quotes' in it" or 'This text has "quotes" in it'




