# SQL-Front 5.1  (Build 4.16)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: product
# ------------------------------------------------------
# Server version 5.5.37

DROP DATABASE IF EXISTS `product`;
CREATE DATABASE `product` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `product`;

#
# Source for table tb_admin
#

DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(255) NOT NULL DEFAULT '',
  `a_passwd` varchar(255) NOT NULL DEFAULT '',
  `a_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Source for table tb_demo
#

DROP TABLE IF EXISTS `tb_demo`;
CREATE TABLE `tb_demo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Source for table tb_images
#

DROP TABLE IF EXISTS `tb_images`;
CREATE TABLE `tb_images` (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL DEFAULT '0',
  `n_id` int(11) NOT NULL DEFAULT '0',
  `i_url` varchar(255) NOT NULL DEFAULT '',
  `i_description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

#
# Source for table tb_message
#

DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE `tb_message` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_username` varchar(255) NOT NULL DEFAULT '',
  `m_tel` varchar(255) NOT NULL DEFAULT '',
  `m_email` varchar(255) NOT NULL DEFAULT '',
  `m_content` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Source for table tb_news
#

DROP TABLE IF EXISTS `tb_news`;
CREATE TABLE `tb_news` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `n_title` varchar(255) NOT NULL DEFAULT '',
  `n_content` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

#
# Source for table tb_product
#

DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE `tb_product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL DEFAULT '0',
  `p_title` varchar(255) NOT NULL DEFAULT '',
  `p_summary` varchar(255) NOT NULL DEFAULT '',
  `p_content` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Source for table tb_submenu
#

DROP TABLE IF EXISTS `tb_submenu`;
CREATE TABLE `tb_submenu` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
