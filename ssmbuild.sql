/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.59 : Database - ssmbuild
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `ssmbuild`;

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `bookId` int(10) NOT NULL AUTO_INCREMENT COMMENT '书ID',
  `bookName` varchar(100) DEFAULT NULL COMMENT '书名',
  `bookCounts` int(10) DEFAULT NULL COMMENT '书的数量',
  `detail` varchar(200) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `books` */

insert  into `books`(`bookId`,`bookName`,`bookCounts`,`detail`) values (1,'MySQL',12,'从删库到跑路'),(2,'Linux',10,'从进门到进牢'),(3,'C#',85,'从入门到入狱'),(4,'C++',60,'从入门到换行'),(5,'C',12,'有手就....'),(6,'Java',10,'从入门到入土'),(7,'嵌入式',40,'yyds');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) DEFAULT NULL COMMENT '用户名且唯一性约束',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userId`,`userName`,`password`) values (1,'admin','123456'),(2,'lmx','123456'),(3,'qrs','123456');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
