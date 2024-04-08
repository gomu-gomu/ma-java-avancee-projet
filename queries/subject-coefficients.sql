SELECT
  g.name AS "Grade",
  sec.name AS "SectorName",
  s.name AS "SubjectName",
  gs.coefficient AS "Coefficient"
FROM "gradeSubjects" gs
JOIN "subjects" s ON gs."subjectId" = s.id
JOIN "grades" g ON gs."gradeId" = g.id
JOIN "sectors" sec ON g."sectorId" = sec.id
ORDER BY g.level ASC;