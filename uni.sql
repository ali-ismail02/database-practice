-- Find all rooms that can seat at least 100 people
SELECT * FROM `room` WHERE capacity >= 100 

-- Find the course or courses with the earliest start time
SELECT `name` FROM `course` WHERE start_time = (SELECT min(start_time) FROM course)  