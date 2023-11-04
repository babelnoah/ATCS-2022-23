-- TABLE
CREATE TABLE course (
    id INTEGER PRIMARY KEY,
    block TEXT Not NULL,
    room_number INTEGER,
    name TEXT Not NULL,
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES teacher(id)
);
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
CREATE TABLE enrollment (
	id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
	FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (course_id) REFERENCES course(id)
);
CREATE TABLE student (
	id INTEGER primary KEY,
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    grade_level INTEGER
);
CREATE TABLE teacher (
    id INTEGER PRIMARY KEY,
    first_name TEXT Not NULL,
    last_name TEXT Not NULL,
    email TEXT Not NULL,
    department TEXT Not NULL
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
