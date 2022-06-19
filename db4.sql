/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.6.12-log : Database - stud_perform1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`stud_perform1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `stud_perform1`;

/*Table structure for table `activity` */

DROP TABLE IF EXISTS `activity`;

CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_id` int(11) DEFAULT NULL,
  `a_name` varchar(200) DEFAULT NULL,
  `a_description` varchar(1000) DEFAULT NULL,
  `t_id` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`activity_id`),
  KEY `activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `activity` */

insert  into `activity`(`activity_id`,`sub_id`,`a_name`,`a_description`,`t_id`,`date`) values 
(1,3,'abcd','jvjsavjchkaf','14',NULL),
(3,2,'Assignment 1','Write a program to add two numbers','3','2022-06-07'),
(4,2,'Assignment 2','Write a python program to find product of two numbers','3','2022-06-07'),
(5,5,'Assignment 1','write a java program to find square of a number','3','2022-06-07');

/*Table structure for table `answerupload` */

DROP TABLE IF EXISTS `answerupload`;

CREATE TABLE `answerupload` (
  `a_id` int(100) NOT NULL AUTO_INCREMENT,
  `activity_id` int(100) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user_id` int(100) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `answerupload` */

insert  into `answerupload`(`a_id`,`activity_id`,`file`,`status`,`user_id`) values 
(1,2,'/static/pic/220601-171210.pdf','pending',12),
(2,2,'/static/pic/220601-171412.pdf','pending',12),
(3,3,'/static/pic/220607-134551.pdf','pending',12),
(4,4,'/static/pic/220607-143454.pptx','pending',12);

/*Table structure for table `exam` */

DROP TABLE IF EXISTS `exam`;

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_id` varchar(100) DEFAULT NULL,
  `exm_name` varchar(100) DEFAULT NULL,
  `t_id` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `exam` */

insert  into `exam`(`exam_id`,`sub_id`,`exm_name`,`t_id`,`date`) values 
(1,'2','abc exam','3','2022-05-14'),
(3,'5','cde exam','3','2022-05-14'),
(4,'2','series 1','3','2022-05-10'),
(5,'2','Series 2','3','2022-05-13'),
(6,'2','series 3','3','2022-05-28'),
(7,'2','series 5','3','2022-06-08');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `feedback` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`feedback_id`,`student_id`,`feedback`,`date`) values 
(1,5,'Teacher is an excellent teacher! She/He provides both a great mix of listening, speaking and p','2022-04-12'),
(2,5,'he teaches very badly','2022-04-12'),
(3,7,'He is a very thoughtful teacher who puts a lot of thought into how he presents the material.','2022-05-01'),
(4,7,'Her lessons were engaging, useful, and she was very patient with everyone','2022-05-01'),
(5,9,'assessment conducted are good . assessment help me to improve more','2022-05-08'),
(6,9,'assessment are not good','2022-05-08'),
(7,9,'test conducted are good','2022-05-08'),
(8,9,'test conducted are good','2022-05-08'),
(9,9,'exams are not good','2022-05-08'),
(10,9,'test conducted does not have enough standard . Assessments are bad','2022-05-08'),
(11,9,'exams conducted are good','2022-05-08'),
(12,9,'assessment are hlepfull','2022-05-08'),
(13,9,'exams conducted are not helpfull','2022-05-08'),
(14,9,'good tutor. Tutor explains full things perfectly','2022-05-08'),
(15,9,'nice professor','2022-05-08'),
(16,9,'tutor is not taking class properly','2022-05-08'),
(17,9,'professor is not good','2022-05-08'),
(18,9,'material provided are very helpfull','2022-05-08'),
(19,9,'material provided are very helpfull','2022-05-08'),
(20,9,'materials are informative . Video class are taken perfectly','2022-05-08'),
(21,9,'assessments are not good','2022-05-08'),
(22,5,'professor is bad','2022-05-08'),
(23,5,'tutor is not explaining well. Bad guide','2022-05-08'),
(24,5,'material are good. notes explain verything','2022-05-08'),
(25,5,'nice materials. notes explain well','2022-05-08'),
(26,7,'notes given are good','2022-05-08'),
(27,7,'video classes are good and informative. Notes given are also good','2022-05-08'),
(28,7,'video classes are good and informative. Notes given are also good','2022-05-08'),
(29,7,'resources that are given are note accessible. Reading material contains nothing','2022-05-08'),
(30,9,'study materials provided are good and nice','2022-05-08'),
(31,9,'stuff are good and helpfull','2022-05-08'),
(32,7,'good and nice materials','2022-05-08'),
(33,7,'nice usefull course','2022-05-08'),
(34,7,'Really useful course, concise and resourcefull','2022-05-08'),
(35,7,'Really useful course, concise and resourcefull','2022-05-08'),
(36,7,'Very boring','2022-05-08'),
(37,7,'Very boring course','2022-05-08'),
(38,7,'Best course of the specialisation so far.','2022-05-08'),
(39,7,'Amazing Course!','2022-05-08'),
(40,7,'The course and the instructor are great, but a missed some referenced material.','2022-05-08'),
(41,9,'good stuff','2022-05-08'),
(42,9,'nice stuff','2022-05-08'),
(43,9,'good resources','2022-05-08'),
(44,9,'nice stuff','2022-05-08'),
(45,9,'bad stuff. contents are not explained well in the stuff provided','2022-05-08'),
(46,9,'materials are not good','2022-05-08'),
(47,9,'test are good','2022-05-08'),
(48,9,'test conducted are bad. questions in the test are not understandable','2022-05-08'),
(49,9,'tutor explains well.good tutor','2022-05-08'),
(50,7,'Great course. Course contains almost all things about the technology. Best course .I will recommend to everyone','2022-05-08'),
(51,7,'Excellent course!!!!','2022-05-08'),
(52,7,'good course','2022-05-08'),
(53,7,'worst course. Course does not contain anything about the technology','2022-05-08'),
(54,7,'course is  good in real life','2022-05-08'),
(55,7,'course is  good in real life','2022-05-08'),
(56,7,'course is not good in practical way','2022-05-08'),
(57,7,'course schedule is very congested. Course is not helpfull','2022-05-08'),
(58,7,' Course ','2022-05-08'),
(59,7,'bad course.  not recommend to anyone','2022-05-08'),
(60,7,'bad course.  not recommend to anyone','2022-05-08'),
(61,7,'good course contains all information about the technology','2022-05-08'),
(62,7,'time wasting course','2022-05-08'),
(63,7,'time wasting course','2022-05-08'),
(64,7,'worst course and scheduling of course is very bad','2022-05-08'),
(65,9,'great course','2022-05-08'),
(66,9,'great course','2022-05-08'),
(67,9,'program is nice','2022-05-08'),
(68,9,'subject is excellent. course contains all information about the technology','2022-05-08'),
(69,9,'subject is very usefull  .Helps me to improve myself','2022-05-08'),
(70,9,'great subject','2022-05-08'),
(71,9,'great subject','2022-05-08'),
(72,9,'subject is very  usefull in the real life','2022-05-08'),
(73,9,'subject is very  usefull in the real life','2022-05-08'),
(74,9,'test that are conducted are good.  contains all questions','2022-05-08'),
(75,9,'great subject and course is perfectly scheduled','2022-05-08'),
(76,12,'worst course','2022-05-12'),
(77,12,'worst course, worst faculty ,worst material,worst assessment','2022-05-12');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `forum_id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` varchar(100) DEFAULT NULL,
  `sub_id` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `post` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`forum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

/*Data for the table `forum` */

insert  into `forum`(`forum_id`,`lid`,`sub_id`,`type`,`post`,`date`) values 
(1,'9','2','student','teacher is an excellent teacher! She/He provides both a great mix of listening, speaking and p','2022-05-01'),
(2,'6','2','tutor','thankyou so much','2022-05-01'),
(3,'9','2','student','he teaches very badly','2022-05-01'),
(6,'4','2','student','the way of teaching is very bad ,i cant understand anything','2022-05-01'),
(7,'5','2','student','he is a very good professor','2022-05-01'),
(8,'3','2','tutor','those questions on the exam are repeated question ','2022-05-01'),
(9,'9','2','student','very good teaching','2022-05-01'),
(10,'9','2','student','He is a very thoughtful teacher who puts a lot of thought into how he presents the material.','2022-05-01'),
(11,'9','5','student','tutor is not good','2022-05-01'),
(12,'9','5','student','As a beginner, a lot of things are new to me and pretty challenging, some plain make no sense. Howev','2022-05-01'),
(14,'7','2','student','nice class','2022-05-04'),
(15,'7','2','student','tutor is not good.he is not explainning well','2022-05-04'),
(16,'7','2','student','worst course ','2022-05-04'),
(17,'7','2','student','add some more assessments ','2022-05-07'),
(18,'7','2','student','exams conducted are very usefull','2022-05-07'),
(19,'7','2','student','quizz should include more questions about the subject','2022-05-07'),
(20,'7','2','student','exams should be conducted frequently','2022-05-07'),
(21,'7','2','student','tests are not conducted properly . must include more questions about the content','2022-05-07'),
(22,'7','2','student','tests that are conducted are very usefull','2022-05-07'),
(23,'5','2','student','assessments are not helpfull','2022-05-07'),
(24,'5','2','student','assessments score not updated properly','2022-05-07'),
(25,'5','2','student','materials provided are not helpfull','2022-05-07'),
(26,'5','2','student','video classess should include subtitles','2022-05-07'),
(27,'5','2','student','tutor explains the topics perfectly','2022-05-07'),
(28,'5','2','student','resources provided are not usefull ','2022-05-07'),
(29,'5','2','student','materials does not  contain anything helpfull ','2022-05-07'),
(30,'5','2','student','assessments helps to evaluate myself','2022-05-07'),
(31,'5','2','student','great course','2022-05-07'),
(32,'5','2','student','this course provides a good information improve my knowledge','2022-05-07'),
(33,'5','2','student','super content','2022-05-07'),
(34,'5','2','student','good content but the course setting does not allow learn the content long term due to missing readin','2022-05-07'),
(35,'5','2','student','the course content is quite good though it could have been deeper in some areas','2022-05-07'),
(36,'5','2','student','very basic course for all','2022-05-07'),
(37,'5','2','student','very good informative course','2022-05-07'),
(38,'5','2','student','not helpfull course','2022-05-07'),
(39,'5','2','student','assessment questions are not clear','2022-05-07'),
(40,'5','2','student','assessment are not helpfull','2022-05-07'),
(41,'9','2','student','teacher is very bad. not explaining the contents ','2022-05-08'),
(42,'9','2','student','teacher is very bad. not explaining the contents ','2022-05-08'),
(43,'9','2','student','very bad professor','2022-05-08'),
(44,'9','2','student','assessments are not taken properly. score of assessments are not updated and evaluation is not perfo','2022-05-08'),
(45,'9','2','student','assessments are not taken properly. score of assessments are not updated and evaluation is not perfo','2022-05-08'),
(46,'9','2','student','tutor is not good. he is not taking the class well ','2022-05-08');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `user_type` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`user_name`,`password`,`user_type`) values 
(1,'admin','admin','admin'),
(3,'t','t','tutor'),
(5,'ram@gmail.com','ram','student'),
(6,'dd@gmail.com','4008','tutor'),
(7,'arun@gmail.com','arun','student'),
(8,'a@gmail.com','123','student'),
(9,'anu@gmail.com','123','student'),
(10,'b','b','student'),
(11,'mamtha@gmail.com','1234','student'),
(12,'devika@gmail.com','devika','student'),
(13,'abc@gmail.com','5170','tutor'),
(14,'pqrs@gmail.com','4004','tutor');

/*Table structure for table `mark` */

DROP TABLE IF EXISTS `mark`;

CREATE TABLE `mark` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `ex_id` varchar(100) DEFAULT NULL,
  `std_id` varchar(100) DEFAULT NULL,
  `mark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `mark` */

insert  into `mark`(`m_id`,`ex_id`,`std_id`,`mark`) values 
(2,'1','7','2'),
(3,'3','7','1'),
(4,'1','5','3'),
(5,'3','5','1'),
(6,'4','7','1'),
(7,'5','10','1'),
(8,'6','12','1'),
(9,'1','10','1');

/*Table structure for table `prediction` */

DROP TABLE IF EXISTS `prediction`;

CREATE TABLE `prediction` (
  `reg_no` varchar(20) DEFAULT NULL,
  `prediction` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `prediction` */

insert  into `prediction`(`reg_no`,`prediction`) values 
('10','WITHDRAW'),
('11','FAIL'),
('5','PASS'),
('7','PASS'),
('9','FAIL');

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `exm_id` int(11) DEFAULT NULL,
  `question` varchar(100) DEFAULT NULL,
  `op1` varchar(100) DEFAULT NULL,
  `op2` varchar(100) DEFAULT NULL,
  `op3` varchar(100) DEFAULT NULL,
  `op4` varchar(100) DEFAULT NULL,
  `c_answr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `question` */

insert  into `question`(`q_id`,`exm_id`,`question`,`op1`,`op2`,`op3`,`op4`,`c_answr`) values 
(6,3,'2*3','4','1','6','4','6'),
(7,1,'who developed python programming language?',' Rasmus Lerdorf','Wick Van Rossum','Guido Van ','Niene Stom','Guido Van '),
(8,4,'who developed python programming language?','Rasmus Lerdof','Wick Van Rossum','Guido Van ','Niene Stom','Guido Van '),
(9,5,'2+3+5?','7','8','9','10','10'),
(10,6,'which type of programming does python support?','object-oriented','structured','functional','all of the mentioned','all of the mentioned');

/*Table structure for table `stud_performance` */

DROP TABLE IF EXISTS `stud_performance`;

CREATE TABLE `stud_performance` (
  `reg_num` varchar(20) DEFAULT NULL,
  `days_studied` float DEFAULT NULL,
  `activities_engaged` float DEFAULT NULL,
  `total_clicks` float DEFAULT NULL,
  `assessments_completed` float DEFAULT NULL,
  `average_assessment_score` float DEFAULT NULL,
  `performance_id` int(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`performance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `stud_performance` */

insert  into `stud_performance`(`reg_num`,`days_studied`,`activities_engaged`,`total_clicks`,`assessments_completed`,`average_assessment_score`,`performance_id`) values 
('10',27,26,128,4.45455,5.234,1),
('11',6,20,51,14,9,2),
('26262',60,206,765,23.3333,84.5556,3),
('26264	',24,109,322,23.1111,85.6667,4),
('26265',13,62,285,16.3333,100.5,5),
('26267',12,62,294,17.3,21,6),
('5',40,197,944,22.3333,91,7),
('7',82,340,1066,23.2222,97.8889,8),
('9',15,79,242,15.8889,64,9),
('12',28,14,33,15,10,10);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` int(11) DEFAULT NULL,
  `student_name` varchar(200) DEFAULT NULL,
  `student_email` varchar(200) DEFAULT NULL,
  `student_phno` varchar(10) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `subid` int(11) DEFAULT NULL,
  `reg_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`student_id`,`student_name`,`student_email`,`student_phno`,`place`,`district`,`image`,`gender`,`subid`,`reg_date`) values 
(5,'Ram student','ram@gmail.com','7697654451','Aluva','Ernakulam','/static/pic/20220501-124015.jpg','male',5,NULL),
(7,'Arun student','arun@gmail.com','7689879898','Angamaly','Ernakulam','/static/pic/20220501-124015.jpg','male',5,NULL),
(9,'Anu student','anu@gmail.com','9878676767','kannur','Kasargod','/static/pic/20220501-124015.jpg','male',5,NULL),
(10,'bindhiya','bindhiya@gmail.com','8989876661','Kizhakkummuri','Wayanad','/static/pic/20220507-201841.jpg','female',2,'2022-05-03'),
(11,'mamtha','mamtha@gmail.com','9878765444','palazi','Wayanad','/static/pic/20220507-202615.jpg','female',2,'2022-05-05'),
(12,'Devika','devika@gmail.com','8956432815','kodakara','Kozhikode','/static/pic/20220511-123040.jpg','female',2,'2022-05-11');

/*Table structure for table `study_materials` */

DROP TABLE IF EXISTS `study_materials`;

CREATE TABLE `study_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_allocation_id` int(11) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `files` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `study_materials` */

insert  into `study_materials`(`id`,`sub_allocation_id`,`type`,`files`) values 
(1,1,'PDF','/static/pic/220411-231605pdf'),
(2,1,'IMAGE','/static/pic/220411-231834.png'),
(3,10,'PDF','/static/pic/220501-110412.sql'),
(5,10,'PDF','/static/pic220509-124720.pdf'),
(6,10,'PDF','/static/pic/220510-143307.pdf'),
(7,10,'IMAGE','/static/pic/220510-144623.PNG'),
(8,10,'IMAGE','/static/pic/220510-145602.PNG'),
(9,10,'PDF','/static/pic/220511-174044.pdf'),
(10,10,'PDF','/static/pic/220512-114627.pdf');

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `subject` */

insert  into `subject`(`subject_id`,`subject_name`) values 
(2,'python'),
(5,'Java'),
(6,'sql'),
(7,'Machine learning');

/*Table structure for table `subject_allocation` */

DROP TABLE IF EXISTS `subject_allocation`;

CREATE TABLE `subject_allocation` (
  `allocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `suject_id` int(11) DEFAULT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`allocation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `subject_allocation` */

insert  into `subject_allocation`(`allocation_id`,`suject_id`,`tutor_id`) values 
(2,2,2),
(3,6,2),
(10,2,3),
(11,5,3),
(12,6,13),
(13,7,14);

/*Table structure for table `tutor` */

DROP TABLE IF EXISTS `tutor`;

CREATE TABLE `tutor` (
  `tutor_id` int(11) DEFAULT NULL,
  `tutor_name` varchar(200) DEFAULT NULL,
  `tutor_email` varchar(200) DEFAULT NULL,
  `tutor_phno` varchar(11) DEFAULT NULL,
  `tutor_place` varchar(200) DEFAULT NULL,
  `tutor_designation` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tutor` */

insert  into `tutor`(`tutor_id`,`tutor_name`,`tutor_email`,`tutor_phno`,`tutor_place`,`tutor_designation`,`image`) values 
(3,'xysqq','xys@gmail.com','9956435123','Ernakulam','Asst.professor','/static/pic/800px-books_hd__8314929977_.jpg'),
(6,'Mohan teacher','dd@gmail.com','756789098','xcc','ccc',NULL),
(13,'abc','abc@gmail.com','6782341623','thrissur','Proffessor',NULL),
(14,'pqrs','pqrs@gmail.com','9992356134','thrissur','professor',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
