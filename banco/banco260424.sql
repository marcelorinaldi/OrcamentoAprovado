-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: supermercado
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `valor` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `imagem` longtext COLLATE utf8mb4_general_ci,
  `quantidade` int DEFAULT NULL,
  `apagado` int DEFAULT NULL,
  `tempo` datetime DEFAULT NULL,
  `dt_delete` datetime DEFAULT NULL,
  `dt_edicao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'343434','5','https://acdn.mitiendanube.com/stores/746/397/products/maca-argentina1-a86acef532d11addf315221676880019-640-0.jpg',11,1,'0000-00-00 00:00:00','2024-04-26 08:37:08',NULL),(2,'12312312','3123','123123',123123,1,'0000-00-00 00:00:00',NULL,NULL),(3,'feijao 1kg','3','',0,0,'0000-00-00 00:00:00',NULL,NULL),(4,'pao','2','',6,1,'0000-00-00 00:00:00',NULL,NULL),(5,'queijo','4.50','',0,0,'0000-00-00 00:00:00',NULL,NULL),(6,'presunto Seara','4,99','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmzxfzKVu5bgkkWnLrPy34xkPYnZ2GxtGWYuyaX_AT-w&s',2,0,'0000-00-00 00:00:00',NULL,NULL),(7,'chocolate branco','9,32','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ_fXxma3bADfiHdeRerIxGZKdg0AZmXUhZat9Lkkrlg&s',12,0,'0000-00-00 00:00:00',NULL,NULL),(8,'banana3','43','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZwW3IWpDpIZjhTkrxapzBSKnJXrj3aKMvRS3ctQn0Pw&s',3,0,'0000-00-00 00:00:00',NULL,NULL),(9,'tomate','1,5','',8,1,'0000-00-00 00:00:00',NULL,NULL),(10,'alface','0,50','',0,1,'0000-00-00 00:00:00',NULL,NULL),(11,'produ','12','',0,1,'2024-04-21 15:46:43',NULL,NULL),(12,'teetse','11','',33,1,'2024-04-21 16:16:08',NULL,NULL),(13,'peixe frito','11,90','',12,1,'2024-04-21 16:49:04',NULL,NULL),(14,'vai','45','',56,1,'2024-04-21 16:49:59',NULL,NULL),(15,'ola','33','',34,1,'2024-04-21 16:51:48',NULL,NULL),(16,'com virus','10101','',123,1,'2024-04-21 16:56:09',NULL,NULL),(17,'boa','sem','',0,1,'2024-04-21 18:07:16',NULL,NULL),(18,'produto','valor','',0,1,'2024-04-21 18:08:15',NULL,NULL),(19,'1','2','https://projetaronline.com/wp-content/uploads/2022/11/casa-pequena-planta-baixa-0.png',5,1,'2024-04-21 16:56:09',NULL,NULL),(20,'marcelo','1','http://172.16.42.58/img/oleo.webp',3,1,'2024-04-22 11:40:50',NULL,NULL),(21,'111','222','333',444,1,'2024-04-24 10:14:55',NULL,NULL),(22,'asadfsdf','45','',45,1,'2024-04-25 07:51:07',NULL,NULL),(23,'grwegwffff','324','',2,0,'2024-04-25 08:23:35',NULL,NULL),(24,'fini','8','',1,0,'2024-04-25 09:00:00',NULL,NULL),(25,'feijão1','20','https://propao.agilecdn.com.br/4491_1.jpg',10,0,'2024-04-25 09:09:48',NULL,NULL),(26,'algo2','10','10',10,1,'2024-04-25 09:35:10',NULL,NULL),(27,'oi','10','',1,1,'2024-04-25 09:52:22','2024-04-25 10:02:12',NULL),(28,'435','543','',4353,1,'2024-04-25 09:54:39','2024-04-25 14:01:39',NULL),(29,'eergg','er345','',34543,0,'2024-04-25 10:16:38',NULL,NULL),(30,'6666','666','',666,0,'2024-04-25 12:00:18',NULL,NULL),(31,'maçaa','22','https://cdn.motor1.com/images/mgl/lEmjGg/s3/chevrolet-tracker-rs-2024.jpg',11,0,'2024-04-26 08:16:50',NULL,NULL),(32,'sexta22','422','',4222,0,'2024-04-26 10:05:20',NULL,NULL);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `data_cad` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,NULL,'77','88',NULL),(2,NULL,'666','66',NULL),(3,NULL,'44','444','2024-04-25 12:05:52'),(4,NULL,'34',NULL,'2024-04-25 12:09:12'),(5,NULL,'11','222','2024-04-25 12:10:24'),(6,NULL,'67','11','2024-04-25 12:14:28'),(7,NULL,'arantes','1234','2024-04-26 08:08:42'),(8,'oi','45','rtr','2024-02-02 10:56:00'),(9,'ze',NULL,'12','2024-04-26 08:34:07'),(10,'qweqwe',NULL,'34','2024-04-26 08:34:26'),(11,'asasd','asdasd','77','2024-04-26 08:35:18'),(12,'lucas','lu','987','2024-04-26 08:41:14'),(13,'tio','juca','89','2024-04-26 10:04:26');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 11:30:31
