CREATE DATABASE  IF NOT EXISTS `bdbiblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bdbiblioteca`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: bdbiblioteca
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `detallepreatamo`
--

DROP TABLE IF EXISTS `detallepreatamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallepreatamo` (
  `idDetallePrestamo` varchar(11) NOT NULL,
  `idLibro` int NOT NULL,
  `idPrestamos` int NOT NULL,
  `idBibliotecario` int NOT NULL,
  `idLector` int NOT NULL,
  PRIMARY KEY (`idDetallePrestamo`,`idLibro`,`idPrestamos`,`idBibliotecario`,`idLector`),
  UNIQUE KEY `idDetallePrestamo_UNIQUE` (`idDetallePrestamo`),
  KEY `fk_tLibro_has_tPrestamos_tLibro1_idx` (`idLibro`),
  KEY `fk_tLibro_has_tPrestamos_tPrestamos1_idx` (`idPrestamos`,`idBibliotecario`),
  KEY `fk_tLector_hast_tPrestamoLector_tLector_idx` (`idLector`),
  CONSTRAINT `fk_tLector_hast_tPrestamoLector_tLector` FOREIGN KEY (`idLector`) REFERENCES `tlector` (`idLector`),
  CONSTRAINT `fk_tLibro_has_tPrestamos_tLibro1` FOREIGN KEY (`idLibro`) REFERENCES `tlibro` (`idLibro`),
  CONSTRAINT `fk_tLibro_has_tPrestamos_tPrestamos1` FOREIGN KEY (`idPrestamos`, `idBibliotecario`) REFERENCES `tprestamos` (`idPrestamos`, `idBibliotecario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallepreatamo`
--

LOCK TABLES `detallepreatamo` WRITE;
/*!40000 ALTER TABLE `detallepreatamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallepreatamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tautor`
--

DROP TABLE IF EXISTS `tautor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tautor` (
  `idAutor` int NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(150) NOT NULL,
  `LugarNacimiento` varchar(150) NOT NULL,
  `GeneroLiterario` varchar(150) NOT NULL,
  `Periodo` varchar(150) NOT NULL,
  PRIMARY KEY (`idAutor`),
  UNIQUE KEY `idAutor_UNIQUE` (`idAutor`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tautor`
--

LOCK TABLES `tautor` WRITE;
/*!40000 ALTER TABLE `tautor` DISABLE KEYS */;
INSERT INTO `tautor` VALUES (1,'Vladimir','Peru','Tecnologia','Moderno'),(7,'Carlos','Rusia','Antropologia','Contemporaneo');
/*!40000 ALTER TABLE `tautor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbibliotecario`
--

DROP TABLE IF EXISTS `tbibliotecario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbibliotecario` (
  `idBibliotecario` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(150) NOT NULL,
  `apellidos` varchar(150) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `dni` varchar(11) NOT NULL,
  `estado` varchar(11) NOT NULL,
  PRIMARY KEY (`idBibliotecario`),
  UNIQUE KEY `idtUsuario_UNIQUE` (`idBibliotecario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbibliotecario`
--

LOCK TABLES `tbibliotecario` WRITE;
/*!40000 ALTER TABLE `tbibliotecario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbibliotecario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tdetallelibroautor`
--

DROP TABLE IF EXISTS `tdetallelibroautor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdetallelibroautor` (
  `idDetalleLibroAutor` int NOT NULL AUTO_INCREMENT,
  `idLibro` int NOT NULL,
  `idAutor` int NOT NULL,
  PRIMARY KEY (`idDetalleLibroAutor`,`idLibro`,`idAutor`),
  UNIQUE KEY `idDetalleLibroAutor_UNIQUE` (`idDetalleLibroAutor`),
  KEY `fk_tLibro_has_tAutor_tAutor1_idx` (`idAutor`),
  KEY `fk_tLibro_has_tAutor_tLibro_idx` (`idLibro`),
  CONSTRAINT `fk_tLibro_has_tAutor_tAutor1` FOREIGN KEY (`idAutor`) REFERENCES `tautor` (`idAutor`),
  CONSTRAINT `fk_tLibro_has_tAutor_tLibro` FOREIGN KEY (`idLibro`) REFERENCES `tlibro` (`idLibro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdetallelibroautor`
--

LOCK TABLES `tdetallelibroautor` WRITE;
/*!40000 ALTER TABLE `tdetallelibroautor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tdetallelibroautor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tlector`
--

DROP TABLE IF EXISTS `tlector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tlector` (
  `idLector` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(150) NOT NULL,
  `apellidos` varchar(150) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `dni` varchar(11) NOT NULL,
  `estado` varchar(11) NOT NULL,
  PRIMARY KEY (`idLector`),
  UNIQUE KEY `idtUsuario_UNIQUE` (`idLector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tlector`
--

LOCK TABLES `tlector` WRITE;
/*!40000 ALTER TABLE `tlector` DISABLE KEYS */;
/*!40000 ALTER TABLE `tlector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tlibro`
--

DROP TABLE IF EXISTS `tlibro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tlibro` (
  `idLibro` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `editorial` varchar(150) NOT NULL,
  `anio` varchar(4) NOT NULL,
  `fechaRegistro` datetime NOT NULL,
  `estadoLibro` varchar(250) NOT NULL,
  `estadoActivo` varchar(15) NOT NULL,
  PRIMARY KEY (`idLibro`),
  UNIQUE KEY `idLibro_UNIQUE` (`idLibro`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tlibro`
--

LOCK TABLES `tlibro` WRITE;
/*!40000 ALTER TABLE `tlibro` DISABLE KEYS */;
/*!40000 ALTER TABLE `tlibro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tprestamos`
--

DROP TABLE IF EXISTS `tprestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tprestamos` (
  `idPrestamos` int NOT NULL AUTO_INCREMENT,
  `fechaPrestamo` datetime NOT NULL,
  `estado` varchar(45) NOT NULL,
  `idBibliotecario` int NOT NULL,
  `idLector` int NOT NULL,
  PRIMARY KEY (`idPrestamos`,`idBibliotecario`,`idLector`),
  UNIQUE KEY `idPrestamos_UNIQUE` (`idPrestamos`),
  KEY `fk_tPrestamos_tBibliotecario1_idx` (`idBibliotecario`),
  KEY `fk_tPrestamos_tLector1_idx` (`idLector`),
  CONSTRAINT `fk_tPrestamos_tBibliotecario1` FOREIGN KEY (`idBibliotecario`) REFERENCES `tbibliotecario` (`idBibliotecario`),
  CONSTRAINT `fk_tPrestamos_tLector1` FOREIGN KEY (`idLector`) REFERENCES `tlector` (`idLector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tprestamos`
--

LOCK TABLES `tprestamos` WRITE;
/*!40000 ALTER TABLE `tprestamos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tprestamos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bdbiblioteca'
--
/*!50003 DROP FUNCTION IF EXISTS `crearAutor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `crearAutor`(
	pNombres varchar(150) ,
	pLugarNacimiento varchar(150) ,
	pGeneroLiterario varchar(150) ,
	pPeriodo varchar(150)
) RETURNS int
BEGIN
	INSERT INTO tautor VALUES (0,
								pNombres,
								pLugarNacimiento,
								pGeneroLiterario,
								pPeriodo);
	RETURN last_insert_id();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearAutor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crearAutor`(
	pNombres varchar(150) ,
	pLugarNacimiento varchar(150) ,
	pGeneroLiterario varchar(150) ,
	pPeriodo varchar(150)
)
begin
	INSERT INTO tautor VALUES (0,
								pNombres,
								pLugarNacimiento,
								pGeneroLiterario,
								pPeriodo);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-24 21:25:34
