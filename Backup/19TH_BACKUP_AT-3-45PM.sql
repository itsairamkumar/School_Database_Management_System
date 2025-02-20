CREATE DATABASE  IF NOT EXISTS `bitspilani` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bitspilani`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: bitspilani
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `activestudentswithpendingfees`
--

DROP TABLE IF EXISTS `activestudentswithpendingfees`;
/*!50001 DROP VIEW IF EXISTS `activestudentswithpendingfees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `activestudentswithpendingfees` AS SELECT 
 1 AS `student_roll`,
 1 AS `student_name`,
 1 AS `amount`,
 1 AS `due_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_code` varchar(20) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `credits` tinyint NOT NULL,
  `department_id` int DEFAULT NULL,
  `semester` int DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'CS101','Programming Fundamentals',4,1,1),(2,'CS201','Data Structures',4,1,2),(3,'CS301','Algorithms',4,1,3),(4,'CS401','Database Systems',4,1,4),(5,'EE101','Circuit Theory',4,2,1),(6,'EE201','Electronics',4,2,2),(7,'EE301','Power Systems',4,2,3),(8,'EE401','Control Systems',4,2,4),(9,'ME101','Thermodynamics',4,3,1),(10,'ME201','Fluid Mechanics',4,3,2),(11,'ME301','Machine Design',4,3,3),(12,'ME401','Heat Transfer',4,3,4),(13,'PHY101','Classical Mechanics',4,4,1),(14,'PHY201','Quantum Physics',4,4,2),(15,'PHY301','Electromagnetism',4,4,3),(16,'PHY401','Thermal Physics',4,4,4),(17,'CHEM101','Organic Chemistry',4,5,1),(18,'CHEM201','Inorganic Chemistry',4,5,2),(19,'CHEM301','Physical Chemistry',4,5,3),(20,'CHEM401','Analytical Chemistry',4,5,4);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_code` varchar(10) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `head_teacher_id` int DEFAULT NULL,
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `department_code` (`department_code`),
  KEY `head_teacher_id` (`head_teacher_id`),
  CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`head_teacher_id`) REFERENCES `teachers` (`teacher_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'SCE','School of Civil',1),(2,'SME','School of Mechanical',2),(3,'SEE','School of Electrical',3),(4,'SETC','School of Electronics',4),(5,'SCS','School of Computer Science',5),(6,'SIT','School of IT',NULL);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplinary`
--

DROP TABLE IF EXISTS `disciplinary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplinary` (
  `case_id` int NOT NULL AUTO_INCREMENT,
  `student_roll` int DEFAULT NULL,
  `incident_date` date DEFAULT NULL,
  `description` text,
  `resolution_status` varchar(50) DEFAULT NULL,
  `action_taken` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`case_id`),
  KEY `student_roll` (`student_roll`),
  CONSTRAINT `disciplinary_ibfk_1` FOREIGN KEY (`student_roll`) REFERENCES `students` (`student_roll`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinary`
--

LOCK TABLES `disciplinary` WRITE;
/*!40000 ALTER TABLE `disciplinary` DISABLE KEYS */;
INSERT INTO `disciplinary` VALUES (1,1,'2023-03-15','Using ChatGPT during an online exam','Resolved','Zero marks awarded and warning issued'),(2,2,'2023-04-02','Caught sharing answers via messaging app during exam','Pending','Investigation ongoing'),(3,3,'2022-11-10','Leaked exam question paper to classmates','Resolved','Suspension for 2 weeks'),(4,4,'2021-09-22','Using smartwatch to access answers during exam','Resolved','Disqualified from the exam'),(5,5,'2023-08-05','Found using ChatGPT to write assignment','Pending','Assignment rejected, further action pending'),(6,6,'2019-12-15','Caught with handwritten notes during exam','Resolved','Zero marks awarded'),(7,7,'2022-07-20','Using ChatGPT to generate answers for take-home exam','Resolved','Grade deduction and warning'),(8,8,'2021-05-10','Sharing exam questions with students from another batch','Resolved','Suspension for 1 month'),(9,9,'2023-02-14','Using ChatGPT to complete lab report','Resolved','Lab report rejected and resubmission required'),(10,10,'2020-11-30','Leaked midterm exam paper on social media','Resolved','Suspension for 2 weeks and fine imposed'),(11,11,'2019-09-05','Caught using ChatGPT during viva voce','Resolved','Viva marks set to zero'),(12,12,'2023-06-18','Using ChatGPT to write research paper','Pending','Investigation ongoing, paper under review'),(13,13,'2022-03-12','Found with pre-written answers during exam','Resolved','Disqualified from the exam'),(14,14,'2021-08-25','Using ChatGPT to solve programming assignment','Resolved','Assignment rejected and resubmission required'),(15,15,'2023-09-01','Leaked final exam paper to external group','Pending','Suspension recommended, awaiting approval'),(16,16,'2020-04-15','Using ChatGPT to generate project report','Resolved','Project rejected and re-evaluation required'),(17,17,'2019-10-31','Caught using ChatGPT during online quiz','Resolved','Quiz marks set to zero'),(18,18,'2023-07-07','Sharing exam questions with juniors','Pending','Investigation ongoing, possible suspension'),(19,19,'2022-05-20','Using ChatGPT to write thesis chapter','Resolved','Thesis chapter rejected and resubmission required'),(20,20,'2021-12-24','Leaked semester exam paper to WhatsApp group','Resolved','Suspension for 1 month and fine imposed');
/*!40000 ALTER TABLE `disciplinary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fees` (
  `fee_id` int NOT NULL AUTO_INCREMENT,
  `student_roll` int DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `due_date` date NOT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  PRIMARY KEY (`fee_id`),
  KEY `student_roll` (`student_roll`),
  CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`student_roll`) REFERENCES `students` (`student_roll`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
INSERT INTO `fees` VALUES (1,1,150000.00,'2023-09-30','paid','TX1001','2023-09-28'),(2,2,150000.00,'2023-09-30','paid','TX1002','2023-09-29'),(3,3,125000.00,'2022-09-30','paid','TX1003','2022-09-28'),(4,4,175000.00,'2020-09-30','pending',NULL,NULL),(5,5,150000.00,'2023-09-30','paid','TX1005','2023-09-30'),(6,6,100000.00,'2019-09-30','paid','TX1006','2019-09-25'),(7,7,150000.00,'2022-09-30','paid','TX1007','2022-09-28'),(8,8,150000.00,'2021-09-30','paid','TX1008','2021-09-29'),(9,9,150000.00,'2023-09-30','pending',NULL,NULL),(10,10,175000.00,'2020-09-30','paid','TX1010','2020-09-30'),(11,11,100000.00,'2019-09-30','paid','TX1011','2019-09-25'),(12,12,150000.00,'2023-09-30','paid','TX1012','2023-09-28'),(13,13,150000.00,'2022-09-30','paid','TX1013','2022-09-29'),(14,14,150000.00,'2021-09-30','pending',NULL,NULL),(15,15,150000.00,'2023-09-30','paid','TX1015','2023-09-30'),(16,16,175000.00,'2020-09-30','paid','TX1016','2020-09-25'),(17,17,100000.00,'2019-09-30','paid','TX1017','2019-09-28'),(18,18,150000.00,'2023-09-30','paid','TX1018','2023-09-29'),(19,19,150000.00,'2022-09-30','paid','TX1019','2022-09-28'),(20,20,150000.00,'2021-09-30','pending',NULL,NULL);
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grade_id` int NOT NULL AUTO_INCREMENT,
  `student_roll` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `marks_obtained` decimal(5,2) DEFAULT NULL,
  `grade_letter` char(1) DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  PRIMARY KEY (`grade_id`),
  KEY `student_roll` (`student_roll`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`student_roll`) REFERENCES `students` (`student_roll`),
  CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,1,1,85.50,'A','2023-12-01'),(2,2,5,78.00,'B','2023-12-02'),(3,3,9,92.30,'A','2023-12-03'),(4,4,13,67.80,'C','2023-12-04'),(5,5,17,74.50,'B','2023-12-05'),(6,6,2,81.20,'A','2023-12-06'),(7,7,6,88.90,'A','2023-12-07'),(8,8,10,63.40,'D','2023-12-08'),(9,9,14,79.10,'B','2023-12-09'),(10,10,18,91.00,'A','2023-12-10'),(11,11,3,72.50,'C','2023-12-11'),(12,12,7,84.70,'B','2023-12-12'),(13,13,11,59.80,'E','2023-12-13'),(14,14,15,96.20,'A','2023-12-14'),(15,15,19,68.90,'D','2023-12-15'),(16,16,4,77.30,'B','2023-12-16'),(17,17,8,82.60,'A','2023-12-17'),(18,18,12,73.10,'C','2023-12-18'),(19,19,16,89.40,'A','2023-12-19'),(20,20,20,65.00,'D','2023-12-20');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `isbn` varchar(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `borrower_id` int DEFAULT NULL,
  `borrower_type` enum('Student','Teacher') DEFAULT NULL,
  `checkout_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES (1,'978-0134685991','Clean Code','Robert C. Martin',1,'Student','2023-10-01','2023-11-01','returned'),(2,'978-0201633610','Design Patterns','Erich Gamma',2,'Student','2023-10-02','2023-11-02','checked out'),(3,'978-0321125217','Domain-Driven Design','Eric Evans',3,'Student','2023-10-03','2023-11-03','overdue'),(4,'978-0132350884','Clean Architecture','Robert C. Martin',4,'Student','2023-10-04','2023-11-04','returned'),(5,'978-0596007126','Head First Design Patterns','Eric Freeman',5,'Student','2023-10-05','2023-11-05','checked out'),(6,'978-0135957059','The Pragmatic Programmer','David Thomas',6,'Student','2023-10-06','2023-11-06','returned'),(7,'978-1491950357','Programming JavaScript Applications','Eric Elliott',7,'Student','2023-10-07','2023-11-07','checked out'),(8,'978-1617294136','Spring in Action','Craig Walls',8,'Student','2023-10-08','2023-11-08','overdue'),(9,'978-1491904244','Python Crash Course','Eric Matthes',9,'Student','2023-10-09','2023-11-09','returned'),(10,'978-1491957660','Fluent Python','Luciano Ramalho',10,'Student','2023-10-10','2023-11-10','checked out'),(11,'978-0134494166','Clean Agile','Robert C. Martin',11,'Student','2023-10-11','2023-11-11','returned'),(12,'978-0201485677','Refactoring','Martin Fowler',12,'Student','2023-10-12','2023-11-12','checked out'),(13,'978-0137081073','The Clean Coder','Robert C. Martin',13,'Student','2023-10-13','2023-11-13','overdue'),(14,'978-0139376818','Code Complete','Steve McConnell',14,'Student','2023-10-14','2023-11-14','returned'),(15,'978-0735619678','Software Estimation','Steve McConnell',15,'Student','2023-10-15','2023-11-15','checked out'),(16,'978-0131177055','Working Effectively with Legacy Code','Michael Feathers',16,'Student','2023-10-16','2023-11-16','returned'),(17,'978-0321146533','Test-Driven Development','Kent Beck',17,'Student','2023-10-17','2023-11-17','checked out'),(18,'978-0131429017','The Art of UNIX Programming','Eric S. Raymond',18,'Student','2023-10-18','2023-11-18','overdue'),(19,'978-0596003302','JavaScript: The Good Parts','Douglas Crockford',19,'Student','2023-10-19','2023-11-19','returned'),(20,'978-1449331818','Learning Python','Mark Lutz',20,'Student','2023-10-20','2023-11-20','checked out');
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parents` (
  `parent_id` int NOT NULL AUTO_INCREMENT,
  `father_name` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_number` varchar(15) NOT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `student_roll` int DEFAULT NULL,
  PRIMARY KEY (`parent_id`),
  UNIQUE KEY `email` (`email`),
  KEY `student_roll` (`student_roll`),
  CONSTRAINT `parents_ibfk_1` FOREIGN KEY (`student_roll`) REFERENCES `students` (`student_roll`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents`
--

LOCK TABLES `parents` WRITE;
/*!40000 ALTER TABLE `parents` DISABLE KEYS */;
INSERT INTO `parents` VALUES (1,'Rajesh Sharma','Sunita Sharma','parents.sharma@gmail.com','9878686866','Engineer','123 Gandhi Nagar','Pilani','Rajasthan','India','333031',1),(2,'Vijay Patel','Anita Patel','parents.patel@gmail.com','9877654321','Doctor','456 Nehru Road','Jaipur','Rajasthan','India','302001',2),(3,'Amar Kumar','Rekha Kumar','parents.kumar@gmail.com','9876767686','Teacher','789 Tagore Street','Delhi','Delhi','India','110001',3),(4,'Rakesh Gupta','Mala Gupta','parents.gupta@gmail.com','7675645453','Business','321 Ashok Marg','Mumbai','Maharashtra','India','400001',4),(5,'Sanjay Singh','Poonam Singh','parents.singh@gmail.com','9225959152','Lawyer','654 Patel Chowk','Chennai','Tamil Nadu','India','600001',5),(6,'Rahul Reddy','Sunita Reddy','parents.reddy@gmail.com','9885264238','Farmer','987 Krishna Nagar','Hyderabad','Telangana','India','500001',6),(7,'Arvind Mehta','Anjali Mehta','parents.mehta@gmail.com','9118442750','Engineer','741 Gandhi Road','Bangalore','Karnataka','India','560001',7),(8,'Naresh Iyer','Kavita Iyer','parents.iyer@gmail.com','9112775200','Doctor','852 Nehru Street','Pune','Maharashtra','India','411001',8),(9,'Vijay Joshi','Ritu Joshi','parents.joshi@gmail.com','9112825185','Teacher','963 Tagore Marg','Kolkata','West Bengal','India','700001',9),(10,'Raj Malhotra','Suman Malhotra','parents.malhotra@gmail.com','9115929778','Business','147 Ashok Road','Ahmedabad','Gujarat','India','380001',10),(11,'Ravi Khanna','Meena Khanna','parents.khanna@gmail.com','9867745434','Lawyer','258 Patel Nagar','Lucknow','UP','India','226001',11),(12,'Sunil Desai','Anita Desai','parents.desai@gmail.com','9533434343','Farmer','369 Krishna Street','Nagpur','Maharashtra','India','440001',12),(13,'Amit Verma','Rekha Verma','parents.verma@gmail.com','7654545544','Engineer','159 Gandhi Marg','Surat','Gujarat','India','395001',13),(14,'Prakash Srinivasan','Lata Srinivasan','parents.srinivasan@gmail.com','9117216905','Doctor','753 Nehru Road','Bhopal','MP','India','462001',14),(15,'Alok Choudhury Sr.','Sunita Choudhury','parents.choudhury@gmail.com','9884473806','Teacher','852 Tagore Chowk','Patna','Bihar','India','800001',15),(16,'Ramesh Rao','Anjali Rao','parents.rao@gmail.com','9990895558','Business','456 Ashok Street','Jaipur','Rajasthan','India','302002',16),(17,'Manoj Bajpai Sr.','Kiran Bajpai','parents.bajpai@gmail.com','9997232731','Lawyer','789 Patel Marg','Chennai','Tamil Nadu','India','600002',17),(18,'Ravi Narayan','Meera Narayan','parents.narayan@gmail.com','9997759904','Farmer','123 Krishna Road','Hyderabad','Telangana','India','500002',18),(19,'Vijay Rana','Sunita Rana','parents.rana@gmail.com','9887497436','Engineer','456 Gandhi Nagar','Bangalore','Karnataka','India','560002',19),(20,'Raj Kapoor','Anita Kapoor','parents.kapoor@gmail.com','7778985462','Doctor','789 Nehru Street','Pune','Maharashtra','India','411002',20);
/*!40000 ALTER TABLE `parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `studentparentview`
--

DROP TABLE IF EXISTS `studentparentview`;
/*!50001 DROP VIEW IF EXISTS `studentparentview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `studentparentview` AS SELECT 
 1 AS `student_roll`,
 1 AS `student_name`,
 1 AS `student_email`,
 1 AS `father_name`,
 1 AS `mother_name`,
 1 AS `parent_contact`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_roll` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `semester` int DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `eng_section` varchar(10) DEFAULT NULL,
  `sci_section` varchar(10) DEFAULT NULL,
  `enrollment_date` date NOT NULL,
  `application_number` varchar(50) DEFAULT NULL,
  `current_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_roll`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `students_chk_1` CHECK ((`current_status` in (_utf8mb4'Active',_utf8mb4'Graduated',_utf8mb4'Suspended')))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Rahul Sharma','rahul.sharma@the4b.edu.com','hash1','9876543210',3,'A','E1',NULL,'2022-07-01','APP0001','Active'),(2,'Priya Patel','priya.patel@the4b.edu.com','hash2','9876543211',2,'B',NULL,'S2','2022-07-01','APP0002','Active'),(3,'Amit Kumar','amit.kumar@the4b.edu.com','hash3','9876543212',4,'C','E3',NULL,'2021-07-01','APP0003','Graduated'),(4,'Neha Gupta','neha.gupta@the4b.edu.com','hash4','9876543213',5,'A',NULL,'S1','2020-07-01','APP0004','Suspended'),(5,'Ravi Singh','ravi.singh@the4b.edu.com','hash5','9876543214',1,'B','E2',NULL,'2023-07-01','APP0005','Active'),(6,'Sneha Reddy','sneha.reddy@the4b.edu.com','hash6','9876543215',6,'C',NULL,'S3','2019-07-01','APP0006','Graduated'),(7,'Arjun Mehta','arjun.mehta@the4b.edu.com','hash7','9876543216',3,'A','E1',NULL,'2022-07-01','APP0007','Active'),(8,'Ananya Iyer','ananya.iyer@the4b.edu.com','hash8','9876543217',4,'B',NULL,'S2','2021-07-01','APP0008','Active'),(9,'Vikram Joshi','vikram.joshi@the4b.edu.com','hash9','9876543218',2,'C','E3',NULL,'2023-07-01','APP0009','Active'),(10,'Priyanka Malhotra','priyanka.m@the4b.edu.com','hash10','9876543219',5,'A',NULL,'S1','2020-07-01','APP0010','Active'),(11,'Rajesh Khanna','rajesh.k@the4b.edu.com','hash11','9876543220',6,'B','E2',NULL,'2019-07-01','APP0011','Graduated'),(12,'Meera Desai','meera.desai@the4b.edu.com','hash12','9876543221',1,'C',NULL,'S3','2023-07-01','APP0012','Active'),(13,'Sanjay Verma','sanjay.v@the4b.edu.com','hash13','9876543222',3,'A','E1',NULL,'2022-07-01','APP0013','Active'),(14,'Pooja Srinivasan','pooja.s@the4b.edu.com','hash14','9876543223',4,'B',NULL,'S2','2021-07-01','APP0014','Active'),(15,'Alok Choudhury','alok.c@the4b.edu.com','hash15','9876543224',2,'C','E3',NULL,'2023-07-01','APP0015','Active'),(16,'Kavita Rao','kavita.rao@the4b.edu.com','hash16','9876543225',5,'A',NULL,'S1','2020-07-01','APP0016','Active'),(17,'Manoj Bajpai','manoj.b@the4b.edu.com','hash17','9876543226',6,'B','E2',NULL,'2019-07-01','APP0017','Graduated'),(18,'Sunita Narayan','sunita.n@the4b.edu.com','hash18','9876543227',1,'C',NULL,'S3','2023-07-01','APP0018','Active'),(19,'Vivek Rana','vivek.r@the4b.edu.com','hash19','9876543228',3,'A','E1',NULL,'2022-07-01','APP0019','Active'),(20,'Anjali Kapoor','anjali.k@the4b.edu.com','hash20','9876543229',4,'B',NULL,'S2','2021-07-01','APP0020','Suspended');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `email` (`email`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Prof. Puspalata Pattojoshi','puspalata.pattojoshi@bits.ac.in','9222222221',1),(2,'Prof. Jayashree Das','jayashree.das@bits.ac.in','9222222222',1),(3,'Prof. R. N. Mukharjee','r.mukharjee@bits.ac.in','9222222223',1),(4,'Prof. S. K. S. Parashar','s.parashar@bits.ac.in','9222222224',1),(5,'Prof. B. B. Kar','b.kar@bits.ac.in','9222222225',2),(6,'Prof. T. K. Bastia','t.bastia@bits.ac.in','9222222226',2),(7,'Prof. Kajal Parashar','kajal.parashar@bits.ac.in','9222222227',2),(8,'Prof. Rojalin Sahu','rojalin.sahu@bits.ac.in','9222222228',2),(9,'Prof. Jyoti Prakash Maity','jyoti.maity@bits.ac.in','9222222229',3),(10,'Prof. Anita Pati','anita.pati@bits.ac.in','9222222230',3),(11,'Prof. Jasaswini Tripathy','jasaswini.tripathy@bits.ac.in','9222222231',3),(12,'Prof. Sanjoy Ku. Maji','sanjoy.maji@bits.ac.in','9222222232',3),(13,'Prof. Swati Samantaray','swati.samantaray@bits.ac.in','9222222233',4),(14,'Prof. Seema K. Ladsaria','seema.ladsaria@bits.ac.in','9222222234',4),(15,'Prof. Sahel Md. D. Hossain','sahel.hossain@bits.ac.in','9222222235',4),(16,'Prof. Sharda Acharya','sharda.acharya@bits.ac.in','9222222236',4),(17,'Prof. Ch Vinod','ch.vinod@bits.ac.in','9222222237',5),(18,'Prof. Sutanu Satpathy','sutanu.satpathy@bits.ac.in','9222222238',5),(19,'Prof. Nikita Mahapatra','nikita.mahapatra@bits.ac.in','9222222239',5),(20,'Prof. Sarbari Acharya','sarbari.acharya@bits.ac.in','9222222240',5);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `activestudentswithpendingfees`
--

/*!50001 DROP VIEW IF EXISTS `activestudentswithpendingfees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `activestudentswithpendingfees` AS select `s`.`student_roll` AS `student_roll`,`s`.`name` AS `student_name`,`f`.`amount` AS `amount`,`f`.`due_date` AS `due_date` from (`students` `s` join `fees` `f` on((`s`.`student_roll` = `f`.`student_roll`))) where ((`s`.`current_status` = 'Active') and (`f`.`payment_status` = 'pending')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `studentparentview`
--

/*!50001 DROP VIEW IF EXISTS `studentparentview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studentparentview` AS select `s`.`student_roll` AS `student_roll`,`s`.`name` AS `student_name`,`s`.`email` AS `student_email`,`p`.`father_name` AS `father_name`,`p`.`mother_name` AS `mother_name`,`p`.`contact_number` AS `parent_contact` from (`students` `s` left join `parents` `p` on((`s`.`student_roll` = `p`.`student_roll`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-19 15:43:03
