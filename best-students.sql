SELECT s.name,
        SUM(a.bonus) as [bonus point]
FROM Students s
JOIN Student_Achievement sa
ON s.student_id = sa.student_id
JOIN Achievement a
ON sa.achievement_id = a.achievement_id
GROUP BY s.name
ORDER BY [bonus point] DESC, s.name ASC
LIMIT 4;
