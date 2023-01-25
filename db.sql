-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: ecomerce
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'computador'),(2,'telefone'),(3,'auricular'),(4,'smartTv'),(5,'router'),(6,'camera'),(7,'consola'),(8,'headfones'),(9,'acessorios'),(10,'Roupa');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL,
  `Pnome` varchar(80) DEFAULT NULL,
  `Unome` varchar(30) NOT NULL,
  `pais` varchar(50) DEFAULT 'Angola',
  `Nempresa` varchar(70) NOT NULL,
  `endereco` varchar(90) NOT NULL,
  `cidade` varchar(70) NOT NULL,
  `condado` varchar(80) NOT NULL,
  `cep` varchar(89) NOT NULL,
  `email` varchar(80) NOT NULL,
  `telefone` varchar(80) NOT NULL,
  KEY `id` (`id`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (2,'PNOME','UNOME','PAIS','EMPRESA','ENDERECO','CIDADE','CONDADO','CEP','MAIL','TEL'),(2,'Abraao','Castelo','AO','Gtwork','Km 14A','Luanda','Angola','6684556','abraaocastelo14@gmail.com','90000000'),(2,'Abraao','Castelo','AO','Gtwork','Km 14A','Luanda','Angola','6684556','abraaocastelo14@gmail.com','90000000'),(2,'Abraao','Castelo','AO','Gtwork','Km 14A','Luanda','Angola','6684556','abraaocastelo14@gmail.com','90000000'),(2,'Abraao','Castelo','AO','Gtwork','Km 14A','Luanda','Angola','6684556','abraaocastelo14@gmail.com','90000000'),(2,'Francisco','Guilherme','AO','Gtwork','Km 14A','Luanda','Angola','6684557','franciscoaa@gmail.com','9344554'),(2,'user@emial.com','user@emial.com','AO','user@emial.com','user@emial.com','Luanda','user@emial.com','333221','admin@email.com','1122233445'),(2,'','','AO','','','','','','admin@email.com',''),(2,'','','AO','','','','','','admin@email.com',''),(2,'user@emial.com','','AO','','','','','','',''),(2,'Alex','','AO','','','','','','','');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalhesProduct`
--

DROP TABLE IF EXISTS `detalhesProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalhesProduct` (
  `idPedido` int DEFAULT NULL,
  `produto` varchar(600) DEFAULT NULL,
  `preco` varchar(300) DEFAULT NULL,
  `qtd` varchar(200) DEFAULT NULL,
  KEY `idPedido` (`idPedido`),
  CONSTRAINT `detalhesProduct_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhesProduct`
--

LOCK TABLES `detalhesProduct` WRITE;
/*!40000 ALTER TABLE `detalhesProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalhesProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idusuarios` int DEFAULT NULL,
  `idprodutos` int DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `qtd` int DEFAULT NULL,
  `vendido` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idCliente` (`idusuarios`),
  KEY `pedido_produtos` (`idprodutos`),
  CONSTRAINT `pedido_produtos` FOREIGN KEY (`idprodutos`) REFERENCES `produtos` (`id`),
  CONSTRAINT `pedido_usuarios` FOREIGN KEY (`idusuarios`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (38,30,25,'1122233445','Luanda','Rua da Nori, Morro Bento, Luanda, Angola',10,1),(39,30,25,'1122233445','Luanda','Rua da Nori, Morro Bento, Luanda, Angola',20,NULL);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(90) DEFAULT NULL,
  `precoUnitario` float DEFAULT NULL,
  `qtd` int DEFAULT NULL,
  `estado` varchar(90) DEFAULT NULL,
  `supplid` int DEFAULT NULL,
  `idCategoria` int DEFAULT NULL,
  `descricao` varchar(289) DEFAULT NULL,
  `imagem` varchar(90) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (25,'Combo roupas de bebe',5000,0,'esgotado',123456,2,'xxxx','63c046d34b9a22023:06:43:47','2023-01-12 18:43:47',58740),(27,'Vestido infantil sinza',3000,10,'stock',1221,10,'xxx','63c1172646c942023:09:32:38','2023-01-13 09:32:38',36000),(28,'Conjunto de roupa femenina',5000,10,'stock',123456,10,'XXX','63c117c63540b2023:09:35:18','2023-01-13 09:35:18',50000),(29,'Conjunto bebe All Stars',5000,4,'stock',1234,10,'XXX','63c11835da9c42023:09:37:09','2023-01-13 09:37:09',25000);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(90) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `password` varchar(90) DEFAULT NULL,
  `permissao` enum('admin','cliente','gerente') DEFAULT 'cliente',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'oooooooooo','casteloabraao@gmail.com','aaaaaaaa','cliente'),(5,'Abílio Dos Santos','abiliobildera@gmail.com','1907','cliente'),(24,'Fernanda Guilherme','gggggggggg@gmail.com','11111','cliente'),(25,'Moisana Castelo','moisanacastelo@gmail.com','16022022','cliente'),(28,'cu','cu@gmail.com','cucucucucu','cliente'),(29,'Francisco Nava','franciscoaa@gmail.com','123456','cliente'),(30,'admin','admin@email.com','admin','admin'),(31,'user','user@emial.com','user','cliente'),(32,'user1','user1@email.com','xYNy5Qg4e8CHmwW','cliente');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17 20:43:31
