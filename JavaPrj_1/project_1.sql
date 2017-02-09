-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.17 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.3.0.4999
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 db_affairmanage 的数据库结构
DROP DATABASE IF EXISTS `db_affairmanage`;
CREATE DATABASE IF NOT EXISTS `db_affairmanage` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `db_affairmanage`;


-- 导出  表 db_affairmanage.tb_criticism 结构
DROP TABLE IF EXISTS `tb_criticism`;
CREATE TABLE IF NOT EXISTS `tb_criticism` (
  `criticismID` int(11) NOT NULL AUTO_INCREMENT,
  `criticismContent` text,
  `employeeID` int(11) DEFAULT NULL,
  `criticismTime` datetime DEFAULT NULL,
  `messageID` int(11) DEFAULT NULL,
  PRIMARY KEY (`criticismID`),
  KEY `employeeID` (`employeeID`),
  KEY `messageID` (`messageID`),
  CONSTRAINT `tb_criticism_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `tb_employee` (`employeeID`),
  CONSTRAINT `tb_criticism_ibfk_2` FOREIGN KEY (`messageID`) REFERENCES `tb_message` (`messageID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312 COMMENT='消息批复表';

-- 正在导出表  db_affairmanage.tb_criticism 的数据：~4 rows (大约)
DELETE FROM `tb_criticism`;
/*!40000 ALTER TABLE `tb_criticism` DISABLE KEYS */;
INSERT INTO `tb_criticism` (`criticismID`, `criticismContent`, `employeeID`, `criticismTime`, `messageID`) VALUES
	(3, '<p>不错，以后大家好好干活！！</p>', 3052, '2009-08-25 15:08:16', 14),
	(4, '<p>测试批复</p>', 3052, '2010-01-26 20:52:46', 14),
	(5, '<p>测试批复</p>', 3052, '2010-01-26 20:53:06', 16),
	(6, '<p>这种事情还需要维护，真是无语，这么简单的事情自己不能解决么？</p>', 3052, '2017-02-07 11:29:32', 14);
/*!40000 ALTER TABLE `tb_criticism` ENABLE KEYS */;


-- 导出  表 db_affairmanage.tb_employee 结构
DROP TABLE IF EXISTS `tb_employee`;
CREATE TABLE IF NOT EXISTS `tb_employee` (
  `employeeID` int(11) NOT NULL DEFAULT '0',
  `employeeName` varchar(20) DEFAULT NULL,
  `employeeSex` bit(1) DEFAULT NULL,
  `employeeBirth` date DEFAULT NULL,
  `employeePhone` varchar(20) DEFAULT NULL,
  `employeePlace` varchar(50) DEFAULT NULL,
  `joinTime` date DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `isLead` bit(1) DEFAULT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='员工信息表';

-- 正在导出表  db_affairmanage.tb_employee 的数据：~1 rows (大约)
DELETE FROM `tb_employee`;
/*!40000 ALTER TABLE `tb_employee` DISABLE KEYS */;
INSERT INTO `tb_employee` (`employeeID`, `employeeName`, `employeeSex`, `employeeBirth`, `employeePhone`, `employeePlace`, `joinTime`, `password`, `isLead`) VALUES
	(3052, '李俊', b'1', '1978-01-08', '1378675****', '北京市', '2008-12-30', '123456', b'1');
/*!40000 ALTER TABLE `tb_employee` ENABLE KEYS */;


-- 导出  表 db_affairmanage.tb_message 结构
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE IF NOT EXISTS `tb_message` (
  `messageID` int(11) NOT NULL AUTO_INCREMENT,
  `messageTitle` varchar(50) DEFAULT NULL,
  `messageContent` text,
  `employeeID` int(11) DEFAULT NULL,
  `publishTime` datetime DEFAULT NULL,
  PRIMARY KEY (`messageID`),
  KEY `employeeID` (`employeeID`),
  CONSTRAINT `tb_message_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `tb_employee` (`employeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=gb2312 COMMENT='消息表';

-- 正在导出表  db_affairmanage.tb_message 的数据：~7 rows (大约)
DELETE FROM `tb_message`;
/*!40000 ALTER TABLE `tb_message` DISABLE KEYS */;
INSERT INTO `tb_message` (`messageID`, `messageTitle`, `messageContent`, `employeeID`, `publishTime`) VALUES
	(14, '网络维护公告', '<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 48pt; line-height: 42pt; mso-char-indent-count: 2.0; mso-line-height-rule: exactly"><span style="font-size: 24pt; font-family: 宋体; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'">为保证网络上网，网络信息中心特安排了网络维护人员值班。各用户如有网络故障，请按以下方式联系。</span><span lang="EN-US" style="font-size: 24pt"><o:p></o:p></span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 24pt; line-height: 42pt; mso-char-indent-count: 1.0; mso-line-height-rule: exactly"><span style="font-size: 24pt; font-family: 宋体; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'">　值班电话：</span><span lang="EN-US" style="font-size: 24pt">XXXXXX</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 24pt; line-height: 42pt; mso-char-indent-count: 1.0; mso-line-height-rule: exactly"><span style="font-size: 24pt; font-family: 宋体; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'">&nbsp;值班人：周先生</span></p>', 3052, '2009-08-25 14:18:59'),
	(16, '开会通知', '<p><span style="color: #3366ff"><span style="background-color: #ffffff"><span><span style="font-size: 20px">请开发部的所有人员于8月30日的下午2点到三楼会议室，会议重要，请勿缺席。</span></span></span></span></p>', 3052, '2009-08-25 14:27:54'),
	(17, '研发部会议通知', '<p><span style="color: #ff0000"><span style="font-size: 20px">请研发部的所有人员于8月30日的下午2点到三楼会议室，会议重要，请勿缺席！！</span></span></p>', 3052, '2009-08-25 14:33:51'),
	(18, '关于国庆放假的通知', '<p><span style="font-size: 20px">按国家规定国庆放假七天，8月8日正常上班。</span></p>', 3052, '2009-08-25 14:35:35'),
	(19, '请假一天，望领导能批准', '<p>由于家里有事情，急需处理，现请假一天，忘领导能批准。</p>', 3052, '2009-08-25 14:37:02'),
	(20, '测试一下发布！', '<p><img alt="" src="http://localhost:8080/JavaPrj_1/fckeditor/editor/images/smiley/qq/004.gif" />测试一下！</p>', 3052, '2010-01-26 20:53:57'),
	(21, '张子静罚款公告', '<p><strong>&nbsp;因张子静带领众同事，聚众斗殴，公司给予罚款2000的惩罚，下不为例！</strong></p>', 3052, '2017-02-07 11:35:37');
/*!40000 ALTER TABLE `tb_message` ENABLE KEYS */;


-- 导出  表 db_affairmanage.tb_reply 结构
DROP TABLE IF EXISTS `tb_reply`;
CREATE TABLE IF NOT EXISTS `tb_reply` (
  `replyID` int(11) NOT NULL AUTO_INCREMENT,
  `replyContent` text,
  `employeeID` int(11) DEFAULT NULL,
  `replyTime` datetime DEFAULT NULL,
  `messageID` int(11) DEFAULT NULL,
  PRIMARY KEY (`replyID`),
  KEY `employeeID` (`employeeID`),
  KEY `messageID` (`messageID`),
  CONSTRAINT `tb_reply_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `tb_employee` (`employeeID`),
  CONSTRAINT `tb_reply_ibfk_2` FOREIGN KEY (`messageID`) REFERENCES `tb_message` (`messageID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gb2312 COMMENT='消息回复表';

-- 正在导出表  db_affairmanage.tb_reply 的数据：~8 rows (大约)
DELETE FROM `tb_reply`;
/*!40000 ALTER TABLE `tb_reply` DISABLE KEYS */;
INSERT INTO `tb_reply` (`replyID`, `replyContent`, `employeeID`, `replyTime`, `messageID`) VALUES
	(9, '<p>太好了，希望以后不要再无故掉线了！！！</p>', 3052, '2009-08-25 15:03:23', 14),
	(10, '<p>是哦，总算是能够安心上网了。</p>', 3052, '2009-08-25 15:03:49', 14),
	(11, '<p>测试回复</p>', 3052, '2010-01-26 20:52:26', 14),
	(12, '<p>不准</p>', 3052, '2017-02-07 11:28:35', 19),
	(13, '<p>&nbsp;这种事情还需要维护，无语，自己动手不就行了！</p>', 3052, '2017-02-07 11:30:26', 14),
	(14, '<p>什么事都来找我请假，不请假不行么？</p>', 3052, '2017-02-07 11:33:44', 19),
	(15, '<p>&nbsp;哇！惩罚太重了</p>', 3052, '2017-02-07 11:36:01', 21),
	(16, '<p>&nbsp;就不能人性化一点么，人家也不是故意的0.0~~</p>', 3052, '2017-02-07 11:36:31', 21);
/*!40000 ALTER TABLE `tb_reply` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
