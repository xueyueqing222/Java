/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.59 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `books` (
	`bookId` int (10),
	`bookName` varchar (300),
	`bookCounts` int (10),
	`detail` varchar (600)
); 
insert into `books` (`bookId`, `bookName`, `bookCounts`, `detail`) values('1','MySQL','12','从删库到跑路');
insert into `books` (`bookId`, `bookName`, `bookCounts`, `detail`) values('2','Linux','10','从进门到进牢');
insert into `books` (`bookId`, `bookName`, `bookCounts`, `detail`) values('3','C#','85','从入门到入狱');
insert into `books` (`bookId`, `bookName`, `bookCounts`, `detail`) values('4','C++','60','从入门到换行');
insert into `books` (`bookId`, `bookName`, `bookCounts`, `detail`) values('5','C','12','有手就....');
insert into `books` (`bookId`, `bookName`, `bookCounts`, `detail`) values('6','Java','10','从入门到入土');
insert into `books` (`bookId`, `bookName`, `bookCounts`, `detail`) values('7','嵌入式','40','yyds');
