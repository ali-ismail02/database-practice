-- Find all rooms that can seat at least 100 people
SELECT * FROM `room` WHERE capacity >= 100 

-- Find the course or courses with the earliest start time
SELECT `crn`, `start_time` FROM `course` where start_time = (SELECT MIN(start_time) FROM `course`)