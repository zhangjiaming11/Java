/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `lab`;

USE `lab`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `name` varchar(16) default NULL,
  `password` varchar(16) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`name`,`password`) values ('dd','dd'),('admin','admin');

/*Table structure for table `enrol` */

DROP TABLE IF EXISTS `enrol`;

CREATE TABLE `enrol` (
  `class_id` varchar(32) default NULL,
  `stu_id` varchar(32) default NULL,
  `accept` varchar(32) default NULL,
  `score` varchar(32) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `enrol` */

/*Table structure for table `grade` */

DROP TABLE IF EXISTS `grade`;

CREATE TABLE `grade` (
  `id` int(8) NOT NULL,
  `grade` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `grade` */

insert  into `grade`(`id`,`grade`) values (1,'2005'),(2,'2006'),(3,'2007'),(4,'2008');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(8) NOT NULL auto_increment,
  `title` varchar(60) default NULL,
  `content` varchar(60) default NULL,
  `datetime` varchar(60) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `news` */

insert  into `news`(`id`,`title`,`content`,`datetime`) values (1,'平台试运行','进入开始平台试运行,欢迎大家访问!					','2007-7-2 21:45:38'),(2,'获奖通知','xx,获得	先进青年称号			','2007-7-2 21:43:57');

/*Table structure for table `note` */

DROP TABLE IF EXISTS `note`;

CREATE TABLE `note` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `author` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  `datetime` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `note` */

insert  into `note`(`id`,`title`,`author`,`content`,`datetime`) values (1,'note1','fra','note1 is note 1','21:52');

/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(64) default NULL,
  `info` varchar(255) default NULL,
  `time` varchar(16) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `project` */

insert  into `project`(`id`,`name`,`info`,`time`) values (1,'关于开发教育项目','								关于开发一个关于基于J2ee平台的教育项目\r\n							\r\n							','2007-9-2'),(2,'企业黄页项目','								接交委通知,开发一个企业黄页项目\r\n							\r\n							','2007-111-1'),(3,'财政项目','								我们与省公司签定一了财政项目\r\n							\r\n							','2007-12-14');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(16) default NULL,
  `grade_id` int(11) default NULL,
  `image` varchar(50) default NULL,
  `sex` char(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`name`,`grade_id`,`image`,`sex`) values (1,'dsdsd',3,'2-1.gif','女'),(2,'fdf',2,'pinfo.gif','男'),(3,'dsd',3,'xong7.gif','男'),(4,'张貉',3,'2-3.gif','女');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) default NULL,
  `sex` char(4) default NULL,
  `zhicheng` varchar(32) default NULL,
  `image` varchar(50) default NULL,
  `info` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`id`,`name`,`sex`,`zhicheng`,`image`,`info`) values (2,'李老师','女','会计师','s10.gif','										她有光荣的历史	\r\n							\r\n							\r\n							\r\n							\r\n							'),(3,'李老师','男','教授','xong6.gif','来自广州\r\n							\r\n							\r\n							');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
