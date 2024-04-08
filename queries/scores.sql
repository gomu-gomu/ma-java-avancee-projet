SELECT
  st."firstName",
  st."lastName",
  AVG(se.score) AS averageScore
FROM "students" st
JOIN "studentExams" se ON st.id = se."studentId"
JOIN "exams" e ON se."examId" = e.id
JOIN "cycles" c ON e."cycleId" = c.id
JOIN "classes" cl ON c."classId" = cl.id
WHERE cl.name = 'Class C' AND c.year = 2020
GROUP BY st.id
ORDER BY averageScore DESC;