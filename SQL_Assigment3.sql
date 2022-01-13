-- Single-Row Subqueries 1.Answer
SELECT TrackId, name, Milliseconds
FROM tracks
WHERE Milliseconds= (SELECT max(Milliseconds) FROM tracks);

-- Single-Row Subqueries 2.Answer
SELECT TrackId, name, Milliseconds
FROM tracks
WHERE Milliseconds= (SELECT min(Milliseconds) FROM tracks);

-- Single-Row Subqueries 3.Answer
SELECT TrackId, name, Bytes, (SELECT avg(Bytes) FROM tracks) as general_avg
FROM tracks
WHERE Bytes > (SELECT avg(Bytes) FROM tracks)
ORDER by Bytes DESC;

--Multiple-Row Subqueries 1.Answer
SELECT CustomerId, FirstName, LastName
from customers
WHERE SupportRepId IN (SELECT EmployeeId
						FROM employees
						WHERE FirstName IN ('Jane', 'Margaret'));

--Multiple-Row Subqueries 2.Answer
SELECT c.FirstName,c.LastName, c.CustomerId, e.FirstName as supportRep_name, e.LastName as supportRep_lastname 
FROM employees e
JOIN customers c
ON c.SupportRepId = e.EmployeeId
WHERE e.FirstName IN ('Jane','Margaret') AND e.LastName in ('Peacock', 'Park');

--DDL and DML Statements 1.Answer
CREATE TABLE courses (
                        CourseId INT,
                        CourseName TEXT NOT NULL,
                        EmployeeId  INT ,
                        CoursePrice real,
                        PRIMARY KEY(CourseId),
                        FOREIGN KEY(EmployeeId) REFERENCES employees(EmployeeId)
                        );


--DDL and DML Statements 2.Answer
INSERT INTO courses VALUES(1,'datascience',3,5000);
INSERT INTO courses VALUES(2,'cyber',4,4500);
INSERT INTO courses VALUES(3,'tester',5,7000);
INSERT INTO courses VALUES(4,'devops',6,8000);
INSERT INTO courses VALUES(5,'fullstack',7,5500);

--DDL and DML Statements 3.Answer
DELETE FROM courses WHERE CourseName = 'fullstack';

--DDL and DML Statements 4.Answer
ALTER TABLE courses
ADD StartDate TEXT DEFAULT 'Welcome';

--DDL and DML Statements 5.Answer
ALTER TABLE courses
DROP COLUMN CoursePrice ;

--DDL and DML Statements 6.Answer
DROP TABLE courses;



