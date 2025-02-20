-- create database bitspilani;
-- use bitspilani

-- CREATE SCHEMA db;
-- DROP DATABASE IF EXISTS db

-- Table for student
CREATE TABLE IF NOT EXISTS Students (
    student_roll INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,  -- store a salted hash, not plain text
    mobile VARCHAR(15),
    semester INT,
    section VARCHAR(10),
    eng_section VARCHAR(10),   -- Optional: if a student can be in an engineering section
    sci_section VARCHAR(10),   -- Optional: if a student can be in a science section
    enrollment_date DATE NOT NULL,  -- Removed UNIQUE constraint; multiple enrollments can share the same date
    application_number VARCHAR(50),
    current_status VARCHAR(20) CHECK (current_status IN ('Active', 'Graduated', 'Suspended'))
);

-- Table for Parents
CREATE TABLE IF NOT EXISTS Parents (
    parent_id INT AUTO_INCREMENT PRIMARY KEY,
    father_name VARCHAR(100),
    mother_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,  -- Ensuring unique email
    contact_number VARCHAR(15) NOT NULL,
    occupation VARCHAR(50),
    address VARCHAR(255) NOT NULL,
    city VARCHAR(100),
    state VARCHAR(50),
    country VARCHAR(50),
    zip_code VARCHAR(10),
    student_roll INT,
    FOREIGN KEY (student_roll) REFERENCES Students(student_roll) 
        ON DELETE CASCADE  -- Deletes parent record if student is deleted
        ON UPDATE CASCADE   -- Updates parent record if student_roll is updated
);

-- Table for Departments
CREATE TABLE IF NOT EXISTS Departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_code VARCHAR(10) NOT NULL UNIQUE,
    department_name VARCHAR(100) NOT NULL
);

-- Table for Teachers
CREATE TABLE IF NOT EXISTS Teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    mobile VARCHAR(15),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id) 
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- Add head_teacher_id Foreign Key to Departments (After creating the Teacher and Department Table)
ALTER TABLE Departments 
ADD COLUMN head_teacher_id INT,
ADD FOREIGN KEY (head_teacher_id) REFERENCES Teachers(teacher_id) 
    ON DELETE SET NULL ON UPDATE CASCADE;

-- Table for Courses
CREATE TABLE IF NOT EXISTS Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_code VARCHAR(20) NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    credits TINYINT NOT NULL,
    department_id INT,
    semester INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Table for Grades
CREATE TABLE IF NOT EXISTS Grades (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,
    student_roll INT,
    course_id INT,
    marks_obtained DECIMAL(5,2),
    grade_letter CHAR(1),  -- e.g., A, B, C, E, F
    submission_date DATE,
    FOREIGN KEY (student_roll) REFERENCES Students(student_roll),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Table for Fees
CREATE TABLE IF NOT EXISTS Fees (
    fee_id INT AUTO_INCREMENT PRIMARY KEY,
    student_roll INT,
    amount DECIMAL(10,2) NOT NULL,
    due_date DATE NOT NULL,
    payment_status VARCHAR(20),  -- e.g., 'pending', 'paid'
    transaction_id VARCHAR(50),
    payment_date DATE,
    FOREIGN KEY (student_roll) REFERENCES Students(student_roll)
);

-- Table for Library
CREATE TABLE IF NOT EXISTS Library (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    isbn VARCHAR(20),
    title VARCHAR(255),
    author VARCHAR(100),
    borrower_id INT,  -- ID of the borrower (Student or Teacher)
    borrower_type ENUM('Student', 'Teacher'),  -- indicates the type of borrower
    checkout_date DATE,
    due_date DATE,
    return_status VARCHAR(20)  -- e.g., 'checked out', 'returned', 'overdue'
);

ALTER TABLE Library 
ADD CONSTRAINT fk_student FOREIGN KEY (borrower_id) REFERENCES Students(student_roll)
    ON DELETE SET NULL ON UPDATE CASCADE;

-- Table for Disciplinary
CREATE TABLE IF NOT EXISTS Disciplinary (
    case_id INT AUTO_INCREMENT PRIMARY KEY,
    student_roll INT,
    incident_date DATE,
    description TEXT,
    resolution_status VARCHAR(50),
    action_taken VARCHAR(100),
    FOREIGN KEY (student_roll) REFERENCES Students(student_roll)
);

SHOW TABLES