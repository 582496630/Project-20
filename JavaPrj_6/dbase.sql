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

-- 导出 quote 的数据库结构
CREATE DATABASE IF NOT EXISTS `quote` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `quote`;


-- 导出  表 quote.tb_customer 结构
CREATE TABLE IF NOT EXISTS `tb_customer` (
  `customerNO` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(30) DEFAULT '(NULL)',
  `customerName` varchar(15) DEFAULT '(NULL)',
  `otherInfo` varchar(30) DEFAULT '(NULL)',
  `phone` varchar(15) DEFAULT '(NULL)',
  `relationman` varchar(15) DEFAULT '(NULL)',
  PRIMARY KEY (`customerNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  quote.tb_customer 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `tb_customer` DISABLE KEYS */;
REPLACE INTO `tb_customer` (`customerNO`, `address`, `customerName`, `otherInfo`, `phone`, `relationman`) VALUES
	('0201305', '北京市朝阳区XXX', '周氏国际', '备注1', '1111122222', '周先生'),
	('0201306', '北京市朝阳区XXX', '张氏国际', '备注', '123456789', '张先生'),
	('0201307', '北京市朝阳区XXX', '李氏国际', '备注', '12345678', '李先生'),
	('0201308', '北京市朝阳区XXX', '刘氏国际', '备注', '123456789', '刘先生'),
	('0201310', '北京市朝阳区XXX', '唐氏国际', '备注信息', '123456789', '唐先生');
/*!40000 ALTER TABLE `tb_customer` ENABLE KEYS */;


-- 导出  表 quote.tb_order 结构
CREATE TABLE IF NOT EXISTS `tb_order` (
  `orderNO` varchar(10) NOT NULL DEFAULT '',
  `orderTime` datetime DEFAULT NULL,
  `otherInfo` varchar(50) DEFAULT '(NULL)',
  `quantity` varchar(10) DEFAULT '(NULL)',
  `customerNO` varchar(20) DEFAULT '(NULL)',
  `productNO` varchar(15) DEFAULT '(NULL)',
  PRIMARY KEY (`orderNO`),
  KEY `FKFA98EE3DD96DD882` (`customerNO`),
  KEY `FKFA98EE3D652AF8BA` (`productNO`),
  CONSTRAINT `FKFA98EE3D652AF8BA` FOREIGN KEY (`productNO`) REFERENCES `tb_product` (`productNO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FKFA98EE3DD96DD882` FOREIGN KEY (`customerNO`) REFERENCES `tb_customer` (`customerNO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  quote.tb_order 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `tb_order` DISABLE KEYS */;
REPLACE INTO `tb_order` (`orderNO`, `orderTime`, `otherInfo`, `quantity`, `customerNO`, `productNO`) VALUES
	('1010121', '2009-11-08 00:00:00', '6月10号之前必须发货', '100', '0201305', '0104578'),
	('1010122', '2009-11-08 00:00:00', '6月10号之前必须发货', '500', '0201307', '0104579'),
	('1010123', '2009-11-08 00:00:00', '6月13号之前必须发货', '500', '0201310', '0104578'),
	('1010124', '2009-11-08 00:00:00', '6月14号之前必须发货', '223', '0201308', '0104588');
/*!40000 ALTER TABLE `tb_order` ENABLE KEYS */;


-- 导出  表 quote.tb_product 结构
CREATE TABLE IF NOT EXISTS `tb_product` (
  `productNO` varchar(15) NOT NULL DEFAULT '',
  `otherInfo` varchar(50) DEFAULT '(NULL)',
  `price` decimal(10,2) DEFAULT '0.00',
  `producingArea` varchar(20) DEFAULT '(NULL)',
  `productName` varchar(20) DEFAULT '(NULL)',
  `productOwner` varchar(20) DEFAULT '(NULL)',
  `quantity` int(11) DEFAULT '0',
  `unit` varchar(20) DEFAULT '(NULL)',
  `producttypeNO` varchar(15) DEFAULT '(NULL)',
  PRIMARY KEY (`productNO`),
  KEY `FKED97341E7C52804E` (`producttypeNO`),
  CONSTRAINT `FKED97341E7C52804E` FOREIGN KEY (`producttypeNO`) REFERENCES `tb_producttype` (`producttypeNO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  quote.tb_product 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `tb_product` DISABLE KEYS */;
REPLACE INTO `tb_product` (`productNO`, `otherInfo`, `price`, `producingArea`, `productName`, `productOwner`, `quantity`, `unit`, `producttypeNO`) VALUES
	('0104578', '备注', 2999.00, '中国大陆', '飞毛腿踏步机', '飞毛腿公司', 100, '台', '15487'),
	('0104579', '备注', 1888.00, '美国', '宝贝踏步机', '宝贝集团', 50, '台', '15487'),
	('0104587', '备注', 2500.00, '中国大陆', '桥大跑步机', '桥大科技', 150, '台', '17894'),
	('0104588', '备注', 5000.00, '美国', '汇祥跑步机', '汇祥科技', 20, '台', '17894');
/*!40000 ALTER TABLE `tb_product` ENABLE KEYS */;


-- 导出  表 quote.tb_producttype 结构
CREATE TABLE IF NOT EXISTS `tb_producttype` (
  `producttypeNO` varchar(15) NOT NULL DEFAULT '',
  `producttypeName` varchar(20) DEFAULT '(NULL)',
  PRIMARY KEY (`producttypeNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  quote.tb_producttype 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `tb_producttype` DISABLE KEYS */;
REPLACE INTO `tb_producttype` (`producttypeNO`, `producttypeName`) VALUES
	('09', '测试'),
	('15123', '拉力器'),
	('15474', '健身车'),
	('15487', '踏步机'),
	('17894', '跑步机');
/*!40000 ALTER TABLE `tb_producttype` ENABLE KEYS */;


-- 导出  表 quote.tb_quotation 结构
CREATE TABLE IF NOT EXISTS `tb_quotation` (
  `quotationNO` varchar(15) NOT NULL DEFAULT '',
  `otherInfo` varchar(50) DEFAULT '(NULL)',
  `quotationMan` varchar(15) DEFAULT '(NULL)',
  `quotationTime` datetime DEFAULT NULL,
  `customerNO` varchar(20) DEFAULT '(NULL)',
  `productNO` varchar(15) DEFAULT '',
  PRIMARY KEY (`quotationNO`),
  KEY `FKCABDECFBD96DD882` (`customerNO`),
  KEY `FKCABDECFB652AF8BA` (`productNO`),
  CONSTRAINT `FKCABDECFB652AF8BA` FOREIGN KEY (`productNO`) REFERENCES `tb_product` (`productNO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FKCABDECFBD96DD882` FOREIGN KEY (`customerNO`) REFERENCES `tb_customer` (`customerNO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  quote.tb_quotation 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `tb_quotation` DISABLE KEYS */;
REPLACE INTO `tb_quotation` (`quotationNO`, `otherInfo`, `quotationMan`, `quotationTime`, `customerNO`, `productNO`) VALUES
	('01020304', '以后多多合作', '小张', '2009-11-08 00:00:00', '0201305', '0104578'),
	('01020305', '以后多多合作', '小李', '2009-11-08 00:00:00', '0201306', '0104579'),
	('01020306', '以后多多合作', '小孙', '2009-11-08 00:00:00', '0201310', '0104588'),
	('01020307', '以后多多合作', '杨波', '2009-11-08 00:00:00', '0201308', '0104578');
/*!40000 ALTER TABLE `tb_quotation` ENABLE KEYS */;


-- 导出  表 quote.tb_user 结构
CREATE TABLE IF NOT EXISTS `tb_user` (
  `username` varchar(18) NOT NULL DEFAULT '',
  `grade` int(11) NOT NULL DEFAULT '0',
  `password` varchar(18) DEFAULT '(NULL)',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  quote.tb_user 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
REPLACE INTO `tb_user` (`username`, `grade`, `password`) VALUES
	('2222', 1, '2222'),
	('3', 3, '3'),
	('admin', 3, 'admin'),
	('daa', 1, '22sa');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
