-- MySQL dump 10.13  Distrib 5.6.25, for osx10.9 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	5.6.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `ultima_sesion` datetime NOT NULL,
  `estado` enum('activo','inactivo') COLLATE latin1_general_ci NOT NULL,
  `nombre` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `apellido` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `colegio_id` int(11) NOT NULL,
  `estadoImagen` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'admin','123456','2011-07-26 20:23:13','activo','Juan','Perez',1,'si'),(2,'coleAdmin','123456','2011-10-09 18:56:33','activo','Julio','Martines',2,'no');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumno` (
  `alumno_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `apellido` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `curso_id` int(11) NOT NULL,
  `usuario` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `estado` enum('activo','inactivo') COLLATE latin1_general_ci NOT NULL,
  `gestion` int(11) NOT NULL,
  `colegio_id` int(11) NOT NULL,
  `estadoImagen` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`alumno_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'kattY','ledezma',12,'kledezma','123456','activo',0,1,'si'),(2,'carlos','ortiz',1,'cortiz','123456','activo',0,1,'no'),(3,'maria','ochoa',15,'mochoa','123456','activo',0,2,'si'),(4,'Luis','vargas',19,'Lvargas','Lvargas123','activo',0,2,'no'),(5,'cristian','garcia',1,'cgarcia','cgarcia123','activo',0,1,'no'),(6,'ana','sabedra',12,'asabedra','asabedra123','activo',0,1,'no'),(7,'carlos','claros',1,'cclaros','123456','activo',0,1,'no'),(8,'fatima','alvarez',1,'faalvarez','123456','activo',0,1,'no'),(9,'fatima','alvarez',13,'fatalvarez','fatalvarez123','activo',0,2,'no'),(10,'Arando','castro',1,'Acastro','Acastro123','activo',1,1,'1');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nota_maxima` int(11) NOT NULL,
  `asignar_id` int(11) NOT NULL,
  `trimestre` int(11) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Conocimientos',60,1,1,'2012-01-17 15:10:06'),(2,'DPS',10,1,1,'2012-01-17 15:10:06'),(3,'Conocimientos',30,1,2,'2012-01-17 15:10:06'),(4,'DPS',10,1,2,'2012-01-17 15:10:06'),(5,'Conocimientos',60,1,3,'2012-01-17 15:10:06'),(6,'DPS',10,1,3,'2012-01-17 15:10:06'),(8,'Conocimientos',60,2,1,'2012-01-18 00:55:10'),(9,'DPS',10,2,1,'2012-01-18 00:55:10'),(10,'Conocimientos',60,2,2,'2012-01-18 00:55:10'),(11,'DPS',10,2,2,'2012-01-18 00:55:10'),(12,'Conocimientos',60,2,3,'2012-01-18 00:55:10'),(13,'DPS',10,2,3,'2012-01-18 00:55:10'),(14,'Conocimientos',60,3,1,'2012-01-18 04:08:20'),(15,'DPS',10,3,1,'2012-01-18 04:08:20'),(16,'Conocimientos',60,3,2,'2012-01-18 04:08:20'),(17,'DPS',10,3,2,'2012-01-18 04:08:20'),(18,'Conocimientos',60,3,3,'2012-01-18 04:08:20'),(19,'DPS',10,3,3,'2012-01-18 04:08:20'),(20,'Conocimientos',60,4,1,'2012-01-18 04:29:37'),(21,'DPS',10,4,1,'2012-01-18 04:29:37'),(22,'Conocimientos',60,4,2,'2012-01-18 04:29:37'),(23,'DPS',10,4,2,'2012-01-18 04:29:37'),(24,'Conocimientos',60,4,3,'2012-01-18 04:29:37'),(25,'DPS',10,4,3,'2012-01-18 04:29:37'),(26,'Conocimientos',60,5,1,'2012-01-18 04:33:11'),(27,'DPS',10,5,1,'2012-01-18 04:33:11'),(28,'Conocimientos',60,5,2,'2012-01-18 04:33:11'),(29,'DPS',10,5,2,'2012-01-18 04:33:11'),(30,'Conocimientos',60,5,3,'2012-01-18 04:33:11'),(31,'DPS',10,5,3,'2012-01-18 04:33:11');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignar_materia`
--

DROP TABLE IF EXISTS `asignar_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignar_materia` (
  `asignar_id` int(11) NOT NULL AUTO_INCREMENT,
  `curso_id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `profesor_id` int(11) NOT NULL,
  `gestion` int(11) NOT NULL,
  `colegio_id` int(11) NOT NULL,
  PRIMARY KEY (`asignar_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignar_materia`
--

LOCK TABLES `asignar_materia` WRITE;
/*!40000 ALTER TABLE `asignar_materia` DISABLE KEYS */;
INSERT INTO `asignar_materia` VALUES (1,1,1,1,2011,1),(2,1,2,6,2011,1),(3,15,5,3,2011,2),(4,1,4,2,2011,1),(5,1,3,7,2011,1);
/*!40000 ALTER TABLE `asignar_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendario`
--

DROP TABLE IF EXISTS `calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendario` (
  `calendario_id` int(11) NOT NULL AUTO_INCREMENT,
  `asignar_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` text COLLATE latin1_general_ci NOT NULL,
  `fecha_unix_stamp` bigint(20) NOT NULL,
  `dia` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `mes` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `anio` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`calendario_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendario`
--

LOCK TABLES `calendario` WRITE;
/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colegio`
--

DROP TABLE IF EXISTS `colegio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colegio` (
  `colegio_id` int(11) NOT NULL AUTO_INCREMENT,
  `nota_maxima` int(11) NOT NULL,
  `gestion` int(11) NOT NULL,
  `nombre_colegio` varchar(255) NOT NULL,
  `estadoImagen` varchar(255) NOT NULL,
  PRIMARY KEY (`colegio_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colegio`
--

LOCK TABLES `colegio` WRITE;
/*!40000 ALTER TABLE `colegio` DISABLE KEYS */;
INSERT INTO `colegio` VALUES (1,210,2011,'La salle','si'),(2,60,2011,'Instituto americano','no'),(3,20,2011,'Aleman','no');
/*!40000 ALTER TABLE `colegio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `criterio_evaluacion`
--

DROP TABLE IF EXISTS `criterio_evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `criterio_evaluacion` (
  `criterio_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nota_maxCE` int(11) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`criterio_id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criterio_evaluacion`
--

LOCK TABLES `criterio_evaluacion` WRITE;
/*!40000 ALTER TABLE `criterio_evaluacion` DISABLE KEYS */;
INSERT INTO `criterio_evaluacion` VALUES (1,2,'Responsabilidad',2,'2012-01-17 15:10:06'),(2,2,'Iniciativa',2,'2012-01-17 15:10:06'),(3,2,'Autoestima',2,'2012-01-17 15:10:06'),(4,2,'Solidaridad',2,'2012-01-17 15:10:06'),(5,2,'Honestidad',2,'2012-01-17 15:10:06'),(6,4,'Responsabilidad',2,'2012-01-17 15:10:06'),(7,4,'Iniciativa',2,'2012-01-17 15:10:06'),(8,4,'Autoestima',2,'2012-01-17 15:10:06'),(9,4,'Solidaridad',2,'2012-01-17 15:10:06'),(10,4,'Honestidad',2,'2012-01-17 15:10:06'),(11,6,'Responsabilidad',2,'2012-01-17 15:10:06'),(12,6,'Iniciativa',2,'2012-01-17 15:10:06'),(13,6,'Autoestima',2,'2012-01-17 15:10:06'),(14,6,'Solidaridad',2,'2012-01-17 15:10:06'),(15,6,'Honestidad',2,'2012-01-17 15:10:06'),(16,1,'practicas',5,'2012-01-17 15:14:03'),(19,5,'pip',6,'2012-01-17 15:32:44'),(18,3,'ssp',8,'2012-01-17 15:14:36'),(21,9,'Responsabilidad',2,'2012-01-18 00:55:10'),(22,9,'Iniciativa',2,'2012-01-18 00:55:10'),(23,9,'Autoestima',2,'2012-01-18 00:55:10'),(24,9,'Solidaridad',2,'2012-01-18 00:55:10'),(25,9,'Honestidad',2,'2012-01-18 00:55:10'),(26,11,'Responsabilidad',2,'2012-01-18 00:55:10'),(27,11,'Iniciativa',2,'2012-01-18 00:55:10'),(28,11,'Autoestima',2,'2012-01-18 00:55:10'),(29,11,'Solidaridad',2,'2012-01-18 00:55:10'),(30,11,'Honestidad',2,'2012-01-18 00:55:10'),(31,13,'Responsabilidad',2,'2012-01-18 00:55:10'),(32,13,'Iniciativa',2,'2012-01-18 00:55:10'),(33,13,'Autoestima',2,'2012-01-18 00:55:10'),(34,13,'Solidaridad',2,'2012-01-18 00:55:10'),(35,13,'Honestidad',2,'2012-01-18 00:55:10'),(36,15,'Responsabilidad',2,'2012-01-18 04:08:20'),(37,15,'Iniciativa',2,'2012-01-18 04:08:20'),(38,15,'Autoestima',2,'2012-01-18 04:08:20'),(39,15,'Solidaridad',2,'2012-01-18 04:08:20'),(40,15,'Honestidad',2,'2012-01-18 04:08:20'),(41,17,'Responsabilidad',2,'2012-01-18 04:08:20'),(42,17,'Iniciativa',2,'2012-01-18 04:08:20'),(43,17,'Autoestima',2,'2012-01-18 04:08:20'),(44,17,'Solidaridad',2,'2012-01-18 04:08:20'),(45,17,'Honestidad',2,'2012-01-18 04:08:20'),(46,19,'Responsabilidad',2,'2012-01-18 04:08:20'),(47,19,'Iniciativa',2,'2012-01-18 04:08:20'),(48,19,'Autoestima',2,'2012-01-18 04:08:20'),(49,19,'Solidaridad',2,'2012-01-18 04:08:20'),(50,19,'Honestidad',2,'2012-01-18 04:08:20'),(51,21,'Responsabilidad',2,'2012-01-18 04:29:37'),(52,21,'Iniciativa',2,'2012-01-18 04:29:37'),(53,21,'Autoestima',2,'2012-01-18 04:29:37'),(54,21,'Solidaridad',2,'2012-01-18 04:29:37'),(55,21,'Honestidad',2,'2012-01-18 04:29:37'),(56,23,'Responsabilidad',2,'2012-01-18 04:29:37'),(57,23,'Iniciativa',2,'2012-01-18 04:29:37'),(58,23,'Autoestima',2,'2012-01-18 04:29:37'),(59,23,'Solidaridad',2,'2012-01-18 04:29:37'),(60,23,'Honestidad',2,'2012-01-18 04:29:37'),(61,25,'Responsabilidad',2,'2012-01-18 04:29:37'),(62,25,'Iniciativa',2,'2012-01-18 04:29:37'),(63,25,'Autoestima',2,'2012-01-18 04:29:37'),(64,25,'Solidaridad',2,'2012-01-18 04:29:37'),(65,25,'Honestidad',2,'2012-01-18 04:29:37'),(66,20,'pruebas',5,'2012-01-18 04:30:15'),(67,20,'practicas',12,'2012-01-18 04:30:28'),(68,27,'Responsabilidad',2,'2012-01-18 04:33:11'),(69,27,'Iniciativa',2,'2012-01-18 04:33:11'),(70,27,'Autoestima',2,'2012-01-18 04:33:11'),(71,27,'Solidaridad',2,'2012-01-18 04:33:11'),(72,27,'Honestidad',2,'2012-01-18 04:33:11'),(73,29,'Responsabilidad',2,'2012-01-18 04:33:11'),(74,29,'Iniciativa',2,'2012-01-18 04:33:11'),(75,29,'Autoestima',2,'2012-01-18 04:33:11'),(76,29,'Solidaridad',2,'2012-01-18 04:33:11'),(77,29,'Honestidad',2,'2012-01-18 04:33:11'),(78,31,'Responsabilidad',2,'2012-01-18 04:33:11'),(79,31,'Iniciativa',2,'2012-01-18 04:33:11'),(80,31,'Autoestima',2,'2012-01-18 04:33:11'),(81,31,'Solidaridad',2,'2012-01-18 04:33:11'),(82,31,'Honestidad',2,'2012-01-18 04:33:11');
/*!40000 ALTER TABLE `criterio_evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `curso_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_curso` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nivel` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nombre_completo` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `colegio_id` int(11) NOT NULL,
  PRIMARY KEY (`curso_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'1 basico azul','1','azul',1),(2,'2 basico azul','2','azul',1),(3,'3 basico azul','3','azul',1),(4,'4 basico azul','4','azul',1),(5,'5 basico azul','5','azul',1),(6,'6 primaria azul','6','azul',1),(7,'7 primaria azul','7','azul',1),(8,'8 primaria azul','8','azul',1),(9,' 1 secundaria azul','9','azul',1),(10,' 2 secundaria azul','10','azul',1),(11,' 3 secundaria azul','11','azul',1),(12,' 4 secundaria azul','12','azul',1),(13,'1 basico blanco','1','blanco',2),(14,'2 basico blanco','2','blanco',2),(15,'3 basico blanco','3','blanco',2),(16,'4 basico blanco','4','blanco',2),(17,'5 basico blanco','5','blanco',2),(18,'6 primaria blanco','6','blanco',2),(19,'7 primaria blanco','7','blanco',2),(20,'8 primaria blanco','8','blanco',2),(21,' 1 secundaria blanco','9','blanco',2),(22,' 2 secundaria blanco','10','blanco',2),(23,' 3 secundaria blanco','11','blanco',2),(24,' 4 secundaria blanco','12','blanco',2);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos`
--

DROP TABLE IF EXISTS `documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos` (
  `documento_id` int(11) NOT NULL AUTO_INCREMENT,
  `asignar_id` int(11) NOT NULL,
  `nombre_documento` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`documento_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos`
--

LOCK TABLES `documentos` WRITE;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
INSERT INTO `documentos` VALUES (1,1,'doc.docx'),(2,5,'doc1.docx');
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion`
--

DROP TABLE IF EXISTS `inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inscripcion` (
  `inscripcion_id` int(11) NOT NULL AUTO_INCREMENT,
  `alumno_id` int(11) NOT NULL,
  `asignar_id` int(11) NOT NULL,
  `gestion` int(11) NOT NULL,
  PRIMARY KEY (`inscripcion_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion`
--

LOCK TABLES `inscripcion` WRITE;
/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
INSERT INTO `inscripcion` VALUES (1,2,1,2011),(2,5,1,2011),(3,7,1,2011),(4,8,1,2011),(5,2,2,2011),(6,5,2,2011),(7,7,2,2011),(8,8,2,2011),(9,3,3,2011),(10,2,4,2011),(11,5,4,2011),(12,7,4,2011),(13,8,4,2011),(14,2,5,2011),(15,5,5,2011),(16,7,5,2011),(17,8,5,2011),(18,10,1,2011),(19,10,2,2011),(20,10,4,2011),(21,10,5,2011);
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libreta`
--

DROP TABLE IF EXISTS `libreta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libreta` (
  `libreta_id` int(11) NOT NULL AUTO_INCREMENT,
  `alumno_id` int(11) NOT NULL,
  `asignar_id` int(11) NOT NULL,
  `areas` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `conocimientosT1` int(11) DEFAULT NULL,
  `DPS_T1` int(11) DEFAULT NULL,
  `puntaje_trimestralT1` int(11) DEFAULT NULL,
  `conocimientosT2` int(11) DEFAULT NULL,
  `DPS_T2` int(11) DEFAULT NULL,
  `puntaje_trimestralT2` int(11) DEFAULT NULL,
  `conocimientosT3` int(11) DEFAULT NULL,
  `DPS_T3` int(11) DEFAULT NULL,
  `puntaje_trimestralT3` int(11) DEFAULT NULL,
  `promedio_anual` int(11) DEFAULT NULL,
  PRIMARY KEY (`libreta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libreta`
--

LOCK TABLES `libreta` WRITE;
/*!40000 ALTER TABLE `libreta` DISABLE KEYS */;
INSERT INTO `libreta` VALUES (1,2,1,'Matematicas',5,9,14,7,2,9,6,3,9,11),(2,2,4,'Quimica',5,4,9,0,2,2,0,3,3,5),(3,2,5,'sociales',0,2,2,0,1,1,0,0,0,1),(4,5,1,'Matematicas',0,2,2,0,2,2,5,1,6,3),(5,5,4,'Quimica',4,3,7,0,4,4,0,3,3,5),(6,5,5,'sociales',0,2,2,0,0,0,0,0,0,1),(7,7,1,'Matematicas',0,1,1,2,0,2,0,1,1,1),(8,7,4,'Quimica',3,4,7,0,4,4,0,3,3,5),(9,7,5,'sociales',0,2,2,0,0,0,0,1,1,1),(10,8,1,'Matematicas',1,0,1,0,2,2,0,1,1,1),(11,8,4,'Quimica',2,6,8,0,2,2,0,4,4,5),(12,8,5,'sociales',0,2,2,0,0,0,0,0,0,1);
/*!40000 ALTER TABLE `libreta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materia` (
  `materia_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `colegio_id` int(11) NOT NULL,
  PRIMARY KEY (`materia_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'Matematicas',1),(2,'artes plasticas',1),(3,'sociales',1),(4,'Quimica',1),(5,'musica',2);
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota` (
  `nota_id` int(11) NOT NULL AUTO_INCREMENT,
  `criterio_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `puntuacion` int(11) NOT NULL,
  `trimestre` int(11) NOT NULL,
  PRIMARY KEY (`nota_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
INSERT INTO `nota` VALUES (1,1,2,1,1,1),(2,2,5,1,2,1),(3,3,7,1,1,1),(4,6,2,1,2,2),(5,7,5,1,2,2),(6,8,8,1,2,2),(7,11,2,1,1,3),(8,13,7,1,1,3),(9,16,2,1,5,1),(11,16,8,1,1,1),(12,18,7,1,2,2),(13,12,5,1,1,3),(14,12,8,1,1,3),(15,19,5,1,5,3),(16,12,2,1,1,3),(17,13,2,1,1,3),(21,19,2,1,6,3),(20,18,2,1,7,2),(22,2,2,1,2,1),(23,3,2,1,2,1),(24,4,2,1,2,1),(25,5,2,1,2,1),(26,37,3,3,2,1),(27,38,3,3,2,1),(28,39,3,3,2,1),(29,42,3,3,2,2),(30,43,3,3,2,2),(31,47,3,3,2,3),(32,54,2,4,2,1),(33,55,2,4,2,1),(34,66,2,4,5,1),(35,52,5,4,1,1),(36,53,5,4,2,1),(37,67,5,4,4,1),(38,52,7,4,2,1),(39,53,7,4,2,1),(40,66,7,4,3,1),(41,51,8,4,2,1),(42,52,8,4,2,1),(43,53,8,4,2,1),(44,67,8,4,2,1),(45,57,2,4,2,2),(46,56,5,4,2,2),(47,59,5,4,2,2),(48,57,7,4,2,2),(49,58,7,4,2,2),(50,56,8,4,2,2),(51,62,2,4,2,3),(52,65,2,4,1,3),(53,63,5,4,2,3),(54,64,5,4,1,3),(55,63,7,4,1,3),(56,64,7,4,2,3),(57,61,8,4,1,3),(58,62,8,4,1,3),(59,65,8,4,2,3),(60,69,2,5,2,1),(61,70,5,5,2,1),(62,71,7,5,2,1),(63,72,8,5,2,1),(64,73,2,5,1,2),(65,79,7,5,1,3);
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor` (
  `profesor_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `apellido` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `usuario` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `estado` enum('activo','inactivo') COLLATE latin1_general_ci NOT NULL,
  `colegio_id` int(11) NOT NULL,
  `estadoImagen` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`profesor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,'marcelo','tinelli','2004-02-04','mtinelli','marcelino','activo',1,'si'),(2,'cecilia','villegas','2005-08-23','cvillegas','123456','activo',1,'no'),(3,'Mario','Perez','2007-11-13','MPerez','123456','activo',2,'no'),(4,'marta','vega','2003-03-20','mvega','mvega123','activo',2,'no'),(5,'claudia','rivera','2011-08-25','crivera','crivera123','activo',1,'no'),(6,'mario','gonsales','2011-07-03','mgonsales','mgonsales123','activo',1,'no'),(7,'fatima','alvarez','1980-03-05','falvarez','123456','activo',1,'no');
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promedio_area`
--

DROP TABLE IF EXISTS `promedio_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promedio_area` (
  `promedio_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  PRIMARY KEY (`promedio_id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promedio_area`
--

LOCK TABLES `promedio_area` WRITE;
/*!40000 ALTER TABLE `promedio_area` DISABLE KEYS */;
INSERT INTO `promedio_area` VALUES (1,1,2,5),(2,1,5,0),(3,1,7,0),(4,1,8,1),(5,2,2,9),(6,2,5,2),(7,2,7,1),(8,2,8,0),(9,3,2,7),(10,3,5,0),(11,3,7,2),(12,3,8,0),(13,4,2,2),(14,4,5,2),(15,4,7,0),(16,4,8,2),(17,5,2,6),(18,5,5,5),(19,5,7,0),(20,5,8,0),(21,6,2,3),(22,6,5,1),(23,6,7,1),(24,6,8,1),(25,7,2,3),(26,7,5,0),(27,7,7,1),(28,7,8,0),(29,14,3,0),(30,15,3,6),(31,16,3,0),(32,17,3,4),(33,18,3,0),(34,19,3,2),(35,20,2,5),(36,20,5,4),(37,20,7,3),(38,20,8,2),(39,21,2,4),(40,21,5,3),(41,21,7,4),(42,21,8,6),(43,22,2,0),(44,22,5,0),(45,22,7,0),(46,22,8,0),(47,23,2,2),(48,23,5,4),(49,23,7,4),(50,23,8,2),(51,24,2,0),(52,24,5,0),(53,24,7,0),(54,24,8,0),(55,25,2,3),(56,25,5,3),(57,25,7,3),(58,25,8,4),(59,26,2,0),(60,26,5,0),(61,26,7,0),(62,26,8,0),(63,27,2,2),(64,27,5,2),(65,27,7,2),(66,27,8,2),(67,28,2,0),(68,28,5,0),(69,28,7,0),(70,28,8,0),(71,29,2,1),(72,29,5,0),(73,29,7,0),(74,29,8,0),(75,30,2,0),(76,30,5,0),(77,30,7,0),(78,30,8,0),(79,31,2,0),(80,31,5,0),(81,31,7,1),(82,31,8,0);
/*!40000 ALTER TABLE `promedio_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promedio_materia`
--

DROP TABLE IF EXISTS `promedio_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promedio_materia` (
  `promMa_id` int(11) NOT NULL AUTO_INCREMENT,
  `asignar_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `trimestre` int(11) NOT NULL,
  PRIMARY KEY (`promMa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promedio_materia`
--

LOCK TABLES `promedio_materia` WRITE;
/*!40000 ALTER TABLE `promedio_materia` DISABLE KEYS */;
INSERT INTO `promedio_materia` VALUES (1,1,2,14,1),(2,1,5,2,1),(3,1,7,1,1),(4,1,8,1,1),(5,1,2,9,2),(6,1,5,2,2),(7,1,7,2,2),(8,1,8,2,2),(9,1,2,9,3),(10,1,5,6,3),(11,1,7,1,3),(12,1,8,1,3),(13,3,3,6,1),(14,3,3,4,2),(15,3,3,2,3),(16,4,2,9,1),(17,4,5,7,1),(18,4,7,7,1),(19,4,8,8,1),(20,4,2,2,2),(21,4,5,4,2),(22,4,7,4,2),(23,4,8,2,2),(24,4,2,3,3),(25,4,5,3,3),(26,4,7,3,3),(27,4,8,4,3),(28,5,2,2,1),(29,5,5,2,1),(30,5,7,2,1),(31,5,8,2,1),(32,5,2,1,2),(33,5,5,0,2),(34,5,7,0,2),(35,5,8,0,2),(36,5,2,0,3),(37,5,5,0,3),(38,5,7,1,3),(39,5,8,0,3);
/*!40000 ALTER TABLE `promedio_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `superadmin`
--

DROP TABLE IF EXISTS `superadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `superadmin` (
  `superadmin_id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `estado` enum('activo','inactivo') COLLATE latin1_general_ci NOT NULL,
  `nombre` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `apellido` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `colegio_id` int(11) NOT NULL,
  PRIMARY KEY (`superadmin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superadmin`
--

LOCK TABLES `superadmin` WRITE;
/*!40000 ALTER TABLE `superadmin` DISABLE KEYS */;
INSERT INTO `superadmin` VALUES (1,'super','123456','activo','Paola','Garcia',0);
/*!40000 ALTER TABLE `superadmin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-21 22:27:21
