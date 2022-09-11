-- Find all rooms that can seat at least 100 people
SELECT * FROM `room` WHERE capacity >= 100 

-- Find the course or courses with the earliest start time
SELECT `name` FROM `course` WHERE start_time = (SELECT min(start_time) FROM course)  

-- Find all courses taken by BIF majors
SELECT c.name FROM `course` as c, majorsln as m , enrolled as e , department as d WHERE e.student_id = m.student_id and d.id = m.dept_id and e.Course_crn = c.crn and d.name = 'BIF'  GROUP by c.name

-- Create a list of all students who are not enrolled in a course
SELECT id from student where id not in (SELECT student_id FROM enrolled)

-- Find the number of CS students enrolled in CSC275
SELECT m.student_id from enrolled as e , majorsln as m, department as d , course as c where d.name = 'CS' and d.id = m.dept_id and e.student_id = m.student_id and c.name = 'CSC275' and c.crn = e.Course_crn

