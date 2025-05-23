-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `artigo`
--

DROP TABLE IF EXISTS `artigo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artigo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `conteudo` text NOT NULL,
  `data_publicacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `imagem_url` varchar(100) DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `artigo_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artigo`
--

LOCK TABLES `artigo` WRITE;
/*!40000 ALTER TABLE `artigo` DISABLE KEYS */;
INSERT INTO `artigo` VALUES (1,'Teste','teste','2025-05-23 02:07:50','1747966070101-4add9e1d148aa2bdcf6bfc3b8ae101305074de81.png',NULL),(2,'A importância da programação no mundo moderno','A programação se tornou uma das habilidades mais valiosas no século 21. Desde a automação de tarefas simples até o desenvolvimento de tecnologias complexas como inteligência artificial, o conhecimento em código está moldando o futuro. Aprender a programar é abrir portas para oportunidades infinitas.\r\n','2025-05-23 02:10:02','1747966202671-mundoatual.jpg',NULL),(3,'Segurança da Informação: Dicas para se proteger online','Veja práticas essenciais de segurança digital para evitar golpes, vazamento de dados e proteger sua privacidade.\r\n\r\n','2025-05-23 02:47:37','1747968457905-55e4b833652d1ac5a8a248dec8ddec45e3713129.png',NULL),(4,'Diferença entre Front-end e Back-end','Saiba o que diferencia essas duas áreas do desenvolvimento e descubra qual pode combinar mais com você.','2025-05-23 02:47:58','1747968478148-015752dc6732c73653898f90b612edef93fb89ea.png',NULL),(5,'O que é Computação em Nuvem?',' Entenda como a cloud computing funciona, suas vantagens e principais serviços como AWS, Azure e Google Cloud.','2025-05-23 02:48:17','1747968497475-016cd728a018904227c9dd6df0010a238ab009d6.png',NULL),(6,' Introdução ao Desenvolvimento Web',' Introdução ao Desenvolvimento Web','2025-05-23 02:48:45','1747968525867-35461ccb555cc3e0624c2dd19e6cf811ea581a5d.png',NULL);
/*!40000 ALTER TABLE `artigo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-22 23:51:04
