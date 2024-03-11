CREATE TABLE students(
 Reg_no INT ,
 First_Name VARCHAR(255),
 last_Name  VARCHAR(255),
 Course     VARCHAR(255),
Gender     VARCHAR(255),
 D_O_B      INT
 );

INSERT INTO students(Reg_no,First_Name,Last_Name,Course,Gender,D_O_B)
VALUES
(1/2016,'John','Mutuku','DCS','Male',13/6/1990),
(2/2016,'Steve','KipKorir','DCS','Male',13/3/1985),
(3/2016,'Susan','Mutua','CIT','Female',19/11/1986),
(4/2017,'Steve','Kingori','DBIT','Male',1/3/1978);

SELECT * FROM students;

SELECT CONCAT(First_Name, ' ', Last_Name) AS Student_Name FROM students;
SELECT *
FROM students
WHERE Gender = 'Male' AND Course = 'DCS';
SELECT COUNT(*) AS Total_Students
FROM students
WHERE Course = 'DCS';

SELECT *
FROM students
WHERE Gender = 'Male'
AND D_O_B / 10000 BETWEEN 1980 AND 1989;

UPDATE students
SET Last_Name = 'Mwangi'
WHERE Reg_no = 4/2017;

DELETE FROM students;
