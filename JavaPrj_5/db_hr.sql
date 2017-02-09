-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.15-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.3.0.4999
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 db_hr 的数据库结构
DROP DATABASE IF EXISTS `db_hr`;
CREATE DATABASE IF NOT EXISTS `db_hr` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `db_hr`;


-- 导出  表 db_hr.educate 结构
DROP TABLE IF EXISTS `educate`;
CREATE TABLE IF NOT EXISTS `educate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `purpose` varchar(500) NOT NULL,
  `begintime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `datum` text,
  `teacher` varchar(50) DEFAULT NULL,
  `student` varchar(50) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `educate` bit(1) NOT NULL,
  `effect` varchar(500) DEFAULT NULL,
  `summarize` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312 COMMENT='培训信息表';

-- 正在导出表  db_hr.educate 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `educate` DISABLE KEYS */;
REPLACE INTO `educate` (`id`, `name`, `purpose`, `begintime`, `endtime`, `datum`, `teacher`, `student`, `createtime`, `educate`, `effect`, `summarize`) VALUES
	(2, 'Swing课程培训', '提高员工Swing开发的能力', '2009-09-10 00:00:00', '2009-10-30 00:00:00', '《Swing从入门到精通》、《零基础学Swing》', '方威', '所有Java程序员', '2009-10-26 11:47:05', b'1', '很好', '在这次培训中，大家都学会了如何进行Swing开发'),
	(3, 'JavaWeb项目培训', '增强员工的动手能力', '2010-01-05 00:00:00', '2010-01-09 00:00:00', 'Java编程思想。', 'SUN', '所有Java程序员', '2010-01-28 14:49:49', b'1', '效果很好', '效果不错');
/*!40000 ALTER TABLE `educate` ENABLE KEYS */;


-- 导出  表 db_hr.institution 结构
DROP TABLE IF EXISTS `institution`;
CREATE TABLE IF NOT EXISTS `institution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `explains` text,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312 COMMENT='奖惩信息表';

-- 正在导出表  db_hr.institution 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
REPLACE INTO `institution` (`id`, `name`, `reason`, `explains`, `createtime`) VALUES
	(1, '小李罚款100元', '迟到1小时', '凡是上班时间迟到者一律罚款50元，超过1小时罚款100元！', '2009-10-22 14:11:39'),
	(2, '杨明奖励100元', '连续加班3天', '', '2009-10-26 14:25:22');
/*!40000 ALTER TABLE `institution` ENABLE KEYS */;


-- 导出  表 db_hr.job 结构
DROP TABLE IF EXISTS `job`;
CREATE TABLE IF NOT EXISTS `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sex` bit(1) DEFAULT b'1',
  `age` int(11) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `specialty` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `studyeffort` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `content` text,
  `isstock` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312 COMMENT='应聘人员信息表';

-- 正在导出表  db_hr.job 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
REPLACE INTO `job` (`id`, `name`, `sex`, `age`, `job`, `specialty`, `experience`, `studyeffort`, `school`, `tel`, `email`, `createtime`, `content`, `isstock`) VALUES
	(2, '刘笑笑', b'1', 30, '技术员', '信息与计算科学', '2', '本科', '湖南城市学院', '123456789', '928968880@qq.com', '2009-10-21 16:49:23', 'ddddd', b'1'),
	(3, '张振华', b'1', 30, '技术员', '信息与计算科学', '2', '本科', '湖南城市学院', '123456789', 'eggpeijun@qq.com', '2009-10-21 10:23:17', '', b'1'),
	(4, '李东阳', b'1', 25, 'Web程序员', '信息与计算科学', '1', '本科', '中南大学', '123456789', '123456@qq.com', '2009-10-22 20:10:05', '本人在校期间曾经参加过学校教务处网站的编写。', b'1'),
	(6, '徐翔', b'1', 25, 'Java工程师', '信息工程', '3', '本科', '湖南大学', '789456123', '123456@qq.com', '2009-10-26 10:56:30', '2007年，XXX软件公司从事Java Web开发工作。\r\n2008年，XXX软件公司担任项目组长工作。', b'1'),
	(7, '郭超', b'1', 20, '经理', '建筑', '3年', '本科', '武汉', '110110', '6666@163.com', '2017-01-11 18:21:07', '					', b'1');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;


-- 导出  表 db_hr.stipend 结构
DROP TABLE IF EXISTS `stipend`;
CREATE TABLE IF NOT EXISTS `stipend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `basic` float DEFAULT NULL,
  `eat` float DEFAULT NULL,
  `house` float DEFAULT NULL,
  `duty` float DEFAULT NULL,
  `scot` float DEFAULT NULL,
  `punishment` float DEFAULT NULL,
  `other` float DEFAULT NULL,
  `granttime` datetime DEFAULT NULL,
  `totalize` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312 COMMENT='薪金信息表';

-- 正在导出表  db_hr.stipend 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `stipend` DISABLE KEYS */;
REPLACE INTO `stipend` (`id`, `name`, `basic`, `eat`, `house`, `duty`, `scot`, `punishment`, `other`, `granttime`, `totalize`) VALUES
	(2, '张敏', 1111, 300, 300, 300, 200, 0, 600, '2009-02-03 00:00:00', 2411),
	(3, '李明', 2523, 300, 300, 300, 200, 100, 200, '2009-02-03 00:00:00', 3323),
	(4, '徐翔', 2800, 300, 300, 200, 200, 200, 200, '2009-02-03 00:00:00', 3400),
	(5, '张亮', 6500, 1000, 1000, 500, 800, 600, 500, '2009-02-03 00:00:00', 8100),
	(6, '徐翔', 4500, 200, 200, 120, 400, 300, 500, '2009-02-03 00:00:00', 4820);
/*!40000 ALTER TABLE `stipend` ENABLE KEYS */;


-- 导出  表 db_hr.users 结构
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sex` bit(1) DEFAULT b'1',
  `birthday` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  `isadmin` bit(1) DEFAULT b'0',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312 COMMENT='人员信息表';

-- 正在导出表  db_hr.users 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `username`, `password`, `sex`, `birthday`, `createtime`, `isadmin`, `content`) VALUES
	(1, 'admin', 'admin', b'1', '1988-01-03 00:00:00', '2005-05-09 00:00:00', b'1', '超级管理员'),
	(4, 'sanqing', '1234567', b'1', '1988-01-04 00:00:00', '2009-10-21 10:21:33', b'1', '管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
