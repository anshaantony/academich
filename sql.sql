/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.6.12-log : Database - stud_perform
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`stud_perform` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `stud_perform`;

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedback_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `feedback` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`feedback_id`,`student_id`,`feedback`,`date`) values (0,5,'sdsd','2022-04-12'),(0,5,'','2022-04-12');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `user_type` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`user_name`,`password`,`user_type`) values (1,'admin','123','admin'),(3,'xys@gmail.com','3828','tutor'),(5,'ss@gmail.com','tr','student'),(6,'dd@gmail.com','4008','tutor'),(7,'g@gmail.com','g123','student');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` int(11) DEFAULT NULL,
  `student_name` varchar(200) DEFAULT NULL,
  `student_email` varchar(200) DEFAULT NULL,
  `student_phno` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`student_id`,`student_name`,`student_email`,`student_phno`) values (5,'sasas','ss@gmail.com','7697654'),(7,'huuh','g@gmail.com','7689879898');

/*Table structure for table `study_materials` */

DROP TABLE IF EXISTS `study_materials`;

CREATE TABLE `study_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_allocation_id` int(11) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `files` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `study_materials` */

insert  into `study_materials`(`id`,`sub_allocation_id`,`type`,`files`) values (1,1,'PDF','/static/pic/220411-231605pdf'),(2,1,'IMAGE','/static/pic/220411-231834.png');

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `subject` */

insert  into `subject`(`subject_id`,`subject_name`) values (1,'sql'),(2,'python');

/*Table structure for table `subject_allocation` */

DROP TABLE IF EXISTS `subject_allocation`;

CREATE TABLE `subject_allocation` (
  `allocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `suject_id` int(11) DEFAULT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`allocation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `subject_allocation` */

insert  into `subject_allocation`(`allocation_id`,`suject_id`,`tutor_id`) values (1,1,3),(2,2,2),(3,6,2);

/*Table structure for table `tutor` */

DROP TABLE IF EXISTS `tutor`;

CREATE TABLE `tutor` (
  `tutor_id` int(11) DEFAULT NULL,
  `tutor_name` varchar(200) DEFAULT NULL,
  `tutor_email` varchar(200) DEFAULT NULL,
  `tutor_phno` varchar(11) DEFAULT NULL,
  `tutor_place` varchar(200) DEFAULT NULL,
  `tutor_designation` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tutor` */

insert  into `tutor`(`tutor_id`,`tutor_name`,`tutor_email`,`tutor_phno`,`tutor_place`,`tutor_designation`) values (3,'xys','xys@gmail.com','9956435123','Ernakulam','Asst.professor'),(6,'zz','dd@gmail.com','756789098','xcc','ccc');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
