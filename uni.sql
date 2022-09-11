-- Find all rooms that can seat at least 100 people
SELECT * FROM `room` WHERE capacity >= 100 

-- Find the course or courses with the earliest start time
SELECT `crn`, `start_time` FROM `course` where start_time = (SELECT MIN(start_time) FROM `course`)

-- Find all courses taken by BIF majors
SELECT Course_crn FROM `Enrolled` as e , majorsln as m where m.student_id=e.student_id and m.dept_id = 'BIF' GROUP BY Course_crn