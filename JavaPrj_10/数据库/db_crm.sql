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

-- 导出 db_crm 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_crm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_crm`;


-- 导出  表 db_crm.cst_manager 结构
CREATE TABLE IF NOT EXISTS `cst_manager` (
  `man_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `man_name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`man_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.cst_manager 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `cst_manager` DISABLE KEYS */;
REPLACE INTO `cst_manager` (`man_id`, `man_name`) VALUES
	(1, '庞小庆'),
	(2, '江波'),
	(3, '胡波'),
	(4, '李庆华'),
	(5, '刘大伟'),
	(6, '张佩军'),
	(7, '李大维'),
	(8, '胡勇'),
	(9, '张达'),
	(10, '杨晓波');
/*!40000 ALTER TABLE `cst_manager` ENABLE KEYS */;


-- 导出  表 db_crm.orders 结构
CREATE TABLE IF NOT EXISTS `orders` (
  `odr_id` bigint(20) NOT NULL DEFAULT '0',
  `odr_customer` varchar(100) NOT NULL DEFAULT '',
  `odr_date` datetime NOT NULL,
  `odr_addr` varchar(200) DEFAULT '',
  `odr_status` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.orders 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
REPLACE INTO `orders` (`odr_id`, `odr_customer`, `odr_date`, `odr_addr`, `odr_status`) VALUES
	(1, '珠海拱北万家百货', '2008-01-19 00:00:00', '广东省珠海市拱北', '6'),
	(2, '珠海拱北万家百货', '2008-02-19 00:00:00', '广东省珠海市拱北', '1'),
	(3, '珠海拱北万家百货', '2008-03-19 00:00:00', '广东省珠海市拱北', '1'),
	(4, '珠海拱北万家百货', '2008-04-19 00:00:00', '广东省珠海市拱北', '5'),
	(5, '珠海拱北万家百货', '2008-05-19 00:00:00', '广东省珠海市拱北', '1'),
	(6, '珠海新一佳百货公司', '2008-01-12 00:00:00', '广东省珠海市香洲区南坑市场对面', '1'),
	(7, '珠海新一佳百货公司', '2008-02-12 00:00:00', '广东省珠海市香洲区南坑市场对面', '6'),
	(8, '珠海新一佳百货公司', '2008-03-12 00:00:00', '广东省珠海市香洲区南坑市场对面', '1'),
	(9, '珠海新一佳百货公司', '2008-04-12 00:00:00', '广东省珠海市香洲区南坑市场对面', '5'),
	(10, '珠海新一佳百货公司', '2008-05-12 00:00:00', '广东省珠海市香洲区南坑市场对面', '1');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


-- 导出  表 db_crm.sal_chance 结构
CREATE TABLE IF NOT EXISTS `sal_chance` (
  `chc_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chc_source` varchar(50) DEFAULT '',
  `chc_cust_name` varchar(100) NOT NULL DEFAULT '',
  `chc_title` varchar(200) NOT NULL DEFAULT '',
  `chc_rate` int(11) NOT NULL DEFAULT '0',
  `chc_linkman` varchar(50) DEFAULT '',
  `chc_tel` varchar(50) DEFAULT '',
  `chc_desc` text NOT NULL,
  `chc_create_by` varchar(50) NOT NULL DEFAULT '',
  `chc_create_date` varchar(20) NOT NULL DEFAULT '(getdate())',
  `chc_due_to` varchar(50) DEFAULT '',
  `chc_due_date` varchar(20) DEFAULT '',
  `chc_status` char(10) NOT NULL DEFAULT '(1)',
  PRIMARY KEY (`chc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.sal_chance 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `sal_chance` DISABLE KEYS */;
REPLACE INTO `sal_chance` (`chc_id`, `chc_source`, `chc_cust_name`, `chc_title`, `chc_rate`, `chc_linkman`, `chc_tel`, `chc_desc`, `chc_create_by`, `chc_create_date`, `chc_due_to`, `chc_due_date`, `chc_status`) VALUES
	(18, '朋友介绍', '珠海房产网', '想买笔记本电脑', 90, '刘小明', '123456789', '希望采购50台笔记本 <br>', 'admin', '2009年12月13日', NULL, NULL, '1'),
	(19, '老乡介绍', '中国人才资源中心', '希望采购100台台式机', 99, '莫小妹', '789456123', '&nbsp;希望采购100台台式机', 'admin', '2009年12月13日', NULL, NULL, '1'),
	(20, '业务来往', '珠海旅游局', '采购10台笔记本', 99, '小王', '123456789', '', 'admin', '2009年12月13日', NULL, NULL, '1');
/*!40000 ALTER TABLE `sal_chance` ENABLE KEYS */;


-- 导出  表 db_crm.sal_plan 结构
CREATE TABLE IF NOT EXISTS `sal_plan` (
  `pla_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pla_chc_id` bigint(20) NOT NULL DEFAULT '0',
  `pla_date` varchar(20) NOT NULL DEFAULT '',
  `pla_todo` text NOT NULL,
  `pla_result` text,
  PRIMARY KEY (`pla_id`),
  KEY `FK_sal_plan_sal_chance` (`pla_chc_id`),
  CONSTRAINT `FK_sal_plan_sal_chance` FOREIGN KEY (`pla_chc_id`) REFERENCES `sal_chance` (`chc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.sal_plan 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `sal_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `sal_plan` ENABLE KEYS */;


-- 导出  表 db_crm.storage 结构
CREATE TABLE IF NOT EXISTS `storage` (
  `stk_id` bigint(20) NOT NULL DEFAULT '0',
  `stk_prod_id` bigint(20) NOT NULL DEFAULT '0',
  `stk_warehouse` varchar(50) NOT NULL DEFAULT '',
  `stk_ware` varchar(50) NOT NULL DEFAULT '',
  `stk_count` int(11) NOT NULL DEFAULT '0',
  `stk_memo` varchar(200) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.storage 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
REPLACE INTO `storage` (`stk_id`, `stk_prod_id`, `stk_warehouse`, `stk_ware`, `stk_count`, `stk_memo`) VALUES
	(5, 1, '北京-西直门库', 'EC-D2', 20, ''),
	(6, 2, '北京-西直门库', 'EC-D3', 25, ''),
	(7, 4, '北京-西直门库', 'EC-D5', 15, ''),
	(8, 7, '北京-大钟寺库', 'EA-B8', 5, ''),
	(9, 10, '北京-大钟寺库', 'EA-B5', 8, ''),
	(10, 11, '北京-大钟寺库', 'EA-B4', 9, ''),
	(11, 12, '北京-马甸库', 'EA-A2', 11, ''),
	(12, 13, '北京-马甸库', 'EA-A3', 11, '好棒哦'),
	(13, 14, '北京-马甸库', 'EA-A4', 12, ''),
	(14, 15, '北京-马甸库', 'EA-A5', 11, '');
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;


-- 导出  表 db_crm.sys_right 结构
CREATE TABLE IF NOT EXISTS `sys_right` (
  `right_code` bigint(20) NOT NULL AUTO_INCREMENT,
  `right_text` varchar(50) DEFAULT '',
  `right_url` varchar(100) DEFAULT '',
  PRIMARY KEY (`right_code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.sys_right 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `sys_right` DISABLE KEYS */;
REPLACE INTO `sys_right` (`right_code`, `right_text`, `right_url`) VALUES
	(1, '销售机会管理', '/sale.do'),
	(2, '客户开发计划', '/plan.do'),
	(3, '客户信息管理', '/customer.do'),
	(4, '客户流失管理', '/cstLost.do'),
	(5, '客户服务管理', '/cstService.do'),
	(6, '统计报表', '/report.do'),
	(7, '数据字典管理', '/basdict.do'),
	(8, '查询产品信息', '/product.do'),
	(9, '查询库存', '/storage.do'),
	(10, '权限管理', '/right.do');
/*!40000 ALTER TABLE `sys_right` ENABLE KEYS */;


-- 导出  表 db_crm.sys_role 结构
CREATE TABLE IF NOT EXISTS `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL DEFAULT '',
  `role_desc` varchar(50) DEFAULT '',
  `role_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.sys_role 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
REPLACE INTO `sys_role` (`role_id`, `role_name`, `role_desc`, `role_flag`) VALUES
	(1, '系统管理员', '最高权限', 1),
	(2, '销售主管', '客户管理、营销管理以及统计报表', 1),
	(3, '客户经理', '客户管理、基础数据以及统计报表', 1),
	(4, '董事会董事', '查看统计报表', 1),
	(6, '销售员', '营销管理', NULL);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;


-- 导出  表 db_crm.sys_role_right 结构
CREATE TABLE IF NOT EXISTS `sys_role_right` (
  `r_r_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `right_id` bigint(20) NOT NULL DEFAULT '0',
  `roles_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`r_r_id`),
  KEY `FK_Sys_role_right_sys_role` (`roles_id`),
  KEY `FK_sys_role_right_sys_right` (`right_id`),
  CONSTRAINT `FK_Sys_role_right_sys_role` FOREIGN KEY (`roles_id`) REFERENCES `sys_role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sys_role_right_sys_right` FOREIGN KEY (`right_id`) REFERENCES `sys_right` (`right_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.sys_role_right 的数据：~20 rows (大约)
/*!40000 ALTER TABLE `sys_role_right` DISABLE KEYS */;
REPLACE INTO `sys_role_right` (`r_r_id`, `right_id`, `roles_id`) VALUES
	(5, 1, 2),
	(6, 2, 2),
	(7, 5, 2),
	(8, 6, 2),
	(9, 1, 3),
	(10, 2, 3),
	(11, 3, 3),
	(12, 4, 3),
	(13, 5, 3),
	(14, 6, 3),
	(15, 1, 1),
	(16, 2, 1),
	(17, 3, 1),
	(18, 4, 1),
	(19, 5, 1),
	(20, 6, 1),
	(21, 7, 1),
	(22, 8, 1),
	(23, 9, 1),
	(24, 10, 1);
/*!40000 ALTER TABLE `sys_role_right` ENABLE KEYS */;


-- 导出  表 db_crm.sys_user 结构
CREATE TABLE IF NOT EXISTS `sys_user` (
  `usr_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usr_name` varchar(50) NOT NULL DEFAULT '',
  `usr_password` varchar(50) NOT NULL DEFAULT '',
  `usr_role_id` bigint(20) DEFAULT '0',
  `usr_flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`usr_id`),
  KEY `FK_sys_user_sys_role` (`usr_role_id`),
  CONSTRAINT `FK_sys_user_sys_role` FOREIGN KEY (`usr_role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.sys_user 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
REPLACE INTO `sys_user` (`usr_id`, `usr_name`, `usr_password`, `usr_role_id`, `usr_flag`) VALUES
	(2, 'admin', 'admin', 1, 1),
	(7, 'wangqinghai', 'pwd', 2, 1),
	(8, 'huangcaiyi', 's', 3, 1),
	(9, 'huanglonghui', 'pwd', 4, 1);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
