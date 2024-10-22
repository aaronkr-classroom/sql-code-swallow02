--1. 테이블 생성하기 (4)
--2. 조인문 사용하기 (3)
--3. SELECT문을 사용하여 데이터 탐색하기 (3)
CREATE TABLE course(id int,name char(40),teacher_id int)
CREATE TABLE student(id int,first_name char(40),last_name char(40))
CREATE TABLE student_course(student_id int,course_id int)
CREATE TABLE teacher(id int,first_name char(40),last_name char(40))


INSERT INTO course(id,name,teacher_id) VALUES 
(1,'Database design',1),
(2,'English literature',2),
(3,'Python programming',1)

INSERT INTO student VALUES 
(1,'Shreya','Bain'),
(2,'Rianna','Foster'),
(3,'Yosef','Naylor')

INSERT INTO student_course VALUES 
(1,2),
(1,3),
(2,1),
(2,2),
(2,3),
(3,1)

INSERT INTO teacher VALUES 
(1,'Taylah','Booker'),
(2,'Sarah-Louise','Blake')

SELECT * FROM student_course JOIN student 
ON student_course.student_id = student.id

SELECT * FROM course JOIN teacher 
ON course.teacher_id = teacher.id

SELECT * FROM student_course JOIN course 
ON student_course.course_id = course.id


SELECT first_name,last_name FROM student 
JOIN student_course 
ON student_course.student_id = student.id
JOIN course 
ON course.id = student_course.course_id
WHERE course.name = 'Database design'

SELECT name FROM course
WHERE course.teacher_id = 1

SELECT first_name,last_name FROM teacher 
WHERE last_name LIKE('B%')
UNION
SELECT first_name,last_name FROM student
WHERE last_name LIKE('B%')

