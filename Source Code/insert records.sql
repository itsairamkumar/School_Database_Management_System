-- Insert some student records
INSERT INTO Students (
	name, email, password_hash, mobile, semester, section, eng_section, sci_section, enrollment_date, application_number, current_status
	) VALUES
	('Rahul Sharma', 'rahul.sharma@the4b.edu.com', 'hash1', '9876543210', 3, 'A', 'E1', NULL, '2022-07-01', 'APP0001', 'Active'),
	('Priya Patel', 'priya.patel@the4b.edu.com', 'hash2', '9876543211', 2, 'B', NULL, 'S2', '2022-07-01', 'APP0002', 'Active'),
	('Amit Kumar', 'amit.kumar@the4b.edu.com', 'hash3', '9876543212', 4, 'C', 'E3', NULL, '2021-07-01', 'APP0003', 'Graduated'),
	('Neha Gupta', 'neha.gupta@the4b.edu.com', 'hash4', '9876543213', 5, 'A', NULL, 'S1', '2020-07-01', 'APP0004', 'Suspended'),
	('Ravi Singh', 'ravi.singh@the4b.edu.com', 'hash5', '9876543214', 1, 'B', 'E2', NULL, '2023-07-01', 'APP0005', 'Active'),
	('Sneha Reddy', 'sneha.reddy@the4b.edu.com', 'hash6', '9876543215', 6, 'C', NULL, 'S3', '2019-07-01', 'APP0006', 'Graduated'),
	('Arjun Mehta', 'arjun.mehta@the4b.edu.com', 'hash7', '9876543216', 3, 'A', 'E1', NULL, '2022-07-01', 'APP0007', 'Active'),
	('Ananya Iyer', 'ananya.iyer@the4b.edu.com', 'hash8', '9876543217', 4, 'B', NULL, 'S2', '2021-07-01', 'APP0008', 'Active'),
	('Vikram Joshi', 'vikram.joshi@the4b.edu.com', 'hash9', '9876543218', 2, 'C', 'E3', NULL, '2023-07-01', 'APP0009', 'Active'),
	('Priyanka Malhotra', 'priyanka.m@the4b.edu.com', 'hash10', '9876543219', 5, 'A', NULL, 'S1', '2020-07-01', 'APP0010', 'Active'),
	('Rajesh Khanna', 'rajesh.k@the4b.edu.com', 'hash11', '9876543220', 6, 'B', 'E2', NULL, '2019-07-01', 'APP0011', 'Graduated'),
	('Meera Desai', 'meera.desai@the4b.edu.com', 'hash12', '9876543221', 1, 'C', NULL, 'S3', '2023-07-01', 'APP0012', 'Active'),
	('Sanjay Verma', 'sanjay.v@the4b.edu.com', 'hash13', '9876543222', 3, 'A', 'E1', NULL, '2022-07-01', 'APP0013', 'Active'),
	('Pooja Srinivasan', 'pooja.s@the4b.edu.com', 'hash14', '9876543223', 4, 'B', NULL, 'S2', '2021-07-01', 'APP0014', 'Active'),
	('Alok Choudhury', 'alok.c@the4b.edu.com', 'hash15', '9876543224', 2, 'C', 'E3', NULL, '2023-07-01', 'APP0015', 'Active'),
	('Kavita Rao', 'kavita.rao@the4b.edu.com', 'hash16', '9876543225', 5, 'A', NULL, 'S1', '2020-07-01', 'APP0016', 'Active'),
	('Manoj Bajpai', 'manoj.b@the4b.edu.com', 'hash17', '9876543226', 6, 'B', 'E2', NULL, '2019-07-01', 'APP0017', 'Graduated'),
	('Sunita Narayan', 'sunita.n@the4b.edu.com', 'hash18', '9876543227', 1, 'C', NULL, 'S3', '2023-07-01', 'APP0018', 'Active'),
	('Vivek Rana', 'vivek.r@the4b.edu.com', 'hash19', '9876543228', 3, 'A', 'E1', NULL, '2022-07-01', 'APP0019', 'Active'),
	('Anjali Kapoor', 'anjali.k@the4b.edu.com', 'hash20', '9876543229', 4, 'B', NULL, 'S2', '2021-07-01', 'APP0020', 'Suspended');

--  TO fetch the Students table after inserting some student records
SELECT * FROM students;

-- Insert students parents records
INSERT INTO Parents (
    father_name, mother_name, email, contact_number, occupation, address, city, state, country, zip_code, student_roll
    ) VALUES
    ('Rajesh Sharma', 'Sunita Sharma', 'parents.sharma@gmail.com', '9878686866', 'Engineer', '123 Gandhi Nagar', 'Pilani', 'Rajasthan', 'India', '333031', 1),
    ('Vijay Patel', 'Anita Patel', 'parents.patel@gmail.com', '9877654321', 'Doctor', '456 Nehru Road', 'Jaipur', 'Rajasthan', 'India', '302001', 2),
    ('Amar Kumar', 'Rekha Kumar', 'parents.kumar@gmail.com', '9876767686', 'Teacher', '789 Tagore Street', 'Delhi', 'Delhi', 'India', '110001', 3),
    ('Rakesh Gupta', 'Mala Gupta', 'parents.gupta@gmail.com', '7675645453', 'Business', '321 Ashok Marg', 'Mumbai', 'Maharashtra', 'India', '400001', 4),
    ('Sanjay Singh', 'Poonam Singh', 'parents.singh@gmail.com', '9225959152', 'Lawyer', '654 Patel Chowk', 'Chennai', 'Tamil Nadu', 'India', '600001', 5),
    ('Rahul Reddy', 'Sunita Reddy', 'parents.reddy@gmail.com', '9885264238', 'Farmer', '987 Krishna Nagar', 'Hyderabad', 'Telangana', 'India', '500001', 6),
    ('Arvind Mehta', 'Anjali Mehta', 'parents.mehta@gmail.com', '9118442750', 'Engineer', '741 Gandhi Road', 'Bangalore', 'Karnataka', 'India', '560001', 7),
    ('Naresh Iyer', 'Kavita Iyer', 'parents.iyer@gmail.com', '9112775200', 'Doctor', '852 Nehru Street', 'Pune', 'Maharashtra', 'India', '411001', 8),
    ('Vijay Joshi', 'Ritu Joshi', 'parents.joshi@gmail.com', '9112825185', 'Teacher', '963 Tagore Marg', 'Kolkata', 'West Bengal', 'India', '700001', 9),
    ('Raj Malhotra', 'Suman Malhotra', 'parents.malhotra@gmail.com', '9115929778', 'Business', '147 Ashok Road', 'Ahmedabad', 'Gujarat', 'India', '380001', 10),
    ('Ravi Khanna', 'Meena Khanna', 'parents.khanna@gmail.com', '9867745434', 'Lawyer', '258 Patel Nagar', 'Lucknow', 'UP', 'India', '226001', 11),
    ('Sunil Desai', 'Anita Desai', 'parents.desai@gmail.com', '9533434343', 'Farmer', '369 Krishna Street', 'Nagpur', 'Maharashtra', 'India', '440001', 12),
    ('Amit Verma', 'Rekha Verma', 'parents.verma@gmail.com', '7654545544', 'Engineer', '159 Gandhi Marg', 'Surat', 'Gujarat', 'India', '395001', 13),
    ('Prakash Srinivasan', 'Lata Srinivasan', 'parents.srinivasan@gmail.com', '9117216905', 'Doctor', '753 Nehru Road', 'Bhopal', 'MP', 'India', '462001', 14),
    ('Alok Choudhury Sr.', 'Sunita Choudhury', 'parents.choudhury@gmail.com', '9884473806', 'Teacher', '852 Tagore Chowk', 'Patna', 'Bihar', 'India', '800001', 15),
    ('Ramesh Rao', 'Anjali Rao', 'parents.rao@gmail.com', '9990895558', 'Business', '456 Ashok Street', 'Jaipur', 'Rajasthan', 'India', '302002', 16),
    ('Manoj Bajpai Sr.', 'Kiran Bajpai', 'parents.bajpai@gmail.com', '9997232731', 'Lawyer', '789 Patel Marg', 'Chennai', 'Tamil Nadu', 'India', '600002', 17),
    ('Ravi Narayan', 'Meera Narayan', 'parents.narayan@gmail.com', '9997759904', 'Farmer', '123 Krishna Road', 'Hyderabad', 'Telangana', 'India', '500002', 18),
    ('Vijay Rana', 'Sunita Rana', 'parents.rana@gmail.com', '9887497436', 'Engineer', '456 Gandhi Nagar', 'Bangalore', 'Karnataka', 'India', '560002', 19),
    ('Raj Kapoor', 'Anita Kapoor', 'parents.kapoor@gmail.com', '7778985462', 'Doctor', '789 Nehru Street', 'Pune', 'Maharashtra', 'India', '411002', 20);
    
--  To fetch the Parents table after inserting some parent records against student_roll
SELECT * FROM bitspilani.parents;

-- Insert Student Departments records
INSERT INTO Departments (
	department_code, department_name
    ) VALUES
    ('SCE', 'School of Civil'),
	('SME', 'School of Mechanical'),
	('SEE', 'School of Electrical'),
	('SETC', 'School of Electronics'),
    ('SCS', 'School of Computer Science'),
    ('SIT', 'School of IT');

--  To fetch the Department table after inserting some department records
SELECT * FROM bitspilani.departments;

-- Insert Student Teachers records
INSERT INTO teachers (
	name, email, mobile, department_id
    ) VALUES
	('Prof. Puspalata Pattojoshi', 'puspalata.pattojoshi@bits.ac.in', '9222222221', 1),
	('Prof. Jayashree Das', 'jayashree.das@bits.ac.in', '9222222222', 1),
	('Prof. R. N. Mukharjee', 'r.mukharjee@bits.ac.in', '9222222223', 1),
	('Prof. S. K. S. Parashar', 's.parashar@bits.ac.in', '9222222224', 1),
	('Prof. B. B. Kar', 'b.kar@bits.ac.in', '9222222225', 2),
	('Prof. T. K. Bastia', 't.bastia@bits.ac.in', '9222222226', 2),
	('Prof. Kajal Parashar', 'kajal.parashar@bits.ac.in', '9222222227', 2),
	('Prof. Rojalin Sahu', 'rojalin.sahu@bits.ac.in', '9222222228', 2),
	('Prof. Jyoti Prakash Maity', 'jyoti.maity@bits.ac.in', '9222222229', 3),
	('Prof. Anita Pati', 'anita.pati@bits.ac.in', '9222222230', 3),
	('Prof. Jasaswini Tripathy', 'jasaswini.tripathy@bits.ac.in', '9222222231', 3),
	('Prof. Sanjoy Ku. Maji', 'sanjoy.maji@bits.ac.in', '9222222232', 3),
	('Prof. Swati Samantaray', 'swati.samantaray@bits.ac.in', '9222222233', 4),
	('Prof. Seema K. Ladsaria', 'seema.ladsaria@bits.ac.in', '9222222234', 4),
	('Prof. Sahel Md. D. Hossain', 'sahel.hossain@bits.ac.in', '9222222235', 4),
	('Prof. Sharda Acharya', 'sharda.acharya@bits.ac.in', '9222222236', 4),
	('Prof. Ch Vinod', 'ch.vinod@bits.ac.in', '9222222237', 5),
	('Prof. Sutanu Satpathy', 'sutanu.satpathy@bits.ac.in', '9222222238', 5),
	('Prof. Nikita Mahapatra', 'nikita.mahapatra@bits.ac.in', '9222222239', 5),
	('Prof. Sarbari Acharya', 'sarbari.acharya@bits.ac.in', '9222222240', 5);
	('Prof. B. B. Mishra', 'b.mishra@bits.ac.in', '9222222237', 6),
	('Prof. Debdulal Panda', 'debdulal.panda@bits.ac.in', '9222222238', 6),
	('Prof. Biranchi Kumar Mahala', 'biranchi.mahala@bits.ac.in', '9222222239', 6),
	('Prof. Birupakhya Prasad Padhy', 'birupakhya.padhy@bits.ac.in', '9222222240', 6);

--  To fetch the Teachers table after inserting some teachers records
SELECT * FROM bitspilani.teachers;

-- Update Departments with head_teacher_id
UPDATE Departments SET head_teacher_id = 1 WHERE department_id = 1;
UPDATE Departments SET head_teacher_id = 2 WHERE department_id = 2;
UPDATE Departments SET head_teacher_id = 3 WHERE department_id = 3;
UPDATE Departments SET head_teacher_id = 4 WHERE department_id = 4;
UPDATE Departments SET head_teacher_id = 5 WHERE department_id = 5;

-- Insert Some Courses records
INSERT INTO courses (
	course_code, course_name, credits, department_id, semester
    ) VALUES
    ('CS101', 'Programming Fundamentals', 4, 1, 1),
	('CS201', 'Data Structures', 4, 1, 2),
	('CS301', 'Algorithms', 4, 1, 3),
	('CS401', 'Database Systems', 4, 1, 4),
	('EE101', 'Circuit Theory', 4, 2, 1),
	('EE201', 'Electronics', 4, 2, 2),
	('EE301', 'Power Systems', 4, 2, 3),
	('EE401', 'Control Systems', 4, 2, 4),
	('ME101', 'Thermodynamics', 4, 3, 1),
	('ME201', 'Fluid Mechanics', 4, 3, 2),
	('ME301', 'Machine Design', 4, 3, 3),
	('ME401', 'Heat Transfer', 4, 3, 4),
	('PHY101', 'Classical Mechanics', 4, 4, 1),
	('PHY201', 'Quantum Physics', 4, 4, 2),
	('PHY301', 'Electromagnetism', 4, 4, 3),
	('PHY401', 'Thermal Physics', 4, 4, 4),
	('CHEM101', 'Organic Chemistry', 4, 5, 1),
	('CHEM201', 'Inorganic Chemistry', 4, 5, 2),
	('CHEM301', 'Physical Chemistry', 4, 5, 3),
	('CHEM401', 'Analytical Chemistry', 4, 5, 4);
    
-- To fetch Courses records
SELECT * FROM bitspilani.courses;

-- Insert Some Grades records for Students
INSERT INTO Grades (
	student_roll, course_id, marks_obtained, grade_letter, submission_date
	) VALUES
	(1, 1, 85.5, 'A', '2023-12-01'),
	(2, 5, 78.0, 'B', '2023-12-02'),
	(3, 9, 92.3, 'A', '2023-12-03'),
	(4, 13, 67.8, 'C', '2023-12-04'),
	(5, 17, 74.5, 'B', '2023-12-05'),
	(6, 2, 81.2, 'A', '2023-12-06'),
	(7, 6, 88.9, 'A', '2023-12-07'),
	(8, 10, 63.4, 'D', '2023-12-08'),
	(9, 14, 79.1, 'B', '2023-12-09'),
	(10, 18, 91.0, 'A', '2023-12-10'),
	(11, 3, 72.5, 'C', '2023-12-11'),
	(12, 7, 84.7, 'B', '2023-12-12'),
	(13, 11, 59.8, 'E', '2023-12-13'),
	(14, 15, 96.2, 'A', '2023-12-14'),
	(15, 19, 68.9, 'D', '2023-12-15'),
	(16, 4, 77.3, 'B', '2023-12-16'),
	(17, 8, 82.6, 'A', '2023-12-17'),
	(18, 12, 73.1, 'C', '2023-12-18'),
	(19, 16, 89.4, 'A', '2023-12-19'),
	(20, 20, 65.0, 'D', '2023-12-20');
    
-- To fetch Students Grades
SELECT * FROM bitspilani.grades;

-- Insert Some fees records for Students
INSERT INTO Fees (
	student_roll, amount, due_date, payment_status, transaction_id, payment_date
    ) VALUES
	(1, 150000.00, '2023-09-30', 'paid', 'TX1001', '2023-09-28'),
	(2, 150000.00, '2023-09-30', 'paid', 'TX1002', '2023-09-29'),
	(3, 125000.00, '2022-09-30', 'paid', 'TX1003', '2022-09-28'),
	(4, 175000.00, '2020-09-30', 'pending', NULL, NULL),
	(5, 150000.00, '2023-09-30', 'paid', 'TX1005', '2023-09-30'),
	(6, 100000.00, '2019-09-30', 'paid', 'TX1006', '2019-09-25'),
	(7, 150000.00, '2022-09-30', 'paid', 'TX1007', '2022-09-28'),
	(8, 150000.00, '2021-09-30', 'paid', 'TX1008', '2021-09-29'),
	(9, 150000.00, '2023-09-30', 'pending', NULL, NULL),
	(10, 175000.00, '2020-09-30', 'paid', 'TX1010', '2020-09-30'),
	(11, 100000.00, '2019-09-30', 'paid', 'TX1011', '2019-09-25'),
	(12, 150000.00, '2023-09-30', 'paid', 'TX1012', '2023-09-28'),
	(13, 150000.00, '2022-09-30', 'paid', 'TX1013', '2022-09-29'),
	(14, 150000.00, '2021-09-30', 'pending', NULL, NULL),
	(15, 150000.00, '2023-09-30', 'paid', 'TX1015', '2023-09-30'),
	(16, 175000.00, '2020-09-30', 'paid', 'TX1016', '2020-09-25'),
	(17, 100000.00, '2019-09-30', 'paid', 'TX1017', '2019-09-28'),
	(18, 150000.00, '2023-09-30', 'paid', 'TX1018', '2023-09-29'),
	(19, 150000.00, '2022-09-30', 'paid', 'TX1019', '2022-09-28'),
	(20, 150000.00, '2021-09-30', 'pending', NULL, NULL);

-- To fetch the fees record for students
SELECT * FROM bitspilani.fees;

-- Insert some Library records
INSERT INTO Library (
	isbn, title, author, borrower_id, borrower_type, checkout_date, due_date, return_status
    ) VALUES
	('978-0134685991', 'Clean Code', 'Robert C. Martin', 1, 'Student', '2023-10-01', '2023-11-01', 'returned'),
	('978-0201633610', 'Design Patterns', 'Erich Gamma', 2, 'Student', '2023-10-02', '2023-11-02', 'checked out'),
	('978-0321125217', 'Domain-Driven Design', 'Eric Evans', 3, 'Student', '2023-10-03', '2023-11-03', 'overdue'),
	('978-0132350884', 'Clean Architecture', 'Robert C. Martin', 4, 'Student', '2023-10-04', '2023-11-04', 'returned'),
	('978-0596007126', 'Head First Design Patterns', 'Eric Freeman', 5, 'Student', '2023-10-05', '2023-11-05', 'checked out'),
	('978-0135957059', 'The Pragmatic Programmer', 'David Thomas', 6, 'Student', '2023-10-06', '2023-11-06', 'returned'),
	('978-1491950357', 'Programming JavaScript Applications', 'Eric Elliott', 7, 'Student', '2023-10-07', '2023-11-07', 'checked out'),
	('978-1617294136', 'Spring in Action', 'Craig Walls', 8, 'Student', '2023-10-08', '2023-11-08', 'overdue'),
	('978-1491904244', 'Python Crash Course', 'Eric Matthes', 9, 'Student', '2023-10-09', '2023-11-09', 'returned'),
	('978-1491957660', 'Fluent Python', 'Luciano Ramalho', 10, 'Student', '2023-10-10', '2023-11-10', 'checked out'),
	('978-0134494166', 'Clean Agile', 'Robert C. Martin', 11, 'Student', '2023-10-11', '2023-11-11', 'returned'),
	('978-0201485677', 'Refactoring', 'Martin Fowler', 12, 'Student', '2023-10-12', '2023-11-12', 'checked out'),
	('978-0137081073', 'The Clean Coder', 'Robert C. Martin', 13, 'Student', '2023-10-13', '2023-11-13', 'overdue'),
	('978-0139376818', 'Code Complete', 'Steve McConnell', 14, 'Student', '2023-10-14', '2023-11-14', 'returned'),
	('978-0735619678', 'Software Estimation', 'Steve McConnell', 15, 'Student', '2023-10-15', '2023-11-15', 'checked out'),
	('978-0131177055', 'Working Effectively with Legacy Code', 'Michael Feathers', 16, 'Student', '2023-10-16', '2023-11-16', 'returned'),
	('978-0321146533', 'Test-Driven Development', 'Kent Beck', 17, 'Student', '2023-10-17', '2023-11-17', 'checked out'),
	('978-0131429017', 'The Art of UNIX Programming', 'Eric S. Raymond', 18, 'Student', '2023-10-18', '2023-11-18', 'overdue'),
	('978-0596003302', 'JavaScript: The Good Parts', 'Douglas Crockford', 19, 'Student', '2023-10-19', '2023-11-19', 'returned'),
	('978-1449331818', 'Learning Python', 'Mark Lutz', 20, 'Student', '2023-10-20', '2023-11-20', 'checked out');
    
-- To fetch the library records
SELECT * FROM bitspilani.library;

-- Insert some Disciplinary records against students
INSERT INTO Disciplinary (
	student_roll, incident_date, description, resolution_status, action_taken
    ) VALUES
	(1, '2023-03-15', 'Using ChatGPT during an online exam', 'Resolved', 'Zero marks awarded and warning issued'),
	(2, '2023-04-02', 'Caught sharing answers via messaging app during exam', 'Pending', 'Investigation ongoing'),
	(3, '2022-11-10', 'Leaked exam question paper to classmates', 'Resolved', 'Suspension for 2 weeks'),
	(4, '2021-09-22', 'Using smartwatch to access answers during exam', 'Resolved', 'Disqualified from the exam'),
	(5, '2023-08-05', 'Found using ChatGPT to write assignment', 'Pending', 'Assignment rejected, further action pending'),
	(6, '2019-12-15', 'Caught with handwritten notes during exam', 'Resolved', 'Zero marks awarded'),
	(7, '2022-07-20', 'Using ChatGPT to generate answers for take-home exam', 'Resolved', 'Grade deduction and warning'),
	(8, '2021-05-10', 'Sharing exam questions with students from another batch', 'Resolved', 'Suspension for 1 month'),
	(9, '2023-02-14', 'Using ChatGPT to complete lab report', 'Resolved', 'Lab report rejected and resubmission required'),
	(10, '2020-11-30', 'Leaked midterm exam paper on social media', 'Resolved', 'Suspension for 2 weeks and fine imposed'),
	(11, '2019-09-05', 'Caught using ChatGPT during viva voce', 'Resolved', 'Viva marks set to zero'),
	(12, '2023-06-18', 'Using ChatGPT to write research paper', 'Pending', 'Investigation ongoing, paper under review'),
	(13, '2022-03-12', 'Found with pre-written answers during exam', 'Resolved', 'Disqualified from the exam'),
	(14, '2021-08-25', 'Using ChatGPT to solve programming assignment', 'Resolved', 'Assignment rejected and resubmission required'),
	(15, '2023-09-01', 'Leaked final exam paper to external group', 'Pending', 'Suspension recommended, awaiting approval'),
	(16, '2020-04-15', 'Using ChatGPT to generate project report', 'Resolved', 'Project rejected and re-evaluation required'),
	(17, '2019-10-31', 'Caught using ChatGPT during online quiz', 'Resolved', 'Quiz marks set to zero'),
	(18, '2023-07-07', 'Sharing exam questions with juniors', 'Pending', 'Investigation ongoing, possible suspension'),
	(19, '2022-05-20', 'Using ChatGPT to write thesis chapter', 'Resolved', 'Thesis chapter rejected and resubmission required'),
	(20, '2021-12-24', 'Leaked semester exam paper to WhatsApp group', 'Resolved', 'Suspension for 1 month and fine imposed');
    
-- To fetch the Disciplinary records
SELECT * FROM bitspilani.disciplinary;