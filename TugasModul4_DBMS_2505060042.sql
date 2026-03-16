-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: untidar
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurusan` (
  `NPM` char(3) NOT NULL,
  `Nama_Mahasiswa` varchar(30) DEFAULT NULL,
  `Jurusan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`NPM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusan`
--

LOCK TABLES `jurusan` WRITE;
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` VALUES ('251','Andi Pratama','Informatika'),('252','Budi Santoso','Sistem Informasi'),('253','Citra Lestari','Teknologi Informasi'),('254','Dinda Maharani','Ilmu Komputer'),('255','Fajar Nugroho','Informatika'),('256','Nadia Putri','Teknologi Informasi');
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matkul`
--

DROP TABLE IF EXISTS `matkul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matkul` (
  `Kode_Matkul` int(11) NOT NULL AUTO_INCREMENT,
  `Nama_Matkul` varchar(30) DEFAULT NULL,
  `NPM` char(3) DEFAULT NULL,
  `Nama_Mahasiswa` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Kode_Matkul`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matkul`
--

LOCK TABLES `matkul` WRITE;
/*!40000 ALTER TABLE `matkul` DISABLE KEYS */;
INSERT INTO `matkul` VALUES (1,'Basis Data','251','Andi Pratama'),(2,'Pemrograman Web','251','Andi Pratama'),(3,'Jaringan Komputer','251','Andi Pratama'),(4,'Struktur Data','251','Andi Pratama'),(5,'Basis Data','252','Budi Santoso'),(6,'Pemrograman Web','252','Budi Santoso'),(7,'Pemrograman Web','253','Citra Lestari'),(8,'Basis Data','253','Citra Lestari'),(9,'Struktur Data','253','Citra Lestari'),(10,'Basis Data','254','Dinda Maharani'),(11,'Pemrograman Web','254','Dinda Maharani'),(12,'Pemrograman Web','255','Fajar Nugroho'),(13,'Basis Data','255','Fajar Nugroho'),(14,'Jaringan Komputer','255','Fajar Nugroho'),(15,'Basis Data','256','Nadia Putri'),(16,'Pemrograman Web','256','Nadia Putri'),(17,'Jaringan Komputer','256','Nadia Putri'),(18,'Struktur Data','256','Nadia Putri');
/*!40000 ALTER TABLE `matkul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai`
--

DROP TABLE IF EXISTS `nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai` (
  `NPM` char(3) NOT NULL,
  `Nama_Mahasiswa` varchar(30) DEFAULT NULL,
  `Mata_Kuliah` varchar(30) DEFAULT NULL,
  `Nilai_Mahasiswa` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`NPM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

LOCK TABLES `nilai` WRITE;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
INSERT INTO `nilai` VALUES ('251','Andi Pratama','Pemrograman Web',85.00),('252','Budi Santoso','Basis Data',86.00),('253','Citra Lestari','Basis Data',90.00),('254','Dinda Maharani','Pemrograman Web',80.00),('255','Fajar Nugroho','Basis Data',86.00),('256','Nadia Putri','Pemrograman Web',92.00);
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-17  1:20:37
