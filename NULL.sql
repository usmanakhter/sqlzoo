-- List the teachers who have NULL for their department.

SELECT teacher.name 
FROM teacher
LEFT JOIN dept
ON dept.id = teacher.dept
WHERE teacher.dept IS NULL;

-- Use a different JOIN so that all departments are listed.
SELECT teacher.name, dept.name
FROM teacher
RIGHT JOIN dept
ON dept.id = teacher.dept;

-- Use COALESCE to print the mobile number. Use the number '07986 444 2266' if there is no number given. Show teacher name and mobile number or '07986 444 2266'

SELECT teacher.name, COALESCE(mobile,'07986 444 2266')
FROM teacher;

-- Use COUNT and GROUP BY dept.name to show each department and the number of staff. Use a RIGHT JOIN to ensure that the Engineering department is listed.

SELECT dept.name, COUNT(teacher.name)
FROM teacher
RIGHT JOIN dept
ON dept.id=teacher.dept
GROUP BY dept.name;

-- Use CASE to show the name of each teacher followed by 'Sci' if the teacher is in dept 1 or 2 and 'Art' otherwise.

SELECT teacher.name, 
CASE WHEN teacher.dept = 1 OR teacher.dept=2
THEN 'Sci'
ELSE 'Art'
END
FROM teacher;
