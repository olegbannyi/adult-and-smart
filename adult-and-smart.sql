SELECT s.name
FROM Students s
JOIN Student_Subject ss
ON s.student_id = ss.student_id
WHERE s.grade = 3
    AND 5 = (
        SELECT AVG(ss2.result)
        FROM Student_Subject ss2
        WHERE ss2.student_id = s.student_id
    )
GROUP BY s.name;
