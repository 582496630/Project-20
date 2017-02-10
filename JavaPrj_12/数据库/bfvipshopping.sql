# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: bfvipshopping
# ------------------------------------------------------
# Server version 5.0.67-community-nt

#
# Table structure for table commodity
#

DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `commodityId` int(11) NOT NULL auto_increment,
  `commodityName` varchar(30) default NULL,
  `price` decimal(10,2) default NULL,
  `agio` decimal(4,3) default NULL,
  PRIMARY KEY  (`commodityId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;
INSERT INTO `commodity` VALUES (1,'������ţ��',2.3,1);
INSERT INTO `commodity` VALUES (2,'��ţ��ţ��',2.5,1);
INSERT INTO `commodity` VALUES (3,'��Ԫ��ţ��',2.1,0.9);
INSERT INTO `commodity` VALUES (4,'���ϼ�',3.5,1);
INSERT INTO `commodity` VALUES (5,'�����̷�',40,1);
INSERT INTO `commodity` VALUES (6,'��ţ�̷�',50,1);
INSERT INTO `commodity` VALUES (7,'��Ԫ�̷�',45,1);
INSERT INTO `commodity` VALUES (8,'JavaWeb��Ŀ����',50.9,0.85);

#
# Table structure for table consume
#

DROP TABLE IF EXISTS `consume`;
CREATE TABLE `consume` (
  `consumeId` int(11) NOT NULL auto_increment,
  `vipId` int(11) default NULL,
  `name` varchar(20) default NULL,
  `commodityId` int(11) default NULL,
  `commodityName` varchar(30) default NULL,
  `price` decimal(10,2) default NULL,
  `practicePrice` decimal(10,2) default NULL,
  PRIMARY KEY  (`consumeId`),
  KEY `vipId` (`vipId`),
  KEY `commodityId` (`commodityId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gb2312;
INSERT INTO `consume` VALUES (1,1,'������',1,'������ţ��',2.3,2.3);
INSERT INTO `consume` VALUES (2,1,'������',2,'��ţ��ţ��',2.5,2.5);
INSERT INTO `consume` VALUES (3,1,'������',3,'��Ԫ��ţ��',2.1,1.89);
INSERT INTO `consume` VALUES (4,2,'����',1,'������ţ��',2.3,2.3);
INSERT INTO `consume` VALUES (5,2,'����',2,'��ţ��ţ��',2.5,2.5);
INSERT INTO `consume` VALUES (6,2,'����',3,'��Ԫ��ţ��',2.1,1.89);
INSERT INTO `consume` VALUES (7,2,'����',4,'���ϼ�',3.5,3.5);
INSERT INTO `consume` VALUES (8,2,'����',5,'�����̷�',40,40);
INSERT INTO `consume` VALUES (9,3,'�ػ�',4,'���ϼ�',3.5,3.5);
INSERT INTO `consume` VALUES (10,5,'ЦЦ',5,'�����̷�',40,40);
INSERT INTO `consume` VALUES (11,5,'ЦЦ',6,'��ţ�̷�',50,50);
INSERT INTO `consume` VALUES (12,1,'������',8,'JavaWeb��Ŀ����',50.9,43.27);
INSERT INTO `consume` VALUES (13,1,'������',4,'���ϼ�',3.5,3.5);
INSERT INTO `consume` VALUES (14,3,'�ػ�',4,'���ϼ�',3.5,3.5);

#
# Table structure for table user
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL default '',
  `password` varchar(20) default NULL,
  `quanxian` int(11) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `user` VALUES ('admin','admin',1);
INSERT INTO `user` VALUES ('ibeifeng','123',0);
INSERT INTO `user` VALUES ('lifengxing','123',0);

#
# Table structure for table vip
#

DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip` (
  `vipId` int(11) NOT NULL auto_increment,
  `joinTime` date default NULL,
  `name` varchar(20) default NULL,
  `age` int(11) default NULL,
  `profession` varchar(20) default NULL,
  PRIMARY KEY  (`vipId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;
INSERT INTO `vip` VALUES (1,'2009-12-15','������',30,'����ʦ');
INSERT INTO `vip` VALUES (2,'2009-12-15','����',50,'����Ա');
INSERT INTO `vip` VALUES (3,'2009-12-01','�ػ�',21,'ְҵ���');
INSERT INTO `vip` VALUES (4,'2009-12-01','����',22,'����ʦ');
INSERT INTO `vip` VALUES (5,'2009-12-03','ЦЦ',24,'����ְԱ');
INSERT INTO `vip` VALUES (6,'2009-12-04','��һ',25,'it����Ա');
INSERT INTO `vip` VALUES (7,'2010-01-30','����',30,'it����ʦ');
INSERT INTO `vip` VALUES (8,'2010-01-30','����',30,'it����Ա');

#
#  Foreign keys for table consume
#

ALTER TABLE `consume`
ADD CONSTRAINT `consume_ibfk_1` FOREIGN KEY (`vipId`) REFERENCES `vip` (`vipId`),
  ADD CONSTRAINT `consume_ibfk_2` FOREIGN KEY (`commodityId`) REFERENCES `commodity` (`commodityId`);


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
