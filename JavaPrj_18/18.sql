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

-- 导出 mybirger 的数据库结构
CREATE DATABASE IF NOT EXISTS `mybirger` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mybirger`;


-- 导出  表 mybirger.din 结构
CREATE TABLE IF NOT EXISTS `din` (
  `Id` varchar(20) NOT NULL,
  `Hao` varchar(10) NOT NULL,
  `Qifei` varchar(20) NOT NULL,
  `Mudi` varchar(20) NOT NULL,
  `Rqi` varchar(20) NOT NULL,
  `Jiage` varchar(10) NOT NULL,
  `Piao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  mybirger.din 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `din` DISABLE KEYS */;
REPLACE INTO `din` (`Id`, `Hao`, `Qifei`, `Mudi`, `Rqi`, `Jiage`, `Piao`) VALUES
	('eggpeijun', 'T101', '武汉', '北京', '2009-12-11', '10', 1),
	('eggpeijun', 'T114', '长沙', '北京', '2010-01-01', '540', 2),
	('jamestest', 'T110', '武汉', '北京', '2010-02-09', '100', 0);
/*!40000 ALTER TABLE `din` ENABLE KEYS */;


-- 导出  表 mybirger.sch 结构
CREATE TABLE IF NOT EXISTS `sch` (
  `Hao` varchar(10) NOT NULL,
  `Qifei` varchar(20) NOT NULL,
  `Rqi` date DEFAULT NULL,
  `Mudi` varchar(20) NOT NULL,
  `Jiage` int(5) NOT NULL,
  `Piaosu` int(11) NOT NULL,
  PRIMARY KEY (`Hao`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  mybirger.sch 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `sch` DISABLE KEYS */;
REPLACE INTO `sch` (`Hao`, `Qifei`, `Rqi`, `Mudi`, `Jiage`, `Piaosu`) VALUES
	('T101', '武汉', '2009-12-11', '北京', 10, 0),
	('T110', '武汉', '2010-02-09', '北京', 100, 10),
	('T114', '长沙', '2010-01-01', '北京', 540, 198),
	('T120', '北京', NULL, '南京', 150, 10),
	('T125', '上海', '2010-01-06', '北京', 270, 30);
/*!40000 ALTER TABLE `sch` ENABLE KEYS */;


-- 导出  表 mybirger.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(16) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Sex` varchar(2) NOT NULL,
  `Tel` varchar(16) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  mybirger.user 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`Username`, `Password`, `Name`, `Sex`, `Tel`, `Email`) VALUES
	('aaaaaaaa', '111111', '李四', '男', '12345678', '111@qq.com'),
	('eggpeijun', '123456', 'zhangsan', '男', '010456789123', 'fdsfds@ffwe.com'),
	('jamestest', '123456', '杨波', '男', '01023232323', '123@qq.com'),
	('zhangsan', '12345678', 'zhangsan', '男', '12345678', '12345678@qq.com'),
	('zhangsan2', '000000', 'zhangsan', '男', '88888888', '');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
