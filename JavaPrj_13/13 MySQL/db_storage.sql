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

-- 导出 db_storage 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_storage` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_storage`;


-- 导出  表 db_storage.actionmaster 结构
CREATE TABLE IF NOT EXISTS `actionmaster` (
  `action_id` varchar(20) NOT NULL,
  `action_desc` varchar(45) NOT NULL,
  `action_group` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.actionmaster 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `actionmaster` DISABLE KEYS */;
REPLACE INTO `actionmaster` (`action_id`, `action_desc`, `action_group`) VALUES
	('1', '11', '');
/*!40000 ALTER TABLE `actionmaster` ENABLE KEYS */;


-- 导出  表 db_storage.classcode 结构
CREATE TABLE IF NOT EXISTS `classcode` (
  `prod_id` varchar(10) NOT NULL,
  `prod_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.classcode 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `classcode` DISABLE KEYS */;
REPLACE INTO `classcode` (`prod_id`, `prod_desc`) VALUES
	('0124', '台式机'),
	('0125', '笔记本电脑'),
	('0126', '一体机'),
	('0127', 'iPAD');
/*!40000 ALTER TABLE `classcode` ENABLE KEYS */;


-- 导出  表 db_storage.currency 结构
CREATE TABLE IF NOT EXISTS `currency` (
  `cur_id` varchar(10) NOT NULL,
  `cur_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.currency 的数据：~15 rows (大约)
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
REPLACE INTO `currency` (`cur_id`, `cur_desc`) VALUES
	('AUD', '澳大利亚元'),
	('CNY', '人民币元'),
	('DEM', '马克'),
	('GBP', '英镑'),
	('HKD', '港元'),
	('INR', '卢比'),
	('JPY', '日圆 '),
	('KPW', '朝鲜圆'),
	('LAK', '基普'),
	('MOP', '澳门元'),
	('MYR', '马元 '),
	('THP', '泰铢'),
	('VND', '越南盾'),
	('yuan', '人民'),
	('YYY', '冥币');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;


-- 导出  表 db_storage.currencyrate 结构
CREATE TABLE IF NOT EXISTS `currencyrate` (
  `cur_id` varchar(10) NOT NULL,
  `cur_id1` varchar(10) NOT NULL,
  `Mouth1` smallint(6) NOT NULL,
  `Cur_rate` double NOT NULL,
  PRIMARY KEY (`cur_id`,`cur_id1`,`Mouth1`,`Cur_rate`),
  KEY `FK3BF8CC7178BBFD9` (`cur_id`),
  KEY `FK3BF8CC719B192056` (`cur_id1`),
  CONSTRAINT `FK3BF8CC7178BBFD9` FOREIGN KEY (`cur_id`) REFERENCES `currency` (`cur_id`),
  CONSTRAINT `FK3BF8CC719B192056` FOREIGN KEY (`cur_id1`) REFERENCES `currency` (`cur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.currencyrate 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `currencyrate` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencyrate` ENABLE KEYS */;


-- 导出  表 db_storage.eceipt 结构
CREATE TABLE IF NOT EXISTS `eceipt` (
  `Key_id` int(11) NOT NULL,
  `Item_id` varchar(10) NOT NULL,
  `Loca_id` varchar(10) NOT NULL COMMENT '浠?浣?',
  `Ware_id` varchar(10) NOT NULL,
  `Reas_code` varchar(10) NOT NULL COMMENT '??ュ????????',
  `Re_type` varchar(1) NOT NULL COMMENT '??ュ??绫诲??',
  `Qty` double NOT NULL COMMENT '??ュ????伴??',
  `Bill_no` varchar(20) NOT NULL,
  `Actual_Qty` double NOT NULL,
  `AdJu_amt` double NOT NULL COMMENT '搴?瀛?璋???撮??棰?',
  `Trans_date` datetime DEFAULT NULL,
  PRIMARY KEY (`Key_id`),
  KEY `FKB1FC0F46BB2534FC` (`Loca_id`),
  KEY `FKB1FC0F46EC2CA92E` (`Item_id`),
  KEY `FKB1FC0F46BB541A13` (`Reas_code`),
  KEY `FKB1FC0F464B87AE52` (`Ware_id`),
  CONSTRAINT `FKB1FC0F464B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  CONSTRAINT `FKB1FC0F46BB2534FC` FOREIGN KEY (`Loca_id`) REFERENCES `location` (`Loca_id`),
  CONSTRAINT `FKB1FC0F46BB541A13` FOREIGN KEY (`Reas_code`) REFERENCES `stockreason` (`Rea_code`),
  CONSTRAINT `FKB1FC0F46EC2CA92E` FOREIGN KEY (`Item_id`) REFERENCES `itemgeneral` (`Item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.eceipt 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `eceipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `eceipt` ENABLE KEYS */;


-- 导出  表 db_storage.eceipt_bill 结构
CREATE TABLE IF NOT EXISTS `eceipt_bill` (
  `bill_no` varchar(20) NOT NULL,
  `create_emp` varchar(10) NOT NULL COMMENT '??跺??浜?',
  `handle_emp` varchar(10) DEFAULT NULL COMMENT '缁????浜?',
  `bill_desc` varchar(200) DEFAULT NULL COMMENT '???瑕?',
  `createDate` datetime NOT NULL COMMENT '??跺????堕??',
  `lastHandleDate` datetime DEFAULT NULL COMMENT '??????澶??????堕??',
  `SourceCompany` varchar(45) NOT NULL COMMENT '寰???ュ??浣?',
  `cert_no` varchar(20) NOT NULL COMMENT '???绁ㄥ??',
  `status` varchar(1) NOT NULL COMMENT '??舵??',
  PRIMARY KEY (`bill_no`),
  KEY `FK41116960CE6E6A01` (`create_emp`),
  KEY `FK41116960F348C12D` (`handle_emp`),
  CONSTRAINT `FK41116960CE6E6A01` FOREIGN KEY (`create_emp`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `FK41116960F348C12D` FOREIGN KEY (`handle_emp`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.eceipt_bill 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `eceipt_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `eceipt_bill` ENABLE KEYS */;


-- 导出  表 db_storage.employee 结构
CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` varchar(10) NOT NULL,
  `emp_desc` varchar(45) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `folk` varchar(45) DEFAULT NULL COMMENT '姘????',
  `marri` varchar(45) DEFAULT NULL COMMENT '濠?濮?',
  `family` varchar(45) DEFAULT NULL COMMENT '瀛?濂?',
  `collage` varchar(45) DEFAULT NULL,
  `speci` varchar(45) DEFAULT NULL COMMENT '涓?涓?',
  `wage` bigint(20) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.employee 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
REPLACE INTO `employee` (`emp_id`, `emp_desc`, `birth`, `password`, `folk`, `marri`, `family`, `collage`, `speci`, `wage`) VALUES
	('1', '刘大伟', NULL, '111', NULL, NULL, NULL, NULL, NULL, 10000),
	('2', '小贾', NULL, '111', NULL, NULL, NULL, NULL, NULL, 10000),
	('3', '111', '2017-01-17 00:00:00', 'flyfeeling', '1', '2', '1', '3', '3', 10000000),
	('4', '111', '2017-02-08 00:00:00', 'flyfeeling', '1', '2', '1', '3', '3', 3);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;


-- 导出  表 db_storage.employeerole 结构
CREATE TABLE IF NOT EXISTS `employeerole` (
  `employeeRole_id` int(11) NOT NULL,
  `employee_id` varchar(10) NOT NULL,
  `role_id` varchar(10) NOT NULL,
  PRIMARY KEY (`employeeRole_id`),
  KEY `FK99096024491CBCAA` (`role_id`),
  KEY `FK99096024B348D348` (`employee_id`),
  CONSTRAINT `FK99096024491CBCAA` FOREIGN KEY (`role_id`) REFERENCES `rolemaster` (`role_id`),
  CONSTRAINT `FK99096024B348D348` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.employeerole 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `employeerole` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeerole` ENABLE KEYS */;


-- 导出  表 db_storage.inventorytag 结构
CREATE TABLE IF NOT EXISTS `inventorytag` (
  `Lable` int(11) NOT NULL,
  `Warehouse` varchar(10) NOT NULL,
  `Audi_man` varchar(10) DEFAULT NULL,
  `Fr_loca` varchar(10) NOT NULL,
  `Fr_Item` varchar(10) NOT NULL,
  `Inc_zero` varchar(1) NOT NULL,
  `Inc_nega` varchar(1) NOT NULL,
  PRIMARY KEY (`Lable`),
  KEY `FK99F8D8BEB6F11AD0` (`Audi_man`),
  KEY `FK99F8D8BE82AB38B7` (`Fr_loca`),
  KEY `FK99F8D8BE49BA360D` (`Fr_Item`),
  KEY `FK99F8D8BE917576F8` (`Warehouse`),
  CONSTRAINT `FK99F8D8BE49BA360D` FOREIGN KEY (`Fr_Item`) REFERENCES `itemgeneral` (`Item_id`),
  CONSTRAINT `FK99F8D8BE82AB38B7` FOREIGN KEY (`Fr_loca`) REFERENCES `location` (`Loca_id`),
  CONSTRAINT `FK99F8D8BE917576F8` FOREIGN KEY (`Warehouse`) REFERENCES `warehouse` (`Ware_id`),
  CONSTRAINT `FK99F8D8BEB6F11AD0` FOREIGN KEY (`Audi_man`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.inventorytag 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `inventorytag` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventorytag` ENABLE KEYS */;


-- 导出  表 db_storage.itemgeneral 结构
CREATE TABLE IF NOT EXISTS `itemgeneral` (
  `Item_id` varchar(10) NOT NULL,
  `Sale_Emp_id` varchar(10) DEFAULT NULL COMMENT '?????????',
  `PO_Emp_id` varchar(10) DEFAULT NULL COMMENT '???璐????',
  `Um_id` varchar(10) NOT NULL COMMENT '璁￠?????浣?',
  `Prod_code` varchar(10) NOT NULL COMMENT '???绫?',
  `Item_desc` varchar(45) DEFAULT NULL,
  `Color` varchar(20) DEFAULT NULL,
  `Tax_rate` bigint(20) NOT NULL COMMENT '0.0',
  `Sale_Pic` double DEFAULT NULL COMMENT '0.0',
  `Whol_Pic` double DEFAULT NULL COMMENT '0.0',
  `Status` varchar(1) NOT NULL,
  PRIMARY KEY (`Item_id`),
  KEY `FK782D8275B95DC52E` (`PO_Emp_id`),
  KEY `FK782D8275CC1071E6` (`Sale_Emp_id`),
  KEY `FK782D8275FBCBAB6A` (`Um_id`),
  KEY `FK782D82753F221EAC` (`Prod_code`),
  CONSTRAINT `FK782D82753F221EAC` FOREIGN KEY (`Prod_code`) REFERENCES `classcode` (`prod_id`),
  CONSTRAINT `FK782D8275B95DC52E` FOREIGN KEY (`PO_Emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `FK782D8275CC1071E6` FOREIGN KEY (`Sale_Emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `FK782D8275FBCBAB6A` FOREIGN KEY (`Um_id`) REFERENCES `ummaster` (`um_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.itemgeneral 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `itemgeneral` DISABLE KEYS */;
REPLACE INTO `itemgeneral` (`Item_id`, `Sale_Emp_id`, `PO_Emp_id`, `Um_id`, `Prod_code`, `Item_desc`, `Color`, `Tax_rate`, `Sale_Pic`, `Whol_Pic`, `Status`) VALUES
	('BH123', '1', '1', '0100', '0125', '联想笔记本电脑', '白色', 18, 4800, 4800000, '0'),
	('LH121', '1', '1', '0100', '0125', '惠普笔记本电脑', '黑色', 18, 3900, 3900000, '1'),
	('NB198', '1', '1', '0100', '0125', '华硕笔记本电脑', '白色', 18, 3500, 3500000, '1');
/*!40000 ALTER TABLE `itemgeneral` ENABLE KEYS */;


-- 导出  表 db_storage.itemlocation 结构
CREATE TABLE IF NOT EXISTS `itemlocation` (
  `Ware_id` varchar(10) NOT NULL,
  `Item_id` varchar(10) NOT NULL,
  `Loca_id` varchar(10) NOT NULL,
  `Rank` int(11) NOT NULL,
  `Loca_qty` double NOT NULL,
  PRIMARY KEY (`Ware_id`,`Item_id`,`Loca_id`,`Rank`,`Loca_qty`),
  KEY `FK92EA57C8BB2534FC` (`Loca_id`),
  KEY `FK92EA57C84B87AE52` (`Ware_id`),
  CONSTRAINT `FK92EA57C84B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  CONSTRAINT `FK92EA57C8BB2534FC` FOREIGN KEY (`Loca_id`) REFERENCES `location` (`Loca_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.itemlocation 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `itemlocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemlocation` ENABLE KEYS */;


-- 导出  表 db_storage.iusse 结构
CREATE TABLE IF NOT EXISTS `iusse` (
  `Key_id` int(11) NOT NULL,
  `Item_id` varchar(10) NOT NULL,
  `Loca_id` varchar(10) NOT NULL,
  `Ware_id` varchar(10) NOT NULL,
  `Reas_code` varchar(10) NOT NULL,
  `Is_type` varchar(1) NOT NULL,
  `Qty` double NOT NULL COMMENT '??哄????伴??',
  `Actual_Qty` double NOT NULL,
  `AdJu_amt` double NOT NULL,
  `Trans_date` datetime DEFAULT NULL COMMENT '澶??????堕??',
  `Bill_no` varchar(20) NOT NULL,
  PRIMARY KEY (`Key_id`),
  KEY `FK5FE9159BB2534FC` (`Loca_id`),
  KEY `FK5FE9159EC2CA92E` (`Item_id`),
  KEY `FK5FE9159BB541A13` (`Reas_code`),
  KEY `FK5FE91594B87AE52` (`Ware_id`),
  CONSTRAINT `FK5FE91594B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  CONSTRAINT `FK5FE9159BB2534FC` FOREIGN KEY (`Loca_id`) REFERENCES `location` (`Loca_id`),
  CONSTRAINT `FK5FE9159BB541A13` FOREIGN KEY (`Reas_code`) REFERENCES `stockreason` (`Rea_code`),
  CONSTRAINT `FK5FE9159EC2CA92E` FOREIGN KEY (`Item_id`) REFERENCES `itemgeneral` (`Item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.iusse 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `iusse` DISABLE KEYS */;
/*!40000 ALTER TABLE `iusse` ENABLE KEYS */;


-- 导出  表 db_storage.iusse_bill 结构
CREATE TABLE IF NOT EXISTS `iusse_bill` (
  `bill_no` varchar(20) NOT NULL,
  `create_emp` varchar(10) NOT NULL COMMENT '??跺??浜?',
  `handle_emp` varchar(10) DEFAULT NULL COMMENT '缁????浜?',
  `bill_desc` varchar(200) DEFAULT NULL,
  `createDate` datetime NOT NULL,
  `lastHandleDate` datetime DEFAULT NULL,
  `DestCompany` varchar(45) NOT NULL,
  `cert_no` varchar(20) NOT NULL COMMENT '???绁ㄥ??',
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`bill_no`),
  KEY `FK14BC3B2DCE6E6A01` (`create_emp`),
  KEY `FK14BC3B2DF348C12D` (`handle_emp`),
  CONSTRAINT `FK14BC3B2DCE6E6A01` FOREIGN KEY (`create_emp`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `FK14BC3B2DF348C12D` FOREIGN KEY (`handle_emp`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.iusse_bill 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `iusse_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `iusse_bill` ENABLE KEYS */;


-- 导出  表 db_storage.location 结构
CREATE TABLE IF NOT EXISTS `location` (
  `Loca_id` varchar(10) NOT NULL,
  `Loca_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Loca_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.location 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
REPLACE INTO `location` (`Loca_id`, `Loca_desc`) VALUES
	('FH0123512', '北京-西直门站-3H'),
	('FH0123513', '北京-西直门站-4H'),
	('FH0123514', '北京-东直门站-5D'),
	('FH0123515', '北京-东直门站-5H'),
	('FH0123516', '北京-上地站-1A'),
	('FH0123517', '北京-上地站-3F'),
	('FH0123518', '北京-上地站-6B');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;


-- 导出  表 db_storage.physicsdata 结构
CREATE TABLE IF NOT EXISTS `physicsdata` (
  `Key_id` int(11) NOT NULL,
  `Item_id` varchar(10) NOT NULL,
  `Loca_id` varchar(10) NOT NULL,
  `Ware_id` varchar(10) NOT NULL,
  `Statue` varchar(1) NOT NULL,
  `Cutoff` double NOT NULL COMMENT '?????虫?伴??',
  `Act_qty` double NOT NULL COMMENT '瀹??????伴??',
  PRIMARY KEY (`Key_id`),
  KEY `FK82455A71BB2534FC` (`Loca_id`),
  KEY `FK82455A71EC2CA92E` (`Item_id`),
  KEY `FK82455A714B87AE52` (`Ware_id`),
  CONSTRAINT `FK82455A714B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  CONSTRAINT `FK82455A71BB2534FC` FOREIGN KEY (`Loca_id`) REFERENCES `location` (`Loca_id`),
  CONSTRAINT `FK82455A71EC2CA92E` FOREIGN KEY (`Item_id`) REFERENCES `itemgeneral` (`Item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.physicsdata 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `physicsdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `physicsdata` ENABLE KEYS */;


-- 导出  表 db_storage.roleaction 结构
CREATE TABLE IF NOT EXISTS `roleaction` (
  `roleActionID` int(11) NOT NULL AUTO_INCREMENT,
  `actionID` varchar(20) NOT NULL,
  `roleID` varchar(10) NOT NULL,
  PRIMARY KEY (`roleActionID`),
  KEY `FK6F644E2CE830AF37` (`actionID`),
  KEY `FK6F644E2CBFE26F37` (`roleID`),
  CONSTRAINT `FK6F644E2CBFE26F37` FOREIGN KEY (`roleID`) REFERENCES `rolemaster` (`role_id`),
  CONSTRAINT `FK6F644E2CE830AF37` FOREIGN KEY (`actionID`) REFERENCES `actionmaster` (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.roleaction 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `roleaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `roleaction` ENABLE KEYS */;


-- 导出  表 db_storage.rolemaster 结构
CREATE TABLE IF NOT EXISTS `rolemaster` (
  `role_id` varchar(10) NOT NULL,
  `role_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.rolemaster 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rolemaster` DISABLE KEYS */;
REPLACE INTO `rolemaster` (`role_id`, `role_name`) VALUES
	('1', 'a');
/*!40000 ALTER TABLE `rolemaster` ENABLE KEYS */;


-- 导出  表 db_storage.shipaddr 结构
CREATE TABLE IF NOT EXISTS `shipaddr` (
  `ship_id` varchar(10) NOT NULL,
  `ship_dec` varchar(100) DEFAULT NULL,
  `ship_city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.shipaddr 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `shipaddr` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipaddr` ENABLE KEYS */;


-- 导出  表 db_storage.shipvin 结构
CREATE TABLE IF NOT EXISTS `shipvin` (
  `Shipvia_id` varchar(10) NOT NULL,
  `Shipvia_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`Shipvia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.shipvin 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `shipvin` DISABLE KEYS */;
REPLACE INTO `shipvin` (`Shipvia_id`, `Shipvia_desc`) VALUES
	('011111', '火车车皮'),
	('0111112', '水运'),
	('0111113', '海运'),
	('0111114', '航空运'),
	('0111115', '货车短途');
/*!40000 ALTER TABLE `shipvin` ENABLE KEYS */;


-- 导出  表 db_storage.stockreason 结构
CREATE TABLE IF NOT EXISTS `stockreason` (
  `Rea_code` varchar(10) NOT NULL,
  `Rea_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`Rea_code`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.stockreason 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `stockreason` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockreason` ENABLE KEYS */;


-- 导出  表 db_storage.ummaster 结构
CREATE TABLE IF NOT EXISTS `ummaster` (
  `um_id` varchar(10) NOT NULL,
  `um_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`um_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.ummaster 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `ummaster` DISABLE KEYS */;
REPLACE INTO `ummaster` (`um_id`, `um_desc`) VALUES
	('0100', '台'),
	('0200', '毫米'),
	('0201', '厘米'),
	('0202', '分米'),
	('0203', '米'),
	('0204', '十米'),
	('0205', '百米'),
	('0206', '千米');
/*!40000 ALTER TABLE `ummaster` ENABLE KEYS */;


-- 导出  表 db_storage.vendermaster 结构
CREATE TABLE IF NOT EXISTS `vendermaster` (
  `Vend_id` varchar(10) NOT NULL,
  `Vend_type` varchar(10) DEFAULT NULL,
  `Vend_Shipvia` varchar(10) DEFAULT NULL COMMENT '???璐ч??寰?',
  `Vend_desc` varchar(45) DEFAULT NULL,
  `Vend_addr` varchar(100) DEFAULT NULL,
  `Vend_city` varchar(45) DEFAULT NULL,
  `Vend_nati` varchar(45) DEFAULT NULL,
  `Vend_phone` varchar(20) DEFAULT NULL,
  `Vend_post` varchar(10) DEFAULT NULL,
  `Vend_Email` varchar(30) DEFAULT NULL,
  `TradeAmount` bigint(20) DEFAULT NULL COMMENT '浜ゆ??棰?',
  `Cont_man` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Vend_id`),
  KEY `FK7650F8F476A4FD09` (`Vend_Shipvia`),
  KEY `FK7650F8F4761C2441` (`Vend_type`),
  CONSTRAINT `FK7650F8F4761C2441` FOREIGN KEY (`Vend_type`) REFERENCES `vendtype` (`Vendtype_id`),
  CONSTRAINT `FK7650F8F476A4FD09` FOREIGN KEY (`Vend_Shipvia`) REFERENCES `shipvin` (`Shipvia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.vendermaster 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `vendermaster` DISABLE KEYS */;
REPLACE INTO `vendermaster` (`Vend_id`, `Vend_type`, `Vend_Shipvia`, `Vend_desc`, `Vend_addr`, `Vend_city`, `Vend_nati`, `Vend_phone`, `Vend_post`, `Vend_Email`, `TradeAmount`, `Cont_man`) VALUES
	('1', '0101', '0111112', '1', '', '', '', '', '', '', 0, ''),
	('111', '0100', '0111114', '111111', '', '美国', '', '', '', '', 0, ''),
	('1111', '0101', '011111', '111111111', '美国', '', '', '', '', '', 1000, '');
/*!40000 ALTER TABLE `vendermaster` ENABLE KEYS */;


-- 导出  表 db_storage.vendtype 结构
CREATE TABLE IF NOT EXISTS `vendtype` (
  `Vendtype_id` varchar(10) NOT NULL,
  `Vendtype_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Vendtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.vendtype 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `vendtype` DISABLE KEYS */;
REPLACE INTO `vendtype` (`Vendtype_id`, `Vendtype_desc`) VALUES
	('0100', '厂家直销'),
	('0101', '授权分销'),
	('0102', '独立分销'),
	('0103', '内部定制');
/*!40000 ALTER TABLE `vendtype` ENABLE KEYS */;


-- 导出  表 db_storage.warehouse 结构
CREATE TABLE IF NOT EXISTS `warehouse` (
  `Ware_id` varchar(10) NOT NULL,
  `Ware_desc` varchar(45) DEFAULT NULL,
  `Ware_adrr` varchar(130) DEFAULT NULL,
  `Val_emp` varchar(20) DEFAULT NULL COMMENT '???系人',
  `Fax` varchar(15) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Ware_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.warehouse 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
REPLACE INTO `warehouse` (`Ware_id`, `Ware_desc`, `Ware_adrr`, `Val_emp`, `Fax`, `Phone`) VALUES
	('0102010', '北京-五道口', '北京市五道口', '庞先生', '789456123', '789456123'),
	('010203', '北京-西直门站', '北京市西直门', '王先生', '123456789', '123456789'),
	('010204', '北京-东直门站', '北京东直门', '刘先生', '123456', '123456'),
	('010205', '北京-上地站', '北京市上地', '张先生', '123456123', '123456123'),
	('010206', '北京-五道口', '北京市五道口', '庞先生', '789456123', '789456123'),
	('010207', '北京-回龙观', '北京市回龙观', '黄先生', '789456123', '789456123'),
	('010208', '北京-霍营', '北京市霍营', '牛先生', '789456123', '789456123'),
	('010209', '北京-西三旗', '北京市西三旗', '杨先生', '789456123', '789456123');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;


-- 导出  表 db_storage.warehouse_item 结构
CREATE TABLE IF NOT EXISTS `warehouse_item` (
  `Item_id` varchar(10) NOT NULL,
  `Ware_id` varchar(10) NOT NULL,
  `Safe_stock` bigint(20) NOT NULL,
  `Last_count` datetime NOT NULL,
  PRIMARY KEY (`Item_id`,`Ware_id`,`Safe_stock`,`Last_count`),
  KEY `FKFFB23B0FEC2CA92E` (`Item_id`),
  KEY `FKFFB23B0F4B87AE52` (`Ware_id`),
  CONSTRAINT `FKFFB23B0F4B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  CONSTRAINT `FKFFB23B0FEC2CA92E` FOREIGN KEY (`Item_id`) REFERENCES `itemgeneral` (`Item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.warehouse_item 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `warehouse_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_item` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
