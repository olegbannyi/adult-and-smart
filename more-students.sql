SELECT s.name,
    CASE
        WHEN (SELECT AVG(ss2.result) FROM Student_Subject ss2
        WHERE s.student_id = ss2.student_id) > 3.5 THEN 'above average'
        ELSE 'below average'
    END 
    as best
FROM Students s
JOIN Student_Subject ss
ON s.student_id = ss.student_id
GROUP BY s.name
ORDER BY s.name;
