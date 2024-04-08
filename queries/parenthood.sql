SELECT
  st."firstName" AS studentFirstName,
  st."lastName" AS studentLastName,
  p."firstName" AS parentFirstName,
  p."lastName" AS parentLastName,
  p.phone AS parentPhone
FROM "students" st
JOIN "parenthoods" ph ON st.id = ph."studentId"
JOIN "parents" p ON ph."parentId" = p.id;