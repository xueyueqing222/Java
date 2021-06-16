/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.59 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `user` (
	`userId` int (11),
	`userName` varchar (300),
	`password` varchar (600)
); 
insert into `user` (`userId`, `userName`, `password`) values('1','admin','123456');
insert into `user` (`userId`, `userName`, `password`) values('2','lmx','123456');
insert into `user` (`userId`, `userName`, `password`) values('3','qrs','123456');
