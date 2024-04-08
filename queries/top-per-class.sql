WITH StudentAverageScores AS (
  SELECT
    sc."studentId",
    c."classId",
    AVG(se.score) AS avgScore
  FROM "studentExams" se
  JOIN "exams" e ON se."examId" = e.id
  JOIN "cycles" c ON e."cycleId" = c.id
  JOIN "studentCycles" sc ON c.id = sc."cycleId"
  WHERE c.year = 2021
  GROUP BY sc."studentId", c."classId"
), RankedStudents AS (
  SELECT
    sas."studentId",
    cl.id AS classId,
    g.name || ' - ' || s.name || ' - ' || cl.name AS classGradeSector,
    sas.avgScore,
    ROW_NUMBER() OVER (PARTITION BY sas."classId" ORDER BY sas.avgScore DESC) AS rank
  FROM StudentAverageScores sas
  JOIN "classes" cl ON sas."classId" = cl.id
  JOIN "grades" g ON cl."gradeId" = g.id
  JOIN "sectors" s ON g."sectorId" = s.id
)
SELECT
  rs.classGradeSector,
  st."firstName",
  st."lastName",
  ROUND(rs.avgScore, 2) as "Average Score"
FROM RankedStudents rs
JOIN "students" st ON rs."studentId" = st.id
WHERE rs.rank = 1
ORDER BY rs.avgScore DESC;