-- Use books DB
use book_shop;

SELECT title,author_lname FROM books
WHERE author_lname='Carver' OR
      author_lname='Lahiri' OR
      author_lname='Smith';

-- Can also be expressed as 
SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

-- Use CAST when you want to convert data types;
SELECT name,birthdt FROM people WHERE birthdt BETWEEN 
cast('1980-01-01' AS DATETIME) and cast('2001-01-01' AS DATETIME);


-- IN and NOT IN
SELECT title,author_fname,author_lname FROM books 
WHERE author_lname='Carver' OR author_lname='Lahiri' OR author_lname='Smith';
    
SELECT title,author_fname,author_lname FROM books WHERE author_lname 
IN ('Carver','Lahiri','Smith');
    
SELECT title,author_fname,author_lname,released_year FROM books WHERE released_year 
IN (1998,2017,2021);
    
SELECT title,author_fname,author_lname,released_year FROM books WHERE released_year 
NOT IN (2000,2002,2004,2006,2008,2010,2012,2014,2016);
    
SELECT title,released_year FROM books WHERE released_year>= 2000 AND released_year 
NOT IN (2000,2002,2004,2006,2008,2010,2012,2014,2016) ORDER BY released_year;
    
SELECT title,released_year FROM books WHERE released_year>= 2000 AND released_year%2 !=0 
ORDER BY released_year;







