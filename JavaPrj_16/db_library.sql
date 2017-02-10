-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.17 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 db_library 的数据库结构
DROP DATABASE IF EXISTS `db_library`;
CREATE DATABASE IF NOT EXISTS `db_library` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_library`;

-- 导出  表 db_library.tb_bookcase 结构
DROP TABLE IF EXISTS `tb_bookcase`;
CREATE TABLE IF NOT EXISTS `tb_bookcase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `Column_3` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_bookcase 的数据：2 rows
/*!40000 ALTER TABLE `tb_bookcase` DISABLE KEYS */;
REPLACE INTO `tb_bookcase` (`id`, `name`, `Column_3`) VALUES
	(3, '书架1', NULL),
	(4, '书架2', NULL);
/*!40000 ALTER TABLE `tb_bookcase` ENABLE KEYS */;

-- 导出  表 db_library.tb_bookinfo 结构
DROP TABLE IF EXISTS `tb_bookinfo`;
CREATE TABLE IF NOT EXISTS `tb_bookinfo` (
  `barcode` varchar(30) DEFAULT NULL,
  `bookname` varchar(70) DEFAULT NULL,
  `typeid` int(10) unsigned DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `translator` varchar(30) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `page` int(10) unsigned DEFAULT NULL,
  `bookcase` int(10) unsigned DEFAULT NULL,
  `inTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `del` tinyint(1) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_bookinfo 的数据：10 rows
/*!40000 ALTER TABLE `tb_bookinfo` DISABLE KEYS */;
REPLACE INTO `tb_bookinfo` (`barcode`, `bookname`, `typeid`, `author`, `translator`, `ISBN`, `price`, `page`, `bookcase`, `inTime`, `operator`, `del`, `id`) VALUES
	('9787302047230', 'Java 2 实用教程', 1, 'shuanyulin', 'ceshi', '978-7', 39.00, 440, 4, '2007-11-22', 'tsoft', 1, 1),
	('jk', 'kjkj', 1, '***', '', '7-302', 12.00, 0, 1, '2007-11-22', 'tsoft', 1, 2),
	('9787115157690', 'JSP程序开发范例', 1, '***', '', '978-7', 89.00, 816, 3, '2007-11-23', 'tsoft', 1, 3),
	('123', '事实', 1, '11', '11', '7-302', 11.00, 11, 1, '2007-12-18', 'tsoft', 1, 5),
	('9787302047492', 'DHTML动态网页制作', 3, 'shuangyulin', 'ceshi', '7-302', 45.00, 221, 4, '2009-04-25', 'admin', 1, 7),
	('9787508614557 ', '巴菲特教你读财报', 1, '(美)玛丽.巴菲特;戴维.克拉克', '李凤', '978-6', 30.00, 179, 3, '2009-12-18', 'admin', 0, 8),
	('9787802235281', '不抱怨时间:谁说重要事不能明天做', 1, '(英)马克.福斯特', '于海生', '978-5', 20.00, 0, 3, '2009-12-18', 'admin', 0, 9),
	('9787040276985 ', '全国硕士研究生入学统一考试英语考试大纲解析:2010年版', 1, '本书编写组', '', '010', 32.00, 266, 4, '2009-12-18', 'admin', 0, 10),
	('9787300087993', '新托业词汇必备', 8, '(韩)文德', '付莉', '010', 58.00, 515, 3, '2009-12-18', 'admin', 0, 11),
	('9787508604570', '轻量级JavaEE企业应用实战', 6, '李刚', '', '7-302', 60.00, 0, 4, '2010-02-07', 'admin', 0, 12);
/*!40000 ALTER TABLE `tb_bookinfo` ENABLE KEYS */;

-- 导出  表 db_library.tb_booktype 结构
DROP TABLE IF EXISTS `tb_booktype`;
CREATE TABLE IF NOT EXISTS `tb_booktype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(30) DEFAULT NULL,
  `days` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_booktype 的数据：5 rows
/*!40000 ALTER TABLE `tb_booktype` DISABLE KEYS */;
REPLACE INTO `tb_booktype` (`id`, `typename`, `days`) VALUES
	(1, '经济管理', 65),
	(3, '人文科教', 50),
	(6, '计算机', 30),
	(7, '小儿学习', 30),
	(8, '外语学习', 60);
/*!40000 ALTER TABLE `tb_booktype` ENABLE KEYS */;

-- 导出  表 db_library.tb_borrow 结构
DROP TABLE IF EXISTS `tb_borrow`;
CREATE TABLE IF NOT EXISTS `tb_borrow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `readerid` int(10) unsigned DEFAULT NULL,
  `bookid` int(10) DEFAULT NULL,
  `borrowTime` date DEFAULT NULL,
  `backTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `ifback` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_borrow 的数据：17 rows
/*!40000 ALTER TABLE `tb_borrow` DISABLE KEYS */;
REPLACE INTO `tb_borrow` (`id`, `readerid`, `bookid`, `borrowTime`, `backTime`, `operator`, `ifback`) VALUES
	(1, 1, 1, '2007-11-22', '2007-12-22', 'tsoft', 1),
	(2, 1, 3, '2007-11-26', '2007-12-26', 'tsoft', 0),
	(3, 1, 1, '2007-11-26', '2007-12-26', 'tsoft', 0),
	(4, 3, 6, '2007-12-29', '2007-01-08', 'Tsoft', 0),
	(5, 3, 1, '2007-12-29', '2008-01-28', 'Tsoft', 0),
	(6, 3, 3, '2007-12-29', '2008-01-28', 'Tsoft', 1),
	(7, 4, 7, '2009-04-25', '2009-04-30', 'admin', 0),
	(8, 5, 8, '2009-12-18', '2010-03-13', 'admin', 1),
	(9, 5, 9, '2009-12-18', '2010-03-13', 'admin', 0),
	(10, 6, 11, '2009-12-18', '2010-02-16', 'admin', 0),
	(11, 7, 8, '2010-02-01', '2010-03-13', 'admin', 1),
	(12, 7, 8, '2010-02-01', '2010-03-13', 'admin', 1),
	(13, 5, 8, '2017-02-07', '2017-03-19', 'admin', 1),
	(14, 5, 8, '2017-02-07', '2017-03-16', 'admin', 1),
	(15, 5, 8, '2017-02-07', '2017-03-16', 'admin', 1),
	(16, 5, 8, '2017-02-07', '2017-03-16', 'admin', 1),
	(17, 5, 8, '2017-02-07', '2017-04-16', 'admin', 0);
/*!40000 ALTER TABLE `tb_borrow` ENABLE KEYS */;

-- 导出  表 db_library.tb_giveback 结构
DROP TABLE IF EXISTS `tb_giveback`;
CREATE TABLE IF NOT EXISTS `tb_giveback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `readerid` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `backTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_giveback 的数据：9 rows
/*!40000 ALTER TABLE `tb_giveback` DISABLE KEYS */;
REPLACE INTO `tb_giveback` (`id`, `readerid`, `bookid`, `backTime`, `operator`) VALUES
	(1, 1, 1, '2007-11-22', 'tsoft'),
	(2, 3, 3, '2007-01-03', 'Tsoft'),
	(3, 7, 8, '2010-02-01', 'admin'),
	(4, 7, 8, '2010-02-01', 'admin'),
	(5, 5, 8, '2010-02-07', 'admin'),
	(6, 5, 8, '2017-02-07', 'admin'),
	(7, 5, 8, '2017-02-07', 'admin'),
	(8, 5, 8, '2017-02-07', 'admin'),
	(9, 5, 8, '2017-02-07', 'admin');
/*!40000 ALTER TABLE `tb_giveback` ENABLE KEYS */;

-- 导出  表 db_library.tb_library 结构
DROP TABLE IF EXISTS `tb_library`;
CREATE TABLE IF NOT EXISTS `tb_library` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `libraryname` varchar(50) DEFAULT NULL,
  `curator` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `introduce` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_library 的数据：1 rows
/*!40000 ALTER TABLE `tb_library` DISABLE KEYS */;
REPLACE INTO `tb_library` (`id`, `libraryname`, `curator`, `tel`, `address`, `email`, `url`, `createDate`, `introduce`) VALUES
	(1, '智慧图书馆', '汪建林', '13558690869', '四川成都', 'wangjianlin1985@126.com', 'http://shop34864101.taobao.com', '1999-05-06', '本市高级图书馆');
/*!40000 ALTER TABLE `tb_library` ENABLE KEYS */;

-- 导出  表 db_library.tb_manager 结构
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE IF NOT EXISTS `tb_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `PWD` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_manager 的数据：3 rows
/*!40000 ALTER TABLE `tb_manager` DISABLE KEYS */;
REPLACE INTO `tb_manager` (`id`, `name`, `PWD`) VALUES
	(3, 'admin', 'admin'),
	(4, 'tsoft', '111'),
	(5, 'wangjianlin', '198517');
/*!40000 ALTER TABLE `tb_manager` ENABLE KEYS */;

-- 导出  表 db_library.tb_parameter 结构
DROP TABLE IF EXISTS `tb_parameter`;
CREATE TABLE IF NOT EXISTS `tb_parameter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cost` int(10) unsigned DEFAULT NULL,
  `validity` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_parameter 的数据：1 rows
/*!40000 ALTER TABLE `tb_parameter` DISABLE KEYS */;
REPLACE INTO `tb_parameter` (`id`, `cost`, `validity`) VALUES
	(1, 40, 5);
/*!40000 ALTER TABLE `tb_parameter` ENABLE KEYS */;

-- 导出  表 db_library.tb_publishing 结构
DROP TABLE IF EXISTS `tb_publishing`;
CREATE TABLE IF NOT EXISTS `tb_publishing` (
  `ISBN` varchar(20) DEFAULT NULL,
  `pubname` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_publishing 的数据：5 rows
/*!40000 ALTER TABLE `tb_publishing` DISABLE KEYS */;
REPLACE INTO `tb_publishing` (`ISBN`, `pubname`) VALUES
	('7-302', '清华大学出版社'),
	('978-7', '人民邮电出版社'),
	('978-6', '中信出版社'),
	('978-5', '中国三峡出版社'),
	('010', '高等教育出版社 ');
/*!40000 ALTER TABLE `tb_publishing` ENABLE KEYS */;

-- 导出  表 db_library.tb_purview 结构
DROP TABLE IF EXISTS `tb_purview`;
CREATE TABLE IF NOT EXISTS `tb_purview` (
  `id` int(11) NOT NULL,
  `sysset` tinyint(1) DEFAULT '0',
  `readerset` tinyint(1) DEFAULT '0',
  `bookset` tinyint(1) DEFAULT '0',
  `borrowback` tinyint(1) DEFAULT '0',
  `sysquery` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_purview 的数据：3 rows
/*!40000 ALTER TABLE `tb_purview` DISABLE KEYS */;
REPLACE INTO `tb_purview` (`id`, `sysset`, `readerset`, `bookset`, `borrowback`, `sysquery`) VALUES
	(3, 1, 1, 1, 1, 1),
	(4, 1, 1, 1, 1, 1),
	(5, 1, 1, 1, 1, 1);
/*!40000 ALTER TABLE `tb_purview` ENABLE KEYS */;

-- 导出  表 db_library.tb_reader 结构
DROP TABLE IF EXISTS `tb_reader`;
CREATE TABLE IF NOT EXISTS `tb_reader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `vocation` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `paperType` varchar(10) DEFAULT NULL,
  `paperNO` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `remark` text,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_reader 的数据：4 rows
/*!40000 ALTER TABLE `tb_reader` DISABLE KEYS */;
REPLACE INTO `tb_reader` (`id`, `name`, `sex`, `barcode`, `vocation`, `birthday`, `paperType`, `paperNO`, `tel`, `email`, `createDate`, `operator`, `remark`, `typeid`) VALUES
	(5, '庞晓庆', '男', '050930222', '学生', '1985-05-12', '身份证', '123456789745614578', '010-78945613', 'fdsfds@ffwe.com', '2009-12-18', 'admin', '', 1),
	(6, '杨杰', '男', '050930233', '图书馆工作人员', '1981-05-12', '身份证', '123456789745614578', '010-456789123', 'fdsfds@ffwe.com', '2009-12-18', 'admin', '', 2),
	(7, '欧阳花', '女', '050930234', '教师', '1983-05-12', '身份证', '123456789745614578', '010-456789123', 'fdsfds@ffwe.com', '2009-12-18', 'admin', '', 3),
	(8, '王昱晨', '男', '050930236', '教师', '1992-06-05', '身份证', '123456789123456789', '', '', '2010-02-07', 'admin', '', 3);
/*!40000 ALTER TABLE `tb_reader` ENABLE KEYS */;

-- 导出  表 db_library.tb_readertype 结构
DROP TABLE IF EXISTS `tb_readertype`;
CREATE TABLE IF NOT EXISTS `tb_readertype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_readertype 的数据：3 rows
/*!40000 ALTER TABLE `tb_readertype` DISABLE KEYS */;
REPLACE INTO `tb_readertype` (`id`, `name`, `number`) VALUES
	(1, '学生', 3),
	(2, '工作人员', 5),
	(3, '教师', 4);
/*!40000 ALTER TABLE `tb_readertype` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
