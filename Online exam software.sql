--                   RDBMS PROJECT ONLINE EXAM SOFTWARE
--             Gautam Kakkar      CSE I        23FE10CSE00152

--------------------------------------------------------------------------------------------------------------

-- Creating a table p_dept (for departments)
CREATE TABLE p_dept (
    dept_id NUMBER(5) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(10) DEFAULT NULL
);

-- Inserting values into p_dept
INSERT INTO p_dept (dept_id, dept_name) VALUES (1, 'CSE');
INSERT INTO p_dept (dept_id, dept_name) VALUES (2, 'ECE');
INSERT INTO p_dept (dept_id, dept_name) VALUES (3, 'DSE');
INSERT INTO p_dept (dept_id, dept_name) VALUES (4, 'MECH');

-- Creating table p_ques (for questions)
CREATE TABLE p_ques (
    qs VARCHAR(200) NOT NULL UNIQUE,
    op1 VARCHAR(40) NOT NULL,
    op2 VARCHAR(40) NOT NULL,
    op3 VARCHAR(40) NOT NULL,
    ans VARCHAR(40) NOT NULL,
    quiz_id NUMBER(10) NOT NULL
);

-- Inserting values into p_ques
INSERT INTO p_ques (qs, op1, op2, op3, ans, quiz_id) 
VALUES ('C primarily developed as...', 'General purpose language', 'Data processing language', 'None of the above.', 'System programming language', 4);

INSERT INTO p_ques (qs, op1, op2, op3, ans, quiz_id) 
VALUES ('C programs converted into machine language with the help of...', 'An editor', 'An operating system', 'None of these.', 'A compiler', 4);

INSERT INTO p_ques (qs, op1, op2, op3, ans, quiz_id) 
VALUES ('Number of consonants in English language is...', '20', '22', '28', '21', 6);

INSERT INTO p_ques (qs, op1, op2, op3, ans, quiz_id) 
VALUES ('Number of vowels in English language is...', '3', '4', '7', '5', 6);

INSERT INTO p_ques (qs, op1, op2, op3, ans, quiz_id) 
VALUES ('Total number of letters in English language is...', '23', '24', '25', '26', 6);

INSERT INTO p_ques (qs, op1, op2, op3, ans, quiz_id) 
VALUES ('When a copy constructor may be called?', 'When an object of the class is...', 'When an object of the class is...', 'When an object is constructed...', 'All of the above', 5);

INSERT INTO p_ques (qs, op1, op2, op3, ans, quiz_id) 
VALUES ('Which of the following functions must use reference?', 'Assignment operator function', 'Destructor', 'Parameterized constructor', 'Copy constructor', 5);

INSERT INTO p_ques (qs, op1, op2, op3, ans, quiz_id) 
VALUES ('Which of the following is false about references in C++?', 'References cannot be null', 'A reference must be initialized', 'Once a reference is created...', 'References cannot refer to const', 5);

INSERT INTO p_ques (qs, op1, op2, op3, ans, quiz_id) 
VALUES ('Who is the father of C language?', 'Bjarne Stroustrup', 'James A. Gosling', 'Dr. E.F. Codd', 'Dennis Ritchie', 4);

-- Creating table p_quiz (for quizzes)
CREATE TABLE p_quiz (
    quiz_id NUMBER(10) NOT NULL PRIMARY KEY,
    quizname VARCHAR(20) NOT NULL,
    date_created DATE,
    mail VARCHAR(50) DEFAULT NULL
);

-- Inserting values into p_quiz
INSERT INTO p_quiz (quiz_id, quizname, date_created, mail) 
VALUES (4, 'C Quiz', SYSDATE, 'gautam2@muj.manipal.edu');

INSERT INTO p_quiz (quiz_id, quizname, date_created, mail) 
VALUES (5, 'C++ Quiz', SYSDATE, 'vaishali@muj.manipal.edu');

INSERT INTO p_quiz (quiz_id, quizname, date_created, mail) 
VALUES (6, 'English', SYSDATE, 'aron@muj.manipal.edu');

-- Creating table p_score (for student scores)
CREATE TABLE p_score (
    slno NUMBER(11) NOT NULL PRIMARY KEY,
    score NUMBER(11) NOT NULL,
    quizid NUMBER(10) NOT NULL,
    mail VARCHAR2(50) DEFAULT NULL,
    totalscore NUMBER(11) DEFAULT NULL,
    remark VARCHAR2(20) DEFAULT NULL
);

-- Inserting values into p_score
INSERT INTO p_score (slno, score, quizid, mail, totalscore, remark) 
VALUES (1, 6, 5, 'gautam@gmail.com', 6, 'Good');

INSERT INTO p_score (slno, score, quizid, mail, totalscore, remark) 
VALUES (2, 8, 4, 'gautam@gmail.com', 8, 'Good');

INSERT INTO p_score (slno, score, quizid, mail, totalscore, remark) 
VALUES (3, 7, 6, 'manas@gmail.com', 7, 'Decent');

-- Creating table p_staff (for staff)
CREATE TABLE p_staff (
    staffid VARCHAR2(10) NOT NULL UNIQUE,
    name VARCHAR2(20) NOT NULL,
    mail VARCHAR2(50) NOT NULL PRIMARY KEY,
    phno VARCHAR2(10) NOT NULL UNIQUE,
    gender VARCHAR2(1) NOT NULL,
    dob VARCHAR2(10) NOT NULL,
    pw VARCHAR2(200) NOT NULL,
    dept VARCHAR2(10) DEFAULT NULL
);

-- Inserting values into p_staff
INSERT INTO p_staff (staffid, name, mail, phno, gender, dob, pw, dept) 
VALUES ('10001', 'Dr. Vaishali', 'vaishali@muj.manipal.edu', '9876543211', 'F', '1995-09-23', 'ral7gku4rfhlk', 'CSE');

INSERT INTO p_staff (staffid, name, mail, phno, gender, dob, pw, dept) 
VALUES ('10002', 'Dr. Gautam', 'gautam2@muj.manipal.edu', '9901735897', 'M', '1985-10-07', 'rajjyevncigd2', 'CSE');

INSERT INTO p_staff (staffid, name, mail, phno, gender, dob, pw, dept) 
VALUES ('10003', 'Dr. Aron', 'aron@muj.manipal.edu', '9801735897', 'M', '1982-01-17', 'ngydyevnchjr7', 'MECH');

-- Creating table p_student (for students)
CREATE TABLE p_student (
    usn VARCHAR(14) NOT NULL UNIQUE,
    name VARCHAR(20) NOT NULL,
    mail VARCHAR(30) NOT NULL PRIMARY KEY,
    phno VARCHAR(10) NOT NULL UNIQUE,
    gender VARCHAR(1) NOT NULL,
    dob VARCHAR(10) NOT NULL,
    pw VARCHAR(200) NOT NULL,
    dept VARCHAR(3) DEFAULT NULL
);

-- Inserting values into p_student
INSERT INTO p_student (usn, name, mail, phno, gender, dob, pw, dept) 
VALUES ('23FE10CSE00152', 'Gautam Kakkar', 'gautam@gmail.com', '8527895953', 'M', '2005-07-23', 'ral7gku4rfhlk', 'CSE');

INSERT INTO p_student (usn, name, mail, phno, gender, dob, pw, dept) 
VALUES ('23FE10CSE00151', 'Manas Sharma', 'manas@gmail.com', '8527895947', 'M', '2005-10-13', 'ral7gku4rfcde', 'CSE');

-- Adding foreign keys to tables
ALTER TABLE p_quiz
ADD CONSTRAINT quiz_ibfk_1 FOREIGN KEY (mail) REFERENCES p_staff (mail) ON DELETE CASCADE;

ALTER TABLE p_score
ADD CONSTRAINT score_ibfk_1 FOREIGN KEY (quizid) REFERENCES p_quiz (quiz_id) ON DELETE CASCADE;

ALTER TABLE p_score
ADD CONSTRAINT score_ibfk_2 FOREIGN KEY (mail) REFERENCES p_student (mail) ON DELETE CASCADE;

-- SELECT statements
SELECT * FROM p_student;
SELECT * FROM p_quiz;
SELECT * FROM p_ques WHERE quiz_id = 4;
SELECT * FROM p_score WHERE mail = 'gautam@gmail.com';

-- JOIN statements
-- Join p_student and p_score (students and their scores)
SELECT ps.usn, ps.name AS student_name, sq.score, sq.remark
FROM p_student ps
JOIN p_score sq ON ps.mail = sq.mail;

-- Join p_score and p_quiz (scores and quiz details)
SELECT sq.slno, sq.score, sq.remark, pq.quizname, pq.date_created
FROM p_score sq
JOIN p_quiz pq ON sq.quizid = pq.quiz_id;

-- Join p_staff and p_quiz (staff and quiz details)
SELECT ps.name AS staff_name, pq.quizname, pq.date_created
FROM p_staff ps
JOIN p_quiz pq ON ps.mail = pq.mail;

-- Join p_dept and p_staff (departments and staff)
SELECT pd.dept_name, ps.name AS staff_name
FROM p_dept pd
JOIN p_staff ps ON pd.dept_name = ps.dept;
