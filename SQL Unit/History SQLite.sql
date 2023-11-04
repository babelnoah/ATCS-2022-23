--- 03-03-2023 06:08:32
--- SQLite
/***** ERROR ******
near "first_name": syntax error
 ----- 
create table student (
	id INTEGER primary KEY
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    grade_level INTEGER
);

CREATE TABLE enrollment (
	id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
	FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (course_id) REFERENCES course(id)
);

CREATE TABLE course (
    id INTEGER PRIMARY KEY,
    block TEXT Not NULL),
    room_number INTEGER,
    name TEXT Not NULL,
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES teacher(id)
);

CREATE TABLE teacher (
    id INTEGER PRIMARY KEY,
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    department TEXT Not NULL
);

PRAGMA foreign_keys= on;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 06:08:40
--- SQLite
/***** ERROR ******
near "first_name": syntax error
 ----- 
create table student (
	id INTEGER primary KEY
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    grade_level INTEGER
);

CREATE TABLE enrollment (
	id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
	FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (course_id) REFERENCES course(id)
);

CREATE TABLE course (
    id INTEGER PRIMARY KEY,
    block TEXT Not NULL),
    room_number INTEGER,
    name TEXT Not NULL,
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES teacher(id)
);

CREATE TABLE teacher (
    id INTEGER PRIMARY KEY,
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    department TEXT Not NULL
);

PRAGMA foreign_keys= on;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 06:09:43
--- SQLite
/***** ERROR ******
near "INTEGER": syntax error
 ----- 
create table student (
	id INTEGER primary KEY,
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    grade_level INTEGER
);

CREATE TABLE enrollment (
	id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
	FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (course_id) REFERENCES course(id)
);

CREATE TABLE course (
    id INTEGER PRIMARY KEY,
    block TEXT Not NULL),
    room_number INTEGER,
    name TEXT Not NULL,
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES teacher(id)
);

CREATE TABLE teacher (
    id INTEGER PRIMARY KEY,
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    department TEXT Not NULL
);

PRAGMA foreign_keys= on;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 06:12:05
--- SQLite
/***** ERROR ******
table student already exists
 ----- 
create table student (
	id INTEGER primary KEY,
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    grade_level INTEGER
);

CREATE TABLE enrollment (
	id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
	FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (course_id) REFERENCES course(id)
);

CREATE TABLE course (
    id INTEGER PRIMARY KEY,
    block TEXT Not NULL,
    room_number INTEGER,
    name TEXT Not NULL,
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES teacher(id)
);

CREATE TABLE teacher (
    id INTEGER PRIMARY KEY,
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    department TEXT Not NULL
);

PRAGMA foreign_keys= on;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 06:12:15
--- SQLite
/***** ERROR ******
table student already exists
 ----- 
create table student (
	id INTEGER primary KEY,
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    grade_level INTEGER
);

CREATE TABLE enrollment (
	id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
	FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (course_id) REFERENCES course(id)
);

CREATE TABLE course (
    id INTEGER PRIMARY KEY,
    block TEXT Not NULL,
    room_number INTEGER,
    name TEXT Not NULL,
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES teacher(id)
);

CREATE TABLE teacher (
    id INTEGER PRIMARY KEY,
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    department TEXT Not NULL
);

PRAGMA foreign_keys= on;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 06:12:50
--- SQLite
/***** ERROR ******
table enrollment already exists
 ----- 
CREATE TABLE enrollment (
	id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
	FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (course_id) REFERENCES course(id)
);

CREATE TABLE course (
    id INTEGER PRIMARY KEY,
    block TEXT Not NULL,
    room_number INTEGER,
    name TEXT Not NULL,
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES teacher(id)
);

CREATE TABLE teacher (
    id INTEGER PRIMARY KEY,
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    department TEXT Not NULL
);

PRAGMA foreign_keys= on;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 06:12:55
--- SQLite
CREATE TABLE course (
    id INTEGER PRIMARY KEY,
    block TEXT Not NULL,
    room_number INTEGER,
    name TEXT Not NULL,
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES teacher(id)
);

CREATE TABLE teacher (
    id INTEGER PRIMARY KEY,
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    department TEXT Not NULL
);

PRAGMA foreign_keys= on;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;

--- 03-03-2023 06:12:59
--- SQLite
/***** ERROR ******
table course already exists
 ----- 
CREATE TABLE course (
    id INTEGER PRIMARY KEY,
    block TEXT Not NULL,
    room_number INTEGER,
    name TEXT Not NULL,
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES teacher(id)
);

CREATE TABLE teacher (
    id INTEGER PRIMARY KEY,
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    department TEXT Not NULL
);

PRAGMA foreign_keys= on;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 06:13:03
--- SQLite
/***** ERROR ******
table teacher already exists
 ----- 
CREATE TABLE teacher (
    id INTEGER PRIMARY KEY,
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    department TEXT Not NULL
);

PRAGMA foreign_keys= on;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 06:13:07
--- SQLite

PRAGMA foreign_keys= on;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;

--- 03-03-2023 06:16:28
--- SQLite
/***** ERROR ******
near "SELECT": syntax error
 ----- 
insert into course
values (1,"A",5,"Computer Science",

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 06:50:39
--- SQLite
/***** ERROR ******
FOREIGN KEY constraint failed
 ----- 
insert into course
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);

insert into student
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");


SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 06:51:14
--- SQLite
/***** ERROR ******
FOREIGN KEY constraint failed
 ----- 
pragma foreign_keys=on;

insert into course
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);

insert into student
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");


SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 06:53:55
--- SQLite
/***** ERROR ******
FOREIGN KEY constraint failed
 ----- 
pragma foreign_keys=on;

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);

insert into student (id, first_name, last_name, email, grade_level)
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");


SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 06:53:57
--- SQLite
/***** ERROR ******
FOREIGN KEY constraint failed
 ----- 
pragma foreign_keys=on;

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);

insert into student (id, first_name, last_name, email, grade_level)
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");


SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 08:59:40
--- SQLite
/***** ERROR ******
FOREIGN KEY constraint failed
 ----- 
pragma foreign_keys=on;
insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);

insert into student (id, first_name, last_name, email, grade_level)
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");


SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:13:48
--- SQLite
pragma foreign_keys=on;
insert into student (id, first_name, last_name, email, grade_level)
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);




SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;

--- 03-03-2023 09:23:04
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: student.id
 ----- 
pragma foreign_keys=on;
insert into student (id, first_name, last_name, email, grade_level)
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);

Update course

UPDATE course 
SET room_number WHERE teacher_id = 3 
when teacher_id = 1
Set room_number where teacher_id = 1
when teacher_id = 3

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:25:41
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: student.id
 ----- 
pragma foreign_keys=on;
insert into student (id, first_name, last_name, email, grade_level)
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);

Update course

UPDATE course 
SET room_number WHERE teacher_id = 16
when teacher_id = 1
Set room_number where teacher_id = 5
when teacher_id = 3

update enrollment
set course_id=4
where student_id=3 and course_id = NULL

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:26:26
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: student.id
 ----- 
pragma foreign_keys=on;
insert into student (id, first_name, last_name, email, grade_level)
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);

Update course

UPDATE course 
SET room_number WHERE teacher_id = 16
where teacher_id = 1
Set room_number where teacher_id = 5
where teacher_id = 3

update enrollment
set course_id=4
when student_id=3 and course_id = NULL

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:27:22
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: student.id
 ----- 
pragma foreign_keys=on;
insert into student (id, first_name, last_name, email, grade_level)
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);

Update course

UPDATE course 
SET room_number WHERE teacher_id = 16
where teacher_id = 1
Set room_number where teacher_id = 5
where teacher_id = 3

update enrollment
set course_id=4
when student_id=3 and course_id = NULL

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:28:22
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: student.id
 ----- 
pragma foreign_keys=on;
insert into student (id, first_name, last_name, email, grade_level)
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);

Update course

UPDATE course 
SET room_number = 16
where teacher_id = 1
Set room_number  = 5
where teacher_id = 3

update enrollment
set course_id=4
when student_id=3 and course_id = NULL

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:28:28
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: student.id
 ----- 
pragma foreign_keys=on;
insert into student (id, first_name, last_name, email, grade_level)
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);

Update course

UPDATE course 
SET room_number = 16
where teacher_id = 1
Set room_number  = 5
where teacher_id = 3

update enrollment
set course_id=4
when student_id=3 and course_id = NULL

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:29:27
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: student.id
 ----- 
pragma foreign_keys=on;
insert into student (id, first_name, last_name, email, grade_level)
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);

Update course

UPDATE course 
SET room_number = 16
where teacher_id = 1
Set room_number  = 5
where teacher_id = 3

update enrollment
set course_id=4
when student_id=3 and course_id = NULL

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:29:59
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: student.id
 ----- 
pragma foreign_keys=on;
insert into student (id, first_name, last_name, email, grade_level)
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);

Update course

UPDATE course 
SET room_number = 16
where teacher_id = 1;

update course
Set room_number  = 5
where teacher_id = 3;

update enrollment
set course_id=4
when student_id=3 and course_id = NULL;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:30:30
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: student.id
 ----- 
pragma foreign_keys=on;
insert into student (id, first_name, last_name, email, grade_level)
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);


UPDATE course 
SET room_number = 16
where teacher_id = 1;

update course
Set room_number  = 5
where teacher_id = 3;

update enrollment
set course_id=4
when student_id=3 and course_id = NULL;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:32:34
--- SQLite
/***** ERROR ******
5 values for 4 columns
 ----- 
pragma foreign_keys=on;
insert into student (first_name, last_name, email, grade_level)
values (1, "Jane","Smith","jsmith@school.com",9),
(2, "John","Doe","jdoe@school.com",10),
(3,"Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);


UPDATE course 
SET room_number = 16
where teacher_id = 1;

update course
Set room_number  = 5
where teacher_id = 3;

update enrollment
set course_id=4
when student_id=3 and course_id = NULL;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:32:47
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: teacher.id
 ----- 
pragma foreign_keys=on;
insert into student (first_name, last_name, email, grade_level)
values ("Jane","Smith","jsmith@school.com",9),
("John","Doe","jdoe@school.com",10),
("Eve","Evers","eevers@school.com",9);

insert into teacher (id, first_name, last_name, email, department)
values (1,"Jessica","Day","jday@school.com","Computer Science"),
(2,"Walter","White","wwhite@school.com","Chemistry"),
(3,"George","Feeny","gfeeny@school.com","Geometry"),
(4, "Dewey","Finn","dfinn@school.com","Drawing and Painting"),
(5,"Minerva","McGonagall","mmcgonagall@school.com","US History"),
(6,"John","Keating","jkeating@school.com","English 1"),
(7,"John","Johnson","jjohnson@school.com","Latin");

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);


UPDATE course 
SET room_number = 16
where teacher_id = 1;

update course
Set room_number  = 5
where teacher_id = 3;

update enrollment
set course_id=4
when student_id=3 and course_id = NULL;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:33:13
--- SQLite
/***** ERROR ******
table teacher has no column named ifirst_name
 ----- 
pragma foreign_keys=on;
insert into student (first_name, last_name, email, grade_level)
values ("Jane","Smith","jsmith@school.com",9),
("John","Doe","jdoe@school.com",10),
("Eve","Evers","eevers@school.com",9);

insert into teacher (ifirst_name, last_name, email, department)
values ("Jessica","Day","jday@school.com","Computer Science"),
("Walter","White","wwhite@school.com","Chemistry"),
("George","Feeny","gfeeny@school.com","Geometry"),
("Dewey","Finn","dfinn@school.com","Drawing and Painting"),
("Minerva","McGonagall","mmcgonagall@school.com","US History"),
("John","Keating","jkeating@school.com","English 1"),
("John","Johnson","jjohnson@school.com","Latin");

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);


UPDATE course 
SET room_number = 16
where teacher_id = 1;

update course
Set room_number  = 5
where teacher_id = 3;

update enrollment
set course_id=4
when student_id=3 and course_id = NULL;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:33:24
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: course.id
 ----- 
pragma foreign_keys=on;
insert into student (first_name, last_name, email, grade_level)
values ("Jane","Smith","jsmith@school.com",9),
("John","Doe","jdoe@school.com",10),
("Eve","Evers","eevers@school.com",9);

insert into teacher (first_name, last_name, email, department)
values ("Jessica","Day","jday@school.com","Computer Science"),
("Walter","White","wwhite@school.com","Chemistry"),
("George","Feeny","gfeeny@school.com","Geometry"),
("Dewey","Finn","dfinn@school.com","Drawing and Painting"),
("Minerva","McGonagall","mmcgonagall@school.com","US History"),
("John","Keating","jkeating@school.com","English 1"),
("John","Johnson","jjohnson@school.com","Latin");

insert into course (id, block, room_number, name, teacher_id)
values (1,"A",5,"Computer Science",1),
(2,"B",27,"Chemistry",2),
(3,"C",16,"Geometry",3),
(4,"D",2,"Drawing and Painting",4),
(5, "E",10,"US History",5),
(6,"G",7,"English 1",6),
(7,"A",16,"Algebra 2",6),
(8,"B",2,"Music 1",4),
(9,"C",27,"Physics",2),
(10,"D",32,"English 2",6),
(11,"F",10,"World History",5),
(12,"G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);


UPDATE course 
SET room_number = 16
where teacher_id = 1;

update course
Set room_number  = 5
where teacher_id = 3;

update enrollment
set course_id=4
when student_id=3 and course_id = NULL;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:34:00
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: enrollment.id
 ----- 
pragma foreign_keys=on;
insert into student (first_name, last_name, email, grade_level)
values ("Jane","Smith","jsmith@school.com",9),
("John","Doe","jdoe@school.com",10),
("Eve","Evers","eevers@school.com",9);

insert into teacher (first_name, last_name, email, department)
values ("Jessica","Day","jday@school.com","Computer Science"),
("Walter","White","wwhite@school.com","Chemistry"),
("George","Feeny","gfeeny@school.com","Geometry"),
("Dewey","Finn","dfinn@school.com","Drawing and Painting"),
("Minerva","McGonagall","mmcgonagall@school.com","US History"),
("John","Keating","jkeating@school.com","English 1"),
("John","Johnson","jjohnson@school.com","Latin");

insert into course (block, room_number, name, teacher_id)
values ("A",5,"Computer Science",1),
("B",27,"Chemistry",2),
("C",16,"Geometry",3),
("D",2,"Drawing and Painting",4),
("E",10,"US History",5),
("G",7,"English 1",6),
("A",16,"Algebra 2",6),
("B",2,"Music 1",4),
("C",27,"Physics",2),
("D",32,"English 2",6),
("F",10,"World History",5),
("G",20,"Latin",7);

insert into enrollment(id, student_id, course_id)
values (1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,NULL),
(8,2,3),
(9,2,4),
(10,2,2),
(11,2,6),
(12,2,NULL),
(13,2,5),
(14,2,7),
(15,3,1),
(16,3,2),
(17,3,3),
(18,3,NULL),
(19,3,5),
(20,3,6),
(21,3,7);


UPDATE course 
SET room_number = 16
where teacher_id = 1;

update course
Set room_number  = 5
where teacher_id = 3;

update enrollment
set course_id=4
when student_id=3 and course_id = NULL;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:34:42
--- SQLite
/***** ERROR ******
near "when": syntax error
 ----- 
pragma foreign_keys=on;
insert into student (first_name, last_name, email, grade_level)
values ("Jane","Smith","jsmith@school.com",9),
("John","Doe","jdoe@school.com",10),
("Eve","Evers","eevers@school.com",9);

insert into teacher (first_name, last_name, email, department)
values ("Jessica","Day","jday@school.com","Computer Science"),
("Walter","White","wwhite@school.com","Chemistry"),
("George","Feeny","gfeeny@school.com","Geometry"),
("Dewey","Finn","dfinn@school.com","Drawing and Painting"),
("Minerva","McGonagall","mmcgonagall@school.com","US History"),
("John","Keating","jkeating@school.com","English 1"),
("John","Johnson","jjohnson@school.com","Latin");

insert into course (block, room_number, name, teacher_id)
values ("A",5,"Computer Science",1),
("B",27,"Chemistry",2),
("C",16,"Geometry",3),
("D",2,"Drawing and Painting",4),
("E",10,"US History",5),
("G",7,"English 1",6),
("A",16,"Algebra 2",6),
("B",2,"Music 1",4),
("C",27,"Physics",2),
("D",32,"English 2",6),
("F",10,"World History",5),
("G",20,"Latin",7);

insert into enrollment(student_id, course_id)
values (1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,NULL),
(2,3),
(2,4),
(2,2),
(2,6),
(2,NULL),
(2,5),
(2,7),
(3,1),
(3,2),
(3,3),
(3,NULL),
(3,5),
(3,6),
(3,7);


UPDATE course 
SET room_number = 16
where teacher_id = 1;

update course
Set room_number  = 5
where teacher_id = 3;

update enrollment
set course_id=4
when student_id=3 and course_id = NULL;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:34:54
--- SQLite
pragma foreign_keys=on;
insert into student (first_name, last_name, email, grade_level)
values ("Jane","Smith","jsmith@school.com",9),
("John","Doe","jdoe@school.com",10),
("Eve","Evers","eevers@school.com",9);

insert into teacher (first_name, last_name, email, department)
values ("Jessica","Day","jday@school.com","Computer Science"),
("Walter","White","wwhite@school.com","Chemistry"),
("George","Feeny","gfeeny@school.com","Geometry"),
("Dewey","Finn","dfinn@school.com","Drawing and Painting"),
("Minerva","McGonagall","mmcgonagall@school.com","US History"),
("John","Keating","jkeating@school.com","English 1"),
("John","Johnson","jjohnson@school.com","Latin");

insert into course (block, room_number, name, teacher_id)
values ("A",5,"Computer Science",1),
("B",27,"Chemistry",2),
("C",16,"Geometry",3),
("D",2,"Drawing and Painting",4),
("E",10,"US History",5),
("G",7,"English 1",6),
("A",16,"Algebra 2",6),
("B",2,"Music 1",4),
("C",27,"Physics",2),
("D",32,"English 2",6),
("F",10,"World History",5),
("G",20,"Latin",7);

insert into enrollment(student_id, course_id)
values (1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,NULL),
(2,3),
(2,4),
(2,2),
(2,6),
(2,NULL),
(2,5),
(2,7),
(3,1),
(3,2),
(3,3),
(3,NULL),
(3,5),
(3,6),
(3,7);


UPDATE course 
SET room_number = 16
where teacher_id = 1;

update course
Set room_number  = 5
where teacher_id = 3;

update enrollment
set course_id=4
where student_id=3 and course_id = NULL;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;

--- 03-03-2023 09:35:38
--- SQLite
pragma foreign_keys=on;
insert into student (first_name, last_name, email, grade_level)
values ("Jane","Smith","jsmith@school.com",9),
("John","Doe","jdoe@school.com",10),
("Eve","Evers","eevers@school.com",9);

insert into teacher (first_name, last_name, email, department)
values ("Jessica","Day","jday@school.com","Computer Science"),
("Walter","White","wwhite@school.com","Chemistry"),
("George","Feeny","gfeeny@school.com","Geometry"),
("Dewey","Finn","dfinn@school.com","Drawing and Painting"),
("Minerva","McGonagall","mmcgonagall@school.com","US History"),
("John","Keating","jkeating@school.com","English 1"),
("John","Johnson","jjohnson@school.com","Latin");

insert into course (block, room_number, name, teacher_id)
values ("A",5,"Computer Science",1),
("B",27,"Chemistry",2),
("C",16,"Geometry",3),
("D",2,"Drawing and Painting",4),
("E",10,"US History",5),
("G",7,"English 1",6),
("A",16,"Algebra 2",6),
("B",2,"Music 1",4),
("C",27,"Physics",2),
("D",32,"English 2",6),
("F",10,"World History",5),
("G",20,"Latin",7);

insert into enrollment(student_id, course_id)
values (1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,NULL),
(2,3),
(2,4),
(2,2),
(2,6),
(2,NULL),
(2,5),
(2,7),
(3,1),
(3,2),
(3,3),
(3,NULL),
(3,5),
(3,6),
(3,7);


UPDATE course 
SET room_number = 16
where teacher_id = 1;

update course
Set room_number  = 5
where teacher_id = 3;

update enrollment
set course_id=4
where student_id=3 and course_id = NULL;

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;

--- 03-03-2023 09:37:21
--- SQLite
/***** ERROR ******
FOREIGN KEY constraint failed
 ----- 
pragma foreign_keys=on;
insert into student (first_name, last_name, email, grade_level)
values ("Jane","Smith","jsmith@school.com",9),
("John","Doe","jdoe@school.com",10),
("Eve","Evers","eevers@school.com",9);

insert into teacher (first_name, last_name, email, department)
values ("Jessica","Day","jday@school.com","Computer Science"),
("Walter","White","wwhite@school.com","Chemistry"),
("George","Feeny","gfeeny@school.com","Geometry"),
("Dewey","Finn","dfinn@school.com","Drawing and Painting"),
("Minerva","McGonagall","mmcgonagall@school.com","US History"),
("John","Keating","jkeating@school.com","English 1"),
("John","Johnson","jjohnson@school.com","Latin");

insert into course (block, room_number, name, teacher_id)
values ("A",5,"Computer Science",1),
("B",27,"Chemistry",2),
("C",16,"Geometry",3),
("D",2,"Drawing and Painting",4),
("E",10,"US History",5),
("G",7,"English 1",6),
("A",16,"Algebra 2",6),
("B",2,"Music 1",4),
("C",27,"Physics",2),
("D",32,"English 2",6),
("F",10,"World History",5),
("G",20,"Latin",7);

insert into enrollment(student_id, course_id)
values (1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,NULL),
(2,3),
(2,4),
(2,2),
(2,6),
(2,NULL),
(2,5),
(2,7),
(3,1),
(3,2),
(3,3),
(3,NULL),
(3,5),
(3,6),
(3,7);


UPDATE course 
SET room_number = 16
where teacher_id = 1;

update course
Set room_number  = 5
where teacher_id = 3;

update enrollment
set course_id=4
where student_id=3 and course_id = NULL;

DELETE FROM student WHERE first_name = 'John' AND last_name = 'Doe';

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:37:34
--- SQLite
/***** ERROR ******
FOREIGN KEY constraint failed
 ----- 
pragma foreign_keys=on;
insert into student (first_name, last_name, email, grade_level)
values ("Jane","Smith","jsmith@school.com",9),
("John","Doe","jdoe@school.com",10),
("Eve","Evers","eevers@school.com",9);

insert into teacher (first_name, last_name, email, department)
values ("Jessica","Day","jday@school.com","Computer Science"),
("Walter","White","wwhite@school.com","Chemistry"),
("George","Feeny","gfeeny@school.com","Geometry"),
("Dewey","Finn","dfinn@school.com","Drawing and Painting"),
("Minerva","McGonagall","mmcgonagall@school.com","US History"),
("John","Keating","jkeating@school.com","English 1"),
("John","Johnson","jjohnson@school.com","Latin");

insert into course (block, room_number, name, teacher_id)
values ("A",5,"Computer Science",1),
("B",27,"Chemistry",2),
("C",16,"Geometry",3),
("D",2,"Drawing and Painting",4),
("E",10,"US History",5),
("G",7,"English 1",6),
("A",16,"Algebra 2",6),
("B",2,"Music 1",4),
("C",27,"Physics",2),
("D",32,"English 2",6),
("F",10,"World History",5),
("G",20,"Latin",7);

insert into enrollment(student_id, course_id)
values (1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,NULL),
(2,3),
(2,4),
(2,2),
(2,6),
(2,NULL),
(2,5),
(2,7),
(3,1),
(3,2),
(3,3),
(3,NULL),
(3,5),
(3,6),
(3,7);


UPDATE course 
SET room_number = 16
where teacher_id = 1;

update course
Set room_number  = 5
where teacher_id = 3;

update enrollment
set course_id=4
where student_id=3 and course_id = NULL;

DELETE FROM student 
WHERE first_name = 'John' AND last_name = 'Doe';

SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;
*****/

--- 03-03-2023 09:37:49
--- SQLite
/***** ERROR ******
FOREIGN KEY constraint failed
 ----- 
DELETE FROM student 
WHERE first_name = 'John' AND last_name = 'Doe';
*****/

--- 03-03-2023 09:38:15
--- SQLite
/***** ERROR ******
FOREIGN KEY constraint failed
 ----- 
DELETE FROM student 
WHERE first_name = "John" AND last_name = "Doe";
*****/

--- 03-03-2023 09:39:42
--- SQLite
DELETE FROM enrollment 
WHERE student_id = 2;
DELETE FROM student 
WHERE id = 2;

--- 03-03-2023 09:40:05
--- SQLite
SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;
SELECT * FROM teacher;

