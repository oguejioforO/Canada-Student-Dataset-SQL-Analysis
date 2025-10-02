-- Create database
create database canada;
use canada ;

-- Create student table
create table student (
ID int,
NAME VARCHAR(50),
PROVINCE VARCHAR(50),
GENDER VARCHAR(50),
ETHNICITY VARCHAR(50),
AGE INT,
RELIGION VARCHAR(50),
MAEDUC INT
);


-- Insert student data
INSERT INTO student (ID, NAME, PROVINCE, GENDER, ETHNICITY, AGE, RELIGION, MAEDUC)  VALUES 
(1, 'John Amadi', 'Alberta', 'Male','caucasian', 24, 'Protestant', 7), 
(2, 'Lateef Sani', 'B.Columbia', 'Male', 'Black', 31, 'Catholic', 6), 
(3,'Kano Otisi','B.Columbia','Female', 'Black', 20, 'Jewish',8),
(4, 'Ahmed Adisa', 'Alberta', 'Male', 'Black', 15, 'None', 12), 
(5, 'Mercy Ezekiel', 'Alberta', 'Female', 'Caucasian',24,'Other',10),
(6,'Destiny Etebong', 'Alberta','Female','Caucasian',22,'Protestant',7),
(7, 'Ugochukwu Ajah', 'B.Columbia', 'Male', 'Black', 30,'Protestant', 9), 
(8, 'Yetunde Agbani', 'B.Columbia', 'Female', 'Black', 28, 'Protestant',11), 
(9, 'Obada Justice', 'Alberta', 'Male', 'Black', 33,'Jewish',9),
(10, 'Vigboro Pamela','Alberta', 'female','Caucasian', 22, 'None', 8);

-- View all students
SELECT * FROM student;

-- Find the top 2 most frequent ages
SELECT AGE, COUNT(*) AS frequency
FROM student
GROUP BY AGE
ORDER BY frequency DESC
LIMIT 2;

-- Retrieve student names, province, and religion
SELECT NAME, PROVINCE, RELIGION
FROM student;

-- Sum of AGE and MAEDUC
SELECT SUM(AGE) AS TOTAL_AGE,
       SUM(MAEDUC) AS TOTAL_MAEDUC
FROM student;

-- Most frequent religion(s)
SELECT RELIGION, COUNT(*) AS frequency
FROM student
GROUP BY RELIGION
ORDER BY frequency DESC
LIMIT 1;

-- Distinct religions
SELECT DISTINCT RELIGION
FROM student;


