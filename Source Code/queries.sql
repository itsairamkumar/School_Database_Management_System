/*  Query 1: List all Graduated students */
-- SELECT *
-- FROM students
-- WHERE current_status = 'Graduated';

/* Query 2: Retrieve the Parent Contact details */
-- SELECT father_name, mother_name, contact_number
-- FROM parents WHERE student_roll = 7;

/* Query 3: Students in Semester 3, Section A */
-- SELECT student_roll, name, email
-- FROM bitspilani.students
-- WHERE section = 'A' AND semester = 3;

/* Query 4: Find Students Enrolled in 2023 */
-- SELECT *
-- FROM bitspilani.students
-- WHERE year(enrollment_date) = 2023;

/* Query 5: Count of Students in Each Semester */
-- SELECT semester, COUNT(*) AS student_counts 
-- FROM Students GROUP BY semester;

/* Query 6: Fetch Teachers from a Specific Department */
-- SELECT name, email, mobile 
-- FROM teachers
-- WHERE department_id = (
-- SELECT department_id FROM departments
-- WHERE department_name = 'School of Computer Science');

/* Query 7: Total no of Students in School */
-- SELECT COUNT(*) AS Total_Students
-- FROM Students;

/* Query 8: To fetch Students with their Parent Details */
-- SELECT s.student_roll, s.name, p.father_name, p.mother_name, p.contact_number 
-- FROM Students s
-- JOIN Parents p ON s.student_roll = p.student_roll;

/* Query 9: Finding the Teacher against Departments */
-- SELECT t.teacher_id, t.name, d.department_name
-- FROM Teachers t
-- LEFT JOIN Departments d ON t.department_id = d.department_id;

/* Query 10: Student Grade Report Course wise */
-- SELECT 
--     s.student_roll, 
--     s.name AS student_name, 
--     c.course_code, 
--     c.course_name, 
--     g.marks_obtained, 
--     g.grade_letter
-- FROM bitspilani.grades g
-- JOIN bitspilani.students s ON g.student_roll = s.student_roll
-- JOIN bitspilani.courses c ON g.course_id = c.course_id
-- ORDER BY s.student_roll, c.course_code;

/* Query 11:  Student Disciplinary Records Check */
-- SELECT 
-- 	s.student_roll,
-- 	s.name AS student_name,
-- 	d.incident_date,
-- 	d.description
-- 	FROM Students s
-- 	JOIN Disciplinary d ON s.student_roll = d.student_roll;

/* Query 12: Sem 3 Active Students & Parent Details */
-- SELECT s.name AS student_name, p.father_name, p.mother_name, p.contact_number
-- FROM Students s
-- JOIN Parents p ON s.student_roll = p.student_roll
-- WHERE s.current_status = 'Active' AND s.semester = 3;

/* Query 13: The HR team plans for hiring where the department is null. */
-- SELECT d.department_name, COUNT(t.teacher_id) AS faculty_count 
-- FROM Departments d
-- LEFT JOIN Teachers t ON d.department_id = t.department_id 
-- GROUP BY d.department_id 
-- HAVING faculty_count < 5;

/* Query 14: Books Borrowed by Students in Semester 5 */
-- SELECT s.name as student_name, s.student_roll, l.title, l.author
-- FROM Library l
-- JOIN Students s ON l.borrower_id = s.student_roll 
-- WHERE s.semester = 5;  

/* Query 15: AVG marks for each Course offered in Sem 2 */
-- SELECT 
--     c.course_code, 
--     c.course_name, 
--     AVG(g.marks_obtained) AS avg_marks
-- FROM Courses c
-- JOIN Grades g ON c.course_id = g.course_id
-- WHERE c.semester = 2
-- GROUP BY c.course_code, c.course_name;

/* Query 16: List Student Grades Overview */
-- SELECT s.student_roll, s.name as student_name, g.course_id, g.grade_letter
-- FROM Students s
-- JOIN Grades g ON s.student_roll = g.student_roll;

/* Query 17: Total sum of Per Students Fees Paid */
-- SELECT s.student_roll, s.name, SUM(f.amount) AS total_fees
-- FROM Students s
-- JOIN Fees f ON s.student_roll = f.student_roll
-- GROUP BY s.student_roll, s.name;

/* Query 18: Student Names With Their Latest Fee Payment Date */
-- SELECT student_roll, name AS student_name,
--   (SELECT MAX(payment_date)
--    FROM Fees f
--    WHERE f.student_roll = s.student_roll) AS latest_payment_date
-- FROM Students s;

/* Query 19: Parents' Details & Occupation – Eng Section */
-- SELECT
-- 	p.father_name,
--     p.mother_name,
--     p.occupation,
--     p.contact_number
-- FROM Parents p
-- WHERE p.student_roll IN
-- (SELECT student_roll FROM Students  WHERE eng_section IS NOT NULL);

/* Query 20: Get the Student Complete details */
-- SELECT 
--     s.student_roll, s.name, s.email, s.mobile, s.semester, s.section, 
--     s.eng_section, s.sci_section, s.enrollment_date, s.application_number, s.current_status,
--     
--     -- Parents details
--     p.father_name, p.mother_name, p.email AS parent_email, p.contact_number, p.occupation, 
--     p.address, p.city, p.state, p.country, p.zip_code,
--     
--     -- Academic details
--     g.course_id, c.course_code, c.course_name, g.marks_obtained, g.grade_letter,
--     
--     -- Fees Details
--     f.amount AS fee_amount, f.due_date, f.payment_status, f.payment_date,
--     
--     -- Disciplinary Records
--     d.incident_date, d.description AS disciplinary_description, d.resolution_status, d.action_taken
-- FROM Students s
-- LEFT JOIN Parents p ON s.student_roll = p.student_roll
-- LEFT JOIN Grades g ON s.student_roll = g.student_roll
-- LEFT JOIN Courses c ON g.course_id = c.course_id
-- LEFT JOIN Fees f ON s.student_roll = f.student_roll
-- LEFT JOIN Disciplinary d ON s.student_roll = d.student_roll
-- ORDER BY s.student_roll;

/* Query 21: Student-Parent Info (View) */
-- Step 1: Create View for StudentParentView
-- CREATE VIEW StudentParentView AS
-- SELECT
-- 	s.student_roll,
--     s.name AS student_name,
--     s.email AS student_email,
--     p.father_name,
--     p.mother_name,
--     p.contact_number AS parent_contact
-- FROM Students s
-- LEFT JOIN Parents p ON s.student_roll = p.student_roll;

-- Step 2: To Call the StudentParentView
-- SELECT *
-- FROM studentparentview;

/* Query 22: Active Students with Fees Pending (View) */
-- Step 1: Create active Students with Fees Pending
-- CREATE VIEW ActiveStudentsWithPendingFees AS
-- SELECT
-- 	s.student_roll,
--     s.name,
--     f.amount,
--     f.due_date
-- FROM Students s
-- JOIN Fees f ON s.student_roll = f.student_roll
-- WHERE s.current_status = 'Active' AND f.payment_status = 'pending';

-- Step 2: To rename the view column name to student_name
-- ALTER VIEW ActiveStudentsWithPendingFees AS
-- SELECT
-- 	s.student_roll,
--     s.name AS student_name,
--     f.amount,
--     f.due_date
-- FROM Students s
-- JOIN Fees f ON s.student_roll = f.student_roll
-- WHERE s.current_status = 'Active' AND f.payment_status = 'pending';

-- Step 3: Call the ActiveStudentsWithPendingFees
-- SELECT * FROM activestudentswithpendingfees;

/* Query 23: Disciplinary Cases with Student Info (View) */
-- Step 1: Create a View Disciplinary Cases with Student Info
-- CREATE VIEW DisciplinaryCasesView AS
-- SELECT
-- 	s.student_roll,
--     s.name AS student_name,
--     d.incident_date,
--     d.description AS issue,
--     d.resolution_status AS status,
--     d.action_taken
-- FROM Students s
-- JOIN Disciplinary d ON d.student_roll = s.student_roll;

-- Step 2: To check the Disciplinary Cases View with Student Info
-- SELECT * FROM disciplinarycasesview;

-- Step 3: Drop View for the Disciplinary Cases with Student Info
-- DROP VIEW IF EXISTS disciplinarycasesview;

/* Query 24: Retrieve student details by passing the roll number using a stored procedure */
-- Step 1: Create a procedure to get a student by roll number instead of manually searching, as requiered by ACoE.
-- DELIMITER //
-- CREATE PROCEDURE GetStudentByRoll(IN p_student_roll INT)
-- BEGIN
--     SELECT * FROM Students WHERE student_roll = p_student_roll;
-- END;
-- //
-- DELIMITER ;

-- Step 2: Call the Specific student with the help of custom student roll number passing in GetStudentByRoll Procedure
-- CALL GetStudentByRoll(7);

/* Query 25: Retrive all Students Fees Detail Include 'Paid', 'Pending' */
-- -- Get all fee details by students
-- DELIMITER //
-- CREATE PROCEDURE GetAllFees()
-- BEGIN
--     SELECT f.fee_id, s.name, f.amount, f.due_date, f.payment_status, f.transaction_id
--     FROM Fees f
--     JOIN Students s ON f.student_roll = s.student_roll;
-- END;
-- //
-- DELIMITER ;

-- -- After Creating GetAllFees() Call the stored procedure
-- CALL GetAllFees();

-- -- Get Pending fee details by students
-- DELIMITER //
-- CREATE PROCEDURE GetStudentsWithPendingFees()
-- BEGIN
--     SELECT s.student_roll, s.name AS student_name, f.amount, f.due_date
--     FROM Students s
--     JOIN Fees f ON s.student_roll = f.student_roll
--     WHERE f.payment_status = 'pending';
-- END;
-- //
-- DELIMITER ;

-- -- After Creating GetStudentsWithPendingFees() Call the stored procedure
-- CALL GetStudentsWithPendingFees();