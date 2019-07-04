-- MySQL dump 10.13  Distrib 5.1.66, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: unplugged_opencv
-- ------------------------------------------------------
-- Server version	5.1.66-0ubuntu0.11.10.2

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
-- Table structure for table `atividades`
--

DROP TABLE IF EXISTS `atividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atividades` (
  `id_atividade` int(11) NOT NULL AUTO_INCREMENT,
  `atividade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_atividade`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividades`
--

LOCK TABLES `atividades` WRITE;
/*!40000 ALTER TABLE `atividades` DISABLE KEYS */;
INSERT INTO `atividades` VALUES (1,'UNPLUGGED (ABELHA)'),(2,'COMPUTADOR (ANGRY BIRDS)'),(3,'UNPLUGGED (ANGRY BIRDS)'),(4,'COMPUTADOR (ABELHA)'),(5,'ABELHA (UNPLUGGED)'),(6,'ANGRY BIRDS (COMPUTADOR)'),(7,'ABELHA (COMPUTADOR)'),(8,'ANGRY BIRDS (UNPLUGGED)');
/*!40000 ALTER TABLE `atividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atividades_participantes`
--

DROP TABLE IF EXISTS `atividades_participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atividades_participantes` (
  `id_ativ_part` int(11) NOT NULL AUTO_INCREMENT,
  `id_sess_ativ` int(11) DEFAULT NULL,
  `id_participante` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ativ_part`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividades_participantes`
--

LOCK TABLES `atividades_participantes` WRITE;
/*!40000 ALTER TABLE `atividades_participantes` DISABLE KEYS */;
INSERT INTO `atividades_participantes` VALUES (1,1,4),(2,2,4),(3,3,3),(4,4,3),(5,1,5),(6,2,5),(7,3,6),(8,4,6),(9,1,2),(10,2,2),(11,3,1),(12,4,1),(13,5,8),(14,6,8),(15,7,12),(16,8,12),(17,5,7),(18,6,7),(19,7,9),(20,8,9),(21,5,11),(22,6,11),(23,7,10),(24,8,10);
/*!40000 ALTER TABLE `atividades_participantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atividades_respostas`
--

DROP TABLE IF EXISTS `atividades_respostas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atividades_respostas` (
  `id_resposta` int(11) NOT NULL AUTO_INCREMENT,
  `id_ativ_part` int(11) DEFAULT NULL,
  `game` varchar(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `solution_text` varchar(50) DEFAULT NULL,
  `proved` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_resposta`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividades_respostas`
--

LOCK TABLES `atividades_respostas` WRITE;
/*!40000 ALTER TABLE `atividades_respostas` DISABLE KEYS */;
INSERT INTO `atividades_respostas` VALUES (1,11,'birds',1,'foto-11_1562173093.jpg','O-O-',1),(2,3,'birds',1,'foto-3_1562173113.jpg','O-O-',1),(3,7,'birds',1,'foto-7_1562173124.jpg','O-O-',1),(4,11,'bee',2,'foto-11_1562173272.jpg','L-L-',1),(5,3,'bee',2,'foto-3_1562173280.jpg','L-L-',1),(6,7,'bee',2,'foto-7_1562173291.jpg','L-L-',1),(7,11,'birds',2,'','',1),(8,3,'birds',2,'','',1),(9,7,'birds',2,'','',1),(10,11,'birds',2,'foto-11_1562173382.jpg','L-L-',1),(11,3,'birds',2,'foto-3_1562173388.jpg','L-L-',1),(12,7,'birds',2,'','L-L-',1),(13,11,'birds',3,'foto-11_1562173495.jpg','S-S-',1),(14,3,'birds',3,'foto-3_1562173476.jpg','S-S-',1),(15,7,'birds',3,'foto-7_1562173461.jpg','S-S-',1),(16,11,'birds',4,'foto-11_1562173563.jpg','N-N-',1),(17,3,'birds',4,'foto-3_1562173574.jpg','N-N-',1),(18,7,'birds',4,'foto-7_1562173586.jpg','N-N-',1),(19,11,'birds',5,'foto-11_1562173655.jpg','L-L-L-',1),(20,3,'birds',5,'foto-3_1562173665.jpg','L-L-L-',1),(21,7,'birds',5,'foto-7_1562173671.jpg','L-L-L-',1),(22,11,'birds',6,'foto-11_1562173742.jpg','O-S-S-',1),(23,3,'birds',6,'foto-3_1562173755.jpg','O-S-S-',1),(24,7,'birds',6,'foto-7_1562173759.jpg','O-S-S-',1),(25,11,'bee',7,'foto-11_1562173824.jpg','L-N-',1),(26,3,'bee',7,'foto-3_1562173830.jpg','L-N-',1),(27,7,'bee',7,'foto-7_1562173843.jpg','L-N-',1),(28,11,'birds',7,'foto-11_1562173881.jpg','L-N-',1),(29,3,'birds',7,'foto-3_1562173888.jpg','L-N-',1),(30,7,'birds',7,'foto-7_1562173892.jpg','L-N-',1),(31,11,'birds',8,'foto-11_1562173965.jpg','L-N-L-',1),(32,3,'birds',8,'foto-3_1562173973.jpg','L-N-L-',1),(33,7,'birds',8,'foto-7_1562173982.jpg','L-N-O-',1),(34,11,'birds',9,'foto-11_1562174081.jpg','O-S-O-',1),(35,3,'birds',9,'foto-3_1562174092.jpg','O-S-O-',1),(36,7,'birds',9,'foto-7_1562174103.jpg','O-S-O-',1),(37,11,'birds',10,'foto-11_1562174189.jpg','N-L-L-L-S-',1),(38,3,'birds',10,'foto-3_1562174203.jpg','N-L-L-L-S-',1),(39,7,'birds',10,'foto-7_1562174215.jpg','N-L-L-L-S-',1),(40,11,'birds',11,'foto-11_1562174360.jpg','O-O-S-S-L-L-S-',1),(41,3,'birds',11,'foto-3_1562174345.jpg','O-O-S-S-S-L-L-S-',1),(42,7,'birds',11,'foto-7_1562174328.jpg','O-O-S-S-L-L-S-',1),(43,11,'birds',12,'foto-11_1562174502.jpg','L-S-S-',1),(44,3,'birds',12,'foto-3_1562174509.jpg','L-S-S-',1),(45,7,'birds',12,'foto-7_1562174524.jpg','L-S-S-',1),(46,11,'birds',13,'foto-11_1562174602.jpg','S-O-O-N-O-',1),(47,3,'birds',13,'foto-3_1562174614.jpg','S-O-O-N-O-',1),(48,7,'birds',13,'foto-7_1562174625.jpg','S-O-O-N-O-',1),(49,10,'bee',1,'foto-10_1562175128.jpg','L-G-L-L-M-',1),(50,2,'bee',1,'foto-2_1562175139.jpg','L-G-L-M-',1),(51,6,'bee',1,'foto-6_1562175144.jpg','G-L-M-',1),(52,10,'bee',2,'foto-10_1562175392.jpg','S-S-G-L-L-M-',1),(53,2,'bee',2,'foto-2_1562175341.jpg','S-S-G-L-L-M-',1),(54,6,'bee',2,'foto-6_1562175379.jpg','S-S-G-S-S-M-',1),(55,10,'bee',3,'foto-10_1562175522.jpg','O-N-G-O-N-M-',1),(56,2,'bee',3,'foto-2_1562175570.jpg','O-N-G-O-N-M-',1),(57,6,'bee',3,'foto-6_1562175552.jpg','O-N-G-O-N-M-',1),(58,10,'bee',4,'foto-10_1562175706.jpg','N-L-N-L-S-M-',1),(59,2,'bee',4,'foto-2_1562175675.jpg','N-L-G-G-L-S-M-M-',1),(60,6,'bee',4,'foto-6_1562175690.jpg','N-L-G-L-S-M-',1),(61,10,'bee',5,'foto-10_1562175932.jpg','S-G-G-L-G-L-S-M-M-M-',1),(62,2,'bee',5,'foto-2_1562175896.jpg','S-G-G-L-G-L-S-M-M-M-',1),(63,6,'bee',5,'foto-6_1562175916.jpg','S-G-G-L-G-L-S-M-M-M-',1),(64,10,'bee',6,'foto-10_1562176098.jpg','O-G-G-O-M-N-N-M-',1),(65,2,'bee',6,'foto-2_1562176061.jpg','O-G-G-O-M-N-N-M-',1),(66,6,'bee',6,'foto-6_1562176078.jpg','O-G-G-O-M-N-N-M-',1),(67,10,'bee',7,'foto-10_1562176293.jpg','S-G-O-G-O-G-S-M-M-',1),(68,2,'bee',7,'foto-2_1562176260.jpg','S-G-O-G-O-G-S-M-M-',1),(69,6,'bee',7,'foto-6_1562176272.jpg','S-G-O-G-O-G-S-M-M-',1),(70,10,'bee',8,'foto-10_1562176422.jpg','N-G-N-G-L-L-M-M-',1),(71,2,'bee',8,'foto-2_1562176398.jpg','N-G-N-G-L-L-M-M-',1),(72,6,'bee',8,'foto-6_1562176413.jpg','N-G-N-G-L-L-M-M-',1),(73,10,'bee',9,'foto-10_1562176541.jpg','S-G-G-O-O-G-S-M-',1),(74,2,'bee',9,'foto-2_1562176516.jpg','S-G-G-O-O-G-S-M-',1),(75,6,'bee',9,'foto-6_1562176525.jpg','S-G-G-O-O-G-S-M-',1),(76,10,'bee',10,'foto-10_1562176674.jpg','O-G-G-O-G-S-M-S-M-',1),(77,2,'bee',10,'foto-2_1562176640.jpg','O-G-G-O-G-S-M-S-M-',1),(78,6,'bee',10,'foto-6_1562176657.jpg','O-G-G-O-G-S-M-S-M-',1),(79,10,'bee',11,'foto-10_1562176823.jpg','S-G-S-L-G-G-L-N-M-',1),(80,2,'bee',11,'foto-2_1562176805.jpg','S-G-S-L-G-G-L-N-M-',1),(81,6,'bee',11,'foto-6_1562176782.jpg','S-G-S-L-G-G-L-N-M-',1),(82,10,'bee',12,'foto-10_1562176934.jpg','L-G-N-N-N-M-',1),(83,2,'bee',12,'foto-2_1562176899.jpg','O-G-N-N-N-M-',1),(84,6,'bee',12,'foto-6_1562176914.jpg','O-G-N-N-N-M-',1),(85,10,'bee',13,'foto-10_1562177067.jpg','S-G-S-G-O-O-M-M-',1),(86,2,'bee',13,'foto-2_1562177032.jpg','S-G-S-G-O-O-M-M-',1),(87,6,'bee',13,'foto-6_1562177048.jpg','S-G-S-G-O-O-M-M-',1),(88,15,'birds',1,'foto-15_1562240461.jpg','O-O-',1),(89,19,'birds',1,'foto-19_1562240451.jpg','O-O-',1),(90,23,'birds',1,'foto-23_1562240435.jpg','O-O-',1),(91,15,'birds',3,'foto-15_1562240586.jpg','S-S-',1),(92,19,'birds',3,'foto-19_1562240566.jpg','S-S-',1),(93,23,'birds',3,'foto-23_1562240558.jpg','S-S-',1),(94,15,'birds',5,'foto-15_1562240695.jpg','L-L-L-',1),(95,19,'birds',5,'foto-19_1562240691.jpg','L-L-L-',1),(96,23,'birds',5,'foto-23_1562240681.jpg','L-L-L-',1),(97,15,'bee',6,'foto-15_1562240831.jpg','O-S-S-',1),(98,19,'bee',6,'foto-19_1562240825.jpg','O-S-S-',1),(99,23,'bee',6,'foto-23_1562240787.jpg','O-S-S-',1),(100,15,'birds',6,'foto-15_1562240922.jpg','O-S-S-',1),(101,19,'birds',6,'foto-19_1562240908.jpg','O-S-S-',1),(102,23,'birds',6,'foto-23_1562240898.jpg','O-S-S-',1),(103,15,'birds',8,'foto-15_1562241060.jpg','N-',1),(104,19,'birds',8,'foto-19_1562241043.jpg','L-N-L-',1),(105,23,'birds',8,'foto-23_1562241031.jpg','L-N-L-',1),(106,15,'birds',10,'foto-15_1562241221.jpg','N-L-L-L-S-',1),(107,19,'birds',10,'foto-19_1562241214.jpg','N-L-L-L-S-',1),(108,23,'birds',10,'foto-23_1562241198.jpg','N-L-L-L-S-',1),(109,15,'birds',11,'foto-15_1562241424.jpg','O-O-S-S-L-L-S-',1),(110,19,'birds',11,'foto-19_1562241402.jpg','O-O-S-S-L-L-S-',1),(111,23,'birds',11,'foto-23_1562241398.jpg','O-O-S-S-L-L-S-',1),(112,15,'birds',12,'foto-15_1562241580.jpg','L-S-S-',1),(113,19,'birds',12,'foto-19_1562241552.jpg','L-S-S-',1),(114,23,'birds',12,'foto-23_1562241571.jpg','L-S-S-',1),(115,15,'birds',13,'foto-15_1562241758.jpg','S-O-O-N-O-',1),(116,19,'birds',13,'foto-19_1562241738.jpg','S-O-O-N-O-',1),(117,23,'birds',13,'foto-23_1562241727.jpg','S-O-O-N-O-',1),(118,14,'bee',1,'foto-14_1562242077.jpg','L-G-L-L-M-',1),(119,18,'bee',1,'foto-18_1562242098.jpg','L-G-L-L-M-',1),(120,22,'bee',1,'foto-22_1562242110.jpg','L-G-L-L-M-',1),(121,14,'bee',2,'foto-14_1562242248.jpg','S-S-G-L-L-M-',1),(122,18,'bee',2,'foto-18_1562242286.jpg','S-S-O-L-L-M-',1),(123,22,'bee',2,'foto-22_1562242301.jpg','S-S-G-L-L-M-',1),(124,14,'bee',3,'foto-14_1562242483.jpg','O-N-G-O-N-M-',1),(125,18,'bee',3,'foto-18_1562242483.jpg','O-N-G-O-N-M-',1),(126,22,'bee',3,'foto-22_1562242505.jpg','O-N-G-O-N-M-',1),(127,14,'bee',4,'foto-14_1562242661.jpg','N-L-L-G-G-L-S-M-M-',1),(128,18,'bee',4,'foto-18_1562242666.jpg','N-L-G-G-L-S-M-M-',1),(129,22,'bee',4,'foto-22_1562242681.jpg','N-L-G-G-L-S-M-M-',1),(130,14,'bee',5,'foto-14_1562242860.jpg','L-G-G-O-G-L-S-M-M-M-',1),(131,18,'bee',5,'foto-18_1562242873.jpg','S-G-G-L-G-L-S-M-M-M-',1),(132,22,'bee',5,'foto-22_1562242869.jpg','S-G-G-L-G-L-S-M-M-M-',1),(133,14,'bee',6,'foto-14_1562243103.jpg','O-G-G-O-M-N-N-M-',1),(134,18,'bee',6,'foto-18_1562243073.jpg','O-G-G-O-M-N-N-M-',1),(135,22,'bee',6,'foto-22_1562243062.jpg','O-G-G-O-M-N-N-M-',1),(136,14,'bee',7,'foto-18_1562243291.jpg','S-G-O-G-O-G-S-M-M-',1),(137,18,'bee',7,'foto-22_1562243266.jpg','S-G-O-G-O-G-S-M-M-',1),(138,22,'bee',7,'','S-G-O-G-O-G-S-M-M-',1);
/*!40000 ALTER TABLE `atividades_respostas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experimentos`
--

DROP TABLE IF EXISTS `experimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experimentos` (
  `id_experimento` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  `local` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_experimento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experimentos`
--

LOCK TABLES `experimentos` WRITE;
/*!40000 ALTER TABLE `experimentos` DISABLE KEYS */;
INSERT INTO `experimentos` VALUES (1,'Quadrado Latino - Turmas de AgropecuÃ¡ria','IFMA - SRM'),(2,'Quadrado Latino - AGRO 20','IFMA - SRM');
/*!40000 ALTER TABLE `experimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos` (
  `id_grupo` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` VALUES (1,'Turmas de Agro'),(2,'AGRO 20');
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantes`
--

DROP TABLE IF EXISTS `participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participantes` (
  `id_participante` int(11) NOT NULL AUTO_INCREMENT,
  `id_grupo` varchar(30) DEFAULT NULL,
  `participante` varchar(100) DEFAULT NULL,
  `sorteado` int(11) DEFAULT '0',
  PRIMARY KEY (`id_participante`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantes`
--

LOCK TABLES `participantes` WRITE;
/*!40000 ALTER TABLE `participantes` DISABLE KEYS */;
INSERT INTO `participantes` VALUES (1,'1','KLAYVER AGRO10 / LARA AGRO30',1),(2,'1','ADRIANO AGRO30 / RAIAN AGRO10',1),(3,'1','DHEMERSSON AGRO10 / PAULODANIEL AGRO10',1),(4,'1','PAULO AGRO30 / ANAVITORIA AGRO30',1),(5,'1','VALDEIRES AGROSUB / LUILDO AGRO10',1),(6,'1','LUISHENRIQUE AGRO10 / ROBSON AGR010',1),(7,'2','TALES AGRO20 / NATÃ¡LIA AGRO20',1),(8,'2','NÃ¡GILA AGRO20 / ADRIELLE AGRO20',1),(9,'2','LEONARDO AGRO20 / ANTONILSON AGRO20',1),(10,'2','JACKSON AGRO20 / JOSÃ© AGRO20',1),(11,'2','JESSICA AGRO20 / BRUNO AGRO20',1),(12,'2','LORRANA AGRO20 / ESTER AGRO20',1);
/*!40000 ALTER TABLE `participantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quadrados_arranjos`
--

DROP TABLE IF EXISTS `quadrados_arranjos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quadrados_arranjos` (
  `id_quad_arranjo` int(11) NOT NULL AUTO_INCREMENT,
  `id_sessao1` int(11) DEFAULT NULL,
  `id_sessao2` int(11) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_quad_arranjo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quadrados_arranjos`
--

LOCK TABLES `quadrados_arranjos` WRITE;
/*!40000 ALTER TABLE `quadrados_arranjos` DISABLE KEYS */;
INSERT INTO `quadrados_arranjos` VALUES (1,1,2,'UNPLUGGED (abelha)/COMPUTADOR (angry birds) - COMPUTADOR (angry birds)/UNPLUGGED (abelha)'),(2,3,4,'COMPUTADOR (abelha)/UNPLUGGED (angry birds) - UNPLUGGED (angry birds)/COMPUTADOR (abelha)');
/*!40000 ALTER TABLE `quadrados_arranjos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quadrados_replicas`
--

DROP TABLE IF EXISTS `quadrados_replicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quadrados_replicas` (
  `id_quad_replica` int(11) NOT NULL AUTO_INCREMENT,
  `id_quad_arranjo` int(11) DEFAULT NULL,
  `ativ_part1` int(11) DEFAULT NULL,
  `ativ_part2` int(11) DEFAULT NULL,
  `ativ_part3` int(11) DEFAULT NULL,
  `ativ_part4` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_quad_replica`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quadrados_replicas`
--

LOCK TABLES `quadrados_replicas` WRITE;
/*!40000 ALTER TABLE `quadrados_replicas` DISABLE KEYS */;
INSERT INTO `quadrados_replicas` VALUES (1,1,1,2,3,4),(2,1,5,6,7,8),(3,1,9,10,11,12),(4,1,13,14,15,16),(5,1,17,18,19,20),(6,1,21,22,23,24);
/*!40000 ALTER TABLE `quadrados_replicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessoes`
--

DROP TABLE IF EXISTS `sessoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessoes` (
  `id_sessao` int(11) NOT NULL AUTO_INCREMENT,
  `id_atividade1` int(11) DEFAULT NULL,
  `id_atividade2` int(11) DEFAULT NULL,
  `id_experimento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sessao`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessoes`
--

LOCK TABLES `sessoes` WRITE;
/*!40000 ALTER TABLE `sessoes` DISABLE KEYS */;
INSERT INTO `sessoes` VALUES (1,2,1,1),(2,3,4,1),(3,2,1,2),(4,3,4,2);
/*!40000 ALTER TABLE `sessoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessoes_atividades`
--

DROP TABLE IF EXISTS `sessoes_atividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessoes_atividades` (
  `id_sess_ativ` int(11) NOT NULL AUTO_INCREMENT,
  `id_sessao` int(11) DEFAULT NULL,
  `id_atividade` int(11) DEFAULT NULL,
  `data_realizacao` datetime DEFAULT NULL,
  `local` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_sess_ativ`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessoes_atividades`
--

LOCK TABLES `sessoes_atividades` WRITE;
/*!40000 ALTER TABLE `sessoes_atividades` DISABLE KEYS */;
INSERT INTO `sessoes_atividades` VALUES (1,1,2,'0000-00-00 00:00:00',''),(2,1,1,'0000-00-00 00:00:00',''),(3,2,3,'0000-00-00 00:00:00',''),(4,2,4,'0000-00-00 00:00:00',''),(5,3,2,'0000-00-00 00:00:00',''),(6,3,1,'0000-00-00 00:00:00',''),(7,4,3,'0000-00-00 00:00:00',''),(8,4,4,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `sessoes_atividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unplugged_fases`
--

DROP TABLE IF EXISTS `unplugged_fases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unplugged_fases` (
  `id_fase` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `game` varchar(30) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_fase`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unplugged_fases`
--

LOCK TABLES `unplugged_fases` WRITE;
/*!40000 ALTER TABLE `unplugged_fases` DISABLE KEYS */;
INSERT INTO `unplugged_fases` VALUES (1,1,'levels/bee/bee1.jpg','bee','course1/stage/7/puzzle/1'),(2,2,'levels/bee/bee2.jpg','bee','course1/stage/7/puzzle/2'),(3,3,'levels/bee/bee3.jpg','bee','course1/stage/7/puzzle/3'),(4,4,'levels/bee/bee4.jpg','bee','course1/stage/7/puzzle/4'),(5,5,'levels/bee/bee5.jpg','bee','course1/stage/7/puzzle/5'),(6,6,'levels/bee/bee6.jpg','bee','course1/stage/7/puzzle/6'),(7,7,'levels/bee/bee7.jpg','bee','course1/stage/7/puzzle/7'),(8,8,'levels/bee/bee8.jpg','bee','course1/stage/7/puzzle/8'),(9,9,'levels/bee/bee9.jpg','bee','course1/stage/7/puzzle/9'),(10,10,'levels/bee/bee10.jpg','bee','course1/stage/7/puzzle/10'),(11,11,'levels/bee/bee11.jpg','bee','course1/stage/7/puzzle/11'),(12,12,'levels/bee/bee12.jpg','bee','course1/stage/7/puzzle/12'),(13,13,'levels/bee/bee13.jpg','bee','course1/stage/7/puzzle/13'),(14,1,'levels/birds/birds1.jpg','birds','course1/stage/4/puzzle/1'),(15,2,'levels/birds/birds2.jpg','birds','course1/stage/4/puzzle/2'),(16,3,'levels/birds/birds3.jpg','birds','course1/stage/4/puzzle/3'),(17,4,'levels/birds/birds4.jpg','birds','course1/stage/4/puzzle/4'),(18,5,'levels/birds/birds5.jpg','birds','course1/stage/4/puzzle/5'),(19,6,'levels/birds/birds6.jpg','birds','course1/stage/4/puzzle/6'),(20,7,'levels/birds/birds7.jpg','birds','course1/stage/4/puzzle/7'),(21,8,'levels/birds/birds8.jpg','birds','course1/stage/4/puzzle/8'),(22,9,'levels/birds/birds9.jpg','birds','course1/stage/4/puzzle/9'),(23,10,'levels/birds/birds10.jpg','birds','course1/stage/4/puzzle/10'),(24,11,'levels/birds/birds11.jpg','birds','course1/stage/4/puzzle/11'),(25,12,'levels/birds/birds12.jpg','birds','course1/stage/4/puzzle/12'),(26,13,'levels/birds/birds13.jpg','birds','course1/stage/4/puzzle/13');
/*!40000 ALTER TABLE `unplugged_fases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-04 10:04:05
