-- Always use group by with unique fields;

-- NB:- Alaways use a unique field to group
SELECT first_name , avg(grade) AS average 
FROM students 
LEFT JOIN papers
ON students.id = papers.student_id 
GROUP BY students.id
ORDER BY average DESC;
