CREATE SCHEMA `emp` ;
--
-- Table structure for table `echarts`
--

DROP TABLE IF EXISTS `echarts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `echarts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `echarts`
--

LOCK TABLES `echarts` WRITE;
/*!40000 ALTER TABLE `echarts` DISABLE KEYS */;
INSERT INTO `echarts` VALUES (1,'chenshan',9),(2,'xie',3),(3,'wazi',6);
/*!40000 ALTER TABLE `echarts` ENABLE KEYS */;
UNLOCK TABLES;
