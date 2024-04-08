SELECT "grades"."name", "sectors"."name", COUNT(DISTINCT "students"."id") AS "students"
FROM "grades"
INNER JOIN "classes" ON "grades"."id" = "classes"."gradeId"
INNER JOIN "sectors" ON "grades"."sectorId" = "sectors"."id"
INNER JOIN "cycles" ON "classes"."id" = "cycles"."classId"
INNER JOIN "studentCycles" ON "studentCycles"."cycleId" = "cycles"."id"
INNER JOIN "students" ON "students"."id" = "studentCycles"."studentId"
GROUP BY "grades"."name", "sectors"."name", "grades"."level"
ORDER BY "grades"."level", "students" ASC;