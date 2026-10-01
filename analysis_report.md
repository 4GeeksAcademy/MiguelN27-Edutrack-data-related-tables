## Enrollments in Intro to Python

| student_name | student_email                     | completion_percentage |
| ------------ | --------------------------------- | --------------------- |
| Emily Watson | emily.watson@student.edutrack.com | 85                    |
| Klaus Weber  | klaus.weber@student.edutrack.com  | 92                    |
| Marco Rossi  | marco.rossi@student.edutrack.com  | 88                    |
| Priya Sharma | priya.sharma@student.edutrack.com | 55                    |

## Completion percentage

| student_name    | student_email                        | completion_percentage |
| --------------- | ------------------------------------ | --------------------- |
| Lucia Fernandes | lucia.fernandes@student.edutrack.com | 5                     |
| Lucia Fernandes | lucia.fernandes@student.edutrack.com | 3                     |
| Lucia Fernandes | lucia.fernandes@student.edutrack.com | 0                     |
| Lucia Fernandes | lucia.fernandes@student.edutrack.com | 0                     |
| Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 0                     |
| Pierre Dubois   | pierre.dubois@student.edutrack.com   | 0                     |
| Lucia Fernandes | lucia.fernandes@student.edutrack.com | 0                     |
| Lucia Fernandes | lucia.fernandes@student.edutrack.com | 0                     |

## Instructor field IS NULL

| student_name  | student_email                      | completion_percentage | instructor |
| ------------- | ---------------------------------- | --------------------- | ---------- |
| Yuki Nakamura | yuki.nakamura@student.edutrack.com | 0                     | null       |
| Pierre Dubois | pierre.dubois@student.edutrack.com | 0                     | null       |

## 5 Students with highest percentage but not passed

| student_name  | completion_percentage | course_title           | passed |
| ------------- | --------------------- | ---------------------- | ------ |
| Emily Watson  | 60                    | Web Design Basics      | false  |
| Priya Sharma  | 55                    | Intro to Python        | false  |
| Yuki Nakamura | 45                    | Data Analysis with SQL | false  |
| Emily Watson  | 40                    | Advanced Python        | false  |
| Pierre Dubois | 20                    | Data Analysis with SQL | false  |


## Enrollment last year

| student_name    | course_title           | enrollment_date |
| --------------- | ---------------------- | --------------- |
| Lucia Fernandes | Advanced Python        | 2025-04-01      |
| Lucia Fernandes | Advanced Python        | 2025-04-01      |
| Lucia Fernandes | Advanced Python        | 2025-04-01      |
| Lucia Fernandes | Advanced Python        | 2025-04-01      |
| Emily Watson    | Advanced Python        | 2025-03-05      |
| Pierre Dubois   | Data Analysis with SQL | 2025-02-20      |
| Priya Sharma    | Intro to Python        | 2025-01-10      |

## New insert id 18

| id | student_id | student_name    | student_email                        | course_title    | enrollment_date |
| -- | ---------- | --------------- | ------------------------------------ | --------------- | --------------- |
| 18 | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | Advanced Python | 2025-04-01      |
| 17 | 1          | Emily Watson    | emily.watson@student.edutrack.com    | Advanced Python | 2025-03-05      |
| 7  | 4          | Marco Rossi     | marco.rossi@student.edutrack.com     | Advanced Python | 2024-02-14      |

## Instructor status updated

| id | student_id | student_name  | course_title       | category | instructor         |
| -- | ---------- | ------------- | ------------------ | -------- | ------------------ |
| 10 | 5          | Yuki Nakamura | UI/UX Fundamentals | Design   | Pending Assignment |
| 11 | 6          | Pierre Dubois | UI/UX Fundamentals | Design   | Pending Assignment |

## Delete @test.com from enrollments

Before delete

| student_id | student_name | student_email         |
| ---------- | ------------ | --------------------- |
| 8          | James Miller | james.miller@test.com |
| 9          | Alex Chen    | alex.chen@test.com    |

## Number of enrollments by category

| category    | total_programs |
| ----------- | -------------- |
| Data        | 3              |
| Design      | 5              |
| Marketing   | 2              |
| Programming | 8              |

## Completion percentage average 

| course_title           | total_students | average_percentage |
| ---------------------- | -------------- | ------------------ |
| UI/UX Fundamentals     | 2              | 0.00               |
| Web Design Basics      | 3              | 25.00              |
| Digital Marketing 101  | 2              | 36.50              |
| Advanced Python        | 3              | 45.00              |
| Data Analysis with SQL | 3              | 47.67              |
| Intro to Python        | 5              | 70.00              |

## Courses with more than 3 enrolls

| course_title    | total_students_enrolled |
| --------------- | ----------------------- |
| Intro to Python | 5                       |

## Total revenue by category

| category    | total_revenue |
| ----------- | ------------- |
| Programming | 459.92        |
| Design      | 209.95        |
| Data        | 179.97        |
| Marketing   | 59.98         |