
-- Not equal
SELECT title, released_year FROM books
    WHERE released_year != 2000 AND
          released_year != 2002 AND
          released_year != 2004 AND
          released_year != 2006 AND
          released_year != 2008 AND
          released_year != 2010 AND
          released_year != 2012 AND
          released_year != 2014 AND
          released_year != 2016;

-- Can also be expressed as 
SELECT title, released_year FROM books
WHERE released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016);

-- Can be coupled with >= or <= 
SELECT title, released_year FROM books
WHERE released_year >= 2000
AND released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016);


SELECT title, released_year FROM books
WHERE released_year >= 2000 AND
released_year % 2 != 0;

-- All  books after 2010
SELECT title,author_lname FROM books WHERE author_lname = 'Eggers' AND released_year > 2010;



