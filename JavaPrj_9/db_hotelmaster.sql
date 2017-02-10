-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.15 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5142
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 db_hotelmaster 的数据库结构
DROP DATABASE IF EXISTS `db_hotelmaster`;
CREATE DATABASE IF NOT EXISTS `db_hotelmaster` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hotelmaster`;

-- 导出  表 db_hotelmaster.tb_balancement 结构
DROP TABLE IF EXISTS `tb_balancement`;
CREATE TABLE IF NOT EXISTS `tb_balancement` (
  `BMID` varchar(32) NOT NULL,
  `BMCHECKINORDERID` varchar(32) NOT NULL,
  `BMGUESTID` varchar(32) DEFAULT NULL,
  `BMTYPE` varchar(16) NOT NULL,
  `BMTOTALRATE` decimal(14,2) NOT NULL,
  `BMPAIDMONEY` decimal(14,2) NOT NULL,
  `BMRECEIVMONEY` decimal(14,2) NOT NULL,
  `BMCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `BMOPERATOR` varchar(20) NOT NULL,
  `BMPAYMENTMODEL` varchar(16) NOT NULL,
  `BMREMARK` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`BMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_balancement 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `tb_balancement` DISABLE KEYS */;
REPLACE INTO `tb_balancement` (`BMID`, `BMCHECKINORDERID`, `BMGUESTID`, `BMTYPE`, `BMTOTALRATE`, `BMPAIDMONEY`, `BMRECEIVMONEY`, `BMCREATETIME`, `BMOPERATOR`, `BMPAYMENTMODEL`, `BMREMARK`) VALUES
	('402881e51a448696011a4489783f0003', '402881e51a448696011a4489373e0001', '402881e51a39c232011a39da4d3e0005', '结单', 320.00, 1000.00, 200.00, '2008-06-01 22:30:37', 'admin', '现金', 'remark'),
	('402881e51a53efae011a53f874550004', '402881e51a53efae011a53f77fc40001', '402881e51a39c232011a39da4d3e0005', '结单', 350.00, 0.00, 0.00, '2008-06-04 22:26:09', 'admin', '现金', 'fdsafdsa'),
	('402881e625636b70012563767c6c0001', '402881e625587aa7012559003f2d0003', '402881e625587aa7012558e59ffa0001', '结单', 260.00, 0.00, 0.00, '2009-12-06 18:08:47', 'admin', '现金', '');
/*!40000 ALTER TABLE `tb_balancement` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_baseinfo 结构
DROP TABLE IF EXISTS `tb_baseinfo`;
CREATE TABLE IF NOT EXISTS `tb_baseinfo` (
  `BIOID` varchar(32) NOT NULL,
  `BIONAME` varchar(32) NOT NULL,
  `BIOVALUE` varchar(200) NOT NULL,
  PRIMARY KEY (`BIOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_baseinfo 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `tb_baseinfo` DISABLE KEYS */;
REPLACE INTO `tb_baseinfo` (`BIOID`, `BIONAME`, `BIOVALUE`) VALUES
	('BIO0011234', 'CheckinOrderID', '11'),
	('BIO0011323', 'ReservOrderID', '4'),
	('BIO0056859', 'ReservUpdated', '2008-06-05 00:52:57.375');
/*!40000 ALTER TABLE `tb_baseinfo` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_checkinitem 结构
DROP TABLE IF EXISTS `tb_checkinitem`;
CREATE TABLE IF NOT EXISTS `tb_checkinitem` (
  `CIMID` varchar(32) NOT NULL,
  `CHECKINORDER_CIOID` varchar(32) NOT NULL,
  `ROOM_RMID` varchar(32) NOT NULL,
  `CIMPRCTPRICE` decimal(14,2) NOT NULL,
  `CIMDISCOUNT` decimal(5,2) DEFAULT '100.00',
  `CIMINDATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CIMOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CIMSTATE` varchar(16) NOT NULL,
  PRIMARY KEY (`CIMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_checkinitem 的数据：~12 rows (大约)
/*!40000 ALTER TABLE `tb_checkinitem` DISABLE KEYS */;
REPLACE INTO `tb_checkinitem` (`CIMID`, `CHECKINORDER_CIOID`, `ROOM_RMID`, `CIMPRCTPRICE`, `CIMDISCOUNT`, `CIMINDATETIME`, `CIMOUTDATETIME`, `CIMSTATE`) VALUES
	('297e6d5e5980f9e0015980fca2180002', '297e6d5e5980f9e0015980fca2130001', '8118', 260.00, 100.00, '2017-01-09 10:08:00', '2017-01-10 12:00:00', '已入住'),
	('402881e51a448696011a4489376d0002', '402881e51a448696011a4489373e0001', '8109', 320.00, 100.00, '2008-06-01 21:15:00', '2008-06-02 12:00:00', '已结账'),
	('402881e51a53efae011a53f77fd30002', '402881e51a53efae011a53f77fc40001', '8308', 100.00, 31.25, '2008-06-04 22:24:00', '2008-06-05 12:00:00', '已结账'),
	('402881e51a53efae011a53f77fd30003', '402881e51a53efae011a53f77fc40001', '8209', 250.00, 96.15, '2008-06-04 22:24:00', '2008-06-05 12:00:00', '已结账'),
	('402881e51a579a4b011a57d29eb50004', '402881e51a579a4b011a57d29ea50003', '8208', 320.00, 100.00, '2008-06-05 16:22:00', '2008-06-06 12:00:00', '已入住'),
	('402881e5267907ec01267915e3390005', '402881e5267907ec01267915e32e0004', '8101', 260.00, 100.00, '2010-01-29 15:53:00', '2010-01-30 12:00:00', '已入住'),
	('402881e6254e53a001254e58d94e0002', '402881e6254e53a001254e58d93e0001', '8106', 260.00, 100.00, '2009-12-02 15:43:00', '2009-12-03 12:00:00', '已入住'),
	('402881e6254e53a001254e58d94e0003', '402881e6254e53a001254e58d93e0001', '8107', 0.00, 0.00, '2009-12-02 15:43:00', '2009-12-03 12:00:00', '已入住'),
	('402881e6254e53a001254e5be9230005', '402881e6254e53a001254e5be9230004', '8118', 260.00, 100.00, '2009-12-02 15:46:00', '2009-12-03 12:00:00', '已入住'),
	('402881e6254e53a001254e64b91d0008', '402881e6254e53a001254e64b91d0007', '8106', 260.00, 100.00, '2009-12-02 15:54:00', '2009-12-03 12:00:00', '已入住'),
	('402881e625587aa7012559003f440004', '402881e625587aa7012559003f2d0003', '8104', 260.00, 100.00, '2009-12-04 15:55:00', '2009-12-05 12:00:00', '已结账'),
	('402881e625587aa70125590883f60006', '402881e625587aa70125590883f60005', '8103', 260.00, 100.00, '2009-12-04 15:55:00', '2009-12-05 12:00:00', '已入住'),
	('ff808081012a13dc01012a1aff9b0002', 'ff808081012a13dc01012a1aff7c0001', '8109', 320.00, 100.00, '2005-01-01 01:06:00', '2005-01-02 12:00:00', '已入住');
/*!40000 ALTER TABLE `tb_checkinitem` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_checkinorder 结构
DROP TABLE IF EXISTS `tb_checkinorder`;
CREATE TABLE IF NOT EXISTS `tb_checkinorder` (
  `CIOID` varchar(32) NOT NULL,
  `CIOGUESTNAME` varchar(20) NOT NULL,
  `CIOMANNUMBER` int(10) unsigned NOT NULL,
  `CIOGUESTCATALOG` varchar(16) NOT NULL,
  `CIOGUESTTYPE` varchar(16) NOT NULL,
  `CIOGROUPNAME` varchar(32) DEFAULT NULL,
  `CIOGUESTCARDCATALOG` varchar(16) NOT NULL,
  `CIOGUESTCARDID` varchar(32) NOT NULL,
  `CIOCAUSE` varchar(100) DEFAULT NULL,
  `CIOSTATE` varchar(16) NOT NULL,
  `CIOINDATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CIOPREOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CIOPRCTOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CIOPAYMENTMODEL` varchar(16) NOT NULL,
  `CIOPAIDMONEY` decimal(14,2) NOT NULL,
  `CIOISRESERVID` varchar(32) DEFAULT NULL,
  `CIOOPERATOR` varchar(20) NOT NULL,
  `CIOGUESTGENDER` varchar(6) NOT NULL,
  `CIOTOTALRATE` decimal(14,2) NOT NULL,
  `CIOBEDRATE` decimal(14,2) DEFAULT NULL,
  `CIOORDERID` varchar(32) NOT NULL,
  PRIMARY KEY (`CIOID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_checkinorder 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `tb_checkinorder` DISABLE KEYS */;
REPLACE INTO `tb_checkinorder` (`CIOID`, `CIOGUESTNAME`, `CIOMANNUMBER`, `CIOGUESTCATALOG`, `CIOGUESTTYPE`, `CIOGROUPNAME`, `CIOGUESTCARDCATALOG`, `CIOGUESTCARDID`, `CIOCAUSE`, `CIOSTATE`, `CIOINDATETIME`, `CIOPREOUTDATETIME`, `CIOPRCTOUTDATETIME`, `CIOPAYMENTMODEL`, `CIOPAIDMONEY`, `CIOISRESERVID`, `CIOOPERATOR`, `CIOGUESTGENDER`, `CIOTOTALRATE`, `CIOBEDRATE`, `CIOORDERID`) VALUES
	('297e6d5e5980f9e0015980fca2130001', 'ss', 2, '散客', '普通客人', NULL, '身份证', '2222333333333333', NULL, '已入住', '2017-01-09 10:08:00', '2017-01-10 12:00:00', '2017-01-10 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 260.00, 0.00, 'CIO00000010'),
	('402881e51a448696011a4489373e0001', 'esperamier', 2, '散客', '普通客人', NULL, '身份证', '362422198611160012', NULL, '已结账', '2008-06-01 21:15:00', '2008-06-02 12:00:00', '2008-06-01 22:30:37', '现金', 0.00, NULL, 'FoGhost', '男', 320.00, 0.00, 'CIO00000001'),
	('402881e51a53efae011a53f77fc40001', 'esperamier', 2, '散客', '普通客人', NULL, '身份证', '362422198611160012', NULL, '已结账', '2008-06-04 22:24:00', '2008-06-05 12:00:00', '2008-06-04 22:26:09', '现金', 0.00, NULL, 'FoGhost', '男', 350.00, 0.00, 'CIO00000001'),
	('402881e51a579a4b011a57d29ea50003', 'esperamier', 2, '散客', '普通客人', NULL, '身份证', '362422198611160012', NULL, '已入住', '2008-06-05 16:22:00', '2008-06-06 12:00:00', '2008-06-06 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 320.00, 0.00, 'CIO00000002'),
	('402881e5267907ec01267915e32e0004', '刘明', 2, '散客', '普通客人', NULL, '身份证', '123456789789123', NULL, '已入住', '2010-01-29 15:53:00', '2010-01-30 12:00:00', '2010-01-30 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 260.00, 0.00, 'CIO00000009'),
	('402881e6254e53a001254e58d93e0001', '庞永庆', 2, '散客', '普通客人', NULL, '身份证', '1234567891234567', NULL, '已入住', '2009-12-02 15:43:00', '2009-12-03 12:00:00', '2009-12-03 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 260.00, 0.00, 'CIO00000004'),
	('402881e6254e53a001254e5be9230004', '庞永庆', 2, '散客', '普通客人', NULL, '身份证', '12345678945465151', NULL, '已入住', '2009-12-02 15:46:00', '2009-12-03 12:00:00', '2009-12-03 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 260.00, 0.00, 'CIO00000005'),
	('402881e6254e53a001254e64b91d0007', '庞永庆', 2, '散客', '普通客人', NULL, '身份证', '123456789123456', NULL, '已入住', '2009-12-02 15:54:00', '2009-12-03 12:00:00', '2009-12-03 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 260.00, 0.00, 'CIO00000006'),
	('402881e625587aa7012559003f2d0003', '刘明', 2, '散客', '普通客人', NULL, '身份证', '123456789789456', NULL, '已结账', '2009-12-04 15:55:00', '2009-12-05 12:00:00', '2009-12-06 18:08:47', '现金', 0.00, NULL, 'Admin', '男', 260.00, 0.00, 'CIO00000007'),
	('402881e625587aa70125590883f60005', '刘明', 2, '散客', '普通客人', NULL, '身份证', '123456789789456', NULL, '已入住', '2009-12-04 15:55:00', '2009-12-05 12:00:00', '2009-12-05 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 260.00, 0.00, 'CIO00000008'),
	('ff808081012a13dc01012a1aff7c0001', 'esperamier', 2, '散客', '普通客人', NULL, '身份证', '362422198611160012', NULL, '已入住', '2005-01-01 01:06:00', '2005-01-02 12:00:00', '2005-01-02 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 320.00, 0.00, 'CIO00000003');
/*!40000 ALTER TABLE `tb_checkinorder` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_guest 结构
DROP TABLE IF EXISTS `tb_guest`;
CREATE TABLE IF NOT EXISTS `tb_guest` (
  `GTID` varchar(32) NOT NULL,
  `GTNAME` varchar(20) NOT NULL,
  `GTTYPE` varchar(16) NOT NULL,
  `GTCARDCATALOG` varchar(16) NOT NULL,
  `GTCARDID` varchar(32) NOT NULL,
  `GTCOUNTRY` varchar(32) DEFAULT NULL,
  `GTADDRESS` varchar(100) DEFAULT NULL,
  `GTZIP` varchar(10) DEFAULT NULL,
  `GTCOMPANY` varchar(50) DEFAULT NULL,
  `GTTELPHONE` varchar(16) DEFAULT NULL,
  `GTMOBILE` varchar(16) DEFAULT NULL,
  `GTGENDER` varchar(4) NOT NULL,
  `GTEMAIL` varchar(32) DEFAULT NULL,
  `GTCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`GTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_guest 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `tb_guest` DISABLE KEYS */;
REPLACE INTO `tb_guest` (`GTID`, `GTNAME`, `GTTYPE`, `GTCARDCATALOG`, `GTCARDID`, `GTCOUNTRY`, `GTADDRESS`, `GTZIP`, `GTCOMPANY`, `GTTELPHONE`, `GTMOBILE`, `GTGENDER`, `GTEMAIL`, `GTCREATETIME`) VALUES
	('297e6d5e598105f50159812b15860001', '', '普通客人', '身份证', '', '', '', '', '', '', '', '男', '', '2017-01-09 11:00:01'),
	('297e6d5e598105f50159812b80b00002', '张大妈', '贵宾', '身份证', '1234567891234156', '', '', '', '', '', '', '女', '', '2017-01-09 11:00:28'),
	('402881e6254e53a001254e63196c0006', '庞小庆', '普通客人', '身份证', '123456789123456', '中国', '', '', '', '', '', '男', '', '2009-12-02 15:55:35'),
	('402881e625587aa7012558e59ffa0001', '刘明', '普通客人', '身份证', '123456789789456', '中国', '北京市海淀区上地西里XXX栋X单元XXX室', '100000', '中国石化', '456789123', '13778945612', '男', 'test@qq.com', '2009-12-04 16:54:21'),
	('402881e6256404d20125641b17560001', '李立明', '普通客人', '身份证', '456789123456789', '中国', '中国上海', '', '', '', '', '男', '', '2009-12-06 21:08:34');
/*!40000 ALTER TABLE `tb_guest` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_guesthistory 结构
DROP TABLE IF EXISTS `tb_guesthistory`;
CREATE TABLE IF NOT EXISTS `tb_guesthistory` (
  `GHID` varchar(32) NOT NULL,
  `GHBALANCEMENTID` varchar(32) NOT NULL,
  `GHREMARK` varchar(100) NOT NULL,
  `GHGUESTID` varchar(45) NOT NULL,
  `GHGUESTNAME` varchar(32) NOT NULL,
  PRIMARY KEY (`GHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_guesthistory 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `tb_guesthistory` DISABLE KEYS */;
REPLACE INTO `tb_guesthistory` (`GHID`, `GHBALANCEMENTID`, `GHREMARK`, `GHGUESTID`, `GHGUESTNAME`) VALUES
	('402881e51a448696011a4489790a0004', '402881e51a448696011a4489783f0003', '<div align="center">1.<b>remark test for edit controll</b><br></div>', '402881e51a39c232011a39da4d3e0005', 'esperamier'),
	('402881e51a53efae011a53f874e20005', '402881e51a53efae011a53f874550004', 'fdsafdsa', '402881e51a39c232011a39da4d3e0005', 'esperamier'),
	('402881e625636b70012563767f580002', '402881e625636b70012563767c6c0001', '', '402881e625587aa7012558e59ffa0001', '刘明');
/*!40000 ALTER TABLE `tb_guesthistory` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_operator 结构
DROP TABLE IF EXISTS `tb_operator`;
CREATE TABLE IF NOT EXISTS `tb_operator` (
  `OPUSERNAME` varchar(20) NOT NULL,
  `OPPASSWORD` varchar(32) NOT NULL,
  `OPPRIVILEGE` int(10) unsigned NOT NULL,
  `OPADDRESS` varchar(100) DEFAULT NULL,
  `OPNAME` varchar(20) NOT NULL,
  `OPTELEPHONE` varchar(16) DEFAULT NULL,
  `OPMOBILE` varchar(16) DEFAULT NULL,
  `OPZIP` varchar(10) DEFAULT NULL,
  `OPCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`OPUSERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_operator 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `tb_operator` DISABLE KEYS */;
REPLACE INTO `tb_operator` (`OPUSERNAME`, `OPPASSWORD`, `OPPRIVILEGE`, `OPADDRESS`, `OPNAME`, `OPTELEPHONE`, `OPMOBILE`, `OPZIP`, `OPCREATETIME`) VALUES
	('admin', 'admin', 255, NULL, 'NeoStudio', NULL, NULL, NULL, '2008-05-05 16:32:22'),
	('fankai', '666', 0, '', '', '0', '0', '0', '2017-01-09 11:06:25'),
	('FoGhost', '330022', 0, NULL, 'Liang', NULL, NULL, NULL, '2008-04-20 16:32:22'),
	('user', '', 0, '', '', '0', '0', '0', '2010-01-29 15:52:59');
/*!40000 ALTER TABLE `tb_operator` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_reservitem 结构
DROP TABLE IF EXISTS `tb_reservitem`;
CREATE TABLE IF NOT EXISTS `tb_reservitem` (
  `RIMID` varchar(32) NOT NULL,
  `RESERVORDER_ROID` varchar(32) NOT NULL,
  `ROOM_RMID` varchar(32) NOT NULL,
  `RIMINDATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `RIMOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `RIMSTATE` varchar(16) NOT NULL,
  PRIMARY KEY (`RIMID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_reservitem 的数据：~17 rows (大约)
/*!40000 ALTER TABLE `tb_reservitem` DISABLE KEYS */;
REPLACE INTO `tb_reservitem` (`RIMID`, `RESERVORDER_ROID`, `ROOM_RMID`, `RIMINDATETIME`, `RIMOUTDATETIME`, `RIMSTATE`) VALUES
	('297e12bf1a1f79b8011a1f7fd52c0002', '297e12bf1a1f79b8011a1f7fd4bf0001', '8106', '2008-05-25 12:00:00', '2008-05-26 12:00:00', '预定中'),
	('402881e41a1396da011a13aa651a0008', '402881e41a1396da011a13aa651a0007', '8109', '2008-05-23 12:00:00', '2008-05-24 12:00:00', '预定中'),
	('402881e51a570114011a570b85d50002', '402881e51a570114011a570b85390001', '8118', '2008-06-05 12:00:00', '2008-06-06 12:00:00', '预定中'),
	('402881e51a579a4b011a57eb1ac60006', '402881e51a579a4b011a57eb1ac60005', '8308', '2008-06-05 12:00:00', '2008-06-06 12:00:00', '已确认'),
	('402881e51a5958a3011a5977e94b0003', '402881e51a5958a3011a5977e94b0002', '8109', '2008-06-06 12:00:00', '2008-06-07 12:00:00', '预定中'),
	('402881e61a0a09e2011a0a618c43000c', '402881e61a0a09e2011a0a618c43000b', '8308', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中'),
	('402881e61a0a09e2011a0a62c494000e', '402881e61a0a09e2011a0a62c494000d', '8106', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中'),
	('402881e61a0a09e2011a0a63647d0010', '402881e61a0a09e2011a0a63647d000f', '8109', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中'),
	('402881e61a0a09e2011a0a677c670012', '402881e61a0a09e2011a0a677c670011', '8118', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中'),
	('402881e61a0a09e2011a0a692e9b0014', '402881e61a0a09e2011a0a692e9b0013', '8208', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中'),
	('402881e61a15d2a9011a15d668270002', '402881e41a1396da011a13aa651a0007', '8109', '2008-05-23 12:00:00', '2008-05-24 12:00:00', '预定中'),
	('402881e61a15d2a9011a15d668a40003', '402881e41a1396da011a13aa651a0007', '8106', '2008-05-23 12:00:00', '2008-05-24 12:00:00', '预定中'),
	('402881e61a18cda0011a18dbaf510009', '402881e61a18cda0011a18dbaf510008', '8109', '2008-05-24 12:00:00', '2008-05-25 12:00:00', '预定中'),
	('402881e61a18cda0011a18e75919000b', '402881e61a18ca48011a18cb73bd0001', '8106', '2008-05-24 12:00:00', '2008-05-25 12:00:00', '预定中'),
	('402881e6254e53a001254e6c32670010', '402881e6254e53a001254e69c1440009', '8109', '2009-12-02 12:00:00', '2009-12-03 12:00:00', '已光临'),
	('402881e6254e53a001254e6c32670011', '402881e6254e53a001254e69c1440009', '8208', '2009-12-02 12:00:00', '2009-12-03 12:00:00', '已光临'),
	('402881e6254e53a001254e6c32670012', '402881e6254e53a001254e69c1440009', '8209', '2009-12-02 12:00:00', '2009-12-03 12:00:00', '已光临');
/*!40000 ALTER TABLE `tb_reservitem` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_reservorder 结构
DROP TABLE IF EXISTS `tb_reservorder`;
CREATE TABLE IF NOT EXISTS `tb_reservorder` (
  `ROID` varchar(32) NOT NULL,
  `ROGROUPNAME` varchar(50) DEFAULT NULL,
  `ROGUESTNAME` varchar(20) NOT NULL,
  `ROTELPHONE` varchar(16) NOT NULL,
  `ROEMAIL` varchar(45) DEFAULT NULL,
  `ROINDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ROEARLIESTTIME` time DEFAULT NULL,
  `ROLATESTTIME` time DEFAULT NULL,
  `ROPREOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `RORESERVMODEL` varchar(16) NOT NULL,
  `ROPAYMENTMODEL` varchar(16) NOT NULL,
  `ROPAIDMONEY` decimal(14,2) NOT NULL,
  `ROREMARK` varchar(200) DEFAULT NULL,
  `ROPREASSIGNROOM` varchar(32) DEFAULT NULL,
  `RORESERVSTATE` varchar(16) NOT NULL,
  `ROOPERATOR` varchar(32) NOT NULL,
  `ROCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ROFAX` varchar(16) DEFAULT NULL,
  `ROGUESTGENDER` varchar(6) NOT NULL,
  `ROGUESTCARDCATALOG` varchar(16) DEFAULT NULL,
  `ROGUESTCARDID` varchar(32) DEFAULT NULL,
  `ROTOTALRATE` decimal(14,2) NOT NULL,
  `ROORDERID` varchar(32) NOT NULL,
  PRIMARY KEY (`ROID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_reservorder 的数据：~13 rows (大约)
/*!40000 ALTER TABLE `tb_reservorder` DISABLE KEYS */;
REPLACE INTO `tb_reservorder` (`ROID`, `ROGROUPNAME`, `ROGUESTNAME`, `ROTELPHONE`, `ROEMAIL`, `ROINDATETIME`, `ROEARLIESTTIME`, `ROLATESTTIME`, `ROPREOUTDATETIME`, `RORESERVMODEL`, `ROPAYMENTMODEL`, `ROPAIDMONEY`, `ROREMARK`, `ROPREASSIGNROOM`, `RORESERVSTATE`, `ROOPERATOR`, `ROCREATETIME`, `ROFAX`, `ROGUESTGENDER`, `ROGUESTCARDCATALOG`, `ROGUESTCARDID`, `ROTOTALRATE`, `ROORDERID`) VALUES
	('297e12bf1a1f79b8011a1f7fd4bf0001', '', 'dfa', 'sfdsfd', '', '2008-05-25 12:00:00', '12:00:00', '12:00:00', '2008-05-26 12:00:00', '电话预定', '现金', 0.00, '', '', '预定中', 'admin', '2008-05-25 17:54:08', '', '男', '身份证', '', 0.00, ''),
	('402881e41a1396da011a13aa651a0007', NULL, 'fsfds', 'fsdfds', '', '2008-05-23 12:00:00', '12:00:00', '12:00:00', '2008-05-24 12:00:00', '电话预定', '现金', 0.00, '', NULL, '预定中', 'admin', '2008-05-23 10:45:11', '', '男', '身份证', '412728168690466030', 0.00, ''),
	('402881e51a570114011a570b85390001', '', 'esperamier', '123456789231', 'dddddd@domain.com', '2008-06-05 12:00:00', '01:15:00', '01:15:00', '2008-06-06 12:00:00', '电话预定', '现金', 200.00, '', '', '预定中', 'admin', '2008-06-05 12:45:50', '', '男', '身份证', '362422198611160012', 300.00, ''),
	('402881e51a579a4b011a57eb1ac60005', '', 'esperamier', 'esperamier', 'kof@yahoo.com.cn', '2008-06-05 12:00:00', '01:00:00', '01:00:00', '2008-06-06 12:00:00', '领导安排', '支付卡', 0.00, '', '', '已确认', 'admin', '2008-06-05 16:50:02', '432432432432', '男', '身份证', '362422198611160012', 1000.00, ''),
	('402881e51a5958a3011a5977e94b0002', '', 'ref', 'dffd', '', '2008-06-06 12:00:00', '12:00:00', '12:00:00', '2008-06-07 12:00:00', '电话预定', '现金', 0.00, '', '', '预定中', 'Admin', '2008-06-06 00:03:27', '', '男', '身份证', '', 0.00, 'RO00000002'),
	('402881e61a0a09e2011a0a618c43000b', NULL, 'DFS', 'FDS', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', 0.00, '', NULL, '预定中', 'admin', '2008-05-21 15:29:02', '', '男', '身份证', '', 0.00, ''),
	('402881e61a0a09e2011a0a62c494000d', NULL, 'dfs', 'fds', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', 0.00, '', NULL, '预定中', 'admin', '2008-05-21 15:30:22', '', '男', '身份证', '', 0.00, ''),
	('402881e61a0a09e2011a0a63647d000f', NULL, 'fd', 'fd', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', 0.00, '', NULL, '预定中', 'admin', '2008-05-21 15:31:03', '', '男', '身份证', '', 0.00, ''),
	('402881e61a0a09e2011a0a677c670011', NULL, 'dfs', 'fdsf', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', 0.00, '', NULL, '预定中', 'admin', '2008-05-21 15:35:31', '', '男', '身份证', '', 0.00, ''),
	('402881e61a0a09e2011a0a692e9b0013', NULL, 'dsadad', 'sds', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', 0.00, '', NULL, '预定中', 'admin', '2008-05-21 15:37:22', '', '男', '身份证', '', 0.00, ''),
	('402881e61a18ca48011a18cb73bd0001', '', 'fsf', 'fsfd', '', '2008-05-24 12:00:00', '12:00:00', '12:00:00', '2008-05-25 12:00:00', '电话预定', '现金', 0.00, '', '', '预定中', 'admin', '2008-05-24 10:39:24', 'sdfsafd@', '男', '身份证', '', 0.00, ''),
	('402881e61a18cda0011a18dbaf510008', '', 'fsf', 'fdsfsf', '', '2008-05-24 12:00:00', '12:00:00', '12:00:00', '2008-05-25 12:00:00', '电话预定', '现金', 0.00, '', '', '预定中', 'admin', '2008-05-24 10:57:07', '', '男', '身份证', '', 0.00, ''),
	('402881e6254e53a001254e69c1440009', '', 'ddddddd', '020-26568911-15', 'dddd@yahoo.com.cn', '2009-12-02 12:00:00', '01:00:00', '08:30:00', '2009-12-03 12:00:00', '电话预定', '现金', 0.00, '', '', '已光临', 'Admin', '2009-12-02 16:02:51', '', '男', '身份证', '123456789123456', 0.00, 'RO00000001');
/*!40000 ALTER TABLE `tb_reservorder` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_room 结构
DROP TABLE IF EXISTS `tb_room`;
CREATE TABLE IF NOT EXISTS `tb_room` (
  `RMID` varchar(12) NOT NULL,
  `RMAREA` varchar(10) DEFAULT NULL,
  `RMFLOOR` varchar(10) NOT NULL,
  `RMPRCTPRICE` decimal(14,2) NOT NULL,
  `RMTELPHONE` varchar(24) DEFAULT NULL,
  `RMSTATE` tinyint(3) unsigned NOT NULL,
  `RMAVAILABLE` tinyint(1) NOT NULL,
  `RMCATALOG` varchar(32) NOT NULL,
  `RMPICTURE` varchar(100) NOT NULL,
  `RMPRCTDISCOUNT` decimal(14,2) NOT NULL DEFAULT '100.00',
  PRIMARY KEY (`RMID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_room 的数据：~13 rows (大约)
/*!40000 ALTER TABLE `tb_room` DISABLE KEYS */;
REPLACE INTO `tb_room` (`RMID`, `RMAREA`, `RMFLOOR`, `RMPRCTPRICE`, `RMTELPHONE`, `RMSTATE`, `RMAVAILABLE`, `RMCATALOG`, `RMPICTURE`, `RMPRCTDISCOUNT`) VALUES
	('10000', '0', '0', 0.00, '0', 0, 1, '标准间', 'public/images/rooms/standardroom.gif', 0.00),
	('100111', '0', '0', 0.00, '0', 0, 1, '标准间', 'public/images/rooms/standardroom.gif', 0.00),
	('8101', '8', '1', 260.00, '101', 0, 1, '标准间', 'public/images/rooms/standardroom.gif', 100.00),
	('8102', '8', '1', 260.00, '100', 0, 1, '标准间', 'public/images/rooms/standardroom.gif', 100.00),
	('8103', '8', '1', 260.00, '103', 2, 1, '标准间', 'public/images/rooms/standardroom.gif', 100.00),
	('8104', '8', '1', 260.00, '104', 0, 1, '标准间', 'public/images/rooms/standardroom.gif', 100.00),
	('8106', '8', '1', 268.00, '123', 2, 1, '单人间', 'public/images/rooms/single.gif', 100.00),
	('8109', '8', '1', 320.00, '126', 0, 1, '标准间', 'public/images/rooms/standardroom.gif', 100.00),
	('8118', '8', '1', 260.00, '127', 2, 1, '单人间', 'public/images/rooms/single.gif', 100.00),
	('8208', '8', '2', 320.00, '128', 0, 1, '标准间', 'public/images/rooms/standardroom.gif', 100.00),
	('8209', '8', '2', 260.00, '129', 0, 1, '单人间', 'public/images/rooms/single.gif', 100.00),
	('8308', '8', '3', 320.00, '130', 0, 1, '标准间', 'public/images/rooms/standardroom.gif', 100.00),
	('9101', '9', '1', 300.00, '9101', 0, 1, '超级豪华间', 'public/images/rooms/single.gif', 100.00);
/*!40000 ALTER TABLE `tb_room` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_roomcatalog 结构
DROP TABLE IF EXISTS `tb_roomcatalog`;
CREATE TABLE IF NOT EXISTS `tb_roomcatalog` (
  `RCID` varchar(32) NOT NULL,
  `RCNAME` varchar(12) NOT NULL,
  `RCBEDNUMBER` int(10) unsigned NOT NULL,
  `RCPREPRICE` decimal(14,2) NOT NULL,
  `RCPREDISCOUNT` decimal(14,2) DEFAULT '100.00',
  `RCHOURBASEPRICE` decimal(14,2) DEFAULT NULL,
  `RCPERHOURPRICE` decimal(14,2) DEFAULT NULL,
  PRIMARY KEY (`RCID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_roomcatalog 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `tb_roomcatalog` DISABLE KEYS */;
REPLACE INTO `tb_roomcatalog` (`RCID`, `RCNAME`, `RCBEDNUMBER`, `RCPREPRICE`, `RCPREDISCOUNT`, `RCHOURBASEPRICE`, `RCPERHOURPRICE`) VALUES
	('402881e51a5472f8011a547548440001', '单人间', 1, 200.00, 20.00, 50.00, 50.00),
	('402881e5267907ec0126790f5ec40003', '总统套房', 3, 50000.00, 300.00, 3000.00, 300.00),
	('402881e6255344820125538694350001', '豪华间', 2, 360.00, 0.00, 200.00, 100.00),
	('402881e625576bea0125578a63ba0002', '超级豪华间', 3, 2000.00, 100.00, 200.00, 200.00),
	('RC889', '标准间', 2, 260.00, 100.00, 150.00, 40.00);
/*!40000 ALTER TABLE `tb_roomcatalog` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
