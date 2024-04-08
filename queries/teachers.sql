SELECT
  "t"."firstName",
  "t"."lastName",
  "t"."phone",
  "s"."name" AS "subjectName"
FROM "teachers" t
JOIN "subjects" s ON t."subjectId" = s.id;