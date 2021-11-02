
-- Selects the condition where there's a like
-- % Wildcards returns thos that have that character
-- e.g '%the%' returns those that have 'the' in second_name;
-- the% returns those that start with 'the'
-- %the returns thos that end with 'the'
SELECT second_name FROM peoplesTable 
WHERE second_name LIKE '%the%';

-- How many books contain 'the'in title
SELECT COUNT(
    title
) AS 'Books with \'the\' in them'
FROM books 
WHERE title LIKE '%the%';



-- POTENTIALLY SLOW FOR BIG DATA
-- Sub query
SELECT title , pages 
FROM books 
WHERE pages=(SELECT Max(pages) FROM books);

-- Max
SELECT title , pages 
FROM books 
WHERE pages=(SELECT Min(pages) FROM books);

-- SAME AS ABOVE
SELECT title , pages FROM books ORDER BY  pages DESC LIMIT 1;

-- Sorts by author_lname then author_fname
SELECT author_fname, author_lname FROM books 
ORDER BY author_lname, author_fname;


-- Indicate exactly one character
-- One underscore == One character
-- If you need to search out 4 characters
-- you do 4 underscore characters
SELECT title,stock_quantity 
FROM books 
WHERE stock_quantity 
LIKE '____';

-- Notes on Wildcards escape
-- You use \(escape sign) to escape characters in search
-- %\_% to escape underscore sign in data you are search
-- %\%% to escape z% sign

SELECT title FROM books WHERE title LIKE '%\%%'; 
-- searches out a book with % sign on title