l
-- Used for conditions
SELECT <columnname>,<columnname>,
CASE WHEN <columnname>
<condition>
THEN 
<result>
ELSE
<resut>
END AS 
<alias>
FROM <tablename>

-- Example
SELECT title,stock_quantity , 
CASE 
WHEN stock_quantity BETWEEN 0 AND 50 THEN 'Under 50 **'
WHEN stock_quantity BETWEEN 51 AND 100 THEN 'Under 100 **'
WHEN stock_quantity BETWEEN 101 AND 200 THEN 'Under 200 **' 
ELSE concat('Am top stock at',' ',stock_quantity) 
END AS STOCK 
FROM books;

-- case with mutiple conditions
SELECT title ,author_lname, 
CASE 
WHEN title LIKE '%stories%' THEN 'Short stories' 
WHEN title = 'Just Kids' OR title LIKE '%A heartbreaking%' THEN 'Memoir'
ELSE 'Novel' 
END AS TYPE 
FROM books;

-- Case with group by 
-- NB :- Notice the mutiple group param
SELECT title,author_lname,
CASE 
WHEN COUNT(*) > 1 THEN CONCAT(COUNT(*),' ','books')
ELSE '1 book' 
END AS 'COUNT'
FROM books 
GROUP BY author_lname,author_fname;

