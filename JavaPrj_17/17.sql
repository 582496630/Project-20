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

-- 导出 db_stuman 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_stuman` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_stuman`;


-- 导出  表 db_stuman.course 结构
CREATE TABLE IF NOT EXISTS `course` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.course 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
REPLACE INTO `course` (`id`, `name`) VALUES
	('402881e625a9b5300125a9bcf8820005', '高等代数'),
	('402881e625a9cca50125a9daf58d0001', '大学英语'),
	('402881e625a9cca50125a9db0dcc0002', '大学语文'),
	('402881e625a9cca50125a9db2a060003', '计算机基础'),
	('402881e625a9cca50125a9db59f10004', '数学分析');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


-- 导出  表 db_stuman.courseschedule 结构
CREATE TABLE IF NOT EXISTS `courseschedule` (
  `id` varchar(255) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `courseId` varchar(255) DEFAULT NULL,
  `teacherId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK702257F2A3B93E2E` (`courseId`),
  KEY `FK702257F249E8BD72` (`teamId`),
  KEY `FK702257F2D2169C62` (`teacherId`),
  KEY `FK702257F288FF255F` (`courseId`),
  KEY `FK702257F2E130BCE3` (`teamId`),
  KEY `FK702257F2958D9B51` (`teacherId`),
  CONSTRAINT `FK702257F249E8BD72` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`),
  CONSTRAINT `FK702257F288FF255F` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  CONSTRAINT `FK702257F2958D9B51` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
  CONSTRAINT `FK702257F2A3B93E2E` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  CONSTRAINT `FK702257F2D2169C62` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
  CONSTRAINT `FK702257F2E130BCE3` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.courseschedule 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `courseschedule` DISABLE KEYS */;
REPLACE INTO `courseschedule` (`id`, `semester`, `score`, `teamId`, `courseId`, `teacherId`) VALUES
	('402881e625a9c1a40125a9c225170001', '1', 6, '402881e625a9b5300125a9b824170001', '402881e625a9b5300125a9bcf8820005', '402881e625a9b5300125a9bdeffd0006'),
	('402881e625a9cca50125a9dd042a0008', '1', 4, '402881e625a9b5300125a9b824170001', '402881e625a9cca50125a9daf58d0001', '402881e625a9cca50125a9dbb4180005'),
	('402881e625a9cca50125a9dd25b70009', '1', 6, '402881e625a9b5300125a9b824170001', '402881e625a9cca50125a9db0dcc0002', '402881e625a9cca50125a9dbf80f0006'),
	('402881e625a9cca50125a9dd4ea4000a', '1', 2, '402881e625a9b5300125a9b824170001', '402881e625a9cca50125a9db2a060003', '402881e625a9cca50125a9dc213b0007'),
	('402881e625a9cca50125a9ddf9a0000c', '1', 2, '402881e625a9b5300125a9b824170001', '402881e625a9cca50125a9db59f10004', '402881e625a9cca50125a9dda259000b'),
	('402881e625a9cca50125a9e4b263000d', '1', 5, '402881e625a9b5300125a9b87b490002', '402881e625a9b5300125a9bcf8820005', '402881e625a9b5300125a9bdeffd0006'),
	('402881e625a9cca50125a9e4e30b000e', '2', 6, '402881e625a9b5300125a9bc70c50003', '402881e625a9b5300125a9bcf8820005', '402881e625a9b5300125a9bdeffd0006');
/*!40000 ALTER TABLE `courseschedule` ENABLE KEYS */;


-- 导出  表 db_stuman.mark 结构
CREATE TABLE IF NOT EXISTS `mark` (
  `id` varchar(255) NOT NULL,
  `score` float DEFAULT NULL,
  `studentId` varchar(255) DEFAULT NULL,
  `courseId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK247AEDA3B93E2E` (`courseId`),
  KEY `FK247AED5D5BD6D4` (`studentId`),
  KEY `FK247AED88FF255F` (`courseId`),
  KEY `FK247AED20D2D5C3` (`studentId`),
  CONSTRAINT `FK247AED20D2D5C3` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  CONSTRAINT `FK247AED5D5BD6D4` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  CONSTRAINT `FK247AED88FF255F` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  CONSTRAINT `FK247AEDA3B93E2E` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.mark 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `mark` DISABLE KEYS */;
REPLACE INTO `mark` (`id`, `score`, `studentId`, `courseId`) VALUES
	('1', 99, '402881e625a9cca50125a9ed31fe000f', '402881e625a9b5300125a9bcf8820005'),
	('2', 85, '402881e625a9cca50125a9ed31fe000f', '402881e625a9cca50125a9daf58d0001'),
	('3', 65, '402881e625a9cca50125a9ed31fe000f', '402881e625a9cca50125a9db0dcc0002'),
	('4', 78, '402881e625a9cca50125a9ed31fe000f', '402881e625a9cca50125a9db2a060003'),
	('5', 68, '402881e625a9cca50125a9ed31fe000f', '402881e625a9cca50125a9db59f10004'),
	('6', 74, '402881e625a9cca50125a9edda1e0010', '402881e625a9b5300125a9bcf8820005'),
	('7', 75, '402881e625a9cca50125a9edda1e0010', '402881e625a9cca50125a9daf58d0001'),
	('8', 76, '402881e625a9cca50125a9edda1e0010', '402881e625a9cca50125a9db0dcc0002');
/*!40000 ALTER TABLE `mark` ENABLE KEYS */;


-- 导出  表 db_stuman.student 结构
CREATE TABLE IF NOT EXISTS `student` (
  `id` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `enrollDate` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF3371A1B49E8BD72` (`teamId`),
  KEY `FKF3371A1BE130BCE3` (`teamId`),
  CONSTRAINT `FKF3371A1B49E8BD72` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`),
  CONSTRAINT `FKF3371A1BE130BCE3` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.student 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
REPLACE INTO `student` (`id`, `code`, `name`, `enrollDate`, `birthday`, `sex`, `teamId`) VALUES
	('402881205a161b1f015a164169270002', '0509302-05', '张三', '2005年9月', '1985年1月1日', '男', '402881e625a9b5300125a9bc880b0004'),
	('402881205a166a56015a166e40ea0001', '0509302-05', 'zhangsan', '1990-10-1', '1980-07-7', '男', '402881e625a9b5300125a9bc880b0004'),
	('402881e625a9cca50125a9ed31fe000f', '0509302-01', '李小刚', '2005年9月', '1985年5月12日', '男', '402881e625a9b5300125a9b824170001'),
	('402881e625a9cca50125a9edda1e0010', '0509302-02', '赵霞', '2005年9月', '1986年1月2日', '女', '402881e625a9b5300125a9b824170001'),
	('402881e625a9cca50125a9ee962d0011', '0509302-03', '杨杰', '2005年9月', '1988年1月1日', '男', '402881e625a9b5300125a9b824170001');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


-- 导出  表 db_stuman.teacher 结构
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.teacher 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
REPLACE INTO `teacher` (`id`, `name`) VALUES
	('402881205a161b1f015a16391ead0001', '123'),
	('402881e625a9b5300125a9bdeffd0006', '王菲'),
	('402881e625a9cca50125a9dbb4180005', '张时红'),
	('402881e625a9cca50125a9dbf80f0006', '刘德宽'),
	('402881e625a9cca50125a9dc213b0007', '李专政'),
	('402881e625a9cca50125a9dda259000b', '赵辉');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;


-- 导出  表 db_stuman.teacher_course 结构
CREATE TABLE IF NOT EXISTS `teacher_course` (
  `courseId` varchar(255) NOT NULL,
  `teacherId` varchar(255) NOT NULL,
  PRIMARY KEY (`teacherId`,`courseId`),
  KEY `FK40C04F18A3B93E2E` (`courseId`),
  KEY `FK40C04F18D2169C62` (`teacherId`),
  KEY `FK40C04F1888FF255F` (`courseId`),
  KEY `FK40C04F18958D9B51` (`teacherId`),
  CONSTRAINT `FK40C04F1888FF255F` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  CONSTRAINT `FK40C04F18958D9B51` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
  CONSTRAINT `FK40C04F18A3B93E2E` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  CONSTRAINT `FK40C04F18D2169C62` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.teacher_course 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `teacher_course` DISABLE KEYS */;
REPLACE INTO `teacher_course` (`courseId`, `teacherId`) VALUES
	('402881e625a9b5300125a9bcf8820005', '402881e625a9b5300125a9bdeffd0006'),
	('402881e625a9cca50125a9daf58d0001', '402881e625a9cca50125a9dbb4180005'),
	('402881e625a9cca50125a9db0dcc0002', '402881e625a9cca50125a9dbf80f0006'),
	('402881e625a9cca50125a9db2a060003', '402881e625a9b5300125a9bdeffd0006'),
	('402881e625a9cca50125a9db2a060003', '402881e625a9cca50125a9dc213b0007'),
	('402881e625a9cca50125a9db59f10004', '402881e625a9b5300125a9bdeffd0006'),
	('402881e625a9cca50125a9db59f10004', '402881e625a9cca50125a9dda259000b');
/*!40000 ALTER TABLE `teacher_course` ENABLE KEYS */;


-- 导出  表 db_stuman.team 结构
CREATE TABLE IF NOT EXISTS `team` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.team 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
REPLACE INTO `team` (`id`, `name`) VALUES
	('402881e625a9b5300125a9b824170001', '0509302'),
	('402881e625a9b5300125a9b87b490002', '0509301'),
	('402881e625a9b5300125a9bc70c50003', '0509303'),
	('402881e625a9b5300125a9bc880b0004', '0509304');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;


-- 导出  表 db_stuman.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.user 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`id`, `name`, `password`) VALUES
	('1', 'admin', 'admin'),
	('402881e625a9b5300125a9bdeffd0006', 'abc', '12345');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
