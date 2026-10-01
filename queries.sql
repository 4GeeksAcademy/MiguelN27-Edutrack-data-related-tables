-----------------------------------
--      Intro to Python list     --
-----------------------------------
select
  student_name,
  student_email,
  completion_percentage
from
  enrollments
where
  course_title = 'Intro to Python';

-----------------------------------
--   Completion percenteage list --
-----------------------------------
select
  student_name,
  student_email,
  completion_percentage
from
  enrollments
where
  completion_percentage < 10;

-----------------------------------
--    Instructor field Is NULL   --
-----------------------------------
select
  student_name,
  student_email,
  completion_percentage,
  instructor
from
  enrollments
where
  instructor is null;

------------------------------------------------------------------------
--    5 Students with highest completion percenteage but not passed   --
------------------------------------------------------------------------
select
  student_name,
  completion_percentage,
  course_title,
  passed
from
  enrollments
where
  completion_percentage > 0
  and passed = false
order by
  completion_percentage desc
limit
  5;

-----------------------------------
--     Enrollments last year     --
-----------------------------------
select
  student_name,
  course_title,
  enrollment_date
from
  enrollments
where
  enrollment_date >= '2025-01-01'
order by
  enrollment_date desc;

-----------------------------------
--           New insert          --
-----------------------------------
INSERT INTO enrollments (id, student_id, student_name, student_email, course_id, course_title, category, enrollment_date, completion_percentage,passed, monthly_fee_paid, instructor)
VALUES (18, 3, 'Lucia Fernandes', 'lucia.fernandes@student.edutrack.com', 5, 'Advanced Python', 'Programming', '2025-04-01', 0, FALSE, 69.99, 'Carlos Vega');
-----------------------------------
--   Update instructor status    --
-----------------------------------
update enrollments
set
  instructor = 'Pending Assignment'
where
  instructor is null;

-----------------------------------
--       DELETE @test.com        --
-----------------------------------
select
  student_id,
  student_name,
  student_email
from
  enrollments
where
  student_email like '%@test.com';

--------- Delete ------------------

delete from enrollments
where
  student_email like '%@test.com';

---------------------------------------------
--   Number of enrollments by category     --
---------------------------------------------
select
  category,
  COUNT(*) as total_programs
from
  enrollments
group by
  category
order by
  category;

---------------------------------------------
--     Completion percenteage average      --
---------------------------------------------
select
  course_title,
  COUNT(*) as total_students,
  ROUND(AVG(completion_percentage), 2) as average_percentage
from
  enrollments
group by
  course_title
order by
  average_percentage asc;

---------------------------------------------
--     Courses with more than 3 enrolls    --
---------------------------------------------
select
  course_title,
  COUNT(*) as total_students_enrolled
from
  enrollments
group by
  course_title
having
  COUNT(course_title) > 3;

---------------------------------------------
--       Total revenue by category         --
---------------------------------------------
select
  category,
  SUM(monthly_fee_paid) as total_revenue
from
  enrollments
group by
  category
order by
  total_revenue desc;