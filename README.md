# 📌 School Database Management System

## 📖 Project Overview
This **School Database Management System** is created as part of the **Brainwave Matrix Database Interns Project**. It helps to manage student data better by using a **centralized database**. The system stores organized information about **students, academics, finance, disciplinary records, and the library**.

## 🛠️ Tools & Technologies
- **Database:** MySQL
- **Design & Management:** MySQL Workbench
- **ER Diagram Creation:** MySQL Reverse Engineer

## 🎯 Project Goals
- Centralize student, academic, financial, and disciplinary data
- Provide real-time access to student records
- Reduce manual record-keeping for school administration
- Improve decision-making through structured data

## 📂 Key Modules
- **Student Management**: Handles student profiles, enrollment, and personal data
- **Academic Records**: Course registration, grades, and performance tracking
- **Financial Tracking**: Fee management, payments, and due tracking
- **Library System**: Book lending and return tracking
- **Disciplinary Actions**: Incident reports and actions taken

## 🔑 Key Features & Benefits
✔️ Student/Parent profile management  
✔️ Course and grade tracking  
✔️ Fee and library management  
✔️ Automated data handling reduces manual work  
✔️ Real-time access to student records  
✔️ Improved administrative decision-making  

## 📌 Database Schema Overview
### 1️⃣ **Students Table**
- Attributes: `student_roll (PK)`, `name`, `email`, `mobile`, `semester`, `section`, `status` (Active, Graduated, Suspended)
- Relationships: Linked to Parents, Grades, Fees, Disciplinary, and Library

### 2️⃣ **Parents Table**
- Attributes: `parent_id (PK)`, `father_name`, `mother_name`, `email`, `contact_number`, `occupation`, `address`
- Relationships: Linked to Students

### 3️⃣ **Departments Table**
- Attributes: `department_id (PK)`, `department_code`, `department_name`, `head_teacher_id`
- Relationships: Linked to Teachers and Courses

### 4️⃣ **Teachers Table**
- Attributes: `teacher_id (PK)`, `name`, `email`, `mobile`, `department_id`
- Relationships: Linked to Departments

### 5️⃣ **Courses Table**
- Attributes: `course_id (PK)`, `course_code`, `course_name`, `credits`, `department_id`, `semester`
- Relationships: Linked to Students and Grades

### 6️⃣ **Grades Table**
- Attributes: `grade_id (PK)`, `student_roll (FK)`, `course_id (FK)`, `marks_obtained`, `grade_letter`
- Relationships: Linked to Students and Courses

### 7️⃣ **Fees Table**
- Attributes: `fee_id (PK)`, `student_roll (FK)`, `amount`, `due_date`, `payment_status`, `transaction_id`
- Relationships: Linked to Students

### 8️⃣ **Library Table**
- Attributes: `book_id (PK)`, `title`, `author`, `borrower_id (FK)`, `borrower_type (Student/Teacher)`, `checkout_date`, `due_date`, `return_status`
- Relationships: Linked to Students (intended for Teachers as well)

### 9️⃣ **Disciplinary Table**
- Attributes: `case_id (PK)`, `student_roll (FK)`, `incident_date`, `description`, `action_taken`
- Relationships: Linked to Students

## 📊 ER Diagram
*(Refer to the project files for the complete ER diagram)*

## 📜 Sample Queries
### 1️⃣ Retrieve all Graduated Students:
```sql
SELECT * FROM students WHERE current_status = 'Graduated';
```
### 2️⃣ Retrieve Parent Contact Details for a Student (e.g., Roll No. 7):
```sql
SELECT father_name, mother_name, contact_number FROM parents WHERE student_roll = 7;
```
### 3️⃣ List Students in Semester 3, Section A:
```sql
SELECT student_roll, name, email FROM Students WHERE section = 'A' AND semester = 3;
```
### 4️⃣ Find Students Enrolled in 2023:
```sql
SELECT * FROM Students WHERE YEAR(enrollment_date) = 2023;
```
### 5️⃣ Count Students in Each Semester:
```sql
SELECT semester, COUNT(*) AS student_count FROM Students GROUP BY semester;
```
*(More queries are available in the project file)*

## 🔄 Stored Procedures
### Retrieve Student Details by Roll Number:
```sql
DELIMITER //
CREATE PROCEDURE GetStudentByRoll(IN p_student_roll INT)
BEGIN
    SELECT * FROM Students WHERE student_roll = p_student_roll;
END;
//
DELIMITER ;
```
Call the procedure:
```sql
CALL GetStudentByRoll(7);
```
### Retrieve All Fee Details:
```sql
DELIMITER //
CREATE PROCEDURE GetAllFees()
BEGIN
    SELECT f.fee_id, s.name, f.amount, f.due_date, f.payment_status, f.transaction_id
    FROM Fees f
    JOIN Students s ON f.student_roll = s.student_roll;
END;
//
DELIMITER ;
```
Call the procedure:
```sql
CALL GetAllFees();
```

## 📞 Contact Information
- **Author:** A. Sairam Kumar Patro  
- **Email:** [itsairamkumar@gmail.com](mailto:itsairamkumar@gmail.com)  
- **Portfolio:** [🌐 www.isairamkumar.com]([https://www.isairamkumar.com](https://hisairam.notion.site/12ad1ebfffda803192bbebe2ac1cca16))  
- **LinkedIn:** [iSairamkumar](https://www.linkedin.com/in/isairamkumar)  
