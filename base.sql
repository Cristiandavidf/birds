-- MySQL dump 10.13  Distrib 5.7.24-27, for Linux (x86_64)
--
-- Host: localhost    Database: game
-- ------------------------------------------------------
-- Server version	5.7.24-27

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
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Table structure for table `db_admin_log`
--

DROP TABLE IF EXISTS `db_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_admin_log` (
  `id` int(1) NOT NULL,
  `username` varchar(55) NOT NULL,
  `passwordd` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_admin_log`
--

LOCK TABLES `db_admin_log` WRITE;
/*!40000 ALTER TABLE `db_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_back`
--

DROP TABLE IF EXISTS `db_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_back` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_add` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `sum` double NOT NULL DEFAULT '0',
  `bank` double NOT NULL DEFAULT '5900',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_back`
--

LOCK TABLES `db_back` WRITE;
/*!40000 ALTER TABLE `db_back` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_back` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_back_temp`
--

DROP TABLE IF EXISTS `db_back_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_back_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `sum` double NOT NULL DEFAULT '0',
  `bank` double NOT NULL DEFAULT '5900',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_2` (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_back_temp`
--

LOCK TABLES `db_back_temp` WRITE;
/*!40000 ALTER TABLE `db_back_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_back_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_blogs`
--

DROP TABLE IF EXISTS `db_blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `news` text NOT NULL,
  `date_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_blogs`
--

LOCK TABLES `db_blogs` WRITE;
/*!40000 ALTER TABLE `db_blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_blogs_com`
--

DROP TABLE IF EXISTS `db_blogs_com`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_blogs_com` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `news_id` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_blogs_com`
--

LOCK TABLES `db_blogs_com` WRITE;
/*!40000 ALTER TABLE `db_blogs_com` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_blogs_com` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_bonus`
--

DROP TABLE IF EXISTS `db_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_bonus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `sum` double NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_bonus`
--

LOCK TABLES `db_bonus` WRITE;
/*!40000 ALTER TABLE `db_bonus` DISABLE KEYS */;
INSERT INTO `db_bonus` VALUES (1,'Tirta',2,5,1556301650,1556388050),(2,'alfa77',3,5,1556303456,1556389856),(3,'zairbek',5,5,1556304478,1556390878);
/*!40000 ALTER TABLE `db_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_competition`
--

DROP TABLE IF EXISTS `db_competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_competition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `1m` double NOT NULL DEFAULT '0',
  `2m` double NOT NULL DEFAULT '0',
  `3m` double NOT NULL DEFAULT '0',
  `4m` double NOT NULL DEFAULT '0',
  `5m` double NOT NULL DEFAULT '0',
  `user_1` varchar(10) NOT NULL,
  `user_2` varchar(10) NOT NULL,
  `user_3` varchar(10) NOT NULL,
  `user_4` varchar(10) NOT NULL,
  `user_5` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_end` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_competition`
--

LOCK TABLES `db_competition` WRITE;
/*!40000 ALTER TABLE `db_competition` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_competition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_competition_users`
--

DROP TABLE IF EXISTS `db_competition_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_competition_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_competition_users`
--

LOCK TABLES `db_competition_users` WRITE;
/*!40000 ALTER TABLE `db_competition_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_competition_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_conabrul`
--

DROP TABLE IF EXISTS `db_conabrul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_conabrul` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rules` text NOT NULL,
  `about` text NOT NULL,
  `contacts` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_conabrul`
--

LOCK TABLES `db_conabrul` WRITE;
/*!40000 ALTER TABLE `db_conabrul` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_conabrul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_config`
--

DROP TABLE IF EXISTS `db_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(10) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `min_pay` double NOT NULL DEFAULT '15',
  `ser_per_wmr` int(11) NOT NULL DEFAULT '1000',
  `ser_per_wmz` int(11) NOT NULL DEFAULT '3300',
  `ser_per_wme` int(11) NOT NULL DEFAULT '4200',
  `percent_swap` int(11) NOT NULL DEFAULT '0',
  `percent_sell` int(2) NOT NULL DEFAULT '10',
  `items_per_coin` int(11) NOT NULL DEFAULT '7',
  `name_a` varchar(65) NOT NULL,
  `name_b` varchar(65) NOT NULL,
  `name_c` varchar(65) NOT NULL,
  `name_d` varchar(65) NOT NULL,
  `name_e` varchar(65) NOT NULL,
  `name_f` varchar(65) NOT NULL,
  `name_g` varchar(65) NOT NULL,
  `name_h` varchar(65) NOT NULL,
  `name_i` varchar(65) NOT NULL,
  `name_j` varchar(65) NOT NULL,
  `a_in_h` int(11) NOT NULL DEFAULT '0',
  `b_in_h` int(11) NOT NULL DEFAULT '0',
  `c_in_h` int(11) NOT NULL DEFAULT '0',
  `d_in_h` int(11) NOT NULL DEFAULT '0',
  `e_in_h` int(11) NOT NULL DEFAULT '0',
  `f_in_h` int(11) NOT NULL DEFAULT '0',
  `g_in_h` int(11) NOT NULL DEFAULT '0',
  `h_in_h` int(11) NOT NULL DEFAULT '0',
  `i_in_h` int(11) NOT NULL DEFAULT '0',
  `j_in_h` int(11) NOT NULL DEFAULT '0',
  `amount_a_t` int(11) NOT NULL DEFAULT '0',
  `amount_b_t` int(11) NOT NULL DEFAULT '0',
  `amount_c_t` int(11) NOT NULL DEFAULT '0',
  `amount_d_t` int(11) NOT NULL DEFAULT '0',
  `amount_e_t` int(11) NOT NULL DEFAULT '0',
  `amount_f_t` int(11) NOT NULL DEFAULT '0',
  `amount_g_t` int(11) NOT NULL DEFAULT '0',
  `amount_h_t` int(11) NOT NULL DEFAULT '0',
  `amount_i_t` int(11) NOT NULL DEFAULT '0',
  `amount_j_t` int(11) NOT NULL DEFAULT '0',
  `percent_back` int(2) NOT NULL DEFAULT '10',
  `sum_0` float NOT NULL DEFAULT '0.01',
  `sum_1` float NOT NULL DEFAULT '999.99',
  `sum_2` float NOT NULL DEFAULT '2499.99',
  `sum_3` float NOT NULL DEFAULT '4999.99',
  `bon_0` float NOT NULL DEFAULT '0.1',
  `bon_1` float NOT NULL DEFAULT '0.15',
  `bon_2` float NOT NULL DEFAULT '0.2',
  `bon_3` float NOT NULL DEFAULT '0.3',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_config`
--

LOCK TABLES `db_config` WRITE;
/*!40000 ALTER TABLE `db_config` DISABLE KEYS */;
INSERT INTO `db_config` VALUES (1,'ad5min5','ad5min5',20,100,6700,7200,10,100,100,'1-уровень','2-уровень','3-уровень','4-уровень','5-уровень','6-уровень','7-уровень','8-уровень','9-уровень','10-уровень реф',35,185,1000,2150,6850,14500,460,1000,2100,6,1000,5000,25000,50000,150000,300000,300000,600000,1200000,1000,2,0,99.99,499.99,1499.99,0.2,0.05,0.1,0.15);
/*!40000 ALTER TABLE `db_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_insert_money`
--

DROP TABLE IF EXISTS `db_insert_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_insert_money` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `money` double NOT NULL DEFAULT '0',
  `serebro` int(11) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_insert_money`
--

LOCK TABLES `db_insert_money` WRITE;
/*!40000 ALTER TABLE `db_insert_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_insert_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_invcompetition`
--

DROP TABLE IF EXISTS `db_invcompetition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_invcompetition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `1m` double NOT NULL DEFAULT '0',
  `2m` double NOT NULL DEFAULT '0',
  `3m` double NOT NULL DEFAULT '0',
  `4m` double NOT NULL DEFAULT '0',
  `5m` double NOT NULL DEFAULT '0',
  `user_1` varchar(10) NOT NULL,
  `user_2` varchar(10) NOT NULL,
  `user_3` varchar(10) NOT NULL,
  `user_4` varchar(10) NOT NULL,
  `user_5` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_end` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_invcompetition`
--

LOCK TABLES `db_invcompetition` WRITE;
/*!40000 ALTER TABLE `db_invcompetition` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_invcompetition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_invcompetition_users`
--

DROP TABLE IF EXISTS `db_invcompetition_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_invcompetition_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_invcompetition_users`
--

LOCK TABLES `db_invcompetition_users` WRITE;
/*!40000 ALTER TABLE `db_invcompetition_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_invcompetition_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_lottery`
--

DROP TABLE IF EXISTS `db_lottery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user` varchar(10) NOT NULL,
  `date_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_lottery`
--

LOCK TABLES `db_lottery` WRITE;
/*!40000 ALTER TABLE `db_lottery` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_lottery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_lottery2`
--

DROP TABLE IF EXISTS `db_lottery2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_lottery2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user` varchar(10) NOT NULL,
  `date_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_lottery2`
--

LOCK TABLES `db_lottery2` WRITE;
/*!40000 ALTER TABLE `db_lottery2` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_lottery2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_lottery2_winners`
--

DROP TABLE IF EXISTS `db_lottery2_winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_lottery2_winners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_a` varchar(10) NOT NULL,
  `bil_a` int(11) NOT NULL DEFAULT '0',
  `user_b` varchar(10) NOT NULL,
  `bil_b` int(11) NOT NULL DEFAULT '0',
  `user_c` varchar(10) NOT NULL,
  `bil_c` int(11) NOT NULL DEFAULT '0',
  `bank` float NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_lottery2_winners`
--

LOCK TABLES `db_lottery2_winners` WRITE;
/*!40000 ALTER TABLE `db_lottery2_winners` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_lottery2_winners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_lottery_winners`
--

DROP TABLE IF EXISTS `db_lottery_winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_lottery_winners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_a` varchar(10) NOT NULL,
  `bil_a` int(11) NOT NULL DEFAULT '0',
  `user_b` varchar(10) NOT NULL,
  `bil_b` int(11) NOT NULL DEFAULT '0',
  `user_c` varchar(10) NOT NULL,
  `bil_c` int(11) NOT NULL DEFAULT '0',
  `bank` float NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_lottery_winners`
--

LOCK TABLES `db_lottery_winners` WRITE;
/*!40000 ALTER TABLE `db_lottery_winners` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_lottery_winners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_nap`
--

DROP TABLE IF EXISTS `db_nap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_nap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(13) NOT NULL,
  `login` varchar(55) NOT NULL,
  `date` int(13) NOT NULL,
  `summa` float NOT NULL,
  `win` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_nap`
--

LOCK TABLES `db_nap` WRITE;
/*!40000 ALTER TABLE `db_nap` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_nap` ENABLE KEYS */;
UNLOCK TABLES;

CREATE TABLE `db_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `news` text NOT NULL,
  `date_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


--
-- Table structure for table `db_otziv`
--

DROP TABLE IF EXISTS `db_otziv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_otziv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `neg` int(1) NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `like` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_otziv`
--

LOCK TABLES `db_otziv` WRITE;
/*!40000 ALTER TABLE `db_otziv` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_otziv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_payeer_insert`
--

DROP TABLE IF EXISTS `db_payeer_insert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_payeer_insert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `sum` double NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_payeer_insert`
--

LOCK TABLES `db_payeer_insert` WRITE;
/*!40000 ALTER TABLE `db_payeer_insert` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_payeer_insert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_payment`
--

DROP TABLE IF EXISTS `db_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purse` varchar(20) NOT NULL,
  `sum` double NOT NULL DEFAULT '0',
  `comission` double NOT NULL DEFAULT '0',
  `valuta` varchar(3) NOT NULL DEFAULT 'RUB',
  `serebro` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `pay_sys` varchar(100) NOT NULL DEFAULT '0',
  `pay_sys_id` int(11) NOT NULL DEFAULT '0',
  `response` int(1) NOT NULL DEFAULT '0',
  `payment_id` int(11) NOT NULL,
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_payment`
--

LOCK TABLES `db_payment` WRITE;
/*!40000 ALTER TABLE `db_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_product_time`
--

DROP TABLE IF EXISTS `db_product_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_product_time` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `date_add` int(10) unsigned NOT NULL,
  `date_del` int(10) unsigned NOT NULL,
  `status` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_product_time`
--

LOCK TABLES `db_product_time` WRITE;
/*!40000 ALTER TABLE `db_product_time` DISABLE KEYS */;
INSERT INTO `db_product_time` VALUES (1,1,'a_t',1556295618,1564071618,1),(2,2,'a_t',1556301616,1564077616,1),(3,3,'a_t',1556303417,1564079417,1),(4,4,'a_t',1556303822,1564079822,1),(5,5,'a_t',1556304442,1564080442,1);
/*!40000 ALTER TABLE `db_product_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_recovery`
--

DROP TABLE IF EXISTS `db_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_recovery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_recovery`
--

LOCK TABLES `db_recovery` WRITE;
/*!40000 ALTER TABLE `db_recovery` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_recovery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_regkey`
--

DROP TABLE IF EXISTS `db_regkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_regkey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `referer_id` int(11) NOT NULL DEFAULT '0',
  `referer_name` varchar(10) NOT NULL,
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_regkey`
--

LOCK TABLES `db_regkey` WRITE;
/*!40000 ALTER TABLE `db_regkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_regkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_sell_items`
--

DROP TABLE IF EXISTS `db_sell_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_sell_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `a_s` int(11) NOT NULL DEFAULT '0',
  `b_s` int(11) NOT NULL DEFAULT '0',
  `c_s` int(11) NOT NULL DEFAULT '0',
  `d_s` int(11) NOT NULL DEFAULT '0',
  `e_s` int(11) NOT NULL DEFAULT '0',
  `f_s` int(11) NOT NULL DEFAULT '0',
  `g_s` int(11) NOT NULL DEFAULT '0',
  `h_s` int(11) NOT NULL DEFAULT '0',
  `i_s` int(11) NOT NULL DEFAULT '0',
  `j_s` int(11) NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `all_sell` int(11) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_sell_items`
--

LOCK TABLES `db_sell_items` WRITE;
/*!40000 ALTER TABLE `db_sell_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_sell_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_sender`
--

DROP TABLE IF EXISTS `db_sender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_sender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mess` text NOT NULL,
  `page` int(5) NOT NULL DEFAULT '0',
  `sended` int(7) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_sender`
--

LOCK TABLES `db_sender` WRITE;
/*!40000 ALTER TABLE `db_sender` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_sender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_serfing`
--

DROP TABLE IF EXISTS `db_serfing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_serfing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `time_add` int(11) NOT NULL DEFAULT '0',
  `title` varchar(98) CHARACTER SET utf8 NOT NULL,
  `desc` varchar(98) CHARACTER SET utf8 NOT NULL,
  `url` varchar(455) NOT NULL,
  `timer` enum('20','30','40','50','60') NOT NULL DEFAULT '20',
  `move` enum('0','1','','') NOT NULL DEFAULT '0',
  `high` enum('0','1','','') NOT NULL DEFAULT '0',
  `speed` enum('1','2','3','4','5','6','7') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `rating` int(11) NOT NULL DEFAULT '0',
  `country` varchar(50) CHARACTER SET utf8 NOT NULL,
  `wind` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `money` double(10,2) NOT NULL DEFAULT '0.00',
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_serfing`
--

LOCK TABLES `db_serfing` WRITE;
/*!40000 ALTER TABLE `db_serfing` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_serfing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_serfing_view`
--

DROP TABLE IF EXISTS `db_serfing_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_serfing_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) NOT NULL DEFAULT '0',
  `time_add` datetime NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_serfing_view`
--

LOCK TABLES `db_serfing_view` WRITE;
/*!40000 ALTER TABLE `db_serfing_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_serfing_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_stats`
--

DROP TABLE IF EXISTS `db_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_stats` (
  `id` int(11) NOT NULL,
  `all_users` int(11) NOT NULL DEFAULT '0',
  `all_payments` double NOT NULL DEFAULT '0',
  `all_insert` double NOT NULL DEFAULT '0',
  `nap_komission` double NOT NULL DEFAULT '0',
  `bank_nap` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_stats`
--

LOCK TABLES `db_stats` WRITE;
/*!40000 ALTER TABLE `db_stats` DISABLE KEYS */;
INSERT INTO `db_stats` VALUES (1,5,0,0,0,0);
/*!40000 ALTER TABLE `db_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_stats_btree`
--

DROP TABLE IF EXISTS `db_stats_btree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_stats_btree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user` varchar(10) NOT NULL,
  `tree_name` varchar(10) NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_stats_btree`
--

LOCK TABLES `db_stats_btree` WRITE;
/*!40000 ALTER TABLE `db_stats_btree` DISABLE KEYS */;
INSERT INTO `db_stats_btree` VALUES (1,1,'Admin','1-lvl-reg',0,1556295618,1557591618),(2,2,'Tirta','1-lvl-reg',0,1556301616,1557597616),(3,3,'alfa77','1-lvl-reg',0,1556303417,1557599417),(4,4,'tanf93','1-lvl-reg',0,1556303822,1557599822),(5,5,'zairbek','1-lvl-reg',0,1556304442,1557600442);
/*!40000 ALTER TABLE `db_stats_btree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_stats_buy`
--

DROP TABLE IF EXISTS `db_stats_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_stats_buy` (
  `amount_a_t` int(11) NOT NULL,
  `amount_b_t` int(11) NOT NULL,
  `amount_c_t` int(11) NOT NULL,
  `amount_d_t` int(11) NOT NULL,
  `amount_e_t` int(11) NOT NULL,
  `amount_f_t` int(11) NOT NULL,
  `f_in_h` int(11) NOT NULL,
  PRIMARY KEY (`amount_a_t`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_stats_buy`
--

LOCK TABLES `db_stats_buy` WRITE;
/*!40000 ALTER TABLE `db_stats_buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_stats_buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_stats_r24`
--

DROP TABLE IF EXISTS `db_stats_r24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_stats_r24` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `date_reg` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=cp1251 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_stats_r24`
--

LOCK TABLES `db_stats_r24` WRITE;
/*!40000 ALTER TABLE `db_stats_r24` DISABLE KEYS */;
INSERT INTO `db_stats_r24` VALUES (1,1,1556295618,1556382018),(2,2,1556301616,1556388016),(3,3,1556303417,1556389817),(4,4,1556303822,1556390222),(5,5,1556304442,1556390842);
/*!40000 ALTER TABLE `db_stats_r24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_swap_ser`
--

DROP TABLE IF EXISTS `db_swap_ser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_swap_ser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `amount_b` double NOT NULL DEFAULT '0',
  `amount_p` double NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_swap_ser`
--

LOCK TABLES `db_swap_ser` WRITE;
/*!40000 ALTER TABLE `db_swap_ser` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_swap_ser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_users_a`
--

DROP TABLE IF EXISTS `db_users_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_users_a` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refsite` varchar(50) NOT NULL,
  `user` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `referer` varchar(10) NOT NULL,
  `referer_id` int(11) NOT NULL DEFAULT '0',
  `referals` int(11) NOT NULL DEFAULT '0',
  `date_reg` int(11) NOT NULL DEFAULT '0',
  `date_login` int(11) NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `banned` int(1) NOT NULL DEFAULT '0',
  `hide` varchar(11) NOT NULL DEFAULT '0',
  `referer_id2` int(11) NOT NULL DEFAULT '0',
  `referer_id3` int(11) NOT NULL DEFAULT '0',
  `doxod2` int(11) NOT NULL DEFAULT '0',
  `doxod3` int(11) NOT NULL DEFAULT '0',
  `news` int(11) NOT NULL DEFAULT '0',
  `rating` double(10,2) NOT NULL DEFAULT '0.00',
  `time_bonus` int(11) NOT NULL DEFAULT '0',
  `bonus_us` int(11) NOT NULL,
  `payeer` varchar(50) NOT NULL DEFAULT '0',
  `bonus_1` int(11) NOT NULL,
  `bonus_2` int(11) NOT NULL,
  `bonus_3` int(11) NOT NULL,
  `bonus_4` int(11) NOT NULL,
  `plat_pass` varchar(55) NOT NULL DEFAULT '0',
  `ava` varchar(55) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_users_a`
--

LOCK TABLES `db_users_a` WRITE;
/*!40000 ALTER TABLE `db_users_a` DISABLE KEYS */;
INSERT INTO `db_users_a` VALUES (1,'ladagame.org','Admin','sup@ladagame.org','1234567890','Admin',1,1,1556295618,1556295629,531458015,0,'0',0,0,0,0,0,0.00,0,0,'0',0,0,0,0,'0','0'),(2,'my-birds.org','Tirta','tirtakumala93@gmail.com','jarumcoklat','Admin',1,0,1556301616,1556301637,1941102220,0,'0',1,1,0,0,0,0.00,0,0,'0',0,0,0,0,'0','0'),(3,'vip-dragons.org','alfa77','elena.bilovotska1977@gmail.com','123456789','Admin',1,0,1556303417,1556303439,1534888866,0,'0',1,1,0,0,0,0.00,0,0,'0',0,0,0,0,'0','0'),(4,'vip-dragons.org','tanf93','andrey.tanf93@mail.ru','llyllc123456a','Admin',1,0,1556303822,1556303831,1595968547,0,'0',1,1,0,0,0,0.00,0,0,'0',0,0,0,0,'0','0'),(5,'vip-dragons.org','zairbek','gasanium@yandex.ru','gyr9352856714','Admin',1,0,1556304442,1556304459,1318905948,0,'0',1,1,0,0,0,0.00,0,0,'0',0,0,0,0,'9862','0');
/*!40000 ALTER TABLE `db_users_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_users_b`
--

DROP TABLE IF EXISTS `db_users_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_users_b` (
  `id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `money_b` double NOT NULL DEFAULT '0',
  `money_p` double NOT NULL DEFAULT '0',
  `a_t` int(11) NOT NULL DEFAULT '0',
  `b_t` int(11) NOT NULL DEFAULT '0',
  `c_t` int(11) NOT NULL DEFAULT '0',
  `d_t` int(11) NOT NULL DEFAULT '0',
  `e_t` int(11) NOT NULL DEFAULT '0',
  `f_t` int(11) NOT NULL DEFAULT '0',
  `g_t` int(11) NOT NULL DEFAULT '0',
  `h_t` int(11) NOT NULL DEFAULT '0',
  `i_t` int(11) NOT NULL DEFAULT '0',
  `j_t` int(11) NOT NULL DEFAULT '0',
  `a_b` int(11) NOT NULL DEFAULT '0',
  `b_b` int(11) NOT NULL DEFAULT '0',
  `c_b` int(11) NOT NULL DEFAULT '0',
  `d_b` int(11) NOT NULL DEFAULT '0',
  `e_b` int(11) NOT NULL DEFAULT '0',
  `f_b` int(11) NOT NULL DEFAULT '0',
  `g_b` int(11) NOT NULL DEFAULT '0',
  `h_b` int(11) NOT NULL DEFAULT '0',
  `i_b` int(11) NOT NULL DEFAULT '0',
  `j_b` int(11) NOT NULL DEFAULT '0',
  `all_time_a` int(11) NOT NULL DEFAULT '0',
  `all_time_b` int(11) NOT NULL DEFAULT '0',
  `all_time_c` int(11) NOT NULL DEFAULT '0',
  `all_time_d` int(11) NOT NULL DEFAULT '0',
  `all_time_e` int(11) NOT NULL DEFAULT '0',
  `all_time_f` int(11) NOT NULL DEFAULT '0',
  `all_time_g` int(11) NOT NULL DEFAULT '0',
  `all_time_h` int(11) NOT NULL DEFAULT '0',
  `all_time_i` int(11) NOT NULL DEFAULT '0',
  `all_time_j` int(11) NOT NULL DEFAULT '0',
  `last_sbor` int(11) NOT NULL DEFAULT '0',
  `from_referals` double NOT NULL DEFAULT '0',
  `to_referer` double NOT NULL DEFAULT '0',
  `payment_sum` double NOT NULL DEFAULT '0',
  `insert_sum` double NOT NULL DEFAULT '0',
  `pay_points` double NOT NULL DEFAULT '0',
  `ref_proc` double NOT NULL DEFAULT '0',
  `level_proc` int(11) NOT NULL DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_users_b`
--

LOCK TABLES `db_users_b` WRITE;
/*!40000 ALTER TABLE `db_users_b` DISABLE KEYS */;
INSERT INTO `db_users_b` VALUES (1,'Admin',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1556295618,0,0,0,0,0,0,0,0),(2,'Tirta',5,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1556301616,0,0,0,0,0,0,0,0),(3,'alfa77',5,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1556303417,0,0,0,0,0,0,0,0),(4,'tanf93',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1556303822,0,0,0,0,0,0,0,0),(5,'zairbek',5,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1556304442,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `db_users_b` ENABLE KEYS */;
UNLOCK TABLES;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-26 21:49:02
