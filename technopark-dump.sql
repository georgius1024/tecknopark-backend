-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: technopark
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `adonis_schema`
--

DROP TABLE IF EXISTS `adonis_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adonis_schema` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adonis_schema`
--

LOCK TABLES `adonis_schema` WRITE;
/*!40000 ALTER TABLE `adonis_schema` DISABLE KEYS */;
INSERT INTO `adonis_schema` VALUES (3,'1503250034279_user',1,'2018-07-07 09:48:00'),(4,'1503250034280_token',1,'2018-07-07 09:48:00'),(11,'1530968149742_tickets_schema',2,'2018-07-07 22:20:30'),(12,'1524046519458_news_schema',3,'2018-07-07 23:45:21'),(13,'1531017577828_news_schema',4,'2018-07-08 02:40:55');
/*!40000 ALTER TABLE `adonis_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hidden` int(11) NOT NULL DEFAULT '0',
  `at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL,
  `body` longtext,
  `link` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_at_index` (`at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,0,'2018-07-08 19:00:00','директор','sssss',NULL,'2018-07-08 10:07:52','2018-07-08 07:18:27','2018-07-08 02:18:27'),(2,0,'2018-07-08 19:00:00','Проба 2','Проба 2',NULL,'2018-07-08 10:10:00','2018-07-08 07:18:48','2018-07-08 02:18:48'),(3,0,'2018-07-04 19:00:00','Цифровой двойник от Инжинирингового Центра','<h1 class=\"main-title\">Цифровой двойник от Инжинирингового Центра</h1><p><h2>5 июля 2018 г. 17:00 </h2></p>\n<p><img src= \"http://uralhitech.ru/uploads/main/008/5b3dfaad5eadc/engine.png\" width =100% ></p>\n<p>Технопарк высоких технологий Свердловской области «Университетский» в рамках проведения Международной промышленной выставки ИННОПРОМ 2018 представит новую услугу Инжинирингового центра передовых производственных технологий по созданию Цифровых двойников изделий.</p>\n<p>Полный виртуальный близнец изделия –  Digital Twin (Цифровой двойник) – который может существовать параллельно реальному изделию на протяжении всего его жизненного цикла, от создания (производства с учетом физики материалов и процессов) через операции его функционирования и до утилизации. Это обеспечивает необходимый внутренний анализ изделия и его качество.</p>','http://www.uralhitech.ru/news/tsifrovoy-dvoynik-ot-inzhiniringovogo-tsentra','2018-07-11 09:27:53','2018-07-08 08:27:33',NULL),(4,0,'2018-07-04 19:00:00','Технопарк «Университетский» станет одной из площадок выставки ИННОПРОМ-2018','<h1 class=\"main-title\">Технопарк «Университетский» станет одной из площадок выставки ИННОПРОМ-2018</h1><p><h2>5 июля 2018 г. 16:41</h2></p>\n<p><img src= \"http://uralhitech.ru/uploads/main/006/5abdf233cb335/Universitetskij.jpg\" width =100% ></p>\n<p>Технопарк высоких технологий Свердловской области «Университетский» посетят российские и зарубежные делегации в рамках IX международной промышленной выставки ИННОПРОМ-2018, которая пройдет в Екатеринбурге 9-12 июля.</p>\n<p>«С инновационным центром познакомятся гости ИННОПРОМа из ряда российских регионов, а также иностранные делегации, в том числе, из Китайской Народной Республики и Италии. Также на площадке технопарка состоится обсуждение перспективных направлений сотрудничества предприятий Группы «Объединенная судостроительная компания» с промышленными компаниями региона», - сообщил министр промышленности и науки Свердловской области Сергей Пересторонин.</p>\n\n','http://www.uralhitech.ru/news/vmeste-so-skolkovo-i-tekhnoparkom-universitetskiy-k-tsifrovomu-proizvodstvu','2018-07-09 02:29:01','2018-07-08 08:07:16',NULL),(5,0,'2018-07-02 19:00:00','Технопарк: на помощь бизнесу','<h1 class=\"main-title\">Технопарк: на помощь бизнесу</h1><p><h2>3 июля 2018 г. 11:57 </h2></p>\n<p><img src= \"http://uralhitech.ru/uploads/main/008/5b3b107e1fecf/ccdaab6f-6774-476b-b9f1-0f84e4d9a9c3a.jpg\" width =100% ></p>\n\n<p>Специалисты Инжинирингового Центра создали корпус браслета для бесконтактной оплаты Bepay.</p>\n<p>Заказ поступил от компании из Тюменской области, занимающейся  производством часов с GPS датчиком, браслетов с различным функционалом.</p>\n<p>Инжиниринговому центру Технопарка «Университетский» предстояло разработать конструкцию и создать прототип корпуса одного из браслетов для бесконтактной оплаты в терминалах безналичного расчета. Сложность, с которой пришлось столкнуться, как пояснил менеджер проекта Илья Луценко, заключалась в размещении специального чипа внутри корпуса при обязательном сохранении исходного вида браслета со всеми геометрическими размерами.</p>','http://www.uralhitech.ru/news/tekhnopark-na-pomosch-biznesu','2018-07-09 17:29:39','2018-07-08 08:29:44',NULL),(6,0,'2018-06-24 19:00:00','В Технопарке создадут цифровые сервисы для социальных проектов','<h1 class=\"main-title\">В Технопарке создадут цифровые сервисы для социальных проектов</h1><p><h2>25 июня 2018 г. 18:27</h2></p>\n<p><img src= \"http://uralhitech.ru/uploads/main/008/5b2b281db0936/crop-1529930259-crop-1529930173-crop-1529930138-crop-1529930085-crop-1529930029-Hakaton.jpg\" width =100% ></p>\nС 7 по 8 июля школьники, студенты и молодые специалисты смогут принять участие в Socialhack Ekb – хакатоне IT-решений для социальных проектов. Свои кейсы представят ассоциация «Особые люди», арх-группа «Подельники», общественный музей конструктивизма «Ячейка F», объединение сообществ Commhub, Технопарк высоких технологий «Университетский», другие некоммерческие организации и социальные предприниматели.','http://www.uralhitech.ru/news/v-tekhnoparke-sozdadut-tsifrovye-servisy-dlya-sotsialnykh-proektov','2018-07-08 16:30:34','2018-07-08 08:02:02',NULL);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `from` int(11) NOT NULL,
  `at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `after` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `before` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(255) NOT NULL,
  `body` longtext,
  `attachments` longtext,
  `status` varchar(255) DEFAULT NULL,
  `status_history` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'claim',2,'2018-07-08 00:13:49','0000-00-00 00:00:00','0000-00-00 00:00:00','Электропитание','w',NULL,'assignment','[{\"at\":\"2018-07-08 00:13:61\",\"status\":\"assignment\",\"by\":\"Фадеев Илья Николаевич\"}]','2018-07-08 08:22:17','2018-07-08 05:13:49',NULL),(2,'claim',2,'2018-07-08 00:13:51','0000-00-00 00:00:00','0000-00-00 00:00:00','Электропитание','2',NULL,'assignment','[{\"at\":\"2018-07-08 00:13:80\",\"status\":\"assignment\",\"by\":\"Фадеев Илья Николаевич\"}]','2018-07-08 08:22:21','2018-07-08 05:13:51',NULL),(3,'claim',2,'2018-07-07 23:08:16','0000-00-00 00:00:00','0000-00-00 00:00:00','Электропитание','3',NULL,'complete','[{\"at\":\"2018-07-07 23:08:93\",\"status\":\"assignment\",\"by\":\"Администратор\"},{\"at\":\"2018-07-07 23:08:85\",\"status\":\"progress\",\"by\":\"Администратор\"},{\"at\":\"2018-07-07 23:08:23\",\"status\":\"complete\",\"by\":\"Администратор\"}]','2018-07-08 18:22:24','2018-07-08 04:08:16',NULL),(4,'claim',2,'2018-07-07 23:10:50','0000-00-00 00:00:00','0000-00-00 00:00:00','Туалеты','4',NULL,'complete','[{\"at\":\"2018-07-07 23:10:46\",\"status\":\"assignment\",\"by\":\"Администратор\"},{\"at\":\"2018-07-07 23:10:40\",\"status\":\"progress\",\"by\":\"Администратор\"},{\"at\":\"2018-07-07 23:10:06\",\"status\":\"complete\",\"by\":\"Администратор\"}]','2018-07-08 18:22:30','2018-07-08 04:10:50',NULL),(5,'demand',2,'2018-07-08 05:20:20','2018-07-30 01:00:00','0000-00-00 00:00:00','Конференц-зал','122',NULL,'success','[{\"at\":\"2018-07-07 22:39:42\",\"status\":\"success\",\"by\":\"Администратор\"},{\"at\":\"2018-07-07 22:39:63\",\"status\":\"fail\",\"by\":\"Администратор\"},{\"at\":\"2018-07-07 22:39:58\",\"status\":\"success\",\"by\":\"Администратор\"},{\"at\":\"2018-07-08 01:42:38\",\"status\":\"success\",\"by\":\"Администратор\"},{\"at\":\"2018-07-08 01:43:20\",\"status\":\"success\",\"by\":\"Администратор\"},{\"at\":\"2018-07-08 01:43:20\",\"status\":\"success\",\"by\":\"Администратор\"},{\"at\":\"2018-07-08 01:44:13\",\"status\":\"success\",\"by\":\"Администратор\"},{\"at\":\"2018-07-08 01:44:02\",\"status\":\"fail\",\"by\":\"Администратор\"},{\"at\":\"2018-07-08 05:20:77\",\"status\":\"success\",\"by\":\"Вахрушев Никита Сергеевич\"}]','2018-07-10 00:23:01','2018-07-08 10:20:20',NULL),(6,'claim',2,'2018-07-07 23:15:06','0000-00-00 00:00:00','0000-00-00 00:00:00','Двери, замки','Сломалось все',NULL,'complete','[{\"at\":\"2018-07-07 23:15:24\",\"status\":\"assignment\",\"by\":\"Администратор\"},{\"at\":\"2018-07-07 23:15:95\",\"status\":\"progress\",\"by\":\"Администратор\"},{\"at\":\"2018-07-07 23:15:79\",\"status\":\"complete\",\"by\":\"Администратор\"}]','2018-07-08 19:14:52','2018-07-08 04:15:06',NULL),(7,'claim',5,'2018-07-07 23:40:44','0000-00-00 00:00:00','0000-00-00 00:00:00','Двери, замки','Не закрывается дверь кабинет 2021',NULL,'assignment','[{\"at\":\"2018-07-07 23:40:32\",\"status\":\"assignment\",\"by\":\"Фадеев Илья Николаевич\"}]','2018-07-08 09:40:09','2018-07-08 04:40:44',NULL),(8,'claim',5,'2018-07-07 23:44:36','0000-00-00 00:00:00','0000-00-00 00:00:00','Туалеты','засорился мужской туалет на 2 этаже',NULL,'complete','[{\"at\":\"2018-07-07 23:44:09\",\"status\":\"assignment\",\"by\":\"Фадеев Илья Николаевич\"},{\"at\":\"2018-07-07 23:44:63\",\"status\":\"progress\",\"by\":\"Фадеев Илья Николаевич\"},{\"at\":\"2018-07-07 23:44:01\",\"status\":\"complete\",\"by\":\"Фадеев Илья Николаевич\"}]','2018-07-08 19:42:57','2018-07-08 04:44:36',NULL),(9,'claim',5,'2018-07-07 23:44:22','0000-00-00 00:00:00','0000-00-00 00:00:00','Лифты','Не работает второй лифт',NULL,'progress','[{\"at\":\"2018-07-07 23:44:03\",\"status\":\"assignment\",\"by\":\"Фадеев Илья Николаевич\"},{\"at\":\"2018-07-07 23:44:46\",\"status\":\"progress\",\"by\":\"Фадеев Илья Николаевич\"}]','2018-07-08 14:43:28','2018-07-08 04:44:22',NULL),(10,'claim',6,'2018-07-07 23:58:23','0000-00-00 00:00:00','0000-00-00 00:00:00','Туалеты','Ребята слились в 1\\4',NULL,'new',NULL,'2018-07-08 04:58:23','2018-07-08 04:58:23',NULL),(11,'claim',6,'2018-07-08 00:13:21','0000-00-00 00:00:00','0000-00-00 00:00:00','Двери, замки','Не закрывается дверь в душевую',NULL,'complete','[{\"at\":\"2018-07-08 00:13:22\",\"status\":\"assignment\",\"by\":\"Фадеев Илья Николаевич\"},{\"at\":\"2018-07-08 00:13:93\",\"status\":\"progress\",\"by\":\"Фадеев Илья Николаевич\"},{\"at\":\"2018-07-08 00:13:74\",\"status\":\"complete\",\"by\":\"Фадеев Илья Николаевич\"}]','2018-07-08 19:59:33','2018-07-08 05:13:21',NULL),(12,'claim',6,'2018-07-08 00:13:01','0000-00-00 00:00:00','0000-00-00 00:00:00','Электропитание','Жалоб нет есть предложение запитаться от Фернадеса',NULL,'assignment','[{\"at\":\"2018-07-08 00:13:57\",\"status\":\"assignment\",\"by\":\"Фадеев Илья Николаевич\"}]','2018-07-08 10:02:11','2018-07-08 05:13:01',NULL),(13,'claim',7,'2018-07-08 00:12:50','0000-00-00 00:00:00','0000-00-00 00:00:00','Электропитание','Нашего электрического угря замкнуло',NULL,'complete','[{\"at\":\"2018-07-08 00:12:47\",\"status\":\"assignment\",\"by\":\"Фадеев Илья Николаевич\"},{\"at\":\"2018-07-08 00:12:21\",\"status\":\"progress\",\"by\":\"Фадеев Илья Николаевич\"},{\"at\":\"2018-07-08 00:12:42\",\"status\":\"complete\",\"by\":\"Фадеев Илья Николаевич\"}]','2018-07-08 20:04:24','2018-07-08 05:12:50',NULL),(14,'claim',7,'2018-07-08 07:09:31','0000-00-00 00:00:00','0000-00-00 00:00:00','Лифты','я застрял в сломанном лифте помогите у меня клаустрофобия',NULL,'complete','[{\"at\":\"2018-07-08 00:12:35\",\"status\":\"assignment\",\"by\":\"Фадеев Илья Николаевич\"},{\"at\":\"2018-07-08 00:12:36\",\"status\":\"progress\",\"by\":\"Фадеев Илья Николаевич\"},{\"at\":\"2018-07-08 07:09:76\",\"status\":\"complete\",\"by\":\"Администратор\"}]','2018-07-08 20:05:02','2018-07-08 12:09:31',NULL),(15,'claim',7,'2018-07-08 00:12:15','0000-00-00 00:00:00','0000-00-00 00:00:00','Двери, замки','Случайно открыл дверь, а там какая-то корпорация и вокруг какие-то монстры. Пожалуйста помогите я хочу домой!',NULL,'assignment','[{\"at\":\"2018-07-08 00:12:17\",\"status\":\"assignment\",\"by\":\"Фадеев Илья Николаевич\"}]','2018-07-08 10:08:33','2018-07-08 05:12:15',NULL),(16,'demand',2,'2018-07-08 01:26:54','2018-07-09 01:00:00','0000-00-00 00:00:00','Конференц-зал','',NULL,'new',NULL,'2018-07-08 06:26:54','2018-07-08 06:26:54',NULL),(17,'demand',2,'2018-07-08 01:27:58','2018-07-06 04:00:00','0000-00-00 00:00:00','Конференц-зал','',NULL,'new',NULL,'2018-07-08 06:27:58','2018-07-08 06:27:58',NULL),(18,'demand',2,'2018-07-08 05:04:47','2018-07-09 01:00:00','0000-00-00 00:00:00','Конференц-зал','',NULL,'fail','[{\"at\":\"2018-07-08 05:04:97\",\"status\":\"success\",\"by\":\"Фадеев Илья Николаевич\"},{\"at\":\"2018-07-08 05:04:40\",\"status\":\"fail\",\"by\":\"Фадеев Илья Николаевич\"}]','2018-07-08 16:33:30','2018-07-08 10:04:47',NULL),(19,'claim',7,'2018-07-08 01:48:11','0000-00-00 00:00:00','0000-00-00 00:00:00','Электропитание','замкнуло',NULL,'complete','[{\"at\":\"2018-07-08 01:47:32\",\"status\":\"assignment\",\"by\":\"Администратор\"},{\"at\":\"2018-07-08 01:47:49\",\"status\":\"progress\",\"by\":\"Администратор\"},{\"at\":\"2018-07-08 01:48:78\",\"status\":\"complete\",\"by\":\"Администратор\"}]','2018-07-08 21:46:27','2018-07-08 06:48:11',NULL),(20,'claim',2,'2018-07-08 04:22:47','0000-00-00 00:00:00','0000-00-00 00:00:00','Электропитание','Ужасно работает сборка на кордове',NULL,'progress','[{\"at\":\"2018-07-08 04:22:07\",\"status\":\"assignment\",\"by\":\"Администратор\"},{\"at\":\"2018-07-08 04:22:80\",\"status\":\"progress\",\"by\":\"Администратор\"}]','2018-07-08 19:21:14','2018-07-08 09:22:47',NULL),(21,'demand',2,'2018-07-08 05:29:19','2018-07-06 08:25:00','0000-00-00 00:00:00','Конференц-зал','',NULL,'new',NULL,'2018-07-08 10:29:19','2018-07-08 10:29:19',NULL),(22,'demand',7,'2018-07-08 09:01:40','2018-06-28 09:00:00','0000-00-00 00:00:00','Конференц-зал','',NULL,'fail','[{\"at\":\"2018-07-08 08:59:67\",\"status\":\"success\",\"by\":\"Фадеев Илья Николаевич\"},{\"at\":\"2018-07-08 09:01:07\",\"status\":\"fail\",\"by\":\"Фадеев Илья Николаевич\"}]','2018-07-08 20:30:33','2018-07-08 14:01:40',NULL),(23,'demand',2,'2018-07-08 05:35:55','2018-06-30 04:20:00','0000-00-00 00:00:00','Баскетбольная площадка','',NULL,'new',NULL,'2018-07-08 10:35:55','2018-07-08 10:35:55',NULL),(24,'demand',6,'2018-07-08 08:07:27','2018-07-09 01:00:00','0000-00-00 00:00:00','Переговорная комната','Нужно срочно переговорить',NULL,'new',NULL,'2018-07-08 13:07:27','2018-07-08 13:07:27',NULL),(25,'demand',7,'2018-07-17 10:43:04','2018-07-17 20:00:00','0000-00-00 00:00:00','Конференц-зал','Нужно',NULL,'success','[{\"at\":\"2018-07-08 10:03:13\",\"status\":\"success\",\"by\":\"Фадеев Илья Николаевич\"},{\"at\":\"2018-07-17 10:43:04\",\"status\":\"success\",\"by\":\"Администратор\"}]','2018-07-09 01:02:52','2018-07-17 15:43:04',NULL),(26,'claim',7,'2018-07-08 10:05:47','0000-00-00 00:00:00','0000-00-00 00:00:00','Лифты','я застрял!!!',NULL,'progress','[{\"at\":\"2018-07-08 10:05:66\",\"status\":\"assignment\",\"by\":\"Фадеев Илья Николаевич\"},{\"at\":\"2018-07-08 10:05:99\",\"status\":\"progress\",\"by\":\"Фадеев Илья Николаевич\"}]','2018-07-09 01:05:04','2018-07-08 15:05:47',NULL),(27,'demand',2,'2018-07-08 11:44:36','2018-07-07 14:46:00','0000-00-00 00:00:00','Баскетбольная площадка','',NULL,'new',NULL,'2018-07-08 16:44:36','2018-07-08 16:44:36',NULL),(28,'demand',2,'2018-07-17 10:48:36','2018-07-21 04:30:00','0000-00-00 00:00:00','Конференц-зал','22222',NULL,'new',NULL,'2018-07-17 15:48:36','2018-07-17 15:48:36',NULL),(29,'demand',2,'2018-07-17 10:52:36','2018-07-20 01:00:00','0000-00-00 00:00:00','Конференц-зал','',NULL,'new',NULL,'2018-07-17 15:52:36','2018-07-17 15:52:36',NULL),(30,'demand',2,'2018-07-17 11:18:00','2018-07-23 05:20:00','0000-00-00 00:00:00','Конференц-зал','',NULL,'new',NULL,'2018-07-17 16:18:00','2018-07-17 16:18:00',NULL),(31,'demand',2,'2018-07-17 11:32:13','2018-07-20 08:30:00','0000-00-00 00:00:00','Конференц-зал','',NULL,'new',NULL,'2018-07-17 16:32:13','2018-07-17 16:32:13',NULL);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `type` varchar(80) NOT NULL,
  `is_revoked` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_token_unique` (`token`),
  KEY `tokens_user_id_foreign` (`user_id`),
  KEY `tokens_token_index` (`token`),
  CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (1,1,'ae323a1a-9072-43d9-8bea-8cd442ca3639','jwt_refresh_token',0,'2018-07-12 23:10:49','2018-07-12 23:10:49'),(2,1,'7238116d-c32b-4126-84aa-2772d26498be','jwt_refresh_token',0,'2018-07-12 23:11:45','2018-07-12 23:11:45'),(3,1,'b8e8ca7a-ccb5-4614-9697-2bb54f980a6e','jwt_refresh_token',0,'2018-07-12 23:12:03','2018-07-12 23:12:03'),(4,1,'e6036732-113f-4fee-816c-9d33fd9b0017','jwt_refresh_token',0,'2018-07-12 23:12:24','2018-07-12 23:12:24'),(5,1,'97608123-2348-4ccd-abd6-b97a20bc7cde','jwt_refresh_token',0,'2018-07-17 15:39:40','2018-07-17 15:39:40'),(6,2,'03a54ace-f353-4fe8-8624-ae7ca6e12927','jwt_refresh_token',0,'2018-07-17 15:41:30','2018-07-17 15:41:30'),(7,1,'cb70c52f-6302-4e9e-a526-7a472cc0f198','jwt_refresh_token',0,'2018-07-17 15:42:16','2018-07-17 15:42:16'),(8,1,'da0c1bbe-fa16-4f5b-842b-7694fa33896b','jwt_refresh_token',0,'2018-07-17 15:44:31','2018-07-17 15:44:31'),(9,2,'705a4180-027b-485b-bbc0-284394daaf03','jwt_refresh_token',0,'2018-07-17 15:45:14','2018-07-17 15:45:14'),(10,1,'811a85be-5ea1-4566-9c36-99547dd10186','jwt_refresh_token',0,'2018-07-17 15:47:52','2018-07-17 15:47:52'),(11,2,'351db382-fd4a-4be0-bba6-773ee5e6a743','jwt_refresh_token',0,'2018-07-17 15:48:06','2018-07-17 15:48:06'),(12,1,'814e18bd-aa6c-4411-af25-b917b8c0a5c4','jwt_refresh_token',0,'2018-07-17 15:52:08','2018-07-17 15:52:08'),(13,2,'7eaf1180-a41e-4166-9a6b-701128432ea9','jwt_refresh_token',0,'2018-07-17 15:52:26','2018-07-17 15:52:26'),(14,1,'e5e7c017-f50e-489d-aa26-5f6d09fd5274','jwt_refresh_token',0,'2018-07-17 15:55:57','2018-07-17 15:55:57'),(15,2,'fa36c668-81fd-4252-9a22-cc4571a03cc9','jwt_refresh_token',0,'2018-07-17 15:56:19','2018-07-17 15:56:19'),(16,2,'f5b77694-0833-4876-88c4-b6caff881d61','jwt_refresh_token',0,'2018-07-17 16:03:07','2018-07-17 16:03:07');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `verification_code` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `company` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `about` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `car_no` varchar(10) DEFAULT NULL,
  `car_brand` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Администратор','georgius@ural.ru',10,'active','fc921890-81ca-11e8-87db-a122e28ee571','$2a$10$lwFw9fp3w1IPMQF9nkRr2esboe3vj3Tqu5ckmJwUpJMjRNlGMN5Xi','Хакатон','участник','Шарю','1970-03-20','89222088638','ВСС63296','Subaru XV','2018-07-09 06:48:21','2018-07-08 04:49:37',NULL),(2,'Трофимов Кузьма Никитич','sir-georgius@yandex.ru',2,'active','aaa2c770-81d2-11e8-983a-11645253f419','$2a$10$3LH6tf7hLQgR14zHlPbA/OEtj/ued1Z3FeIIQM1tDjDxQXf1MsPPm','ООО Мегаплюс','Директор','','1990-10-01','89222088638','676ВСУ96','Subaru Forester','2018-07-09 22:44:04','2018-07-07 18:10:45',NULL),(3,'Вахрушев Никита Сергеевич','lemonIparty@gmail.com',10,'active','33a17b20-81d8-11e8-b1e8-b72fe77e3d05','$2a$10$E3E.BIfLTe7h9T43nCw5RunUky744OKtDi5bXxL7EXJ9djgaYFa2m','Технопарк','Стажер','111','0000-00-00','89193945955','','','2018-07-08 22:23:41','2018-07-07 16:54:09',NULL),(4,'Фадеев Илья Николаевич','Fadeyin@gmail.com',10,'active','9a1cfb90-822d-11e8-9f6e-1dbd945f56d8','$2a$10$W7.vN/GVPhUAgPg/7.WMbeG/ZkBlovPnI0Mprf77nyh01N//eVXgW','Технопарк','Практикант','Учусь в УрФУ','1997-03-20','89222671197','','','2018-07-08 22:35:00','2018-07-08 04:55:03',NULL),(5,'Иванов Иван Иванович','lovetechnopark@gmail.com',2,'active','103139b0-8231-11e8-a2e7-83a68fed922f','$2a$10$t7DOaBqS3NPJrIMjuAUD2e03zvR2JmI4mSq2.eaySRL33T2woc2cW','ООО НПП «Производство наноматериалов»','Главный инженер','Люблю Технопарк','1992-04-04','89012345678','','','2018-07-08 02:59:47','2018-07-08 02:59:47',NULL),(6,'Станислав Саламович Черчесов','hopemustache@gmail.com',2,'active','6e995b80-8232-11e8-982d-abd16052216b','$2a$10$8QKNrv7ZqjDCU08mDahMWe278m7RpV1r.HBZBweHlu18cg/2soK/6','Сборная России по футболу','Тренер','Гений, люблю выезжать со своими ребятами на шашлыки','1963-02-09','89023456789','','hope11','2018-07-08 08:09:35','2018-07-08 14:04:01',NULL),(7,'Сундар Пичаи','fadeyin3@gmail.com',2,'active','cfc2e740-8233-11e8-a5e5-d989a1b83202','$2a$10$BnGZfc1rpkEOfo0gE4IM9Orfv6wJAd2XPvPi75Xg1JuZnxr.H7O2q','Google Inc.','Ген деректор','Можно всё было бы желание','1972-07-12','89034567890','','','2018-07-08 18:19:27','2018-07-08 14:30:03',NULL),(8,'Администратор','sir.georgius@ya.ru',1,'new','b5b99b60-85f2-11e8-a2a8-bd72dd07bde3','$2a$10$2bFi5OFhP9UGga.9YNhL8.5tXI864x54RkmbE2G2HTqIl9cXXVAm6','','',NULL,NULL,NULL,NULL,NULL,'2018-07-12 21:43:31','2018-07-12 21:43:31',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-23 21:59:01
