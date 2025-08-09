-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.11.7-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*--/*!40111 SET @OLD_SQL_NOTES=@logdb@SQL_NOTES, SQL_NOTES=0 */--;*/


-- Dumping database structure for logdb
CREATE DATABASE IF NOT EXISTS `logdb` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `logdb`;

-- Dumping structure for table logdb.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `code` int(11) NOT NULL AUTO_INCREMENT,
  `aRemoteIPAddress` char(50) DEFAULT NULL,
  `ALocalIPAddress` char(50) DEFAULT NULL,
  `bBytesSentOrDash` int(11) DEFAULT NULL,
  `BBytesSent` int(11) DEFAULT NULL,
  `hRemoteHostName` varchar(50) DEFAULT NULL,
  `HRequestProtocol` char(20) DEFAULT NULL,
  `lRemoteLogicalUsername` char(20) DEFAULT NULL,
  `mRequestMethod` char(20) DEFAULT NULL,
  `pLocalPort` int(11) DEFAULT NULL,
  `qQueryString` varchar(200) DEFAULT NULL,
  `rFirstLineOfRequest` varchar(300) DEFAULT NULL,
  `sHTTPStatusCode` varchar(300) DEFAULT NULL,
  `SUserSessionID` char(255) DEFAULT NULL,
  `tDateAndTime` datetime DEFAULT NULL,
  `uRemoteUserAuthenticated` char(60) DEFAULT NULL,
  `URequestedURLPath` varchar(120) DEFAULT NULL,
  `vLocalServerName` varchar(60) DEFAULT NULL,
  `DMillisToProcess` int(11) DEFAULT NULL,
  `TSecondsToProcess` int(11) DEFAULT NULL,
  `ICurrentReqThreadName` char(100) DEFAULT NULL,
  `isbot` tinyint(1) DEFAULT NULL,
  `bot_string` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=31072 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;