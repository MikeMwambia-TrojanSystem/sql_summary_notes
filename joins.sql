-- Reference https://dataschool.com/how-to-teach-people-sql/inner-join-animated/
-- Joins are made form data relationships.
-- One to one relationship;
-- One to many relationship;
-- Many to many relationships;

-- One to many relationships;

CREATE TABLE customers (
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL ,
email VARCHAR(100) NOT NULL
);

 -- Creating a foreign key
CREATE TABLE orders (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customers_id INT ,
    FOREIGN KEY (customers_id) REFERENCES customers(id)
);


-- When using join 
-- LEFT JOIN takes everything from the table on left in case below students

-- NB:- Alaways use a unique field to group
SELECT first_name , avg(grade) AS average FROM students 
LEFT JOIN papers
ON students.id = papers.student_id 
GROUP BY students.id
ORDER BY average DESC;

-- Inner join takes the intersection of the two tables 
-- In case below students and papers where students.id = papers.student_id
SELECT first_name,title,grade FROM students
INNER JOIN papers 
ON students.id = papers.student_id
ORDER BY grade DESC;


-- Right join takes everyhting fro the table on the right 
-- In case below papers where the condition students.id = papers.student_id is true 
SELECT first_name,title,grade FROM students
RIGHT JOIN papers 
ON students.id = papers.student_id
ORDER BY grade DESC;


-- ifnull takes two parameters the column name to check if null and the parameter to use if null
-- ifnull(<columnname>,<param>) e.g ifnull(title,'Missing');
SELECT first_name,IFNULL(title,'Missing'),IFNULL(grade,0) FROM students
LEFT JOIN papers
ON students.id = papers.student_id;




SELECT first_name,last_name,COUNT(rating) AS total,IFNULL(MIN(rating),0) AS MIN,
IFNULL(MAX(rating),0) AS MAX,
ROUND(IFNULL(AVG(rating),0),2) AS AVG,
IF(COUNT(rating)>0,'ACTIVE','INACTIVE') AS STATUS
FROM reviewers 
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;
