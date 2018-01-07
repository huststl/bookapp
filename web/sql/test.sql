/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.5.20 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `tb_book` */

DROP TABLE IF EXISTS `tb_book`;

CREATE TABLE `tb_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(54) DEFAULT NULL,
  `author` varchar(54) DEFAULT NULL,
  `publicationdate` date DEFAULT NULL,
  `publication` varchar(150) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(54) DEFAULT NULL,
  `remark` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tb_book` */

insert  into `tb_book`(`id`,`name`,`author`,`publicationdate`,`publication`,`price`,`image`,`remark`) values (1,'java实战开发','张三','2018-01-01','机械工业出版社',69.8,'java.jpg','本书从初学者的角度出发，详细讲解了从Java基础到SSH框架应用的各种技术知识。全书可分为四个部分，分别为基础篇、Web篇、框架篇和实战篇，'),(2,'python数据分析','李四','2017-12-12','华中科技大学出版社',48.9,'python.jpg','《Python数据分析(影印版)》由麦金尼撰写，他是pandas库的主要作者。《Python数据分析(影印版)》也是一本具有实践性的指南，指导那些使用Python进行科学计算的数据密集型应用。它适用于刚刚开始使用Python的分析师，或者是进入科学计算领域的Python程序员。');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `loginname` varchar(50) DEFAULT NULL COMMENT '登录名',
  `password` varchar(18) DEFAULT NULL COMMENT '密码',
  `username` varchar(18) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(18) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`loginname`,`password`,`username`,`phone`,`address`) values (1,'stl','123456','田浪','13477002290','武汉华中科技大学');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
