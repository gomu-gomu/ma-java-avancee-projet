SELECT "grades"."name", "sectors"."name", "grades"."level", COUNT("gradeSubjects"."subjectId") AS "subjects"
	FROM "gradeSubjects"
	INNER JOIN "grades" ON "grades"."id" = "gradeSubjects"."gradeId"
	INNER JOIN "sectors" ON "grades"."sectorId" = "sectors"."id"
	GROUP BY "grades"."name", "sectors"."name", "grades"."level"
	ORDER BY "grades"."level", "subjects" ASC;