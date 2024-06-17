CREATE DATABASE  IF NOT EXISTS `orcamento_aprovado` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `orcamento_aprovado`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: orcamento_aprovado
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
-- Table structure for table `orcamento`
--

DROP TABLE IF EXISTS `orcamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orcamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `receitas` varchar(45) DEFAULT NULL,
  `despesas` varchar(45) DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `delecao` varchar(45) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_val` datetime DEFAULT NULL,
  `dt_delete` datetime DEFAULT NULL,
  `dt_edicao` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `dt_pagamento` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orcamento`
--

LOCK TABLES `orcamento` WRITE;
/*!40000 ALTER TABLE `orcamento` DISABLE KEYS */;
INSERT INTO `orcamento` VALUES (1,'ORÇAMENTO1306','RECEITAfcbcvb1306','DESPESAfgbcvfb1306','OBSERVAÇÕEjgnvb1306','0','2024-06-10 10:11:32',NULL,'2024-06-13 09:00:57','2024-06-13 09:00:30','1',NULL),(2,'ORÇAMENTO','RECEITAS','DESPESAS','OBSERVAÇÕES','0','2024-06-10 10:15:52',NULL,'2024-06-12 08:36:21','2024-06-11 10:16:16','1',NULL),(3,'orcamentofinal','receitafinal','despesafinal','obsevaçõesfinais','0','2024-06-11 11:09:57',NULL,NULL,NULL,'1',NULL),(4,'tesdte1206','tesdte1206','tesdte1206','tesdte1206','0','2024-06-12 08:35:45',NULL,NULL,NULL,'1',NULL),(5,'zero','zerop','zero','zero','0','2024-06-12 09:31:35',NULL,NULL,NULL,'0','2024-06-13 10:15:01'),(6,'validade','validade','validade','validade','0','2024-06-12 09:52:38','2024-06-12 09:52:38',NULL,NULL,'0',NULL),(7,'nao deu','nao deu','nao deu','naop deu','0','2024-06-12 09:53:50','2024-06-12 09:53:50',NULL,'2024-06-13 10:43:33','0',NULL),(8,'teste1306','receitas1306','despesas1306','observações1306','0','2024-06-13 09:44:19','2024-06-15 00:00:00',NULL,NULL,'1','2024-06-13 11:22:58'),(9,'pagar1306','pagar1306','pagar1306','pagar1306','0','2024-06-13 10:17:37','2024-06-15 00:00:00',NULL,NULL,'1','2024-06-13 11:17:45'),(10,'pagarrrrrrrr','pagarrrrr','pagarrrrrr','pagarrrrrr','1','2024-06-13 10:19:14','2024-06-15 00:00:00','2024-06-17 11:22:00',NULL,'1','2024-06-17 08:51:23'),(11,'NOME1120','RECEITAS1120','DESPESAS1120','OBSERVAÇÕES1120','0','2024-06-17 11:20:27','2024-06-20 00:00:00',NULL,NULL,'0',NULL);
/*!40000 ALTER TABLE `orcamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','admin','123','2024-06-07 10:17:00'),(2,'NOME_TESTE','LOGIN_TESTE','SENHA_TESTE','2024-06-10 10:20:29'),(3,'NOME_TESTE2','LOGIN_TESTE2','SENHA_TESTE2','2024-06-10 10:23:50'),(4,'TESTE1206','LOGIN1206','SENHA1206','2024-06-12 08:30:15');
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

-- Dump completed on 2024-06-17 11:24:57
