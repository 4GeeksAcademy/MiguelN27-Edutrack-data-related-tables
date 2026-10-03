-----------------------------------
---    Every enrollment list   ----
-----------------------------------

SELECT s.name, c.title, e.completion_percentage
FROM enrollments e
JOIN students s ON s.id = e.student_id
JOIN courses c ON c.id = e.course_id
ORDER BY s.name;

----------------------------------------
---    At least one course passed   ----
----------------------------------------

SELECT s.name, s.email, c.title, e.passed
FROM enrollments e
JOIN students s ON s.id = e.student_id
JOIN courses c ON c.id = e.course_id
WHERE e.passed = TRUE
ORDER BY s.name;

----------------------------------------
---     Average % by instructor     ----
----------------------------------------

SELECT c.instructor_name, ROUND(AVG(e.completion_percentage), 2) AS percentage_avg
FROM enrollments e
JOIN courses c ON c.id = e.course_id
GROUP BY c.instructor_name
ORDER BY percentage_avg DESC;

----------------------------------------
---   STUDENTS WITH NO ENROLLMENTS  ----
----------------------------------------

SELECT s.id, s.name
FROM students s
LEFT JOIN enrollments e ON e.student_id = s.id
WHERE e.id IS NULL;

----------------------------------------
---   COURSES WITH NO ENROLLMENTS   ----
----------------------------------------

SELECT c.title, c.instructor_name
FROM courses c
LEFT JOIN enrollments e ON e.course_id = c.id
WHERE e.id IS NULL;

------------------------------------------------------
---   How many courses each student is enrolled   ----
------------------------------------------------------

SELECT s.name, COUNT(e.course_id) AS total_course
FROM enrollments e
JOIN students s ON s.id = e.student_id
GROUP BY s.name
HAVING COUNT(e.course_id) > 1
ORDER BY total_course DESC;

------------------------------------------------------
---        Total Revenue monthly per course       ----
------------------------------------------------------

SELECT c.category, SUM(c.monthly_fee) AS total_revenue
FROM courses c
JOIN enrollments e ON e.course_id = c.id
GROUP BY c.category
ORDER BY total_revenue DESC;

------------------------------------------------------
---      Number of tudents per each instructor    ----
------------------------------------------------------

SELECT c.instructor_name, COUNT(e.id) AS total_students
FROM enrollments e
JOIN courses c ON c.id = e.course_id
GROUP BY c.instructor_name
ORDER BY total_students DESC;

----------------------------------------------------------------------------
---      Enrollments where student_id doesnt match existing student    ----
----------------------------------------------------------------------------

SELECT e.id, e.student_id
FROM enrollments e
LEFT JOIN students s ON s.id = e.student_id
WHERE s.id IS NULL;

----------------------------------------------------------------------------
---      Enrollments where course_id doesnt match existing courses      ----
----------------------------------------------------------------------------

SELECT e.id, e.course_id
FROM enrollments e
LEFT JOIN courses c ON c.id = e.course_id
WHERE c.id IS NULL;