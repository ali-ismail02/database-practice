-- Find all rooms that can seat at least 100 people
SELECT * FROM `room` WHERE capacity >= 100 

-- Find the course or courses with the earliest start time
SELECT `crn`, `start_time` FROM `course` where start_time = (SELECT MIN(start_time) FROM `course`)

-- Find all courses taken by BIF majors
SELECT Course_crn FROM `Enrolled` as e , majorsln as m where m.student_id=e.student_id and m.dept_id = 'BIF' GROUP BY Course_crn

-- Create a list of all students who are not enrolled in a course
SELECT id from student where id not in (SELECT student_id as id from enrolled) GROUP BY id