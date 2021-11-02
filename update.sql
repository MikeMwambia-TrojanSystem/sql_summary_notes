
-- SQL Update methods;
UPDATE <tablename> SET <columnname> WHERE <condition>;

-- Example
UPDATE peoplesTable SET first_name='Dennis'
WHERE second_name = 'Oliech';

-- Mutiple fields
UPDATE peoplesTable SET first_name='Dennis',
personId=22222 WHERE second_name = 'Oliech'; 

-- 