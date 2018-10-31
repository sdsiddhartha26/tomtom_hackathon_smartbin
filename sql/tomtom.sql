-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.11 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for tomtom_smartegg
CREATE DATABASE IF NOT EXISTS `tomtom_smartegg` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `tomtom_smartegg`;

-- Dumping structure for table tomtom_smartegg.garabagecollection
CREATE TABLE IF NOT EXISTS `garabagecollection` (
  `GBId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `garbage` int(11) DEFAULT '1',
  `collectedstatus` int(11) DEFAULT NULL COMMENT '1 - Collected, 2- Not Collected',
  `Stime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`GBId`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

-- Dumping data for table tomtom_smartegg.garabagecollection: ~6 rows (approximately)
DELETE FROM `garabagecollection`;
/*!40000 ALTER TABLE `garabagecollection` DISABLE KEYS */;
INSERT INTO `garabagecollection` (`GBId`, `userId`, `garbage`, `collectedstatus`, `Stime`) VALUES
	(1, 1, 1, 1, '2018-10-18 12:31:25'),
	(156, 30, 1, 1, '2018-10-12 16:33:50'),
	(157, 31, 1, 1, '2018-10-12 16:33:50'),
	(158, 32, 1, 1, '2018-10-12 16:33:50'),
	(159, 33, 1, 1, '2018-10-12 16:33:50'),
	(160, 34, 1, 1, '2018-10-12 16:33:50');
/*!40000 ALTER TABLE `garabagecollection` ENABLE KEYS */;

-- Dumping structure for table tomtom_smartegg.users
CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `IMEINumber` varchar(50) NOT NULL DEFAULT '0',
  `userName` varchar(50) DEFAULT 'Guest',
  `Address` text,
  `Latitude` varchar(50) DEFAULT '0',
  `Longitude` varchar(50) DEFAULT '0',
  `userType` int(11) NOT NULL COMMENT '1 - Garbage Collector, 2 - Clinet',
  `Stime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `IMEINumber` (`IMEINumber`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- Dumping data for table tomtom_smartegg.users: ~6 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`userId`, `IMEINumber`, `userName`, `Address`, `Latitude`, `Longitude`, `userType`, `Stime`) VALUES
	(1, '352136067024014', 'Guest', '24th Main Road, Bengaluru Sector 1 Agara Village, Karnataka, 560034', '12.9212193', '77.6493463', 2, '2018-10-18 12:31:36'),
	(30, '352136067024015', 'Guest', '24th Main Road, HSR Layout Bengaluru South, Karnataka, 560034', '12.919674', '77.649349', 2, '2018-10-12 17:28:16'),
	(31, '352136067024016', 'Guest', '24th Main Road, HSR Layout Bengaluru South, Karnataka, 560034', '12.917300', '77.645452', 2, '2018-10-12 17:28:05'),
	(32, '352136067024017', 'Guest', '24th Main Road, HSR Layout Bengaluru South, Karnataka, 560034', '12.918724', '77.654293', 2, '2018-10-12 17:27:56'),
	(33, '352136067024018', 'Guest', '24th Main Road, HSR Layout Bengaluru South, Karnataka, 560034', '12.923930', '77.652020', 2, '2018-10-12 17:27:48'),
	(34, '352136067024019', 'Guest', '24th Main Road, HSR Layout Bengaluru South, Karnataka, 560034', '12.917845', '77.655683', 2, '2018-10-12 17:27:40'),
	(35, '864940049116546', 'Guest', '24th Main Road, Bengaluru Sector 1 Agara Village, Karnataka, 560034', '12.9212168', '77.6493383', 1, '2018-10-18 12:34:31');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
