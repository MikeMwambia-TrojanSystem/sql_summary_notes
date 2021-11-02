
-- Returns the total number of documents satisfying certain condition
SELECT COUNT(*) FROM peoplesTable;

-- DISTINCT returns unique second_name
SELECT COUNT(DISTINCT second_name) FROM peoplesTable;

--AVS
 SELECT AVG(released_year) FROM books GROUP BY author_lname, author_fname;

-- SUM
 SELECT SUM(stock_quantity) FROM BOOKS;

 SELECT released_year AS year,
        COUNT(*) AS '# of books',
        AVG(pages) AS 'avg pages'
 FROM books
        GROUP BY released_year;

-- IN SQL
SUM,AVG,COUNT
UPPER,LOWER
-- All take single parameters

