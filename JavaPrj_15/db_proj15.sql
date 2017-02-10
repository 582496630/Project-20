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


-- 导出 pfms 的数据库结构
CREATE DATABASE IF NOT EXISTS `pfms` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pfms`;

-- 导出  表 pfms.payin 结构
CREATE TABLE IF NOT EXISTS `payin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `payInName` varchar(12) DEFAULT NULL,
  `payInMoney` double(7,2) DEFAULT NULL,
  `payInDate` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  pfms.payin 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `payin` DISABLE KEYS */;
/*!40000 ALTER TABLE `payin` ENABLE KEYS */;

-- 导出  表 pfms.payout 结构
CREATE TABLE IF NOT EXISTS `payout` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `payOutName` varchar(12) DEFAULT NULL,
  `payOutMoney` double(7,2) DEFAULT NULL,
  `payOutDate` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `userId` (`userId`),
  CONSTRAINT `payout_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=gb2312;

-- 正在导出表  pfms.payout 的数据：~23 rows (大约)
/*!40000 ALTER TABLE `payout` DISABLE KEYS */;
REPLACE INTO `payout` (`Id`, `payOutName`, `payOutMoney`, `payOutDate`, `userId`) VALUES
	(1, '吃早餐12', 2.60, '2009-06-10', 52),
	(3, '购物', 208.30, '2009-06-09', 50),
	(4, '吃晚饭', 12.00, '2009-08-27', 50),
	(16, '吃中饭', 34.00, '2009-01-10', 50),
	(17, '吃中饭', 25.00, '2009-06-10', 50),
	(18, '吃中饭', 23.00, '2009-06-10', 50),
	(19, '吃中饭', 34.00, '2009-06-10', 50),
	(20, '吃中饭', 23.00, '2009-06-11', 50),
	(21, '吃中饭', 25.00, '2009-06-10', 50),
	(22, '吃中饭', 23.00, '2009-06-10', 50),
	(23, '吃中饭', 23.00, '2009-06-12', 50),
	(24, '吃盒饭', 14.00, '2009-06-30', 50),
	(25, '吃盒饭', 12.00, '2009-06-12', 50),
	(26, '吃盒饭', 12.00, '2009-06-12', 50),
	(27, '吃盒饭', 12.00, '2009-06-12', 50),
	(28, '吃盒饭', 12.00, '2009-06-12', 50),
	(29, '吃中饭', 23.00, '2009-06-10', 52),
	(31, '吃中饭', 23.00, '2009-06-10', 52),
	(32, '吃晚饭', 23.00, '2009-06-10', 52),
	(33, '吃晚饭', 23.00, '2009-06-10', 52),
	(34, '吃晚饭', 23.00, '2009-06-10', 52),
	(35, '办理公交卡', 30.00, '2009-10-30', 52),
	(36, '餐补', 50.00, '2009-12-08', 52);
/*!40000 ALTER TABLE `payout` ENABLE KEYS */;

-- 导出  表 pfms.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `quanxian` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=gb2312;

-- 正在导出表  pfms.user 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`Id`, `username`, `password`, `quanxian`) VALUES
	(50, 'xiaolu', '123', 0),
	(52, 'admin', 'admin', 1),
	(53, 'james', '12345', NULL),
	(54, 'chenqingbao', '123456', NULL),
	(55, 'chen', '123456', NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
