SELECT s.name, d.department_name
FROM Students s
JOIN Department d
ON s.department_id = d.department_id
JOIN Student_Subject ss
ON s.student_id = ss.student_id
GROUP BY s.name
HAVING AVG(ss.result) > 4.5
ORDER BY s.name;
