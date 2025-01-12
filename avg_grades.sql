SELECT course_id, AVG(grade) AS average_grade
FROM grades
GROUP BY course_id;