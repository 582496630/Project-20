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

-- 导出 db_votemanage 的数据库结构
DROP DATABASE IF EXISTS `db_votemanage`;
CREATE DATABASE IF NOT EXISTS `db_votemanage` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `db_votemanage`;


-- 导出  表 db_votemanage.tb_channel 结构
DROP TABLE IF EXISTS `tb_channel`;
CREATE TABLE IF NOT EXISTS `tb_channel` (
  `channelID` int(11) NOT NULL AUTO_INCREMENT,
  `channelName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`channelID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312 COMMENT='投票频道表';

-- 正在导出表  db_votemanage.tb_channel 的数据：~6 rows (大约)
DELETE FROM `tb_channel`;
/*!40000 ALTER TABLE `tb_channel` DISABLE KEYS */;
INSERT INTO `tb_channel` (`channelID`, `channelName`) VALUES
	(1, 'NBA'),
	(2, 'CBA'),
	(3, '足球世界杯'),
	(4, '中超'),
	(5, '英超'),
	(6, 'F1');
/*!40000 ALTER TABLE `tb_channel` ENABLE KEYS */;


-- 导出  表 db_votemanage.tb_vote 结构
DROP TABLE IF EXISTS `tb_vote`;
CREATE TABLE IF NOT EXISTS `tb_vote` (
  `voteID` int(11) NOT NULL AUTO_INCREMENT,
  `voteName` varchar(255) DEFAULT NULL,
  `channelID` int(11) DEFAULT NULL,
  PRIMARY KEY (`voteID`),
  KEY `channelID` (`channelID`),
  CONSTRAINT `tb_vote_ibfk_1` FOREIGN KEY (`channelID`) REFERENCES `tb_channel` (`channelID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gb2312 COMMENT='投票表';

-- 正在导出表  db_votemanage.tb_vote 的数据：~0 rows (大约)
DELETE FROM `tb_vote`;
/*!40000 ALTER TABLE `tb_vote` DISABLE KEYS */;
INSERT INTO `tb_vote` (`voteID`, `voteName`, `channelID`) VALUES
	(13, '请选择你最喜欢的CBA球员', 2);
/*!40000 ALTER TABLE `tb_vote` ENABLE KEYS */;


-- 导出  表 db_votemanage.tb_voteoption 结构
DROP TABLE IF EXISTS `tb_voteoption`;
CREATE TABLE IF NOT EXISTS `tb_voteoption` (
  `voteOptionID` int(11) NOT NULL AUTO_INCREMENT,
  `voteID` int(11) DEFAULT NULL,
  `voteOptionName` varchar(255) DEFAULT NULL,
  `ticketNum` int(11) DEFAULT '0',
  PRIMARY KEY (`voteOptionID`),
  KEY `voteID` (`voteID`),
  CONSTRAINT `tb_voteoption_ibfk_1` FOREIGN KEY (`voteID`) REFERENCES `tb_vote` (`voteID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=gb2312 COMMENT='投票选项表';

-- 正在导出表  db_votemanage.tb_voteoption 的数据：~4 rows (大约)
DELETE FROM `tb_voteoption`;
/*!40000 ALTER TABLE `tb_voteoption` DISABLE KEYS */;
INSERT INTO `tb_voteoption` (`voteOptionID`, `voteID`, `voteOptionName`, `ticketNum`) VALUES
	(51, 13, '朱芳宇', 1),
	(52, 13, '王治郅', 2),
	(53, 13, '姚明', 0),
	(54, 13, '易建联', 0);
/*!40000 ALTER TABLE `tb_voteoption` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
