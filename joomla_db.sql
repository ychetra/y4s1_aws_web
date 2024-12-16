-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: joomla_db
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `tc5xu_action_log_config`
--

DROP TABLE IF EXISTS `tc5xu_action_log_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_action_log_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_action_log_config`
--

LOCK TABLES `tc5xu_action_log_config` WRITE;
/*!40000 ALTER TABLE `tc5xu_action_log_config` DISABLE KEYS */;
INSERT INTO `tc5xu_action_log_config` VALUES (1,'article','com_content.article','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),(2,'article','com_content.form','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),(3,'banner','com_banners.banner','id','name','#__banners','PLG_ACTIONLOG_JOOMLA'),(4,'user_note','com_users.note','id','subject','#__user_notes','PLG_ACTIONLOG_JOOMLA'),(5,'media','com_media.file','','name','','PLG_ACTIONLOG_JOOMLA'),(6,'category','com_categories.category','id','title','#__categories','PLG_ACTIONLOG_JOOMLA'),(7,'menu','com_menus.menu','id','title','#__menu_types','PLG_ACTIONLOG_JOOMLA'),(8,'menu_item','com_menus.item','id','title','#__menu','PLG_ACTIONLOG_JOOMLA'),(9,'newsfeed','com_newsfeeds.newsfeed','id','name','#__newsfeeds','PLG_ACTIONLOG_JOOMLA'),(10,'link','com_redirect.link','id','old_url','#__redirect_links','PLG_ACTIONLOG_JOOMLA'),(11,'tag','com_tags.tag','id','title','#__tags','PLG_ACTIONLOG_JOOMLA'),(12,'style','com_templates.style','id','title','#__template_styles','PLG_ACTIONLOG_JOOMLA'),(13,'plugin','com_plugins.plugin','extension_id','name','#__extensions','PLG_ACTIONLOG_JOOMLA'),(14,'component_config','com_config.component','extension_id','name','','PLG_ACTIONLOG_JOOMLA'),(15,'contact','com_contact.contact','id','name','#__contact_details','PLG_ACTIONLOG_JOOMLA'),(16,'module','com_modules.module','id','title','#__modules','PLG_ACTIONLOG_JOOMLA'),(17,'access_level','com_users.level','id','title','#__viewlevels','PLG_ACTIONLOG_JOOMLA'),(18,'banner_client','com_banners.client','id','name','#__banner_clients','PLG_ACTIONLOG_JOOMLA'),(19,'application_config','com_config.application','','name','','PLG_ACTIONLOG_JOOMLA'),(20,'task','com_scheduler.task','id','title','#__scheduler_tasks','PLG_ACTIONLOG_JOOMLA'),(21,'field','com_fields.field','id','title','#__fields','PLG_ACTIONLOG_JOOMLA');
/*!40000 ALTER TABLE `tc5xu_action_log_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_action_logs`
--

DROP TABLE IF EXISTS `tc5xu_action_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_action_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  KEY `idx_user_id_extension` (`user_id`,`extension`),
  KEY `idx_extension_item_id` (`extension`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_action_logs`
--

LOCK TABLES `tc5xu_action_logs` WRITE;
/*!40000 ALTER TABLE `tc5xu_action_logs` DISABLE KEYS */;
INSERT INTO `tc5xu_action_logs` VALUES (1,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-10-09 05:54:05','com_users',783,0,'COM_ACTIONLOGS_DISABLED'),(2,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-10-09 09:03:37','com_users',783,0,'COM_ACTIONLOGS_DISABLED'),(3,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-10-14 02:59:26','com_users',783,0,'COM_ACTIONLOGS_DISABLED'),(4,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-11-02 04:53:54','com_users',783,0,'COM_ACTIONLOGS_DISABLED'),(5,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":244,\"name\":\"mod_phocatopmenu\",\"extension_name\":\"mod_phocatopmenu\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-11-02 05:00:57','com_installer',783,244,'COM_ACTIONLOGS_DISABLED'),(6,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-11-02 05:01:13','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(7,'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED','{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"Phoca Top Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-11-02 05:01:13','com_modules.module',783,110,'COM_ACTIONLOGS_DISABLED'),(8,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"Phoca Top Menu\",\"extension_name\":\"Phoca Top Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-11-02 05:02:56','com_modules.module',783,110,'COM_ACTIONLOGS_DISABLED'),(9,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-11-02 05:02:56','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(10,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":245,\"name\":\"plg_system_phocadesktop\",\"extension_name\":\"plg_system_phocadesktop\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-11-02 05:04:05','com_installer',783,245,'COM_ACTIONLOGS_DISABLED'),(11,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"pngtree-modern-double-color-futuristic-neon-background-image_351866.jpg\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-11-02 05:08:39','com_media.file',783,0,'COM_ACTIONLOGS_DISABLED'),(12,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"245\",\"title\":\"plg_system_phocadesktop\",\"extension_name\":\"plg_system_phocadesktop\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=245\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-11-02 05:09:00','com_plugins.plugin',783,245,'COM_ACTIONLOGS_DISABLED'),(13,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__extensions\"}','2024-11-02 05:09:00','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(14,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":246,\"name\":\"plg_system_phocafilteroptions\",\"extension_name\":\"plg_system_phocafilteroptions\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-11-02 05:10:23','com_installer',783,246,'COM_ACTIONLOGS_DISABLED'),(15,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__extensions\"}','2024-11-02 05:10:47','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(16,'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED','{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":246,\"title\":\"plg_system_phocafilteroptions\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=246\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-11-02 05:10:47','com_plugins.plugin',783,246,'COM_ACTIONLOGS_DISABLED'),(17,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":247,\"name\":\"com_phocacommander\",\"extension_name\":\"com_phocacommander\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-11-02 05:11:47','com_installer',783,247,'COM_ACTIONLOGS_DISABLED'),(18,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-11-17 13:00:47','com_users',783,0,'COM_ACTIONLOGS_DISABLED'),(19,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":783,\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-11-17 13:00:50','com_users',783,783,'COM_ACTIONLOGS_DISABLED'),(20,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-11-17 13:23:17','com_users',783,0,'COM_ACTIONLOGS_DISABLED'),(21,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-11-18 03:03:18','com_users',783,0,'COM_ACTIONLOGS_DISABLED'),(22,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-12-02 13:00:38','com_users',783,0,'COM_ACTIONLOGS_DISABLED'),(23,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-12-02 15:47:51','com_users',783,0,'COM_ACTIONLOGS_DISABLED'),(24,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-12-02 16:07:44','com_users',783,0,'COM_ACTIONLOGS_DISABLED'),(25,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":248,\"name\":\"com_phocacart\",\"extension_name\":\"com_phocacart\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:08:43','com_installer',783,248,'COM_ACTIONLOGS_DISABLED'),(26,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":249,\"name\":\"com_phocainstall\",\"extension_name\":\"com_phocainstall\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:11:44','com_installer',783,249,'COM_ACTIONLOGS_DISABLED'),(27,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":152,\"title\":\"Shop\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=152\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:15:48','com_menus.item',783,152,'COM_ACTIONLOGS_DISABLED'),(28,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":152,\"title\":\"Shop\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=152\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:15:51','com_menus.item',783,152,'COM_ACTIONLOGS_DISABLED'),(29,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":250,\"name\":\"mod_phocacart_brands\",\"extension_name\":\"mod_phocacart_brands\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:17:45','com_installer',783,250,'COM_ACTIONLOGS_DISABLED'),(30,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":251,\"name\":\"mod_phocacart_cart\",\"extension_name\":\"mod_phocacart_cart\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:17:45','com_installer',783,251,'COM_ACTIONLOGS_DISABLED'),(31,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":252,\"name\":\"mod_phocacart_category\",\"extension_name\":\"mod_phocacart_category\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:17:45','com_installer',783,252,'COM_ACTIONLOGS_DISABLED'),(32,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":253,\"name\":\"mod_phocacart_compare\",\"extension_name\":\"mod_phocacart_compare\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:17:45','com_installer',783,253,'COM_ACTIONLOGS_DISABLED'),(33,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":254,\"name\":\"mod_phocacart_currency\",\"extension_name\":\"mod_phocacart_currency\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:17:45','com_installer',783,254,'COM_ACTIONLOGS_DISABLED'),(34,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":255,\"name\":\"mod_phocacart_filter\",\"extension_name\":\"mod_phocacart_filter\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:17:45','com_installer',783,255,'COM_ACTIONLOGS_DISABLED'),(35,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":256,\"name\":\"mod_phocacart_product_scroller\",\"extension_name\":\"mod_phocacart_product_scroller\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:17:45','com_installer',783,256,'COM_ACTIONLOGS_DISABLED'),(36,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":257,\"name\":\"mod_phocacart_product\",\"extension_name\":\"mod_phocacart_product\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:17:45','com_installer',783,257,'COM_ACTIONLOGS_DISABLED'),(37,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":258,\"name\":\"mod_phocacart_search\",\"extension_name\":\"mod_phocacart_search\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:17:45','com_installer',783,258,'COM_ACTIONLOGS_DISABLED'),(38,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":259,\"name\":\"mod_phocacart_wishlist\",\"extension_name\":\"mod_phocacart_wishlist\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:17:45','com_installer',783,259,'COM_ACTIONLOGS_DISABLED'),(39,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":260,\"name\":\"Phoca Cart Modules Package\",\"extension_name\":\"Phoca Cart Modules Package\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:17:45','com_installer',783,260,'COM_ACTIONLOGS_DISABLED'),(40,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"Phoca Cart Search Module\",\"extension_name\":\"Phoca Cart Search Module\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:19:02','com_modules.module',783,119,'COM_ACTIONLOGS_DISABLED'),(41,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-02 16:19:02','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(42,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":112,\"title\":\"Phoca Cart Cart Module\",\"extension_name\":\"Phoca Cart Cart Module\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=112\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:19:28','com_modules.module',783,112,'COM_ACTIONLOGS_DISABLED'),(43,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-02 16:19:28','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(44,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":114,\"title\":\"Phoca Cart Compare Module\",\"extension_name\":\"Phoca Cart Compare Module\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=114\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:19:53','com_modules.module',783,114,'COM_ACTIONLOGS_DISABLED'),(45,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-02 16:19:53','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(46,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":115,\"title\":\"Phoca Cart Currency Module\",\"extension_name\":\"Phoca Cart Currency Module\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=115\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:20:06','com_modules.module',783,115,'COM_ACTIONLOGS_DISABLED'),(47,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-02 16:20:06','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(48,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"Phoca Cart Wish List Module\",\"extension_name\":\"Phoca Cart Wish List Module\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:20:37','com_modules.module',783,120,'COM_ACTIONLOGS_DISABLED'),(49,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-02 16:20:37','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(50,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":261,\"name\":\"cassiopeia_phocacart_beauty\",\"extension_name\":\"cassiopeia_phocacart_beauty\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:24:40','com_installer',783,261,'COM_ACTIONLOGS_DISABLED'),(51,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"cassiopeia_phocacart_beauty - Default\",\"extension_name\":\"cassiopeia_phocacart_beauty - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:25:11','com_templates.style',783,12,'COM_ACTIONLOGS_DISABLED'),(52,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":121,\"title\":\"Logo\",\"extension_name\":\"Logo\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=121\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:27:45','com_modules.module',783,121,'COM_ACTIONLOGS_DISABLED'),(53,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Main Menu\",\"extension_name\":\"Main Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:28:16','com_modules.module',783,1,'COM_ACTIONLOGS_DISABLED'),(54,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-02 16:28:16','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(55,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":246,\"name\":\"plg_system_phocafilteroptions\",\"extension_name\":\"plg_system_phocafilteroptions\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:32:34','com_installer',783,246,'COM_ACTIONLOGS_DISABLED'),(56,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-02 16:32:59','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(57,'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED','{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":116,\"title\":\"Phoca Cart Filter Module\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=116\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:32:59','com_modules.module',783,116,'COM_ACTIONLOGS_DISABLED'),(58,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":116,\"title\":\"Phoca Cart Filter Module\",\"extension_name\":\"Phoca Cart Filter Module\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=116\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:33:18','com_modules.module',783,116,'COM_ACTIONLOGS_DISABLED'),(59,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-02 16:33:18','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(60,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-12-02 16:34:09','com_users',783,0,'COM_ACTIONLOGS_DISABLED'),(61,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":783,\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-12-02 16:34:12','com_users',783,783,'COM_ACTIONLOGS_DISABLED'),(62,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":262,\"name\":\"mod_phocaparticles\",\"extension_name\":\"mod_phocaparticles\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:35:40','com_installer',783,262,'COM_ACTIONLOGS_DISABLED'),(63,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":122,\"title\":\"Phoca Particles\",\"extension_name\":\"Phoca Particles\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=122\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:42:00','com_modules.module',783,122,'COM_ACTIONLOGS_DISABLED'),(64,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-02 16:42:00','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(65,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":122,\"title\":\"Phoca Particles\",\"extension_name\":\"Phoca Particles\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=122\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-02 16:43:08','com_modules.module',783,122,'COM_ACTIONLOGS_DISABLED'),(66,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-02 16:43:08','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(67,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-12-03 01:22:29','com_users',783,0,'COM_ACTIONLOGS_DISABLED'),(68,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-12-03 01:23:27','com_users',783,0,'COM_ACTIONLOGS_DISABLED'),(69,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":122,\"title\":\"Phoca Particles\",\"extension_name\":\"Phoca Particles\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=122\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-03 01:24:46','com_modules.module',783,122,'COM_ACTIONLOGS_DISABLED'),(70,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-03 01:24:46','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(71,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":122,\"title\":\"Phoca Particles\",\"extension_name\":\"Phoca Particles\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=122\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-03 01:25:08','com_modules.module',783,122,'COM_ACTIONLOGS_DISABLED'),(72,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-03 01:25:08','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(73,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":783,\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-12-03 01:25:34','com_users',783,783,'COM_ACTIONLOGS_DISABLED'),(74,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":122,\"title\":\"Phoca Particles\",\"extension_name\":\"Phoca Particles\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=122\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-03 01:26:55','com_modules.module',783,122,'COM_ACTIONLOGS_DISABLED'),(75,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-03 01:26:55','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(76,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":118,\"title\":\"Best Seller Products\",\"extension_name\":\"Best Seller Products\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=118\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-03 01:28:56','com_modules.module',783,118,'COM_ACTIONLOGS_DISABLED'),(77,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-03 01:28:56','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(78,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-03 01:29:03','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(79,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":123,\"title\":\"Best Seller Products (2)\",\"extension_name\":\"Best Seller Products (2)\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=123\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-03 01:29:03','com_modules.module',783,123,'COM_ACTIONLOGS_DISABLED'),(80,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":123,\"title\":\"Feature Products \",\"extension_name\":\"Feature Products \",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=123\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-03 01:30:40','com_modules.module',783,123,'COM_ACTIONLOGS_DISABLED'),(81,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-03 01:30:40','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(82,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-03 01:30:44','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(83,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":124,\"title\":\"Feature Products  (2)\",\"extension_name\":\"Feature Products  (2)\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=124\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-03 01:30:44','com_modules.module',783,124,'COM_ACTIONLOGS_DISABLED'),(84,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":124,\"title\":\"Latest Products\",\"extension_name\":\"Latest Products\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=124\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-03 01:31:24','com_modules.module',783,124,'COM_ACTIONLOGS_DISABLED'),(85,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-03 01:31:24','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(86,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-03 01:31:32','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(87,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":125,\"title\":\"Latest Products (2)\",\"extension_name\":\"Latest Products (2)\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=125\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-03 01:31:32','com_modules.module',783,125,'COM_ACTIONLOGS_DISABLED'),(88,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":125,\"title\":\"Most Viewed\",\"extension_name\":\"Most Viewed\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=125\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-03 01:32:19','com_modules.module',783,125,'COM_ACTIONLOGS_DISABLED'),(89,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":783,\"title\":\"root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"table\":\"#__modules\"}','2024-12-03 01:32:19','com_checkin',783,783,'COM_ACTIONLOGS_DISABLED'),(90,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":126,\"title\":\"Phoca Particles Bottom\",\"extension_name\":\"Phoca Particles Bottom\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=126\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\"}','2024-12-03 01:49:48','com_modules.module',783,126,'COM_ACTIONLOGS_DISABLED'),(91,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":783,\"username\":\"root\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=783\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-12-03 02:26:55','com_users',783,0,'COM_ACTIONLOGS_DISABLED');
/*!40000 ALTER TABLE `tc5xu_action_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_action_logs_extensions`
--

DROP TABLE IF EXISTS `tc5xu_action_logs_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_action_logs_extensions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_action_logs_extensions`
--

LOCK TABLES `tc5xu_action_logs_extensions` WRITE;
/*!40000 ALTER TABLE `tc5xu_action_logs_extensions` DISABLE KEYS */;
INSERT INTO `tc5xu_action_logs_extensions` VALUES (1,'com_banners'),(2,'com_cache'),(3,'com_categories'),(4,'com_config'),(5,'com_contact'),(6,'com_content'),(7,'com_installer'),(8,'com_media'),(9,'com_menus'),(10,'com_messages'),(11,'com_modules'),(12,'com_newsfeeds'),(13,'com_plugins'),(14,'com_redirect'),(15,'com_tags'),(16,'com_templates'),(17,'com_users'),(18,'com_checkin'),(19,'com_scheduler'),(20,'com_fields');
/*!40000 ALTER TABLE `tc5xu_action_logs_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_action_logs_users`
--

DROP TABLE IF EXISTS `tc5xu_action_logs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_action_logs_users` (
  `user_id` int unsigned NOT NULL,
  `notify` tinyint unsigned NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_notify` (`notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_action_logs_users`
--

LOCK TABLES `tc5xu_action_logs_users` WRITE;
/*!40000 ALTER TABLE `tc5xu_action_logs_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_action_logs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_assets`
--

DROP TABLE IF EXISTS `tc5xu_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_assets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_assets`
--

LOCK TABLES `tc5xu_assets` WRITE;
/*!40000 ALTER TABLE `tc5xu_assets` DISABLE KEYS */;
INSERT INTO `tc5xu_assets` VALUES (1,0,0,223,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(8,1,17,38,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}'),(9,1,39,40,1,'com_cpanel','com_cpanel','{}'),(10,1,41,42,1,'com_installer','com_installer','{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,43,46,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1}}'),(12,11,44,45,2,'com_languages.language.1','English (en-GB)','{}'),(13,1,47,48,1,'com_login','com_login','{}'),(14,1,49,50,1,'com_mails','com_mails','{}'),(15,1,51,52,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,53,56,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1}}'),(17,1,57,58,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,59,166,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1}}'),(19,1,167,170,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(20,1,171,172,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1}}'),(21,1,173,174,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1}}'),(23,1,175,176,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1}}'),(24,1,181,184,1,'com_users','com_users','{\"core.admin\":{\"7\":1}}'),(26,1,185,186,1,'com_wrapper','com_wrapper','{}'),(27,8,18,19,2,'com_content.category.2','Uncategorised','{}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{}'),(30,19,168,169,2,'com_newsfeeds.category.5','Uncategorised','{}'),(32,24,182,183,2,'com_users.category.7','Uncategorised','{}'),(33,1,187,188,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,189,190,1,'com_joomlaupdate','com_joomlaupdate','{}'),(35,1,191,192,1,'com_tags','com_tags','{}'),(36,1,193,194,1,'com_contenthistory','com_contenthistory','{}'),(37,1,195,196,1,'com_ajax','com_ajax','{}'),(38,1,197,198,1,'com_postinstall','com_postinstall','{}'),(39,18,60,61,2,'com_modules.module.1','Main Menu','{}'),(40,18,62,63,2,'com_modules.module.2','Login','{}'),(41,18,64,65,2,'com_modules.module.3','Popular Articles','{}'),(42,18,66,67,2,'com_modules.module.4','Recently Added Articles','{}'),(43,18,68,69,2,'com_modules.module.8','Toolbar','{}'),(44,18,70,71,2,'com_modules.module.9','Notifications','{}'),(45,18,72,73,2,'com_modules.module.10','Logged-in Users','{}'),(46,18,74,75,2,'com_modules.module.12','Admin Menu','{}'),(49,18,80,81,2,'com_modules.module.15','Title','{}'),(50,18,82,83,2,'com_modules.module.16','Login Form','{}'),(51,18,84,85,2,'com_modules.module.17','Breadcrumbs','{}'),(52,18,86,87,2,'com_modules.module.79','Multilanguage status','{}'),(53,18,90,91,2,'com_modules.module.86','Joomla Version','{}'),(54,16,54,55,2,'com_menus.menu.1','Main Menu','{}'),(55,18,94,95,2,'com_modules.module.87','Sample Data','{}'),(56,8,20,37,2,'com_content.workflow.1','COM_WORKFLOW_BASIC_WORKFLOW','{}'),(57,56,21,22,3,'com_content.stage.1','COM_WORKFLOW_BASIC_STAGE','{}'),(58,56,23,24,3,'com_content.transition.1','Unpublish','{}'),(59,56,25,26,3,'com_content.transition.2','Publish','{}'),(60,56,27,28,3,'com_content.transition.3','Trash','{}'),(61,56,29,30,3,'com_content.transition.4','Archive','{}'),(62,56,31,32,3,'com_content.transition.5','Feature','{}'),(63,56,33,34,3,'com_content.transition.6','Unfeature','{}'),(64,56,35,36,3,'com_content.transition.7','Publish & Feature','{}'),(65,1,177,178,1,'com_privacy','com_privacy','{}'),(66,1,179,180,1,'com_actionlogs','com_actionlogs','{}'),(67,18,76,77,2,'com_modules.module.88','Latest Actions','{}'),(68,18,78,79,2,'com_modules.module.89','Privacy Dashboard','{}'),(70,18,88,89,2,'com_modules.module.103','Site','{}'),(71,18,92,93,2,'com_modules.module.104','System','{}'),(72,18,96,97,2,'com_modules.module.91','System Dashboard','{}'),(73,18,98,99,2,'com_modules.module.92','Content Dashboard','{}'),(74,18,100,101,2,'com_modules.module.93','Menus Dashboard','{}'),(75,18,102,103,2,'com_modules.module.94','Components Dashboard','{}'),(76,18,104,105,2,'com_modules.module.95','Users Dashboard','{}'),(77,18,106,107,2,'com_modules.module.99','Frontend Link','{}'),(78,18,108,109,2,'com_modules.module.100','Messages','{}'),(79,18,110,111,2,'com_modules.module.101','Post Install Messages','{}'),(80,18,112,113,2,'com_modules.module.102','User Status','{}'),(82,18,114,115,2,'com_modules.module.105','3rd Party','{}'),(83,18,116,117,2,'com_modules.module.106','Help Dashboard','{}'),(84,18,118,119,2,'com_modules.module.107','Privacy Requests','{}'),(85,18,120,121,2,'com_modules.module.108','Privacy Status','{}'),(86,18,122,123,2,'com_modules.module.96','Popular Articles','{}'),(87,18,124,125,2,'com_modules.module.97','Recently Added Articles','{}'),(88,18,126,127,2,'com_modules.module.98','Logged-in Users','{}'),(89,18,128,129,2,'com_modules.module.90','Login Support','{}'),(90,1,199,200,1,'com_scheduler','com_scheduler','{}'),(91,1,201,202,1,'com_associations','com_associations','{}'),(92,1,203,204,1,'com_categories','com_categories','{}'),(93,1,205,206,1,'com_fields','com_fields','{}'),(94,1,207,208,1,'com_workflow','com_workflow','{}'),(95,1,209,210,1,'com_guidedtours','com_guidedtours','{}'),(96,18,130,131,2,'com_modules.module.109','Guided Tours','{}'),(97,1,211,212,1,'com_scheduler.task.1','com_scheduler.task.1','{}'),(98,1,213,214,1,'com_scheduler.task.2','com_scheduler.task.2','{}'),(99,1,215,216,1,'com_scheduler.task.3','com_scheduler.task.3','{}'),(100,18,132,133,2,'com_modules.module.110','Phoca Top Menu','{}'),(101,1,217,218,1,'com_phocacommander','com_phocacommander','{}'),(102,1,219,220,1,'com_phocacart','com_phocacart','{}'),(103,1,221,222,1,'com_phocainstall','com_phocainstall','{}'),(104,18,134,135,2,'com_modules.module.111','Phoca Cart Brands Module','{}'),(105,18,136,137,2,'com_modules.module.112','Phoca Cart Cart Module','{}'),(106,18,138,139,2,'com_modules.module.113','Phoca Cart Category Module','{}'),(107,18,140,141,2,'com_modules.module.114','Phoca Cart Compare Module','{}'),(108,18,142,143,2,'com_modules.module.115','Phoca Cart Currency Module','{}'),(109,18,144,145,2,'com_modules.module.116','Phoca Cart Filter Module','{}'),(110,18,146,147,2,'com_modules.module.117','Phoca Cart Product Scroller Module','{}'),(111,18,148,149,2,'com_modules.module.118','Best Seller Products','{}'),(112,18,150,151,2,'com_modules.module.119','Phoca Cart Search Module','{}'),(113,18,152,153,2,'com_modules.module.120','Phoca Cart Wish List Module','{}'),(114,18,154,155,2,'com_modules.module.121','Logo','{}'),(115,18,156,157,2,'com_modules.module.122','Phoca Particles','{}'),(116,18,158,159,2,'com_modules.module.123','Feature Products ','{}'),(117,18,160,161,2,'com_modules.module.124','Latest Products','{}'),(118,18,162,163,2,'com_modules.module.125','Most Viewed','{}'),(119,18,164,165,2,'com_modules.module.126','Phoca Particles Bottom','{}');
/*!40000 ALTER TABLE `tc5xu_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_associations`
--

DROP TABLE IF EXISTS `tc5xu_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_associations` (
  `id` int NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_associations`
--

LOCK TABLES `tc5xu_associations` WRITE;
/*!40000 ALTER TABLE `tc5xu_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_banner_clients`
--

DROP TABLE IF EXISTS `tc5xu_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_banner_clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_banner_clients`
--

LOCK TABLES `tc5xu_banner_clients` WRITE;
/*!40000 ALTER TABLE `tc5xu_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_banner_tracks`
--

DROP TABLE IF EXISTS `tc5xu_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int unsigned NOT NULL,
  `banner_id` int unsigned NOT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_banner_tracks`
--

LOCK TABLES `tc5xu_banner_tracks` WRITE;
/*!40000 ALTER TABLE `tc5xu_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_banners`
--

DROP TABLE IF EXISTS `tc5xu_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cid` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int NOT NULL DEFAULT '0',
  `impmade` int NOT NULL DEFAULT '0',
  `clicks` int NOT NULL DEFAULT '0',
  `clickurl` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint unsigned NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `version` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_banners`
--

LOCK TABLES `tc5xu_banners` WRITE;
/*!40000 ALTER TABLE `tc5xu_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_categories`
--

DROP TABLE IF EXISTS `tc5xu_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `hits` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_categories`
--

LOCK TABLES `tc5xu_categories` WRITE;
/*!40000 ALTER TABLE `tc5xu_categories` DISABLE KEYS */;
INSERT INTO `tc5xu_categories` VALUES (1,0,0,0,11,0,'','system','ROOT','root','','',1,NULL,NULL,1,'{}','','','{}',783,'2024-10-09 05:53:38',783,'2024-10-09 05:53:38',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"workflow_id\":\"use_default\"}','','','{\"author\":\"\",\"robots\":\"\"}',783,'2024-10-09 05:53:38',783,'2024-10-09 05:53:38',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',783,'2024-10-09 05:53:38',783,'2024-10-09 05:53:38',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',783,'2024-10-09 05:53:38',783,'2024-10-09 05:53:38',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',783,'2024-10-09 05:53:38',783,'2024-10-09 05:53:38',0,'*',1),(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',783,'2024-10-09 05:53:38',783,'2024-10-09 05:53:38',0,'*',1);
/*!40000 ALTER TABLE `tc5xu_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_contact_details`
--

DROP TABLE IF EXISTS `tc5xu_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_contact_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint unsigned NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `catid` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `hits` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_contact_details`
--

LOCK TABLES `tc5xu_contact_details` WRITE;
/*!40000 ALTER TABLE `tc5xu_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_content`
--

DROP TABLE IF EXISTS `tc5xu_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_content` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_content`
--

LOCK TABLES `tc5xu_content` WRITE;
/*!40000 ALTER TABLE `tc5xu_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_content_frontpage`
--

DROP TABLE IF EXISTS `tc5xu_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_content_frontpage` (
  `content_id` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_content_frontpage`
--

LOCK TABLES `tc5xu_content_frontpage` WRITE;
/*!40000 ALTER TABLE `tc5xu_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_content_rating`
--

DROP TABLE IF EXISTS `tc5xu_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_content_rating` (
  `content_id` int NOT NULL DEFAULT '0',
  `rating_sum` int unsigned NOT NULL DEFAULT '0',
  `rating_count` int unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_content_rating`
--

LOCK TABLES `tc5xu_content_rating` WRITE;
/*!40000 ALTER TABLE `tc5xu_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_content_types`
--

DROP TABLE IF EXISTS `tc5xu_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_content_types` (
  `type_id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_content_types`
--

LOCK TABLES `tc5xu_content_types` WRITE;
/*!40000 ALTER TABLE `tc5xu_content_types` DISABLE KEYS */;
INSERT INTO `tc5xu_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `tc5xu_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_contentitem_tag_map`
--

DROP TABLE IF EXISTS `tc5xu_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_contentitem_tag_map`
--

LOCK TABLES `tc5xu_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `tc5xu_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_extensions`
--

DROP TABLE IF EXISTS `tc5xu_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_extensions` (
  `extension_id` int NOT NULL AUTO_INCREMENT,
  `package_id` int NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text COLLATE utf8mb4_unicode_ci,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL,
  `enabled` tinyint NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '1',
  `protected` tinyint NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int DEFAULT '0',
  `state` int DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_extensions`
--

LOCK TABLES `tc5xu_extensions` WRITE;
/*!40000 ALTER TABLE `tc5xu_extensions` DISABLE KEYS */;
INSERT INTO `tc5xu_extensions` VALUES (1,0,'com_wrapper','component','com_wrapper',NULL,'',1,1,1,0,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Wrapper\",\"filename\":\"wrapper\"}','','',NULL,NULL,0,0,NULL),(2,0,'com_admin','component','com_admin',NULL,'',1,1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Admin\"}','','',NULL,NULL,0,0,NULL),(3,0,'com_banners','component','com_banners',NULL,'',1,1,1,0,1,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Banners\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','',NULL,NULL,0,0,NULL),(4,0,'com_cache','component','com_cache',NULL,'',1,1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cache\"}','','',NULL,NULL,0,0,NULL),(5,0,'com_categories','component','com_categories',NULL,'',1,1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Categories\"}','','',NULL,NULL,0,0,NULL),(6,0,'com_checkin','component','com_checkin',NULL,'',1,1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Checkin\"}','','',NULL,NULL,0,0,NULL),(7,0,'com_contact','component','com_contact',NULL,'',1,1,1,0,1,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contact\",\"filename\":\"contact\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}','',NULL,NULL,0,0,NULL),(8,0,'com_cpanel','component','com_cpanel',NULL,'',1,1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"2007-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cpanel\"}','','',NULL,NULL,0,0,NULL),(9,0,'com_installer','component','com_installer',NULL,'',1,1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Installer\"}','{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','',NULL,NULL,0,0,NULL),(10,0,'com_languages','component','com_languages',NULL,'',1,1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Languages\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','',NULL,NULL,0,0,NULL),(11,0,'com_login','component','com_login',NULL,'',1,1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Login\"}','','',NULL,NULL,0,0,NULL),(12,0,'com_media','component','com_media',NULL,'',1,1,0,1,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Media\",\"filename\":\"media\"}','{\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,avif,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp,avif\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,image\\/avif,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}','',NULL,NULL,0,0,NULL),(13,0,'com_menus','component','com_menus',NULL,'',1,1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Menus\",\"filename\":\"menus\"}','{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}','',NULL,NULL,0,0,NULL),(14,0,'com_messages','component','com_messages',NULL,'',1,1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Messages\"}','','',NULL,NULL,0,0,NULL),(15,0,'com_modules','component','com_modules',NULL,'',1,1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Modules\",\"filename\":\"modules\"}','','',NULL,NULL,0,0,NULL),(16,0,'com_newsfeeds','component','com_newsfeeds',NULL,'',1,1,1,0,1,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}','',NULL,NULL,0,0,NULL),(17,0,'com_plugins','component','com_plugins',NULL,'',1,1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Plugins\"}','','',NULL,NULL,0,0,NULL),(18,0,'com_templates','component','com_templates',NULL,'',1,1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Templates\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json\",\"font_formats\":\"woff,woff2,ttf,otf\",\"compressed_formats\":\"zip\",\"difference\":\"SideBySide\"}','',NULL,NULL,0,0,NULL),(19,0,'com_content','component','com_content',NULL,'',1,1,0,1,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Content\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":4,\"blog_class\":\"\",\"num_columns\":1,\"multi_column_order\":\"0\",\"num_links\":4,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}','',NULL,NULL,0,0,NULL),(20,0,'com_config','component','com_config',NULL,'',1,1,0,1,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Config\",\"filename\":\"config\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','',NULL,NULL,0,0,NULL),(21,0,'com_redirect','component','com_redirect',NULL,'',1,1,0,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Redirect\"}','','',NULL,NULL,0,0,NULL),(22,0,'com_users','component','com_users',NULL,'',1,1,0,1,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Users\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','',NULL,NULL,0,0,NULL),(23,0,'com_finder','component','com_finder',NULL,'',1,1,0,0,1,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Finder\",\"filename\":\"finder\"}','{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}','',NULL,NULL,0,0,NULL),(24,0,'com_joomlaupdate','component','com_joomlaupdate',NULL,'',1,1,0,1,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Joomlaupdate\"}','{\"updatesource\":\"default\",\"customurl\":\"\"}','',NULL,NULL,0,0,NULL),(25,0,'com_tags','component','com_tags',NULL,'',1,1,1,0,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"2013-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Tags\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','',NULL,NULL,0,0,NULL),(26,0,'com_contenthistory','component','com_contenthistory',NULL,'',1,1,1,0,1,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"2013-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contenthistory\",\"filename\":\"contenthistory\"}','','',NULL,NULL,0,0,NULL),(27,0,'com_ajax','component','com_ajax',NULL,'',1,1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','',NULL,NULL,0,0,NULL),(28,0,'com_postinstall','component','com_postinstall',NULL,'',1,1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Postinstall\"}','','',NULL,NULL,0,0,NULL),(29,0,'com_fields','component','com_fields',NULL,'',1,1,1,0,1,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL),(30,0,'com_associations','component','com_associations',NULL,'',1,1,1,0,1,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Associations\"}','','',NULL,NULL,0,0,NULL),(31,0,'com_privacy','component','com_privacy',NULL,'',1,1,1,0,1,'{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Privacy\",\"filename\":\"privacy\"}','','',NULL,NULL,0,0,NULL),(32,0,'com_actionlogs','component','com_actionlogs',NULL,'',1,1,1,0,1,'{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Actionlogs\"}','{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_fields\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}','',NULL,NULL,0,0,NULL),(33,0,'com_workflow','component','com_workflow',NULL,'',1,1,0,1,1,'{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Workflow\"}','{}','',NULL,NULL,0,0,NULL),(34,0,'com_mails','component','com_mails',NULL,'',1,1,1,1,1,'{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"2019-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Mails\"}','','',NULL,NULL,0,0,NULL),(35,0,'com_scheduler','component','com_scheduler',NULL,'',1,1,1,0,1,'{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Scheduler\"}','{}','',NULL,NULL,0,0,NULL),(36,0,'com_guidedtours','component','com_guidedtours',NULL,'',1,1,0,0,1,'{\"name\":\"com_guidedtours\",\"type\":\"component\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"COM_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Guidedtours\"}','{}','',NULL,NULL,0,0,NULL),(37,0,'lib_joomla','library','joomla',NULL,'',0,1,1,1,1,'{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','',NULL,NULL,0,0,NULL),(38,0,'lib_phpass','library','phpass',NULL,'',0,1,1,1,1,'{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-01\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','',NULL,NULL,0,0,NULL),(39,0,'mod_articles_archive','module','mod_articles_archive',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesArchive\",\"filename\":\"mod_articles_archive\"}','','',NULL,NULL,0,0,NULL),(40,0,'mod_articles_latest','module','mod_articles_latest',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesLatest\",\"filename\":\"mod_articles_latest\"}','','',NULL,NULL,0,0,NULL),(41,0,'mod_articles_popular','module','mod_articles_popular',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesPopular\",\"filename\":\"mod_articles_popular\"}','','',NULL,NULL,0,0,NULL),(42,0,'mod_banners','module','mod_banners',NULL,'',0,1,1,0,1,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Banners\",\"filename\":\"mod_banners\"}','','',NULL,NULL,0,0,NULL),(43,0,'mod_breadcrumbs','module','mod_breadcrumbs',NULL,'',0,1,1,0,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Breadcrumbs\",\"filename\":\"mod_breadcrumbs\"}','','',NULL,NULL,0,0,NULL),(44,0,'mod_custom','module','mod_custom',NULL,'',0,1,1,0,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL),(45,0,'mod_feed','module','mod_feed',NULL,'',0,1,1,0,1,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL),(46,0,'mod_footer','module','mod_footer',NULL,'',0,1,1,0,1,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Footer\",\"filename\":\"mod_footer\"}','','',NULL,NULL,0,0,NULL),(47,0,'mod_login','module','mod_login',NULL,'',0,1,1,0,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL),(48,0,'mod_menu','module','mod_menu',NULL,'',0,1,1,0,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL),(49,0,'mod_articles_news','module','mod_articles_news',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesNews\",\"filename\":\"mod_articles_news\"}','','',NULL,NULL,0,0,NULL),(50,0,'mod_random_image','module','mod_random_image',NULL,'',0,1,1,0,1,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RandomImage\",\"filename\":\"mod_random_image\"}','','',NULL,NULL,0,0,NULL),(51,0,'mod_related_items','module','mod_related_items',NULL,'',0,1,1,0,1,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RelatedItems\",\"filename\":\"mod_related_items\"}','','',NULL,NULL,0,0,NULL),(52,0,'mod_stats','module','mod_stats',NULL,'',0,1,1,0,1,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Stats\",\"filename\":\"mod_stats\"}','','',NULL,NULL,0,0,NULL),(53,0,'mod_syndicate','module','mod_syndicate',NULL,'',0,1,1,0,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"2006-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Syndicate\",\"filename\":\"mod_syndicate\"}','','',NULL,NULL,0,0,NULL),(54,0,'mod_users_latest','module','mod_users_latest',NULL,'',0,1,1,0,1,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"2009-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\UsersLatest\",\"filename\":\"mod_users_latest\"}','','',NULL,NULL,0,0,NULL),(55,0,'mod_whosonline','module','mod_whosonline',NULL,'',0,1,1,0,1,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Whosonline\",\"filename\":\"mod_whosonline\"}','','',NULL,NULL,0,0,NULL),(56,0,'mod_wrapper','module','mod_wrapper',NULL,'',0,1,1,0,1,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"2004-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Wrapper\",\"filename\":\"mod_wrapper\"}','','',NULL,NULL,0,0,NULL),(57,0,'mod_articles_category','module','mod_articles_category',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategory\",\"filename\":\"mod_articles_category\"}','','',NULL,NULL,0,0,NULL),(58,0,'mod_articles_categories','module','mod_articles_categories',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategories\",\"filename\":\"mod_articles_categories\"}','','',NULL,NULL,0,0,NULL),(59,0,'mod_languages','module','mod_languages',NULL,'',0,1,1,0,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Languages\",\"filename\":\"mod_languages\"}','','',NULL,NULL,0,0,NULL),(60,0,'mod_finder','module','mod_finder',NULL,'',0,1,0,0,1,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Finder\",\"filename\":\"mod_finder\"}','','',NULL,NULL,0,0,NULL),(61,0,'mod_custom','module','mod_custom',NULL,'',1,1,1,0,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL),(62,0,'mod_feed','module','mod_feed',NULL,'',1,1,1,0,1,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL),(63,0,'mod_latest','module','mod_latest',NULL,'',1,1,1,0,1,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Latest\",\"filename\":\"mod_latest\"}','','',NULL,NULL,0,0,NULL),(64,0,'mod_logged','module','mod_logged',NULL,'',1,1,1,0,1,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"2005-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Logged\",\"filename\":\"mod_logged\"}','','',NULL,NULL,0,0,NULL),(65,0,'mod_login','module','mod_login',NULL,'',1,1,1,0,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2005-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL),(66,0,'mod_loginsupport','module','mod_loginsupport',NULL,'',1,1,1,0,1,'{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"2019-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Loginsupport\",\"filename\":\"mod_loginsupport\"}','','',NULL,NULL,0,0,NULL),(67,0,'mod_menu','module','mod_menu',NULL,'',1,1,1,0,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL),(68,0,'mod_popular','module','mod_popular',NULL,'',1,1,1,0,1,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Popular\",\"filename\":\"mod_popular\"}','','',NULL,NULL,0,0,NULL),(69,0,'mod_quickicon','module','mod_quickicon',NULL,'',1,1,1,0,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Quickicon\",\"filename\":\"mod_quickicon\"}','','',NULL,NULL,0,0,NULL),(70,0,'mod_frontend','module','mod_frontend',NULL,'',1,1,1,0,1,'{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Frontend\",\"filename\":\"mod_frontend\"}','','',NULL,NULL,0,0,NULL),(71,0,'mod_messages','module','mod_messages',NULL,'',1,1,1,0,1,'{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Messages\",\"filename\":\"mod_messages\"}','','',NULL,NULL,0,0,NULL),(72,0,'mod_post_installation_messages','module','mod_post_installation_messages',NULL,'',1,1,1,0,1,'{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PostInstallationMessages\",\"filename\":\"mod_post_installation_messages\"}','','',NULL,NULL,0,0,NULL),(73,0,'mod_user','module','mod_user',NULL,'',1,1,1,0,1,'{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\User\",\"filename\":\"mod_user\"}','','',NULL,NULL,0,0,NULL),(74,0,'mod_title','module','mod_title',NULL,'',1,1,1,0,1,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Title\",\"filename\":\"mod_title\"}','','',NULL,NULL,0,0,NULL),(75,0,'mod_toolbar','module','mod_toolbar',NULL,'',1,1,1,0,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Toolbar\",\"filename\":\"mod_toolbar\"}','','',NULL,NULL,0,0,NULL),(76,0,'mod_multilangstatus','module','mod_multilangstatus',NULL,'',1,1,1,0,1,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"2011-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\MultilangStatus\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL),(77,0,'mod_version','module','mod_version',NULL,'',1,1,1,0,1,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"2012-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Version\",\"filename\":\"mod_version\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL),(78,0,'mod_stats_admin','module','mod_stats_admin',NULL,'',1,1,1,0,1,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\StatsAdmin\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),(79,0,'mod_tags_popular','module','mod_tags_popular',NULL,'',0,1,1,0,1,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsPopular\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL),(80,0,'mod_tags_similar','module','mod_tags_similar',NULL,'',0,1,1,0,1,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsSimilar\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL),(81,0,'mod_sampledata','module','mod_sampledata',NULL,'',1,1,1,0,1,'{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Sampledata\",\"filename\":\"mod_sampledata\"}','{}','',NULL,NULL,0,0,NULL),(82,0,'mod_latestactions','module','mod_latestactions',NULL,'',1,1,1,0,1,'{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\LatestActions\",\"filename\":\"mod_latestactions\"}','{}','',NULL,NULL,0,0,NULL),(83,0,'mod_privacy_dashboard','module','mod_privacy_dashboard',NULL,'',1,1,1,0,1,'{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyDashboard\",\"filename\":\"mod_privacy_dashboard\"}','{}','',NULL,NULL,0,0,NULL),(84,0,'mod_submenu','module','mod_submenu',NULL,'',1,1,1,0,1,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"2006-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Submenu\",\"filename\":\"mod_submenu\"}','{}','',NULL,NULL,0,0,NULL),(85,0,'mod_privacy_status','module','mod_privacy_status',NULL,'',1,1,1,0,1,'{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyStatus\",\"filename\":\"mod_privacy_status\"}','{}','',NULL,NULL,0,0,NULL),(86,0,'mod_guidedtours','module','mod_guidedtours',NULL,'',1,1,1,0,1,'{\"name\":\"mod_guidedtours\",\"type\":\"module\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"MOD_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\GuidedTours\",\"filename\":\"mod_guidedtours\"}','{}','',NULL,NULL,0,0,NULL),(87,0,'plg_actionlog_joomla','plugin','joomla',NULL,'actionlog',0,1,1,0,1,'{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Actionlog\\\\Joomla\",\"filename\":\"joomla\"}','{}','',NULL,NULL,1,0,NULL),(88,0,'plg_api-authentication_basic','plugin','basic',NULL,'api-authentication',0,0,1,0,1,'{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Basic\",\"filename\":\"basic\"}','{}','',NULL,NULL,1,0,NULL),(89,0,'plg_api-authentication_token','plugin','token',NULL,'api-authentication',0,1,1,0,1,'{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Token\",\"filename\":\"token\"}','{}','',NULL,NULL,2,0,NULL),(90,0,'plg_authentication_cookie','plugin','cookie',NULL,'authentication',0,1,1,0,1,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"2013-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Cookie\",\"filename\":\"cookie\"}','','',NULL,NULL,1,0,NULL),(91,0,'plg_authentication_joomla','plugin','joomla',NULL,'authentication',0,1,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,2,0,NULL),(92,0,'plg_authentication_ldap','plugin','ldap',NULL,'authentication',0,0,1,0,1,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Ldap\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','',NULL,NULL,3,0,NULL),(93,0,'plg_behaviour_compat','plugin','compat',NULL,'behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_compat\",\"type\":\"plugin\",\"creationDate\":\"2023-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_COMPAT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Compat\",\"filename\":\"compat\"}','{\"classes_aliases\":\"1\",\"es5_assets\":\"1\"}','',NULL,NULL,1,0,NULL),(94,0,'plg_behaviour_taggable','plugin','taggable',NULL,'behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Taggable\",\"filename\":\"taggable\"}','{}','',NULL,NULL,2,0,NULL),(95,0,'plg_behaviour_versionable','plugin','versionable',NULL,'behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Versionable\",\"filename\":\"versionable\"}','{}','',NULL,NULL,3,0,NULL),(96,0,'plg_content_confirmconsent','plugin','confirmconsent',NULL,'content',0,0,1,0,1,'{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\ConfirmConsent\",\"filename\":\"confirmconsent\"}','{}','',NULL,NULL,1,0,NULL),(97,0,'plg_content_contact','plugin','contact',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"2014-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Contact\",\"filename\":\"contact\"}','','',NULL,NULL,2,0,NULL),(98,0,'plg_content_emailcloak','plugin','emailcloak',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\EmailCloak\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','',NULL,NULL,3,0,NULL),(99,0,'plg_content_fields','plugin','fields',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,4,0,NULL),(100,0,'plg_content_finder','plugin','finder',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Finder\",\"filename\":\"finder\"}','','',NULL,NULL,5,0,NULL),(101,0,'plg_content_joomla','plugin','joomla',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,6,0,NULL),(102,0,'plg_content_loadmodule','plugin','loadmodule',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\LoadModule\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','',NULL,NULL,7,0,NULL),(103,0,'plg_content_pagebreak','plugin','pagebreak',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageBreak\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','',NULL,NULL,8,0,NULL),(104,0,'plg_content_pagenavigation','plugin','pagenavigation',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"2006-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageNavigation\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','',NULL,NULL,9,0,NULL),(105,0,'plg_content_vote','plugin','vote',NULL,'content',0,0,1,0,1,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Vote\",\"filename\":\"vote\"}','','',NULL,NULL,10,0,NULL),(106,0,'plg_editors-xtd_article','plugin','article',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"2009-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Article\",\"filename\":\"article\"}','','',NULL,NULL,1,0,NULL),(107,0,'plg_editors-xtd_contact','plugin','contact',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"2016-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Contact\",\"filename\":\"contact\"}','','',NULL,NULL,2,0,NULL),(108,0,'plg_editors-xtd_fields','plugin','fields',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,3,0,NULL),(109,0,'plg_editors-xtd_image','plugin','image',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Image\",\"filename\":\"image\"}','','',NULL,NULL,4,0,NULL),(110,0,'plg_editors-xtd_menu','plugin','menu',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Menu\",\"filename\":\"menu\"}','','',NULL,NULL,5,0,NULL),(111,0,'plg_editors-xtd_module','plugin','module',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"2015-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Module\",\"filename\":\"module\"}','','',NULL,NULL,6,0,NULL),(112,0,'plg_editors-xtd_pagebreak','plugin','pagebreak',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\PageBreak\",\"filename\":\"pagebreak\"}','','',NULL,NULL,7,0,NULL),(113,0,'plg_editors-xtd_readmore','plugin','readmore',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\ReadMore\",\"filename\":\"readmore\"}','','',NULL,NULL,8,0,NULL),(114,0,'plg_editors_codemirror','plugin','codemirror',NULL,'editors',0,1,1,0,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"6.0.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\CodeMirror\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','',NULL,NULL,1,0,NULL),(115,0,'plg_editors_none','plugin','none',NULL,'editors',0,1,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"2005-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\None\",\"filename\":\"none\"}','','',NULL,NULL,2,0,NULL),(116,0,'plg_editors_tinymce','plugin','tinymce',NULL,'editors',0,1,1,0,1,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-08\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"6.8.4\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\TinyMCE\",\"filename\":\"tinymce\"}','{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"blocks\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styles\",\"|\",\"blocks\",\"fontfamily\",\"fontsize\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"jtemplate\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}','',NULL,NULL,3,0,NULL),(117,0,'plg_extension_finder','plugin','finder',NULL,'extension',0,1,1,0,1,'{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Finder\",\"filename\":\"finder\"}','','',NULL,NULL,1,0,NULL),(118,0,'plg_extension_joomla','plugin','joomla',NULL,'extension',0,1,1,0,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,2,0,NULL),(119,0,'plg_extension_namespacemap','plugin','namespacemap',NULL,'extension',0,1,1,1,1,'{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"2017-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\NamespaceMap\",\"filename\":\"namespacemap\"}','{}','',NULL,NULL,3,0,NULL),(120,0,'plg_fields_calendar','plugin','calendar',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Calendar\",\"filename\":\"calendar\"}','','',NULL,NULL,1,0,NULL),(121,0,'plg_fields_checkboxes','plugin','checkboxes',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Checkboxes\",\"filename\":\"checkboxes\"}','','',NULL,NULL,2,0,NULL),(122,0,'plg_fields_color','plugin','color',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Color\",\"filename\":\"color\"}','','',NULL,NULL,3,0,NULL),(123,0,'plg_fields_editor','plugin','editor',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Editor\",\"filename\":\"editor\"}','{\"buttons\":0,\"width\":\"100%\",\"height\":\"250px\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}','',NULL,NULL,4,0,NULL),(124,0,'plg_fields_imagelist','plugin','imagelist',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Imagelist\",\"filename\":\"imagelist\"}','','',NULL,NULL,5,0,NULL),(125,0,'plg_fields_integer','plugin','integer',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Integer\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','',NULL,NULL,6,0,NULL),(126,0,'plg_fields_list','plugin','list',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\ListField\",\"filename\":\"list\"}','','',NULL,NULL,7,0,NULL),(127,0,'plg_fields_media','plugin','media',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Media\",\"filename\":\"media\"}','','',NULL,NULL,8,0,NULL),(128,0,'plg_fields_radio','plugin','radio',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Radio\",\"filename\":\"radio\"}','','',NULL,NULL,9,0,NULL),(129,0,'plg_fields_sql','plugin','sql',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\SQL\",\"filename\":\"sql\"}','','',NULL,NULL,10,0,NULL),(130,0,'plg_fields_subform','plugin','subform',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Subform\",\"filename\":\"subform\"}','','',NULL,NULL,11,0,NULL),(131,0,'plg_fields_text','plugin','text',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Text\",\"filename\":\"text\"}','','',NULL,NULL,12,0,NULL),(132,0,'plg_fields_textarea','plugin','textarea',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Textarea\",\"filename\":\"textarea\"}','{\"rows\":10,\"cols\":10,\"maxlength\":\"\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}','',NULL,NULL,13,0,NULL),(133,0,'plg_fields_url','plugin','url',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Url\",\"filename\":\"url\"}','','',NULL,NULL,14,0,NULL),(134,0,'plg_fields_user','plugin','user',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\User\",\"filename\":\"user\"}','','',NULL,NULL,15,0,NULL),(135,0,'plg_fields_usergrouplist','plugin','usergrouplist',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\UsergroupList\",\"filename\":\"usergrouplist\"}','','',NULL,NULL,16,0,NULL),(136,0,'plg_filesystem_local','plugin','local',NULL,'filesystem',0,1,1,0,1,'{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Filesystem\\\\Local\",\"filename\":\"local\"}','{}','',NULL,NULL,1,0,NULL),(137,0,'plg_finder_categories','plugin','categories',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Categories\",\"filename\":\"categories\"}','','',NULL,NULL,1,0,NULL),(138,0,'plg_finder_contacts','plugin','contacts',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Contacts\",\"filename\":\"contacts\"}','','',NULL,NULL,2,0,NULL),(139,0,'plg_finder_content','plugin','content',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Content\",\"filename\":\"content\"}','','',NULL,NULL,3,0,NULL),(140,0,'plg_finder_newsfeeds','plugin','newsfeeds',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','','',NULL,NULL,4,0,NULL),(141,0,'plg_finder_tags','plugin','tags',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"2013-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Tags\",\"filename\":\"tags\"}','','',NULL,NULL,5,0,NULL),(142,0,'plg_installer_folderinstaller','plugin','folderinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Folder\",\"filename\":\"folderinstaller\"}','','',NULL,NULL,2,0,NULL),(143,0,'plg_installer_override','plugin','override',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Override\",\"filename\":\"override\"}','','',NULL,NULL,4,0,NULL),(144,0,'plg_installer_packageinstaller','plugin','packageinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Package\",\"filename\":\"packageinstaller\"}','','',NULL,NULL,1,0,NULL),(145,0,'plg_installer_urlinstaller','plugin','urlinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Url\",\"filename\":\"urlinstaller\"}','','',NULL,NULL,3,0,NULL),(146,0,'plg_installer_webinstaller','plugin','webinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Web\",\"filename\":\"webinstaller\"}','{\"tab_position\":\"1\"}','',NULL,NULL,5,0,NULL),(147,0,'plg_media-action_crop','plugin','crop',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Crop\",\"filename\":\"crop\"}','{}','',NULL,NULL,1,0,NULL),(148,0,'plg_media-action_resize','plugin','resize',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Resize\",\"filename\":\"resize\"}','{}','',NULL,NULL,2,0,NULL),(149,0,'plg_media-action_rotate','plugin','rotate',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Rotate\",\"filename\":\"rotate\"}','{}','',NULL,NULL,3,0,NULL),(150,0,'plg_privacy_actionlogs','plugin','actionlogs',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Actionlogs\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,1,0,NULL),(151,0,'plg_privacy_consents','plugin','consents',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Consents\",\"filename\":\"consents\"}','{}','',NULL,NULL,2,0,NULL),(152,0,'plg_privacy_contact','plugin','contact',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Contact\",\"filename\":\"contact\"}','{}','',NULL,NULL,3,0,NULL),(153,0,'plg_privacy_content','plugin','content',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Content\",\"filename\":\"content\"}','{}','',NULL,NULL,4,0,NULL),(154,0,'plg_privacy_message','plugin','message',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Message\",\"filename\":\"message\"}','{}','',NULL,NULL,5,0,NULL),(155,0,'plg_privacy_user','plugin','user',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\User\",\"filename\":\"user\"}','{}','',NULL,NULL,6,0,NULL),(156,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}','','',NULL,NULL,1,0,NULL),(157,0,'plg_quickicon_extensionupdate','plugin','extensionupdate',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Extensionupdate\",\"filename\":\"extensionupdate\"}','','',NULL,NULL,2,0,NULL),(158,0,'plg_quickicon_overridecheck','plugin','overridecheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\OverrideCheck\",\"filename\":\"overridecheck\"}','','',NULL,NULL,3,0,NULL),(159,0,'plg_quickicon_downloadkey','plugin','downloadkey',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"2019-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Downloadkey\",\"filename\":\"downloadkey\"}','','',NULL,NULL,4,0,NULL),(160,0,'plg_quickicon_privacycheck','plugin','privacycheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PrivacyCheck\",\"filename\":\"privacycheck\"}','{}','',NULL,NULL,5,0,NULL),(161,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PhpVersionCheck\",\"filename\":\"phpversioncheck\"}','','',NULL,NULL,6,0,NULL),(162,0,'plg_quickicon_eos','plugin','eos',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_eos\",\"type\":\"plugin\",\"creationDate\":\"2023-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_QUICKICON_EOS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Eos\",\"filename\":\"eos\"}','','',NULL,NULL,7,0,NULL),(163,0,'plg_sampledata_blog','plugin','blog',NULL,'sampledata',0,1,1,0,1,'{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\Blog\",\"filename\":\"blog\"}','','',NULL,NULL,1,0,NULL),(164,0,'plg_sampledata_multilang','plugin','multilang',NULL,'sampledata',0,1,1,0,1,'{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\MultiLanguage\",\"filename\":\"multilang\"}','','',NULL,NULL,2,0,NULL),(165,0,'plg_schemaorg_article','plugin','article',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_article\",\"type\":\"plugin\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Article\",\"filename\":\"article\"}','{}','',NULL,NULL,1,0,NULL),(166,0,'plg_schemaorg_blogposting','plugin','blogposting',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_blogposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BLOGPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\BlogPosting\",\"filename\":\"blogposting\"}','{}','',NULL,NULL,2,0,NULL),(167,0,'plg_schemaorg_book','plugin','book',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_book\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BOOK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Book\",\"filename\":\"book\"}','{}','',NULL,NULL,3,0,NULL),(168,0,'plg_schemaorg_event','plugin','event',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_event\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_EVENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Event\",\"filename\":\"event\"}','{}','',NULL,NULL,4,0,NULL),(169,0,'plg_schemaorg_jobposting','plugin','jobposting',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_jobposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_JOBPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\JobPosting\",\"filename\":\"jobposting\"}','{}','',NULL,NULL,5,0,NULL),(170,0,'plg_schemaorg_organization','plugin','organization',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_organization\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_ORGANIZATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Organization\",\"filename\":\"organization\"}','{}','',NULL,NULL,6,0,NULL),(171,0,'plg_schemaorg_person','plugin','person',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_person\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_PERSON_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Person\",\"filename\":\"person\"}','{}','',NULL,NULL,7,0,NULL),(172,0,'plg_schemaorg_recipe','plugin','recipe',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_recipe\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_RECIPE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Recipe\",\"filename\":\"recipe\"}','{}','',NULL,NULL,8,0,NULL),(173,0,'plg_schemaorg_custom','plugin','custom',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_custom\",\"type\":\"plugin\",\"creationDate\":\"2024-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Custom\",\"filename\":\"custom\"}','{}','',NULL,NULL,9,0,NULL),(174,0,'plg_system_accessibility','plugin','accessibility',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Accessibility\",\"filename\":\"accessibility\"}','{}','',NULL,NULL,1,0,NULL),(175,0,'plg_system_actionlogs','plugin','actionlogs',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ActionLogs\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,2,0,NULL),(176,0,'plg_system_cache','plugin','cache',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"2007-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Cache\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','',NULL,NULL,3,0,NULL),(177,0,'plg_system_debug','plugin','debug',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Debug\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','',NULL,NULL,4,0,NULL),(178,0,'plg_system_fields','plugin','fields',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,5,0,NULL),(179,0,'plg_system_highlight','plugin','highlight',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Highlight\",\"filename\":\"highlight\"}','','',NULL,NULL,6,0,NULL),(180,0,'plg_system_httpheaders','plugin','httpheaders',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"2017-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Httpheaders\",\"filename\":\"httpheaders\"}','{}','',NULL,NULL,7,0,NULL),(181,0,'plg_system_jooa11y','plugin','jooa11y',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"2022-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Jooa11y\",\"filename\":\"jooa11y\"}','','',NULL,NULL,8,0,NULL),(182,0,'plg_system_languagecode','plugin','languagecode',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"2011-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageCode\",\"filename\":\"languagecode\"}','','',NULL,NULL,9,0,NULL),(183,0,'plg_system_languagefilter','plugin','languagefilter',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"2010-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageFilter\",\"filename\":\"languagefilter\"}','','',NULL,NULL,10,0,NULL),(184,0,'plg_system_log','plugin','log',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Log\",\"filename\":\"log\"}','','',NULL,NULL,11,0,NULL),(185,0,'plg_system_logout','plugin','logout',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Logout\",\"filename\":\"logout\"}','','',NULL,NULL,12,0,NULL),(186,0,'plg_system_privacyconsent','plugin','privacyconsent',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,14,0,NULL),(187,0,'plg_system_redirect','plugin','redirect',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Redirect\",\"filename\":\"redirect\"}','','',NULL,NULL,15,0,NULL),(188,0,'plg_system_remember','plugin','remember',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Remember\",\"filename\":\"remember\"}','','',NULL,NULL,16,0,NULL),(189,0,'plg_system_schedulerunner','plugin','schedulerunner',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ScheduleRunner\",\"filename\":\"schedulerunner\"}','{}','',NULL,NULL,17,0,NULL),(190,0,'plg_system_schemaorg','plugin','schemaorg',NULL,'system',0,1,1,0,0,'{\"name\":\"plg_system_schemaorg\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SYSTEM_SCHEMAORG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Schemaorg\",\"filename\":\"schemaorg\"}','{}','',NULL,NULL,18,0,NULL),(191,0,'plg_system_sef','plugin','sef',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Sef\",\"filename\":\"sef\"}','','',NULL,NULL,19,0,NULL),(192,0,'plg_system_shortcut','plugin','shortcut',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_shortcut\",\"type\":\"plugin\",\"creationDate\":\"2022-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Shortcut\",\"filename\":\"shortcut\"}','{}','',NULL,NULL,21,0,NULL),(193,0,'plg_system_skipto','plugin','skipto',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Skipto\",\"filename\":\"skipto\"}','{}','',NULL,NULL,22,0,NULL),(194,0,'plg_system_stats','plugin','stats',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Stats\",\"filename\":\"stats\"}','{\"mode\":3,\"lastrun\":1728464629,\"unique_id\":\"7c9d9ebdb503da98199517c4f44ed0f27da1fe41\",\"interval\":12}','',NULL,NULL,23,0,NULL),(195,0,'plg_system_task_notification','plugin','tasknotification',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\TaskNotification\",\"filename\":\"tasknotification\"}','','',NULL,NULL,24,0,NULL),(196,0,'plg_system_webauthn','plugin','webauthn',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Webauthn\",\"filename\":\"webauthn\"}','{}','',NULL,NULL,26,0,NULL),(197,0,'plg_task_check_files','plugin','checkfiles',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Checkfiles\",\"filename\":\"checkfiles\"}','{}','',NULL,NULL,1,0,NULL),(198,0,'plg_task_deleteactionlogs','plugin','deleteactionlogs',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_deleteactionlogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_DELETEACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\DeleteActionLogs\",\"filename\":\"deleteactionlogs\"}','{}','',NULL,NULL,2,0,NULL),(199,0,'plg_task_globalcheckin','plugin','globalcheckin',NULL,'task',0,1,1,0,0,'{\"name\":\"plg_task_globalcheckin\",\"type\":\"plugin\",\"creationDate\":\"2023-06-22\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_GLOBALCHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Globalcheckin\",\"filename\":\"globalcheckin\"}','{}','',NULL,NULL,3,0,NULL),(200,0,'plg_task_requests','plugin','requests',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Requests\",\"filename\":\"requests\"}','{}','',NULL,NULL,4,0,NULL),(201,0,'plg_task_privacyconsent','plugin','privacyconsent',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,5,0,NULL),(202,0,'plg_task_rotatelogs','plugin','rotatelogs',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_rotatelogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_ROTATELOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\RotateLogs\",\"filename\":\"rotatelogs\"}','{}','',NULL,NULL,6,0,NULL),(203,0,'plg_task_sessiongc','plugin','sessiongc',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2023-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SessionGC\",\"filename\":\"sessiongc\"}','{}','',NULL,NULL,7,0,NULL),(204,0,'plg_task_site_status','plugin','sitestatus',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SiteStatus\",\"filename\":\"sitestatus\"}','{}','',NULL,NULL,8,0,NULL),(205,0,'plg_task_updatenotification','plugin','updatenotification',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\UpdateNotification\",\"filename\":\"updatenotification\"}','{}','',NULL,NULL,9,0,NULL),(206,0,'plg_multifactorauth_totp','plugin','totp',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Totp\",\"filename\":\"totp\"}','','',NULL,NULL,1,0,NULL),(207,0,'plg_multifactorauth_yubikey','plugin','yubikey',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Yubikey\",\"filename\":\"yubikey\"}','','',NULL,NULL,2,0,NULL),(208,0,'plg_multifactorauth_webauthn','plugin','webauthn',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_WEBAUTHN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Webauthn\",\"filename\":\"webauthn\"}','','',NULL,NULL,3,0,NULL),(209,0,'plg_multifactorauth_email','plugin','email',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_email\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_EMAIL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Email\",\"filename\":\"email\"}','','',NULL,NULL,4,0,NULL),(210,0,'plg_multifactorauth_fixed','plugin','fixed',NULL,'multifactorauth',0,0,1,0,1,'{\"name\":\"plg_multifactorauth_fixed\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_FIXED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Fixed\",\"filename\":\"fixed\"}','','',NULL,NULL,5,0,NULL),(211,0,'plg_user_contactcreator','plugin','contactcreator',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"2009-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\ContactCreator\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}','',NULL,NULL,1,0,NULL),(212,0,'plg_user_joomla','plugin','joomla',NULL,'user',0,1,1,0,1,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Joomla\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','',NULL,NULL,2,0,NULL),(213,0,'plg_user_profile','plugin','profile',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Profile\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','',NULL,NULL,3,0,NULL),(214,0,'plg_user_terms','plugin','terms',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Terms\",\"filename\":\"terms\"}','{}','',NULL,NULL,4,0,NULL),(215,0,'plg_user_token','plugin','token',NULL,'user',0,1,1,0,1,'{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Token\",\"filename\":\"token\"}','{}','',NULL,NULL,5,0,NULL),(216,0,'plg_webservices_banners','plugin','banners',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Banners\",\"filename\":\"banners\"}','{}','',NULL,NULL,1,0,NULL),(217,0,'plg_webservices_config','plugin','config',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Config\",\"filename\":\"config\"}','{}','',NULL,NULL,2,0,NULL),(218,0,'plg_webservices_contact','plugin','contact',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Contact\",\"filename\":\"contact\"}','{}','',NULL,NULL,3,0,NULL),(219,0,'plg_webservices_content','plugin','content',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Content\",\"filename\":\"content\"}','{}','',NULL,NULL,4,0,NULL),(220,0,'plg_webservices_installer','plugin','installer',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"2020-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Installer\",\"filename\":\"installer\"}','{}','',NULL,NULL,5,0,NULL),(221,0,'plg_webservices_languages','plugin','languages',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Languages\",\"filename\":\"languages\"}','{}','',NULL,NULL,6,0,NULL),(222,0,'plg_webservices_media','plugin','media',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"2021-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Media\",\"filename\":\"media\"}','{}','',NULL,NULL,7,0,NULL),(223,0,'plg_webservices_menus','plugin','menus',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Menus\",\"filename\":\"menus\"}','{}','',NULL,NULL,7,0,NULL),(224,0,'plg_webservices_messages','plugin','messages',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Messages\",\"filename\":\"messages\"}','{}','',NULL,NULL,8,0,NULL),(225,0,'plg_webservices_modules','plugin','modules',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Modules\",\"filename\":\"modules\"}','{}','',NULL,NULL,9,0,NULL),(226,0,'plg_webservices_newsfeeds','plugin','newsfeeds',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','{}','',NULL,NULL,10,0,NULL),(227,0,'plg_webservices_plugins','plugin','plugins',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Plugins\",\"filename\":\"plugins\"}','{}','',NULL,NULL,11,0,NULL),(228,0,'plg_webservices_privacy','plugin','privacy',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Privacy\",\"filename\":\"privacy\"}','{}','',NULL,NULL,12,0,NULL),(229,0,'plg_webservices_redirect','plugin','redirect',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Redirect\",\"filename\":\"redirect\"}','{}','',NULL,NULL,13,0,NULL),(230,0,'plg_webservices_tags','plugin','tags',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Tags\",\"filename\":\"tags\"}','{}','',NULL,NULL,14,0,NULL),(231,0,'plg_webservices_templates','plugin','templates',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Templates\",\"filename\":\"templates\"}','{}','',NULL,NULL,15,0,NULL),(232,0,'plg_webservices_users','plugin','users',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Users\",\"filename\":\"users\"}','{}','',NULL,NULL,16,0,NULL),(233,0,'plg_workflow_featuring','plugin','featuring',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Featuring\",\"filename\":\"featuring\"}','{}','',NULL,NULL,1,0,NULL),(234,0,'plg_workflow_notification','plugin','notification',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"2020-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Notification\",\"filename\":\"notification\"}','{}','',NULL,NULL,2,0,NULL),(235,0,'plg_workflow_publishing','plugin','publishing',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Publishing\",\"filename\":\"publishing\"}','{}','',NULL,NULL,3,0,NULL),(236,0,'plg_system_guidedtours','plugin','guidedtours',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_guidedtours\",\"type\":\"plugin\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"PLG_SYSTEM_GUIDEDTOURS_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\GuidedTours\",\"filename\":\"guidedtours\"}','{}','',NULL,NULL,15,0,NULL),(237,0,'atum','template','atum',NULL,'',1,1,1,0,1,'{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"2016-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','','',NULL,NULL,0,0,NULL),(238,0,'cassiopeia','template','cassiopeia',NULL,'',0,1,1,0,1,'{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}','',NULL,NULL,0,0,NULL),(239,0,'files_joomla','file','joomla',NULL,'',0,1,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"2024-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.4\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(240,0,'English (en-GB) Language Pack','package','pkg_en-GB',NULL,'',0,1,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"2024-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.4.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','',NULL,NULL,0,0,NULL),(241,240,'English (en-GB)','language','en-GB',NULL,'',0,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.4\",\"description\":\"en-GB site language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(242,240,'English (en-GB)','language','en-GB',NULL,'',1,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.4\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(243,240,'English (en-GB)','language','en-GB',NULL,'',3,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.4\",\"description\":\"en-GB api language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(244,0,'mod_phocatopmenu','module','mod_phocatopmenu','','',1,1,2,0,0,'{\"name\":\"mod_phocatopmenu\",\"type\":\"module\",\"creationDate\":\"29\\/06\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.1\",\"description\":\"MOD_PHOCATOPMENU_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Phocatopmenu\",\"filename\":\"mod_phocatopmenu\"}','{\"preset\":\"default\",\"check\":\"1\",\"shownew\":\"1\",\"showhelp\":\"1\",\"forum_url\":\"\",\"open_menu\":\"2\",\"theme_style\":\"black\",\"sticky_navbar\":\"0\",\"custom_css\":\"\"}','',NULL,NULL,0,0,NULL),(245,0,'plg_system_phocadesktop','plugin','phocadesktop','','system',0,1,1,0,0,'{\"name\":\"plg_system_phocadesktop\",\"type\":\"plugin\",\"creationDate\":\"16\\/11\\/2023\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.0\",\"description\":\"PLG_SYSTEM_PHOCADESKTOP_DESCRIPTION\",\"group\":\"\",\"filename\":\"phocadesktop\"}','{\"shortcuts\":\"{\\r\\n   \\\"0\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_ARTICLES\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_content&view=articles\\\",\\r\\n      \\\"icon\\\":\\\"icon-file-alt\\\"\\r\\n   },\\r\\n   \\\"1\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_ADD_ARTICLE\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_content&task=article.add\\\",\\r\\n      \\\"icon\\\":\\\"icon-file-alt\\\",\\r\\n      \\\"type\\\":\\\"add\\\"\\r\\n   },\\r\\n   \\\"2\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_CATEGORIES\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_categories&view=categories&extension=com_content\\\",\\r\\n      \\\"icon\\\":\\\"icon-folder-open\\\",\\r\\n      \\\"type\\\":\\\"\\\",\\r\\n      \\\"color\\\": \\\"#EFCA08\\\"\\r\\n   },\\r\\n   \\\"3\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_ADD_CATEGORY\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_categories&task=category.add\\\",\\r\\n      \\\"icon\\\":\\\"icon-folder-open\\\",\\r\\n      \\\"type\\\":\\\"add\\\",\\r\\n      \\\"color\\\": \\\"#EFCA08\\\"\\r\\n   },\\r\\n   \\\"4\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_MENU_ITEMS\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_menus&view=items&menutype=\\\",\\r\\n      \\\"icon\\\":\\\"icon-list\\\",\\r\\n      \\\"type\\\":\\\"\\\",\\r\\n      \\\"color\\\": \\\"#00A6A6\\\"\\r\\n   },\\r\\n   \\\"5\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_ADD_MENU_ITEM\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_menus&task=item.add\\\",\\r\\n      \\\"icon\\\":\\\"icon-list\\\",\\r\\n      \\\"type\\\":\\\"add\\\",\\r\\n      \\\"color\\\": \\\"#00A6A6\\\"\\r\\n   },\\r\\n   \\\"6\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_USERS\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_users&view=users\\\",\\r\\n      \\\"icon\\\":\\\"icon-users\\\",\\r\\n      \\\"type\\\":\\\"\\\",\\r\\n      \\\"color\\\": \\\"#CCFCCB\\\"\\r\\n   },\\r\\n   \\\"7\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_ADD_USER\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_users&task=user.add\\\",\\r\\n      \\\"icon\\\":\\\"icon-users\\\",\\r\\n      \\\"type\\\":\\\"add\\\",\\r\\n      \\\"color\\\": \\\"#CCFCCB\\\"\\r\\n   },\\r\\n   \\\"8\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_MODULES\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_modules&view=modules&client_id=0\\\",\\r\\n      \\\"icon\\\":\\\"icon-cube\\\",\\r\\n      \\\"type\\\":\\\"\\\",\\r\\n      \\\"color\\\": \\\"#C0B9DD\\\"\\r\\n   },\\r\\n   \\\"9\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_ADD_MODULE\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_modules&view=select&client_id=0\\\",\\r\\n      \\\"icon\\\":\\\"icon-cube\\\",\\r\\n      \\\"type\\\":\\\"add\\\",\\r\\n      \\\"color\\\": \\\"#C0B9DD\\\"\\r\\n   },\\r\\n   \\\"10\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_PLUGINS\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_plugins\\\",\\r\\n      \\\"icon\\\":\\\"icon-plug\\\",\\r\\n      \\\"type\\\":\\\"\\\",\\r\\n      \\\"color\\\": \\\"#DED9E2\\\"\\r\\n   },\\r\\n   \\\"11\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_MEDIA\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_media\\\",\\r\\n      \\\"icon\\\":\\\"icon-images\\\",\\r\\n      \\\"type\\\":\\\"\\\",\\r\\n      \\\"color\\\": \\\"#DE6B48\\\"\\r\\n   },\\r\\n   \\\"12\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_TEMPLATE_STYLES\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_templates&view=styles&client_id=0\\\",\\r\\n      \\\"icon\\\":\\\"icon-paint-brush\\\",\\r\\n      \\\"type\\\":\\\"\\\",\\r\\n      \\\"color\\\": \\\"#E5B181\\\"\\r\\n   },\\r\\n   \\\"13\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_TEMPLATE_CODE\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_templates&view=templates&client_id=0\\\",\\r\\n      \\\"icon\\\":\\\"icon-code\\\",\\r\\n      \\\"type\\\":\\\"\\\",\\r\\n      \\\"color\\\": \\\"#F4B9B2\\\"\\r\\n   },\\r\\n   \\\"14\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_GLOBAL_CHECKIN\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_checkin\\\",\\r\\n      \\\"icon\\\":\\\"icon-unlock-alt\\\",\\r\\n      \\\"type\\\":\\\"\\\",\\r\\n      \\\"color\\\": \\\"#0C6291\\\"\\r\\n   },\\r\\n   \\\"15\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_GLOBAL_CONFIGURATION\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_config\\\",\\r\\n      \\\"icon\\\":\\\"icon-cog\\\",\\r\\n      \\\"type\\\":\\\"\\\",\\r\\n      \\\"color\\\": \\\"#80A1D4\\\"\\r\\n   },\\r\\n   \\\"16\\\":{\\r\\n      \\\"title\\\":\\\"PLG_SYSTEM_PHOCADESKTOP_CACHE\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_cache\\\",\\r\\n      \\\"icon\\\":\\\"icon-cloud\\\",\\r\\n      \\\"type\\\":\\\"\\\",\\r\\n      \\\"color\\\": \\\"#BBDEF0\\\"\\r\\n   },\\r\\n   \\\"17\\\":{\\r\\n      \\\"title\\\":\\\"Phoca Gallery\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_phocagallery\\\",\\r\\n      \\\"icon\\\":\\\"\\\",\\r\\n      \\\"iconsvg\\\": \\\"<svg xmlns= \\\\\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\\\\\" viewBox=\\\\\\\"0 0 512 512\\\\\\\"><path d=\\\\\\\"M0 0h512v512H0z\\\\\\\" fill=\\\\\\\"#fff\\\\\\\"\\/><path  d=\\\\\\\"M32 32h448v448H32z\\\\\\\" fill=\\\\\\\"#95313e\\\\\\\"\\/><path d=\\\\\\\"m156.8 69.333h-86.4v373.33h58.667v-140.27h27.733c58.667 0 87.467-32.533 87.467-92.267v-48.533c0-59.733-28.8-92.267-87.467-92.267zm0 53.333c18.667 0 28.8 8.5333 28.8 35.2v56c0 26.667-10.133 35.2-28.8 35.2h-27.733v-126.4z\\\\\\\" fill=\\\\\\\"#fff\\\\\\\"\\/><path d=\\\\\\\"m359.47 288h26.667v68.8c0 26.667-11.733 36.267-30.4 36.267-18.667 0-30.4-9.6-30.4-36.267v-201.6c0-26.667 11.733-36.8 30.4-36.8 18.667 0 30.4 10.133 30.4 36.8v40h55.467v-36.267c0-59.733-29.867-93.867-87.467-93.867-57.6 0-87.467 34.133-87.467 93.867v194.13c0 59.733 29.867 93.867 87.467 93.867 57.6 0 87.467-34.133 87.467-93.867v-118.4h-82.133z\\\\\\\" fill=\\\\\\\"#fff\\\\\\\"\\/><\\/svg>\\\",\\r\\n      \\\"type\\\":\\\"\\\",\\r\\n      \\\"color\\\": \\\"\\\"\\r\\n   },\\r\\n   \\\"18\\\":{\\r\\n      \\\"title\\\":\\\"Phoca Cart\\\",\\r\\n      \\\"link\\\":\\\"index.php?option=com_phocacart\\\",\\r\\n      \\\"icon\\\":\\\"\\\",\\r\\n      \\\"iconsvg\\\": \\\"<svg xmlns= \\\\\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\\\\\" viewBox=\\\\\\\"0 0 512 512\\\\\\\"><path d=\\\\\\\"M0 0h512v512H0z\\\\\\\" fill=\\\\\\\"#fff\\\\\\\"\\/><path  d=\\\\\\\"M32 32h448v448H32z\\\\\\\" fill=\\\\\\\"#129ED9\\\\\\\"\\/><path d=\\\\\\\"M 156.80035,69.333459 H 70.400402 V 442.66656 H 129.06703 V 302.39998 h 27.73332 c 58.66663,0 87.46661,-32.53331 87.46661,-92.26661 v -48.5333 c 0,-59.7333 -28.79998,-92.266611 -87.46661,-92.266611 z m 0,53.333301 c 18.66665,0 28.79998,8.53333 28.79998,35.19998 v 55.99996 c 0,26.66665 -10.13333,35.19998 -28.79998,35.19998 H 129.06703 V 122.66676 Z\\\\\\\" fill=\\\\\\\"#fff\\\\\\\"\\/><path d=\\\\\\\"m 386.13296,303.46665 v 53.3333 c 0,26.66665 -11.73332,36.26665 -30.39998,36.26665 -18.66665,0 -30.39998,-9.6 -30.39998,-36.26665 V 155.20007 c 0,-26.66665 11.73333,-36.79997 30.39998,-36.79997 18.66666,0 30.39998,10.13332 30.39998,36.79997 v 39.99998 H 441.5996 V 158.9334 c 0,-59.733292 -29.86665,-93.866605 -87.46662,-93.866605 -57.59996,0 -87.46661,34.133313 -87.46661,93.866605 v 194.13322 c 0,59.7333 29.86665,93.86661 87.46661,93.86661 57.59997,0 87.46662,-34.13331 87.46662,-93.86661 v -49.59997 z\\\\\\\" fill=\\\\\\\"#fff\\\\\\\"\\/><\\/svg>\\\",\\r\\n      \\\"type\\\":\\\"\\\",\\r\\n      \\\"color\\\": \\\"\\\"\\r\\n   }\\r\\n}\",\"background_image\":\"images\\/pngtree-modern-double-color-futuristic-neon-background-image_351866.jpg#joomlaImage:\\/\\/local-images\\/pngtree-modern-double-color-futuristic-neon-background-image_351866.jpg?width=861&height=404\",\"style\":\"desktop\"}','',NULL,NULL,0,0,''),(246,0,'plg_system_phocafilteroptions','plugin','phocafilteroptions','','system',0,1,1,0,0,'{\"name\":\"plg_system_phocafilteroptions\",\"type\":\"plugin\",\"creationDate\":\"26\\/10\\/2023\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.0\",\"description\":\"PLG_SYSTEM_PHOCAFILTEROPTIONS_DESCRIPTION\",\"group\":\"\",\"filename\":\"phocafilteroptions\"}','{\"component_edit_view\":\"\"}','',NULL,NULL,0,0,NULL),(247,0,'com_phocacommander','component','com_phocacommander','','',1,1,0,0,0,'{\"name\":\"com_phocacommander\",\"type\":\"component\",\"creationDate\":\"05\\/03\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.1\",\"description\":\"COM_PHOCACOMMANDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phocacommander\"}','{}','',NULL,NULL,0,0,NULL),(248,0,'com_phocacart','component','com_phocacart','','',1,1,0,0,0,'{\"name\":\"com_phocacart\",\"type\":\"component\",\"creationDate\":\"14\\/11\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.0Beta87\",\"description\":\"COM_PHOCACART_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phocacart\"}','{\"enable_wizard\":0}','',NULL,NULL,0,0,NULL),(249,0,'com_phocainstall','component','com_phocainstall','','',1,1,0,0,0,'{\"name\":\"com_phocainstall\",\"type\":\"component\",\"creationDate\":\"26\\/01\\/2022\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"www.phoca.cz\",\"version\":\"4.0.0\",\"description\":\"Phoca Install\",\"group\":\"\"}','{}','',NULL,NULL,0,0,NULL),(250,260,'mod_phocacart_brands','module','mod_phocacart_brands','','',0,1,0,0,0,'{\"name\":\"mod_phocacart_brands\",\"type\":\"module\",\"creationDate\":\"12\\/06\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.0Beta61\",\"description\":\"MOD_PHOCACART_BRANDS_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_phocacart_brands\"}','{\"brands_ordering\":\"1\",\"slides_per_view\":\"1\",\"slides_per_view_576\":\"2\",\"slides_per_view_768\":\"4\",\"slides_per_view_992\":\"5\",\"display_navigation\":\"1\",\"navigation_top\":\"0\",\"display_pagination\":\"1\",\"display_link\":\"1\",\"autoplay_delay\":\"0\",\"transition_speed\":\"1500\",\"load_swiper_library\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),(251,260,'mod_phocacart_cart','module','mod_phocacart_cart','','',0,1,0,0,0,'{\"name\":\"mod_phocacart_cart\",\"type\":\"module\",\"creationDate\":\"12\\/06\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.0Beta61\",\"description\":\"MOD_PHOCACART_CART_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_phocacart_cart\"}','{\"display_image\":\"0\",\"display_product_tax_info\":\"0\",\"display_checkout_link\":\"1\",\"load_component_media\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),(252,260,'mod_phocacart_category','module','mod_phocacart_category','','',0,1,0,0,0,'{\"name\":\"mod_phocacart_category\",\"type\":\"module\",\"creationDate\":\"12\\/06\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.0Beta61\",\"description\":\"MOD_PHOCACART_CATEGORY_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_phocacart_category\"}','{\"ordering\":\"1\",\"filter_featured\":\"0\",\"display_categories\":\"0\",\"hide_categories\":\"0\",\"filter_language\":\"0\",\"simple_layout\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),(253,260,'mod_phocacart_compare','module','mod_phocacart_compare','','',0,1,0,0,0,'{\"name\":\"mod_phocacart_compare\",\"type\":\"module\",\"creationDate\":\"12\\/06\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.0Beta61\",\"description\":\"MOD_PHOCACART_COMPARE_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_phocacart_compare\"}','{\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),(254,260,'mod_phocacart_currency','module','mod_phocacart_currency','','',0,1,0,0,0,'{\"name\":\"mod_phocacart_currency\",\"type\":\"module\",\"creationDate\":\"12\\/06\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.0Beta61\",\"description\":\"MOD_PHOCACART_CURRENCY_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_phocacart_currency\"}','{\"show_button\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),(255,260,'mod_phocacart_filter','module','mod_phocacart_filter','','',0,1,0,0,0,'{\"name\":\"mod_phocacart_filter\",\"type\":\"module\",\"creationDate\":\"12\\/06\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.0Beta61\",\"description\":\"MOD_PHOCACART_FILTER_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_phocacart_filter\"}','{\"phocahead1\":\"MOD_PHOCACART_FILTER_FIELD_HEAD_PRICE_OPTIONS\",\"filter_price\":\"1\",\"limit_price_category\":\"0\",\"phocahead2\":\"MOD_PHOCACART_FILTER_FIELD_HEAD_TAG_LABEL_OPTIONS\",\"filter_tag\":\"1\",\"limit_tags_category\":\"0\",\"ordering_tag\":\"1\",\"filter_label\":\"1\",\"limit_labels_category\":\"0\",\"ordering_label\":\"1\",\"limit_tag_count\":\"-1\",\"display_tag_count\":\"0\",\"phocahead4\":\"MOD_PHOCACART_FILTER_FIELD_HEAD_MANUFACTURER_OPTIONS\",\"filter_manufacturer\":\"1\",\"limit_manufacturers_category\":\"0\",\"ordering_manufacturer\":\"1\",\"manufacturer_title\":\"\",\"limit_manufacturer_count\":\"-1\",\"display_manufacturer_count\":\"0\",\"phocahead5\":\"MOD_PHOCACART_FILTER_FIELD_HEAD_ATTRIBUTE_OPTIONS\",\"filter_attributes\":\"0\",\"limit_attributes_category\":\"0\",\"ordering_attribute\":\"7\",\"phocahead6\":\"MOD_PHOCACART_FILTER_FIELD_HEAD_SPECIFICATION_OPTIONS\",\"filter_specifications\":\"0\",\"limit_specifications_category\":\"0\",\"ordering_specification\":\"1\",\"phocahead3\":\"MOD_PHOCACART_FILTER_FIELD_HEAD_PARAMETER_OPTIONS\",\"filter_parameter\":\"1\",\"limit_parameters_category\":\"0\",\"ordering_parameter\":\"1\",\"limit_parameter_count\":\"-1\",\"display_parameter_count\":\"0\",\"phocahead7\":\"MOD_PHOCACART_FILTER_FIELD_HEAD_CATEGORY_OPTIONS\",\"filter_category\":\"0\",\"force_category\":\"0\",\"remove_parameters_cat\":\"1\",\"limit_category_count\":\"-1\",\"display_category_count\":\"0\",\"ordering_category\":\"1\",\"phocahead8\":\"MOD_PHOCACART_FILTER_FIELD_HEAD_GENERAL_OPTIONS\",\"check_available_products\":\"1\",\"enable_color_filter\":\"0\",\"enable_image_filter\":\"0\",\"image_style_image_filter\":\"\",\"enable_color_filter_spec\":\"0\",\"enable_image_filter_spec\":\"0\",\"image_style_image_filter_spec\":\"\",\"filter_language\":\"0\",\"open_filter_panel\":\"1\",\"load_component_media\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),(256,260,'mod_phocacart_product_scroller','module','mod_phocacart_product_scroller','','',0,1,0,0,0,'{\"name\":\"mod_phocacart_product_scroller\",\"type\":\"module\",\"creationDate\":\"12\\/06\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.0Beta61\",\"description\":\"MOD_PHOCACART_PRODUCT_SCROLLER_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_phocacart_product_scroller\"}','{\"item_ordering\":\"1\",\"featured_only\":\"0\",\"item_limit\":\"1\",\"hide_price\":\"0\",\"display_view_product_button\":\"1\",\"display_product_description\":\"0\",\"slides_per_view\":\"1\",\"slides_per_view_576\":\"2\",\"slides_per_view_768\":\"4\",\"slides_per_view_992\":\"5\",\"display_navigation\":\"1\",\"navigation_top\":\"0\",\"display_pagination\":\"1\",\"autoplay_delay\":\"0\",\"transition_speed\":\"1500\",\"load_swiper_library\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),(257,260,'mod_phocacart_product','module','mod_phocacart_product','','',0,1,0,0,0,'{\"name\":\"mod_phocacart_product\",\"type\":\"module\",\"creationDate\":\"12\\/06\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.0Beta61\",\"description\":\"MOD_PHOCACART_PRODUCT_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_phocacart_product\"}','{\"item_ordering\":\"1\",\"featured_only\":\"0\",\"item_limit\":\"1\",\"hide_price\":\"0\",\"display_view_product_button\":\"1\",\"display_product_description\":\"0\",\"load_component_media\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),(258,260,'mod_phocacart_search','module','mod_phocacart_search','','',0,1,0,0,0,'{\"name\":\"mod_phocacart_search\",\"type\":\"module\",\"creationDate\":\"12\\/06\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.0Beta61\",\"description\":\"MOD_PHOCACART_SEARCH_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_phocacart_search\"}','{\"search_options\":\"0\",\"hide_buttons\":\"0\",\"display_inner_icon\":\"0\",\"load_component_media\":\"1\",\"placeholder_text\":\"\",\"display_active_parameters\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),(259,260,'mod_phocacart_wishlist','module','mod_phocacart_wishlist','','',0,1,0,0,0,'{\"name\":\"mod_phocacart_wishlist\",\"type\":\"module\",\"creationDate\":\"12\\/06\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.0Beta61\",\"description\":\"MOD_PHOCACART_WISHLIST_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_phocacart_wishlist\"}','{\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),(260,0,'Phoca Cart Modules Package','package','pkg_PhocaCartModules','','',0,1,1,0,0,'{\"name\":\"Phoca Cart Modules Package\",\"type\":\"package\",\"creationDate\":\"29\\/02\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"5.0.0\",\"description\":\"<style>\\n.g5i h1 {\\n\\tcolor: white;\\n\\tbackground: rgba(0, 0, 0, 0.3);\\n\\tpadding: 1rem;\\n\\ttext-align: center;\\n\\tleft: 50%;\\n\\tposition: relative;\\n\\t\\/*margin: 1rem -0.5rem 0;*\\/\\n\\tmargin: 1rem 0 0 0;\\n\\ttransform: translateX(-50%);\\n\\tline-height: 1.5;\\n\\tborder-top: 1px solid rgba(0, 0, 0, 0.1);\\n}\\n\\n.g5i p {\\n\\tfont-size: 1rem;\\n\\tcolor: white;\\n\\tmargin: 1rem 10%;\\n\\ttext-shadow: 0 0 9px black;\\n\\ttext-align: center;\\n\\tbackground: rgba(0, 0, 0, 0.1);\\n\\tpadding: 0.5rem;\\n\\tborder-radius: 3px;\\n\\tline-height: 1.5;\\n}\\n\\n.g5i .g5-info {\\n\\tdisplay: block;\\n\\tfont-size: 1rem;\\n\\tfont-weight: normal;\\n}\\n\\n.g5i .g5-actions {\\n\\ttext-align: center;\\n\\tborder-top: 1px solid rgba(255, 255, 255, 0.1);\\n\\tpadding: 1rem;\\n}\\n\\n.g5i div,\\n.g5i ul,\\n.g5i ul li {\\n\\tcolor: #fff;\\n}\\n\\n.g5i .g5-button {\\n\\tdisplay: inline-block;\\n\\tfont-size: 1rem;\\n\\tcolor: white;\\n\\tborder: 2px solid rgba(255, 255, 255, 0.8);\\n\\tborder-radius: 3px;\\n\\tpadding: 0.5rem 1rem;\\n\\tbackground: rgba(82, 195, 255, 0.1);\\n\\tvertical-align: middle;\\n\\ttransition: background .2s;\\n\\ttext-decoration: none;\\n}\\n\\n.g5i .g5-button:hover {\\n\\tbackground-color: rgba(255, 255, 255, 0.2);\\n\\ttransition: background .2s;\\n}\\n\\n.g5i .g5-icon {\\n\\tline-height: 11px;\\n\\tvertical-align: middle;\\n}\\n\\n.g5i .g5-phoca {\\n        background: url(\'data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIIAAAAxCAYAAAAWXXEmAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAt+wAALfsB\\/IdK5wAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMDMvMjkvMTg\\/PVhkAAAT30lEQVR4nO2ceZRcVZ3HP\\/e9erUvvTdZm6wQSAiibGGHdFBSzY6ALB6ZA6N4GFFHHcbxKB4FlPGMuCADMxGdwZFFHE6aLewoBgEjIYmkzUKWzt7d1V1de7337vxxX3VXV71KutNB5oT+nvN6eXXv7\\/7evb\\/7+\\/3u7\\/d7JRqWda0BfEzgw4z3PMBswP9BczKBDxRS+6A5mMD\\/D0wIwgSACUGYgIMJQZgAMCEIE3DgGUtjOYa2Ypx0R9P\\/YPsBSAmmlFgOEU2ARwi0sTA+GrqArgn0cdCtNe\\/jZHUERiUIAshbkoIt0cWBh7eRmDZYtkTXBCGPwOMywxJIFW08FTRt1DgBj0C6zIJw+gkBomw6pDNlIY9Wc\\/LSRZu8JQl7NZr9OlGvjibU\\/Z6cRSJvoQlBxNDQxeiFP2tKsqZNyNBoDujEvDq6gIwpSeQtenMWppSEDQ2fJkZFVwB5W1KwqufdkhKvLkZN60AYlSBkTMmCRh93n9JSc3GGIMC0Jf15mw3JAit3Z3llZ4bdGZM6nz40ubZUC3fv6a0sbPIP0xRg2XDHqh6e604TMqqtV6po8+WFDVw0IzJypQT8smuA+9\\/tJ1LWTwBZS5Izbc6YFOSKWVHOmBRgetggbGgIIGdJdmdMVvXk+N\\/3Blm+NcVgUVLnrS1UAijakmTB5qPNfq6eE+WcKSFmRAwiDt2CLenNWazvL7CiO81vNifZPFAcMRe1kLMkbRGDH5\\/eSsTQhuZICBgs2tzy+z1sHSziG4+6cTAqQchaNie1+DlzcnDMA3xhAXSnivx0XYIfvZMAAQFdYElJo0\\/n+qNiePXqxW6fFqJzS4qQMfK+BBCCq+fEmN9QHRBNF23uXdc\\/9L8A+gs208Ievn\\/KJK6YFa3o4WgRTWNWzMusmJcrZkV5uyfHbX\\/cyzPb0tT79So1LFAbxNDgntNbufnY+gqtp+gGNI2pYY2pYYPFU0Pc9pFG7n67lx+s7jvgjk4XbK6bG+PcKSHXz6+bG+W2lfvwBfQaFEaPUTuLRVuxK6Uc8zU1bHDnyS0sv2AqYY8ga0oEaqoGi3YVXVCmqJYRFKgFd+uXMZXJKLVLFGxOaPLxu4vaHCGo5A\\/nKqMjJcc3+Xl66XS+tLCBRM6qVDxkTEnEq\\/H00mn8w4IGPJo4IF0pJfU+nTtObuFXiydj2cPzWglbQtincdGRYdd5B7iwLUzYp1GDxJjwNzk1lJg\\/d0qIR5dMVebjUBi2\\/aDkR8yNeXnygmlMDRtDC1TZrlLepMMzwA8WtfL5+fUkctZQuxLvj7VPYdERwRGLU0m7EiVBu2xmlB+e1kLSEehKpE2bk1oCzKv34W5AJMc0+DmxOUDadKcxFhwSQRBCuF6VkFJy5uQgt8yvJ5O3DsXQNWFKZUt\\/fs4RNAc8VQs1xKNzufFc6vPD01o5qTXAYNFGAAN5i9tOaOSMycFquhW0Xek6P286pp72qaEhrViOoim5ZEgbVD9f6d7FM8IUD8GuGtPxsRIl9f6Lrn72Zq0h9RjwaJw7JchRdT7XnfK5Y+u4d11i6Ij1fiBZsLjh6DpOaXVZLCEoWJIfrenjpZ0Zipbk2AYftx7XQFvEGNFeSolHE3znxCY+8VQ3WUsyK+bli8fVuw8sBL\\/emOShDQPkTMn0iMFnj6njxJZABV0lgzfNq+P57vQIEpaEhoBOhyMI+8OFbWG+9VYPlmRcR9RxCQIChIQ7V\\/XS1ZMDj6NgJAS9Gr89fwpLpoUrFkLSFvGysNHPu4n8uIavBSklXk1w47xYNctCHWuvem4Hv92QxOPV0AQ8ty3FY5sHefHC6cyJeat4bp8W4uQWP3\\/oTnPZ\\/HrChu4qYD9bl+Dml3eheTQ8AgrbJY9sTPK7i9s4vslf1ee0IwK0BjxkTHvI2UwXbT4xPURbxOuuDoYflCOjXha1Bnh2e5qo9+AV\\/CExDXU+Hb9fp8G5GgM6WdPmrj\\/3AlCuGUvPNTNq1HSUxgtpSY6q8\\/HR5oDLp4KHNgzw201JGsIeol6NsKHRGPTQPVjkqyv3Oq0qeRa0Tw2BDedNqT49CSHYmzX59ls9hHw6dSW6AZ1UwWLZ+gFXXlsCHiaHPJRbB9OWXDozosbe33M6vy+dEcEc51y+L86iBAK6xt6shWVL3NymoGf\\/gRBbeWxYLpcp5f6DKJbkmHqv2mFlO6rExSObBtE9Ix9dAjG\\/zss7M2xOFkZKr4OFTX48fp05Ma\\/rsC\\/vUPGS8nO9BHRdY3uqqHio8Bt0TRD1algOn6YtmRTycMH0arNQy\\/e6oC1Ea9AzLmEYn2nYDzIFi5nRIHrFYpSQLNj7DZEaGng9GgG9esGQcv+hYAmTQ57h9iUIQd6y2VIjCKMLGCjYdPUXmBmtXuzWgE6jX6+pgjcmC673\\/bpgfX+Bt\\/ZlqfMOmxQhBLvSJu8lh\\/lJFW2WtoVpqXBwhRDsyZgIwcjPpOSIoMFZk4M8tilJne\\/gYgqHRBDSpk2uaA85f1LCMY1+vntSs\\/q\\/rG1JoLsGCnhreDdSSm6cV8cnZ0VdF1xKaApU2+hyBDzutPOWJG\\/LmqrQlrLmccyrCXy6QKsRZs\\/X8H79umBHusjZT2yreua8JfEIRVsCNnCZYxYq8dCGAQxNcMuChqF7JX172YwIj2xM1niqA2NcglBah2VnTyJVtClt\\/oBH4\\/hGHz6P5rJYgjW9Odb25mkJ1h4+4tWJePcn3dUxgdHALW7g1uZgUKufBAxNDAWZyuHTxdDpq2BLjoyoCKQb3ae2pfHpShBKfUponxZiWsSgP29hHETm7JBohBNb3Jwyqr1q5\\/fdq\\/vIm7V3pVvfwwEqSVYbqaLN1bOjxLwV2k4I9mVNVvfmMDRBImdR79eHpKoUsTxvSpBfdA1QfxDm4ZA4i7VCy+UQKtLCsvX9PPTXAcK+iVKISmhCcNkMd7PwxJYUPf0FdvXl6dyWcm1z+czIQWuz981ZLEGZU8XeT9b08Y8r9xI2amf0hvsd+JEORmtIDpxaPlhddKAspTKfw6clgfIJooZGwZbMjXlrJvY0AdctaHCcZfdxzp4cYlbMy860OeaM5CERhP0tWsGSvLIrzT3v9PHkthQxr4ZHCAr7OeoIIXh6W4pHNiar0tASNalfO76RWVWBn2HUctx8msCrCWpF54UQBF2yoTjjFmz3vAJQ0\\/kt2JImv879Z02i3qdjO\\/01IdgyWOAbb+6jP6eCSAEXv0pKyQ1H13HD0XUj7lW2CRka508L8ZM1CXz62MzDIRGEhzcm6cmZQ5Exy4bevMWmgQKrenKs7y8gJTQ4tms0O+6tfTkeXN2HqEixSgBT8um5MWbVOM8jYFfGrL4vJT6PxvSwQVd\\/AX\\/FwtkSQh7B7JhR3RfoyakCk8GiTYPLmyCzou79MqZkYaOfK2dXpsABQixbP8DeVKbmaUGxPjo9demMCPet6x86TYwW48s1OK7rN9\\/soasnOxxidqBpAr8uRhSJjBZ+XYBfr3J8JJDVpWvF0xB0wbuJAraUShWXnCqco9bMMM9sGQTvyOKV\\/oJF+9QQc2LuGb+1fXmKWYtNyaIK\\/1bgnMkhWoIe0kV7hGq2bEmzI9CVsQHTVhVMRzf6Obkl4DruWHDaEQHm1XvZmCwSGIN5OEQhZm1EiLl01Xm1ql33t4BwBOGd3pzLp5Lr59bR3hamL2WSNm2ypqoiihoad53cgqiIgZUs33PdaRDw0o5MNVUpaQ16+OZHG0nnLZIFm6wl6S\\/YIOHKqoIYhX1Zky3JIpfOCDtJu4pnEbWzu5UWWUqJV9dYOj1MtkZ6uxYOS9ddCEHWtF3j+1IqW\\/74+VO57aQmPtLk55h6L1fPifLKRW2c0FydGALB67szvLY7iz\\/g4bHNg2RN2zVtffP8Bv57yRTOnBRkXp2X86YEeeT8KZw3NeSq3t\\/Ym6Ng2lwxy90s5EzJznSR3ZmR1850kXyN9PMlMyP49LHVMr7vp4YPClGfzoNdA9w4r44FjSMXV0pVRHrHyS2lO5QsqltGEeAbb\\/ZgS4gYgvWJPD9Zm+ArxzdWDywl18yJcc2cGFLKYWGpEVP58doE85v9HN\\/kp9IsCCH45zf2ct+6RFXoOJG3uHVBA3ee0lKVKf1Ys5+FTX7e6c0R9Ixurx+WGgHAEKr48zMv73Iqnqt3r5pAWfH\\/MEpdbn9rH893qzSvBKJejW\\/\\/qYc39mRdi05KVUjKh3LiKpUMCsHjm5O8sDnJ9XNjgKgwR0qrPbUthS1VGL\\/8siU8uS1FwRr5bFKq00hHW5jcGApWDltBkKjz+ap9OS55ppv+vKXsamU7l7AvlDSB4Pt\\/7uH2t3pG7EhDE5g2XPpsN2\\/ty7rb6xLtKrqK9h92Z7jx5d2EgwYX1yhAeX1Plk0DRYKGOnKXXyFDo6u\\/wJt73fwgVbkU9o6+nnHUguB1vPSRaVRVjjWW+v9yCAFh50RRmZ49kJNZUnmV\\/YJl7zRI1JH1hR1pznxiKy90p0eUjw1VqlHtlG1LFbn+xZ187fV9xJx3HyijG\\/IIevMWSzq38+9\\/SQDVjpwbXRDc\\/5cES5\\/qpi9ncu60IHPqfK7P0rk1hWlL12OgQMVonnKijJV95zf4WdQ6+nrGUfkIPl3wdk+etX15\\/PrwcayURt2eNocEZbTQhaA\\/b9O5NcXCchsuVKn773dnMVyEQaAyhE9vT+H3VLv3K7anKbemJWHYMFDggqe2c8H0MFfNjnJqa4DJIY86hjoqvCdvsqY3zxNbUjy8McmerEmD3z0wo4RBRQQ\\/++puftE1wLVzY5w7OUhbxCDg0YYcgXRRpb5f3pnhoQ0DrNyTJWJoBAydvpzNmt68877I8Lz25S2e2DI4tFHcEDI0Hn9vkEtnRkbkJ4QQpE2b\\/oJNjSRs9bw2LOvKcoAvyhCoSJ0QOMUew5\\/lbZVGNQ7ijRtbKrojdr9QC1201fsPtWhmTakyd6U0nCMTeUvWTEFLYLBgY0lJk19VBtX5NHQEg0WbPVmT3RmTgi2JGtqYnilj2uRMScynMznkocmv49UEOUu9QbUrbZIs2Pg9YliboeZPUDGvQu12rSw97QYBTqQTtWnK+peqv0b5JtRfRyUIJbjZmwNl1A6Eki2txGgUjBs\\/o1VMllSTZTmGXBMCQ2P\\/gapRwC6jWypQ9Qj1yl8t0q7zimuRlCtcfZEx9Af+Oqbj43hfEHXDGBkegfHwowvQ9dFUJ4wNmsCJKo4hqjdOFsa7GeEwPjVMYGyYEIQJABOCMAEHE4IwAUAJwsR3LE6g3gPczWGcfLKFZvdHpgwgtOETll3UGgZ31hWlMActox+B0IXli2pWOGEZiZhmxjQhRcIyBsKaGUrZeiasWcGU7Uk36MU6gLStZ\\/K2nkEgwloxYgjpTVhGf0Qzw4O2kYxpxRgCMWB5Bhr0Yv2graeLtp5FSE+9XowJEDmp5TO2lm\\/QzWifZQzU6cVoxtazFkhLakWkMAF8mhXKSy2HFBbCNup0M6qVHRT6LCPhE7Y\\/pFmBAVtPWbaeQyD8mhnyIY0By0gAIKRRrxejphTmoG0kARnWijGvkP3icKwWrsJU0Y4oE\\/YiaXbLV0Fof3n20WssSWiBb\\/AFzvnMhq0rHj6\\/bcmVzwJsX\\/HrxdPmPvfang2LP9Z66n1\\/3LHyc6dPab\\/qRQBefaBtbaZ+sQDr2I9f\\/qBq\\/3D79CVXPb9pxcPxmUs+uRxgiN6r90\\/\\/c6bxykbNXD19yZUrAFh5T0tfunlGw+JP\\/XHvc\\/9zWkv71a\\/x6gNt+aK\\/bp9lNCdsY7YE\\/Th\\/8tn3CqGjBm297Qi9sLql\\/erXyh9vy4qHP35kZPcqTv3CXuvFX85\\/txA8VQILZvzuVxx1T\\/rdZx+7rihFpFkvrpvUftUrAGueeewmiTCO+\\/jlPwXJYS8IclFokoCdFbcH+UM6+vjzLy0xculfAl8GvgdcA\\/wnsATYC6wBbgG+A3wFuLcjHp8DsLyz815gAfA8sBS4DHgZuAL4E\\/AN4KfO35cAjztj3AR8ryMef3R5Z+dZwA+BM4EkcAzwVWA7cCXwI2Af0Af8CrgV+DpwT0c8fr\\/DRyPQAzzUEY9fu7yzsxPIAS8BNwB3AD8Dvgb8PbAMaAe6HdqzO+LxGz4MzqIE0hX3St+tU0AtQBDoBfYAg4Dl9EsARad9saxfie4rHfH47Sg1fRawA+V3rQMuBs4AuoDFwNvO4v0dsMqh8boz7jWoxV4KxICnnPFagQZgE5ACAkAe2FrGx6eA\\/wLqli9f7nH4XwWscPpGgS3Ac8AuYAZKOI8F1gJfgolTQ6mifB9KAxyPk5LoiMfTgMHIOSqviC2vDy3\\/W3fo3Qn8K8MV9LnlnZ1NwD0oYaAjHs+jdubXURrnCqBOKk1koARrO0owQQnNeuCEMj6uQGmA2QixCCXMlwO3ozTIG6gvXr8bJUB3IuUDKC33aZTG+NALQgk2EEZN+DrgC8s7O7+IWoSdKGe6CLQu7+y8dnln51KUUCxw2qVQqrj0rlpDRzz+G2AlcBzwNDAPOAe1mOVfF7MaaLJt++coIdpzoRJC3RlTB450\\/rYdXuoBlnd2Hg00ozTAC8C1KI3yQEc8\\/qmOePwJ5\\/PNHfH41R3x+K0d8XgSIf4DmO\\/w3AYfDkGwUDZ0X9nVay0KIYW+FzW5DwKrO+LxR4FvAZ8Hvouy13uAzagFzKJ29D8594512t7cEY93O\\/fSKHMASius74jH3wX+DXgEmIKy\\/SWsAh6\\/6MILJfAk8IpzfzNwF\\/BzlKba5PAZRcrbnTbzgZc64vH7UD5ABGXqEmX0B4ENFXPyL85z3oXyZfg\\/WEEESTL9tx0AAAAASUVORK5CYII=\');\\n\\twidth: 130px;\\n\\theight: 31px;\\n\\tbackground-repeat: no-repeat;\\n\\tposition: absolute;\\n\\tbottom: 5px;\\n\\tright: 5px;\\n\\tbackground-size: contain;\\n}\\n\\n.g5i .g5-phoca a {\\n\\tdisplay: block;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tleft: 0;\\n\\tright: 0;\\n\\tbottom: 0;\\n\\tfont-size: 0;\\n}\\n\\n\\/* container *\\/\\n.g5i {\\n\\tposition: relative;\\n\\tmargin: 15px 15px 15px -15px;\\n\\tbackground: url(\'data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQEASABIAAD\\/2wBDAAsICAgJCAwJCQwRCwoLERQPDAwPFBcSEhISEhcYExQUFBQTGBYaGxwbGhYiIiQkIiIuLi4uLjAwMDAwMDAwMDD\\/2wBDAQwMDBAQEBcRERcYFBMUGB4bHBwbHiQeHh8eHiQpIyAgICAjKSYoJCQkKCYrKykpKyswMDAwMDAwMDAwMDAwMDD\\/wAARCAGRBIADAREAAhEBAxEB\\/8QAHAAAAwEBAQEBAQAAAAAAAAAAAAIDAQQFBggH\\/8QAMBAAAwACAgICAgIBBQACAgMBAAECAxEEEiExBRMiQTJRFAYjM0JhFVJxgSQlkaH\\/xAAaAQEBAQEBAQEAAAAAAAAAAAAAAQIDBAUG\\/8QAJREBAQEBAAIDAQEAAQUBAAAAAAERAgMSBCExE0EiBRQyUWFC\\/9oADAMBAAIRAxEAPwD+UGWmFAAAAAAAAGkVhUAAAAAAAAAG78aAwAA0KAADQNAAh0loK1EU2grUAxAAboDdEGhTaAbr4IE0UACsoRlQjCEYQpRhRgRgAAAAGAAAAAAAAICqCtCgAA0AAANCnkiunDjrJcxPunpGbWn0PyH+k\\/kfjuFHMzL\\/AG7OM8stwleVjg1a6R148Zztajsxwc7WnVEmKqqlkDaIOTm3paNRXnG2lERVsdapMzR9BxPmFjwdDydeHbo8\\/Nn+3I6OvPOK3HemLFdf27RzxDSwKpkAwhNeSi2PD2Jqa6o4myazq08Anszqn+Ev6HsmkfHS\\/RdNL9SLoV8eWXU1LJwU0bnRrz8\\/AcvaOs6NNjStdb8UZsanSWbj9RK3rkqDap9CjegD\\/SNC\\/SxqMePQUnUozqUZ1AxoDz+Xy9fhH\\/8Ap244cuu3ms7OLNBC6KM0BmgM0FZoDNBGaKM0BmgDQGaAZIg3QVqQFJRlp0Y0YrcdeJHOtx2YzlXR1QjCqpEDpEQ+gN0A0oI6saMVXXiMDuxGarsxmBdEGhGabegrqfx+RYvsJrn\\/AEm4Xi4lkydaFXq5D\\/J8aMWPcl4rPHWvzkfoHgYUAAAAAAFaAEAwVhUAAAAAAAAAAAAAGgADIKe6VfrQChDIinSCm0RWgaQaBugN0BoGgaBgGAYFI0VCMqEaARlRhUKBgAAAAABgAAAAAAAPLCnCgDQNAAAAIqkkV1YLcXNz7l7RmtR9Jzf9T\\/I\\/I8KOHmf+3Bw\\/nl1qR5+LGW10jsx4zla06ogwOnHBmjpnGtGBPMlC2ag8Xk33s6xtFIodIgdEVSTIrJFVlkF4ZjB0SzItLJgHQxFcMdjNR6XH42znaza9PHxtIzrFqjxpBlfFhhryRm1x8vFKfg3ysrhaOisSAokEJeFUWUcPJ4njaOvPQ83JmrH+ORbX9nT11qdJN47\\/AIsZY6az62RR1AdAXx8erl0ltT7M6ahlxmpRPHx6y5Fjn+VeEW0X+R+J5Px7lZ1\\/Lyic96k615mXLjxL8mdZzaXp5nI5d5PE+Ed+eMcuu3G0dGC6CM6gZ1AzqFZ1AzqAdQFclGaAzRBqlaCl6gCht6Gj3uZ\\/pnLxfi4+Qdpzf6OHPn3r1Hg6O4ZICsoy0vCMVt1YjnWo7MRzro6oRzqrqSB0iIdIDdAPjnbJUejjxLRz1DqdMNOvGZo7MZgXlED9QBLT2B2VzqeLpomOX8\\/vXEqqa7L2V1ZyMl3D7MvKfj89H33zQVTzjqvSJrU4tdOP4\\/PfqTlfNI78\\/G6rqj4TPX6OV+Ty9E+D0r\\/8Bn\\/ox\\/3ca\\/7Gkv4PkT+jU+VyzfhVy5Pjs8e5Os80rh18bqOasVT7R1nTjeLCNFYrFr9lRgQAAAAAAAAAAGgAGgaBoGoBkiKdIKcyrdAboDdBDKdkG6ANAaAAGijNAN0IqVI0JNFQjARlQpUYBgGAAAAMDAAAAAAAA2fYHfn+P5GDDOa1qb9EacpRoGgAAFMiKdEV0YyVqO7jzs5dNx6scfUpnC9Oi8QYVVIg93\\/O+P8A\\/ilx1i\\/\\/AJH\\/ANzl63XPLrim1o1jTz+fyf8AqjfMajy\\/bOim6EDJBTpEDJEFERVZMisEHRJlFdkAvLA9DiRto5dM19HxuI1jV\\/o4Wudro6hln1NlRKnWM0OXK3RqKj9ZsasQRv1kB0KEyY9yWDw\\/kMHs9PFHz2Wai\\/xej0D0uLy+mL812OXXjX3SfPwuvWifzrc7Unk8ev8AsT0rXs9HjZcShr7PD9nK81L05uVn40f9jfPNT2cH\\/wAnOK1eL+U+mdf5aXtL5D5vn8+l9tb6+Eb58XPLnrzM85G+1HWJqHU0heoGdQM6lGdSKzqBnUBljCkcAZ1AxwFK5AzQB1A3qQXyc7l5MKwXkbxr1JmczdHNo2GSIK40StOhSYaWgxWnZiRzrbsxo51p0JGA6QQyQHVxsPHuLeWurX8TNtZqM\\/jRR2Rm8GcFYfZhXbiRijtxowLogZBWhGNAIyieT+DNQfn+YdPSPu24+fzzb+PV4XxGTL5a8Hl8nyJH0PD8O39e5g+JwYl5W2eDv5Fr6fHxueXdGCJ9I4Xuu85kWUGLVVUGdDqF\\/RnUZXEw3\\/KSzyWM2SvP5XwGHItwvJ6OPl2frh34Oa+Z+R+Iy8d+vB9Pw\\/InT5vm+LZ+PKqGvZ6pXhvOF0VkFGBAAAAAAAaAAaBoGgaQNoB0gGRFOiK0DdAbogdeAADQgCtAwDCjWyCVFE2jQmwhGVGaKFAwDAMAAADAAAAAAAAEB2ZfkeTmwzhyVuI9BrUEwNA0DQABkRTojTpxGa1Ho8dHLp1j1MTbRwrToSMCiQFEQRz8jotIuDzKp3WzatlBVvGiBdFDJEDpEVRIgokQVlGRWSIbZMFMK2xR7XCx+jh0zX0GHJX1qf0cccjgXnWhjLmzpM3ByvGaULEVB9YRvQoWoARwVXm87jeGdeKuvmeZg02ermjgbpeDqyn12FPOF62EdeJ6RlHPnezUVzdTQxfi9gbmyd1oQc2iiuSoqEkvIEeoGdQrOoGOQM6hTaAWkFKpA3oRSVBQvUA6gN9ZBnXqFJooNBFJ8Gaq8mWnRjRitR2Ykcq27MaOavS4Xx+blb+tejj33IWkyYaxW4r2jUujNFBoICisER14TNHdiMUdmNmRcimAbZBjZQpRPL\\/Blg\\/knx3xKn88iPV5vkf+nr+P8WT7r24iZWpR4rdfQkw6RkVmDFoooM6iswZtRRQZ1D\\/WZ01vQmprl5nFx5vxpHbx+S8mS\\/r5X5X4Rxu4Xg+r8f5O\\/rwef43\\/AKfO5MTh6Z9GXXy+uMT0aYxgQFRgQAADLWgrAAIZEGgaUaiB0AyAZEU6IG0RWpAboBiAAAGmXTSX7CPY5H+nOXg4M8yv4Ucp5ZesY\\/pNx4x2bYBgUrRRNoqJtFQjRRjQClGaAxoBQMAAMAAAAAAAAAANTAdMK3YABoU6CqyZadWJGK3Ho4Dj06x6WJnGq6ZMivoghn5SlaRqRXnXkdvybVqAdEDogfQDJEQ6RBRIgokRVEiBtgL2A6uN5ZjpH0XBj0cOmK9aV4MMHA3yVCuWyoz6wg6FRjgDOpQlSUZMgQ5eP8TfI+W+RxrbPVxWniZJ8neBepUUj+iCqnwREMkeTUEupQjkom5KFcAZ1AOoVnUKOoGOSKTqAdQM6hR1CjRArkBHJRsoiuhStEVHJIEtFRmgGSCrQjKunGjnWnbjOdadeM5tPV+O+Ry8TfT9nDvj2SwmXI82R5K9ssmKTRoboqM6hDwgOrEZR24jKuvGzI6JZBZdOj3\\/AC\\/QT70uiKxoowBMv8Gag\\/n0rwc6+1FEjCqxjdPwZtHQsFz7Rz9oKLGzOopMGdZ1WYMamqTjM2o2oQ0ctzujrK1E8mGck9aRqdYr5L5v4j627leD6\\/xvkb9PB8jwf6+bqGno+lK+X1zhGisYXRUYGQUYEaAAaA\\/T8O3\\/APwgwBkA2gNQDAMiCkkVTRlRoDdAAAAANL6vf9BHqZvnubn4i4l1\\/to5TxTdY9JuvPmNnVstzoCZRjKEZRNoqJsBWUKyjAFYGAYArAAAAAAAAAAAAANgN2AbYGoKpIV0QjNbjrxI5V0juxHKukdsVowqv+TE\\/szio5ea68IvqOZ06fkqnQFEQOgHQQyIHRBRIg7uLxIzY7qr6uf0c+usTSdNFUPwAjZQv7A7+GvJz6R9LwfSOHTFemkYYOkUP1CN6hGuSom0UIVCsBdFBoCHJf4m+VfMfI+Wz08NPEyTtncJ9bCBLQD9ionXkBGijHJQjgozoBnQDOgB0Cs6BWdCKVwAvQKzoRW9AMcBS9AEqQF1oKdUQLT2UTaAzQDJAWhGVdEGKrrxsxWnRDMK6sbMVXRJgPoBkgg6hDzAR0RJB0QjI6sZFdUGRZEVoQFC6CpZf4MsHwkT4ONfZiqgxquzhzKv8jj5PxHp5vpc+DzTWUPrWjemsWMamqqTOobqRCZPCLFieLF3fk1esbLePrWiyjn5PAfKw1KWzpx5vSp1j+f\\/AC3BrjZ6lrR+g+P5fbl8v5HjyvLaPU8dhWjTGF0VlgRgQAADBGoBkgGSAZIBkgN0AyRA6IKIyp1IBoKxoBQAAA0IrN6AW72AhUYAjRRNmhNgKyhQMYGFCsBQMYGAAAAAAAAAAAAAAAAyoKrOQK6IyoxW46sfIlGK6RdcvXo546ax8u2PU0LLT9smKrNEVaaIKyzIqiB0BREQ6QDogoiC0VpGQ3YgV0UJsDUB38Tw0Y6H0XBr0efpzr2I8oyyqpCadIIdQEDkIfBjl1+RUJzccL0UcJpoII3QHHzH+JvlXzPP9s9PLTy9eTsjWvARFoqs6hCNGhmgDQB02B04sPG+i3k39v8A0JqOb6yqPrAz6wo+sKz6yKR4wJuArOoVvUgPrCj6WAr47GqR8djRKsTRUTclC6A3QGpAVhGReUZVeGZrWrzRjFdWJmLFdcMwq0mTVEiIooCGUhFJRB0wiDohEV0QQWRFMAaAxoIhm\\/gzUV8XE+DzV9iVaYOdotMGLTV8cUc7UXSZhF+yeNRr1+znn2xn3pdFaYBz5a2zpGoWW16FaNp0wO\\/iWsK\\/JHDua49zXx\\/+rOIslvLK9n2P+n+TJjPk43l8Pcaej7cr5fXJEkq8+jTGDL1dfgtIsZ6S6tmtYxmiss0EboI1IBuugGSCGSAZIgdSQb1ANAMgKIyqiIrdAY0AmigUN+gGrFc+0TQhRhQBAABGsohZoTYClCsBQMKFYCAYAAAAAAAAAAAAAAAAAIBtBVZMtxeDFdIsjLbQp5ZFXgyqqogrNkF4oyq8syHTCH7EDKgG7kwMshMG\\/YMGdxgeSCsog6uO9MzUe\\/wK9HDpivfwejmw7Ps\\/2+mv\\/wBmvb6xkTD9\\/omfWmq6IhaAVY7flFRDKq\\/7Gg+PhVa2y5TU83GeL\\/8AANQfhBXl87L4Z15ivnOZfs9HKvOb8nUDYCaKNCEaKKRjTRAfUEVx4kBesS0Qczx+Sqz6wN+oKti4+1trwZtC5eM\\/crwNHNWMrSbxBSPEFYsTYHTj4zZKOmOF\\/wCGdNV\\/wf8AwaaS+D\\/4NTXJm4X\\/AIa1Xn5uM0bHLUaKF0UMkQVlEFZMht6Ji6rFEsXXXiZzsXXZjZzsXV4ZnDXRJkXkgdIiL8eMbypZHqP2yM2rZVijK1ie4\\/TCw0sirQwqyZFPPlkFXpEQrKObkfwZqK+Rxz4R4+n1o6Jxs5WqtEGLU11448HK1NNUmU0utFU+KVeRS\\/CZnq5EtyH+Rw4+PrpW9k8XVv6z4er1+vLPQ7nRKOjGkc6jp69jDLzvmeEsnFrwej43kzo3X815mDplaP0nj62Pn+Xn7cjxnbXC8kcGpXO8l6tF1nC9TTGNUBMDgqF6lQ2gGUkQ6kIdSQdOHi1cul+jNolS86KF0BugHRA8kaMBmgrNAPiro9kQ+fN9gkHNo0MACjAjAjK2iibNDNBCNBSMoUBWUIwFAwAAAAAAAAAAAAAAAADZemFNvYVSTLUXgxXSLIy20KZAVmjKm2QetxfhuVyOFfNj\\/jj2cevLJ16q5IrXg6C85DIfuQMsgDKwG7EFE\\/BBmwKSQXhGR0SiIvinyZo9ng310cemK9\\/jZNnJh2ryEVV1rr+jW3MZUVGQlFFotKQjmzNb2VHVgyy4OvPWIjzMk9dGL91XkcjJ1RqRp4XNz+zvzGnicits7Qc2jQ6+Xh4cY8b499qa\\/Nf0xGXJo0rNAbMbAtOMiH+sBlOgG8sgz6aGhXGiq1QQU3fTp\\/1IrpxcxY+NWFxt1+zFn2zjznG2bbMsBNUPjpjQ8cMaa9n4fgcSs2uV4kzazafkcfDGali8x+iJqX1oqlrGgOfJhTKa8\\/kcT\\/w3GteTyOM1+jY43GmaApArKMhtBChdUgmGuzCYsa11x4OeGujGzNi66ZZjDVoomGrSzOJp9kw1s0MXXRBDXdxMH2MxUvS\\/IwfUSLOnNNmsdFlZMRjoDl5N\\/gzfMV89gj0fO7fVjujGjhamtcrZDTyzFQ\\/sgVhUrvp\\/+TUjUjnu7t7p7NyY3JjEih0jKLYtmay7ccs42sWqZcKvBSf9Di50x7fb+Z\\/N8dTya1\\/Z+k+N1vLHljyXiPZrzWE+ousYSsZuVzsScGtc7GKSsm6OvCKh1j6TSqdt+mNZTnEVDdCIbqEapAvGS4nS9MzRPWyg6gZ1A3QDoKZEU2iKzQGaKFaAXQRmijNAYwF3oqFutmkTKMCFYCsqkYCMoQDAMAAAAAAAAAAAAAAAAAEA6CqSZbjogxXSKmW2hTAaiB0RXbh+R5eLA+PFtY69o53x826JSzQtjr8vJKrpyOOvgxBJUaDpkFEQUWyCkogvCMjohGUdEog9T47jTlfk493GOq9DNgnDrRiXWZXTxcwsHrYcm0YZdKKh0BjKhd+QjMqWio5u7n9lVDLyP7ZqRXl8rkbOnMV4XKyts78xXC\\/JsNihVkma8JvyEfU\\/K\\/CfFYPiZz4aX26\\/\\/wBL\\/jEr5TRW2zj2B048SM6iv0k1CVOijNFVbBi7MzaleguNPUxrGuLkYUmalbiU4nXhF1o9cbIv0TTUnia9l1WfVt+CCv16IKYsO2E13YuME1b6uoQvUoVyAjRV1JyDR9CpA15vM4q\\/o1DXicjB1Z0i65+po1uiGt02DW9GvYNPMkNdGMzYa6Zoxi66cdGLDV5ZMXVZZnDXRjmmYquhYWZ0b9LGqotoIvg5v0szeNRXP8h9pJxjUc32msdNVxZdksXT5K0Zwcma\\/wAGbivKw+Ej5fT6brm\\/BysQy8mRSZ2Yoq8f4djGo5rtI3I3I562zo6MmHT8DVV\\/x7SMe7OiYKmuzj41vycuqx1XpdYeuq0cXm2pZ\\/GKv\\/wa4\\/Wo\\/m\\/zc75Nf\\/k\\/R\\/G\\/8V7eW8Z6tcqR4zWuVSrGblc6m8RvXMfQy6y2I6VsrKmZq14QjKKg0jfrIg6BG9AjeoG9QDqAvUKzRUbogYKZEVpFGgFaKFaKF0ArRUKyibKibKhSg0whWAjKJsoVgKFKAAAAAAAAAAAAAAAAAAADoiqyR0i8GK3FkZbNKIp+hNXGFGogoiCkhV1C1syM2wKSQWmCaPRwcJVj7HK9CDjrWjQeUQXhGR0QiI6ZRhHXxs1Yn4M2azXVfJrJ7M+uJi\\/HvRKPWwZjDDux5URFvtRQfagidZUaEcnI\\/wDS4OHNy0jc5V5ufmf+nScjivP2NyDhzPZuCGjSt0EUeTLU9apuV+gFUgWxY234IlehXx3KxY1luGof7IzpFIErxsAWMqqY11ZB1rOupnGccmauzNNRbhdJv8jNK9DkXgceDEZjys2tnR0TiurKO3hvBkb+wxWaopj7Px9FHbijwaZbcgRqSjPoyOe3V9f7Kak5KE6ANK0MRDk400DXgczGtnSNa89wbNZ0Bpsa61tkqLZqnJrqiSBOpTXTxeNWV+DFS9OrPwrwrbM7pO0oYxrXTj2zNi69HjYHRy6rUeni46RxtbWUSYVScKr9EGXxGaiOPLxKOsZ1H6bRrDW\\/VRMa9hPaSY1pu9MzjWsya+tiLrzsMblHyen049LjYsfX8jzd1KncKa8ehKoVpCxV3ll4zln2Y4KTbejtK6F0VXRxUu3k59p09C+nQ4xwm64unk666a6MS0ZrFrrmvBzxyR5daw0dPHPsj+e\\/JfnyGfoPD9Qrl+o7axSPCa1zqdYTcrnU\\/qN6506laKwjWPyaZZ9RdRv0l1lv0k1CvGXUZ0GhepUbogwoXQUdSozQFuPim71Rm0NyMU461PkRYkFAUALooxoBGionRUTo0JMqEZUdXGy4Zh915JUrkyUuz0aVJlCMBQMCsAwAAAAAAAAAAAAAAAADQGQaWhGK3HRCMV0iyRl0VhGVWfoio0jSMSCKSmRTyQU7MDUQWxko6ZMDpnkXM9UZ9Qu9vZRaEZF5REd3AjFXIhZv+Pf5GKzXofI4eJOf\\/wDiPeMyzNc0oNOiERHVjlmKy78UUkZZWjM5Ad8kuBf8kuCd8r\\/01Ijjzcz\\/ANNyDzs3Kb9HSRXFeds6YEVsIx+SjEgp1Ff0Bv11\\/Q1GqGB2cNqMs0\\/0yVmvqef8vx8vB+qV5aLe9mOb51NGWmNJgZ1Ko6EGOGVWdAoUhTfkQTqWUK4AxJr0VHfw5bYZr28eD8SMalcGhGpKPTx8\\/BPC+lz+Wje\\/SPHc+TKl6FNZ0CanfHy5fxxz2ZTXhc6Gqctaa9m4a85wVdJ0KaOoDTITT9CGu\\/gZpw15MdRjp0c\\/mTknSJzynLzoN46a7+JHZnPpY97i4kkeXp1jtWNs541plx6Lh7O\\/jcda8k9WbV7wSPVNQycedGpBwZcC34R0ZTalLyhiyouJYxvSfUtkxrSZ4\\/BkxrXkYM89UfG75fYkdkZd+jjYYKdMi4XqFZ5IoTaWv7Cs0BSfBmpVk6ZnGFYkjFq8wZYtWmCMWuP5W1j47R38E2pHw2ae+Vs+3z9RWfWa1ktYzUrnUqxnSOdTeM3HOlnD2ZrWKa+M5LOmWY+P3rRdSr5OF9Xsz7M6k8RdRGsZoSqCok5KFZQugo0EABooFtegB7fsKwACsAArAhaKiVGhKmaRKmVEmVC7AUoUDApQMCsAwAAAAAAAAAAAAAAAADQp0RVoM10jokxW4vJh0iiMtH2BmgHUDRn8QgQDoB5ILQQdC7L2YDryBaUQXhGR0QjKOjH4M1HSr2jOIrCIi8Ig6sT0zNZd05V18GMZQqvJppOrZqIXtTNIOZieGJrt27GuWdeVlyNnWK5nVJ+DYn1ZVOpIjpw8O8n\\/AIjN6V3Y+Fjn35Od6VdYY\\/omjrxcTHS8oztZLfxuGvS0Wdo5L4Dw2m\\/Mfs6zrURzVDt\\/X4n+jSJbKqkJsIvOMyin1DRscd3aSJq6pzVj\\/GJnTXskSOPoabZooFHatf2B6+H4C8mLuzPs53p5XK4lcfK4o6StTpTivrRUr2sWZdRjApbNCTgoRwArgqaOgTSuCmlx8zJw7d41vZYmvC5u82Wsj90aNcNYimoVBV0nUpqk4aa2l4ImtSJgNA0dWypp5gGvV4GPyjj23y+gwR6PNY6vUwcfaM4mur\\/HlIuGsUtejWDfZMCUhhonjw1tlcuq4ubx5U7RYnPTyjWOsrUzONSsyeYYbfM4H4R8ft96O\\/HZ5qK9jCmTIBkGaAdQZ1DKQisSRi10RJiudrpiSOeqpaRGdfN\\/O8re5R9H43Cx84p87PohtBmko3GKlR0jlU2jbFE\\/i9mnOnu+4jLInT2iotTq\\/ZGU3JRG4NDnuTQhUlEmihSgAwKAgAABoBShWVWFC9ghHRRKmVEqZpE2UIwFKMAUDApQMCsAwAAAAAAAAAAAAAAAADQpkBWTLcdEGK6R0SYrpFUZaMQaA6ZFGig6hDJAPJB0Y\\/DTM0dN2qRjBsgWhEF4RkdmPBkeJ5v+i8GWdPJB04r6w41vt+yMq4zI6JIh0yD0+FzcOLBePJHaq9MMWORsjTt4fxeTlY3kT0isWoXh+qnD9oqa5eQto3yPLyLydYqXU0HWMaOzjcPt+dejn10r0Zx6Wkcxv1gbMAdWPaRllVBBcpo1B5fK4en2k689DmWBm9RScTRNF5REU0QbO5e0AtTWS\\/7bCqcr47Px4m79UbsxdcfQimxrrar+is19Pxvk8H0Lb00iRzfP\\/J5pz53U+jfMWJcNR9y+z+JpK9fphvMpwvwIzqmSOldd7NGk6FCuCoVyBmiojlpJFHm8jIaxlwU0y4iGRIo56krRegNViqmeq9MmJWdCprpzcGcfHjMrVO\\/+v9ETUJxbKav\\/AI1yttBPZ6XAx+Ucu3TmvpONx3pM8+O2vTxpShgeqLgeHPU685g569+DjYCJ7PyTAmfIsJZHLp5nK5P2LSN+rMjh6h1MoMVqMyS\\/rZG5XyuB+EfG7foo65ZwqqqjAtDRihq0ZGJhFUZZPKDNWiSOdrpxyYc7XbHGvr214L63N\\/xwvkmuXnZlhxP+zXi52tT7fFc3K82Vn2PFzkdHNrR1ZY2aZqdG451KjpGKU051rS0ac2T5Ky6uPgWTJMN9d\\/slrFqmfAsOVwn21+ySpKl9ba2v0VULRRCsbZoSULt5KI8iZXosVys2K41GvJBJ+yqwIAAAKFAxlCMomwJs0hGVCNFCMoRgIUYBgChWAYFKAAYAAAAAAAAAAAAAAAAAyCqyRuLwzFbjohmK6RZGGzkUyQFZgzqhzoDdFQ0xT9Jsmh4kmi\\/XSIjZIO\\/i54x47isat36f9GLBkgXgiOiKrr13+P8AREWhGReEZReQi8kRSUQVlEQ6x0\\/RB08f5LkcSXjXpmmLHHk5NXTuvbNSDmy5dm5By0jYTqUXwYndpGbR7MY+spHDRSYAboAddAUlBFUggNB5xKl5Gojy8PGXVYlqv2dtjKF8akttaIEjFutBVsvHeKurIE6AK509r2iqpyOVn5EqMj8SXdHN0KM6FQKPJpC1j8+DUQvTRpFcWRy9orLrjM6e29lxHTNIuIbaCEbRUQyWUcfK+yZ3S0mVNeTmyG8HPsqEfkBHIB1A1IIdIIdRsIrjjTTCa7MmX7IU6GMOz47H+SMdOvNfWcfr9SRxx6YZoijRcB1IMcDBN7n0TCuLkOr9m8cq5fqnzv8A\\/QIRYjLa84DnVZmwr66MtSv57w+VjywnLPl+Tiyv0nFln09ficTkcmXWKdqfZ5O+pydd88\\/qVU5py\\/aH66R08OMvJyfXj9mOvpjvqcTafPOTBkePJ\\/JGYc9TqbGRRLFXhmGK6IRlzrpiDOudrrxwYcrXVfOjDh0z0+Pydevp\\/jz\\/AMtuvkPlfkPtppM9fh8WPRJjxz1xU7NxlCqOkYqbo3GKm2bjnS9jTFY7NMU2NlYdcMyycIzyBGyhOyRRyZn52jUVyWzSpMowowAAAM2UZsDNlGbKEbARlQjKEKhaKJsBGihWUKwFAUK0BaAQKAMAAAAAAAAAAAAAAAAA1BVJZFisszW46cbMV1jqxnOukW0ZaPKRBeOpiqXJosCI0j6n\\/TvynxfD4WfDy8P2ZLX4s83k5trHUrxrie9XK0m9pHSNpNmkNIReCC8GReERHRCMo6IkyjpjGRFVOiC0oiOnBi7vRm1KrWPo9ER2cV4lP5ErFcHPqO\\/4nTlY4XR1xSzFZK6ytsqJ1Lmmn7RUYkB6Px2Pz2OfdV6OjmGQHTh4eXMu0+jU5t\\/E1DLDiute0RSyUWTCAo6cRGaM2JJqzXNZPy+Tiy4phLR267lmI47xROur2YUjTfsgOoC1JVT6FULHt6Kiy4\\/9o0xorjopqLw+TcZ0tYWaTUHLTNw1XG9FZ1ZZNFZ0PMXEJWYYOe8xrEUyfIzl6RmncT7GMPI5XSstPGtT+kaajmclUgCsIwBkBWEGV4gJq0wGdWjHthHr8LF10Zrpy9nFevBzsd+a6U0yY6a0mBkhgGMRy5WMZtc1TsrKbxkUTjMVpbqc6qOdf7dEaj8+\\/H\\/L5eNfvwdfL4J09vg+TeX9A\\/05\\/q3Hih421qj4XyvhXdj6N9PNl0\\/I5UZM1XL8V5OfPFke3mZD8XnZePk+zE9UTrjWe\\/HOplUyczJyMjyZHumZ9MOeJzMimOzFiV2YqOVjnXbiZzrlXbjaS8mHKo8n5PDgn35OvHhtYx4+b5H\\/ACE9M9vPh9R5GT+b8nrgjdaNyIjdm5Ga56o6SMVN0bxikdGsYpXRpivX43xEZuDXJ7pNfo53vLjjevt5szpnVXVCIyqiIZLYQmbGkhE1zfRktblGtXXFn3L0zcVzNr9mlRplUmyjNlBsA2BmwF2Bmyi2Xi5seNZKX4skqa5tmlYVGBC6KFaKF67AkyhGArKFYCMKwDGwpQADAAAAAAA0FAQAAAAAaBgGgMg0pLMtLRRmxuV14rOdjrKurMY3p1RBSaZFNpgbIHTi9mKq93taRmImpNIpMjRbFDdJf2ZqPZ5vw9cLDiy91X2LekcefJtZ1zRDNarpjGyajpx4zLLqmTKH0BSZIistz6CKKt+xiGqL67QTXBlb35OsEulNmjXVjwVK7z4ZnWNcmVPu9+zcaCQV6nx6\\/A5dju0YGMD0OF8hGHH0pHbx+T0ZvLlz39+V3\\/Zzql+sg3qUUUFFYTRGWcjJ+BYjj7bNodBTJBD9VoCbRVL0KL8VTORNmozXXyXOR7S0a6usodQyn1XY2gqVo0y4ckfkdIF6lRjRWU62aRJ7KidALoqIZEBz0iqm0AjQUfrQQ0oItElR0xAZWS0GXVx42wPY4+PSMusdK2iNarNkxv2XitkxfZTsTF9iVYxNQabKhepFDxVrf6MtJemYV0YkqMWITmRP00Zaj8vHudFcPIyYnuWY64ldOPJeXscX57Lj0qezx9\\/Fle\\/x\\/Nz9exx\\/nsFfy8Hj6+JY93HyuK9HF8pxq\\/7Hn68HTr\\/Tmu3F8hx\\/\\/ujjfD0e0dM\\/LcWf+xz\\/AO36c7Y2v9R8fH\\/Fmp8TquVscmf\\/AFRVeJZ6OPhY5XqPNy\\/JZcz8s9M8M5Y9m4uVc\\/st4TT\\/AOS29j0TSVm2WcpqVZTeM6R2axhJ2bkZL3NYxR2Kyvi5OaZ6Kn1f6JeXOxWAjpgjCiIjd6CJZcjZcHZxOZgx4mr9mLzWLK8P5DLN5W59HfmOnLzqZ0aRplUuwDYBsDNlGbAzYGb8lR05OXly4ljp\\/ijPqmOZmlIUaBgQrKEZRNgIyhWUIwFYUoChWAAGAAAAAAAAAAAAAAAAAaBoU6I0eWRV4pozXSV0RRiukq8sxWl4M1pfxowpSorJFdGOWzFHTGLZnUd2Hg7Wzne0NfE6PwJ0iyWW0ldNpetk+kXx4CajrjAZ1F5wk1lVYhqN+oaG66KjGUL20yo61yZ+vRMYx57aeTZ0VVuUgyz\\/AC1rRcXHNb71s0rUgr0vj37Ry6R3mFGtgUjBsamulcfSJrOs6FB9ZVOpCGUlEeXiahM1Ecak0htAOgG8gHUo3qUClmkU2zTLKs1Iyg6e9m4hayNmsZT0aQdTTJKRUSpGmU3ICOCpqVJoCFIohaCpNBSNACRUUlBHZhwVS2kGLV4jQZ1XqVNd3Dx+SVqPZwwjLpFqxLQxpHXkIvj9EDhtnUit6kUjRFZWRqOoa1yUZCzneMxYI8zmOsVIzjUj81nrdAAAMqaJiy4pPIyT+zN4jpPL0tPOzL\\/sY\\/lG\\/wC\\/Sq52Z\\/8AYz\\/KN\\/2qsci37ZPWL711YshixrXbjyHOxrV5yGMNP9gw0rsuJpe5cZ1jo1jKbo0yJ8srKrx6WwyyX5Ky68dGGV5ojK00EawyjZRz2aHHlRuNORvTNiGStsKTZQ6XgBGA06ASn5KF2UYA6ZEDYUhQAACsoVlCNBCMoRgIyqVgIwrGAoABgAAAAAAAAAAAAAAAAABoU6CnkirPJ2SX9Gcb1WGZrcdEMxY6ReWYaVlmVVmSUdGPGYtV34Mfg52q7sWA5Xpl6GHwtHOo7cXAefzox74xrcnx7xFnemmxYC6jqjCZ1FpwjWXXxeHOa+tPqjXP3WbU+TxpxZXEvaRb9Ulc1SVUak2iNoqIu2jYi78msB9rZcRiArKIKJEHTxac2Z6HrLytnJVMc+QjtifBlldegyjaWyqwqtUlQ\\/UDjz06ev0dIiKRQ3Ug1IobRQ2ig0VDqTSByaZRqTcCOTUZJ1NsjqVmsaKylSNIlRUKEKwiORFHNSKqFgT0ArRRqQFJRUe5wMvHWFq\\/ZnHHoqmatteioaoSKO3hySt8vUj8TLqo72NXSEDygqiQbN1DWAgSkQRoDntGVQyJkHFyP4My3H52PQ6AAIAAKNIqksjUrox0Yrcr2PisfHyt\\/dXXXo4eTZ+Osraczkal7X6JF085Bhp\\/sJgO4w1jsuMs7lxC9io2b09lZX+7aJiCWEWhkZdeJbMsunWkZZI6KhPslS01t\\/oqOambHLk8vRpXJnmoeqNxXKyhSjr4PI4+J3\\/kR9ia1P8A4zNiVyvy20aVgChQUAAAAAGoBgFaARooRlCMIRlVNhSMoRgYwFAAMAAAAAAAAAAAAAAAAAAG34CmcNSq\\/TChMB5ZFXhmXSLxRityuiKMVuVfGYrTtxTs51p6fFwJnDrpp3Tg0zl7I7MWMxajpjGZ1l7XBzRE+Tj1HPpvKyzfovMSJY5RsrrjCTWdU6aKjfXoqEryaRGkaghSNiFybg5rk2IVJpE9FFJRBaUQejwuC+QznembX0GD4zjYsGqXn+yRnXnbmMjj9fomNx0QjCumK8BkzyaCJ9tlU0JhHTMhCZrSWkag4qnZoLrRRqApGN09FRd8ZpBEdaNDUjQZIqBmoibRuMlcm0T6mmW6KzU6RplGjSJNBDZeNlxQrpeGEc7ZUQtlVCgIWVSAKEUxYqyV1n2EqnRzXV+0VFICV04raDFdKnJXkrL1OB49ma3HoMw6sCgKpIaVlB0kOVtjIlTZGE6kg57Xkga3j+oyrx+T\\/Cg3H51OzoAoIAAAAHTCqwzLcdWK2jFjUrpizON6srM4HVExW9hgx0XEPxpnLnjHT6zT02S\\/jOvS+b+O43AyRPHyrKqW3ox4+71+syvLTOqnREVlgWlmWXfxIrIm0\\/4mKxVVe\\/AZRt6rRoRqjUEnZRz3entGkcufJVvbNRXMzQUAAdAdE8LNeJ5UvxRn2iezkfhmlYVQAAAABqAYAARlCNFCNATZVTYE2UIwFAwDAAAAAAAAAAAAAAAAAADQADdhQA8sKqqI3qsUZaldMUc66R1YTnW49LAca6R63GrR5+ld8PZyR1RSMsuvEuxism31ZUPNBHdxvLJWK9TH10c3Om+l5HqTUTU83DyY52blNcfY2pGzQmzQk5NCVYyohWI3on9RdB00BSUQehweY+OYsZsd1\\/KvIv6M+qerhrI6vZrGnbg5PjVGbB2TUv0zKGCmidhHXj6RPk6cdSfrKV5v1JjEQap+TQ2ZX7KFuVsoVIovhalhHU8k9Sjl69maR04MK\\/Z04m0byMSS2jXXOFcrQZK0aQjRuMlU7ejSGz4li1p7NM1zUVhGiokwjcufJklRT2l6KOakESpFEaQEakqpNAKB1cTrvbemGKy\\/5v8AZQ8IJXXgj8lsMV7eOMf1kcbRiaV+A7cPQS2jLvGKKDch1jDWKqQ3IdINyN0VS0RmkIw3QxXPmkyy5LRlXFyZ\\/Bkaj84nZ3BAAAAAAagKSw06IZitOiKMtLJmVWmiKKoBd7KG0\\/ZEa7qv5PYGoIogiksgrLIi8W16ZMZOrZEDsqI1ZpEboo57o2iFMomwEKNAZMDuxfJZcfHeFemY9ftm8\\/689vb2bbYUaBgAAAAGgAGFCsBKKqVATZRNlCMBQMAwAAAAAAAAAA0ACgIAADANAAAKAhgpkw0tDMtR042YrpHdgOXTrHo4aOFbjvxZTlY07ceY52I6oymcZdOPkOTPqh\\/u2x6orOUYy7uLnSM2MV9H8ZGLPDqn5Ovg8XPX\\/l9OPTf8jDg5Djfg5d8519IblczD9T097MjwaybbO0jZexQ8w2AOGioPr2NGPANRN4TWiNYjWhOuiqdIB0QOgKyyItNNeiIp9+T+xgvjy5GTEdS215MsmSKh0ArRQjRRiRoNoo3RR0Y5Kysno1E1lt0a0tRcmoylSNRCa8m0N9DpbRply5N70zSVFlZTZUTpBE2VEqZRjyNx00ERaAnSAjSKJuQBbKKyEdWFIMV1wGHROS\\/QTHbxIbfkjfL1YnwHr4ikrQdp9BkKZBY0NABWgzYRmWAUTvyYrDkyzoyrh5P\\/AB0Go\\/Nx1egEAAAAABqAdBVYZGnTBhpaSKojKjYGy\\/IFuy0QT2UUkiKIgpK8bCGQFEyMn7BC1ZURqyiVUaRGqKiVMoQqADQMA3sApVAH0XwnwPH5\\/Ey5smVQ4XhHHvuyuPk8llx4WfGseWoXnqzrHWJFUAAGgaBgGBRk668Ac1mhGiibAQowDAMAAoCAKAAIAADQoAAAIAoCAAAAADQppCuiJMtx0YjnXWOzG9HOukdUZDFiurHkMWNOzFlOdg6oymcR0RlM4i6p62ZxFJyFxHrcLhcjPHePRy66kc7T\\/wCTyONbjblljOaV8i6e2\\/JrDDfbT9sYjexoPL8hHdh66MM1tpNiC+XiLDM1232OnXOGp9TmFeMqPQn4\\/jPjbfvRUeDlx9aaNxpPRpTIgv8A4+b6\\/s6vp\\/ZU0i2QVWyCiCOnCZR2R6MsHKNAwoVsozZoVxw69GpNG9dMrK8eghjaAqIV7NwTZpCM0hpzuVo0yXO8Vyuq\\/L9mkrkqQyrxccN+SsUvPx45XgI8\\/stGhz17KBSEXXFVY+xNZ1xXHnRWi\\/RTJqqTw2zPu3OT\\/wCF\\/wCE\\/o16N\\/wy+56GWBya9nO8H60a1yvLr48f2VMerx50RvmO2GV6uacjoCDQsaGgBgQrCU2loLiF+GYrj05M1IykefyX+FEbj83nR6AAAAAAAADoKrBFjpVLRltWWZVREGhQBuyDUBRUQUVBFEyIbYG9gPQ4\\/GjJidNmLWK87O+ttI6QQdm0TdlE3QRgRhRgQAAVgG6KMArj5OfEnMW5T9kxMTbb9lVgABoABgUAaFToolRVQoqJsBdAZoA0FGgY1pfoLhdBBoA0FZoICoAAACgAA0IpGCrx1afiQuJBAEAUAMgKSiNOn6smPSuXO\\/WzGukVgy3F5ZltaKMq6cdGarqx2c7FdWOzODqVr9GMRdZnrRMQ82MR9P8ADfMzhw\\/V12zz9+P7ceuXDzOV92d1rR055yLISaKq00GVUEUkI6IpogrLbIjoW37CHSIG6gLVWp678FHFlk2OdyaUJFHrT8lvif4\\/Tz62a\\/p\\/xxjHHOM5rqigiN66ApjYHVNmWVFYQ3YBOxRaMeOsTpvydZzMEpkyLY7rH6N83E0O+z2EMr0aQ\\/2o0y3tsqJs0FaNomzURMrLKKylRpCd3L8BlDPdX7KOfRQrnT8lRugyO966ohh8fGdGL06Tl24+Gjhe3WcrfRKMa6SFcSNawvVGtMb9cs1KzYeeKmdJ053h0Y+No6zpyvK+upWFIsrpzVlQdpTEbboNyGCgAAzQTGNEMc+WWZcrHBk2ZZcnI\\/gyLH5vOj0gAAAAAAAGQFJZGlZZGl4ZlVkyKbZFaAAaQMgHTCH7EB3CB2XA08zJC0mPVEKytvbNIm7KhHZUL2CHVAZsIxsA2UGwHkgZgTKAAAEA70AoC7Ko2AbIrNhStlE6KIUULoA6kXB1C4zQMACgGgN0AaC4zQTC6KjAjCgAAAAA3bAwIAjQoCmSIq+Naaf9Ga1Hocrm5uY4rNr8F1WjnJjpEkVpRGVVkjTohmR0QzFV0wzI6YZkXlkRaWQet8PlWHOsnhv\\/ANOfbn09DkcHPyFfLxz+Ht6JzrGuGCtO7iVjjIqyT2n+iM071VtytL9ICsyRFZkItKAvJlFUgh0gFpFHLkg0qDg0E6gWxyRlVIIZIiG6vWyhE9MCs0QUTCN7BG9ihpZRZMrJm\\/BUS7G1Hc0jUzSLTRWTM0jCspuTSEaNISkVlGiolRpEKKhPQE7bb2yoF5Ijqw4NnPrpvmPQxYVKPPenokVMNJ2GkKNKUopHsqO7BJuMunqdIeqdydI4dcpJPZXN040Ho4iyQd8aFAAAAAAQK0Zo5c2BV6OWsXl5vL49LHRZWMfmk6vQAAAAAAAA1AOgqssjSs0ZaVVEDqiKbsA2yK3YG7AbyQNq\\/wChpg6ZP6GxMTvtPsom6NMkdlCuioXsEZ2Kh8f5Wpb1v9kqOjl4Z49qZtX49okRz9iq3YDIDVWgjewGbANgGwM2VRsgNlGbKM35Ir63mYP9NL\\/TePJhv\\/8AsP2jn96zN18i2dHQjooRsBdBXZx7404KWSd2\\/TMXdachQrKJsqMAAAAQDEVugpWgmFaKyRlRhUAAAAAAEAGoKfQU8oixeFoxXSKoy2okRVJIqsoyq0Iyr1eDwfvx1fbXU49d4pOvWmv6NC+NGR14cfb29GbUPM+SI6sTqfRKj08HyPLx4KwTX4V7MsXksIg6YQReERHRJGVZQRVICskRVAMEY\\/IVOoNCFQUSclQ8JhFdERSZCPQqsH+P\\/wDoo8ivYVssIoqA3sEHYoeL8lRdUismb8FRFs2NRpFEzSHRWTpmkMVljKidGkSplRCmaROiok5KidIIm0UPinbM2rHq8eEkebqu\\/MdDZzdCNkEboNItmlNinswldKxIsZdmFeDpFWNqxzs1GbzrFjNaz6HRW4dMro0AAAAAACDDNGaOdghyZX00YMflQ9DQAAAAAAADQGQU6ZFUTI0dURVJeyB\\/QUdgHndeiK7OPxttO\\/Ry66bnL0bnj6XVHHa1gULW0hq4xOV+gYlmiMn6NSpjgzcf\\/wCp2nbneXBaqX5Osc6TsaZZsA2EbsC+OsXSvs81\\/wBSIlsoefJAyrTKM3tkBsDdlG7IM2UZsDdgGyqVsDNhRsisbKpGAaA3qZaGgpGEIyoQoAAAA1EU6QUaIoAxoqJtFYpCssKAAAAAACK919fXXn+w0xEFoRmtx0SjDpDpEaUSI0rKMqvOMyuKxJnVdeKskLUvSZiqtMsg6ccmdR0TLMotMhHTjgzqOmJIy6cckZdMQRF5kItKIi0oMqygLLGyIZSUboBlAA8YRG4NCDnyUehmy8T\\/ABVMr8jv11x6\\/X6y4ZZwD9gharYBx8Sy5VLNDq5nDjDHaTXXODh2ZGbKNTCHTKhlTKi034NMj2zSOnF0WNpryblmJpegZ0GkMmaRWF2LIhK8MrKdMqI0USaNMkaKhQhKQRGkUX48eTn3XTiPRnwjz16YG2yK3o2ZRO8bRVc7K02K6sI68eTsWI7cXo6QVRpo6NNMZUpTTmZbDcOaaAAAAAAAECs50c\\/KtfVRyNflU9DQAAAAAAAAAZBTIKdMim2RVYoixSsiIpY3T0KR6ODHMLb9nHqusjo+wxjY+wYGnNWtEwb3AWrA1fW4bb8hlwZomztzWLHn5JcM7SuViezTLdgbsI3ZBqZUNsit2EbsA2BuwNQAyqzYBsDNgY2FLsA2FGwrAp0ZUxGmMCNFQjNMlYAAAPGNszrUjtw8K7\\/Ri9uk4dsfE5GvRz\\/q36syfF3K9CeQ9XFl4tQdJ0zeXO50bYxJorFTaNMlKywDQADAABkBSUZajohGK6xZIjaiRlpSZMqrKIrpn0ZaWiTCumJM0dkpddGB9H8Hxvir4eWuU9Zf+p5+7dcu91wzhntTn+Kfg3rRvrQ1FsaCOmJIy7MWIzrLtxYttIms16i+KX1735H3+sezheJxTn+iqeYfsqKwvJB3QlojCdLyVpswEVUBG9QJXj2ByZMejaouSjAgCNKCXUV2n2EUy58uVap+CiOgjCgKh0A6NMnRUVk0ytJWTmoySjaF2aDq9eisldBE2yhWVlNlQjKhP2VFfq2iMa5Ms6o01HVxkce3fh2HB3bC8kHRojJLS0RXn5V5NNwhR04Co9LH6NwVlG3SGKoLEGjSY0K00AoAAAAAAgVnLocPOxV9VOTiY\\/LZ6mgAAAAAAAABoDIKZBTBW7MhthXdx8eltnLqu3Mel\\/h5\\/o+7X4HD3m46Y5O5tB3Lg1ZCYG+wYrHYxE6s1iE7FZSzSqRqVnqOF+GdY4go0DQNCN2BuwDYDSwGbAxUAOgF2FGwDYCtgGwo2FAVqIKIjYbIpGwibNIVlQoQAVx49sza3I9n4\\/455WvB5+\\/JjvOX13x3wS0to8XflLXt4\\/hsSXo4\\/wBKx7p8j4TG14RZ5Cdvm\\/k\\/hem2kejjyuv6+W5fFcU\\/B7OemOuXn3OjtHKxGjTnSMrLCo2X1pPW9foituu1N61v9AIVGgMiKtCM1uOmEYdYqkZbUlGVXmSNqTJlV4kyrpiTFV045MUdWODOo6ZkyjoxvREWXkjK8SEdWKPJlivQxR4MsV1Y\\/wAWmRmvUnnL69a8mtv4xjhv8qb\\/ALCqRVKXP6ZQSgKpsIdBF4h62XKhzINADkI5c0mlcdGlTKAI3f6CGSKgYRNsoUqBFDFQyZWTpmkd2LiZKjsdZ47iYX09Gcc63Zpk0JV7NQRyamtI2jEyo1hNRdFQvYqD9BE6ZUKnplF1mWiMY48t9qNLHZxTh29PDsaODsxPTCK90RC1aA5LW2VpJrQV0cX2Ur1oXg68tcnOmNNGKDaAgCAKA0NIMAAAAAxnLpUeT\\/w0cv8AVflM9QAAAAAAAAAGA0KYK0DSCuGe1Gem+XoekcXd1f8Ayeb\\/AB\\/o\\/wCpz\\/nN1r2cLo6MjsVDNXK2\\/RFL3LiazuDWbCM2Ubsg5c86ezrzXLuIG3NoVoGgGwjdhWpga6X6AzYBsA2AbAzYBsDNgGwo2FOmFaiNKGWisBGVCMIVmkYEbK8krUep8fhl3+S2cPJXfiPt\\/huDKSej53k7b6fVYMSmfB53ntXQRRLZBxc\\/hzcPwWdN818H81wVNPSPd4e3d8rnx6Z7ua49Rx0jo41NmmaUMgoAAAAeSNOjGjFdI6oRzrrFUjLaiki4vEsxrTojGZtaxeMRjVx0RjM6OnHBm0dUSYRdIiHmQzXTjkjLrxyRl040Rmu\\/EvBliuiUGVCoE\\/JUV2tAaiook36KG8p+QOtZlUaO3Xl3n1Yxh51CAZgcmY0OK0aVPRQNBAEaEY2VCM0FKgQQxUYbRSWVl62LnR9ST9o9HPk+l93JeTtTZzcbWdzTI7s0hGzSCKKlM6DLmyV5NKVUB6WOuN\\/jPf8AI03PX1\\/+vLu1sjkR2UIm6YZM8T9hNdXFrXg49vRxXoJOkeeu5XDQCVsCLtlVmyBaYFeLeqKPYx+jpzXXlQ7ANAACAMgADQAAAKAAJRhytVHkf8NHNX5TPUAAAAAAAANA0BgrUAwUEHXxZ\\/Zz7deHQzm6kZUI2VGbAtk5NXCh\\/ozOWr0hs0yNgb2A1AACZo3JqVnqOTR1cTIDSKpODJcu5luV7ZNMT0aRmgAA2AbANgZsA2AAAGAGwo2BqDSkkaihlpjAVlRNlQpUYBXGvJmt8vd+LxrsjyeWvTzH3XxmkkfO6Z7e9H8TDhTbCL4yInyddTLXL5H5vEqTPR4q9XL4fm49Uz6fFY7jy8i8nePPUGac6UqAoAgA1EVSERqOrHJzrrHVCMO0i0oy0tGMxa1jqx4jFrTqjGc7WnTGIxo6IwmdR0xhM6iqgmo3RUViQzXVjkjNdMIjLogjDtx5fw66JjKk2VDdioZFRSQi0hHTxskxX5HXxdTm\\/aUZrm73I8nU662EZLOQoqCHTRAVXgDlyPZpXNS2VWKAy3ogjHBUTZQjKEZpE2yoEyofZWWbNsqIrNVVaRYxW9zaNXl6NM6rlx9NedmmakzSJOtGgryMqJOgM7FQrtgSdgK7ZQ2O9MM10vMupGGYcv5GOo7cV7XHtVB5eo9EqmT0RpzUBzX7KpG2gJuih8D\\/ADRKr3sP8EXiusVO+jUdJQC0BjVYQaAFQFAAFAUBiqU42qlyP+GhyPymekAAAAAAAAaAwGgagpgrSDt438Tl27cLNMw6JMrJWihCgAwAA0BkQUSIrMv8CxOnB+zs4NAzYHbg+Ry4OPeCddb9mbzt1XJs0gKMAUDQhQAAKAAAAMCggZBpSWRqHMtADGUSZWWFRhBbD7M1vl73xr00ePyvVy+t4OfWjxdQ6j3uPyE0cnCx1TSDCyyykRMcfK5K0R15j5z5TKnLO3jjvzHxnOf5M+l42e3kZfZ6Y83SDNOZCsgAKAIZEadfHx9mY6rrxHd9Ck467+p5kjS+ODFrcjrx4zna06YgxarpxwYtV24sRztR1Y8O2kjFqV338flxY1dLwYncrGuWkbVP9m0XxkZrqgjLokMrwGHRJEWhNhk6XkqOmUtBln7KHTKHQQ6AYDQG2Eb5ZBK0US0BjRUCCN8NBHPk9mhTHxu62NZtTz8foWU1xs2FKG7GmKzsaZVx0u3k0xXVlrH08Fjm5ps2VRWaYpnbftmmSujSJ0zSJuihGwCU7rqgmnzce8S3QNc2m3pFU18fNM9qnSAkAJhl0cee1rySpr2OLqcqnZwvLv4+npZlCxjuTHsuY8tvbOLm3qRE6ko5b8MqrcKPszIz03y95LSJK7GOsqNN6AaAAKNKAICgACgJqlOV6GHPVS5H\\/DQlH5UPYAAAAAAAANAYDQNCmCgg7uF58HLt24eh0XU4urjyrTNxmpM0hCgRA112\\/WgEKNSIKrwRW7Ckyv8AAsY6cJ2cQUaAEAUAGhQEYwECAAKMAAAAAArUyKoiNRRGWwFFNaCJM0yUqACmN+TNb5exwcmmjzeSPTxX0PGz+EeLqOr1ePzNHKxi8u2ef\\/6Zxz9DP5D\\/ANJi+jkzczZcbnLxPkORtM9Hj5afN8q9tnu4jl287Id489QZpzLoqDQG6ANAOkRY6cLcmK68u6KdHKvRHRMnNt044MWtR1RJzadESYo6sUmLR3Y0c6jpxX9dKv6M2ald3J+VebEsevRjnx4x6vOb2dlKkaR0Y5MsumURheSovIZWlkZWmgh0yotNMMnRUUSAdIIZIodAMgh5jZBbqgiOSQORvTKo2EYVCthEafk0O3j5F1IxYzkuaQhI4frTfhbN60Hi17RdRO5k1KiX17fg3KxY7cPxuS47M3HPK4881ivozcYTVG0Oshpim+w0yHl2aZK62VA4ethNSZVX42O991+iM2m5XJrJ+L\\/QI58N\\/Xlmn6RWnrczn8W+L1X8mVvruWPA7BzZsCivXoMKYuZUZE9mby1K9p5c14015X7OF4d+O9Tm0zlY7aqqWjInbRRy37NK9T43D1x937Zy6rvxHeZbaanQ06ygKNNIDQ0oCoAAANDGceqpTjarNkEuQ\\/8AZos\\/VflU9qAAAAAI0AA0K0DUBoVoVoHRxcnWjn1G+K9bj6zPq66nnr0RyZlq2vZuM1FmkKBgGlAQUSI0AACHIrxo3y59uU6OIKNCgAA0KAADGEIABAUb+gpQgAAAK0KdMixRMy2NgK2ApUYVABssix3cfLpnLrl34r2uJyUeTvh6JXqYsnb0eexp07pGEwryv+ymOfPylK9m+eR4\\/K5aez1ccMXp5GXJtnpkcOq5qNuVI0aZCQG6IYOpTB1IuHmSLI6sGNUYtdeY6sc6OddpHXCOVdHXik51p0xJi1XTEmKOiEZo6JejLJ+4xGplR0YcGTK9RO2S1m0ZMdYrcX4a9jUdfGU\\/szWavk6\\/okZEmkVkMrSysqywiiYRWQjohBleJIivQqBQA3UqN6gUgCgEsvoI8\\/I\\/yNNp9gje5UTrIULM79gWVa9EQPyEdXBWPb7ezpxm\\/aD5B4\\/+vsveb9JXmZGIiUX1rZpmvTx\\/JzMaNy2M\\/bzuXf3W7R05rnY4+2jrHOjuajI7mmWqzTJlemVF\\/uXUjDnqtsrSuLPULSDNI26ewEoGp6b9eShdPeippck3H8loJqX2lxSO2MHTg+R5GGXKrwyXlZ1i2Pn6Od8bc7Xn5Bf2cr43Wdn\\/AM2X+zPo17jHyJyZJlfsl5+mp19vpcOlCSPLXs5\\/DthonZ7IiiOsGmpRp1lRpuDSoCgFGGPZRszewrZytUrZkJsCWd\\/7VCK\\/LJ7kAAAAARoABoVoGgaFADBWy9PZKSu\\/Fe58HGx3layKRlCsDAAoaUQUMtlCMb0tlRxZa7Udo4dUhpAQaFAAUaAAAGECsqFCAAACgA0KwDAGTIqiZG40isCAoxlGBARVIrRGpXZh5DRy65duenq8X5Dqefvxu06d1fJpo5fyXU\\/8+W\\/LNfzNcXM5afpnXjhnrp5WXK2eiRwvSy+L5d8F89T\\/ALCemx7zcZcDNssKjUiB+pNaxvUGGUE1cOoJrWKxJmtyOvHJzrrI7MWM5Wukjtxwc7WnREmB0QjIvKMIYrLUBWUGX0vwfL4WHBX26Vnn7l15\\/Jza8bnZZy8m7j02duZ9OnM+i47aKq822GavLIyrLKytBGVkGTootAZdUEZdWMiLBlhQIocIzWgrewRDLkKrit+TTSbZQrKgmdkFPRAroqM7lRn2temEY7deyolbNog2biM7s0wepyRrutb9G2ahl8raOnNc7HP3OscqbsaZMmVk2yoNgGwh0ysVbj1CyLv6IxTc68W10KkcmLNWO+0+zTWqRX592Ri1nP5E5ZSS1osTlwcb6ayNZq6o03aR9e76+V+gmseimoXbQxdL99Ieq63\\/ACqJ6L7PQ+Eus3MX9I4+eZy7eD76fZYr8nzq+nHTpsTm1onqjIqmjpOgbMWg2anQbZ0nQDfsg2X2Bsl6GGL0oMjNCTRjkWYhNEVHkf8AFQg\\/LR7gAARoGBWhAABWgaBoGhWhWkRXDl6szY3zXV2TXg5uzGArAyZdPS9lGNNPTIL448Ga3I2kArCOXNl\\/SOkjn105zbkAAoYisKAo0AAAMIBxWt68AxMrICgAACgAwDAjUFdGLpryZrryV+yDCoAMKAI0KCB1WiNarOVozY1OlFyGZ9WvdjzsvqexKytlxnSbKi3+ZyFg\\/wAdZH9T\\/wCn6J6z9Nc7NIxBFERo5FOktbI2dEVXHjqvSM2tyKqNGdax14YOdrpHZjk5Vt14znVWRlFpIPRxTj+rycr+sual+Xj0bgaCoqiMn34CEKishF4IyvLIypLCOqJpe1oMLyRFEVFIDLphkRedhlWaCNbAaCouggaNXmwTtEHHmZqNOSmaUmyjV5IiutIyEbKpGVCUVCFQN6KidUVlOjaJd+r3\\/RuItn5uTOpV\\/wDX0bYqHY1GK5snijty5WBUbYOqKydUVk6kM2sa0VnWplZodBEqsqE7+SiyyeAxUc+TwWEedVfkadVJrwGKaXt+QifJ1L8Fhy5dlaZso97\\/AExO8t3\\/AEeT5X49fxf19TjeqPn19B6EV4Lz36tJ0c7dqsQFCI1FUxuKDaAAIMIgAZG+VBb9hdHMQ5M\\/7VCD8rnuAAAAGhAAAAUAaBoGhTAaFYA8ZXJmxqdOhZZZzx0laGmba8ogP3tgdWN+DFdITJklFkZtcmTPvwjrOXLrpA05gACgAACgKADQMACK9TJ8lgr4xcT6l9i\\/7nOcX2109pjxzq4gAAAAAKMAwIANTCnTI03YUBQECCmIAKANIoA0AANgZsI3XgDEBRb0RoyIpkwsWx+WkZrcexjwrBh7\\/wBnmt2vTJkcfbtWzbLqwmK3HZByra8swKzZBaWRFZuv7JiOueRj+j6+v5f2Y9ftkkM1RR+PZGVZy4\\/rafsmIlL2aFoIytIRVMMujF4af9EZr1OTzIz44iY6uS9da5TnEZMKtCbCKrwVFJoMrzkCGnJ5CO78KlaNWzENMaJIh1rZ38Ukv2hqa0ejzeTm85EkTcpnixpzZuN29E1XBl4+STUqud7Xs0GxvySirogm2BkZPrtV70alwJmy\\/ZbvWtlt1E0wyWmWIk2aQjZqIjTOkZJs0zR2NsJ5fM7OnLHUTk6OSiZpk8vyViulPwHOlt+CspKiox0VlJs0JtlGfY0VEcmRsLI5mytnmgyZ2ESptlUhQrCPpf8ASy\\/DIzxfKe74r6JezxPa7cVbkxWobRFZ1AZMgZFUxuAN6AgwiMAAN2XRuxqgCPJ\\/4aJB+VT3AAANAAgAAAKANAAGCtAAoAwINtEw0yy0iY17H+8nq17t+8ep7t\\/yK0T1X3TdN+zTOsCAK0A0AAYAFAUAABgABgChAAAAAAFGAYEBRgRpGjJkU+w0ANRFaAEU0rYajaWgUoRoGNhC9iozZUamQOiNu182XwlxvrW099\\/2c\\/X\\/AJa37fWOZG0MiKpL0ZrcdX+Tkc9d+DHrHT2EMlWOvHRzrpHXjs51tdUYU80QdEWRFlREOqIh5y9XsmIpk5LyvfoSIyfJR14cFWto52s1Tq4emVlWURFUgytjIy6ZIlWkMvV4mKXPk52ufTM+OZfg1KkQNqaNv0B2YeM35ozrLtmVJYyc6yoC6AgCaMMVSNJ+zKufLxIv0anSuGuLWM37CTAVlE2UTbKhexUY6KylVGkSqjUZRqjcQuzcZrTTJnP4mpWKjKOuuWH0a1lpWKdZDTnYysmyxnEzSVpWAVlK0FSrZVRoqk6kaPELQ1mscjQvUuiuTq8Myo1S90NY\\/wBczkutPpP9L\\/xyI8fynt+K+jUniexbE9PRmrHQRsMgQCia6naevr\\/9GKjno3ZdGmlYGQAAAAABU+R\\/w0IPyqe5QABAFaEAAAAAUAaBoGgAUAAGBABhFaAyCwxFAUAAGhWBABhQFGAAAAAYAoZAUAAABhQAYVGAAQAAU2yLpl5I0bYXW7IrQrUyK1sBdlRnYJpXRWdLsIAGQaVRlsyIpkRTBo6MqqjLcVgzW46YZiujohmK06Jow0oiCssiOnHO1syDYQyYRWCIvJlHp8TkTE6Zy65YsJmyK72jUiGhhF58kZVnwRlaWEWhhl24c9QjOM2KPI6CCZdvSKPR4\\/HUrbM6xa6SI0ujTcqA1oBoCBWzCl2FaQHVUvJRxcjifuTU6HDUa8G9EaRRGjQlTNIk7KiVZDURN2bZLs0zWoqOrHxstY\\/sS\\/EezmVr8TUqVzo7SuZ0XWMNo3rFZ1NazYbFheTIo\\/8AsXWcdHM+Pri2pb7bLqdc45updc8Z1GphHBdTHt\\/FcT46+JTza7\\/+jXfx882XXz3JxQs1rH\\/HfguueJfWTRnRjTG9Bph4x\\/kNSumsM9Rrm4bx+TWtPa\\/01+Oap\\/s83yfx6vjfr6uIb9Hjk178Llipey9c4YrjraObUORWaANAYtJFBD2ywUZuzAplBso0oANCt0FS5H\\/DRYPyoe1AFAGhAAAAAAAAAFaBoBsAA0KxgYRAUaFMiLDEaAAABQEAABhQABQAAVjCMYChAAAAAUYBgQFGBABgQBWgPjyOHtEalxnYLrdkXW9gaOwNHYYvszsVnWbCazYGBGhTyRqKojcOjLRkRo5FOiNKyZbismW4rLMtKzRGnRFmLGnRDMVV5MotNNGRqCKIIvBlFpMopIRWSMqyEdOJmazV9mWToItAZXlhl04l2ZNSvV4+BQt\\/s565ugqNAAA0Aug2TRnYaYRsjWMA0BpCG9lRwcrB\\/wBkalV5uRnSDltmhCjQlSNIlSNoR7KyUqKSXWXfh5mSMP1L0yMeqNfxZqFiCR11zx2YuHV4+49nOpddPRvWcN0NazjZh72i+zOLNVf83svszYWsQ9kwn1F9k9WPEPYxN46XheC+x6p\\/SPYxjwj2XGfUNXGfUNMN9Y1Ma09F1n1SeMvsY7Piq+rmS\\/0zn5fvl08X10+yw1o8vi79a+lFMmqRry9+xjm\\/jRwRZPZGjFVhETsBN6KH7suo3YGplDFGlDIrQAlyP+GhB+VD2gAANCAAAAAAAAAACgDQAACgIANCgK1EDkaAGoKdSRWUioQIAMKNIAoAMCsKFYZYAAAGFAEYAFGBAEYAAAAABW7CjYBsA2AAAAAAAGgMiNKIy3FERo6MtHRG1ZRlqKyjLcURGzbIrewwVizNi668VnOxp1wzFVZGRREQ6CLwZRVGRSWRFZDK0kZVkiLzRGVEwi0sjK0siPY4GLf5M59Vz6ekRzBQAAABjYUroLhdhrGbA3ZQbA1PyEsU2GCZEnLQ1XhcuHFs78q42dAvRmmNZ9ZpNK8LNM6nWAGl+oA+saKTJNTGZX40b5ZsTlG9Yx14uRcx1XoMXliW2a1PVacZfZnFJxD2ZxT6h7J6t+svsnqX6S+x6j6vPgeyepLwVvdIex6k+kex6keIvsepPqLq+o+oeyY6sPx\\/2R2J7M1y5OP1pyX2XE\\/qNeyYJhxapfoWk\\/X1nEyfZhmjxdfVe\\/i\\/S7omtI0EZNNMKunsLGsikYRNlGFG7CGTKHTKHQDGmm6OnPOiPJ\\/4qMWZR+VD2oAoA0IAAAAAAAAAGm9S1r2F0oQ0T2egsY\\/DAAAAA0KAoAdMypgoCn7EUrZUKEAGAaUBRqIqs\\/V9b37I39OejTnSBAAAYVGAAAUARgQAYABQABAABQAAAAFAGhAFAAAxFOmRpSWZbiksy3FZI3FZMtxVMy2NhR2BrOwRSaGLK68VnOx0jtxWcrGnVDOYqiCiCKwZZXkgdGUVkMuiPJlFdDWWoIstr2RldV40RFsP5WkSpX0nFjrjR57XHp0F1kF1GDVaWANWInfgw1E3RW8ZsK0INlBsDdgOmRlvsqOPn8btHZHXiprx+nnR6Yza6\\/rx\\/X\\/6WRytTnBs2l6U\\/wAcJ7JXgBqDwkrWl+ow0x49LY0ctJ1RuVDLGzWorMDWcXiB7JjoiBrOLxx7rzKLPtPUyhj2TG\\/WPYwfWX2MPjjVJsezOKcjra8Iey45HjLpiVYy6mE+supjOhdMWx5bidIjPqjU9ntl0wv1l1MNj481erel\\/ZZTHpfG5FLeHfhejj5I7+K\\/49HRxd8K0VGKQG9FQ3YLrPBFK0UIBhQbCHllFUFMbUOtF97ylc3Ky\\/7VGN2pr8sn0WgAAAGhAAAAAAAAAAAAAFAGgAGhQFAGkUyZBoUBQEAAAAYUBQEGNgKVGBABhRgAAFQAYEAGAAAAAAAAAAAABQFaABAFAABTB9f2r7f4fsla5\\/8Apsrx\\/Y\\/q\\/h+iLWJhYomZblVVGW1Zszjcp1ZMa0dhi63YGhTJkHTiozW47MdnOxt1RkOdiumL2Ywd+JR0OVCb\\/LwaRaDKKoyiiCOjGzNZVTIy3fkos8ztJf0TGTQwj2PjeL3rszj3059V7qXVaODk3ZRnY0YV0Fw6o1Ky3aLehHJRhvmI7K2eUEp9BklFabPkqB+CATKLQyxzp8kJ4z2Xx8zmWX7YeJeHWRnTli1ScR0xztdGPBt6NTnWFq4\\/X2W8WJfpz5MRzXXNWIzW4T6jnW0ck9vxRF02PhbM+6HridUX3Evr8mvYxacY0VmRpj0ONniI6tHbx+acwTc96bX7OV6ZsOsRNTG\\/UXTG\\/Wi6YVyi6mJVCNaYjWMrKTg1qEcmmQkEDQRXFi2S1FKwLRNZ1BJ4cipfov63zXs4ciyQqRxsezm7DmQFAWIXIkvR07kn4IdmjAPuLgX75GGtnLDYNNeTGkBNciAL488MGnvPMLZqU9nLl5ff0XrrUc+bN\\/t0ZivzOfSUBQAAaEAAAAAAAAAAAAAAFOuvX\\/0NFCNIAqgAA1EU2wrSAAAAAAwowoxsDAjAgA3QXG9GTVxv1savqz62NPUrhl1PUuis4wqAIwAAAAAAAAAAAAK0KAAIAoAAAI0jTUFOmRpRMy3KdURrTqiNaZMNHky1FURo2iKaXoC85DFjWuiMpnGnVjynOxXXjzv+zneR0RWzI9L4ucVcvGs3\\/Hvycu\\/xjr8fQfOcfgJR\\/i63+9HHmuPjvX+vEqNHXXYk3oqLrITEb2CKSwi0VpkZfS\\/EZU4PL5HHuPSdHJjC9irhXRWsI7K1jVbCYOzBhWwrCikMjNPsqJ0GgnoqBvYDY9dvPo6ePPb7\\/GevxanPb8fR28vrv\\/FiKLyi8s1xZsX5nq4cOmzjOrjavC6vZvn6SU913Nd3VvWpVKONiOXIkjFdJXNVb8GLGyTK7HKtO2NaOFGZdaJKSOJ+zpra0LwNQ6Q0XxxsaY64hI0mH0aXCtEZwujSEqTSJUaE2jTJNFZZUrRWUGtGmS78lR2YfRisVUiObOjUaivCqsfh\\/wAWZ6deO8eicnqaBgQrRUTqSiVyaRz3JUQe0UTq6f7KpFTArORoyHeWn7IuF7AJlf8AtsRX5xPpqAADQjAADQAAAAAAAAAAAAoA0DQoAwDQAA2Fbsg3YUbANhRsIzZTWbCMAANSCqTibM2tzl0Rxmzne3aeN0TwzF8jrPErPCM\\/0bniU\\/wDP9Wv4pv481\\/VP4oZOA\\/0jU8rnfA5cnEpfo6zyOPXhc9YmjpK43xp6KxYCowAAAgAAAAAArQAAAAoAAAAA0imQUyZGjpkah0zLaiI0rJl0iqMtmAAhkwqs2ZVeMhmxrXVjymLFdmHL5OdivZ4dT42eftK9XvHQ4Yw5MuSTpIrm2bDqgik0RFZsMqKyI+h+Gv8Ty+VjqPX7nBjCOyribs01hU9gVREOGSMrRNlVqoIvjewx0MmkEiWytNA1M1EVT2dY510T6O3LDl5D1Z7OI8vkoizrjjqnZFNHYGlqiGuXKtmK3HO\\/By6dYnTOFdIxcho5WNYx8jsZaxioLi8Mmpi0+Ro7MK8F1HQa0aaBOt+Tr4rJ19si3O\\/B183XNv\\/ABROvRxSoM0yTRpKxorCbRpE6RUQpaNMq48uiM2KvMiM457y7Zpo88lKdExMX43O1XW\\/Ri8u\\/j7\\/AMekmmto5vQ0KwIVhlNw2UxG8VF0ctw0a0c9oqJsKFQDbIptkC5X\\/tsK\\/OZ9QAAABAAAaAAAAAAAAAAAAFMlsLG3PV69gpQAAAAgCgACgAA0DAAIArAGlEWR04sLZi9O3PDvw8U4ddvVz43dj43\\/AIcb27zh3cXiQ6\\/P0cO\\/I6TlauEuz6+jH9G\\/Uy4bJ\\/RfVv8Ahf8Ag\\/ovqV8Ff0P6nojk+MVfo3PMl8cebyfiGv0ejjzuPXgeVn4NT+j1c+V5O\\/juKsTR2nTy9eMjk1rnhdFRgQBAABQEAGgAUBQEAUAAABoVpFMiKdEaOiNqIy2tJG4omYbNsDQNAZBVE2iC+KtszWo7U+q2c2nVg5vX9nPrgdf\\/AMk9a2Y\\/mF\\/y2\\/2PRDrkD1RRZieqKTmJgos49WW\\/5A9R9H8DyNo8fn5Zse28h5Uwv2GjB2AaQiiZAyYZwUyiOzSjsA05GgmGeRsGDYBsIZM3EqsM6xzrqj0d+XJy51uz2cPL5GxiZ11y9VPqZF\\/mx46B6UnVt6L+pIjlWvZjpqOOzj07R28Xi47x9q8nnrpHn\\/JYpw3+P7OTpy4Ybqkl+yV0dlcfJi12\\/Zj2RbHJNHVEMmo6pTjW\\/wBnTrm8\\/v8ArKmyaN2b1GMuozqXUK0zWoTqzWss6s1rJGjUrJax0lvRtMSqa96KmIUisovwaZK2wF7FBsA2QdvE51Y\\/xrzJix157x62PLGRblnKvROpT62a459lGjN+gElxSszaylcJjUcWfB+5NzocFG9E9lVqogZUQJnyTOJunpFkH55PqAAAAAAAjQAAAAAAAAAACgAAAAAAAAAAAAACt2Ab0FY3sIAjCqaVsix2YMDpnLrp6eOHqYOMebrt6+eHoYONs8\\/Xbvzy9LDwjz9eR1nL0MfBSRwvkbxVceUY91xjiUNUrSLoXSKo6oDpx8LHyV5RzvkvI8j5P4mYb0evw+es3mV85yvj9b8H0OPK8\\/fgeVl4zk9M7eLvwuesWjrOnn64ScmtcrClYAAAAYEaAAAUBQAAAGgAUxFMiNGRGjojSsmW4ojLcURGzEDAPjx3kpRC7U\\/SJbiunNw+TxWlyMbx79bMzuX8VKmaStitAW+5kxdE5CYaqsxMNVnMZw1ecxn1F5ykwOspMFFkJiMeVlxHuf6e5X+51PJ8nn6H1+Oe71vR85m\\/SWT8L0bWfYWQGKxWyItPlkZWU+CMankeixpDZtWoA2EamA+wDYG9jUZVxs6xzrtx+j0eNyo6Lez18uF5MdExqCn0baxKlp7Xsz7Y52PP5FPb2Yt1hw5bOPTryMXPvDOl6OHTrI4+TyLz1ujk68w3GjdHLqtPUuKqV2\\/Ry1lvHS7+RarupToayTyzXtRSUWVDm5RptAUGjSYzqVnGOTTN5Sa0zUrGLfdiaUs9v9ebJGlMk4\\/re\\/R36nPqWPDvXZ6PC4ov2aZrHorJ8\\/8AjfSun8\\/2VpybANkDJkRfHyLxvcszWpcetxuU7j8\\/DOV+no56dSpMzregisZkJQRGho87lRp7R15o42bCXlx41u6SNSWpsjy+Z\\/qHi4FrG+9Hfn49rl15pHzvN+X5XL3uus\\/0j2ceHnl5r5LX8zD3AAAAAACAK0IAAAAAAACgAAAAAAAAAAwAA0AAwAAAAoArp4+Pszn1Xfx869zi8bweLvt9Djh6eDjHm67ejnl6fH46R5+u3WR345mTz2qv9ngxipujSpVRoKUYAAWxcisfoxedE81vL7NczB5XL456vH0rxORgR7OenLrh5+Tjnonby9+JyZMGjrOnk78bmqNHWV5uuUzTmAjAAI0ACgACgDdeNgYBoARTBTIimRGzojSsmW4pJltREbMQMB2\\/FcxcHm4+S57KHvRjyc+0xXs\\/6p\\/1Ji+arH9WL61COXh8V5\\/WeZkfOnoVqAYg0BkwKTRMFZsmC05DOKtNmcDqxiB0B3fE8n6uRJy83O8j77Bl745pHx+plU9TskRNrRsNGTRB0TlJjOLfetExj1Ru2ytE2aG7A3YDywjdgYRDpFlSqx7OkrFd2N6k9Xi6cOjdj089ONaddBsajexfZdI2c70jg53hdjPsmPJyZDFrfMc1Wca7cwqezl06uvjPqzj0PQ+7wckw2IVXXG2RlVIsZOdIgNjTWgNaNLqA1BptCVIZscmadFlcsc+TPk1134OvtUczryGSXRUxF2aZwhVKwDZFMqAaXukZpj1sfiUjz2uhu7Xpk1pj5mSf\\/QvsxfJrsla8GpPs9nTyudxsWJVve\\/0enyc8ev8Ax\\/T2eXk+bwL9HCeOnu8v5D\\/UCnE3Eejt4\\/D9s3yvmOR\\/qXm34j8T38\\/G5cL5q8vNzuVnf+5bZ2nHMcr1akjbJ9eCLHwJzfRAAAAAAAAaAAAAAAAAAAAAAAAABgAAAAGoDAAAKAAAaFtkrfMexwOPvTPJ5en0PDw9\\/jcf0eDvt7ueXq4MH\\/h5uunWR0a6nP8AVb3GK3uTArouBSjQAAIAAKJZo7Sa5qvF5eLR6+KV5tT5PTHKoZMWzc6ce+NcGbDo789PF5PG5KnR2jydcpmnNgZAVoAAAAUAAGgAUEDBTIinRGjojaiMtxSSNxRGWzAMQMAAaBoGgMBqIHQFEQUTIKzRkUVEGuyhseRzSZLEfb\\/Bc9ZcKhvyj5XyPHlbe332jyondGhJUaFJZEXglSuq3j+sw5\\/euTZ0bVwz2M2pW5I6llCJlG7IHjz4JUdLwNTsmufsyGkblKrfKlTpHo4cOoJ5B6JXGx0S9rZ0nSYz7C+yM+xD2CVlM6uOLmZN4mZ1qR4dZNi10kIcrXWK4p8nHpp244OVHQpMDrwwZSuqVojBzcQGxpUBrRprQFGnTlGnTRhKiOadozrHUebmnR0lYxytm2U6o0IOvJWR2KhXQUvYDVRBTHX5ozVevNeEeeugdGVSsujkyG5UcuTZ0lRyZEdJWMebzl\\/s0ejx\\/rHT5up8nujizqaQ0oiK68EV\\/PTL6IAAAAA0AAAAAAAAAAAAAA0KAMCMAAAAAAAAAAAoAADp42PtSOXdejxcvp+BxvCPm+Xt9bx8PcwYlKPF1Xoker8d9Xb8zzeXVpvk\\/pX8DPi3\\/U5ebs9LQ2BoVpAwQAAAAADA8zmwejx1Xi5Vpns5YqRplHJj2jfNcu+Nefmw6PRz08Hk8bkqdHWV47CGmAABQEAAFAABoABpFaFMiKdEaOiNqIy2dEaURGzoimIGA0AAANCGQDIitTApLAomZDJkDpgbsBthHp\\/Fc98fKvPg4ebx7GpX23H5Ky41Us+V1zlaO6MoNlFJZEdEsiGb8ERPZoNGRz6IHduwgA3q9bCMV9XsDpfO3Gv2Zxj+bg5fyE4Mb8+Tt4+NWxy8Tn\\/fPbZ6LzjlY7FyBK5+rtxc7U6Na53lv+Rsup6j7R7GFrITVxx8zLrExGpHkdjVdJFJOVbdOI49K7cZzqLyYHbhkyxVzUZaaAUAGmgF1Aa0adZzc1Gj2APYJRnUrg5Mm5XPHl5HpnaVEnRpHPV+SpjO5UxncGM7BcHYhjVk8kMevx8qvGjz9NxbZhSUxo57RrRC4NysuXLjOsrLx\\/k\\/E9P7PX4XLt4zxHslcUnGmb1FMWGrepRNS1bJxcmOfyRNOen8zD6QAAAAAYDANAwAAAAAAAAAA0KGFYGWAAAAAAAAABQAAGgd\\/B\\/kjz+X8e3wPrOD\\/FHy\\/I+rw9WPR5XZ0cb+Rz7G8v2Txq5TqgQDEVoGhGgAABgDAefzTt41eFn9nt5Y6QNstv8AiCuLOd+Xi8rzsh6I+f2ibcQAAAAABQAAAGgaiK0KZEaOiNHRGlEZbOiNKIjR0RoyIGA0AAAjQGQDEVoDSBRGQ6CmIhgNCK4v5oUj7b4f\\/gR8nz\\/ro9E840oaSMuiCIYgU0gQFpIhiIrX8DI5WbUhVeL8z6PV4GKn8R\\/xs6+Rzr14OTC8ljNVRWVEEYyK4ef\\/AALy1HmyarcXg5VXVjOVV1YznUdOMzR6GL0YYqhuMtKAoAAo0qA1A\\/6Pd\\/8Ahkp42mADKjh5JYxXk5\\/Z3jDmZtEL9mkKAoGhWEAB6nA\\/geftqOw5qVgToolRuMubKdIj5\\/5T\\/lPd4XDt51Hqjihfs2O74z\\/lRnpz7\\/Ho\\/J\\/8RmMeN\\/\\/Z\');\\n\\tpadding: 1rem;\\n\\tbackground-repeat: no-repeat;\\n\\tbackground-size: cover;\\n\\tborder-radius: 6px;\\n}\\n<\\/style>\\n<hr \\/>\\n<div class=\\\"g5i\\\">\\n <h1><span class=\\\"g5-title\\\">Phoca Cart Modules package<\\/span>\\n <span class=\\\"g5-info\\\">(includes Phoca Cart modules)<\\/span><\\/h1>\\n <div>&nbsp;<\\/div>\\n <ul>\\n<li>Phoca Cart Brands module installed.<\\/li>\\n<li>Phoca Cart Cart module installed.<\\/li>\\n<li>Phoca Cart Category module installed<\\/li>\\n<li>Phoca Cart Compare module installed<\\/li>\\n<li>Phoca Cart Currency module installed<\\/li>\\n<li>Phoca Cart Filter module installed<\\/li>\\n<li>Phoca Cart Product Scroller module installed<\\/li>\\n<li>Phoca Cart Product module installed<\\/li>\\n<li>Phoca Cart Search module installed<\\/li>\\n<li>Phoca Cart Wish List module installed<\\/li>\\n<\\/ul>\\n <div class=\\\"g5-actions\\\">\\n  <a href=\\\"index.php?option=com_modules\\\" class=\\\"g5-button\\\">Configure Phoca Cart modules<span class=\\\"g5-icon icon-chevron-right\\\"><\\/span><\\/a>\\n <\\/div>\\n <div class=\\\"g5-phoca\\\">\\n  <a href=\\\"https:\\/\\/www.phoca.cz\\\" target=\\\"_blank\\\"><span>Phoca<\\/span><\\/a>\\n <\\/div>\\n<\\/div>\\n<div>&nbsp;<\\/div><hr \\/>\",\"group\":\"\",\"filename\":\"pkg_PhocaCartModules\"}','{}','',NULL,NULL,0,0,NULL),(261,0,'cassiopeia_phocacart_beauty','template','cassiopeia_phocacart_beauty','','',0,1,1,0,0,'{\"name\":\"cassiopeia_phocacart_beauty\",\"type\":\"template\",\"creationDate\":\"2024\\/02\\/13\",\"author\":\"admin\",\"copyright\":\"(C) 2024 Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"5.0.0\",\"description\":\"Cassiopeia Child Template - Phoca Cart Beauty\",\"group\":\"\",\"inheritable\":false,\"parent\":\"cassiopeia\",\"filename\":\"templateDetails\"}','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"systemFontBody\":\"\",\"systemFontHeading\":\"\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":\"0\",\"backTop\":\"0\"}','',NULL,NULL,0,0,NULL),(262,0,'mod_phocaparticles','module','mod_phocaparticles','','',0,1,0,0,0,'{\"name\":\"mod_phocaparticles\",\"type\":\"module\",\"creationDate\":\"20\\/11\\/2024\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.phoca.cz\",\"version\":\"5.0.8\",\"description\":\"MOD_PHOCAPARTICLES_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PhocaParticles\",\"filename\":\"mod_phocaparticles\"}','{\"phocahead1\":\"MOD_PHOCAPARTICLES_FIELD_GENERAL_OPTIONS_HEADER_LABEL\",\"type\":\"feature_box\",\"title_color\":\"\",\"icon_color\":\"\",\"display_option\":\"\",\"display_view\":\"\",\"display_id\":\"\",\"custom_css\":\"\",\"phocahead2\":\"MOD_PHOCAPARTICLES_FIELD_IMAGE_BOX_HEADER_LABEL\",\"image_row_box_size\":\"25\",\"phocahead3\":\"MOD_PHOCAPARTICLES_FIELD_IMAGE_CONTENT_HEADER_LABEL\",\"image_content_size\":\"1\",\"phocahead4\":\"MOD_PHOCAPARTICLES_FIELD_IMAGE_FEATURE_BOX_HEADER_LABEL\",\"image_feature_box_size\":\"1\",\"main_title\":\"\",\"main_icon_class\":\"\",\"main_image_svg\":\"\",\"main_image\":\"\",\"main_background_image\":\"\",\"main_video\":\"\",\"main_video_file\":\"\",\"main_video_file_thumbnail\":\"\",\"main_video_width\":\"560\",\"main_video_height\":\"315\",\"main_description\":\"\",\"main_link\":\"\",\"main_link_attributes\":\"\",\"main_button_title\":\"\",\"main_button_link\":\"\",\"main_button_attributes\":\"\",\"main_top_code\":\"\",\"main_bottom_code\":\"\",\"main_label\":\"\",\"main_price\":\"\",\"main_price_original\":\"\",\"image_empty_space\":\"0\",\"phocacart_product_id\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL);
/*!40000 ALTER TABLE `tc5xu_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_fields`
--

DROP TABLE IF EXISTS `tc5xu_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `required` tinyint NOT NULL DEFAULT '0',
  `only_use_in_subform` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_fields`
--

LOCK TABLES `tc5xu_fields` WRITE;
/*!40000 ALTER TABLE `tc5xu_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_fields_categories`
--

DROP TABLE IF EXISTS `tc5xu_fields_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_fields_categories` (
  `field_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_fields_categories`
--

LOCK TABLES `tc5xu_fields_categories` WRITE;
/*!40000 ALTER TABLE `tc5xu_fields_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_fields_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_fields_groups`
--

DROP TABLE IF EXISTS `tc5xu_fields_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_fields_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_fields_groups`
--

LOCK TABLES `tc5xu_fields_groups` WRITE;
/*!40000 ALTER TABLE `tc5xu_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_fields_values`
--

DROP TABLE IF EXISTS `tc5xu_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_fields_values` (
  `field_id` int unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` mediumtext COLLATE utf8mb4_unicode_ci,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_fields_values`
--

LOCK TABLES `tc5xu_fields_values` WRITE;
/*!40000 ALTER TABLE `tc5xu_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_fields_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_finder_filters`
--

DROP TABLE IF EXISTS `tc5xu_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_finder_filters` (
  `filter_id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `params` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_finder_filters`
--

LOCK TABLES `tc5xu_finder_filters` WRITE;
/*!40000 ALTER TABLE `tc5xu_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_finder_links`
--

DROP TABLE IF EXISTS `tc5xu_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_finder_links` (
  `link_id` int unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '1',
  `state` int NOT NULL DEFAULT '1',
  `access` int NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int NOT NULL,
  `object` mediumblob,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_language` (`language`),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_finder_links`
--

LOCK TABLES `tc5xu_finder_links` WRITE;
/*!40000 ALTER TABLE `tc5xu_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_finder_links_terms`
--

DROP TABLE IF EXISTS `tc5xu_finder_links_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_finder_links_terms` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_finder_links_terms`
--

LOCK TABLES `tc5xu_finder_links_terms` WRITE;
/*!40000 ALTER TABLE `tc5xu_finder_links_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_finder_links_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_finder_logging`
--

DROP TABLE IF EXISTS `tc5xu_finder_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_finder_logging` (
  `searchterm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5sum` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int NOT NULL DEFAULT '1',
  `results` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5sum`),
  KEY `searchterm` (`searchterm`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_finder_logging`
--

LOCK TABLES `tc5xu_finder_logging` WRITE;
/*!40000 ALTER TABLE `tc5xu_finder_logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_finder_logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_finder_taxonomy`
--

DROP TABLE IF EXISTS `tc5xu_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_finder_taxonomy` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint unsigned NOT NULL DEFAULT '1',
  `access` tinyint unsigned NOT NULL DEFAULT '1',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_access` (`access`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_level` (`level`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_finder_taxonomy`
--

LOCK TABLES `tc5xu_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `tc5xu_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `tc5xu_finder_taxonomy` VALUES (1,0,0,1,0,'','ROOT','root',1,1,'*');
/*!40000 ALTER TABLE `tc5xu_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `tc5xu_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_finder_taxonomy_map` (
  `link_id` int unsigned NOT NULL,
  `node_id` int unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_finder_taxonomy_map`
--

LOCK TABLES `tc5xu_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `tc5xu_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_finder_terms`
--

DROP TABLE IF EXISTS `tc5xu_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_finder_terms` (
  `term_id` int unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_stem` (`stem`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_finder_terms`
--

LOCK TABLES `tc5xu_finder_terms` WRITE;
/*!40000 ALTER TABLE `tc5xu_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_finder_terms_common`
--

DROP TABLE IF EXISTS `tc5xu_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_finder_terms_common`
--

LOCK TABLES `tc5xu_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `tc5xu_finder_terms_common` DISABLE KEYS */;
INSERT INTO `tc5xu_finder_terms_common` VALUES ('a','en',0),('about','en',0),('above','en',0),('after','en',0),('again','en',0),('against','en',0),('all','en',0),('am','en',0),('an','en',0),('and','en',0),('any','en',0),('are','en',0),('aren\'t','en',0),('as','en',0),('at','en',0),('be','en',0),('because','en',0),('been','en',0),('before','en',0),('being','en',0),('below','en',0),('between','en',0),('both','en',0),('but','en',0),('by','en',0),('can\'t','en',0),('cannot','en',0),('could','en',0),('couldn\'t','en',0),('did','en',0),('didn\'t','en',0),('do','en',0),('does','en',0),('doesn\'t','en',0),('doing','en',0),('don\'t','en',0),('down','en',0),('during','en',0),('each','en',0),('few','en',0),('for','en',0),('from','en',0),('further','en',0),('had','en',0),('hadn\'t','en',0),('has','en',0),('hasn\'t','en',0),('have','en',0),('haven\'t','en',0),('having','en',0),('he','en',0),('he\'d','en',0),('he\'ll','en',0),('he\'s','en',0),('her','en',0),('here','en',0),('here\'s','en',0),('hers','en',0),('herself','en',0),('him','en',0),('himself','en',0),('his','en',0),('how','en',0),('how\'s','en',0),('i','en',0),('i\'d','en',0),('i\'ll','en',0),('i\'m','en',0),('i\'ve','en',0),('if','en',0),('in','en',0),('into','en',0),('is','en',0),('isn\'t','en',0),('it','en',0),('it\'s','en',0),('its','en',0),('itself','en',0),('let\'s','en',0),('me','en',0),('more','en',0),('most','en',0),('mustn\'t','en',0),('my','en',0),('myself','en',0),('no','en',0),('nor','en',0),('not','en',0),('of','en',0),('off','en',0),('on','en',0),('once','en',0),('only','en',0),('or','en',0),('other','en',0),('ought','en',0),('our','en',0),('ours','en',0),('ourselves','en',0),('out','en',0),('over','en',0),('own','en',0),('same','en',0),('shan\'t','en',0),('she','en',0),('she\'d','en',0),('she\'ll','en',0),('she\'s','en',0),('should','en',0),('shouldn\'t','en',0),('so','en',0),('some','en',0),('such','en',0),('than','en',0),('that','en',0),('that\'s','en',0),('the','en',0),('their','en',0),('theirs','en',0),('them','en',0),('themselves','en',0),('then','en',0),('there','en',0),('there\'s','en',0),('these','en',0),('they','en',0),('they\'d','en',0),('they\'ll','en',0),('they\'re','en',0),('they\'ve','en',0),('this','en',0),('those','en',0),('through','en',0),('to','en',0),('too','en',0),('under','en',0),('until','en',0),('up','en',0),('very','en',0),('was','en',0),('wasn\'t','en',0),('we','en',0),('we\'d','en',0),('we\'ll','en',0),('we\'re','en',0),('we\'ve','en',0),('were','en',0),('weren\'t','en',0),('what','en',0),('what\'s','en',0),('when','en',0),('when\'s','en',0),('where','en',0),('where\'s','en',0),('which','en',0),('while','en',0),('who','en',0),('who\'s','en',0),('whom','en',0),('why','en',0),('why\'s','en',0),('with','en',0),('won\'t','en',0),('would','en',0),('wouldn\'t','en',0),('you','en',0),('you\'d','en',0),('you\'ll','en',0),('you\'re','en',0),('you\'ve','en',0),('your','en',0),('yours','en',0),('yourself','en',0),('yourselves','en',0);
/*!40000 ALTER TABLE `tc5xu_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_finder_tokens`
--

DROP TABLE IF EXISTS `tc5xu_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint unsigned NOT NULL DEFAULT '2',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_stem` (`stem`),
  KEY `idx_context` (`context`),
  KEY `idx_language` (`language`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_finder_tokens`
--

LOCK TABLES `tc5xu_finder_tokens` WRITE;
/*!40000 ALTER TABLE `tc5xu_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `tc5xu_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_finder_tokens_aggregate` (
  `term_id` int unsigned NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL DEFAULT '0',
  `context` tinyint unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL DEFAULT '0',
  `total_weight` float unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_finder_tokens_aggregate`
--

LOCK TABLES `tc5xu_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `tc5xu_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_finder_types`
--

DROP TABLE IF EXISTS `tc5xu_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_finder_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_finder_types`
--

LOCK TABLES `tc5xu_finder_types` WRITE;
/*!40000 ALTER TABLE `tc5xu_finder_types` DISABLE KEYS */;
INSERT INTO `tc5xu_finder_types` VALUES (1,'Category',''),(2,'Contact',''),(3,'Article',''),(4,'News Feed',''),(5,'Tag','');
/*!40000 ALTER TABLE `tc5xu_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_guidedtour_steps`
--

DROP TABLE IF EXISTS `tc5xu_guidedtour_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_guidedtour_steps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `interactive_type` int NOT NULL DEFAULT '1',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_tour` (`tour_id`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_guidedtour_steps`
--

LOCK TABLES `tc5xu_guidedtour_steps` WRITE;
/*!40000 ALTER TABLE `tc5xu_guidedtour_steps` DISABLE KEYS */;
INSERT INTO `tc5xu_guidedtour_steps` VALUES (1,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_DESCRIPTION',1,'bottom','.button-new',2,1,'administrator/index.php?option=com_guidedtours&view=tours','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(2,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_DESCRIPTION',2,'bottom','#jform_title',2,2,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(3,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_DESCRIPTION',3,'top','#jform_url',2,2,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(4,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_DESCRIPTION',4,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(5,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_DESCRIPTION',5,'top','joomla-field-fancy-select .choices',2,3,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(6,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_DESCRIPTION',6,'top','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(7,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_DESCRIPTION',7,'bottom','',0,1,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(8,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_DESCRIPTION',8,'top','#toursList tbody tr:nth-last-of-type(1) td:nth-of-type(5) .btn',2,1,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(9,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_DESCRIPTION',9,'bottom','.button-new',2,1,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(10,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_DESCRIPTION',10,'bottom','#jform_title',2,2,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(11,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_DESCRIPTION',11,'bottom','#jform_description,#jform_description_ifr',2,3,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(12,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_DESCRIPTION',12,'bottom','#jform_published',2,3,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(13,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_DESCRIPTION',13,'top','#jform_position',2,3,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(14,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_DESCRIPTION',14,'top','#jform_target',2,3,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(15,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_DESCRIPTION',15,'top','#jform_type',2,3,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(16,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_DESCRIPTION',16,'bottom','#save-group-children-save .button-save',2,1,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(17,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_DESCRIPTION',17,'bottom','',0,1,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(18,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_DESCRIPTION',18,'bottom','.button-new',2,1,'administrator/index.php?option=com_content&view=articles','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(19,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_DESCRIPTION',19,'bottom','#jform_title',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(20,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_DESCRIPTION',20,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(21,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_DESCRIPTION',21,'bottom','#jform_articletext,#jform_articletext_ifr',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(22,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_DESCRIPTION',22,'bottom','#jform_state',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(23,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_DESCRIPTION',23,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(24,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_DESCRIPTION',24,'bottom','#jform_featured0',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(25,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_DESCRIPTION',25,'bottom','#jform_access',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(26,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_DESCRIPTION',26,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(27,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_DESCRIPTION',27,'top','#jform_note',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(28,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_DESCRIPTION',28,'top','#jform_version_note',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(29,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_DESCRIPTION',29,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_content&view=article&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(30,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_DESCRIPTION',30,'bottom','',0,1,'administrator/index.php?option=com_content&view=article&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(31,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_DESCRIPTION',31,'bottom','.button-new',2,1,'administrator/index.php?option=com_categories&view=categories&extension=com_content','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(32,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_DESCRIPTION',32,'bottom','#jform_title',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(33,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_DESCRIPTION',33,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(34,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_DESCRIPTION',34,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(35,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_DESCRIPTION',35,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(36,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_DESCRIPTION',36,'bottom','#jform_published',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(37,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_DESCRIPTION',37,'bottom','#jform_access',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(38,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_DESCRIPTION',38,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(39,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_DESCRIPTION',39,'top','#jform_note',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(40,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_DESCRIPTION',40,'top','#jform_version_note',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(41,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_DESCRIPTION',41,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(42,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_DESCRIPTION',42,'bottom','',0,1,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(43,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_DESCRIPTION',43,'bottom','.button-new',2,1,'administrator/index.php?option=com_menus&view=menus','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(44,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_DESCRIPTION',44,'bottom','#jform_title',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(45,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_DESCRIPTION',45,'top','#jform_menutype',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(46,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_DESCRIPTION',46,'top','#jform_menudescription',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(47,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_DESCRIPTION',47,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(48,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_DESCRIPTION',48,'bottom','',0,1,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(49,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_DESCRIPTION',49,'bottom','.button-new',2,1,'administrator/index.php?option=com_tags&view=tags','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(50,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_DESCRIPTION',50,'bottom','#jform_title',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(51,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_DESCRIPTION',51,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(52,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_DESCRIPTION',52,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(53,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_DESCRIPTION',53,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(54,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_DESCRIPTION',54,'bottom','#jform_published',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(55,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_DESCRIPTION',55,'bottom','#jform_access',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(56,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_DESCRIPTION',56,'top','#jform_note',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(57,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_DESCRIPTION',57,'top','#jform_version_note',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(58,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_DESCRIPTION',58,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(59,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_DESCRIPTION',59,'bottom','',0,1,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(60,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_DESCRIPTION',60,'bottom','.button-new',2,1,'administrator/index.php?option=com_banners&view=banners','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(61,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_DESCRIPTION',61,'bottom','#jform_name',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(62,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_DESCRIPTION',62,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(63,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_DESCRIPTION',63,'bottom','.col-lg-9',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(64,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_DESCRIPTION',64,'bottom','#jform_state',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(65,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_DESCRIPTION',65,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(66,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_DESCRIPTION',66,'bottom','#jform_sticky1',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(67,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_DESCRIPTION',67,'top','#jform_version_note',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(68,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_DESCRIPTION',68,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(69,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_DESCRIPTION',69,'bottom','',0,1,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(70,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_DESCRIPTION',70,'bottom','.button-new',2,1,'administrator/index.php?option=com_contact&view=contacts','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(71,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_DESCRIPTION',71,'bottom','#jform_name',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(72,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_DESCRIPTION',72,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(73,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_DESCRIPTION',73,'bottom','.col-lg-9',0,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(74,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_DESCRIPTION',74,'bottom','#jform_published',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(75,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_DESCRIPTION',75,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(76,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_DESCRIPTION',76,'bottom','#jform_featured0',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(77,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_DESCRIPTION',77,'bottom','#jform_access',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(78,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_DESCRIPTION',78,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(79,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_DESCRIPTION',79,'top','#jform_version_note',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(80,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_DESCRIPTION',80,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(81,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_DESCRIPTION',81,'bottom','',0,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(82,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_DESCRIPTION',82,'bottom','.button-new',2,1,'administrator/index.php?option=com_newsfeeds&view=newsfeeds','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(83,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_DESCRIPTION',83,'bottom','#jform_name',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(84,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_DESCRIPTION',84,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(85,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_DESCRIPTION',85,'bottom','#jform_link',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(86,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_DESCRIPTION',86,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(87,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_DESCRIPTION',87,'bottom','#jform_published',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(88,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_DESCRIPTION',88,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(89,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_DESCRIPTION',89,'bottom','#jform_access',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(90,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_DESCRIPTION',90,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(91,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_DESCRIPTION',91,'top','#jform_version_note',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(92,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_DESCRIPTION',92,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(93,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_DESCRIPTION',93,'bottom','',0,1,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(94,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_DESCRIPTION',94,'bottom','.button-new',2,1,'administrator/index.php?option=com_finder&view=filters','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(95,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_DESCRIPTION',95,'bottom','#jform_title',2,2,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(96,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_DESCRIPTION',96,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(97,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_DESCRIPTION',97,'bottom','.col-lg-9',0,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(98,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_DESCRIPTION',98,'bottom','#jform_state',2,3,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(99,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_DESCRIPTION',99,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(100,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_DESCRIPTION',100,'bottom','',0,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(101,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_DESCRIPTION',101,'bottom','.button-new',2,1,'administrator/index.php?option=com_users&view=user&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(102,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_DESCRIPTION',102,'bottom','#jform_name',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(103,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_DESCRIPTION',103,'bottom','#jform_username',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(104,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_DESCRIPTION',104,'bottom','#jform_password',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(105,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_DESCRIPTION',105,'bottom','#jform_password2',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(106,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_DESCRIPTION',106,'bottom','#jform_email',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(107,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_DESCRIPTION',107,'top','#jform_sendEmail0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(108,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_DESCRIPTION',108,'top','#jform_block0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(109,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_DESCRIPTION',109,'top','#jform_requireReset0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(110,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_DESCRIPTION',110,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_users&view=user&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(111,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_DESCRIPTION',111,'bottom','',0,1,'administrator/index.php?option=com_users&view=user&layout=edit','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(112,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_DESCRIPTION',112,'right','#sidebarmenu',0,1,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(113,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_DESCRIPTION',113,'center','',0,1,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(114,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_DESCRIPTION',114,'left','.quickicons-for-update_quickicon .card',0,1,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(115,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_DESCRIPTION',115,'bottom','#header',0,1,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL),(116,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_DESCRIPTION',116,'right','#sidebarmenu nav > ul:first-of-type > li:last-child',0,1,'','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,'*','',NULL);
/*!40000 ALTER TABLE `tc5xu_guidedtour_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_guidedtours`
--

DROP TABLE IF EXISTS `tc5xu_guidedtours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_guidedtours` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uid` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `access` int unsigned NOT NULL DEFAULT '0',
  `autostart` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`),
  KEY `idx_uid` (`uid`(191))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_guidedtours`
--

LOCK TABLES `tc5xu_guidedtours` WRITE;
/*!40000 ALTER TABLE `tc5xu_guidedtours` DISABLE KEYS */;
INSERT INTO `tc5xu_guidedtours` VALUES (1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_TITLE','joomla-guidedtours','COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_DESCRIPTION',1,'[\"com_guidedtours\"]','administrator/index.php?option=com_guidedtours&view=tours','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,1,'*','',1,0),(2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_TITLE','joomla-guidedtoursteps','COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_DESCRIPTION',2,'[\"com_guidedtours\"]','administrator/index.php?option=com_guidedtours&view=tours','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,1,'*','',1,0),(3,'COM_GUIDEDTOURS_TOUR_ARTICLES_TITLE','joomla-articles','COM_GUIDEDTOURS_TOUR_ARTICLES_DESCRIPTION',3,'[\"com_content\",\"com_categories\"]','administrator/index.php?option=com_content&view=articles','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,1,'*','',1,0),(4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_TITLE','joomla-categories','COM_GUIDEDTOURS_TOUR_CATEGORIES_DESCRIPTION',4,'[\"com_content\",\"com_categories\"]','administrator/index.php?option=com_categories&view=categories&extension=com_content','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,1,'*','',1,0),(5,'COM_GUIDEDTOURS_TOUR_MENUS_TITLE','joomla-menus','COM_GUIDEDTOURS_TOUR_MENUS_DESCRIPTION',5,'[\"com_menus\"]','administrator/index.php?option=com_menus&view=menus','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,1,'*','',1,0),(6,'COM_GUIDEDTOURS_TOUR_TAGS_TITLE','joomla-tags','COM_GUIDEDTOURS_TOUR_TAGS_DESCRIPTION',6,'[\"com_tags\"]','administrator/index.php?option=com_tags&view=tags','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,1,'*','',1,0),(7,'COM_GUIDEDTOURS_TOUR_BANNERS_TITLE','joomla-banners','COM_GUIDEDTOURS_TOUR_BANNERS_DESCRIPTION',7,'[\"com_banners\"]','administrator/index.php?option=com_banners&view=banners','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,1,'*','',1,0),(8,'COM_GUIDEDTOURS_TOUR_CONTACTS_TITLE','joomla-contacts','COM_GUIDEDTOURS_TOUR_CONTACTS_DESCRIPTION',8,'[\"com_contact\"]','administrator/index.php?option=com_contact&view=contacts','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,1,'*','',1,0),(9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_TITLE','joomla-newsfeeds','COM_GUIDEDTOURS_TOUR_NEWSFEEDS_DESCRIPTION',9,'[\"com_newsfeeds\"]','administrator/index.php?option=com_newsfeeds&view=newsfeeds','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,1,'*','',1,0),(10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_TITLE','joomla-smartsearch','COM_GUIDEDTOURS_TOUR_SMARTSEARCH_DESCRIPTION',10,'[\"com_finder\"]','administrator/index.php?option=com_finder&view=filters','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,1,'*','',1,0),(11,'COM_GUIDEDTOURS_TOUR_USERS_TITLE','joomla-users','COM_GUIDEDTOURS_TOUR_USERS_DESCRIPTION',11,'[\"com_users\"]','administrator/index.php?option=com_users&view=users','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,1,'*','',1,0),(12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_TITLE','joomla-welcome','COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_DESCRIPTION',12,'[\"com_cpanel\"]','administrator/index.php','2024-10-09 05:53:39',783,'2024-10-09 05:53:39',783,NULL,NULL,1,'*','',1,0);
/*!40000 ALTER TABLE `tc5xu_guidedtours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_history`
--

DROP TABLE IF EXISTS `tc5xu_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_history` (
  `version_id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int unsigned NOT NULL DEFAULT '0',
  `character_count` int unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_history`
--

LOCK TABLES `tc5xu_history` WRITE;
/*!40000 ALTER TABLE `tc5xu_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_languages`
--

DROP TABLE IF EXISTS `tc5xu_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_languages`
--

LOCK TABLES `tc5xu_languages` WRITE;
/*!40000 ALTER TABLE `tc5xu_languages` DISABLE KEYS */;
INSERT INTO `tc5xu_languages` VALUES (1,0,'en-GB','English (en-GB)','English (United Kingdom)','en','en_gb','','','','',1,1,1);
/*!40000 ALTER TABLE `tc5xu_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_mail_templates`
--

DROP TABLE IF EXISTS `tc5xu_mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_mail_templates` (
  `template_id` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `htmlbody` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`template_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_mail_templates`
--

LOCK TABLES `tc5xu_mail_templates` WRITE;
/*!40000 ALTER TABLE `tc5xu_mail_templates` DISABLE KEYS */;
INSERT INTO `tc5xu_mail_templates` VALUES ('com_actionlogs.notification','com_actionlogs','','COM_ACTIONLOGS_EMAIL_SUBJECT','COM_ACTIONLOGS_EMAIL_BODY','COM_ACTIONLOGS_EMAIL_HTMLBODY','','{\"tags\":[\"message\",\"date\",\"extension\",\"username\"]}'),('com_config.test_mail','com_config','','COM_CONFIG_SENDMAIL_SUBJECT','COM_CONFIG_SENDMAIL_BODY','','','{\"tags\":[\"sitename\",\"method\"]}'),('com_contact.mail','com_contact','','COM_CONTACT_ENQUIRY_SUBJECT','COM_CONTACT_ENQUIRY_TEXT','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),('com_contact.mail.copy','com_contact','','COM_CONTACT_COPYSUBJECT_OF','COM_CONTACT_COPYTEXT_OF','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),('com_messages.new_message','com_messages','','COM_MESSAGES_NEW_MESSAGE','COM_MESSAGES_NEW_MESSAGE_BODY','','','{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),('com_phocacart.watchdog','com_phocacart','','COM_PHOCACART_EMAIL_WATCHDOG_SUBJECT','COM_PHOCACART_EMAIL_WATCHDOG_BODY','COM_PHOCACART_EMAIL_WATCHDOG_HTMLBODY','','{\"tags\":[\"user_name\",\"user_username\",\"user_email\",\"product_title\",\"product_sku\",\"product_url\",\"site_name\",\"site_url\"]}'),('com_privacy.notification.admin.export','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('com_privacy.notification.admin.remove','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('com_privacy.notification.export','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('com_privacy.notification.remove','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('com_privacy.userdataexport','com_privacy','','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY','','','{\"tags\":[\"sitename\",\"url\"]}'),('com_users.massmail.mail','com_users','','COM_USERS_MASSMAIL_MAIL_SUBJECT','COM_USERS_MASSMAIL_MAIL_BODY','','','{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),('com_users.password_reset','com_users','','COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT','COM_USERS_EMAIL_PASSWORD_RESET_BODY','','','{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),('com_users.registration.admin.new_notification','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),('com_users.registration.admin.verification_request','com_users','','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),('com_users.registration.user.admin_activated','com_users','','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),('com_users.registration.user.admin_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),('com_users.registration.user.admin_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),('com_users.registration.user.registration_mail','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),('com_users.registration.user.registration_mail_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\",\"password_clear\"]}'),('com_users.registration.user.self_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),('com_users.registration.user.self_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),('com_users.reminder','com_users','','COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT','COM_USERS_EMAIL_USERNAME_REMINDER_BODY','','','{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),('plg_multifactorauth_email.mail','plg_multifactorauth_email','','PLG_MULTIFACTORAUTH_EMAIL_EMAIL_SUBJECT','PLG_MULTIFACTORAUTH_EMAIL_EMAIL_BODY','','','{\"tags\":[\"code\",\"sitename\",\"siteurl\",\"username\",\"email\",\"fullname\"]}'),('plg_system_tasknotification.failure_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),('plg_system_tasknotification.fatal_recovery_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),('plg_system_tasknotification.orphan_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),('plg_system_tasknotification.success_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY','','','{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),('plg_task_privacyconsent.request.reminder','plg_task_privacyconsent','','PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT','PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_BODY','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('plg_task_updatenotification.mail','plg_task_updatenotification','','PLG_TASK_UPDATENOTIFICATION_EMAIL_SUBJECT','PLG_TASK_UPDATENOTIFICATION_EMAIL_BODY','','','{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),('plg_user_joomla.mail','plg_user_joomla','','PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT','PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY','','','{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');
/*!40000 ALTER TABLE `tc5xu_mail_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_menu`
--

DROP TABLE IF EXISTS `tc5xu_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int unsigned DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint NOT NULL DEFAULT '0',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_menu`
--

LOCK TABLES `tc5xu_menu` WRITE;
/*!40000 ALTER TABLE `tc5xu_menu` DISABLE KEYS */;
INSERT INTO `tc5xu_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,NULL,NULL,0,0,'',0,'',0,145,0,'*',0,NULL,NULL),(2,'main','com_banners','Banners','','Banners','index.php?option=com_banners','component',1,1,1,3,NULL,NULL,0,0,'class:bookmark',0,'',1,10,0,'*',1,NULL,NULL),(3,'main','com_banners','Banners','','Banners/Banners','index.php?option=com_banners&view=banners','component',1,2,2,3,NULL,NULL,0,0,'class:banners',0,'',2,3,0,'*',1,NULL,NULL),(4,'main','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&view=categories&extension=com_banners','component',1,2,2,5,NULL,NULL,0,0,'class:banners-cat',0,'',4,5,0,'*',1,NULL,NULL),(5,'main','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,3,NULL,NULL,0,0,'class:banners-clients',0,'',6,7,0,'*',1,NULL,NULL),(6,'main','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,3,NULL,NULL,0,0,'class:banners-tracks',0,'',8,9,0,'*',1,NULL,NULL),(7,'main','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',1,1,1,7,NULL,NULL,0,0,'class:address-book',0,'',11,20,0,'*',1,NULL,NULL),(8,'main','com_contact_contacts','Contacts','','Contacts/Contacts','index.php?option=com_contact&view=contacts','component',1,7,2,7,NULL,NULL,0,0,'class:contact',0,'',12,13,0,'*',1,NULL,NULL),(9,'main','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&view=categories&extension=com_contact','component',1,7,2,5,NULL,NULL,0,0,'class:contact-cat',0,'',14,15,0,'*',1,NULL,NULL),(10,'main','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,16,NULL,NULL,0,0,'class:rss',0,'',23,28,0,'*',1,NULL,NULL),(11,'main','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds&view=newsfeeds','component',1,10,2,16,NULL,NULL,0,0,'class:newsfeeds',0,'',24,25,0,'*',1,NULL,NULL),(12,'main','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&view=categories&extension=com_newsfeeds','component',1,10,2,5,NULL,NULL,0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1,NULL,NULL),(13,'main','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',1,1,1,23,NULL,NULL,0,0,'class:search-plus',0,'',29,38,0,'*',1,NULL,NULL),(14,'main','com_tags','Tags','','Tags','index.php?option=com_tags&view=tags','component',1,1,1,25,NULL,NULL,0,1,'class:tags',0,'',39,40,0,'',1,NULL,NULL),(15,'main','com_associations','Multilingual Associations','','Multilingual Associations','index.php?option=com_associations&view=associations','component',1,1,1,30,NULL,NULL,0,0,'class:language',0,'',21,22,0,'*',1,NULL,NULL),(16,'main','mod_menu_fields','Contact Custom Fields','','contact/Custom Fields','index.php?option=com_fields&context=com_contact.contact','component',1,7,2,29,NULL,NULL,0,0,'class:messages-add',0,'',16,17,0,'*',1,NULL,NULL),(17,'main','mod_menu_fields_group','Contact Custom Fields Group','','contact/Custom Fields Group','index.php?option=com_fields&view=groups&context=com_contact.contact','component',1,7,2,29,NULL,NULL,0,0,'class:messages-add',0,'',18,19,0,'*',1,NULL,NULL),(18,'main','com_finder_index','Smart-Search-Index','','Smart Search/Index','index.php?option=com_finder&view=index','component',1,13,2,23,NULL,NULL,0,0,'class:finder',0,'',30,31,0,'*',1,NULL,NULL),(19,'main','com_finder_maps','Smart-Search-Maps','','Smart Search/Maps','index.php?option=com_finder&view=maps','component',1,13,2,23,NULL,NULL,0,0,'class:finder-maps',0,'',32,33,0,'*',1,NULL,NULL),(20,'main','com_finder_filters','Smart-Search-Filters','','Smart Search/Filters','index.php?option=com_finder&view=filters','component',1,13,2,23,NULL,NULL,0,0,'class:finder-filters',0,'',34,35,0,'*',1,NULL,NULL),(21,'main','com_finder_searches','Smart-Search-Searches','','Smart Search/Searches','index.php?option=com_finder&view=searches','component',1,13,2,23,NULL,NULL,0,0,'class:finder-searches',0,'',36,37,0,'*',1,NULL,NULL),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,19,NULL,NULL,0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"blog_class_leading\":\"\",\"blog_class\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_links\":\"0\",\"link_intro_image\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',41,42,1,'*',0,NULL,NULL),(102,'main','COM_PHOCACOMMANDER','com-phocacommander','','com-phocacommander','index.php?option=com_phocacommander','component',1,1,1,247,NULL,NULL,0,1,'media/com_phocacommander/images/administrator/',0,'{}',43,48,0,'',1,NULL,NULL),(103,'main','COM_PHOCACOMMANDER_CONTROLPANEL','com-phocacommander-controlpanel','','com-phocacommander/com-phocacommander-controlpanel','index.php?option=com_phocacommander','component',1,102,2,247,NULL,NULL,0,1,'media/com_phocacommander/images/administrator/',0,'{}',44,45,0,'',1,NULL,NULL),(104,'main','COM_PHOCACOMMANDER_INFO','com-phocacommander-info','','com-phocacommander/com-phocacommander-info','index.php?option=com_phocacommander&view=phocacommanderinfo','component',1,102,2,247,NULL,NULL,0,1,'media/com_phocacommander/images/administrator/',0,'{}',46,47,0,'',1,NULL,NULL),(105,'main','COM_PHOCACART','com-phocacart','','com-phocacart','index.php?option=com_phocacart','component',1,1,1,248,NULL,NULL,0,1,'class:cp',0,'{}',49,140,0,'',1,NULL,NULL),(106,'main','COM_PHOCACART_CONTROLPANEL','com-phocacart-controlpanel','','com-phocacart/com-phocacart-controlpanel','index.php?option=com_phocacart&view=phocacartcp','component',1,105,2,248,NULL,NULL,0,1,'class:cp',0,'{}',50,51,0,'',1,NULL,NULL),(107,'main','COM_PHOCACART_PRODUCTS','com-phocacart-products','','com-phocacart/com-phocacart-products','index.php?option=com_phocacart&view=phocacartitems','component',1,105,2,248,NULL,NULL,0,1,'class:items',0,'{}',52,53,0,'',1,NULL,NULL),(108,'main','COM_PHOCACART_CATEGORIES','com-phocacart-categories','','com-phocacart/com-phocacart-categories','index.php?option=com_phocacart&view=phocacartcategories','component',1,105,2,248,NULL,NULL,0,1,'class:categories',0,'{}',54,55,0,'',1,NULL,NULL),(109,'main','COM_PHOCACART_SPECIFICATIONS','com-phocacart-specifications','','com-phocacart/com-phocacart-specifications','index.php?option=com_phocacart&view=phocacartspecifications','component',1,105,2,248,NULL,NULL,0,1,'class:specifications',0,'{}',56,57,0,'',1,NULL,NULL),(110,'main','COM_PHOCACART_MANUFACTURERS','com-phocacart-manufacturers','','com-phocacart/com-phocacart-manufacturers','index.php?option=com_phocacart&view=phocacartmanufacturers','component',1,105,2,248,NULL,NULL,0,1,'class:manufacturers',0,'{}',58,59,0,'',1,NULL,NULL),(111,'main','COM_PHOCACART_ORDERS','com-phocacart-orders','','com-phocacart/com-phocacart-orders','index.php?option=com_phocacart&view=phocacartorders','component',1,105,2,248,NULL,NULL,0,1,'class:orders',0,'{}',60,61,0,'',1,NULL,NULL),(112,'main','COM_PHOCACART_ORDER_STATUSES','com-phocacart-order-statuses','','com-phocacart/com-phocacart-order-statuses','index.php?option=com_phocacart&view=phocacartstatuses','component',1,105,2,248,NULL,NULL,0,1,'class:orderstatuses',0,'{}',62,63,0,'',1,NULL,NULL),(113,'main','COM_PHOCACART_STOCK_STATUSES','com-phocacart-stock-statuses','','com-phocacart/com-phocacart-stock-statuses','index.php?option=com_phocacart&view=phocacartstockstatuses','component',1,105,2,248,NULL,NULL,0,1,'class:stockstatuses',0,'{}',64,65,0,'',1,NULL,NULL),(114,'main','COM_PHOCACART_SHIPPING','com-phocacart-shipping','','com-phocacart/com-phocacart-shipping','index.php?option=com_phocacart&view=phocacartshippings','component',1,105,2,248,NULL,NULL,0,1,'class:shippings',0,'{}',66,67,0,'',1,NULL,NULL),(115,'main','COM_PHOCACART_COUNTRIES','com-phocacart-countries','','com-phocacart/com-phocacart-countries','index.php?option=com_phocacart&view=phocacartcountries','component',1,105,2,248,NULL,NULL,0,1,'class:countries',0,'{}',68,69,0,'',1,NULL,NULL),(116,'main','COM_PHOCACART_REGIONS','com-phocacart-regions','','com-phocacart/com-phocacart-regions','index.php?option=com_phocacart&view=phocacartregions','component',1,105,2,248,NULL,NULL,0,1,'class:regions',0,'{}',70,71,0,'',1,NULL,NULL),(117,'main','COM_PHOCACART_ZONES','com-phocacart-zones','','com-phocacart/com-phocacart-zones','index.php?option=com_phocacart&view=phocacartzones','component',1,105,2,248,NULL,NULL,0,1,'class:zones',0,'{}',72,73,0,'',1,NULL,NULL),(118,'main','COM_PHOCACART_PAYMENT','com-phocacart-payment','','com-phocacart/com-phocacart-payment','index.php?option=com_phocacart&view=phocacartpayments','component',1,105,2,248,NULL,NULL,0,1,'class:payments',0,'{}',74,75,0,'',1,NULL,NULL),(119,'main','COM_PHOCACART_CURRENCIES','com-phocacart-currencies','','com-phocacart/com-phocacart-currencies','index.php?option=com_phocacart&view=phocacartcurrencies','component',1,105,2,248,NULL,NULL,0,1,'class:currencies',0,'{}',76,77,0,'',1,NULL,NULL),(120,'main','COM_PHOCACART_TAXES','com-phocacart-taxes','','com-phocacart/com-phocacart-taxes','index.php?option=com_phocacart&view=phocacarttaxes','component',1,105,2,248,NULL,NULL,0,1,'class:taxes',0,'{}',78,79,0,'',1,NULL,NULL),(121,'main','COM_PHOCACART_CUSTOMERS','com-phocacart-customers','','com-phocacart/com-phocacart-customers','index.php?option=com_phocacart&view=phocacartusers','component',1,105,2,248,NULL,NULL,0,1,'class:users',0,'{}',80,81,0,'',1,NULL,NULL),(122,'main','COM_PHOCACART_CUSTOMER_GROUPS','com-phocacart-customer-groups','','com-phocacart/com-phocacart-customer-groups','index.php?option=com_phocacart&view=phocacartgroups','component',1,105,2,248,NULL,NULL,0,1,'class:groups',0,'{}',82,83,0,'',1,NULL,NULL),(123,'main','COM_PHOCACART_REWARD_POINTS','com-phocacart-reward-points','','com-phocacart/com-phocacart-reward-points','index.php?option=com_phocacart&view=phocacartrewards','component',1,105,2,248,NULL,NULL,0,1,'class:rewards',0,'{}',84,85,0,'',1,NULL,NULL),(124,'main','COM_PHOCACART_FORM_FIELDS','com-phocacart-form-fields','','com-phocacart/com-phocacart-form-fields','index.php?option=com_phocacart&view=phocacartformfields','component',1,105,2,248,NULL,NULL,0,1,'class:formfields',0,'{}',86,87,0,'',1,NULL,NULL),(125,'main','COM_PHOCACART_REVIEWS','com-phocacart-reviews','','com-phocacart/com-phocacart-reviews','index.php?option=com_phocacart&view=phocacartreviews','component',1,105,2,248,NULL,NULL,0,1,'class:reviews',0,'{}',88,89,0,'',1,NULL,NULL),(126,'main','COM_PHOCACART_COUPONS','com-phocacart-coupons','','com-phocacart/com-phocacart-coupons','index.php?option=com_phocacart&view=phocacartcoupons','component',1,105,2,248,NULL,NULL,0,1,'class:coupons',0,'{}',90,91,0,'',1,NULL,NULL),(127,'main','COM_PHOCACART_DISCOUNTS','com-phocacart-discounts','','com-phocacart/com-phocacart-discounts','index.php?option=com_phocacart&view=phocacartdiscounts','component',1,105,2,248,NULL,NULL,0,1,'class:discounts',0,'{}',92,93,0,'',1,NULL,NULL),(128,'main','COM_PHOCACART_DOWNLOADS','com-phocacart-downloads','','com-phocacart/com-phocacart-downloads','index.php?option=com_phocacart&view=phocacartdownloads','component',1,105,2,248,NULL,NULL,0,1,'class:downloads',0,'{}',94,95,0,'',1,NULL,NULL),(129,'main','COM_PHOCACART_TAGS','com-phocacart-tags','','com-phocacart/com-phocacart-tags','index.php?option=com_phocacart&view=phocacarttags','component',1,105,2,248,NULL,NULL,0,1,'class:tags',0,'{}',96,97,0,'',1,NULL,NULL),(130,'main','COM_PHOCACART_PARAMETERS','com-phocacart-parameters','','com-phocacart/com-phocacart-parameters','index.php?option=com_phocacart&view=phocacartparameters','component',1,105,2,248,NULL,NULL,0,1,'class:parameters',0,'{}',98,99,0,'',1,NULL,NULL),(131,'main','COM_PHOCACART_PARAMETER_VALUES','com-phocacart-parameter-values','','com-phocacart/com-phocacart-parameter-values','index.php?option=com_phocacart&view=phocacartparametervalues','component',1,105,2,248,NULL,NULL,0,1,'class:parametervalues',0,'{}',100,101,0,'',1,NULL,NULL),(132,'main','JGLOBAL_FIELD_GROUPS','jglobal-field-groups','','com-phocacart/jglobal-field-groups','index.php?option=com_fields&view=groups&context=com_phocacart.phocacartitem','component',1,105,2,248,NULL,NULL,0,1,'class:fieldgroups',0,'{}',102,103,0,'',1,NULL,NULL),(133,'main','JGLOBAL_FIELDS','jglobal-fields','','com-phocacart/jglobal-fields','index.php?option=com_fields&context=com_phocacart.phocacartitem','component',1,105,2,248,NULL,NULL,0,1,'class:fields',0,'{}',104,105,0,'',1,NULL,NULL),(134,'main','COM_PHOCACART_XML_FEEDS','com-phocacart-xml-feeds','','com-phocacart/com-phocacart-xml-feeds','index.php?option=com_phocacart&view=phocacartfeeds','component',1,105,2,248,NULL,NULL,0,1,'class:feeds',0,'{}',106,107,0,'',1,NULL,NULL),(135,'main','COM_PHOCACART_WISH_LISTS','com-phocacart-wish-lists','','com-phocacart/com-phocacart-wish-lists','index.php?option=com_phocacart&view=phocacartwishlists','component',1,105,2,248,NULL,NULL,0,1,'class:wishlists',0,'{}',108,109,0,'',1,NULL,NULL),(136,'main','COM_PHOCACART_QUESTIONS','com-phocacart-questions','','com-phocacart/com-phocacart-questions','index.php?option=com_phocacart&view=phocacartquestions','component',1,105,2,248,NULL,NULL,0,1,'class:questions',0,'{}',110,111,0,'',1,NULL,NULL),(137,'main','COM_PHOCACART_OPENING_TIMES','com-phocacart-opening-times','','com-phocacart/com-phocacart-opening-times','index.php?option=com_phocacart&view=phocacarttimes','component',1,105,2,248,NULL,NULL,0,1,'class:times',0,'{}',112,113,0,'',1,NULL,NULL),(138,'main','COM_PHOCACART_SUBMITTED_ITEMS','com-phocacart-submitted-items','','com-phocacart/com-phocacart-submitted-items','index.php?option=com_phocacart&view=phocacartsubmititems','component',1,105,2,248,NULL,NULL,0,1,'class:submititems',0,'{}',114,115,0,'',1,NULL,NULL),(139,'main','COM_PHOCACART_STATISTICS','com-phocacart-statistics','','com-phocacart/com-phocacart-statistics','index.php?option=com_phocacart&view=phocacartstatistics','component',1,105,2,248,NULL,NULL,0,1,'class:statistics',0,'{}',116,117,0,'',1,NULL,NULL),(140,'main','COM_PHOCACART_REPORTS','com-phocacart-reports','','com-phocacart/com-phocacart-reports','index.php?option=com_phocacart&view=phocacartreports','component',1,105,2,248,NULL,NULL,0,1,'class:reports',0,'{}',118,119,0,'',1,NULL,NULL),(141,'main','COM_PHOCACART_HITS','com-phocacart-hits','','com-phocacart/com-phocacart-hits','index.php?option=com_phocacart&view=phocacarthits','component',1,105,2,248,NULL,NULL,0,1,'class:hits',0,'{}',120,121,0,'',1,NULL,NULL),(142,'main','COM_PHOCACART_IMPORT','com-phocacart-import','','com-phocacart/com-phocacart-import','index.php?option=com_phocacart&view=phocacartimports','component',1,105,2,248,NULL,NULL,0,1,'class:imports',0,'{}',122,123,0,'',1,NULL,NULL),(143,'main','COM_PHOCACART_EXPORT','com-phocacart-export','','com-phocacart/com-phocacart-export','index.php?option=com_phocacart&view=phocacartexports','component',1,105,2,248,NULL,NULL,0,1,'class:exports',0,'{}',124,125,0,'',1,NULL,NULL),(144,'main','COM_PHOCACART_SYSTEM_LOG','com-phocacart-system-log','','com-phocacart/com-phocacart-system-log','index.php?option=com_phocacart&view=phocacartlogs','component',1,105,2,248,NULL,NULL,0,1,'class:logs',0,'{}',126,127,0,'',1,NULL,NULL),(145,'main','COM_PHOCACART_EXTENSIONS','com-phocacart-extensions','','com-phocacart/com-phocacart-extensions','index.php?option=com_phocacart&view=phocacartextensions','component',1,105,2,248,NULL,NULL,0,1,'class:extensions',0,'{}',128,129,0,'',1,NULL,NULL),(146,'main','COM_PHOCACART_VENDORS','com-phocacart-vendors','','com-phocacart/com-phocacart-vendors','index.php?option=com_phocacart&view=phocacartvendors','component',1,105,2,248,NULL,NULL,0,1,'class:vendors',0,'{}',130,131,0,'',1,NULL,NULL),(147,'main','COM_PHOCACART_SECTIONS','com-phocacart-sections','','com-phocacart/com-phocacart-sections','index.php?option=com_phocacart&view=phocacartsections','component',1,105,2,248,NULL,NULL,0,1,'class:sections',0,'{}',132,133,0,'',1,NULL,NULL),(148,'main','COM_PHOCACART_UNITS','com-phocacart-units','','com-phocacart/com-phocacart-units','index.php?option=com_phocacart&view=phocacartunits','component',1,105,2,248,NULL,NULL,0,1,'class:units',0,'{}',134,135,0,'',1,NULL,NULL),(149,'main','COM_PHOCACART_BULK_PRICE_EDITOR','com-phocacart-bulk-price-editor','','com-phocacart/com-phocacart-bulk-price-editor','index.php?option=com_phocacart&view=phocacartbulkprices','component',1,105,2,248,NULL,NULL,0,1,'class:bulkprices',0,'{}',136,137,0,'',1,NULL,NULL),(150,'main','COM_PHOCACART_INFO','com-phocacart-info','','com-phocacart/com-phocacart-info','index.php?option=com_phocacart&view=phocacartinfo','component',1,105,2,248,NULL,NULL,0,1,'class:info',0,'{}',138,139,0,'',1,NULL,NULL),(151,'main','COM_PHOCAINSTALL','com-phocainstall','','com-phocainstall','index.php?option=com_phocainstall','component',1,1,1,249,NULL,NULL,0,1,'media/com_phocainstall/images/administrator/icon-16-pi-menu.png',0,'{}',141,142,0,'',1,NULL,NULL),(152,'mainmenu','Shop','shop','','shop','index.php?option=com_phocacart&view=categories','component',1,1,1,248,NULL,NULL,0,1,' ',0,'{\"show_categories\":1,\"show_pagination\":1,\"show_pagination_top\":1,\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',143,144,0,'*',0,NULL,NULL);
/*!40000 ALTER TABLE `tc5xu_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_menu_types`
--

DROP TABLE IF EXISTS `tc5xu_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_menu_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_menu_types`
--

LOCK TABLES `tc5xu_menu_types` WRITE;
/*!40000 ALTER TABLE `tc5xu_menu_types` DISABLE KEYS */;
INSERT INTO `tc5xu_menu_types` VALUES (1,0,'mainmenu','Main Menu','The main menu for the site',0,1);
/*!40000 ALTER TABLE `tc5xu_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_messages`
--

DROP TABLE IF EXISTS `tc5xu_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_messages` (
  `message_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int unsigned NOT NULL DEFAULT '0',
  `user_id_to` int unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `priority` tinyint unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_messages`
--

LOCK TABLES `tc5xu_messages` WRITE;
/*!40000 ALTER TABLE `tc5xu_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_messages_cfg`
--

DROP TABLE IF EXISTS `tc5xu_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_messages_cfg` (
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_messages_cfg`
--

LOCK TABLES `tc5xu_messages_cfg` WRITE;
/*!40000 ALTER TABLE `tc5xu_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_modules`
--

DROP TABLE IF EXISTS `tc5xu_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_modules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci,
  `ordering` int NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_modules`
--

LOCK TABLES `tc5xu_modules` WRITE;
/*!40000 ALTER TABLE `tc5xu_modules` DISABLE KEYS */;
INSERT INTO `tc5xu_modules` VALUES (1,39,'Main Menu','','',2,'topbar',NULL,NULL,NULL,NULL,1,'mod_menu',1,0,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(2,40,'Login','','',1,'login',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'',1,'*'),(3,41,'Popular Articles','','',6,'cpanel',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(4,42,'Recently Added Articles','','',4,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(8,43,'Toolbar','','',1,'toolbar',NULL,NULL,NULL,NULL,1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Notifications','','',3,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',3,1,'{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(10,45,'Logged-in Users','','',2,'cpanel',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(12,46,'Admin Menu','','',1,'menu',NULL,NULL,NULL,NULL,1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(15,49,'Title','','',1,'title',NULL,NULL,NULL,NULL,1,'mod_title',3,1,'',1,'*'),(16,50,'Login Form','','',7,'sidebar-left',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,51,'Breadcrumbs','','',1,'breadcrumbs',NULL,NULL,NULL,NULL,1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',0,'*'),(79,52,'Multilanguage status','','',2,'status',NULL,NULL,NULL,NULL,1,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Joomla Version','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_version',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,55,'Sample Data','','',1,'cpanel',NULL,NULL,NULL,NULL,1,'mod_sampledata',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(88,67,'Latest Actions','','',3,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latestactions',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(89,68,'Privacy Dashboard','','',5,'cpanel',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(90,89,'Login Support','','',1,'sidebar',NULL,NULL,NULL,NULL,1,'mod_loginsupport',1,1,'{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(91,72,'System Dashboard','','',1,'cpanel-system',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(92,73,'Content Dashboard','','',1,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(93,74,'Menus Dashboard','','',1,'cpanel-menus',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(94,75,'Components Dashboard','','',1,'cpanel-components',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(95,76,'Users Dashboard','','',1,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(96,86,'Popular Articles','','',3,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(97,87,'Recently Added Articles','','',4,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(98,88,'Logged-in Users','','',2,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(99,77,'Frontend Link','','',5,'status',NULL,NULL,NULL,NULL,1,'mod_frontend',1,1,'',1,'*'),(100,78,'Messages','','',4,'status',NULL,NULL,NULL,NULL,1,'mod_messages',3,1,'',1,'*'),(101,79,'Post Install Messages','','',3,'status',NULL,NULL,NULL,NULL,1,'mod_post_installation_messages',3,1,'',1,'*'),(102,80,'User Status','','',6,'status',NULL,NULL,NULL,NULL,1,'mod_user',3,1,'',1,'*'),(103,70,'Site','','',1,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(104,71,'System','','',2,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(105,82,'3rd Party','','',4,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(106,83,'Help Dashboard','','',1,'cpanel-help',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(107,84,'Privacy Requests','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(108,85,'Privacy Status','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_status',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(109,96,'Guided Tours','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_guidedtours',1,1,'',1,'*'),(110,100,'Phoca Top Menu','','',1,'customtop',NULL,NULL,'2024-11-02 05:01:13',NULL,1,'mod_phocatopmenu',1,1,'{\"menutype\":\"*\",\"preset\":\"alternate\",\"check\":1,\"shownew\":1,\"showhelp\":1,\"forum_url\":\"\",\"open_menu\":2,\"theme_style\":\"black\",\"sticky_navbar\":0,\"custom_css\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(111,104,'Phoca Cart Brands Module','','',1,'',NULL,NULL,NULL,NULL,0,'mod_phocacart_brands',1,1,'',0,'*'),(112,105,'Phoca Cart Cart Module','','',3,'topbar',NULL,NULL,NULL,NULL,1,'mod_phocacart_cart',1,1,'{\"display_image\":0,\"display_product_tax_info\":0,\"display_checkout_link\":\"1\",\"load_component_media\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(113,106,'Phoca Cart Category Module','','',3,'',NULL,NULL,NULL,NULL,0,'mod_phocacart_category',1,1,'',0,'*'),(114,107,'Phoca Cart Compare Module','','',6,'topbar',NULL,NULL,NULL,NULL,1,'mod_phocacart_compare',1,1,'{\"module_description\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(115,108,'Phoca Cart Currency Module','','',7,'topbar',NULL,NULL,NULL,NULL,1,'mod_phocacart_currency',1,1,'{\"show_button\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(116,109,'Phoca Cart Filter Module','','',1,'sidebar-left',NULL,NULL,'2024-12-02 16:32:59',NULL,1,'mod_phocacart_filter',1,1,'{\"filter_price\":1,\"limit_price_category\":0,\"filter_tag\":1,\"limit_tags_category\":0,\"ordering_tag\":\"1\",\"filter_label\":1,\"limit_labels_category\":0,\"ordering_label\":\"1\",\"limit_tag_count\":\"-1\",\"display_tag_count\":0,\"filter_manufacturer\":1,\"limit_manufacturers_category\":0,\"ordering_manufacturer\":\"1\",\"manufacturer_title\":\"\",\"limit_manufacturer_count\":\"-1\",\"display_manufacturer_count\":0,\"filter_attributes\":0,\"limit_attributes_category\":0,\"ordering_attribute\":\"7\",\"filter_specifications\":0,\"limit_specifications_category\":0,\"ordering_specification\":\"1\",\"filter_parameter\":1,\"limit_parameters_category\":0,\"ordering_parameter\":\"1\",\"limit_parameter_count\":\"-1\",\"display_parameter_count\":0,\"filter_category\":0,\"force_category\":0,\"remove_parameters_cat\":1,\"limit_category_count\":\"-1\",\"display_category_count\":0,\"ordering_category\":\"1\",\"check_available_products\":1,\"enable_color_filter\":0,\"enable_image_filter\":0,\"image_style_image_filter\":\"\",\"enable_color_filter_spec\":0,\"enable_image_filter_spec\":0,\"image_style_image_filter_spec\":\"\",\"filter_language\":0,\"open_filter_panel\":1,\"load_component_media\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(117,110,'Phoca Cart Product Scroller Module','','',7,'',NULL,NULL,NULL,NULL,0,'mod_phocacart_product_scroller',1,1,'',0,'*'),(118,111,'Best Seller Products','','',1,'bottom-a',NULL,NULL,NULL,NULL,1,'mod_phocacart_product',1,1,'{\"item_ordering\":\"14\",\"featured_only\":\"0\",\"item_limit\":\"3\",\"hide_price\":\"0\",\"display_view_product_button\":\"1\",\"display_product_description\":\"0\",\"module_description\":\"\",\"load_component_media\":\"1\",\"layout\":\"_:list\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(119,112,'Phoca Cart Search Module','','',4,'topbar',NULL,NULL,NULL,NULL,1,'mod_phocacart_search',1,1,'{\"search_options\":\"0\",\"hide_buttons\":\"0\",\"display_inner_icon\":\"0\",\"load_component_media\":\"1\",\"placeholder_text\":\"\",\"display_active_parameters\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(120,113,'Phoca Cart Wish List Module','','',5,'topbar',NULL,NULL,NULL,NULL,1,'mod_phocacart_wishlist',1,1,'{\"module_description\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(121,114,'Logo','','<div class=\"ph-logo\"><a href=\"#\"> <img src=\"images/logo/logo.svg\" alt=\"Logo\" data-path=\"local-images:/logo/logo.svg\"> </a></div>',1,'topbar',NULL,NULL,NULL,NULL,1,'mod_custom',1,0,'{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(122,115,'Phoca Particles','','',1,'top-a',NULL,NULL,NULL,NULL,1,'mod_phocaparticles',1,0,'{\"type\":\"image_content\",\"description_top\":\"\",\"description_bottom\":\"\",\"title_color\":\"\",\"icon_color\":\"\",\"display_option\":\"\",\"display_view\":\"\",\"display_id\":\"\",\"custom_css\":\"\",\"image_row_box_size\":\"25\",\"image_content_size\":\"1\",\"image_feature_box_size\":\"1\",\"main_title\":\"\",\"main_icon_class\":\"Fun and Educational Toys for Kids\",\"main_image_svg\":\"\",\"main_image\":\"images\\/phocacartproducts\\/Candies\\/003-candies-cherry.webp#joomlaImage:\\/\\/local-images\\/phocacartproducts\\/Candies\\/003-candies-cherry.webp?width=500&height=700\",\"main_background_image\":\"\",\"main_video\":\"\",\"main_video_file\":\"\",\"main_video_file_thumbnail\":\"\",\"main_video_width\":\"560\",\"main_video_height\":\"315\",\"main_description\":\"\",\"main_link\":\"\",\"main_link_attributes\":\"\",\"main_button_title\":\"Shop Now\",\"main_button_link\":\"http:\\/\\/localhost\\/Joomla\\/index.php\\/shop\",\"main_button_attributes\":\"\",\"main_content\":\"<p>IDK, this is just a dumb text I created, lol<\\/p>\",\"main_top_code\":\"\",\"main_bottom_code\":\"\",\"main_label\":\"\",\"main_price\":\"\",\"main_price_original\":\"\",\"image_empty_space\":0,\"items\":[],\"phocacart_product_id\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(123,116,'Feature Products ','',NULL,1,'bottom-a',NULL,NULL,NULL,NULL,1,'mod_phocacart_product',1,1,'{\"item_ordering\":\"14\",\"featured_only\":\"0\",\"item_limit\":\"3\",\"hide_price\":\"0\",\"display_view_product_button\":\"1\",\"display_product_description\":\"0\",\"module_description\":\"\",\"load_component_media\":\"1\",\"layout\":\"_:list\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(124,117,'Latest Products','',NULL,1,'bottom-a',NULL,NULL,NULL,NULL,1,'mod_phocacart_product',1,1,'{\"item_ordering\":\"8\",\"featured_only\":\"0\",\"item_limit\":\"3\",\"hide_price\":\"0\",\"display_view_product_button\":\"1\",\"display_product_description\":\"0\",\"module_description\":\"\",\"load_component_media\":\"1\",\"layout\":\"_:list\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(125,118,'Most Viewed','',NULL,1,'bottom-a',NULL,NULL,NULL,NULL,1,'mod_phocacart_product',1,1,'{\"item_ordering\":\"16\",\"featured_only\":\"0\",\"item_limit\":\"3\",\"hide_price\":\"0\",\"display_view_product_button\":\"1\",\"display_product_description\":\"0\",\"module_description\":\"\",\"load_component_media\":\"1\",\"layout\":\"_:list\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(126,119,'Phoca Particles Bottom','',NULL,1,'bottom-b',NULL,NULL,NULL,NULL,1,'mod_phocaparticles',1,0,'{\"type\":\"image_feature_box\",\"description_top\":\"\",\"description_bottom\":\"\",\"title_color\":\"\",\"icon_color\":\"\",\"display_option\":\"\",\"display_view\":\"\",\"display_id\":\"\",\"custom_css\":\"\",\"image_row_box_size\":\"25\",\"image_content_size\":\"1\",\"image_feature_box_size\":\"5\",\"main_title\":\"\",\"main_icon_class\":\"\",\"main_image_svg\":\"\",\"main_image\":\"images\\/phocacartproducts\\/ChocolateBar\\/001-chocolate-bar-coconut-raspberry.webp#joomlaImage:\\/\\/local-images\\/phocacartproducts\\/ChocolateBar\\/001-chocolate-bar-coconut-raspberry.webp?width=500&height=700\",\"main_background_image\":\"\",\"main_video\":\"\",\"main_video_file\":\"\",\"main_video_file_thumbnail\":\"\",\"main_video_width\":\"560\",\"main_video_height\":\"315\",\"main_description\":\"\",\"main_link\":\"\",\"main_link_attributes\":\"\",\"main_button_title\":\"\",\"main_button_link\":\"\",\"main_button_attributes\":\"\",\"main_content\":\"\",\"main_top_code\":\"\",\"main_bottom_code\":\"\",\"main_label\":\"\",\"main_price\":\"\",\"main_price_original\":\"\",\"image_empty_space\":0,\"items\":{\"items0\":{\"item_title\":\"Chocolate\",\"item_icon_class\":\"\",\"item_image_svg\":\"\",\"item_image\":\"images\\/phocacartproducts\\/ChewingGum\\/001-chewing-gum-melon.webp#joomlaImage:\\/\\/local-images\\/phocacartproducts\\/ChewingGum\\/001-chewing-gum-melon.webp?width=500&height=700\",\"item_description\":\"\",\"item_link\":\"\",\"item_link_attributes\":\"\",\"button_title\":\"\",\"button_link\":\"\",\"button_attributes\":\"\",\"item_content\":\"\",\"item_class\":\"\"},\"items1\":{\"item_title\":\"Baby Food\",\"item_icon_class\":\"\",\"item_image_svg\":\"\",\"item_image\":\"images\\/phocacartproducts\\/BabyFood\\/001-baby-food-apple-pear.webp#joomlaImage:\\/\\/local-images\\/phocacartproducts\\/BabyFood\\/001-baby-food-apple-pear.webp?width=500&height=700\",\"item_description\":\"\",\"item_link\":\"\",\"item_link_attributes\":\"\",\"button_title\":\"\",\"button_link\":\"\",\"button_attributes\":\"\",\"item_content\":\"\",\"item_class\":\"\"}},\"phocacart_product_id\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `tc5xu_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_modules_menu`
--

DROP TABLE IF EXISTS `tc5xu_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_modules_menu` (
  `moduleid` int NOT NULL DEFAULT '0',
  `menuid` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_modules_menu`
--

LOCK TABLES `tc5xu_modules_menu` WRITE;
/*!40000 ALTER TABLE `tc5xu_modules_menu` DISABLE KEYS */;
INSERT INTO `tc5xu_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0),(94,0),(95,0),(96,0),(97,0),(98,0),(99,0),(100,0),(101,0),(102,0),(103,0),(104,0),(105,0),(106,0),(107,0),(108,0),(109,0),(110,0),(112,0),(114,0),(115,0),(118,0),(119,0),(120,0),(121,0),(122,0),(123,0),(124,0),(125,0),(126,0);
/*!40000 ALTER TABLE `tc5xu_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_newsfeeds`
--

DROP TABLE IF EXISTS `tc5xu_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_newsfeeds` (
  `catid` int NOT NULL DEFAULT '0',
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint NOT NULL DEFAULT '0',
  `numarticles` int unsigned NOT NULL DEFAULT '1',
  `cache_time` int unsigned NOT NULL DEFAULT '3600',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `rtl` tinyint NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_newsfeeds`
--

LOCK TABLES `tc5xu_newsfeeds` WRITE;
/*!40000 ALTER TABLE `tc5xu_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_overrider`
--

DROP TABLE IF EXISTS `tc5xu_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_overrider` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_overrider`
--

LOCK TABLES `tc5xu_overrider` WRITE;
/*!40000 ALTER TABLE `tc5xu_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_attribute_values`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_attribute_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_attribute_values` (
  `id` int NOT NULL AUTO_INCREMENT,
  `attribute_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `operator` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stock` int NOT NULL DEFAULT '0',
  `weight` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `operator_weight` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `volume` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `operator_volume` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_small` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_medium` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_token` char(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_hits` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ean` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `default_value` tinyint(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_attribute` (`attribute_id`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_attribute_values`
--

LOCK TABLES `tc5xu_phocacart_attribute_values` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_attribute_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_attribute_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_attribute_values_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_attribute_values_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_attribute_values_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_attribute_values_i18n`
--

LOCK TABLES `tc5xu_phocacart_attribute_values_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_attribute_values_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_attribute_values_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_attributes`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_attributes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `attribute_template` int DEFAULT NULL,
  `is_filter` int NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_product` (`product_id`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_attributes`
--

LOCK TABLES `tc5xu_phocacart_attributes` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_attributes_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_attributes_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_attributes_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_attributes_i18n`
--

LOCK TABLES `tc5xu_phocacart_attributes_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_attributes_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_attributes_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_bulk_prices`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_bulk_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_bulk_prices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_bulk_prices`
--

LOCK TABLES `tc5xu_phocacart_bulk_prices` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_bulk_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_bulk_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_cart_multiple`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_cart_multiple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_cart_multiple` (
  `user_id` int NOT NULL DEFAULT '0',
  `vendor_id` int NOT NULL DEFAULT '0',
  `ticket_id` int NOT NULL DEFAULT '0',
  `unit_id` int NOT NULL DEFAULT '0',
  `section_id` int NOT NULL DEFAULT '0',
  `loyalty_card_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cart` text COLLATE utf8mb4_unicode_ci,
  `params_shipping` text COLLATE utf8mb4_unicode_ci,
  `params_payment` text COLLATE utf8mb4_unicode_ci,
  `shipping` int NOT NULL DEFAULT '0',
  `coupon` int NOT NULL DEFAULT '0',
  `payment` int NOT NULL DEFAULT '0',
  `reward` int NOT NULL DEFAULT '0',
  `type` tinyint NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  KEY `idx_uvtus` (`user_id`,`vendor_id`,`ticket_id`,`unit_id`,`section_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_vendor_id` (`vendor_id`),
  KEY `idx_section_id` (`section_id`),
  KEY `idx_unit_id` (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_cart_multiple`
--

LOCK TABLES `tc5xu_phocacart_cart_multiple` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_cart_multiple` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_cart_multiple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_categories`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `vendor_id` int NOT NULL DEFAULT '0',
  `owner_id` int NOT NULL DEFAULT '0',
  `category_type` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title_long` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title_feed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `icon_class` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_feed` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_bottom` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `special_parameter` text COLLATE utf8mb4_unicode_ci,
  `special_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `count` int NOT NULL DEFAULT '0',
  `hits` int NOT NULL DEFAULT '0',
  `count_date` datetime NOT NULL,
  `count_products` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `params_feed` text COLLATE utf8mb4_unicode_ci,
  `metatitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci,
  `metadata` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_published` (`published`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_categories`
--

LOCK TABLES `tc5xu_phocacart_categories` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_categories` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_categories` VALUES (1,0,0,0,0,1,'Baby Food','','baby-food','BabyFood/000-baby-food.webp','',0,0,'','','',NULL,1,0,'0000-00-00 00:00:00',0,'2021-09-27 10:55:00',0,'2021-10-21 15:06:16',NULL,'',1,1,'2021-09-27 00:00:00',0,377,'2021-12-20 23:11:30',6,NULL,NULL,'','','','{\"robots\":\"\"}','*'),(2,0,0,0,0,1,'Candies','','candies','Candies/000-candies.webp','',0,0,'','','',NULL,1,0,'0000-00-00 00:00:00',0,'2021-09-30 16:41:00',0,'2021-11-04 17:56:42',NULL,'',2,1,'2021-09-30 00:00:00',0,216,'2021-12-20 13:30:22',6,NULL,NULL,'','','','{\"robots\":\"\"}','*'),(3,0,0,0,0,1,'Chewing Gum','','chewing-gum','ChewingGum/000-chewing-gum.webp','',0,0,'','','',NULL,1,0,'0000-00-00 00:00:00',0,'2021-09-30 16:55:20',0,'2021-12-20 23:10:55',NULL,'',3,1,'2021-09-30 00:00:00',0,47,'2021-12-20 23:10:55',6,NULL,NULL,'','','','{\"robots\":\"\"}','*'),(4,0,0,0,0,1,'Chocolate Bar','','chocolate-bar','ChocolateBar/000-chocolate-bar.webp','',0,0,'','','',NULL,1,0,'0000-00-00 00:00:00',0,'2021-09-30 16:55:37',0,'0000-00-00 00:00:00',NULL,'',4,1,'2021-09-30 16:55:37',0,4,'2021-11-16 12:48:04',6,NULL,NULL,'','','','{\"robots\":\"\"}','*'),(5,0,0,0,0,1,'Fruit Juice','','fruit-juice','FruitJuice/000-fruit-juice.webp','',0,0,'','','',NULL,1,0,'0000-00-00 00:00:00',0,'2021-09-30 16:55:56',0,'0000-00-00 00:00:00',NULL,'',5,1,'2021-09-30 16:55:56',0,29,'2021-11-28 11:37:58',6,NULL,NULL,'','','','{\"robots\":\"\"}','*'),(6,0,0,0,0,1,'Lemonade','','lemonade','Lemonade/000-lemonade.webp','',0,0,'','','',NULL,1,0,'0000-00-00 00:00:00',0,'2021-09-30 16:56:13',0,'0000-00-00 00:00:00',NULL,'',6,1,'2021-09-30 16:56:13',0,9,'2021-11-16 12:47:37',6,NULL,NULL,'','','','{\"robots\":\"\"}','*');
/*!40000 ALTER TABLE `tc5xu_phocacart_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_categories_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_categories_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_categories_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_feed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_bottom` text COLLATE utf8mb4_unicode_ci,
  `metatitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_categories_i18n`
--

LOCK TABLES `tc5xu_phocacart_categories_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_categories_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_categories_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_content_types`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_content_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_context` (`context`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_content_types`
--

LOCK TABLES `tc5xu_phocacart_content_types` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_content_types` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_content_types` VALUES (1,'COM_PHOCACART_CONTENT_TYPE_CATEGORY_DEFAULT','category',1,NULL,NULL,1,'{}'),(2,'COM_PHOCACART_CONTENT_TYPE_RELATED_DEFAULT','product_related',1,NULL,NULL,1,'{}');
/*!40000 ALTER TABLE `tc5xu_phocacart_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_countries`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` int NOT NULL DEFAULT '0',
  `code2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code3` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_countries`
--

LOCK TABLES `tc5xu_phocacart_countries` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_countries` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_countries` VALUES (1,'Afghanistan','',0,'AF','AFG','',1,0,'0000-00-00 00:00:00',1,NULL,''),(2,'Albania','',0,'AL','ALB','',1,0,'0000-00-00 00:00:00',2,NULL,''),(3,'Algeria','',0,'DZ','DZA','',1,0,'0000-00-00 00:00:00',3,NULL,''),(4,'American Samoa','',0,'AS','ASM','',1,0,'0000-00-00 00:00:00',4,NULL,''),(5,'Andorra','',0,'AD','AND','',1,0,'0000-00-00 00:00:00',5,NULL,''),(6,'Angola','',0,'AO','AGO','',1,0,'0000-00-00 00:00:00',6,NULL,''),(7,'Anguilla','',0,'AI','AIA','',1,0,'0000-00-00 00:00:00',7,NULL,''),(8,'Antarctica','',0,'AQ','ATA','',1,0,'0000-00-00 00:00:00',8,NULL,''),(9,'Antigua and Barbuda','',0,'AG','ATG','',1,0,'0000-00-00 00:00:00',9,NULL,''),(10,'Argentina','',0,'AR','ARG','',1,0,'0000-00-00 00:00:00',10,NULL,''),(11,'Armenia','',0,'AM','ARM','',1,0,'0000-00-00 00:00:00',11,NULL,''),(12,'Aruba','',0,'AW','ABW','',1,0,'0000-00-00 00:00:00',12,NULL,''),(13,'Australia','',0,'AU','AUS','',1,0,'0000-00-00 00:00:00',13,NULL,''),(14,'Austria','',0,'AT','AUT','',1,0,'0000-00-00 00:00:00',14,NULL,''),(15,'Azerbaijan','',0,'AZ','AZE','',1,0,'0000-00-00 00:00:00',15,NULL,''),(16,'Bahamas','',0,'BS','BHS','',1,0,'0000-00-00 00:00:00',16,NULL,''),(17,'Bahrain','',0,'BH','BHR','',1,0,'0000-00-00 00:00:00',17,NULL,''),(18,'Bangladesh','',0,'BD','BGD','',1,0,'0000-00-00 00:00:00',18,NULL,''),(19,'Barbados','',0,'BB','BRB','',1,0,'0000-00-00 00:00:00',19,NULL,''),(20,'Belarus','',0,'BY','BLR','',1,0,'0000-00-00 00:00:00',20,NULL,''),(21,'Belgium','',0,'BE','BEL','',1,0,'0000-00-00 00:00:00',21,NULL,''),(22,'Belize','',0,'BZ','BLZ','',1,0,'0000-00-00 00:00:00',22,NULL,''),(23,'Benin','',0,'BJ','BEN','',1,0,'0000-00-00 00:00:00',23,NULL,''),(24,'Bermuda','',0,'BM','BMU','',1,0,'0000-00-00 00:00:00',24,NULL,''),(25,'Bhutan','',0,'BT','BTN','',1,0,'0000-00-00 00:00:00',25,NULL,''),(26,'Bolivia','',0,'BO','BOL','',1,0,'0000-00-00 00:00:00',26,NULL,''),(27,'Bosnia and Herzegovina','',0,'BA','BIH','',1,0,'0000-00-00 00:00:00',27,NULL,''),(28,'Botswana','',0,'BW','BWA','',1,0,'0000-00-00 00:00:00',28,NULL,''),(29,'Bouvet Island','',0,'BV','BVT','',1,0,'0000-00-00 00:00:00',29,NULL,''),(30,'Brazil','',0,'BR','BRA','',1,0,'0000-00-00 00:00:00',30,NULL,''),(31,'British Indian Ocean Territory','',0,'IO','IOT','',1,0,'0000-00-00 00:00:00',31,NULL,''),(32,'Brunei Darussalam','',0,'BN','BRN','',1,0,'0000-00-00 00:00:00',32,NULL,''),(33,'Bulgaria','',0,'BG','BGR','',1,0,'0000-00-00 00:00:00',33,NULL,''),(34,'Burkina Faso','',0,'BF','BFA','',1,0,'0000-00-00 00:00:00',34,NULL,''),(35,'Burundi','',0,'BI','BDI','',1,0,'0000-00-00 00:00:00',35,NULL,''),(36,'Cambodia','',0,'KH','KHM','',1,0,'0000-00-00 00:00:00',36,NULL,''),(37,'Cameroon','',0,'CM','CMR','',1,0,'0000-00-00 00:00:00',37,NULL,''),(38,'Canada','',0,'CA','CAN','',1,0,'0000-00-00 00:00:00',38,NULL,''),(39,'Cape Verde','',0,'CV','CPV','',1,0,'0000-00-00 00:00:00',39,NULL,''),(40,'Cayman Islands','',0,'KY','CYM','',1,0,'0000-00-00 00:00:00',40,NULL,''),(41,'Central African Republic','',0,'CF','CAF','',1,0,'0000-00-00 00:00:00',41,NULL,''),(42,'Chad','',0,'TD','TCD','',1,0,'0000-00-00 00:00:00',42,NULL,''),(43,'Chile','',0,'CL','CHL','',1,0,'0000-00-00 00:00:00',43,NULL,''),(44,'China','',0,'CN','CHN','',1,0,'0000-00-00 00:00:00',44,NULL,''),(45,'Christmas Island','',0,'CX','CXR','',1,0,'0000-00-00 00:00:00',45,NULL,''),(46,'Cocos (Keeling) Islands','',0,'CC','CCK','',1,0,'0000-00-00 00:00:00',46,NULL,''),(47,'Colombia','',0,'CO','COL','',1,0,'0000-00-00 00:00:00',47,NULL,''),(48,'Comoros','',0,'KM','COM','',1,0,'0000-00-00 00:00:00',48,NULL,''),(49,'Congo','',0,'CG','COG','',1,0,'0000-00-00 00:00:00',49,NULL,''),(50,'Cook Islands','',0,'CK','COK','',1,0,'0000-00-00 00:00:00',50,NULL,''),(51,'Costa Rica','',0,'CR','CRI','',1,0,'0000-00-00 00:00:00',51,NULL,''),(52,'Cote D\'Ivoire','',0,'CI','CIV','',1,0,'0000-00-00 00:00:00',52,NULL,''),(53,'Croatia','',0,'HR','HRV','',1,0,'0000-00-00 00:00:00',53,NULL,''),(54,'Cuba','',0,'CU','CUB','',1,0,'0000-00-00 00:00:00',54,NULL,''),(55,'Cyprus','',0,'CY','CYP','',1,0,'0000-00-00 00:00:00',55,NULL,''),(56,'Czech Republic','',0,'CZ','CZE','',1,0,'0000-00-00 00:00:00',56,NULL,''),(57,'Denmark','',0,'DK','DNK','',1,0,'0000-00-00 00:00:00',57,NULL,''),(58,'Djibouti','',0,'DJ','DJI','',1,0,'0000-00-00 00:00:00',58,NULL,''),(59,'Dominica','',0,'DM','DMA','',1,0,'0000-00-00 00:00:00',59,NULL,''),(60,'Dominican Republic','',0,'DO','DOM','',1,0,'0000-00-00 00:00:00',60,NULL,''),(61,'East Timor','',0,'TL','TLS','',1,0,'0000-00-00 00:00:00',61,NULL,''),(62,'Ecuador','',0,'EC','ECU','',1,0,'0000-00-00 00:00:00',62,NULL,''),(63,'Egypt','',0,'EG','EGY','',1,0,'0000-00-00 00:00:00',63,NULL,''),(64,'El Salvador','',0,'SV','SLV','',1,0,'0000-00-00 00:00:00',64,NULL,''),(65,'Equatorial Guinea','',0,'GQ','GNQ','',1,0,'0000-00-00 00:00:00',65,NULL,''),(66,'Eritrea','',0,'ER','ERI','',1,0,'0000-00-00 00:00:00',66,NULL,''),(67,'Estonia','',0,'EE','EST','',1,0,'0000-00-00 00:00:00',67,NULL,''),(68,'Ethiopia','',0,'ET','ETH','',1,0,'0000-00-00 00:00:00',68,NULL,''),(69,'Falkland Islands (Malvinas)','',0,'FK','FLK','',1,0,'0000-00-00 00:00:00',69,NULL,''),(70,'Faroe Islands','',0,'FO','FRO','',1,0,'0000-00-00 00:00:00',70,NULL,''),(71,'Fiji','',0,'FJ','FJI','',1,0,'0000-00-00 00:00:00',71,NULL,''),(72,'Finland','',0,'FI','FIN','',1,0,'0000-00-00 00:00:00',72,NULL,''),(74,'France, Metropolitan','',0,'FR','FRA','',1,0,'0000-00-00 00:00:00',74,NULL,''),(75,'French Guiana','',0,'GF','GUF','',1,0,'0000-00-00 00:00:00',75,NULL,''),(76,'French Polynesia','',0,'PF','PYF','',1,0,'0000-00-00 00:00:00',76,NULL,''),(77,'French Southern Territories','',0,'TF','ATF','',1,0,'0000-00-00 00:00:00',77,NULL,''),(78,'Gabon','',0,'GA','GAB','',1,0,'0000-00-00 00:00:00',78,NULL,''),(79,'Gambia','',0,'GM','GMB','',1,0,'0000-00-00 00:00:00',79,NULL,''),(80,'Georgia','',0,'GE','GEO','',1,0,'0000-00-00 00:00:00',80,NULL,''),(81,'Germany','',0,'DE','DEU','',1,0,'0000-00-00 00:00:00',81,NULL,''),(82,'Ghana','',0,'GH','GHA','',1,0,'0000-00-00 00:00:00',82,NULL,''),(83,'Gibraltar','',0,'GI','GIB','',1,0,'0000-00-00 00:00:00',83,NULL,''),(84,'Greece','',0,'GR','GRC','',1,0,'0000-00-00 00:00:00',84,NULL,''),(85,'Greenland','',0,'GL','GRL','',1,0,'0000-00-00 00:00:00',85,NULL,''),(86,'Grenada','',0,'GD','GRD','',1,0,'0000-00-00 00:00:00',86,NULL,''),(87,'Guadeloupe','',0,'GP','GLP','',1,0,'0000-00-00 00:00:00',87,NULL,''),(88,'Guam','',0,'GU','GUM','',1,0,'0000-00-00 00:00:00',88,NULL,''),(89,'Guatemala','',0,'GT','GTM','',1,0,'0000-00-00 00:00:00',89,NULL,''),(90,'Guinea','',0,'GN','GIN','',1,0,'0000-00-00 00:00:00',90,NULL,''),(91,'Guinea-Bissau','',0,'GW','GNB','',1,0,'0000-00-00 00:00:00',91,NULL,''),(92,'Guyana','',0,'GY','GUY','',1,0,'0000-00-00 00:00:00',92,NULL,''),(93,'Haiti','',0,'HT','HTI','',1,0,'0000-00-00 00:00:00',93,NULL,''),(94,'Heard and Mc Donald Islands','',0,'HM','HMD','',1,0,'0000-00-00 00:00:00',94,NULL,''),(95,'Honduras','',0,'HN','HND','',1,0,'0000-00-00 00:00:00',95,NULL,''),(96,'Hong Kong','',0,'HK','HKG','',1,0,'0000-00-00 00:00:00',96,NULL,''),(97,'Hungary','',0,'HU','HUN','',1,0,'0000-00-00 00:00:00',97,NULL,''),(98,'Iceland','',0,'IS','ISL','',1,0,'0000-00-00 00:00:00',98,NULL,''),(99,'India','',0,'IN','IND','',1,0,'0000-00-00 00:00:00',99,NULL,''),(100,'Indonesia','',0,'ID','IDN','',1,0,'0000-00-00 00:00:00',100,NULL,''),(101,'Iran (Islamic Republic of)','',0,'IR','IRN','',1,0,'0000-00-00 00:00:00',101,NULL,''),(102,'Iraq','',0,'IQ','IRQ','',1,0,'0000-00-00 00:00:00',102,NULL,''),(103,'Ireland','',0,'IE','IRL','',1,0,'0000-00-00 00:00:00',103,NULL,''),(104,'Israel','',0,'IL','ISR','',1,0,'0000-00-00 00:00:00',104,NULL,''),(105,'Italy','',0,'IT','ITA','',1,0,'0000-00-00 00:00:00',105,NULL,''),(106,'Jamaica','',0,'JM','JAM','',1,0,'0000-00-00 00:00:00',106,NULL,''),(107,'Japan','',0,'JP','JPN','',1,0,'0000-00-00 00:00:00',107,NULL,''),(108,'Jordan','',0,'JO','JOR','',1,0,'0000-00-00 00:00:00',108,NULL,''),(109,'Kazakhstan','',0,'KZ','KAZ','',1,0,'0000-00-00 00:00:00',109,NULL,''),(110,'Kenya','',0,'KE','KEN','',1,0,'0000-00-00 00:00:00',110,NULL,''),(111,'Kiribati','',0,'KI','KIR','',1,0,'0000-00-00 00:00:00',111,NULL,''),(112,'North Korea','',0,'KP','PRK','',1,0,'0000-00-00 00:00:00',112,NULL,''),(113,'Korea, Republic of','',0,'KR','KOR','',1,0,'0000-00-00 00:00:00',113,NULL,''),(114,'Kuwait','',0,'KW','KWT','',1,0,'0000-00-00 00:00:00',114,NULL,''),(115,'Kyrgyzstan','',0,'KG','KGZ','',1,0,'0000-00-00 00:00:00',115,NULL,''),(116,'Lao People\'s Democratic Republic','',0,'LA','LAO','',1,0,'0000-00-00 00:00:00',116,NULL,''),(117,'Latvia','',0,'LV','LVA','',1,0,'0000-00-00 00:00:00',117,NULL,''),(118,'Lebanon','',0,'LB','LBN','',1,0,'0000-00-00 00:00:00',118,NULL,''),(119,'Lesotho','',0,'LS','LSO','',1,0,'0000-00-00 00:00:00',119,NULL,''),(120,'Liberia','',0,'LR','LBR','',1,0,'0000-00-00 00:00:00',120,NULL,''),(121,'Libyan Arab Jamahiriya','',0,'LY','LBY','',1,0,'0000-00-00 00:00:00',121,NULL,''),(122,'Liechtenstein','',0,'LI','LIE','',1,0,'0000-00-00 00:00:00',122,NULL,''),(123,'Lithuania','',0,'LT','LTU','',1,0,'0000-00-00 00:00:00',123,NULL,''),(124,'Luxembourg','',0,'LU','LUX','',1,0,'0000-00-00 00:00:00',124,NULL,''),(125,'Macau','',0,'MO','MAC','',1,0,'0000-00-00 00:00:00',125,NULL,''),(126,'FYROM','',0,'MK','MKD','',1,0,'0000-00-00 00:00:00',126,NULL,''),(127,'Madagascar','',0,'MG','MDG','',1,0,'0000-00-00 00:00:00',127,NULL,''),(128,'Malawi','',0,'MW','MWI','',1,0,'0000-00-00 00:00:00',128,NULL,''),(129,'Malaysia','',0,'MY','MYS','',1,0,'0000-00-00 00:00:00',129,NULL,''),(130,'Maldives','',0,'MV','MDV','',1,0,'0000-00-00 00:00:00',130,NULL,''),(131,'Mali','',0,'ML','MLI','',1,0,'0000-00-00 00:00:00',131,NULL,''),(132,'Malta','',0,'MT','MLT','',1,0,'0000-00-00 00:00:00',132,NULL,''),(133,'Marshall Islands','',0,'MH','MHL','',1,0,'0000-00-00 00:00:00',133,NULL,''),(134,'Martinique','',0,'MQ','MTQ','',1,0,'0000-00-00 00:00:00',134,NULL,''),(135,'Mauritania','',0,'MR','MRT','',1,0,'0000-00-00 00:00:00',135,NULL,''),(136,'Mauritius','',0,'MU','MUS','',1,0,'0000-00-00 00:00:00',136,NULL,''),(137,'Mayotte','',0,'YT','MYT','',1,0,'0000-00-00 00:00:00',137,NULL,''),(138,'Mexico','',0,'MX','MEX','',1,0,'0000-00-00 00:00:00',138,NULL,''),(139,'Micronesia, Federated States of','',0,'FM','FSM','',1,0,'0000-00-00 00:00:00',139,NULL,''),(140,'Moldova, Republic of','',0,'MD','MDA','',1,0,'0000-00-00 00:00:00',140,NULL,''),(141,'Monaco','',0,'MC','MCO','',1,0,'0000-00-00 00:00:00',141,NULL,''),(142,'Mongolia','',0,'MN','MNG','',1,0,'0000-00-00 00:00:00',142,NULL,''),(143,'Montserrat','',0,'MS','MSR','',1,0,'0000-00-00 00:00:00',143,NULL,''),(144,'Morocco','',0,'MA','MAR','',1,0,'0000-00-00 00:00:00',144,NULL,''),(145,'Mozambique','',0,'MZ','MOZ','',1,0,'0000-00-00 00:00:00',145,NULL,''),(146,'Myanmar','',0,'MM','MMR','',1,0,'0000-00-00 00:00:00',146,NULL,''),(147,'Namibia','',0,'NA','NAM','',1,0,'0000-00-00 00:00:00',147,NULL,''),(148,'Nauru','',0,'NR','NRU','',1,0,'0000-00-00 00:00:00',148,NULL,''),(149,'Nepal','',0,'NP','NPL','',1,0,'0000-00-00 00:00:00',149,NULL,''),(150,'Netherlands','',0,'NL','NLD','',1,0,'0000-00-00 00:00:00',150,NULL,''),(151,'Netherlands Antilles','',0,'AN','ANT','',1,0,'0000-00-00 00:00:00',151,NULL,''),(152,'New Caledonia','',0,'NC','NCL','',1,0,'0000-00-00 00:00:00',152,NULL,''),(153,'New Zealand','',0,'NZ','NZL','',1,0,'0000-00-00 00:00:00',153,NULL,''),(154,'Nicaragua','',0,'NI','NIC','',1,0,'0000-00-00 00:00:00',154,NULL,''),(155,'Niger','',0,'NE','NER','',1,0,'0000-00-00 00:00:00',155,NULL,''),(156,'Nigeria','',0,'NG','NGA','',1,0,'0000-00-00 00:00:00',156,NULL,''),(157,'Niue','',0,'NU','NIU','',1,0,'0000-00-00 00:00:00',157,NULL,''),(158,'Norfolk Island','',0,'NF','NFK','',1,0,'0000-00-00 00:00:00',158,NULL,''),(159,'Northern Mariana Islands','',0,'MP','MNP','',1,0,'0000-00-00 00:00:00',159,NULL,''),(160,'Norway','',0,'NO','NOR','',1,0,'0000-00-00 00:00:00',160,NULL,''),(161,'Oman','',0,'OM','OMN','',1,0,'0000-00-00 00:00:00',161,NULL,''),(162,'Pakistan','',0,'PK','PAK','',1,0,'0000-00-00 00:00:00',162,NULL,''),(163,'Palau','',0,'PW','PLW','',1,0,'0000-00-00 00:00:00',163,NULL,''),(164,'Panama','',0,'PA','PAN','',1,0,'0000-00-00 00:00:00',164,NULL,''),(165,'Papua New Guinea','',0,'PG','PNG','',1,0,'0000-00-00 00:00:00',165,NULL,''),(166,'Paraguay','',0,'PY','PRY','',1,0,'0000-00-00 00:00:00',166,NULL,''),(167,'Peru','',0,'PE','PER','',1,0,'0000-00-00 00:00:00',167,NULL,''),(168,'Philippines','',0,'PH','PHL','',1,0,'0000-00-00 00:00:00',168,NULL,''),(169,'Pitcairn','',0,'PN','PCN','',1,0,'0000-00-00 00:00:00',169,NULL,''),(170,'Poland','',0,'PL','POL','',1,0,'0000-00-00 00:00:00',170,NULL,''),(171,'Portugal','',0,'PT','PRT','',1,0,'0000-00-00 00:00:00',171,NULL,''),(172,'Puerto Rico','',0,'PR','PRI','',1,0,'0000-00-00 00:00:00',172,NULL,''),(173,'Qatar','',0,'QA','QAT','',1,0,'0000-00-00 00:00:00',173,NULL,''),(174,'Reunion','',0,'RE','REU','',1,0,'0000-00-00 00:00:00',174,NULL,''),(175,'Romania','',0,'RO','ROM','',1,0,'0000-00-00 00:00:00',175,NULL,''),(176,'Russian Federation','',0,'RU','RUS','',1,0,'0000-00-00 00:00:00',176,NULL,''),(177,'Rwanda','',0,'RW','RWA','',1,0,'0000-00-00 00:00:00',177,NULL,''),(178,'Saint Kitts and Nevis','',0,'KN','KNA','',1,0,'0000-00-00 00:00:00',178,NULL,''),(179,'Saint Lucia','',0,'LC','LCA','',1,0,'0000-00-00 00:00:00',179,NULL,''),(180,'Saint Vincent and the Grenadines','',0,'VC','VCT','',1,0,'0000-00-00 00:00:00',180,NULL,''),(181,'Samoa','',0,'WS','WSM','',1,0,'0000-00-00 00:00:00',181,NULL,''),(182,'San Marino','',0,'SM','SMR','',1,0,'0000-00-00 00:00:00',182,NULL,''),(183,'Sao Tome and Principe','',0,'ST','STP','',1,0,'0000-00-00 00:00:00',183,NULL,''),(184,'Saudi Arabia','',0,'SA','SAU','',1,0,'0000-00-00 00:00:00',184,NULL,''),(185,'Senegal','',0,'SN','SEN','',1,0,'0000-00-00 00:00:00',185,NULL,''),(186,'Seychelles','',0,'SC','SYC','',1,0,'0000-00-00 00:00:00',186,NULL,''),(187,'Sierra Leone','',0,'SL','SLE','',1,0,'0000-00-00 00:00:00',187,NULL,''),(188,'Singapore','',0,'SG','SGP','',1,0,'0000-00-00 00:00:00',188,NULL,''),(189,'Slovak Republic','',0,'SK','SVK','',1,0,'0000-00-00 00:00:00',189,NULL,''),(190,'Slovenia','',0,'SI','SVN','',1,0,'0000-00-00 00:00:00',190,NULL,''),(191,'Solomon Islands','',0,'SB','SLB','',1,0,'0000-00-00 00:00:00',191,NULL,''),(192,'Somalia','',0,'SO','SOM','',1,0,'0000-00-00 00:00:00',192,NULL,''),(193,'South Africa','',0,'ZA','ZAF','',1,0,'0000-00-00 00:00:00',193,NULL,''),(194,'South Georgia &amp; South Sandwich Islands','',0,'GS','SGS','',1,0,'0000-00-00 00:00:00',194,NULL,''),(195,'Spain','',0,'ES','ESP','',1,0,'0000-00-00 00:00:00',195,NULL,''),(196,'Sri Lanka','',0,'LK','LKA','',1,0,'0000-00-00 00:00:00',196,NULL,''),(197,'St. Helena','',0,'SH','SHN','',1,0,'0000-00-00 00:00:00',197,NULL,''),(198,'St. Pierre and Miquelon','',0,'PM','SPM','',1,0,'0000-00-00 00:00:00',198,NULL,''),(199,'Sudan','',0,'SD','SDN','',1,0,'0000-00-00 00:00:00',199,NULL,''),(200,'Suriname','',0,'SR','SUR','',1,0,'0000-00-00 00:00:00',200,NULL,''),(201,'Svalbard and Jan Mayen Islands','',0,'SJ','SJM','',1,0,'0000-00-00 00:00:00',201,NULL,''),(202,'Swaziland','',0,'SZ','SWZ','',1,0,'0000-00-00 00:00:00',202,NULL,''),(203,'Sweden','',0,'SE','SWE','',1,0,'0000-00-00 00:00:00',203,NULL,''),(204,'Switzerland','',0,'CH','CHE','',1,0,'0000-00-00 00:00:00',204,NULL,''),(205,'Syrian Arab Republic','',0,'SY','SYR','',1,0,'0000-00-00 00:00:00',205,NULL,''),(206,'Taiwan','',0,'TW','TWN','',1,0,'0000-00-00 00:00:00',206,NULL,''),(207,'Tajikistan','',0,'TJ','TJK','',1,0,'0000-00-00 00:00:00',207,NULL,''),(208,'Tanzania, United Republic of','',0,'TZ','TZA','',1,0,'0000-00-00 00:00:00',208,NULL,''),(209,'Thailand','',0,'TH','THA','',1,0,'0000-00-00 00:00:00',209,NULL,''),(210,'Togo','',0,'TG','TGO','',1,0,'0000-00-00 00:00:00',210,NULL,''),(211,'Tokelau','',0,'TK','TKL','',1,0,'0000-00-00 00:00:00',211,NULL,''),(212,'Tonga','',0,'TO','TON','',1,0,'0000-00-00 00:00:00',212,NULL,''),(213,'Trinidad and Tobago','',0,'TT','TTO','',1,0,'0000-00-00 00:00:00',213,NULL,''),(214,'Tunisia','',0,'TN','TUN','',1,0,'0000-00-00 00:00:00',214,NULL,''),(215,'Turkey','',0,'TR','TUR','',1,0,'0000-00-00 00:00:00',215,NULL,''),(216,'Turkmenistan','',0,'TM','TKM','',1,0,'0000-00-00 00:00:00',216,NULL,''),(217,'Turks and Caicos Islands','',0,'TC','TCA','',1,0,'0000-00-00 00:00:00',217,NULL,''),(218,'Tuvalu','',0,'TV','TUV','',1,0,'0000-00-00 00:00:00',218,NULL,''),(219,'Uganda','',0,'UG','UGA','',1,0,'0000-00-00 00:00:00',219,NULL,''),(220,'Ukraine','',0,'UA','UKR','',1,0,'0000-00-00 00:00:00',220,NULL,''),(221,'United Arab Emirates','',0,'AE','ARE','',1,0,'0000-00-00 00:00:00',221,NULL,''),(222,'United Kingdom','',0,'GB','GBR','',1,0,'0000-00-00 00:00:00',222,NULL,''),(223,'United States','',0,'US','USA','',1,0,'0000-00-00 00:00:00',223,NULL,''),(224,'United States Minor Outlying Islands','',0,'UM','UMI','',1,0,'0000-00-00 00:00:00',224,NULL,''),(225,'Uruguay','',0,'UY','URY','',1,0,'0000-00-00 00:00:00',225,NULL,''),(226,'Uzbekistan','',0,'UZ','UZB','',1,0,'0000-00-00 00:00:00',226,NULL,''),(227,'Vanuatu','',0,'VU','VUT','',1,0,'0000-00-00 00:00:00',227,NULL,''),(228,'Vatican City State (Holy See)','',0,'VA','VAT','',1,0,'0000-00-00 00:00:00',228,NULL,''),(229,'Venezuela','',0,'VE','VEN','',1,0,'0000-00-00 00:00:00',229,NULL,''),(230,'Viet Nam','',0,'VN','VNM','',1,0,'0000-00-00 00:00:00',230,NULL,''),(231,'Virgin Islands (British)','',0,'VG','VGB','',1,0,'0000-00-00 00:00:00',231,NULL,''),(232,'Virgin Islands (U.S.)','',0,'VI','VIR','',1,0,'0000-00-00 00:00:00',232,NULL,''),(233,'Wallis and Futuna Islands','',0,'WF','WLF','',1,0,'0000-00-00 00:00:00',233,NULL,''),(234,'Western Sahara','',0,'EH','ESH','',1,0,'0000-00-00 00:00:00',234,NULL,''),(235,'Yemen','',0,'YE','YEM','',1,0,'0000-00-00 00:00:00',235,NULL,''),(237,'Democratic Republic of Congo','',0,'CD','COD','',1,0,'0000-00-00 00:00:00',237,NULL,''),(238,'Zambia','',0,'ZM','ZMB','',1,0,'0000-00-00 00:00:00',238,NULL,''),(239,'Zimbabwe','',0,'ZW','ZWE','',1,0,'0000-00-00 00:00:00',239,NULL,''),(240,'Jersey','',0,'JE','JEY','',1,0,'0000-00-00 00:00:00',240,NULL,''),(241,'Guernsey','',0,'GG','GGY','',1,0,'0000-00-00 00:00:00',241,NULL,''),(242,'Montenegro','',0,'ME','MNE','',1,0,'0000-00-00 00:00:00',242,NULL,''),(243,'Serbia','',0,'RS','SRB','',1,0,'0000-00-00 00:00:00',243,NULL,''),(244,'Aaland Islands','',0,'AX','ALA','',1,0,'0000-00-00 00:00:00',244,NULL,''),(245,'Bonaire, Sint Eustatius and Saba','',0,'BQ','BES','',1,0,'0000-00-00 00:00:00',245,NULL,''),(246,'Curacao','',0,'CW','CUW','',1,0,'0000-00-00 00:00:00',246,NULL,''),(247,'Palestinian Territory','',0,'PS','PSE','',1,0,'0000-00-00 00:00:00',247,NULL,''),(248,'South Sudan','',0,'SS','SSD','',1,0,'0000-00-00 00:00:00',248,NULL,''),(249,'St. Barthelemy','',0,'BL','BLM','',1,0,'0000-00-00 00:00:00',249,NULL,''),(250,'St. Martin (French part)','',0,'MF','MAF','',1,0,'0000-00-00 00:00:00',250,NULL,''),(251,'Canary Islands','',0,'IC','ICA','',1,0,'0000-00-00 00:00:00',251,NULL,''),(252,'United Kingdom (Northern Ireland)','',0,'XI','GBR','',1,0,'0000-00-00 00:00:00',252,NULL,'');
/*!40000 ALTER TABLE `tc5xu_phocacart_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_coupon_categories`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_coupon_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_coupon_categories` (
  `coupon_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  KEY `idx_coupon` (`coupon_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_coupon_categories`
--

LOCK TABLES `tc5xu_phocacart_coupon_categories` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_coupon_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_coupon_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_coupon_count`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_coupon_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_coupon_count` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupon_id` int NOT NULL DEFAULT '0',
  `count` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_coupon_count`
--

LOCK TABLES `tc5xu_phocacart_coupon_count` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_coupon_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_coupon_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_coupon_count_user`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_coupon_count_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_coupon_count_user` (
  `coupon_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `count` int NOT NULL DEFAULT '0',
  KEY `idx_coupon` (`coupon_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_coupon_count_user`
--

LOCK TABLES `tc5xu_phocacart_coupon_count_user` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_coupon_count_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_coupon_count_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_coupon_products`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_coupon_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_coupon_products` (
  `coupon_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  KEY `idx_coupon` (`coupon_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_coupon_products`
--

LOCK TABLES `tc5xu_phocacart_coupon_products` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_coupon_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_coupon_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_coupons`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total_amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `calculation_type` tinyint(1) NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `free_payment` tinyint(1) NOT NULL DEFAULT '0',
  `valid_from` datetime NOT NULL,
  `valid_to` datetime NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `quantity_from` int NOT NULL DEFAULT '0',
  `quantity_to` int NOT NULL DEFAULT '0',
  `available_quantity` int NOT NULL DEFAULT '0',
  `available_quantity_user` int NOT NULL DEFAULT '0',
  `category_filter` tinyint(1) NOT NULL DEFAULT '1',
  `product_filter` tinyint(1) NOT NULL DEFAULT '1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_type` tinyint(1) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `gift_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gift_description` text COLLATE utf8mb4_unicode_ci,
  `gift_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gift_recipient_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gift_recipient_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gift_sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gift_sender_message` text COLLATE utf8mb4_unicode_ci,
  `gift_type` tinyint(1) NOT NULL DEFAULT '-1',
  `gift_order_id` int NOT NULL DEFAULT '0',
  `gift_product_id` int NOT NULL DEFAULT '0',
  `gift_order_product_id` int NOT NULL DEFAULT '0',
  `gift_class_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `access` int unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_coupons`
--

LOCK TABLES `tc5xu_phocacart_coupons` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_coupons_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_coupons_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_coupons_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gift_description` text COLLATE utf8mb4_unicode_ci,
  `gift_sender_message` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_coupons_i18n`
--

LOCK TABLES `tc5xu_phocacart_coupons_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_coupons_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_coupons_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_currencies`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exchange_rate` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `price_format` tinyint(1) NOT NULL DEFAULT '0',
  `price_currency_symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `price_dec_symbol` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `price_decimals` tinyint(1) NOT NULL DEFAULT '0',
  `price_thousands_sep` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `price_suffix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `price_prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_currencies`
--

LOCK TABLES `tc5xu_phocacart_currencies` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_currencies` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_currencies` VALUES (1,'Euro','','EUR','',1.00000000,3,'€',',',2,'.','','',1,0,NULL,0,NULL,'');
/*!40000 ALTER TABLE `tc5xu_phocacart_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_discount_categories`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_discount_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_discount_categories` (
  `discount_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  KEY `idx_discountcategory` (`discount_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_discount_categories`
--

LOCK TABLES `tc5xu_phocacart_discount_categories` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_discount_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_discount_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_discount_products`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_discount_products` (
  `discount_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  KEY `idx_discountproduct` (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_discount_products`
--

LOCK TABLES `tc5xu_phocacart_discount_products` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_discounts`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_discounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total_amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `calculation_type` tinyint(1) NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `free_payment` tinyint(1) NOT NULL DEFAULT '0',
  `valid_from` datetime NOT NULL,
  `valid_to` datetime NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `quantity_from` int NOT NULL DEFAULT '0',
  `quantity_to` int NOT NULL DEFAULT '0',
  `available_quantity` int NOT NULL DEFAULT '0',
  `available_quantity_user` int NOT NULL DEFAULT '0',
  `category_filter` tinyint(1) NOT NULL DEFAULT '1',
  `product_filter` tinyint(1) NOT NULL DEFAULT '1',
  `type` tinyint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `access` int unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_discounts`
--

LOCK TABLES `tc5xu_phocacart_discounts` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_discounts_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_discounts_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_discounts_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_discounts_i18n`
--

LOCK TABLES `tc5xu_phocacart_discounts_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_discounts_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_discounts_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_export`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_export` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `row_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `item` mediumtext COLLATE utf8mb4_unicode_ci,
  `type` int NOT NULL DEFAULT '0',
  `file_type` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_export`
--

LOCK TABLES `tc5xu_phocacart_export` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_feeds`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_feeds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `header` text COLLATE utf8mb4_unicode_ci,
  `footer` text COLLATE utf8mb4_unicode_ci,
  `root` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `item` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `feed_plugin` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `item_params` text COLLATE utf8mb4_unicode_ci,
  `feed_params` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_feeds`
--

LOCK TABLES `tc5xu_phocacart_feeds` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_feeds` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_feeds` VALUES (1,'Heureka','heureka','','','<?xml version=\"1.0\" encoding=\"utf-8\" ?>','','SHOP','SHOPITEM','','{\"item_id\":\"ITEM_ID\",\"item_title\":\"PRODUCTNAME\",\"item_title_extended\":\"\",\"item_sku\":\"\",\"item_EAN\":\"EAN\",\"item_description_short\":\"DESCRIPTION\",\"item_description_long\":\"\",\"item_url\":\"URL\",\"item_url_image\":\"IMGURL\",\"item_url_video\":\"VIDEO_URL\",\"item_manufacturer\":\"MANUFACTURER\",\"item_category\":\"\",\"feed_category\":\"CATEGORYTEXT\",\"item_original_price_with_vat\":\"\",\"item_original_price_without_vat\":\"\",\"item_final_price_with_vat\":\"PRICE_VAT\",\"item_final_price_without_vat\":\"\",\"item_vat\":\"\",\"item_currency\":\"\",\"item_stock\":\"\",\"item_delivery_date\":\"DELIVERY_DATE\",\"feed_delivery_date\":\"\",\"item_attribute\":\"PARAM\",\"item_attribute_name\":\"PARAM_NAME\",\"item_attribute_value\":\"VAL\"}','{\"export_published_only\":\"1\",\"export_in_stock_only\":\"0\",\"export_price_only\":\"1\",\"strip_html_tags_desc\":\"1\",\"display_attributes\":\"0\",\"item_limit\":\"\",\"item_ordering\":\"1\",\"category_ordering\":\"0\"}',NULL,1,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',0,'*',0);
/*!40000 ALTER TABLE `tc5xu_phocacart_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_form_fields`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_form_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_form_fields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `id_input` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `predefined_values` text COLLATE utf8mb4_unicode_ci,
  `predefined_values_first_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_default` tinyint NOT NULL DEFAULT '0',
  `default` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cols` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rows` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filter` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `read_only` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `validate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `autocomplete` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `preicon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `format` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pattern` text COLLATE utf8mb4_unicode_ci,
  `maxlength` int NOT NULL DEFAULT '0',
  `additional` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `display_billing` tinyint(1) NOT NULL DEFAULT '0',
  `display_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `display_account` tinyint(1) NOT NULL DEFAULT '0',
  `display_docs` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_form_fields`
--

LOCK TABLES `tc5xu_phocacart_form_fields` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_form_fields` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_form_fields` VALUES (1,'name_first','','COM_PHOCACART_FIRST_NAME_LABEL','COM_PHOCACART_FIRST_NAME_DESC','','text:varchar(100)',NULL,'',1,'','','','','','',0,1,'','given-name',0,'','',NULL,0,NULL,1,1,1,1,0,0,NULL,1,1,NULL,''),(2,'name_middle','','COM_PHOCACART_MIDDLE_NAME_LABEL','COM_PHOCACART_MIDDLE_NAME_DESC','','text:varchar(100)',NULL,'',1,'','','','','','',0,0,'','additional-name',0,'','',NULL,0,NULL,0,0,0,0,0,0,NULL,2,1,NULL,''),(3,'name_last','','COM_PHOCACART_LAST_NAME_LABEL','COM_PHOCACART_LAST_NAME_DESC','','text:varchar(100)',NULL,'',1,'','','','','','',0,1,'','family-name',0,'','',NULL,0,NULL,1,1,1,1,0,0,NULL,3,1,NULL,''),(4,'name_degree','','COM_PHOCACART_DEGREE_LABEL','COM_PHOCACART_DEGREE_DESC','','text:varchar(100)',NULL,'',1,'','','','','','',0,0,'','honorific-prefix',0,'','',NULL,0,NULL,0,0,0,0,0,0,NULL,4,1,NULL,''),(5,'company','','COM_PHOCACART_COMPANY_LABEL','COM_PHOCACART_COMPANY_DESC','','text:varchar(255)',NULL,'',1,'','','','','','',0,0,'','organization',0,'','',NULL,0,NULL,1,1,1,1,0,0,NULL,5,1,NULL,''),(6,'vat_1','','COM_PHOCACART_VAT_1_LABEL','COM_PHOCACART_VAT_1_DESC','','text:varchar(25)',NULL,'',1,'','','','','','',0,0,'',NULL,0,'','',NULL,0,NULL,0,0,0,0,0,0,NULL,6,1,NULL,''),(7,'vat_2','','COM_PHOCACART_VAT_2_LABEL','COM_PHOCACART_VAT_2_DESC','','text:varchar(25)',NULL,'',1,'','','','','','',0,0,'',NULL,0,'','',NULL,0,NULL,0,0,0,0,0,0,NULL,7,1,NULL,''),(8,'address_1','','COM_PHOCACART_ADDRESS_1_LABEL','COM_PHOCACART_ADDRESS_1_DESC','','text:varchar(255)',NULL,'',1,'','','','','','',0,1,'','street-address',0,'','',NULL,0,NULL,1,1,1,1,0,0,NULL,8,1,NULL,''),(9,'address_2','','COM_PHOCACART_ADDRESS_2_LABEL','COM_PHOCACART_ADDRESS_2_DESC','','text:varchar(255)',NULL,'',1,'','','','','','',0,0,'',NULL,0,'','',NULL,0,NULL,0,0,0,0,0,0,NULL,9,1,NULL,''),(10,'zip','','COM_PHOCACART_ZIP_LABEL','COM_PHOCACART_ZIP_DESC','','text:varchar(20)',NULL,'',1,'','','','','','',0,1,'','postal-code',0,'','',NULL,0,NULL,1,1,1,1,0,0,NULL,10,1,NULL,''),(11,'city','','COM_PHOCACART_CITY_LABEL','COM_PHOCACART_CITY_DESC','','text:varchar(255)',NULL,'',1,'','','','','','',0,1,'','address-level2',0,'','',NULL,0,NULL,1,1,1,1,0,0,NULL,11,1,NULL,''),(12,'country','','COM_PHOCACART_COUNTRY_LABEL','COM_PHOCACART_COUNTRY_DESC','','phocaformcountry:int(11)',NULL,'',1,'','','','','','',0,1,'','country-name',0,'','',NULL,0,NULL,1,1,1,1,0,0,NULL,12,1,NULL,''),(13,'region','','COM_PHOCACART_REGION_LABEL','COM_PHOCACART_REGION_DESC','','phocaformregion:int(11)',NULL,'',1,'','','','','','',0,0,'','address-level1',0,'','',NULL,0,NULL,1,1,1,1,0,0,NULL,13,1,NULL,''),(14,'email','','COM_PHOCACART_EMAIL_LABEL','COM_PHOCACART_EMAIL_DESC','','text:varchar(100)',NULL,'',1,'','','','','','string',2,1,'email','email',1,'','',NULL,0,NULL,1,1,0,1,0,0,NULL,14,1,NULL,''),(15,'email_contact','','COM_PHOCACART_CONTACT_EMAIL_LABEL','COM_PHOCACART_CONTACT_EMAIL_DESC','','text:varchar(100)',NULL,'',1,'','','','','','string',0,0,'email','email',1,'','',NULL,0,NULL,0,0,0,0,0,0,NULL,15,1,NULL,''),(16,'phone_1','','COM_PHOCACART_PHONE_1_LABEL','COM_PHOCACART_PHONE_1_DESC','','text:varchar(20)',NULL,'',1,'','','','','','',0,0,'','tel',0,'','',NULL,0,NULL,0,0,0,0,0,0,NULL,16,1,NULL,''),(17,'phone_2','','COM_PHOCACART_PHONE_2_LABEL','COM_PHOCACART_PHONE_2_DESC','','text:varchar(20)',NULL,'',1,'','','','','','',0,0,'','tel',0,'','',NULL,0,NULL,0,0,0,0,0,0,NULL,17,1,NULL,''),(18,'phone_mobile','','COM_PHOCACART_MOBILE_PHONE_LABEL','COM_PHOCACART_MOBILE_PHONE_DESC','','text:varchar(20)',NULL,'',1,'','','','','','',0,0,'','tel',0,'','',NULL,0,NULL,0,0,0,0,0,0,NULL,18,1,NULL,''),(19,'fax','','COM_PHOCACART_FAX_LABEL','COM_PHOCACART_FAX_DESC','','text:varchar(20)',NULL,'',1,'','','','','','',0,0,'',NULL,0,'','',NULL,0,NULL,0,0,0,0,0,0,NULL,19,1,NULL,'');
/*!40000 ALTER TABLE `tc5xu_phocacart_form_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_groups`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `display_price` tinyint unsigned NOT NULL DEFAULT '0',
  `display_price_method` tinyint unsigned NOT NULL DEFAULT '0',
  `display_addtocart` tinyint unsigned NOT NULL DEFAULT '0',
  `display_attributes` tinyint unsigned NOT NULL DEFAULT '0',
  `minimum_sum` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `product_id` int NOT NULL DEFAULT '0',
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `activate_registration` int NOT NULL DEFAULT '0',
  `type` tinyint NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_groups`
--

LOCK TABLES `tc5xu_phocacart_groups` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_groups` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_groups` VALUES (1,'COM_PHOCACART_DEFAULT','','',NULL,1,0,1,1,0.0000,0,NULL,NULL,0,1,0,1,0,NULL,1,NULL,'');
/*!40000 ALTER TABLE `tc5xu_phocacart_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_hits`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_hits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catid` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint NOT NULL DEFAULT '0',
  `hits` int NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_hits`
--

LOCK TABLES `tc5xu_phocacart_hits` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_hits` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_import`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_import` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `row_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `item` mediumtext COLLATE utf8mb4_unicode_ci,
  `type` int NOT NULL DEFAULT '0',
  `file_type` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_import`
--

LOCK TABLES `tc5xu_phocacart_import` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_item_access`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_item_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_item_access` (
  `item_id` int NOT NULL DEFAULT '0',
  `access_id` int NOT NULL DEFAULT '0',
  `type` tinyint NOT NULL DEFAULT '0',
  KEY `idx_itemaccess` (`item_id`,`access_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_item_access`
--

LOCK TABLES `tc5xu_phocacart_item_access` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_item_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_item_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_item_groups`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_item_groups` (
  `item_id` int NOT NULL DEFAULT '0',
  `group_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `type` tinyint NOT NULL DEFAULT '0',
  KEY `idx_itemgroup` (`item_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_item_groups`
--

LOCK TABLES `tc5xu_phocacart_item_groups` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_logs`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `type_id` int NOT NULL DEFAULT '0',
  `type` tinyint NOT NULL DEFAULT '0',
  `priority` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `incoming_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_logs`
--

LOCK TABLES `tc5xu_phocacart_logs` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_manufacturers`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_manufacturers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title_long` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `count_date` datetime NOT NULL,
  `count_products` int NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metatitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci,
  `metadata` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_manufacturers`
--

LOCK TABLES `tc5xu_phocacart_manufacturers` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_manufacturers` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_manufacturers` VALUES (1,'Batella','','batella','','',0,'','2021-12-20 22:36:00',1,1,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,'*','',NULL,NULL,NULL),(2,'Frooth','','frooth','','',0,'','2021-12-20 13:30:22',6,1,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00',NULL,'*','',NULL,NULL,NULL),(3,'Weyna','','weyna','','',0,'','2021-11-16 12:48:22',6,1,0,'0000-00-00 00:00:00',3,'0000-00-00 00:00:00',NULL,'*','',NULL,NULL,NULL),(4,'Coefi','','coefi','','',0,'','2021-11-16 12:48:04',6,1,0,'0000-00-00 00:00:00',4,'0000-00-00 00:00:00',NULL,'*','',NULL,NULL,NULL),(5,'Juui','','juui','','',0,'','2021-11-28 11:37:58',6,1,0,'0000-00-00 00:00:00',5,'0000-00-00 00:00:00',NULL,'*','',NULL,NULL,NULL),(6,'Limo','','limo','','',0,'','2021-11-16 12:47:37',6,1,0,'0000-00-00 00:00:00',6,'0000-00-00 00:00:00',NULL,'*','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tc5xu_phocacart_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_manufacturers_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_manufacturers_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_manufacturers_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `metatitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_manufacturers_i18n`
--

LOCK TABLES `tc5xu_phocacart_manufacturers_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_manufacturers_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_manufacturers_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_opening_times`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_opening_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_opening_times` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `day` tinyint(1) NOT NULL DEFAULT '0',
  `hour_from` int NOT NULL DEFAULT '0',
  `minute_from` int NOT NULL DEFAULT '0',
  `hour_to` int NOT NULL DEFAULT '0',
  `minute_to` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_opening_times`
--

LOCK TABLES `tc5xu_phocacart_opening_times` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_opening_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_opening_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_order_attributes`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_order_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_order_attributes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `order_product_id` int NOT NULL DEFAULT '0',
  `attribute_id` int NOT NULL DEFAULT '0',
  `option_id` int NOT NULL DEFAULT '0',
  `attribute_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `option_value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_order_attributes`
--

LOCK TABLES `tc5xu_phocacart_order_attributes` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_order_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_order_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_order_coupons`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_order_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_order_coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `coupon_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `netto` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `brutto` decimal(15,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_order_coupons`
--

LOCK TABLES `tc5xu_phocacart_order_coupons` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_order_coupons` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_order_coupons` VALUES (1,1,0,'','',0.0000,0.0000,0.0000);
/*!40000 ALTER TABLE `tc5xu_phocacart_order_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_order_discounts`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_order_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_order_discounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `discount_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint NOT NULL DEFAULT '0',
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `netto` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `brutto` decimal(15,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_order_discounts`
--

LOCK TABLES `tc5xu_phocacart_order_discounts` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_order_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_order_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_order_downloads`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_order_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_order_downloads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `attribute_id` int NOT NULL DEFAULT '0',
  `option_id` int NOT NULL DEFAULT '0',
  `order_product_id` int NOT NULL DEFAULT '0',
  `order_attribute_id` int NOT NULL DEFAULT '0',
  `order_option_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_token` char(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_hits` int NOT NULL DEFAULT '0',
  `download_days` int NOT NULL DEFAULT '-1',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_order_downloads`
--

LOCK TABLES `tc5xu_phocacart_order_downloads` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_order_downloads` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_order_downloads` VALUES (1,1,1,0,0,1,0,0,'Batela Apple & Pear','','b125b090283c2b67ece08298341dd85b32518bcf3b6b12758bfb9678c2eccf6e','4af971de0b287a5c','4af971de0b287a5c/com_phocacart_v3.5.6.zip',0,-1,0,NULL,1,1,'2024-12-03 01:23:16',0);
/*!40000 ALTER TABLE `tc5xu_phocacart_order_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_order_history`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_order_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `order_status_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_order_history`
--

LOCK TABLES `tc5xu_phocacart_order_history` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_order_history` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_order_history` VALUES (1,1,1,783,0,'','2024-12-03 01:23:16');
/*!40000 ALTER TABLE `tc5xu_phocacart_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_order_product_discounts`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_order_product_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_order_product_discounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `order_product_id` int NOT NULL DEFAULT '0',
  `discount_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  `product_id_key` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `netto` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `brutto` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `quantity` int NOT NULL DEFAULT '0',
  `final` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_order_product_discounts`
--

LOCK TABLES `tc5xu_phocacart_order_product_discounts` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_order_product_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_order_product_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_order_products`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_order_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  `owner_id` int NOT NULL DEFAULT '0',
  `product_id_key` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `netto` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `brutto` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `dnetto` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `dtax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `dbrutto` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `dtype` int NOT NULL DEFAULT '0',
  `damount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `stock_calculation` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `weight` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `volume` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `points_received` int NOT NULL DEFAULT '0',
  `points_needed` int NOT NULL DEFAULT '0',
  `default_price` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `default_tax_rate` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `default_tax_id` int NOT NULL DEFAULT '0',
  `default_tax_id_c` int NOT NULL DEFAULT '0',
  `default_tax_id_r` int NOT NULL DEFAULT '0',
  `default_tax_id_p` int NOT NULL DEFAULT '0',
  `default_calculation_type` tinyint(1) NOT NULL DEFAULT '0',
  `default_points_received` int NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_order_products`
--

LOCK TABLES `tc5xu_phocacart_order_products` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_order_products` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_order_products` VALUES (1,1,1,1,0,'1::','Batela Apple & Pear','batela-apple-pear','',1.2000,0.0000,1.2000,0.0000,0.0000,0.0000,0,0.0000,0,1,0.0000,0.0000,0,0,1.2000,0.0000,0,0,0,0,0,0,1);
/*!40000 ALTER TABLE `tc5xu_phocacart_order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_order_statuses`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_order_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_order_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` char(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `stock_movements` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `change_user_group` tinyint(1) NOT NULL DEFAULT '0',
  `change_points_needed` tinyint(1) NOT NULL DEFAULT '0',
  `change_points_received` tinyint(1) NOT NULL DEFAULT '0',
  `email_customer` tinyint(1) NOT NULL DEFAULT '0',
  `email_others` text COLLATE utf8mb4_unicode_ci,
  `email_text` text COLLATE utf8mb4_unicode_ci,
  `email_footer` text COLLATE utf8mb4_unicode_ci,
  `email_text_others` text COLLATE utf8mb4_unicode_ci,
  `email_downloadlink_description` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_subject_others` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_send` int NOT NULL DEFAULT '0',
  `email_send_format` int NOT NULL DEFAULT '0',
  `activate_gift` tinyint(1) NOT NULL DEFAULT '0',
  `email_gift` tinyint(1) NOT NULL DEFAULT '0',
  `email_subject_gift_sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_text_gift_sender` text COLLATE utf8mb4_unicode_ci,
  `email_subject_gift_recipient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_text_gift_recipient` text COLLATE utf8mb4_unicode_ci,
  `email_gift_format` tinyint(1) NOT NULL DEFAULT '0',
  `orders_view_display` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `download` tinyint(1) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_order_statuses`
--

LOCK TABLES `tc5xu_phocacart_order_statuses` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_order_statuses` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_order_statuses` VALUES (1,'COM_PHOCACART_STATUS_PENDING','','','P',NULL,'-',0,1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,0,0,0,'',NULL,'',NULL,0,'[1]',1,0,NULL,1,'2024-12-02 23:08:42',NULL,1,0,''),(2,'COM_PHOCACART_STATUS_CONFIRMED','','','C',NULL,'=',1,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,0,0,0,'',NULL,'',NULL,0,'[1,3]',1,0,NULL,2,'2024-12-02 23:08:42',NULL,1,0,''),(3,'COM_PHOCACART_STATUS_CANCELED','','','CL',NULL,'+',1,2,2,0,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,0,0,0,'',NULL,'',NULL,0,'[1]',1,0,NULL,3,'2024-12-02 23:08:42',NULL,1,0,''),(4,'COM_PHOCACART_STATUS_SHIPPED','','','S',NULL,'=',1,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,0,0,0,'',NULL,'',NULL,0,'[1,2,3]',1,0,NULL,4,'2024-12-02 23:08:42',NULL,1,0,''),(5,'COM_PHOCACART_STATUS_REFUNDED','','','RF',NULL,'=',1,2,2,0,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,0,0,0,'',NULL,'',NULL,0,'[1]',1,0,NULL,5,'2024-12-02 23:08:42',NULL,1,0,''),(6,'COM_PHOCACART_STATUS_COMPLETED','','','CE',NULL,'=',1,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,0,0,0,'',NULL,'',NULL,0,'[1,2,3]',1,0,NULL,6,'2024-12-02 23:08:42',NULL,1,1,''),(7,'COM_PHOCACART_STATUS_FAILED','','','E',NULL,'=',1,2,2,0,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,0,0,0,'',NULL,'',NULL,0,'[1]',0,0,NULL,7,'2024-12-02 23:08:42',NULL,1,0,''),(8,'COM_PHOCACART_STATUS_DENIED','','','D',NULL,'=',1,2,2,0,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,0,0,0,'',NULL,'',NULL,0,'[1]',0,0,NULL,8,'2024-12-02 23:08:42',NULL,1,0,''),(9,'COM_PHOCACART_STATUS_CANCELED_REVERSAL','','','CRV',NULL,'=',1,2,2,0,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,0,0,0,'',NULL,'',NULL,0,'[1]',0,0,NULL,9,'2024-12-02 23:08:42',NULL,1,0,''),(10,'COM_PHOCACART_STATUS_REVERSED','','','RV',NULL,'=',1,2,2,0,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,0,0,0,'',NULL,'',NULL,0,'[1]',0,0,NULL,10,'2024-12-02 23:08:42',NULL,1,0,'');
/*!40000 ALTER TABLE `tc5xu_phocacart_order_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_order_tax_recapitulation`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_order_tax_recapitulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_order_tax_recapitulation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `item_id_c` int NOT NULL DEFAULT '0',
  `item_id_r` int NOT NULL DEFAULT '0',
  `item_id_p` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title_lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title_lang_suffix` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title_lang_suffix2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount_netto` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `amount_tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `amount_brutto` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `amount_brutto_currency` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_order_tax_recapitulation`
--

LOCK TABLES `tc5xu_phocacart_order_tax_recapitulation` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_order_tax_recapitulation` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_order_tax_recapitulation` VALUES (1,1,0,0,0,0,'Rounding','COM_PHOCACART_ROUNDING','','','rounding',0.0000,0.0000,0.0000,0.0000,0,NULL,1,0),(2,1,0,0,0,0,'Rounding (Incl. Tax Recapitulation Rounding)','COM_PHOCACART_ROUNDING','COM_PHOCACART_INCL_TAX_RECAPITULATION_ROUNDING','','trcrounding',0.0000,0.0000,0.0000,0.0000,0,NULL,2,0),(3,1,0,0,0,0,'Total','COM_PHOCACART_TOTAL','','','brutto',0.0000,0.0000,0.0000,0.0000,0,NULL,3,0);
/*!40000 ALTER TABLE `tc5xu_phocacart_order_tax_recapitulation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_order_total`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_order_total` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `item_id_c` int NOT NULL DEFAULT '0',
  `item_id_r` int NOT NULL DEFAULT '0',
  `item_id_p` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title_lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title_lang_suffix` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title_lang_suffix2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `amount_currency` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_order_total`
--

LOCK TABLES `tc5xu_phocacart_order_total` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_order_total` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_order_total` VALUES (1,1,0,0,0,0,'Subtotal','COM_PHOCACART_SUBTOTAL','','','netto',1.2000,0.0000,'',0,NULL,1,1),(2,1,0,0,0,0,'Reward Discount','COM_PHOCACART_REWARD_DISCOUNT','','','dnetto',0.0000,0.0000,'',0,NULL,2,1),(3,1,0,0,0,0,'Reward Discount','COM_PHOCACART_REWARD_DISCOUNT','','','dbrutto',0.0000,0.0000,'',0,NULL,3,0),(4,1,0,0,0,0,'Product Discount','COM_PHOCACART_PRODUCT_DISCOUNT','','','dnetto',0.0000,0.0000,'',0,NULL,4,1),(5,1,0,0,0,0,'Product Discount','COM_PHOCACART_PRODUCT_DISCOUNT','','','dbrutto',0.0000,0.0000,'',0,NULL,5,0),(6,1,0,0,0,0,'Cart Discount','COM_PHOCACART_CART_DISCOUNT','','','dnetto',0.0000,0.0000,'',0,NULL,6,1),(7,1,0,0,0,0,'Cart Discount','COM_PHOCACART_CART_DISCOUNT','','','dbrutto',0.0000,0.0000,'',0,NULL,7,0),(8,1,0,0,0,0,'Coupon','COM_PHOCACART_COUPON','','','dnetto',0.0000,0.0000,'',0,NULL,8,1),(9,1,0,0,0,0,'Coupon','COM_PHOCACART_COUPON','','','dbrutto',0.0000,0.0000,'',0,NULL,9,0),(10,1,0,0,0,0,'Standard Shipping - Shipping Price','Standard Shipping','COM_PHOCACART_SHIPPING_PRICE','','snetto',0.0000,0.0000,'',0,NULL,10,1),(11,1,0,0,0,0,'Standard Shipping - Shipping Price','Standard Shipping','COM_PHOCACART_SHIPPING_PRICE','','sbrutto',0.0000,0.0000,'',0,NULL,11,1),(12,1,0,0,0,0,'Paypal - Payment Price','Paypal','COM_PHOCACART_PAYMENT_PRICE','','pnetto',0.0000,0.0000,'',0,NULL,12,1),(13,1,0,0,0,0,'Paypal - Payment Price','Paypal','COM_PHOCACART_PAYMENT_PRICE','','pbrutto',0.0000,0.0000,'',0,NULL,13,1),(14,1,0,0,0,0,'Rounding','COM_PHOCACART_ROUNDING','','','rounding',0.0000,0.0000,'',0,NULL,14,1),(15,1,0,0,0,0,'Total','COM_PHOCACART_TOTAL','','','brutto',1.2000,0.0000,'',0,NULL,15,1);
/*!40000 ALTER TABLE `tc5xu_phocacart_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_order_users`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_order_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_order_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `user_token` char(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_address_id` int NOT NULL DEFAULT '0',
  `user_groups` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `ba_sa` tinyint(1) NOT NULL DEFAULT '0',
  `name_first` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name_middle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name_last` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name_degree` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vat_1` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vat_2` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` int NOT NULL DEFAULT '0',
  `region` int NOT NULL DEFAULT '0',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_contact` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_1` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  FULLTEXT KEY `idx_fulltext` (`name_first`,`name_middle`,`name_last`,`name_degree`,`company`,`vat_1`,`vat_2`,`address_1`,`address_2`,`city`,`zip`,`email`,`email_contact`,`phone_1`,`phone_2`,`phone_mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_order_users`
--

LOCK TABLES `tc5xu_phocacart_order_users` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_order_users` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_order_users` VALUES (1,1,'c1bc99fd3a3600420a4c0645484a489797160b63d8b2d8a7501892b67ea99c89',1,'a:1:{i:0;i:1;}',0,1,'Chetra','','Yoem','','Other','','','Speu Kert, Speu, Chamkar Leu','','Kampong Cham','03025',36,573,'chetra.storeit@gmail.com','','','','','');
/*!40000 ALTER TABLE `tc5xu_phocacart_order_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_orders`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_token` char(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  `group_id` int NOT NULL DEFAULT '0',
  `invoice_id` int NOT NULL DEFAULT '0',
  `credit_id` int NOT NULL DEFAULT '0',
  `status_id` int NOT NULL DEFAULT '0',
  `shipping_id` int NOT NULL DEFAULT '0',
  `payment_id` int NOT NULL DEFAULT '0',
  `coupon_id` int NOT NULL DEFAULT '0',
  `discount_id` int NOT NULL DEFAULT '0',
  `currency_id` int NOT NULL DEFAULT '0',
  `amount_pay` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `amount_tendered` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `amount_change` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` tinyint NOT NULL DEFAULT '0',
  `vendor_id` int NOT NULL DEFAULT '0',
  `ticket_id` int NOT NULL DEFAULT '0',
  `unit_id` int NOT NULL DEFAULT '0',
  `section_id` int NOT NULL DEFAULT '0',
  `loyalty_card_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_calculation` int NOT NULL DEFAULT '0',
  `currency_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency_exchange_rate` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `unit_weight` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `unit_volume` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `unit_size` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8mb4_unicode_ci,
  `ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tracking_id` int NOT NULL DEFAULT '0',
  `tracking_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tracking_description_custom` text COLLATE utf8mb4_unicode_ci,
  `tracking_link_custom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tracking_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tracking_date_shipped` datetime NOT NULL,
  `reference_field1` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reference_field2` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reference_data` text COLLATE utf8mb4_unicode_ci,
  `order_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `receipt_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `invoice_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `credit_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `queue_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_number_id` int NOT NULL DEFAULT '0',
  `receipt_number_id` int NOT NULL DEFAULT '0',
  `invoice_number_id` int NOT NULL DEFAULT '0',
  `credit_number_id` int NOT NULL DEFAULT '0',
  `queue_number_id` int NOT NULL DEFAULT '0',
  `invoice_date` datetime NOT NULL,
  `invoice_due_date` datetime NOT NULL,
  `invoice_time_of_supply` datetime NOT NULL,
  `invoice_prn` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `required_delivery_time` datetime NOT NULL,
  `invoice_spec_top_desc` text COLLATE utf8mb4_unicode_ci,
  `invoice_spec_middle_desc` text COLLATE utf8mb4_unicode_ci,
  `invoice_spec_bottom_desc` text COLLATE utf8mb4_unicode_ci,
  `oidn_spec_billing_desc` text COLLATE utf8mb4_unicode_ci,
  `oidn_spec_shipping_desc` text COLLATE utf8mb4_unicode_ci,
  `terms` tinyint(1) NOT NULL DEFAULT '0',
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `params_shipping` text COLLATE utf8mb4_unicode_ci,
  `params_payment` text COLLATE utf8mb4_unicode_ci,
  `params_user` text COLLATE utf8mb4_unicode_ci,
  `user_lang` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_lang` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `internal_comment` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_orders`
--

LOCK TABLES `tc5xu_phocacart_orders` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_orders` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_orders` VALUES (1,'0196c886a2c90dc0bfd427f63ef32e92f16fe302806cf8c62808efd33d1a86be',783,0,0,0,1,1,2,0,0,1,0.0000,0.0000,0.0000,1,0,0,0,0,'',0,'EUR',1.00000000,'','','','','','','anonymous','',0,'',NULL,'','','0000-00-00 00:00:00','','',NULL,'20240000000001','20240000000001','20240000000001','','00001',1,1,1,0,1,'2024-12-03 01:23:15','2024-12-08 01:12:15','2024-12-03 01:23:15','20240000000001','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,NULL,0,'2024-12-03 01:23:16','2024-12-03 01:23:16',NULL,'{\"title\":\"Standard Shipping\",\"total_weight\":0,\"total_length\":0,\"total_width\":0,\"total_height\":0,\"total_volume\":0}','{\"method\":\"paypal_standard\",\"title\":\"Paypal\"}',NULL,'en-GB','en-GB','',NULL);
/*!40000 ALTER TABLE `tc5xu_phocacart_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_parameter_values`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_parameter_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_parameter_values` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parameter_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `display_format` tinyint(1) NOT NULL DEFAULT '0',
  `icon_class` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_ext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_cat` int unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `count_date` datetime NOT NULL,
  `count_products` int NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_parameter_values`
--

LOCK TABLES `tc5xu_phocacart_parameter_values` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_parameter_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_parameter_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_parameter_values_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_parameter_values_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_parameter_values_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_parameter_values_i18n`
--

LOCK TABLES `tc5xu_phocacart_parameter_values_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_parameter_values_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_parameter_values_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_parameter_values_related`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_parameter_values_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_parameter_values_related` (
  `item_id` int NOT NULL DEFAULT '0',
  `parameter_value_id` int NOT NULL DEFAULT '0',
  `parameter_id` int NOT NULL DEFAULT '0',
  UNIQUE KEY `i_parameter_id` (`item_id`,`parameter_value_id`,`parameter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_parameter_values_related`
--

LOCK TABLES `tc5xu_phocacart_parameter_values_related` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_parameter_values_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_parameter_values_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_parameters`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_parameters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `link_type` tinyint(1) NOT NULL DEFAULT '0',
  `limit_count` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_parameters`
--

LOCK TABLES `tc5xu_phocacart_parameters` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_parameters_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_parameters_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_parameters_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_parameters_i18n`
--

LOCK TABLES `tc5xu_phocacart_parameters_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_parameters_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_parameters_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_payment_method_countries`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_payment_method_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_payment_method_countries` (
  `payment_id` int NOT NULL DEFAULT '0',
  `country_id` int NOT NULL DEFAULT '0',
  KEY `idx_payment` (`payment_id`,`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_payment_method_countries`
--

LOCK TABLES `tc5xu_phocacart_payment_method_countries` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_payment_method_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_payment_method_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_payment_method_currencies`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_payment_method_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_payment_method_currencies` (
  `payment_id` int NOT NULL DEFAULT '0',
  `currency_id` int NOT NULL DEFAULT '0',
  KEY `idx_payment` (`payment_id`,`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_payment_method_currencies`
--

LOCK TABLES `tc5xu_phocacart_payment_method_currencies` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_payment_method_currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_payment_method_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_payment_method_regions`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_payment_method_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_payment_method_regions` (
  `payment_id` int NOT NULL DEFAULT '0',
  `region_id` int NOT NULL DEFAULT '0',
  KEY `idx_payment` (`payment_id`,`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_payment_method_regions`
--

LOCK TABLES `tc5xu_phocacart_payment_method_regions` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_payment_method_regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_payment_method_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_payment_method_shipping`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_payment_method_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_payment_method_shipping` (
  `payment_id` int NOT NULL DEFAULT '0',
  `shipping_id` int NOT NULL DEFAULT '0',
  KEY `idx_payment` (`payment_id`,`shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_payment_method_shipping`
--

LOCK TABLES `tc5xu_phocacart_payment_method_shipping` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_payment_method_shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_payment_method_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_payment_method_zones`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_payment_method_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_payment_method_zones` (
  `payment_id` int NOT NULL DEFAULT '0',
  `zone_id` int NOT NULL DEFAULT '0',
  KEY `idx_payment` (`payment_id`,`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_payment_method_zones`
--

LOCK TABLES `tc5xu_phocacart_payment_method_zones` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_payment_method_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_payment_method_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_payment_methods`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_payment_methods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tax_id` int NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `cost_additional` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `operator` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `calculation_type` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_info` text COLLATE utf8mb4_unicode_ci,
  `lowest_amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `highest_amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `active_amount` tinyint(1) NOT NULL DEFAULT '0',
  `active_country` tinyint(1) NOT NULL DEFAULT '0',
  `active_region` tinyint(1) NOT NULL DEFAULT '0',
  `active_zone` tinyint(1) NOT NULL DEFAULT '0',
  `active_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `active_currency` tinyint(1) NOT NULL DEFAULT '0',
  `method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `access` int unsigned NOT NULL DEFAULT '0',
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_payment_methods`
--

LOCK TABLES `tc5xu_phocacart_payment_methods` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_payment_methods` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_payment_methods` VALUES (1,0,0.0000,0.0000,'0',0,'Cash On Delivery','cash-on-delivery','','',0,'',NULL,0.0000,0.0000,0,0,0,0,0,0,'cash_on_delivery',1,0,1,0,'0000-00-00 00:00:00',1,0,'{}',''),(2,0,0.0000,0.0000,'0',0,'Paypal','paypal','','',0,'',NULL,0.0000,0.0000,0,0,0,0,0,0,'paypal_standard',1,0,1,0,'0000-00-00 00:00:00',2,0,'{}','');
/*!40000 ALTER TABLE `tc5xu_phocacart_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_payment_methods_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_payment_methods_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_payment_methods_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_payment_methods_i18n`
--

LOCK TABLES `tc5xu_phocacart_payment_methods_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_payment_methods_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_payment_methods_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_product_bundles`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_product_bundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_product_bundles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `main_product_id` int NOT NULL DEFAULT '0',
  `child_product_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `main_product_id` (`main_product_id`),
  KEY `child_product_id` (`child_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_product_bundles`
--

LOCK TABLES `tc5xu_phocacart_product_bundles` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_bundles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_bundles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_product_categories`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_product_categories` (
  `product_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_category` (`product_id`,`category_id`),
  KEY `ordering` (`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_product_categories`
--

LOCK TABLES `tc5xu_phocacart_product_categories` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_categories` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_product_categories` VALUES (0,0,1),(1,1,1),(7,2,1),(14,3,1),(20,4,1),(25,5,1),(31,6,1),(2,1,2),(9,2,2),(13,3,2),(19,4,2),(26,5,2),(32,6,2),(3,1,3),(8,2,3),(15,3,3),(21,4,3),(33,6,3),(4,1,4),(10,2,4),(16,3,4),(22,4,4),(28,5,4),(34,6,4),(5,1,5),(11,2,5),(17,3,5),(23,4,5),(29,5,5),(35,6,5),(6,1,6),(12,2,6),(18,3,6),(24,4,6),(30,5,6),(36,6,6),(27,5,7);
/*!40000 ALTER TABLE `tc5xu_phocacart_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_product_discounts`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_product_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_product_discounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total_amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `calculation_type` tinyint(1) NOT NULL DEFAULT '0',
  `valid_from` datetime NOT NULL,
  `valid_to` datetime NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `quantity_from` int NOT NULL DEFAULT '0',
  `quantity_to` int NOT NULL DEFAULT '0',
  `available_quantity` int NOT NULL DEFAULT '0',
  `available_quantity_user` int NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `access` int unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_product_discounts`
--

LOCK TABLES `tc5xu_phocacart_product_discounts` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_product_featured`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_product_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_product_featured` (
  `product_id` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_product_featured`
--

LOCK TABLES `tc5xu_phocacart_product_featured` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_featured` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_product_files`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_product_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `download_token` char(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_hits` int NOT NULL DEFAULT '0',
  `download_days` int NOT NULL DEFAULT '-1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_product_files`
--

LOCK TABLES `tc5xu_phocacart_product_files` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_product_images`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_product_images`
--

LOCK TABLES `tc5xu_phocacart_product_images` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_product_point_groups`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_product_point_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_product_point_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `group_id` int NOT NULL DEFAULT '0',
  `points_received` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_product_point_groups`
--

LOCK TABLES `tc5xu_phocacart_product_point_groups` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_point_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_point_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_product_price_groups`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_product_price_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_product_price_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `group_id` int NOT NULL DEFAULT '0',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `idx_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_product_price_groups`
--

LOCK TABLES `tc5xu_phocacart_product_price_groups` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_price_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_price_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_product_price_history`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_product_price_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_product_price_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `bulk_id` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `price_original` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `current_price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `current_price_original` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_product_price_history`
--

LOCK TABLES `tc5xu_phocacart_product_price_history` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_price_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_price_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_product_related`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_product_related` (
  `id` int NOT NULL AUTO_INCREMENT,
  `related_type` int NOT NULL,
  `product_a` int NOT NULL DEFAULT '0',
  `product_b` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product_a` (`product_a`),
  KEY `product_b` (`product_b`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_product_related`
--

LOCK TABLES `tc5xu_phocacart_product_related` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_product_stock`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_product_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_product_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `product_key` text COLLATE utf8mb4_unicode_ci,
  `attributes` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ean` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stock` int NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_small` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_medium` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `operator` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `active_price` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_product_stock`
--

LOCK TABLES `tc5xu_phocacart_product_stock` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_product_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_products`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catid` int NOT NULL DEFAULT '0',
  `tax_id` int NOT NULL DEFAULT '0',
  `manufacturer_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `vendor_id` int NOT NULL DEFAULT '0',
  `owner_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title_long` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint NOT NULL DEFAULT '0',
  `type_feed` text COLLATE utf8mb4_unicode_ci,
  `type_category_feed` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_long` text COLLATE utf8mb4_unicode_ci,
  `features` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `price_original` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `discount_percent` decimal(15,2) GENERATED ALWAYS AS (if((`price_original` <> 0),(((`price_original` - `price`) / `price_original`) * 100),0)) VIRTUAL,
  `length` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `width` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `height` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unit_size` int NOT NULL DEFAULT '0',
  `weight` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unit_weight` int NOT NULL DEFAULT '0',
  `volume` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unit_volume` int NOT NULL DEFAULT '0',
  `stock` int NOT NULL DEFAULT '0',
  `stock_calculation` int NOT NULL DEFAULT '0',
  `unit_amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `unit_unit` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_quantity` int NOT NULL DEFAULT '0',
  `min_multiple_quantity` int NOT NULL DEFAULT '0',
  `min_quantity_calculation` int NOT NULL DEFAULT '0',
  `stockstatus_a_id` int NOT NULL DEFAULT '0',
  `stockstatus_n_id` int NOT NULL DEFAULT '0',
  `availability` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `upc` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ean` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jan` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `isbn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mpn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registration_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `external_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `external_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `external_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `external_link2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `external_text2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `public_download_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `public_download_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `public_play_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `public_play_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_background_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `special_parameter` text COLLATE utf8mb4_unicode_ci,
  `special_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `allow_upload` tinyint(1) NOT NULL DEFAULT '0',
  `custom_text` text COLLATE utf8mb4_unicode_ci,
  `download_token` char(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_hits` int NOT NULL DEFAULT '0',
  `download_days` int NOT NULL DEFAULT '-1',
  `condition` tinyint NOT NULL DEFAULT '0',
  `delivery_date` datetime NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `date` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `hits` int NOT NULL DEFAULT '0',
  `sales` int NOT NULL DEFAULT '0',
  `points_received` int NOT NULL DEFAULT '0',
  `points_needed` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `params_feed` text COLLATE utf8mb4_unicode_ci,
  `gift_types` text COLLATE utf8mb4_unicode_ci,
  `internal_comment` text COLLATE utf8mb4_unicode_ci,
  `metatitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci,
  `metadata` text COLLATE utf8mb4_unicode_ci,
  `aidata` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `redirect_product_id` int DEFAULT NULL,
  `redirect_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_idx` (`published`,`access`),
  KEY `idx_price` (`price`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_alias` (`alias`),
  KEY `idx_manufacturer` (`manufacturer_id`),
  KEY `idx_tax` (`tax_id`),
  KEY `stockstatus_a_id` (`stockstatus_a_id`),
  KEY `stockstatus_n_id` (`stockstatus_n_id`),
  KEY `idx_language` (`language`),
  KEY `sales` (`sales`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_products`
--

LOCK TABLES `tc5xu_phocacart_products` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_products` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_products` (`id`, `catid`, `tax_id`, `manufacturer_id`, `user_id`, `vendor_id`, `owner_id`, `title`, `title_long`, `alias`, `type`, `type_feed`, `type_category_feed`, `description`, `description_long`, `features`, `price`, `price_original`, `length`, `width`, `height`, `unit_size`, `weight`, `unit_weight`, `volume`, `unit_volume`, `stock`, `stock_calculation`, `unit_amount`, `unit_unit`, `min_quantity`, `min_multiple_quantity`, `min_quantity_calculation`, `stockstatus_a_id`, `stockstatus_n_id`, `availability`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `serial_number`, `registration_key`, `external_id`, `external_key`, `external_link`, `external_text`, `external_link2`, `external_text2`, `image`, `video`, `public_download_file`, `public_download_text`, `public_play_file`, `public_play_text`, `featured`, `featured_background_image`, `special_parameter`, `special_image`, `allow_upload`, `custom_text`, `download_token`, `download_folder`, `download_file`, `download_hits`, `download_days`, `condition`, `delivery_date`, `published`, `active`, `checked_out`, `checked_out_time`, `ordering`, `access`, `created_by`, `created`, `modified_by`, `modified`, `date`, `date_update`, `hits`, `sales`, `points_received`, `points_needed`, `params`, `params_feed`, `gift_types`, `internal_comment`, `metatitle`, `metakey`, `metadesc`, `metadata`, `aidata`, `language`, `redirect_product_id`, `redirect_url`) VALUES (1,0,0,1,0,0,0,'Batela Apple & Pear','','batela-apple-pear',0,'','','','','',1.2000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,99,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','BabyFood/001-baby-food-apple-pear.webp','','','','','',0,'',NULL,'',0,NULL,'b125b090283c2b67ece08298341dd85b32518bcf3b6b12758bfb9678c2eccf6e','4af971de0b287a5c','4af971de0b287a5c/com_phocacart_v3.5.6.zip',0,-1,0,'2021-10-12 16:39:28',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-27 11:03:46',0,'2021-12-20 22:36:00','2021-09-27 00:00:00','0000-00-00 00:00:00',71,1,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(2,0,0,1,0,0,0,'Batella Strawberry & Blueberry','','batella-strawberry-blueberry',0,'','','','','',3.2000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','BabyFood/002-baby-food-strawberry-blueberry.webp','','','','','',0,'',NULL,'',0,NULL,'8ca20b2a8e2a231d3d5a76ff9c18ca38eeb440f46aad7b9f1f6c168c063ed797','9c96e47510ade303','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 18:09:08',0,'2021-11-16 12:28:41','2021-09-30 00:00:00','0000-00-00 00:00:00',6,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(3,0,0,1,0,0,0,'Batella Peach & Banana','','batella-peach-banana',0,'','','','','',2.3000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','BabyFood/003-baby-food-peach-banana.webp','','','','','',0,'',NULL,'',0,NULL,'518c1bb854f138eaa1383a559e6ab2eba2c098ee46b40fa4cee9fd48c9d43c45','0b4afe6b797cde29','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 18:28:46',0,'2021-11-16 12:48:55','2021-09-30 00:00:00','0000-00-00 00:00:00',2,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(4,0,0,1,0,0,0,'Batella Mango & Papaya','','batella-mango-papaya',0,'','','','','',2.2000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','BabyFood/004-baby-food-mango-papaya.webp','','','','','',0,'',NULL,'',0,NULL,'','','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 18:31:08',0,'2021-10-08 10:52:02','2021-09-30 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,NULL,NULL,NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(5,0,0,1,0,0,0,'Batella Banana & Pineapple','','batella-banana-pineapple',0,'','','','','',2.1000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,3,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','BabyFood/005-baby-foo-banana-pineapple.webp','','','','','',0,'',NULL,'',0,NULL,'d4dd736cfe37bacdba2e8328b9225ac47a592d2dfe92f565df8fd58be5337e65','984cad946783c9ec','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 18:32:56',0,'2021-11-30 00:55:11','2021-09-30 00:00:00','0000-00-00 00:00:00',3,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(6,0,0,1,0,0,0,'Batella Raspberry & Pear','','batella-raspberry-pear',0,'','','','','',3.1000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','BabyFood/006-baby-food-raspberry-pear.webp','','','','','',0,'',NULL,'',0,NULL,'713f0c79308a8d3536d62ebf516bce6050ea6128b22af73f42cd09f7de0a328b','910493799ee83df5','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 18:34:06',0,'2021-11-16 12:28:31','2021-09-30 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(7,0,0,2,0,0,0,'Frooth Lemon','','frooth-lemon',0,'','','','','',1.7000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','Candies/001-candies-lemon.webp','','','','','',0,'',NULL,'',0,NULL,'a28aaaed801f65b086d7f5c98a52c1a154666985ee137cd0d6c770a91208a791','5ac42aba22096129','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 18:35:18',0,'2021-12-20 13:30:22','2021-09-30 00:00:00','0000-00-00 00:00:00',97,52,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(8,0,0,2,0,0,0,'Frooth Orange','','frooth-orange',0,'','','','<ul>\r\n<li>Tasty herbal candies with orange and vitamin C</li>\r\n<li>Frooth Orange candies have a reduced calorific value of 30%</li>\r\n<li>Herbal candies do not contain synthetic colors or added flavors.</li>\r\n</ul>','',1.3000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','Candies/002-candies-orange.webp','','','','','',0,'',NULL,'',0,NULL,'5f2e4a41c1cc2c48cb525d7db9bb1fd5698018a8aeaf80d071d098117fc81e92','58803adc2191930a','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 19:45:01',0,'2021-12-13 23:59:48','2021-09-30 00:00:00','0000-00-00 00:00:00',17,1,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(9,0,0,2,0,0,0,'Frooth Cherry','','frooth-cherry',0,'','','','','',1.1500,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','Candies/003-candies-cherry.webp','','','','','',0,'',NULL,'',0,NULL,'7bbc0a72fe4a90ab355fb2f57be81494ebc3fbbf7044a24220dcc6cf6f5919f6','2c75318939160b5d','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 19:47:55',0,'2021-11-16 12:28:10','2021-09-30 00:00:00','0000-00-00 00:00:00',10,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(10,0,0,2,0,0,0,'Frooth Blackberry','','frooth-blackberry',0,'','','','','',1.3000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','Candies/004-candies-blackberry.webp','','','','','',0,'',NULL,'',0,NULL,'','','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 19:50:05',0,'2021-10-08 10:55:58','2021-09-30 00:00:00','0000-00-00 00:00:00',5,0,0,0,NULL,NULL,NULL,NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(11,0,0,2,0,0,0,'Frooth Melon','','frooth-melon',0,'','','','','',1.5000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','Candies/005-candies-melon.webp','','','','','',0,'',NULL,'',0,NULL,'','','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 19:51:03',0,'2021-10-08 11:14:53','2021-09-30 00:00:00','0000-00-00 00:00:00',6,0,0,0,NULL,NULL,NULL,NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(12,0,0,2,0,0,0,'Frooth Plum','','frooth-plum',0,'','','','','',1.2000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','Candies/006-candies-plum.webp','','','','','',0,'',NULL,'',0,NULL,'c072793e92f56b34c0a424378b039162506c81884fe17787061862c2201b599e','71669c237eb3b9eb','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 19:51:39',0,'2021-11-16 12:48:36','2021-09-30 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(13,0,0,3,0,0,0,'Weyna Melon','','weyna-melon',0,'','','','','',1.3000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','ChewingGum/001-chewing-gum-melon.webp','','','','','',0,'',NULL,'',0,NULL,'','','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 19:53:28',0,'2021-10-08 11:26:41','2021-09-30 00:00:00','0000-00-00 00:00:00',2,0,0,0,NULL,NULL,NULL,NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(14,0,0,3,0,0,0,'Weyna Orange','','weyna-orange',0,'','','','','',1.0000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','ChewingGum/002-chewing-gum-orange.webp','','','','','',0,'',NULL,'',0,NULL,'','','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 20:08:18',0,'0000-00-00 00:00:00','2021-09-30 20:08:18','0000-00-00 00:00:00',0,0,0,0,NULL,NULL,NULL,NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(15,0,0,3,0,0,0,'Weyna Lemon','','weyna-lemon',0,'','','','','',1.3000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','ChewingGum/003-chewing-gum-lemon.webp','','','','','',0,'',NULL,'',0,NULL,'0f41a5d7333d341f6a0ebed80a16b4279a3e09853f434b9e430aaf83ab2b1cec','dc120f0500ee2414','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 20:09:25',0,'2021-11-16 12:28:55','2021-09-30 00:00:00','0000-00-00 00:00:00',1,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(16,0,0,3,0,0,0,'Weyna Blackberry','','weyna-blackberry',0,'','','','','',1.3000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','ChewingGum/004-chewing-gum-blackberry.webp','','','','','',0,'',NULL,'',0,NULL,'8fa988cf20f5c996b49f027be6185c90523c7bc32695fddc53aed1cb75353ad9','94413431b56548af','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 20:10:31',0,'2021-11-16 12:48:22','2021-09-30 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(17,0,0,3,0,0,0,'Weyna Mint','','weyna-mint',0,'','','','','',1.2000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','ChewingGum/005-chewing-gum-mint.webp','','','','','',0,'',NULL,'',0,NULL,'','','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 20:11:13',0,'0000-00-00 00:00:00','2021-09-30 20:11:13','0000-00-00 00:00:00',2,0,0,0,NULL,NULL,NULL,NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(18,0,0,3,0,0,0,'Weyna Strawberry','','weyna-strawberry',0,'','','','','',1.3000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','ChewingGum/006-chewing-gum-strawberry.webp','','','','','',0,'',NULL,'',0,NULL,'90c52d850e204c73c15a0eb838d34dcea69f353d766b5ebe0f2a7932db8aa7e3','92db2f9cae8718a0','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-09-30 20:13:15',0,'2021-11-16 12:29:04','2021-09-30 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(19,0,0,4,0,0,0,'Coefi Coconut & Raspberry','','coconut-raspberry',0,'','','','','',1.1000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','ChocolateBar/001-chocolate-bar-coconut-raspberry.webp','','','','','',0,'',NULL,'',0,NULL,'','','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 21:57:29',0,'2021-10-01 21:58:58','2021-10-01 00:00:00','0000-00-00 00:00:00',1,0,0,0,NULL,NULL,NULL,NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(20,0,0,4,0,0,0,'Coefi Apple & Pear','','coefi-apple-pear',0,'','','','','',1.2000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','ChocolateBar/002-chocolate-bar-apple-pear.webp','','','','','',0,'',NULL,'',0,NULL,'687f112a2dbdf4d3e9beef1a323b2dc9cbd89d18c35f99a59c777b20b88b69a2','eca59141dfd150f7','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 21:59:45',0,'2021-11-16 12:29:14','2021-10-01 00:00:00','0000-00-00 00:00:00',3,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(21,0,0,4,0,0,0,'Coefi Nuts & Grapes','','coefi-nuts-grapes',0,'','','','','',1.4000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','ChocolateBar/003-chocolate-bar-nuts-grapes.webp','','','','','',0,'',NULL,'',0,NULL,'63fee99b3e8c53d8de1629bc004f1101a8dfd9f8b5fdd3442e6b9ce6045ddce1','24ebd2e7eed6d465','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:00:34',0,'2021-11-16 12:29:33','2021-10-01 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(22,0,0,4,0,0,0,'Coefi Mango & Papaya','','coefi-mango-papaya',0,'','','','','',1.1000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','ChocolateBar/004-chocolate-bar-mango-papaya.webp','','','','','',0,'',NULL,'',0,NULL,'702d4ef69237564353e969612add2326a334feb1ee5d1fabb3e1066934379144','387808a89d2b5625','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:01:43',0,'2021-11-16 12:29:23','2021-10-01 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(23,0,0,4,0,0,0,'Coeffi Blueberry & Strawberry','','coeffi-blueberry-strawberry',0,'','','','','',1.3000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','ChocolateBar/005-chocolate-bar-blueberry-strawberry.webp','','','','','',0,'',NULL,'',0,NULL,'84b4d44d6cc63e264bc5567c9c57e35c1ff2b0a547e7f466658d7bc8958d15c6','3bce8e3f5d851435','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:02:40',0,'2021-11-16 12:29:42','2021-10-01 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(24,0,0,4,0,0,0,'Coefi Banana & Peach','','coefi-banana-peach',0,'','','','','',1.2000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','ChocolateBar/006-chocolate-bar-banana-peach.webp','','','','','',0,'',NULL,'',0,NULL,'c755bebae1dfd58618d1df8486930bd5b44571631bc4df877830cd189bd448e9','68a1750657191d4d','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:03:23',0,'2021-11-16 12:48:04','2021-10-01 00:00:00','0000-00-00 00:00:00',2,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(25,0,0,5,0,0,0,'Juui Orange','','orange',0,'','','','','',2.1000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','FruitJuice/001-fruit-juice-orange.webp','','','','','',0,'',NULL,'',0,NULL,'6400d4515a6ec9e79725df37f6013769f9442a365c630c7802c6dd4f078d018a','04a81fa15720856b','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:04:44',0,'2021-11-28 11:37:58','2021-10-01 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(26,0,0,5,0,0,0,'Juui Kiwi','','juui-kiwi',0,'','','','','',2.2000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','FruitJuice/002-fruit-juice-kiwi.webp','','','','','',0,'',NULL,'',0,NULL,'3129a19db319512726674f59be8eb46befdf77a1417bd8d0aaf6d67648e5a084','a1427dc0f736b883','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:06:34',0,'2021-11-16 12:29:55','2021-10-01 00:00:00','0000-00-00 00:00:00',4,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(27,0,0,5,0,0,0,'Juui Apple','','juui-apple',0,'','','','','',2.1000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','FruitJuice/003-fruit-juice-apple.webp','','','','','',0,'',NULL,'',0,NULL,'6f1ab22141b1fbd083fa2a33b887bd51fa411c0f8b7ead5d5f31f4f79242a450','c0f6c8eb078a3fe7','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:07:18',0,'2021-11-16 12:30:13','2021-10-01 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(28,0,0,5,0,0,0,'Juui Strawberry','','juui-strawberry',0,'','','','','',2.3000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','FruitJuice/004-fruit-juice-strawberry.webp','','','','','',0,'',NULL,'',0,NULL,'a32aab3aba333a71faad67f25b4126e0429f965af634e4614b72e430f99d8faa','3462451ad666677b','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:07:53',0,'2021-11-16 12:30:05','2021-10-01 00:00:00','0000-00-00 00:00:00',2,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(29,0,0,5,0,0,0,'Juui Peach','','juui-peach',0,'','','','','',2.2000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','FruitJuice/005-fruit-juice-peach.webp','','','','','',0,'',NULL,'',0,NULL,'faa065f58f8c7a4275f53d3687127c2a6990e4a0a57c7bfacb2d91685dc38e7a','31416ab2584a8f89','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:08:21',0,'2021-11-16 12:47:50','2021-10-01 00:00:00','0000-00-00 00:00:00',3,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(30,0,0,5,0,0,0,'Juui Blackcurrant','','juui-blackcurrant',0,'','','','','',2.4000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','FruitJuice/006-fruit-juice-blackcurrant.webp','','','','','',0,'',NULL,'',0,NULL,'','','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:09:02',0,'2021-10-18 12:28:15','2021-10-01 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,NULL,NULL,NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(31,0,0,6,0,0,0,'Limo Orange','','limo-orange',0,'','','','','',1.9000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','Lemonade/001-lemonade-orange.webp','','','','','',0,'',NULL,'',0,NULL,'8e44cffab00ed629e4f49d0806ddae3f1bbc977d4a589f0afa1125f42621e0c0','916f540e54f8629f','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:11:22',0,'2021-11-16 12:30:37','2021-10-01 00:00:00','0000-00-00 00:00:00',3,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(32,0,0,6,0,0,0,'Limo Lemon','','limo-lemon',0,'','','','','',2.1000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','Lemonade/002-lemonade-lemon.webp','','','','','',0,'',NULL,'',0,NULL,'355ede075d82fac5403322e4ef5338b570e25f72a1baa4ebc3d1e396bb7407c2','505fd9efd52154fb','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:11:51',0,'2021-11-16 12:30:27','2021-10-01 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(33,0,0,6,0,0,0,'Limo Melon','','limo-melon',0,'','','','','',1.9500,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','Lemonade/003-lemonade-melon.webp','','','','','',0,'',NULL,'',0,NULL,'b8b7200fc26c5d44658a71e53d2a3b819083dc1a24a8323b3892c99aa2febde5','ea67a25a154d69d6','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:12:21',0,'2021-11-16 12:33:06','2021-10-01 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(34,0,0,6,0,0,0,'Limo Blackberry','','limo-blackberry',0,'','','','','',2.1000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','Lemonade/004-lemonade-blackberry.webp','','','','','',0,'',NULL,'',0,NULL,'','','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:12:50',0,'2021-10-08 12:18:30','2021-10-01 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,NULL,NULL,NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(35,0,0,6,0,0,0,'Limo Cherry','','limo-cherry',0,'','','','','',1.9000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','Lemonade/005-lemonade-cherry.webp','','','','','',0,'',NULL,'',0,NULL,'','','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:13:20',0,'2021-10-08 12:27:31','2021-10-01 00:00:00','0000-00-00 00:00:00',2,0,0,0,NULL,NULL,NULL,NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL),(36,0,0,6,0,0,0,'Limo Apple','','limo-apple',0,'','','','','',1.8000,0.0000,0.0000,0.0000,0.0000,0,0.0000,0,0.0000,0,100,0,0.0000,'',0,0,0,2,1,NULL,'','','','','','','','','','','','','','','Lemonade/006-lemonade-apple.webp','','','','','',0,'',NULL,'',0,NULL,'62ca1fd664c7c1f5fac935840ee3fa60135a2038b91b8124cebb2e8062d7b59a','0a114a84d74d8dc4','',0,-1,0,'0000-00-00 00:00:00',1,0,0,'0000-00-00 00:00:00',0,1,0,'2021-10-01 22:13:54',0,'2021-11-16 12:47:37','2021-10-01 00:00:00','0000-00-00 00:00:00',0,0,0,0,NULL,'','',NULL,'','','','{\"robots\":\"\"}',NULL,'*',NULL,NULL);
/*!40000 ALTER TABLE `tc5xu_phocacart_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_products_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_products_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_products_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_long` text COLLATE utf8mb4_unicode_ci,
  `features` text COLLATE utf8mb4_unicode_ci,
  `metatitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_products_i18n`
--

LOCK TABLES `tc5xu_phocacart_products_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_products_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_products_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_questions`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_questions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `question_id` int NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci,
  `date` datetime NOT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `published` (`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_questions`
--

LOCK TABLES `tc5xu_phocacart_questions` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_regions`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_regions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` int NOT NULL DEFAULT '0',
  `code2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code3` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3986 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_regions`
--

LOCK TABLES `tc5xu_phocacart_regions` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_regions` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_regions` VALUES (1,1,'Badakhshan','',0,'','BDS','',1,0,NULL,0,NULL,''),(2,1,'Badghis','',0,'','BDG','',1,0,NULL,0,NULL,''),(3,1,'Baghlan','',0,'','BGL','',1,0,NULL,0,NULL,''),(4,1,'Balkh','',0,'','BAL','',1,0,NULL,0,NULL,''),(5,1,'Bamian','',0,'','BAM','',1,0,NULL,0,NULL,''),(6,1,'Farah','',0,'','FRA','',1,0,NULL,0,NULL,''),(7,1,'Faryab','',0,'','FYB','',1,0,NULL,0,NULL,''),(8,1,'Ghazni','',0,'','GHA','',1,0,NULL,0,NULL,''),(9,1,'Ghowr','',0,'','GHO','',1,0,NULL,0,NULL,''),(10,1,'Helmand','',0,'','HEL','',1,0,NULL,0,NULL,''),(11,1,'Herat','',0,'','HER','',1,0,NULL,0,NULL,''),(12,1,'Jowzjan','',0,'','JOW','',1,0,NULL,0,NULL,''),(13,1,'Kabul','',0,'','KAB','',1,0,NULL,0,NULL,''),(14,1,'Kandahar','',0,'','KAN','',1,0,NULL,0,NULL,''),(15,1,'Kapisa','',0,'','KAP','',1,0,NULL,0,NULL,''),(16,1,'Khost','',0,'','KHO','',1,0,NULL,0,NULL,''),(17,1,'Konar','',0,'','KNR','',1,0,NULL,0,NULL,''),(18,1,'Kondoz','',0,'','KDZ','',1,0,NULL,0,NULL,''),(19,1,'Laghman','',0,'','LAG','',1,0,NULL,0,NULL,''),(20,1,'Lowgar','',0,'','LOW','',1,0,NULL,0,NULL,''),(21,1,'Nangrahar','',0,'','NAN','',1,0,NULL,0,NULL,''),(22,1,'Nimruz','',0,'','NIM','',1,0,NULL,0,NULL,''),(23,1,'Nurestan','',0,'','NUR','',1,0,NULL,0,NULL,''),(24,1,'Oruzgan','',0,'','ORU','',1,0,NULL,0,NULL,''),(25,1,'Paktia','',0,'','PIA','',1,0,NULL,0,NULL,''),(26,1,'Paktika','',0,'','PKA','',1,0,NULL,0,NULL,''),(27,1,'Parwan','',0,'','PAR','',1,0,NULL,0,NULL,''),(28,1,'Samangan','',0,'','SAM','',1,0,NULL,0,NULL,''),(29,1,'Sar-e Pol','',0,'','SAR','',1,0,NULL,0,NULL,''),(30,1,'Takhar','',0,'','TAK','',1,0,NULL,0,NULL,''),(31,1,'Wardak','',0,'','WAR','',1,0,NULL,0,NULL,''),(32,1,'Zabol','',0,'','ZAB','',1,0,NULL,0,NULL,''),(33,2,'Berat','',0,'','BR','',1,0,NULL,0,NULL,''),(34,2,'Bulqize','',0,'','BU','',1,0,NULL,0,NULL,''),(35,2,'Delvine','',0,'','DL','',1,0,NULL,0,NULL,''),(36,2,'Devoll','',0,'','DV','',1,0,NULL,0,NULL,''),(37,2,'Diber','',0,'','DI','',1,0,NULL,0,NULL,''),(38,2,'Durres','',0,'','DR','',1,0,NULL,0,NULL,''),(39,2,'Elbasan','',0,'','EL','',1,0,NULL,0,NULL,''),(40,2,'Kolonje','',0,'','ER','',1,0,NULL,0,NULL,''),(41,2,'Fier','',0,'','FR','',1,0,NULL,0,NULL,''),(42,2,'Gjirokaster','',0,'','GJ','',1,0,NULL,0,NULL,''),(43,2,'Gramsh','',0,'','GR','',1,0,NULL,0,NULL,''),(44,2,'Has','',0,'','HA','',1,0,NULL,0,NULL,''),(45,2,'Kavaje','',0,'','KA','',1,0,NULL,0,NULL,''),(46,2,'Kurbin','',0,'','KB','',1,0,NULL,0,NULL,''),(47,2,'Kucove','',0,'','KC','',1,0,NULL,0,NULL,''),(48,2,'Korce','',0,'','KO','',1,0,NULL,0,NULL,''),(49,2,'Kruje','',0,'','KR','',1,0,NULL,0,NULL,''),(50,2,'Kukes','',0,'','KU','',1,0,NULL,0,NULL,''),(51,2,'Librazhd','',0,'','LB','',1,0,NULL,0,NULL,''),(52,2,'Lezhe','',0,'','LE','',1,0,NULL,0,NULL,''),(53,2,'Lushnje','',0,'','LU','',1,0,NULL,0,NULL,''),(54,2,'Malesi e Madhe','',0,'','MM','',1,0,NULL,0,NULL,''),(55,2,'Mallakaster','',0,'','MK','',1,0,NULL,0,NULL,''),(56,2,'Mat','',0,'','MT','',1,0,NULL,0,NULL,''),(57,2,'Mirdite','',0,'','MR','',1,0,NULL,0,NULL,''),(58,2,'Peqin','',0,'','PQ','',1,0,NULL,0,NULL,''),(59,2,'Permet','',0,'','PR','',1,0,NULL,0,NULL,''),(60,2,'Pogradec','',0,'','PG','',1,0,NULL,0,NULL,''),(61,2,'Puke','',0,'','PU','',1,0,NULL,0,NULL,''),(62,2,'Shkoder','',0,'','SH','',1,0,NULL,0,NULL,''),(63,2,'Skrapar','',0,'','SK','',1,0,NULL,0,NULL,''),(64,2,'Sarande','',0,'','SR','',1,0,NULL,0,NULL,''),(65,2,'Tepelene','',0,'','TE','',1,0,NULL,0,NULL,''),(66,2,'Tropoje','',0,'','TP','',1,0,NULL,0,NULL,''),(67,2,'Tirane','',0,'','TR','',1,0,NULL,0,NULL,''),(68,2,'Vlore','',0,'','VL','',1,0,NULL,0,NULL,''),(69,3,'Adrar','',0,'','ADR','',1,0,NULL,0,NULL,''),(70,3,'Ain Defla','',0,'','ADE','',1,0,NULL,0,NULL,''),(71,3,'Ain Temouchent','',0,'','ATE','',1,0,NULL,0,NULL,''),(72,3,'Alger','',0,'','ALG','',1,0,NULL,0,NULL,''),(73,3,'Annaba','',0,'','ANN','',1,0,NULL,0,NULL,''),(74,3,'Batna','',0,'','BAT','',1,0,NULL,0,NULL,''),(75,3,'Bechar','',0,'','BEC','',1,0,NULL,0,NULL,''),(76,3,'Bejaia','',0,'','BEJ','',1,0,NULL,0,NULL,''),(77,3,'Biskra','',0,'','BIS','',1,0,NULL,0,NULL,''),(78,3,'Blida','',0,'','BLI','',1,0,NULL,0,NULL,''),(79,3,'Bordj Bou Arreridj','',0,'','BBA','',1,0,NULL,0,NULL,''),(80,3,'Bouira','',0,'','BOA','',1,0,NULL,0,NULL,''),(81,3,'Boumerdes','',0,'','BMD','',1,0,NULL,0,NULL,''),(82,3,'Chlef','',0,'','CHL','',1,0,NULL,0,NULL,''),(83,3,'Constantine','',0,'','CON','',1,0,NULL,0,NULL,''),(84,3,'Djelfa','',0,'','DJE','',1,0,NULL,0,NULL,''),(85,3,'El Bayadh','',0,'','EBA','',1,0,NULL,0,NULL,''),(86,3,'El Oued','',0,'','EOU','',1,0,NULL,0,NULL,''),(87,3,'El Tarf','',0,'','ETA','',1,0,NULL,0,NULL,''),(88,3,'Ghardaia','',0,'','GHA','',1,0,NULL,0,NULL,''),(89,3,'Guelma','',0,'','GUE','',1,0,NULL,0,NULL,''),(90,3,'Illizi','',0,'','ILL','',1,0,NULL,0,NULL,''),(91,3,'Jijel','',0,'','JIJ','',1,0,NULL,0,NULL,''),(92,3,'Khenchela','',0,'','KHE','',1,0,NULL,0,NULL,''),(93,3,'Laghouat','',0,'','LAG','',1,0,NULL,0,NULL,''),(94,3,'Muaskar','',0,'','MUA','',1,0,NULL,0,NULL,''),(95,3,'Medea','',0,'','MED','',1,0,NULL,0,NULL,''),(96,3,'Mila','',0,'','MIL','',1,0,NULL,0,NULL,''),(97,3,'Mostaganem','',0,'','MOS','',1,0,NULL,0,NULL,''),(98,3,'M\'Sila','',0,'','MSI','',1,0,NULL,0,NULL,''),(99,3,'Naama','',0,'','NAA','',1,0,NULL,0,NULL,''),(100,3,'Oran','',0,'','ORA','',1,0,NULL,0,NULL,''),(101,3,'Ouargla','',0,'','OUA','',1,0,NULL,0,NULL,''),(102,3,'Oum el-Bouaghi','',0,'','OEB','',1,0,NULL,0,NULL,''),(103,3,'Relizane','',0,'','REL','',1,0,NULL,0,NULL,''),(104,3,'Saida','',0,'','SAI','',1,0,NULL,0,NULL,''),(105,3,'Setif','',0,'','SET','',1,0,NULL,0,NULL,''),(106,3,'Sidi Bel Abbes','',0,'','SBA','',1,0,NULL,0,NULL,''),(107,3,'Skikda','',0,'','SKI','',1,0,NULL,0,NULL,''),(108,3,'Souk Ahras','',0,'','SAH','',1,0,NULL,0,NULL,''),(109,3,'Tamanghasset','',0,'','TAM','',1,0,NULL,0,NULL,''),(110,3,'Tebessa','',0,'','TEB','',1,0,NULL,0,NULL,''),(111,3,'Tiaret','',0,'','TIA','',1,0,NULL,0,NULL,''),(112,3,'Tindouf','',0,'','TIN','',1,0,NULL,0,NULL,''),(113,3,'Tipaza','',0,'','TIP','',1,0,NULL,0,NULL,''),(114,3,'Tissemsilt','',0,'','TIS','',1,0,NULL,0,NULL,''),(115,3,'Tizi Ouzou','',0,'','TOU','',1,0,NULL,0,NULL,''),(116,3,'Tlemcen','',0,'','TLE','',1,0,NULL,0,NULL,''),(117,4,'Eastern','',0,'','E','',1,0,NULL,0,NULL,''),(118,4,'Manu\'a','',0,'','M','',1,0,NULL,0,NULL,''),(119,4,'Rose Island','',0,'','R','',1,0,NULL,0,NULL,''),(120,4,'Swains Island','',0,'','S','',1,0,NULL,0,NULL,''),(121,4,'Western','',0,'','W','',1,0,NULL,0,NULL,''),(122,5,'Andorra la Vella','',0,'','ALV','',1,0,NULL,0,NULL,''),(123,5,'Canillo','',0,'','CAN','',1,0,NULL,0,NULL,''),(124,5,'Encamp','',0,'','ENC','',1,0,NULL,0,NULL,''),(125,5,'Escaldes-Engordany','',0,'','ESE','',1,0,NULL,0,NULL,''),(126,5,'La Massana','',0,'','LMA','',1,0,NULL,0,NULL,''),(127,5,'Ordino','',0,'','ORD','',1,0,NULL,0,NULL,''),(128,5,'Sant Julia de Loria','',0,'','SJL','',1,0,NULL,0,NULL,''),(129,6,'Bengo','',0,'','BGO','',1,0,NULL,0,NULL,''),(130,6,'Benguela','',0,'','BGU','',1,0,NULL,0,NULL,''),(131,6,'Bie','',0,'','BIE','',1,0,NULL,0,NULL,''),(132,6,'Cabinda','',0,'','CAB','',1,0,NULL,0,NULL,''),(133,6,'Cuando-Cubango','',0,'','CCU','',1,0,NULL,0,NULL,''),(134,6,'Cuanza Norte','',0,'','CNO','',1,0,NULL,0,NULL,''),(135,6,'Cuanza Sul','',0,'','CUS','',1,0,NULL,0,NULL,''),(136,6,'Cunene','',0,'','CNN','',1,0,NULL,0,NULL,''),(137,6,'Huambo','',0,'','HUA','',1,0,NULL,0,NULL,''),(138,6,'Huila','',0,'','HUI','',1,0,NULL,0,NULL,''),(139,6,'Luanda','',0,'','LUA','',1,0,NULL,0,NULL,''),(140,6,'Lunda Norte','',0,'','LNO','',1,0,NULL,0,NULL,''),(141,6,'Lunda Sul','',0,'','LSU','',1,0,NULL,0,NULL,''),(142,6,'Malange','',0,'','MAL','',1,0,NULL,0,NULL,''),(143,6,'Moxico','',0,'','MOX','',1,0,NULL,0,NULL,''),(144,6,'Namibe','',0,'','NAM','',1,0,NULL,0,NULL,''),(145,6,'Uige','',0,'','UIG','',1,0,NULL,0,NULL,''),(146,6,'Zaire','',0,'','ZAI','',1,0,NULL,0,NULL,''),(147,9,'Saint George','',0,'','ASG','',1,0,NULL,0,NULL,''),(148,9,'Saint John','',0,'','ASJ','',1,0,NULL,0,NULL,''),(149,9,'Saint Mary','',0,'','ASM','',1,0,NULL,0,NULL,''),(150,9,'Saint Paul','',0,'','ASL','',1,0,NULL,0,NULL,''),(151,9,'Saint Peter','',0,'','ASR','',1,0,NULL,0,NULL,''),(152,9,'Saint Philip','',0,'','ASH','',1,0,NULL,0,NULL,''),(153,9,'Barbuda','',0,'','BAR','',1,0,NULL,0,NULL,''),(154,9,'Redonda','',0,'','RED','',1,0,NULL,0,NULL,''),(155,10,'Antartida e Islas del Atlantico','',0,'','AN','',1,0,NULL,0,NULL,''),(156,10,'Buenos Aires','',0,'','BA','',1,0,NULL,0,NULL,''),(157,10,'Catamarca','',0,'','CA','',1,0,NULL,0,NULL,''),(158,10,'Chaco','',0,'','CH','',1,0,NULL,0,NULL,''),(159,10,'Chubut','',0,'','CU','',1,0,NULL,0,NULL,''),(160,10,'Cordoba','',0,'','CO','',1,0,NULL,0,NULL,''),(161,10,'Corrientes','',0,'','CR','',1,0,NULL,0,NULL,''),(162,10,'Distrito Federal','',0,'','DF','',1,0,NULL,0,NULL,''),(163,10,'Entre Rios','',0,'','ER','',1,0,NULL,0,NULL,''),(164,10,'Formosa','',0,'','FO','',1,0,NULL,0,NULL,''),(165,10,'Jujuy','',0,'','JU','',1,0,NULL,0,NULL,''),(166,10,'La Pampa','',0,'','LP','',1,0,NULL,0,NULL,''),(167,10,'La Rioja','',0,'','LR','',1,0,NULL,0,NULL,''),(168,10,'Mendoza','',0,'','ME','',1,0,NULL,0,NULL,''),(169,10,'Misiones','',0,'','MI','',1,0,NULL,0,NULL,''),(170,10,'Neuquen','',0,'','NE','',1,0,NULL,0,NULL,''),(171,10,'Rio Negro','',0,'','RN','',1,0,NULL,0,NULL,''),(172,10,'Salta','',0,'','SA','',1,0,NULL,0,NULL,''),(173,10,'San Juan','',0,'','SJ','',1,0,NULL,0,NULL,''),(174,10,'San Luis','',0,'','SL','',1,0,NULL,0,NULL,''),(175,10,'Santa Cruz','',0,'','SC','',1,0,NULL,0,NULL,''),(176,10,'Santa Fe','',0,'','SF','',1,0,NULL,0,NULL,''),(177,10,'Santiago del Estero','',0,'','SD','',1,0,NULL,0,NULL,''),(178,10,'Tierra del Fuego','',0,'','TF','',1,0,NULL,0,NULL,''),(179,10,'Tucuman','',0,'','TU','',1,0,NULL,0,NULL,''),(180,11,'Aragatsotn','',0,'','AGT','',1,0,NULL,0,NULL,''),(181,11,'Ararat','',0,'','ARR','',1,0,NULL,0,NULL,''),(182,11,'Armavir','',0,'','ARM','',1,0,NULL,0,NULL,''),(183,11,'Geghark\'unik\'','',0,'','GEG','',1,0,NULL,0,NULL,''),(184,11,'Kotayk\'','',0,'','KOT','',1,0,NULL,0,NULL,''),(185,11,'Lorri','',0,'','LOR','',1,0,NULL,0,NULL,''),(186,11,'Shirak','',0,'','SHI','',1,0,NULL,0,NULL,''),(187,11,'Syunik\'','',0,'','SYU','',1,0,NULL,0,NULL,''),(188,11,'Tavush','',0,'','TAV','',1,0,NULL,0,NULL,''),(189,11,'Vayots\' Dzor','',0,'','VAY','',1,0,NULL,0,NULL,''),(190,11,'Yerevan','',0,'','YER','',1,0,NULL,0,NULL,''),(191,13,'Australian Capital Territory','',0,'','ACT','',1,0,NULL,0,NULL,''),(192,13,'New South Wales','',0,'','NSW','',1,0,NULL,0,NULL,''),(193,13,'Northern Territory','',0,'','NT','',1,0,NULL,0,NULL,''),(194,13,'Queensland','',0,'','QLD','',1,0,NULL,0,NULL,''),(195,13,'South Australia','',0,'','SA','',1,0,NULL,0,NULL,''),(196,13,'Tasmania','',0,'','TAS','',1,0,NULL,0,NULL,''),(197,13,'Victoria','',0,'','VIC','',1,0,NULL,0,NULL,''),(198,13,'Western Australia','',0,'','WA','',1,0,NULL,0,NULL,''),(199,14,'Burgenland','',0,'','BUR','',1,0,NULL,0,NULL,''),(200,14,'Kärnten','',0,'','KAR','',1,0,NULL,0,NULL,''),(201,14,'Nieder&ouml;sterreich','',0,'','NOS','',1,0,NULL,0,NULL,''),(202,14,'Ober&ouml;sterreich','',0,'','OOS','',1,0,NULL,0,NULL,''),(203,14,'Salzburg','',0,'','SAL','',1,0,NULL,0,NULL,''),(204,14,'Steiermark','',0,'','STE','',1,0,NULL,0,NULL,''),(205,14,'Tirol','',0,'','TIR','',1,0,NULL,0,NULL,''),(206,14,'Vorarlberg','',0,'','VOR','',1,0,NULL,0,NULL,''),(207,14,'Wien','',0,'','WIE','',1,0,NULL,0,NULL,''),(208,15,'Ali Bayramli','',0,'','AB','',1,0,NULL,0,NULL,''),(209,15,'Abseron','',0,'','ABS','',1,0,NULL,0,NULL,''),(210,15,'AgcabAdi','',0,'','AGC','',1,0,NULL,0,NULL,''),(211,15,'Agdam','',0,'','AGM','',1,0,NULL,0,NULL,''),(212,15,'Agdas','',0,'','AGS','',1,0,NULL,0,NULL,''),(213,15,'Agstafa','',0,'','AGA','',1,0,NULL,0,NULL,''),(214,15,'Agsu','',0,'','AGU','',1,0,NULL,0,NULL,''),(215,15,'Astara','',0,'','AST','',1,0,NULL,0,NULL,''),(216,15,'Baki','',0,'','BA','',1,0,NULL,0,NULL,''),(217,15,'BabAk','',0,'','BAB','',1,0,NULL,0,NULL,''),(218,15,'BalakAn','',0,'','BAL','',1,0,NULL,0,NULL,''),(219,15,'BArdA','',0,'','BAR','',1,0,NULL,0,NULL,''),(220,15,'Beylaqan','',0,'','BEY','',1,0,NULL,0,NULL,''),(221,15,'Bilasuvar','',0,'','BIL','',1,0,NULL,0,NULL,''),(222,15,'Cabrayil','',0,'','CAB','',1,0,NULL,0,NULL,''),(223,15,'Calilabab','',0,'','CAL','',1,0,NULL,0,NULL,''),(224,15,'Culfa','',0,'','CUL','',1,0,NULL,0,NULL,''),(225,15,'Daskasan','',0,'','DAS','',1,0,NULL,0,NULL,''),(226,15,'Davaci','',0,'','DAV','',1,0,NULL,0,NULL,''),(227,15,'Fuzuli','',0,'','FUZ','',1,0,NULL,0,NULL,''),(228,15,'Ganca','',0,'','GA','',1,0,NULL,0,NULL,''),(229,15,'Gadabay','',0,'','GAD','',1,0,NULL,0,NULL,''),(230,15,'Goranboy','',0,'','GOR','',1,0,NULL,0,NULL,''),(231,15,'Goycay','',0,'','GOY','',1,0,NULL,0,NULL,''),(232,15,'Haciqabul','',0,'','HAC','',1,0,NULL,0,NULL,''),(233,15,'Imisli','',0,'','IMI','',1,0,NULL,0,NULL,''),(234,15,'Ismayilli','',0,'','ISM','',1,0,NULL,0,NULL,''),(235,15,'Kalbacar','',0,'','KAL','',1,0,NULL,0,NULL,''),(236,15,'Kurdamir','',0,'','KUR','',1,0,NULL,0,NULL,''),(237,15,'Lankaran','',0,'','LA','',1,0,NULL,0,NULL,''),(238,15,'Lacin','',0,'','LAC','',1,0,NULL,0,NULL,''),(239,15,'Lankaran','',0,'','LAN','',1,0,NULL,0,NULL,''),(240,15,'Lerik','',0,'','LER','',1,0,NULL,0,NULL,''),(241,15,'Masalli','',0,'','MAS','',1,0,NULL,0,NULL,''),(242,15,'Mingacevir','',0,'','MI','',1,0,NULL,0,NULL,''),(243,15,'Naftalan','',0,'','NA','',1,0,NULL,0,NULL,''),(244,15,'Neftcala','',0,'','NEF','',1,0,NULL,0,NULL,''),(245,15,'Oguz','',0,'','OGU','',1,0,NULL,0,NULL,''),(246,15,'Ordubad','',0,'','ORD','',1,0,NULL,0,NULL,''),(247,15,'Qabala','',0,'','QAB','',1,0,NULL,0,NULL,''),(248,15,'Qax','',0,'','QAX','',1,0,NULL,0,NULL,''),(249,15,'Qazax','',0,'','QAZ','',1,0,NULL,0,NULL,''),(250,15,'Qobustan','',0,'','QOB','',1,0,NULL,0,NULL,''),(251,15,'Quba','',0,'','QBA','',1,0,NULL,0,NULL,''),(252,15,'Qubadli','',0,'','QBI','',1,0,NULL,0,NULL,''),(253,15,'Qusar','',0,'','QUS','',1,0,NULL,0,NULL,''),(254,15,'Saki','',0,'','SA','',1,0,NULL,0,NULL,''),(255,15,'Saatli','',0,'','SAT','',1,0,NULL,0,NULL,''),(256,15,'Sabirabad','',0,'','SAB','',1,0,NULL,0,NULL,''),(257,15,'Sadarak','',0,'','SAD','',1,0,NULL,0,NULL,''),(258,15,'Sahbuz','',0,'','SAH','',1,0,NULL,0,NULL,''),(259,15,'Saki','',0,'','SAK','',1,0,NULL,0,NULL,''),(260,15,'Salyan','',0,'','SAL','',1,0,NULL,0,NULL,''),(261,15,'Sumqayit','',0,'','SM','',1,0,NULL,0,NULL,''),(262,15,'Samaxi','',0,'','SMI','',1,0,NULL,0,NULL,''),(263,15,'Samkir','',0,'','SKR','',1,0,NULL,0,NULL,''),(264,15,'Samux','',0,'','SMX','',1,0,NULL,0,NULL,''),(265,15,'Sarur','',0,'','SAR','',1,0,NULL,0,NULL,''),(266,15,'Siyazan','',0,'','SIY','',1,0,NULL,0,NULL,''),(267,15,'Susa','',0,'','SS','',1,0,NULL,0,NULL,''),(268,15,'Susa','',0,'','SUS','',1,0,NULL,0,NULL,''),(269,15,'Tartar','',0,'','TAR','',1,0,NULL,0,NULL,''),(270,15,'Tovuz','',0,'','TOV','',1,0,NULL,0,NULL,''),(271,15,'Ucar','',0,'','UCA','',1,0,NULL,0,NULL,''),(272,15,'Xankandi','',0,'','XA','',1,0,NULL,0,NULL,''),(273,15,'Xacmaz','',0,'','XAC','',1,0,NULL,0,NULL,''),(274,15,'Xanlar','',0,'','XAN','',1,0,NULL,0,NULL,''),(275,15,'Xizi','',0,'','XIZ','',1,0,NULL,0,NULL,''),(276,15,'Xocali','',0,'','XCI','',1,0,NULL,0,NULL,''),(277,15,'Xocavand','',0,'','XVD','',1,0,NULL,0,NULL,''),(278,15,'Yardimli','',0,'','YAR','',1,0,NULL,0,NULL,''),(279,15,'Yevlax','',0,'','YEV','',1,0,NULL,0,NULL,''),(280,15,'Zangilan','',0,'','ZAN','',1,0,NULL,0,NULL,''),(281,15,'Zaqatala','',0,'','ZAQ','',1,0,NULL,0,NULL,''),(282,15,'Zardab','',0,'','ZAR','',1,0,NULL,0,NULL,''),(283,15,'Naxcivan','',0,'','NX','',1,0,NULL,0,NULL,''),(284,16,'Acklins','',0,'','ACK','',1,0,NULL,0,NULL,''),(285,16,'Berry Islands','',0,'','BER','',1,0,NULL,0,NULL,''),(286,16,'Bimini','',0,'','BIM','',1,0,NULL,0,NULL,''),(287,16,'Black Point','',0,'','BLK','',1,0,NULL,0,NULL,''),(288,16,'Cat Island','',0,'','CAT','',1,0,NULL,0,NULL,''),(289,16,'Central Abaco','',0,'','CAB','',1,0,NULL,0,NULL,''),(290,16,'Central Andros','',0,'','CAN','',1,0,NULL,0,NULL,''),(291,16,'Central Eleuthera','',0,'','CEL','',1,0,NULL,0,NULL,''),(292,16,'City of Freeport','',0,'','FRE','',1,0,NULL,0,NULL,''),(293,16,'Crooked Island','',0,'','CRO','',1,0,NULL,0,NULL,''),(294,16,'East Grand Bahama','',0,'','EGB','',1,0,NULL,0,NULL,''),(295,16,'Exuma','',0,'','EXU','',1,0,NULL,0,NULL,''),(296,16,'Grand Cay','',0,'','GRD','',1,0,NULL,0,NULL,''),(297,16,'Harbour Island','',0,'','HAR','',1,0,NULL,0,NULL,''),(298,16,'Hope Town','',0,'','HOP','',1,0,NULL,0,NULL,''),(299,16,'Inagua','',0,'','INA','',1,0,NULL,0,NULL,''),(300,16,'Long Island','',0,'','LNG','',1,0,NULL,0,NULL,''),(301,16,'Mangrove Cay','',0,'','MAN','',1,0,NULL,0,NULL,''),(302,16,'Mayaguana','',0,'','MAY','',1,0,NULL,0,NULL,''),(303,16,'Moore\'s Island','',0,'','MOO','',1,0,NULL,0,NULL,''),(304,16,'North Abaco','',0,'','NAB','',1,0,NULL,0,NULL,''),(305,16,'North Andros','',0,'','NAN','',1,0,NULL,0,NULL,''),(306,16,'North Eleuthera','',0,'','NEL','',1,0,NULL,0,NULL,''),(307,16,'Ragged Island','',0,'','RAG','',1,0,NULL,0,NULL,''),(308,16,'Rum Cay','',0,'','RUM','',1,0,NULL,0,NULL,''),(309,16,'San Salvador','',0,'','SAL','',1,0,NULL,0,NULL,''),(310,16,'South Abaco','',0,'','SAB','',1,0,NULL,0,NULL,''),(311,16,'South Andros','',0,'','SAN','',1,0,NULL,0,NULL,''),(312,16,'South Eleuthera','',0,'','SEL','',1,0,NULL,0,NULL,''),(313,16,'Spanish Wells','',0,'','SWE','',1,0,NULL,0,NULL,''),(314,16,'West Grand Bahama','',0,'','WGB','',1,0,NULL,0,NULL,''),(315,17,'Capital','',0,'','CAP','',1,0,NULL,0,NULL,''),(316,17,'Central','',0,'','CEN','',1,0,NULL,0,NULL,''),(317,17,'Muharraq','',0,'','MUH','',1,0,NULL,0,NULL,''),(318,17,'Northern','',0,'','NOR','',1,0,NULL,0,NULL,''),(319,17,'Southern','',0,'','SOU','',1,0,NULL,0,NULL,''),(320,18,'Barisal','',0,'','BAR','',1,0,NULL,0,NULL,''),(321,18,'Chittagong','',0,'','CHI','',1,0,NULL,0,NULL,''),(322,18,'Dhaka','',0,'','DHA','',1,0,NULL,0,NULL,''),(323,18,'Khulna','',0,'','KHU','',1,0,NULL,0,NULL,''),(324,18,'Rajshahi','',0,'','RAJ','',1,0,NULL,0,NULL,''),(325,18,'Sylhet','',0,'','SYL','',1,0,NULL,0,NULL,''),(326,19,'Christ Church','',0,'','CC','',1,0,NULL,0,NULL,''),(327,19,'Saint Andrew','',0,'','AND','',1,0,NULL,0,NULL,''),(328,19,'Saint George','',0,'','GEO','',1,0,NULL,0,NULL,''),(329,19,'Saint James','',0,'','JAM','',1,0,NULL,0,NULL,''),(330,19,'Saint John','',0,'','JOH','',1,0,NULL,0,NULL,''),(331,19,'Saint Joseph','',0,'','JOS','',1,0,NULL,0,NULL,''),(332,19,'Saint Lucy','',0,'','LUC','',1,0,NULL,0,NULL,''),(333,19,'Saint Michael','',0,'','MIC','',1,0,NULL,0,NULL,''),(334,19,'Saint Peter','',0,'','PET','',1,0,NULL,0,NULL,''),(335,19,'Saint Philip','',0,'','PHI','',1,0,NULL,0,NULL,''),(336,19,'Saint Thomas','',0,'','THO','',1,0,NULL,0,NULL,''),(337,20,'Brestskaya (Brest)','',0,'','BR','',1,0,NULL,0,NULL,''),(338,20,'Homyel\'skaya (Homyel\')','',0,'','HO','',1,0,NULL,0,NULL,''),(339,20,'Horad Minsk','',0,'','HM','',1,0,NULL,0,NULL,''),(340,20,'Hrodzyenskaya (Hrodna)','',0,'','HR','',1,0,NULL,0,NULL,''),(341,20,'Mahilyowskaya (Mahilyow)','',0,'','MA','',1,0,NULL,0,NULL,''),(342,20,'Minskaya','',0,'','MI','',1,0,NULL,0,NULL,''),(343,20,'Vitsyebskaya (Vitsyebsk)','',0,'','VI','',1,0,NULL,0,NULL,''),(344,21,'Antwerpen','',0,'','VAN','',1,0,NULL,0,NULL,''),(345,21,'Brabant Wallon','',0,'','WBR','',1,0,NULL,0,NULL,''),(346,21,'Hainaut','',0,'','WHT','',1,0,NULL,0,NULL,''),(347,21,'Liège','',0,'','WLG','',1,0,NULL,0,NULL,''),(348,21,'Limburg','',0,'','VLI','',1,0,NULL,0,NULL,''),(349,21,'Luxembourg','',0,'','WLX','',1,0,NULL,0,NULL,''),(350,21,'Namur','',0,'','WNA','',1,0,NULL,0,NULL,''),(351,21,'Oost-Vlaanderen','',0,'','VOV','',1,0,NULL,0,NULL,''),(352,21,'Vlaams Brabant','',0,'','VBR','',1,0,NULL,0,NULL,''),(353,21,'West-Vlaanderen','',0,'','VWV','',1,0,NULL,0,NULL,''),(354,22,'Belize','',0,'','BZ','',1,0,NULL,0,NULL,''),(355,22,'Cayo','',0,'','CY','',1,0,NULL,0,NULL,''),(356,22,'Corozal','',0,'','CR','',1,0,NULL,0,NULL,''),(357,22,'Orange Walk','',0,'','OW','',1,0,NULL,0,NULL,''),(358,22,'Stann Creek','',0,'','SC','',1,0,NULL,0,NULL,''),(359,22,'Toledo','',0,'','TO','',1,0,NULL,0,NULL,''),(360,23,'Alibori','',0,'','AL','',1,0,NULL,0,NULL,''),(361,23,'Atakora','',0,'','AK','',1,0,NULL,0,NULL,''),(362,23,'Atlantique','',0,'','AQ','',1,0,NULL,0,NULL,''),(363,23,'Borgou','',0,'','BO','',1,0,NULL,0,NULL,''),(364,23,'Collines','',0,'','CO','',1,0,NULL,0,NULL,''),(365,23,'Donga','',0,'','DO','',1,0,NULL,0,NULL,''),(366,23,'Kouffo','',0,'','KO','',1,0,NULL,0,NULL,''),(367,23,'Littoral','',0,'','LI','',1,0,NULL,0,NULL,''),(368,23,'Mono','',0,'','MO','',1,0,NULL,0,NULL,''),(369,23,'Oueme','',0,'','OU','',1,0,NULL,0,NULL,''),(370,23,'Plateau','',0,'','PL','',1,0,NULL,0,NULL,''),(371,23,'Zou','',0,'','ZO','',1,0,NULL,0,NULL,''),(372,24,'Devonshire','',0,'','DS','',1,0,NULL,0,NULL,''),(373,24,'Hamilton City','',0,'','HC','',1,0,NULL,0,NULL,''),(374,24,'Hamilton','',0,'','HA','',1,0,NULL,0,NULL,''),(375,24,'Paget','',0,'','PG','',1,0,NULL,0,NULL,''),(376,24,'Pembroke','',0,'','PB','',1,0,NULL,0,NULL,''),(377,24,'Saint George City','',0,'','GC','',1,0,NULL,0,NULL,''),(378,24,'Saint George\'s','',0,'','SG','',1,0,NULL,0,NULL,''),(379,24,'Sandys','',0,'','SA','',1,0,NULL,0,NULL,''),(380,24,'Smith\'s','',0,'','SM','',1,0,NULL,0,NULL,''),(381,24,'Southampton','',0,'','SH','',1,0,NULL,0,NULL,''),(382,24,'Warwick','',0,'','WA','',1,0,NULL,0,NULL,''),(383,25,'Bumthang','',0,'','BUM','',1,0,NULL,0,NULL,''),(384,25,'Chukha','',0,'','CHU','',1,0,NULL,0,NULL,''),(385,25,'Dagana','',0,'','DAG','',1,0,NULL,0,NULL,''),(386,25,'Gasa','',0,'','GAS','',1,0,NULL,0,NULL,''),(387,25,'Haa','',0,'','HAA','',1,0,NULL,0,NULL,''),(388,25,'Lhuntse','',0,'','LHU','',1,0,NULL,0,NULL,''),(389,25,'Mongar','',0,'','MON','',1,0,NULL,0,NULL,''),(390,25,'Paro','',0,'','PAR','',1,0,NULL,0,NULL,''),(391,25,'Pemagatshel','',0,'','PEM','',1,0,NULL,0,NULL,''),(392,25,'Punakha','',0,'','PUN','',1,0,NULL,0,NULL,''),(393,25,'Samdrup Jongkhar','',0,'','SJO','',1,0,NULL,0,NULL,''),(394,25,'Samtse','',0,'','SAT','',1,0,NULL,0,NULL,''),(395,25,'Sarpang','',0,'','SAR','',1,0,NULL,0,NULL,''),(396,25,'Thimphu','',0,'','THI','',1,0,NULL,0,NULL,''),(397,25,'Trashigang','',0,'','TRG','',1,0,NULL,0,NULL,''),(398,25,'Trashiyangste','',0,'','TRY','',1,0,NULL,0,NULL,''),(399,25,'Trongsa','',0,'','TRO','',1,0,NULL,0,NULL,''),(400,25,'Tsirang','',0,'','TSI','',1,0,NULL,0,NULL,''),(401,25,'Wangdue Phodrang','',0,'','WPH','',1,0,NULL,0,NULL,''),(402,25,'Zhemgang','',0,'','ZHE','',1,0,NULL,0,NULL,''),(403,26,'Beni','',0,'','BEN','',1,0,NULL,0,NULL,''),(404,26,'Chuquisaca','',0,'','CHU','',1,0,NULL,0,NULL,''),(405,26,'Cochabamba','',0,'','COC','',1,0,NULL,0,NULL,''),(406,26,'La Paz','',0,'','LPZ','',1,0,NULL,0,NULL,''),(407,26,'Oruro','',0,'','ORU','',1,0,NULL,0,NULL,''),(408,26,'Pando','',0,'','PAN','',1,0,NULL,0,NULL,''),(409,26,'Potosi','',0,'','POT','',1,0,NULL,0,NULL,''),(410,26,'Santa Cruz','',0,'','SCZ','',1,0,NULL,0,NULL,''),(411,26,'Tarija','',0,'','TAR','',1,0,NULL,0,NULL,''),(412,27,'Brcko district','',0,'','BRO','',1,0,NULL,0,NULL,''),(413,27,'Unsko-Sanski Kanton','',0,'','FUS','',1,0,NULL,0,NULL,''),(414,27,'Posavski Kanton','',0,'','FPO','',1,0,NULL,0,NULL,''),(415,27,'Tuzlanski Kanton','',0,'','FTU','',1,0,NULL,0,NULL,''),(416,27,'Zenicko-Dobojski Kanton','',0,'','FZE','',1,0,NULL,0,NULL,''),(417,27,'Bosanskopodrinjski Kanton','',0,'','FBP','',1,0,NULL,0,NULL,''),(418,27,'Srednjebosanski Kanton','',0,'','FSB','',1,0,NULL,0,NULL,''),(419,27,'Hercegovacko-neretvanski Kanton','',0,'','FHN','',1,0,NULL,0,NULL,''),(420,27,'Zapadnohercegovacka Zupanija','',0,'','FZH','',1,0,NULL,0,NULL,''),(421,27,'Kanton Sarajevo','',0,'','FSA','',1,0,NULL,0,NULL,''),(422,27,'Zapadnobosanska','',0,'','FZA','',1,0,NULL,0,NULL,''),(423,27,'Banja Luka','',0,'','SBL','',1,0,NULL,0,NULL,''),(424,27,'Doboj','',0,'','SDO','',1,0,NULL,0,NULL,''),(425,27,'Bijeljina','',0,'','SBI','',1,0,NULL,0,NULL,''),(426,27,'Vlasenica','',0,'','SVL','',1,0,NULL,0,NULL,''),(427,27,'Sarajevo-Romanija or Sokolac','',0,'','SSR','',1,0,NULL,0,NULL,''),(428,27,'Foca','',0,'','SFO','',1,0,NULL,0,NULL,''),(429,27,'Trebinje','',0,'','STR','',1,0,NULL,0,NULL,''),(430,28,'Central','',0,'','CE','',1,0,NULL,0,NULL,''),(431,28,'Ghanzi','',0,'','GH','',1,0,NULL,0,NULL,''),(432,28,'Kgalagadi','',0,'','KD','',1,0,NULL,0,NULL,''),(433,28,'Kgatleng','',0,'','KT','',1,0,NULL,0,NULL,''),(434,28,'Kweneng','',0,'','KW','',1,0,NULL,0,NULL,''),(435,28,'Ngamiland','',0,'','NG','',1,0,NULL,0,NULL,''),(436,28,'North East','',0,'','NE','',1,0,NULL,0,NULL,''),(437,28,'North West','',0,'','NW','',1,0,NULL,0,NULL,''),(438,28,'South East','',0,'','SE','',1,0,NULL,0,NULL,''),(439,28,'Southern','',0,'','SO','',1,0,NULL,0,NULL,''),(440,30,'Acre','',0,'','AC','',1,0,NULL,0,NULL,''),(441,30,'Alagoas','',0,'','AL','',1,0,NULL,0,NULL,''),(442,30,'Amapá','',0,'','AP','',1,0,NULL,0,NULL,''),(443,30,'Amazonas','',0,'','AM','',1,0,NULL,0,NULL,''),(444,30,'Bahia','',0,'','BA','',1,0,NULL,0,NULL,''),(445,30,'Ceará','',0,'','CE','',1,0,NULL,0,NULL,''),(446,30,'Distrito Federal','',0,'','DF','',1,0,NULL,0,NULL,''),(447,30,'Espírito Santo','',0,'','ES','',1,0,NULL,0,NULL,''),(448,30,'Goiás','',0,'','GO','',1,0,NULL,0,NULL,''),(449,30,'Maranhão','',0,'','MA','',1,0,NULL,0,NULL,''),(450,30,'Mato Grosso','',0,'','MT','',1,0,NULL,0,NULL,''),(451,30,'Mato Grosso do Sul','',0,'','MS','',1,0,NULL,0,NULL,''),(452,30,'Minas Gerais','',0,'','MG','',1,0,NULL,0,NULL,''),(453,30,'Pará','',0,'','PA','',1,0,NULL,0,NULL,''),(454,30,'Paraíba','',0,'','PB','',1,0,NULL,0,NULL,''),(455,30,'Paraná','',0,'','PR','',1,0,NULL,0,NULL,''),(456,30,'Pernambuco','',0,'','PE','',1,0,NULL,0,NULL,''),(457,30,'Piauí','',0,'','PI','',1,0,NULL,0,NULL,''),(458,30,'Rio de Janeiro','',0,'','RJ','',1,0,NULL,0,NULL,''),(459,30,'Rio Grande do Norte','',0,'','RN','',1,0,NULL,0,NULL,''),(460,30,'Rio Grande do Sul','',0,'','RS','',1,0,NULL,0,NULL,''),(461,30,'Rondônia','',0,'','RO','',1,0,NULL,0,NULL,''),(462,30,'Roraima','',0,'','RR','',1,0,NULL,0,NULL,''),(463,30,'Santa Catarina','',0,'','SC','',1,0,NULL,0,NULL,''),(464,30,'São Paulo','',0,'','SP','',1,0,NULL,0,NULL,''),(465,30,'Sergipe','',0,'','SE','',1,0,NULL,0,NULL,''),(466,30,'Tocantins','',0,'','TO','',1,0,NULL,0,NULL,''),(467,31,'Peros Banhos','',0,'','PB','',1,0,NULL,0,NULL,''),(468,31,'Salomon Islands','',0,'','SI','',1,0,NULL,0,NULL,''),(469,31,'Nelsons Island','',0,'','NI','',1,0,NULL,0,NULL,''),(470,31,'Three Brothers','',0,'','TB','',1,0,NULL,0,NULL,''),(471,31,'Eagle Islands','',0,'','EA','',1,0,NULL,0,NULL,''),(472,31,'Danger Island','',0,'','DI','',1,0,NULL,0,NULL,''),(473,31,'Egmont Islands','',0,'','EG','',1,0,NULL,0,NULL,''),(474,31,'Diego Garcia','',0,'','DG','',1,0,NULL,0,NULL,''),(475,32,'Belait','',0,'','BEL','',1,0,NULL,0,NULL,''),(476,32,'Brunei and Muara','',0,'','BRM','',1,0,NULL,0,NULL,''),(477,32,'Temburong','',0,'','TEM','',1,0,NULL,0,NULL,''),(478,32,'Tutong','',0,'','TUT','',1,0,NULL,0,NULL,''),(479,33,'Blagoevgrad','',0,'','','',1,0,NULL,0,NULL,''),(480,33,'Burgas','',0,'','','',1,0,NULL,0,NULL,''),(481,33,'Dobrich','',0,'','','',1,0,NULL,0,NULL,''),(482,33,'Gabrovo','',0,'','','',1,0,NULL,0,NULL,''),(483,33,'Haskovo','',0,'','','',1,0,NULL,0,NULL,''),(484,33,'Kardjali','',0,'','','',1,0,NULL,0,NULL,''),(485,33,'Kyustendil','',0,'','','',1,0,NULL,0,NULL,''),(486,33,'Lovech','',0,'','','',1,0,NULL,0,NULL,''),(487,33,'Montana','',0,'','','',1,0,NULL,0,NULL,''),(488,33,'Pazardjik','',0,'','','',1,0,NULL,0,NULL,''),(489,33,'Pernik','',0,'','','',1,0,NULL,0,NULL,''),(490,33,'Pleven','',0,'','','',1,0,NULL,0,NULL,''),(491,33,'Plovdiv','',0,'','','',1,0,NULL,0,NULL,''),(492,33,'Razgrad','',0,'','','',1,0,NULL,0,NULL,''),(493,33,'Shumen','',0,'','','',1,0,NULL,0,NULL,''),(494,33,'Silistra','',0,'','','',1,0,NULL,0,NULL,''),(495,33,'Sliven','',0,'','','',1,0,NULL,0,NULL,''),(496,33,'Smolyan','',0,'','','',1,0,NULL,0,NULL,''),(497,33,'Sofia','',0,'','','',1,0,NULL,0,NULL,''),(498,33,'Sofia - town','',0,'','','',1,0,NULL,0,NULL,''),(499,33,'Stara Zagora','',0,'','','',1,0,NULL,0,NULL,''),(500,33,'Targovishte','',0,'','','',1,0,NULL,0,NULL,''),(501,33,'Varna','',0,'','','',1,0,NULL,0,NULL,''),(502,33,'Veliko Tarnovo','',0,'','','',1,0,NULL,0,NULL,''),(503,33,'Vidin','',0,'','','',1,0,NULL,0,NULL,''),(504,33,'Vratza','',0,'','','',1,0,NULL,0,NULL,''),(505,33,'Yambol','',0,'','','',1,0,NULL,0,NULL,''),(506,34,'Bale','',0,'','BAL','',1,0,NULL,0,NULL,''),(507,34,'Bam','',0,'','BAM','',1,0,NULL,0,NULL,''),(508,34,'Banwa','',0,'','BAN','',1,0,NULL,0,NULL,''),(509,34,'Bazega','',0,'','BAZ','',1,0,NULL,0,NULL,''),(510,34,'Bougouriba','',0,'','BOR','',1,0,NULL,0,NULL,''),(511,34,'Boulgou','',0,'','BLG','',1,0,NULL,0,NULL,''),(512,34,'Boulkiemde','',0,'','BOK','',1,0,NULL,0,NULL,''),(513,34,'Comoe','',0,'','COM','',1,0,NULL,0,NULL,''),(514,34,'Ganzourgou','',0,'','GAN','',1,0,NULL,0,NULL,''),(515,34,'Gnagna','',0,'','GNA','',1,0,NULL,0,NULL,''),(516,34,'Gourma','',0,'','GOU','',1,0,NULL,0,NULL,''),(517,34,'Houet','',0,'','HOU','',1,0,NULL,0,NULL,''),(518,34,'Ioba','',0,'','IOA','',1,0,NULL,0,NULL,''),(519,34,'Kadiogo','',0,'','KAD','',1,0,NULL,0,NULL,''),(520,34,'Kenedougou','',0,'','KEN','',1,0,NULL,0,NULL,''),(521,34,'Komondjari','',0,'','KOD','',1,0,NULL,0,NULL,''),(522,34,'Kompienga','',0,'','KOP','',1,0,NULL,0,NULL,''),(523,34,'Kossi','',0,'','KOS','',1,0,NULL,0,NULL,''),(524,34,'Koulpelogo','',0,'','KOL','',1,0,NULL,0,NULL,''),(525,34,'Kouritenga','',0,'','KOT','',1,0,NULL,0,NULL,''),(526,34,'Kourweogo','',0,'','KOW','',1,0,NULL,0,NULL,''),(527,34,'Leraba','',0,'','LER','',1,0,NULL,0,NULL,''),(528,34,'Loroum','',0,'','LOR','',1,0,NULL,0,NULL,''),(529,34,'Mouhoun','',0,'','MOU','',1,0,NULL,0,NULL,''),(530,34,'Nahouri','',0,'','NAH','',1,0,NULL,0,NULL,''),(531,34,'Namentenga','',0,'','NAM','',1,0,NULL,0,NULL,''),(532,34,'Nayala','',0,'','NAY','',1,0,NULL,0,NULL,''),(533,34,'Noumbiel','',0,'','NOU','',1,0,NULL,0,NULL,''),(534,34,'Oubritenga','',0,'','OUB','',1,0,NULL,0,NULL,''),(535,34,'Oudalan','',0,'','OUD','',1,0,NULL,0,NULL,''),(536,34,'Passore','',0,'','PAS','',1,0,NULL,0,NULL,''),(537,34,'Poni','',0,'','PON','',1,0,NULL,0,NULL,''),(538,34,'Sanguie','',0,'','SAG','',1,0,NULL,0,NULL,''),(539,34,'Sanmatenga','',0,'','SAM','',1,0,NULL,0,NULL,''),(540,34,'Seno','',0,'','SEN','',1,0,NULL,0,NULL,''),(541,34,'Sissili','',0,'','SIS','',1,0,NULL,0,NULL,''),(542,34,'Soum','',0,'','SOM','',1,0,NULL,0,NULL,''),(543,34,'Sourou','',0,'','SOR','',1,0,NULL,0,NULL,''),(544,34,'Tapoa','',0,'','TAP','',1,0,NULL,0,NULL,''),(545,34,'Tuy','',0,'','TUY','',1,0,NULL,0,NULL,''),(546,34,'Yagha','',0,'','YAG','',1,0,NULL,0,NULL,''),(547,34,'Yatenga','',0,'','YAT','',1,0,NULL,0,NULL,''),(548,34,'Ziro','',0,'','ZIR','',1,0,NULL,0,NULL,''),(549,34,'Zondoma','',0,'','ZOD','',1,0,NULL,0,NULL,''),(550,34,'Zoundweogo','',0,'','ZOW','',1,0,NULL,0,NULL,''),(551,35,'Bubanza','',0,'','BB','',1,0,NULL,0,NULL,''),(552,35,'Bujumbura','',0,'','BJ','',1,0,NULL,0,NULL,''),(553,35,'Bururi','',0,'','BR','',1,0,NULL,0,NULL,''),(554,35,'Cankuzo','',0,'','CA','',1,0,NULL,0,NULL,''),(555,35,'Cibitoke','',0,'','CI','',1,0,NULL,0,NULL,''),(556,35,'Gitega','',0,'','GI','',1,0,NULL,0,NULL,''),(557,35,'Karuzi','',0,'','KR','',1,0,NULL,0,NULL,''),(558,35,'Kayanza','',0,'','KY','',1,0,NULL,0,NULL,''),(559,35,'Kirundo','',0,'','KI','',1,0,NULL,0,NULL,''),(560,35,'Makamba','',0,'','MA','',1,0,NULL,0,NULL,''),(561,35,'Muramvya','',0,'','MU','',1,0,NULL,0,NULL,''),(562,35,'Muyinga','',0,'','MY','',1,0,NULL,0,NULL,''),(563,35,'Mwaro','',0,'','MW','',1,0,NULL,0,NULL,''),(564,35,'Ngozi','',0,'','NG','',1,0,NULL,0,NULL,''),(565,35,'Rutana','',0,'','RT','',1,0,NULL,0,NULL,''),(566,35,'Ruyigi','',0,'','RY','',1,0,NULL,0,NULL,''),(567,36,'Phnom Penh','',0,'','PP','',1,0,NULL,0,NULL,''),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','',0,'','PS','',1,0,NULL,0,NULL,''),(569,36,'Pailin','',0,'','PA','',1,0,NULL,0,NULL,''),(570,36,'Keb','',0,'','KB','',1,0,NULL,0,NULL,''),(571,36,'Banteay Meanchey','',0,'','BM','',1,0,NULL,0,NULL,''),(572,36,'Battambang','',0,'','BA','',1,0,NULL,0,NULL,''),(573,36,'Kampong Cham','',0,'','KM','',1,0,NULL,0,NULL,''),(574,36,'Kampong Chhnang','',0,'','KN','',1,0,NULL,0,NULL,''),(575,36,'Kampong Speu','',0,'','KU','',1,0,NULL,0,NULL,''),(576,36,'Kampong Som','',0,'','KO','',1,0,NULL,0,NULL,''),(577,36,'Kampong Thom','',0,'','KT','',1,0,NULL,0,NULL,''),(578,36,'Kampot','',0,'','KP','',1,0,NULL,0,NULL,''),(579,36,'Kandal','',0,'','KL','',1,0,NULL,0,NULL,''),(580,36,'Kaoh Kong','',0,'','KK','',1,0,NULL,0,NULL,''),(581,36,'Kratie','',0,'','KR','',1,0,NULL,0,NULL,''),(582,36,'Mondul Kiri','',0,'','MK','',1,0,NULL,0,NULL,''),(583,36,'Oddar Meancheay','',0,'','OM','',1,0,NULL,0,NULL,''),(584,36,'Pursat','',0,'','PU','',1,0,NULL,0,NULL,''),(585,36,'Preah Vihear','',0,'','PR','',1,0,NULL,0,NULL,''),(586,36,'Prey Veng','',0,'','PG','',1,0,NULL,0,NULL,''),(587,36,'Ratanak Kiri','',0,'','RK','',1,0,NULL,0,NULL,''),(588,36,'Siemreap','',0,'','SI','',1,0,NULL,0,NULL,''),(589,36,'Stung Treng','',0,'','ST','',1,0,NULL,0,NULL,''),(590,36,'Svay Rieng','',0,'','SR','',1,0,NULL,0,NULL,''),(591,36,'Takeo','',0,'','TK','',1,0,NULL,0,NULL,''),(592,37,'Adamawa (Adamaoua)','',0,'','ADA','',1,0,NULL,0,NULL,''),(593,37,'Centre','',0,'','CEN','',1,0,NULL,0,NULL,''),(594,37,'East (Est)','',0,'','EST','',1,0,NULL,0,NULL,''),(595,37,'Extreme North (Extreme-Nord)','',0,'','EXN','',1,0,NULL,0,NULL,''),(596,37,'Littoral','',0,'','LIT','',1,0,NULL,0,NULL,''),(597,37,'North (Nord)','',0,'','NOR','',1,0,NULL,0,NULL,''),(598,37,'Northwest (Nord-Ouest)','',0,'','NOT','',1,0,NULL,0,NULL,''),(599,37,'West (Ouest)','',0,'','OUE','',1,0,NULL,0,NULL,''),(600,37,'South (Sud)','',0,'','SUD','',1,0,NULL,0,NULL,''),(601,37,'Southwest (Sud-Ouest).','',0,'','SOU','',1,0,NULL,0,NULL,''),(602,38,'Alberta','',0,'','AB','',1,0,NULL,0,NULL,''),(603,38,'British Columbia','',0,'','BC','',1,0,NULL,0,NULL,''),(604,38,'Manitoba','',0,'','MB','',1,0,NULL,0,NULL,''),(605,38,'New Brunswick','',0,'','NB','',1,0,NULL,0,NULL,''),(606,38,'Newfoundland and Labrador','',0,'','NL','',1,0,NULL,0,NULL,''),(607,38,'Northwest Territories','',0,'','NT','',1,0,NULL,0,NULL,''),(608,38,'Nova Scotia','',0,'','NS','',1,0,NULL,0,NULL,''),(609,38,'Nunavut','',0,'','NU','',1,0,NULL,0,NULL,''),(610,38,'Ontario','',0,'','ON','',1,0,NULL,0,NULL,''),(611,38,'Prince Edward Island','',0,'','PE','',1,0,NULL,0,NULL,''),(612,38,'Qu&eacute;bec','',0,'','QC','',1,0,NULL,0,NULL,''),(613,38,'Saskatchewan','',0,'','SK','',1,0,NULL,0,NULL,''),(614,38,'Yukon Territory','',0,'','YT','',1,0,NULL,0,NULL,''),(615,39,'Boa Vista','',0,'','BV','',1,0,NULL,0,NULL,''),(616,39,'Brava','',0,'','BR','',1,0,NULL,0,NULL,''),(617,39,'Calheta de Sao Miguel','',0,'','CS','',1,0,NULL,0,NULL,''),(618,39,'Maio','',0,'','MA','',1,0,NULL,0,NULL,''),(619,39,'Mosteiros','',0,'','MO','',1,0,NULL,0,NULL,''),(620,39,'Paul','',0,'','PA','',1,0,NULL,0,NULL,''),(621,39,'Porto Novo','',0,'','PN','',1,0,NULL,0,NULL,''),(622,39,'Praia','',0,'','PR','',1,0,NULL,0,NULL,''),(623,39,'Ribeira Grande','',0,'','RG','',1,0,NULL,0,NULL,''),(624,39,'Sal','',0,'','SL','',1,0,NULL,0,NULL,''),(625,39,'Santa Catarina','',0,'','CA','',1,0,NULL,0,NULL,''),(626,39,'Santa Cruz','',0,'','CR','',1,0,NULL,0,NULL,''),(627,39,'Sao Domingos','',0,'','SD','',1,0,NULL,0,NULL,''),(628,39,'Sao Filipe','',0,'','SF','',1,0,NULL,0,NULL,''),(629,39,'Sao Nicolau','',0,'','SN','',1,0,NULL,0,NULL,''),(630,39,'Sao Vicente','',0,'','SV','',1,0,NULL,0,NULL,''),(631,39,'Tarrafal','',0,'','TA','',1,0,NULL,0,NULL,''),(632,40,'Creek','',0,'','CR','',1,0,NULL,0,NULL,''),(633,40,'Eastern','',0,'','EA','',1,0,NULL,0,NULL,''),(634,40,'Midland','',0,'','ML','',1,0,NULL,0,NULL,''),(635,40,'South Town','',0,'','ST','',1,0,NULL,0,NULL,''),(636,40,'Spot Bay','',0,'','SP','',1,0,NULL,0,NULL,''),(637,40,'Stake Bay','',0,'','SK','',1,0,NULL,0,NULL,''),(638,40,'West End','',0,'','WD','',1,0,NULL,0,NULL,''),(639,40,'Western','',0,'','WN','',1,0,NULL,0,NULL,''),(640,41,'Bamingui-Bangoran','',0,'','BBA','',1,0,NULL,0,NULL,''),(641,41,'Basse-Kotto','',0,'','BKO','',1,0,NULL,0,NULL,''),(642,41,'Haute-Kotto','',0,'','HKO','',1,0,NULL,0,NULL,''),(643,41,'Haut-Mbomou','',0,'','HMB','',1,0,NULL,0,NULL,''),(644,41,'Kemo','',0,'','KEM','',1,0,NULL,0,NULL,''),(645,41,'Lobaye','',0,'','LOB','',1,0,NULL,0,NULL,''),(646,41,'Mambere-KadeÔ','',0,'','MKD','',1,0,NULL,0,NULL,''),(647,41,'Mbomou','',0,'','MBO','',1,0,NULL,0,NULL,''),(648,41,'Nana-Mambere','',0,'','NMM','',1,0,NULL,0,NULL,''),(649,41,'Ombella-M\'Poko','',0,'','OMP','',1,0,NULL,0,NULL,''),(650,41,'Ouaka','',0,'','OUK','',1,0,NULL,0,NULL,''),(651,41,'Ouham','',0,'','OUH','',1,0,NULL,0,NULL,''),(652,41,'Ouham-Pende','',0,'','OPE','',1,0,NULL,0,NULL,''),(653,41,'Vakaga','',0,'','VAK','',1,0,NULL,0,NULL,''),(654,41,'Nana-Grebizi','',0,'','NGR','',1,0,NULL,0,NULL,''),(655,41,'Sangha-Mbaere','',0,'','SMB','',1,0,NULL,0,NULL,''),(656,41,'Bangui','',0,'','BAN','',1,0,NULL,0,NULL,''),(657,42,'Batha','',0,'','BA','',1,0,NULL,0,NULL,''),(658,42,'Biltine','',0,'','BI','',1,0,NULL,0,NULL,''),(659,42,'Borkou-Ennedi-Tibesti','',0,'','BE','',1,0,NULL,0,NULL,''),(660,42,'Chari-Baguirmi','',0,'','CB','',1,0,NULL,0,NULL,''),(661,42,'Guera','',0,'','GU','',1,0,NULL,0,NULL,''),(662,42,'Kanem','',0,'','KA','',1,0,NULL,0,NULL,''),(663,42,'Lac','',0,'','LA','',1,0,NULL,0,NULL,''),(664,42,'Logone Occidental','',0,'','LC','',1,0,NULL,0,NULL,''),(665,42,'Logone Oriental','',0,'','LR','',1,0,NULL,0,NULL,''),(666,42,'Mayo-Kebbi','',0,'','MK','',1,0,NULL,0,NULL,''),(667,42,'Moyen-Chari','',0,'','MC','',1,0,NULL,0,NULL,''),(668,42,'Ouaddai','',0,'','OU','',1,0,NULL,0,NULL,''),(669,42,'Salamat','',0,'','SA','',1,0,NULL,0,NULL,''),(670,42,'Tandjile','',0,'','TA','',1,0,NULL,0,NULL,''),(671,43,'Aisen del General Carlos Ibanez','',0,'','AI','',1,0,NULL,0,NULL,''),(672,43,'Antofagasta','',0,'','AN','',1,0,NULL,0,NULL,''),(673,43,'Araucania','',0,'','AR','',1,0,NULL,0,NULL,''),(674,43,'Atacama','',0,'','AT','',1,0,NULL,0,NULL,''),(675,43,'Bio-Bio','',0,'','BI','',1,0,NULL,0,NULL,''),(676,43,'Coquimbo','',0,'','CO','',1,0,NULL,0,NULL,''),(677,43,'Libertador General Bernardo O\'Hi','',0,'','LI','',1,0,NULL,0,NULL,''),(678,43,'Los Lagos','',0,'','LL','',1,0,NULL,0,NULL,''),(679,43,'Magallanes y de la Antartica Chi','',0,'','MA','',1,0,NULL,0,NULL,''),(680,43,'Maule','',0,'','ML','',1,0,NULL,0,NULL,''),(681,43,'Region Metropolitana','',0,'','RM','',1,0,NULL,0,NULL,''),(682,43,'Tarapaca','',0,'','TA','',1,0,NULL,0,NULL,''),(683,43,'Valparaiso','',0,'','VS','',1,0,NULL,0,NULL,''),(684,44,'Anhui','',0,'','AN','',1,0,NULL,0,NULL,''),(685,44,'Beijing','',0,'','BE','',1,0,NULL,0,NULL,''),(686,44,'Chongqing','',0,'','CH','',1,0,NULL,0,NULL,''),(687,44,'Fujian','',0,'','FU','',1,0,NULL,0,NULL,''),(688,44,'Gansu','',0,'','GA','',1,0,NULL,0,NULL,''),(689,44,'Guangdong','',0,'','GU','',1,0,NULL,0,NULL,''),(690,44,'Guangxi','',0,'','GX','',1,0,NULL,0,NULL,''),(691,44,'Guizhou','',0,'','GZ','',1,0,NULL,0,NULL,''),(692,44,'Hainan','',0,'','HA','',1,0,NULL,0,NULL,''),(693,44,'Hebei','',0,'','HB','',1,0,NULL,0,NULL,''),(694,44,'Heilongjiang','',0,'','HL','',1,0,NULL,0,NULL,''),(695,44,'Henan','',0,'','HE','',1,0,NULL,0,NULL,''),(696,44,'Hong Kong','',0,'','HK','',1,0,NULL,0,NULL,''),(697,44,'Hubei','',0,'','HU','',1,0,NULL,0,NULL,''),(698,44,'Hunan','',0,'','HN','',1,0,NULL,0,NULL,''),(699,44,'Inner Mongolia','',0,'','IM','',1,0,NULL,0,NULL,''),(700,44,'Jiangsu','',0,'','JI','',1,0,NULL,0,NULL,''),(701,44,'Jiangxi','',0,'','JX','',1,0,NULL,0,NULL,''),(702,44,'Jilin','',0,'','JL','',1,0,NULL,0,NULL,''),(703,44,'Liaoning','',0,'','LI','',1,0,NULL,0,NULL,''),(704,44,'Macau','',0,'','MA','',1,0,NULL,0,NULL,''),(705,44,'Ningxia','',0,'','NI','',1,0,NULL,0,NULL,''),(706,44,'Shaanxi','',0,'','SH','',1,0,NULL,0,NULL,''),(707,44,'Shandong','',0,'','SA','',1,0,NULL,0,NULL,''),(708,44,'Shanghai','',0,'','SG','',1,0,NULL,0,NULL,''),(709,44,'Shanxi','',0,'','SX','',1,0,NULL,0,NULL,''),(710,44,'Sichuan','',0,'','SI','',1,0,NULL,0,NULL,''),(711,44,'Tianjin','',0,'','TI','',1,0,NULL,0,NULL,''),(712,44,'Xinjiang','',0,'','XI','',1,0,NULL,0,NULL,''),(713,44,'Yunnan','',0,'','YU','',1,0,NULL,0,NULL,''),(714,44,'Zhejiang','',0,'','ZH','',1,0,NULL,0,NULL,''),(715,46,'Direction Island','',0,'','D','',1,0,NULL,0,NULL,''),(716,46,'Home Island','',0,'','H','',1,0,NULL,0,NULL,''),(717,46,'Horsburgh Island','',0,'','O','',1,0,NULL,0,NULL,''),(718,46,'South Island','',0,'','S','',1,0,NULL,0,NULL,''),(719,46,'West Island','',0,'','W','',1,0,NULL,0,NULL,''),(720,47,'Amazonas','',0,'','AMZ','',1,0,NULL,0,NULL,''),(721,47,'Antioquia','',0,'','ANT','',1,0,NULL,0,NULL,''),(722,47,'Arauca','',0,'','ARA','',1,0,NULL,0,NULL,''),(723,47,'Atlantico','',0,'','ATL','',1,0,NULL,0,NULL,''),(724,47,'Bogota D.C.','',0,'','BDC','',1,0,NULL,0,NULL,''),(725,47,'Bolivar','',0,'','BOL','',1,0,NULL,0,NULL,''),(726,47,'Boyaca','',0,'','BOY','',1,0,NULL,0,NULL,''),(727,47,'Caldas','',0,'','CAL','',1,0,NULL,0,NULL,''),(728,47,'Caqueta','',0,'','CAQ','',1,0,NULL,0,NULL,''),(729,47,'Casanare','',0,'','CAS','',1,0,NULL,0,NULL,''),(730,47,'Cauca','',0,'','CAU','',1,0,NULL,0,NULL,''),(731,47,'Cesar','',0,'','CES','',1,0,NULL,0,NULL,''),(732,47,'Choco','',0,'','CHO','',1,0,NULL,0,NULL,''),(733,47,'Cordoba','',0,'','COR','',1,0,NULL,0,NULL,''),(734,47,'Cundinamarca','',0,'','CAM','',1,0,NULL,0,NULL,''),(735,47,'Guainia','',0,'','GNA','',1,0,NULL,0,NULL,''),(736,47,'Guajira','',0,'','GJR','',1,0,NULL,0,NULL,''),(737,47,'Guaviare','',0,'','GVR','',1,0,NULL,0,NULL,''),(738,47,'Huila','',0,'','HUI','',1,0,NULL,0,NULL,''),(739,47,'Magdalena','',0,'','MAG','',1,0,NULL,0,NULL,''),(740,47,'Meta','',0,'','MET','',1,0,NULL,0,NULL,''),(741,47,'Narino','',0,'','NAR','',1,0,NULL,0,NULL,''),(742,47,'Norte de Santander','',0,'','NDS','',1,0,NULL,0,NULL,''),(743,47,'Putumayo','',0,'','PUT','',1,0,NULL,0,NULL,''),(744,47,'Quindio','',0,'','QUI','',1,0,NULL,0,NULL,''),(745,47,'Risaralda','',0,'','RIS','',1,0,NULL,0,NULL,''),(746,47,'San Andres y Providencia','',0,'','SAP','',1,0,NULL,0,NULL,''),(747,47,'Santander','',0,'','SAN','',1,0,NULL,0,NULL,''),(748,47,'Sucre','',0,'','SUC','',1,0,NULL,0,NULL,''),(749,47,'Tolima','',0,'','TOL','',1,0,NULL,0,NULL,''),(750,47,'Valle del Cauca','',0,'','VDC','',1,0,NULL,0,NULL,''),(751,47,'Vaupes','',0,'','VAU','',1,0,NULL,0,NULL,''),(752,47,'Vichada','',0,'','VIC','',1,0,NULL,0,NULL,''),(753,48,'Grande Comore','',0,'','G','',1,0,NULL,0,NULL,''),(754,48,'Anjouan','',0,'','A','',1,0,NULL,0,NULL,''),(755,48,'Moheli','',0,'','M','',1,0,NULL,0,NULL,''),(756,49,'Bouenza','',0,'','BO','',1,0,NULL,0,NULL,''),(757,49,'Brazzaville','',0,'','BR','',1,0,NULL,0,NULL,''),(758,49,'Cuvette','',0,'','CU','',1,0,NULL,0,NULL,''),(759,49,'Cuvette-Ouest','',0,'','CO','',1,0,NULL,0,NULL,''),(760,49,'Kouilou','',0,'','KO','',1,0,NULL,0,NULL,''),(761,49,'Lekoumou','',0,'','LE','',1,0,NULL,0,NULL,''),(762,49,'Likouala','',0,'','LI','',1,0,NULL,0,NULL,''),(763,49,'Niari','',0,'','NI','',1,0,NULL,0,NULL,''),(764,49,'Plateaux','',0,'','PL','',1,0,NULL,0,NULL,''),(765,49,'Pool','',0,'','PO','',1,0,NULL,0,NULL,''),(766,49,'Sangha','',0,'','SA','',1,0,NULL,0,NULL,''),(767,50,'Pukapuka','',0,'','PU','',1,0,NULL,0,NULL,''),(768,50,'Rakahanga','',0,'','RK','',1,0,NULL,0,NULL,''),(769,50,'Manihiki','',0,'','MK','',1,0,NULL,0,NULL,''),(770,50,'Penrhyn','',0,'','PE','',1,0,NULL,0,NULL,''),(771,50,'Nassau Island','',0,'','NI','',1,0,NULL,0,NULL,''),(772,50,'Surwarrow','',0,'','SU','',1,0,NULL,0,NULL,''),(773,50,'Palmerston','',0,'','PA','',1,0,NULL,0,NULL,''),(774,50,'Aitutaki','',0,'','AI','',1,0,NULL,0,NULL,''),(775,50,'Manuae','',0,'','MA','',1,0,NULL,0,NULL,''),(776,50,'Takutea','',0,'','TA','',1,0,NULL,0,NULL,''),(777,50,'Mitiaro','',0,'','MT','',1,0,NULL,0,NULL,''),(778,50,'Atiu','',0,'','AT','',1,0,NULL,0,NULL,''),(779,50,'Mauke','',0,'','MU','',1,0,NULL,0,NULL,''),(780,50,'Rarotonga','',0,'','RR','',1,0,NULL,0,NULL,''),(781,50,'Mangaia','',0,'','MG','',1,0,NULL,0,NULL,''),(782,51,'Alajuela','',0,'','AL','',1,0,NULL,0,NULL,''),(783,51,'Cartago','',0,'','CA','',1,0,NULL,0,NULL,''),(784,51,'Guanacaste','',0,'','GU','',1,0,NULL,0,NULL,''),(785,51,'Heredia','',0,'','HE','',1,0,NULL,0,NULL,''),(786,51,'Limon','',0,'','LI','',1,0,NULL,0,NULL,''),(787,51,'Puntarenas','',0,'','PU','',1,0,NULL,0,NULL,''),(788,51,'San Jose','',0,'','SJ','',1,0,NULL,0,NULL,''),(789,52,'Abengourou','',0,'','ABE','',1,0,NULL,0,NULL,''),(790,52,'Abidjan','',0,'','ABI','',1,0,NULL,0,NULL,''),(791,52,'Aboisso','',0,'','ABO','',1,0,NULL,0,NULL,''),(792,52,'Adiake','',0,'','ADI','',1,0,NULL,0,NULL,''),(793,52,'Adzope','',0,'','ADZ','',1,0,NULL,0,NULL,''),(794,52,'Agboville','',0,'','AGB','',1,0,NULL,0,NULL,''),(795,52,'Agnibilekrou','',0,'','AGN','',1,0,NULL,0,NULL,''),(796,52,'Alepe','',0,'','ALE','',1,0,NULL,0,NULL,''),(797,52,'Bocanda','',0,'','BOC','',1,0,NULL,0,NULL,''),(798,52,'Bangolo','',0,'','BAN','',1,0,NULL,0,NULL,''),(799,52,'Beoumi','',0,'','BEO','',1,0,NULL,0,NULL,''),(800,52,'Biankouma','',0,'','BIA','',1,0,NULL,0,NULL,''),(801,52,'Bondoukou','',0,'','BDK','',1,0,NULL,0,NULL,''),(802,52,'Bongouanou','',0,'','BGN','',1,0,NULL,0,NULL,''),(803,52,'Bouafle','',0,'','BFL','',1,0,NULL,0,NULL,''),(804,52,'Bouake','',0,'','BKE','',1,0,NULL,0,NULL,''),(805,52,'Bouna','',0,'','BNA','',1,0,NULL,0,NULL,''),(806,52,'Boundiali','',0,'','BDL','',1,0,NULL,0,NULL,''),(807,52,'Dabakala','',0,'','DKL','',1,0,NULL,0,NULL,''),(808,52,'Dabou','',0,'','DBU','',1,0,NULL,0,NULL,''),(809,52,'Daloa','',0,'','DAL','',1,0,NULL,0,NULL,''),(810,52,'Danane','',0,'','DAN','',1,0,NULL,0,NULL,''),(811,52,'Daoukro','',0,'','DAO','',1,0,NULL,0,NULL,''),(812,52,'Dimbokro','',0,'','DIM','',1,0,NULL,0,NULL,''),(813,52,'Divo','',0,'','DIV','',1,0,NULL,0,NULL,''),(814,52,'Duekoue','',0,'','DUE','',1,0,NULL,0,NULL,''),(815,52,'Ferkessedougou','',0,'','FER','',1,0,NULL,0,NULL,''),(816,52,'Gagnoa','',0,'','GAG','',1,0,NULL,0,NULL,''),(817,52,'Grand-Bassam','',0,'','GBA','',1,0,NULL,0,NULL,''),(818,52,'Grand-Lahou','',0,'','GLA','',1,0,NULL,0,NULL,''),(819,52,'Guiglo','',0,'','GUI','',1,0,NULL,0,NULL,''),(820,52,'Issia','',0,'','ISS','',1,0,NULL,0,NULL,''),(821,52,'Jacqueville','',0,'','JAC','',1,0,NULL,0,NULL,''),(822,52,'Katiola','',0,'','KAT','',1,0,NULL,0,NULL,''),(823,52,'Korhogo','',0,'','KOR','',1,0,NULL,0,NULL,''),(824,52,'Lakota','',0,'','LAK','',1,0,NULL,0,NULL,''),(825,52,'Man','',0,'','MAN','',1,0,NULL,0,NULL,''),(826,52,'Mankono','',0,'','MKN','',1,0,NULL,0,NULL,''),(827,52,'Mbahiakro','',0,'','MBA','',1,0,NULL,0,NULL,''),(828,52,'Odienne','',0,'','ODI','',1,0,NULL,0,NULL,''),(829,52,'Oume','',0,'','OUM','',1,0,NULL,0,NULL,''),(830,52,'Sakassou','',0,'','SAK','',1,0,NULL,0,NULL,''),(831,52,'San-Pedro','',0,'','SPE','',1,0,NULL,0,NULL,''),(832,52,'Sassandra','',0,'','SAS','',1,0,NULL,0,NULL,''),(833,52,'Seguela','',0,'','SEG','',1,0,NULL,0,NULL,''),(834,52,'Sinfra','',0,'','SIN','',1,0,NULL,0,NULL,''),(835,52,'Soubre','',0,'','SOU','',1,0,NULL,0,NULL,''),(836,52,'Tabou','',0,'','TAB','',1,0,NULL,0,NULL,''),(837,52,'Tanda','',0,'','TAN','',1,0,NULL,0,NULL,''),(838,52,'Tiebissou','',0,'','TIE','',1,0,NULL,0,NULL,''),(839,52,'Tingrela','',0,'','TIN','',1,0,NULL,0,NULL,''),(840,52,'Tiassale','',0,'','TIA','',1,0,NULL,0,NULL,''),(841,52,'Touba','',0,'','TBA','',1,0,NULL,0,NULL,''),(842,52,'Toulepleu','',0,'','TLP','',1,0,NULL,0,NULL,''),(843,52,'Toumodi','',0,'','TMD','',1,0,NULL,0,NULL,''),(844,52,'Vavoua','',0,'','VAV','',1,0,NULL,0,NULL,''),(845,52,'Yamoussoukro','',0,'','YAM','',1,0,NULL,0,NULL,''),(846,52,'Zuenoula','',0,'','ZUE','',1,0,NULL,0,NULL,''),(847,53,'Bjelovar-Bilogora','',0,'','BB','',1,0,NULL,0,NULL,''),(848,53,'City of Zagreb','',0,'','CZ','',1,0,NULL,0,NULL,''),(849,53,'Dubrovnik-Neretva','',0,'','DN','',1,0,NULL,0,NULL,''),(850,53,'Istra','',0,'','IS','',1,0,NULL,0,NULL,''),(851,53,'Karlovac','',0,'','KA','',1,0,NULL,0,NULL,''),(852,53,'Koprivnica-Krizevci','',0,'','KK','',1,0,NULL,0,NULL,''),(853,53,'Krapina-Zagorje','',0,'','KZ','',1,0,NULL,0,NULL,''),(854,53,'Lika-Senj','',0,'','LS','',1,0,NULL,0,NULL,''),(855,53,'Medimurje','',0,'','ME','',1,0,NULL,0,NULL,''),(856,53,'Osijek-Baranja','',0,'','OB','',1,0,NULL,0,NULL,''),(857,53,'Pozega-Slavonia','',0,'','PS','',1,0,NULL,0,NULL,''),(858,53,'Primorje-Gorski Kotar','',0,'','PG','',1,0,NULL,0,NULL,''),(859,53,'Sibenik','',0,'','SI','',1,0,NULL,0,NULL,''),(860,53,'Sisak-Moslavina','',0,'','SM','',1,0,NULL,0,NULL,''),(861,53,'Slavonski Brod-Posavina','',0,'','SB','',1,0,NULL,0,NULL,''),(862,53,'Split-Dalmatia','',0,'','SD','',1,0,NULL,0,NULL,''),(863,53,'Varazdin','',0,'','VA','',1,0,NULL,0,NULL,''),(864,53,'Virovitica-Podravina','',0,'','VP','',1,0,NULL,0,NULL,''),(865,53,'Vukovar-Srijem','',0,'','VS','',1,0,NULL,0,NULL,''),(866,53,'Zadar-Knin','',0,'','ZK','',1,0,NULL,0,NULL,''),(867,53,'Zagreb','',0,'','ZA','',1,0,NULL,0,NULL,''),(868,54,'Camaguey','',0,'','CA','',1,0,NULL,0,NULL,''),(869,54,'Ciego de Avila','',0,'','CD','',1,0,NULL,0,NULL,''),(870,54,'Cienfuegos','',0,'','CI','',1,0,NULL,0,NULL,''),(871,54,'Ciudad de La Habana','',0,'','CH','',1,0,NULL,0,NULL,''),(872,54,'Granma','',0,'','GR','',1,0,NULL,0,NULL,''),(873,54,'Guantanamo','',0,'','GU','',1,0,NULL,0,NULL,''),(874,54,'Holguin','',0,'','HO','',1,0,NULL,0,NULL,''),(875,54,'Isla de la Juventud','',0,'','IJ','',1,0,NULL,0,NULL,''),(876,54,'La Habana','',0,'','LH','',1,0,NULL,0,NULL,''),(877,54,'Las Tunas','',0,'','LT','',1,0,NULL,0,NULL,''),(878,54,'Matanzas','',0,'','MA','',1,0,NULL,0,NULL,''),(879,54,'Pinar del Rio','',0,'','PR','',1,0,NULL,0,NULL,''),(880,54,'Sancti Spiritus','',0,'','SS','',1,0,NULL,0,NULL,''),(881,54,'Santiago de Cuba','',0,'','SC','',1,0,NULL,0,NULL,''),(882,54,'Villa Clara','',0,'','VC','',1,0,NULL,0,NULL,''),(883,55,'Famagusta','',0,'','F','',1,0,NULL,0,NULL,''),(884,55,'Kyrenia','',0,'','K','',1,0,NULL,0,NULL,''),(885,55,'Larnaca','',0,'','A','',1,0,NULL,0,NULL,''),(886,55,'Limassol','',0,'','I','',1,0,NULL,0,NULL,''),(887,55,'Nicosia','',0,'','N','',1,0,NULL,0,NULL,''),(888,55,'Paphos','',0,'','P','',1,0,NULL,0,NULL,''),(889,56,'Ústecký','',0,'','U','',1,0,NULL,0,NULL,''),(890,56,'Jihočeský','',0,'','C','',1,0,NULL,0,NULL,''),(891,56,'Jihomoravský','',0,'','B','',1,0,NULL,0,NULL,''),(892,56,'Karlovarský','',0,'','K','',1,0,NULL,0,NULL,''),(893,56,'Královehradecký','',0,'','H','',1,0,NULL,0,NULL,''),(894,56,'Liberecký','',0,'','L','',1,0,NULL,0,NULL,''),(895,56,'Moravskoslezský','',0,'','T','',1,0,NULL,0,NULL,''),(896,56,'Olomoucký','',0,'','M','',1,0,NULL,0,NULL,''),(897,56,'Pardubický','',0,'','E','',1,0,NULL,0,NULL,''),(898,56,'Plzeňský','',0,'','P','',1,0,NULL,0,NULL,''),(899,56,'Praha','',0,'','A','',1,0,NULL,0,NULL,''),(900,56,'Středočeský','',0,'','S','',1,0,NULL,0,NULL,''),(901,56,'Vysočina','',0,'','J','',1,0,NULL,0,NULL,''),(902,56,'Zlínský','',0,'','Z','',1,0,NULL,0,NULL,''),(903,57,'Arhus','',0,'','AR','',1,0,NULL,0,NULL,''),(904,57,'Bornholm','',0,'','BH','',1,0,NULL,0,NULL,''),(905,57,'Copenhagen','',0,'','CO','',1,0,NULL,0,NULL,''),(906,57,'Faroe Islands','',0,'','FO','',1,0,NULL,0,NULL,''),(907,57,'Frederiksborg','',0,'','FR','',1,0,NULL,0,NULL,''),(908,57,'Fyn','',0,'','FY','',1,0,NULL,0,NULL,''),(909,57,'Kobenhavn','',0,'','KO','',1,0,NULL,0,NULL,''),(910,57,'Nordjylland','',0,'','NO','',1,0,NULL,0,NULL,''),(911,57,'Ribe','',0,'','RI','',1,0,NULL,0,NULL,''),(912,57,'Ringkobing','',0,'','RK','',1,0,NULL,0,NULL,''),(913,57,'Roskilde','',0,'','RO','',1,0,NULL,0,NULL,''),(914,57,'Sonderjylland','',0,'','SO','',1,0,NULL,0,NULL,''),(915,57,'Storstrom','',0,'','ST','',1,0,NULL,0,NULL,''),(916,57,'Vejle','',0,'','VK','',1,0,NULL,0,NULL,''),(917,57,'Vestj&aelig;lland','',0,'','VJ','',1,0,NULL,0,NULL,''),(918,57,'Viborg','',0,'','VB','',1,0,NULL,0,NULL,''),(919,58,'\'Ali Sabih','',0,'','S','',1,0,NULL,0,NULL,''),(920,58,'Dikhil','',0,'','K','',1,0,NULL,0,NULL,''),(921,58,'Djibouti','',0,'','J','',1,0,NULL,0,NULL,''),(922,58,'Obock','',0,'','O','',1,0,NULL,0,NULL,''),(923,58,'Tadjoura','',0,'','T','',1,0,NULL,0,NULL,''),(924,59,'Saint Andrew Parish','',0,'','AND','',1,0,NULL,0,NULL,''),(925,59,'Saint David Parish','',0,'','DAV','',1,0,NULL,0,NULL,''),(926,59,'Saint George Parish','',0,'','GEO','',1,0,NULL,0,NULL,''),(927,59,'Saint John Parish','',0,'','JOH','',1,0,NULL,0,NULL,''),(928,59,'Saint Joseph Parish','',0,'','JOS','',1,0,NULL,0,NULL,''),(929,59,'Saint Luke Parish','',0,'','LUK','',1,0,NULL,0,NULL,''),(930,59,'Saint Mark Parish','',0,'','MAR','',1,0,NULL,0,NULL,''),(931,59,'Saint Patrick Parish','',0,'','PAT','',1,0,NULL,0,NULL,''),(932,59,'Saint Paul Parish','',0,'','PAU','',1,0,NULL,0,NULL,''),(933,59,'Saint Peter Parish','',0,'','PET','',1,0,NULL,0,NULL,''),(934,60,'Distrito Nacional','',0,'','DN','',1,0,NULL,0,NULL,''),(935,60,'Azua','',0,'','AZ','',1,0,NULL,0,NULL,''),(936,60,'Baoruco','',0,'','BC','',1,0,NULL,0,NULL,''),(937,60,'Barahona','',0,'','BH','',1,0,NULL,0,NULL,''),(938,60,'Dajabon','',0,'','DJ','',1,0,NULL,0,NULL,''),(939,60,'Duarte','',0,'','DU','',1,0,NULL,0,NULL,''),(940,60,'Elias Pina','',0,'','EL','',1,0,NULL,0,NULL,''),(941,60,'El Seybo','',0,'','SY','',1,0,NULL,0,NULL,''),(942,60,'Espaillat','',0,'','ET','',1,0,NULL,0,NULL,''),(943,60,'Hato Mayor','',0,'','HM','',1,0,NULL,0,NULL,''),(944,60,'Independencia','',0,'','IN','',1,0,NULL,0,NULL,''),(945,60,'La Altagracia','',0,'','AL','',1,0,NULL,0,NULL,''),(946,60,'La Romana','',0,'','RO','',1,0,NULL,0,NULL,''),(947,60,'La Vega','',0,'','VE','',1,0,NULL,0,NULL,''),(948,60,'Maria Trinidad Sanchez','',0,'','MT','',1,0,NULL,0,NULL,''),(949,60,'Monsenor Nouel','',0,'','MN','',1,0,NULL,0,NULL,''),(950,60,'Monte Cristi','',0,'','MC','',1,0,NULL,0,NULL,''),(951,60,'Monte Plata','',0,'','MP','',1,0,NULL,0,NULL,''),(952,60,'Pedernales','',0,'','PD','',1,0,NULL,0,NULL,''),(953,60,'Peravia (Bani)','',0,'','PR','',1,0,NULL,0,NULL,''),(954,60,'Puerto Plata','',0,'','PP','',1,0,NULL,0,NULL,''),(955,60,'Salcedo','',0,'','SL','',1,0,NULL,0,NULL,''),(956,60,'Samana','',0,'','SM','',1,0,NULL,0,NULL,''),(957,60,'Sanchez Ramirez','',0,'','SH','',1,0,NULL,0,NULL,''),(958,60,'San Cristobal','',0,'','SC','',1,0,NULL,0,NULL,''),(959,60,'San Jose de Ocoa','',0,'','JO','',1,0,NULL,0,NULL,''),(960,60,'San Juan','',0,'','SJ','',1,0,NULL,0,NULL,''),(961,60,'San Pedro de Macoris','',0,'','PM','',1,0,NULL,0,NULL,''),(962,60,'Santiago','',0,'','SA','',1,0,NULL,0,NULL,''),(963,60,'Santiago Rodriguez','',0,'','ST','',1,0,NULL,0,NULL,''),(964,60,'Santo Domingo','',0,'','SD','',1,0,NULL,0,NULL,''),(965,60,'Valverde','',0,'','VA','',1,0,NULL,0,NULL,''),(966,61,'Aileu','',0,'','AL','',1,0,NULL,0,NULL,''),(967,61,'Ainaro','',0,'','AN','',1,0,NULL,0,NULL,''),(968,61,'Baucau','',0,'','BA','',1,0,NULL,0,NULL,''),(969,61,'Bobonaro','',0,'','BO','',1,0,NULL,0,NULL,''),(970,61,'Cova Lima','',0,'','CO','',1,0,NULL,0,NULL,''),(971,61,'Dili','',0,'','DI','',1,0,NULL,0,NULL,''),(972,61,'Ermera','',0,'','ER','',1,0,NULL,0,NULL,''),(973,61,'Lautem','',0,'','LA','',1,0,NULL,0,NULL,''),(974,61,'Liquica','',0,'','LI','',1,0,NULL,0,NULL,''),(975,61,'Manatuto','',0,'','MT','',1,0,NULL,0,NULL,''),(976,61,'Manufahi','',0,'','MF','',1,0,NULL,0,NULL,''),(977,61,'Oecussi','',0,'','OE','',1,0,NULL,0,NULL,''),(978,61,'Viqueque','',0,'','VI','',1,0,NULL,0,NULL,''),(979,62,'Azuay','',0,'','AZU','',1,0,NULL,0,NULL,''),(980,62,'Bolivar','',0,'','BOL','',1,0,NULL,0,NULL,''),(981,62,'Ca&ntilde;ar','',0,'','CAN','',1,0,NULL,0,NULL,''),(982,62,'Carchi','',0,'','CAR','',1,0,NULL,0,NULL,''),(983,62,'Chimborazo','',0,'','CHI','',1,0,NULL,0,NULL,''),(984,62,'Cotopaxi','',0,'','COT','',1,0,NULL,0,NULL,''),(985,62,'El Oro','',0,'','EOR','',1,0,NULL,0,NULL,''),(986,62,'Esmeraldas','',0,'','ESM','',1,0,NULL,0,NULL,''),(987,62,'Gal&aacute;pagos','',0,'','GPS','',1,0,NULL,0,NULL,''),(988,62,'Guayas','',0,'','GUA','',1,0,NULL,0,NULL,''),(989,62,'Imbabura','',0,'','IMB','',1,0,NULL,0,NULL,''),(990,62,'Loja','',0,'','LOJ','',1,0,NULL,0,NULL,''),(991,62,'Los Rios','',0,'','LRO','',1,0,NULL,0,NULL,''),(992,62,'Manab&iacute;','',0,'','MAN','',1,0,NULL,0,NULL,''),(993,62,'Morona Santiago','',0,'','MSA','',1,0,NULL,0,NULL,''),(994,62,'Napo','',0,'','NAP','',1,0,NULL,0,NULL,''),(995,62,'Orellana','',0,'','ORE','',1,0,NULL,0,NULL,''),(996,62,'Pastaza','',0,'','PAS','',1,0,NULL,0,NULL,''),(997,62,'Pichincha','',0,'','PIC','',1,0,NULL,0,NULL,''),(998,62,'Sucumb&iacute;os','',0,'','SUC','',1,0,NULL,0,NULL,''),(999,62,'Tungurahua','',0,'','TUN','',1,0,NULL,0,NULL,''),(1000,62,'Zamora Chinchipe','',0,'','ZCH','',1,0,NULL,0,NULL,''),(1001,63,'Ad Daqahliyah','',0,'','DHY','',1,0,NULL,0,NULL,''),(1002,63,'Al Bahr al Ahmar','',0,'','BAM','',1,0,NULL,0,NULL,''),(1003,63,'Al Buhayrah','',0,'','BHY','',1,0,NULL,0,NULL,''),(1004,63,'Al Fayyum','',0,'','FYM','',1,0,NULL,0,NULL,''),(1005,63,'Al Gharbiyah','',0,'','GBY','',1,0,NULL,0,NULL,''),(1006,63,'Al Iskandariyah','',0,'','IDR','',1,0,NULL,0,NULL,''),(1007,63,'Al Isma\'iliyah','',0,'','IML','',1,0,NULL,0,NULL,''),(1008,63,'Al Jizah','',0,'','JZH','',1,0,NULL,0,NULL,''),(1009,63,'Al Minufiyah','',0,'','MFY','',1,0,NULL,0,NULL,''),(1010,63,'Al Minya','',0,'','MNY','',1,0,NULL,0,NULL,''),(1011,63,'Al Qahirah','',0,'','QHR','',1,0,NULL,0,NULL,''),(1012,63,'Al Qalyubiyah','',0,'','QLY','',1,0,NULL,0,NULL,''),(1013,63,'Al Wadi al Jadid','',0,'','WJD','',1,0,NULL,0,NULL,''),(1014,63,'Ash Sharqiyah','',0,'','SHQ','',1,0,NULL,0,NULL,''),(1015,63,'As Suways','',0,'','SWY','',1,0,NULL,0,NULL,''),(1016,63,'Aswan','',0,'','ASW','',1,0,NULL,0,NULL,''),(1017,63,'Asyut','',0,'','ASY','',1,0,NULL,0,NULL,''),(1018,63,'Bani Suwayf','',0,'','BSW','',1,0,NULL,0,NULL,''),(1019,63,'Bur Sa\'id','',0,'','BSD','',1,0,NULL,0,NULL,''),(1020,63,'Dumyat','',0,'','DMY','',1,0,NULL,0,NULL,''),(1021,63,'Janub Sina\'','',0,'','JNS','',1,0,NULL,0,NULL,''),(1022,63,'Kafr ash Shaykh','',0,'','KSH','',1,0,NULL,0,NULL,''),(1023,63,'Matruh','',0,'','MAT','',1,0,NULL,0,NULL,''),(1024,63,'Qina','',0,'','QIN','',1,0,NULL,0,NULL,''),(1025,63,'Shamal Sina\'','',0,'','SHS','',1,0,NULL,0,NULL,''),(1026,63,'Suhaj','',0,'','SUH','',1,0,NULL,0,NULL,''),(1027,64,'Ahuachapan','',0,'','AH','',1,0,NULL,0,NULL,''),(1028,64,'Cabanas','',0,'','CA','',1,0,NULL,0,NULL,''),(1029,64,'Chalatenango','',0,'','CH','',1,0,NULL,0,NULL,''),(1030,64,'Cuscatlan','',0,'','CU','',1,0,NULL,0,NULL,''),(1031,64,'La Libertad','',0,'','LB','',1,0,NULL,0,NULL,''),(1032,64,'La Paz','',0,'','PZ','',1,0,NULL,0,NULL,''),(1033,64,'La Union','',0,'','UN','',1,0,NULL,0,NULL,''),(1034,64,'Morazan','',0,'','MO','',1,0,NULL,0,NULL,''),(1035,64,'San Miguel','',0,'','SM','',1,0,NULL,0,NULL,''),(1036,64,'San Salvador','',0,'','SS','',1,0,NULL,0,NULL,''),(1037,64,'San Vicente','',0,'','SV','',1,0,NULL,0,NULL,''),(1038,64,'Santa Ana','',0,'','SA','',1,0,NULL,0,NULL,''),(1039,64,'Sonsonate','',0,'','SO','',1,0,NULL,0,NULL,''),(1040,64,'Usulutan','',0,'','US','',1,0,NULL,0,NULL,''),(1041,65,'Provincia Annobon','',0,'','AN','',1,0,NULL,0,NULL,''),(1042,65,'Provincia Bioko Norte','',0,'','BN','',1,0,NULL,0,NULL,''),(1043,65,'Provincia Bioko Sur','',0,'','BS','',1,0,NULL,0,NULL,''),(1044,65,'Provincia Centro Sur','',0,'','CS','',1,0,NULL,0,NULL,''),(1045,65,'Provincia Kie-Ntem','',0,'','KN','',1,0,NULL,0,NULL,''),(1046,65,'Provincia Litoral','',0,'','LI','',1,0,NULL,0,NULL,''),(1047,65,'Provincia Wele-Nzas','',0,'','WN','',1,0,NULL,0,NULL,''),(1048,66,'Central (Maekel)','',0,'','MA','',1,0,NULL,0,NULL,''),(1049,66,'Anseba (Keren)','',0,'','KE','',1,0,NULL,0,NULL,''),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','',0,'','DK','',1,0,NULL,0,NULL,''),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','',0,'','SK','',1,0,NULL,0,NULL,''),(1052,66,'Southern (Debub)','',0,'','DE','',1,0,NULL,0,NULL,''),(1053,66,'Gash-Barka (Barentu)','',0,'','BR','',1,0,NULL,0,NULL,''),(1054,67,'Harjumaa (Tallinn)','',0,'','HA','',1,0,NULL,0,NULL,''),(1055,67,'Hiiumaa (Kardla)','',0,'','HI','',1,0,NULL,0,NULL,''),(1056,67,'Ida-Virumaa (Johvi)','',0,'','IV','',1,0,NULL,0,NULL,''),(1057,67,'Jarvamaa (Paide)','',0,'','JA','',1,0,NULL,0,NULL,''),(1058,67,'Jogevamaa (Jogeva)','',0,'','JO','',1,0,NULL,0,NULL,''),(1059,67,'Laane-Virumaa (Rakvere)','',0,'','LV','',1,0,NULL,0,NULL,''),(1060,67,'Laanemaa (Haapsalu)','',0,'','LA','',1,0,NULL,0,NULL,''),(1061,67,'Parnumaa (Parnu)','',0,'','PA','',1,0,NULL,0,NULL,''),(1062,67,'Polvamaa (Polva)','',0,'','PO','',1,0,NULL,0,NULL,''),(1063,67,'Raplamaa (Rapla)','',0,'','RA','',1,0,NULL,0,NULL,''),(1064,67,'Saaremaa (Kuessaare)','',0,'','SA','',1,0,NULL,0,NULL,''),(1065,67,'Tartumaa (Tartu)','',0,'','TA','',1,0,NULL,0,NULL,''),(1066,67,'Valgamaa (Valga)','',0,'','VA','',1,0,NULL,0,NULL,''),(1067,67,'Viljandimaa (Viljandi)','',0,'','VI','',1,0,NULL,0,NULL,''),(1068,67,'Vorumaa (Voru)','',0,'','VO','',1,0,NULL,0,NULL,''),(1069,68,'Afar','',0,'','AF','',1,0,NULL,0,NULL,''),(1070,68,'Amhara','',0,'','AH','',1,0,NULL,0,NULL,''),(1071,68,'Benishangul-Gumaz','',0,'','BG','',1,0,NULL,0,NULL,''),(1072,68,'Gambela','',0,'','GB','',1,0,NULL,0,NULL,''),(1073,68,'Hariai','',0,'','HR','',1,0,NULL,0,NULL,''),(1074,68,'Oromia','',0,'','OR','',1,0,NULL,0,NULL,''),(1075,68,'Somali','',0,'','SM','',1,0,NULL,0,NULL,''),(1076,68,'Southern Nations - Nationalities and Peoples Region','',0,'','SN','',1,0,NULL,0,NULL,''),(1077,68,'Tigray','',0,'','TG','',1,0,NULL,0,NULL,''),(1078,68,'Addis Ababa','',0,'','AA','',1,0,NULL,0,NULL,''),(1079,68,'Dire Dawa','',0,'','DD','',1,0,NULL,0,NULL,''),(1080,71,'Central Division','',0,'','C','',1,0,NULL,0,NULL,''),(1081,71,'Northern Division','',0,'','N','',1,0,NULL,0,NULL,''),(1082,71,'Eastern Division','',0,'','E','',1,0,NULL,0,NULL,''),(1083,71,'Western Division','',0,'','W','',1,0,NULL,0,NULL,''),(1084,71,'Rotuma','',0,'','R','',1,0,NULL,0,NULL,''),(1085,72,'Ahvenanmaan Laani','',0,'','AL','',1,0,NULL,0,NULL,''),(1086,72,'Etela-Suomen Laani','',0,'','ES','',1,0,NULL,0,NULL,''),(1087,72,'Ita-Suomen Laani','',0,'','IS','',1,0,NULL,0,NULL,''),(1088,72,'Lansi-Suomen Laani','',0,'','LS','',1,0,NULL,0,NULL,''),(1089,72,'Lapin Lanani','',0,'','LA','',1,0,NULL,0,NULL,''),(1090,72,'Oulun Laani','',0,'','OU','',1,0,NULL,0,NULL,''),(1091,74,'Ain','',0,'','01','',1,0,NULL,0,NULL,''),(1092,74,'Aisne','',0,'','02','',1,0,NULL,0,NULL,''),(1093,74,'Allier','',0,'','03','',1,0,NULL,0,NULL,''),(1094,74,'Alpes de Haute Provence','',0,'','04','',1,0,NULL,0,NULL,''),(1095,74,'Hautes-Alpes','',0,'','05','',1,0,NULL,0,NULL,''),(1096,74,'Alpes Maritimes','',0,'','06','',1,0,NULL,0,NULL,''),(1097,74,'Ard&egrave;che','',0,'','07','',1,0,NULL,0,NULL,''),(1098,74,'Ardennes','',0,'','08','',1,0,NULL,0,NULL,''),(1099,74,'Ari&egrave;ge','',0,'','09','',1,0,NULL,0,NULL,''),(1100,74,'Aube','',0,'','10','',1,0,NULL,0,NULL,''),(1101,74,'Aude','',0,'','11','',1,0,NULL,0,NULL,''),(1102,74,'Aveyron','',0,'','12','',1,0,NULL,0,NULL,''),(1103,74,'Bouches du Rh&ocirc;ne','',0,'','13','',1,0,NULL,0,NULL,''),(1104,74,'Calvados','',0,'','14','',1,0,NULL,0,NULL,''),(1105,74,'Cantal','',0,'','15','',1,0,NULL,0,NULL,''),(1106,74,'Charente','',0,'','16','',1,0,NULL,0,NULL,''),(1107,74,'Charente Maritime','',0,'','17','',1,0,NULL,0,NULL,''),(1108,74,'Cher','',0,'','18','',1,0,NULL,0,NULL,''),(1109,74,'Corr&egrave;ze','',0,'','19','',1,0,NULL,0,NULL,''),(1110,74,'Corse du Sud','',0,'','2A','',1,0,NULL,0,NULL,''),(1111,74,'Haute Corse','',0,'','2B','',1,0,NULL,0,NULL,''),(1112,74,'C&ocirc;te d&#039;or','',0,'','21','',1,0,NULL,0,NULL,''),(1113,74,'C&ocirc;tes d&#039;Armor','',0,'','22','',1,0,NULL,0,NULL,''),(1114,74,'Creuse','',0,'','23','',1,0,NULL,0,NULL,''),(1115,74,'Dordogne','',0,'','24','',1,0,NULL,0,NULL,''),(1116,74,'Doubs','',0,'','25','',1,0,NULL,0,NULL,''),(1117,74,'Dr&ocirc;me','',0,'','26','',1,0,NULL,0,NULL,''),(1118,74,'Eure','',0,'','27','',1,0,NULL,0,NULL,''),(1119,74,'Eure et Loir','',0,'','28','',1,0,NULL,0,NULL,''),(1120,74,'Finist&egrave;re','',0,'','29','',1,0,NULL,0,NULL,''),(1121,74,'Gard','',0,'','30','',1,0,NULL,0,NULL,''),(1122,74,'Haute Garonne','',0,'','31','',1,0,NULL,0,NULL,''),(1123,74,'Gers','',0,'','32','',1,0,NULL,0,NULL,''),(1124,74,'Gironde','',0,'','33','',1,0,NULL,0,NULL,''),(1125,74,'H&eacute;rault','',0,'','34','',1,0,NULL,0,NULL,''),(1126,74,'Ille et Vilaine','',0,'','35','',1,0,NULL,0,NULL,''),(1127,74,'Indre','',0,'','36','',1,0,NULL,0,NULL,''),(1128,74,'Indre et Loire','',0,'','37','',1,0,NULL,0,NULL,''),(1129,74,'Is&eacute;re','',0,'','38','',1,0,NULL,0,NULL,''),(1130,74,'Jura','',0,'','39','',1,0,NULL,0,NULL,''),(1131,74,'Landes','',0,'','40','',1,0,NULL,0,NULL,''),(1132,74,'Loir et Cher','',0,'','41','',1,0,NULL,0,NULL,''),(1133,74,'Loire','',0,'','42','',1,0,NULL,0,NULL,''),(1134,74,'Haute Loire','',0,'','43','',1,0,NULL,0,NULL,''),(1135,74,'Loire Atlantique','',0,'','44','',1,0,NULL,0,NULL,''),(1136,74,'Loiret','',0,'','45','',1,0,NULL,0,NULL,''),(1137,74,'Lot','',0,'','46','',1,0,NULL,0,NULL,''),(1138,74,'Lot et Garonne','',0,'','47','',1,0,NULL,0,NULL,''),(1139,74,'Loz&egrave;re','',0,'','48','',1,0,NULL,0,NULL,''),(1140,74,'Maine et Loire','',0,'','49','',1,0,NULL,0,NULL,''),(1141,74,'Manche','',0,'','50','',1,0,NULL,0,NULL,''),(1142,74,'Marne','',0,'','51','',1,0,NULL,0,NULL,''),(1143,74,'Haute Marne','',0,'','52','',1,0,NULL,0,NULL,''),(1144,74,'Mayenne','',0,'','53','',1,0,NULL,0,NULL,''),(1145,74,'Meurthe et Moselle','',0,'','54','',1,0,NULL,0,NULL,''),(1146,74,'Meuse','',0,'','55','',1,0,NULL,0,NULL,''),(1147,74,'Morbihan','',0,'','56','',1,0,NULL,0,NULL,''),(1148,74,'Moselle','',0,'','57','',1,0,NULL,0,NULL,''),(1149,74,'Ni&egrave;vre','',0,'','58','',1,0,NULL,0,NULL,''),(1150,74,'Nord','',0,'','59','',1,0,NULL,0,NULL,''),(1151,74,'Oise','',0,'','60','',1,0,NULL,0,NULL,''),(1152,74,'Orne','',0,'','61','',1,0,NULL,0,NULL,''),(1153,74,'Pas de Calais','',0,'','62','',1,0,NULL,0,NULL,''),(1154,74,'Puy de D&ocirc;me','',0,'','63','',1,0,NULL,0,NULL,''),(1155,74,'Pyr&eacute;n&eacute;es Atlantiques','',0,'','64','',1,0,NULL,0,NULL,''),(1156,74,'Hautes Pyr&eacute;n&eacute;es','',0,'','65','',1,0,NULL,0,NULL,''),(1157,74,'Pyr&eacute;n&eacute;es Orientales','',0,'','66','',1,0,NULL,0,NULL,''),(1158,74,'Bas Rhin','',0,'','67','',1,0,NULL,0,NULL,''),(1159,74,'Haut Rhin','',0,'','68','',1,0,NULL,0,NULL,''),(1160,74,'Rh&ocirc;ne','',0,'','69','',1,0,NULL,0,NULL,''),(1161,74,'Haute Sa&ocirc;ne','',0,'','70','',1,0,NULL,0,NULL,''),(1162,74,'Sa&ocirc;ne et Loire','',0,'','71','',1,0,NULL,0,NULL,''),(1163,74,'Sarthe','',0,'','72','',1,0,NULL,0,NULL,''),(1164,74,'Savoie','',0,'','73','',1,0,NULL,0,NULL,''),(1165,74,'Haute Savoie','',0,'','74','',1,0,NULL,0,NULL,''),(1166,74,'Paris','',0,'','75','',1,0,NULL,0,NULL,''),(1167,74,'Seine Maritime','',0,'','76','',1,0,NULL,0,NULL,''),(1168,74,'Seine et Marne','',0,'','77','',1,0,NULL,0,NULL,''),(1169,74,'Yvelines','',0,'','78','',1,0,NULL,0,NULL,''),(1170,74,'Deux S&egrave;vres','',0,'','79','',1,0,NULL,0,NULL,''),(1171,74,'Somme','',0,'','80','',1,0,NULL,0,NULL,''),(1172,74,'Tarn','',0,'','81','',1,0,NULL,0,NULL,''),(1173,74,'Tarn et Garonne','',0,'','82','',1,0,NULL,0,NULL,''),(1174,74,'Var','',0,'','83','',1,0,NULL,0,NULL,''),(1175,74,'Vaucluse','',0,'','84','',1,0,NULL,0,NULL,''),(1176,74,'Vend&eacute;e','',0,'','85','',1,0,NULL,0,NULL,''),(1177,74,'Vienne','',0,'','86','',1,0,NULL,0,NULL,''),(1178,74,'Haute Vienne','',0,'','87','',1,0,NULL,0,NULL,''),(1179,74,'Vosges','',0,'','88','',1,0,NULL,0,NULL,''),(1180,74,'Yonne','',0,'','89','',1,0,NULL,0,NULL,''),(1181,74,'Territoire de Belfort','',0,'','90','',1,0,NULL,0,NULL,''),(1182,74,'Essonne','',0,'','91','',1,0,NULL,0,NULL,''),(1183,74,'Hauts de Seine','',0,'','92','',1,0,NULL,0,NULL,''),(1184,74,'Seine St-Denis','',0,'','93','',1,0,NULL,0,NULL,''),(1185,74,'Val de Marne','',0,'','94','',1,0,NULL,0,NULL,''),(1186,74,'Val d\'Oise','',0,'','95','',1,0,NULL,0,NULL,''),(1187,76,'Archipel des Marquises','',0,'','M','',1,0,NULL,0,NULL,''),(1188,76,'Archipel des Tuamotu','',0,'','T','',1,0,NULL,0,NULL,''),(1189,76,'Archipel des Tubuai','',0,'','I','',1,0,NULL,0,NULL,''),(1190,76,'Iles du Vent','',0,'','V','',1,0,NULL,0,NULL,''),(1191,76,'Iles Sous-le-Vent','',0,'','S','',1,0,NULL,0,NULL,''),(1192,77,'Iles Crozet','',0,'','C','',1,0,NULL,0,NULL,''),(1193,77,'Iles Kerguelen','',0,'','K','',1,0,NULL,0,NULL,''),(1194,77,'Ile Amsterdam','',0,'','A','',1,0,NULL,0,NULL,''),(1195,77,'Ile Saint-Paul','',0,'','P','',1,0,NULL,0,NULL,''),(1196,77,'Adelie Land','',0,'','D','',1,0,NULL,0,NULL,''),(1197,78,'Estuaire','',0,'','ES','',1,0,NULL,0,NULL,''),(1198,78,'Haut-Ogooue','',0,'','HO','',1,0,NULL,0,NULL,''),(1199,78,'Moyen-Ogooue','',0,'','MO','',1,0,NULL,0,NULL,''),(1200,78,'Ngounie','',0,'','NG','',1,0,NULL,0,NULL,''),(1201,78,'Nyanga','',0,'','NY','',1,0,NULL,0,NULL,''),(1202,78,'Ogooue-Ivindo','',0,'','OI','',1,0,NULL,0,NULL,''),(1203,78,'Ogooue-Lolo','',0,'','OL','',1,0,NULL,0,NULL,''),(1204,78,'Ogooue-Maritime','',0,'','OM','',1,0,NULL,0,NULL,''),(1205,78,'Woleu-Ntem','',0,'','WN','',1,0,NULL,0,NULL,''),(1206,79,'Banjul','',0,'','BJ','',1,0,NULL,0,NULL,''),(1207,79,'Basse','',0,'','BS','',1,0,NULL,0,NULL,''),(1208,79,'Brikama','',0,'','BR','',1,0,NULL,0,NULL,''),(1209,79,'Janjangbure','',0,'','JA','',1,0,NULL,0,NULL,''),(1210,79,'Kanifeng','',0,'','KA','',1,0,NULL,0,NULL,''),(1211,79,'Kerewan','',0,'','KE','',1,0,NULL,0,NULL,''),(1212,79,'Kuntaur','',0,'','KU','',1,0,NULL,0,NULL,''),(1213,79,'Mansakonko','',0,'','MA','',1,0,NULL,0,NULL,''),(1214,79,'Lower River','',0,'','LR','',1,0,NULL,0,NULL,''),(1215,79,'Central River','',0,'','CR','',1,0,NULL,0,NULL,''),(1216,79,'North Bank','',0,'','NB','',1,0,NULL,0,NULL,''),(1217,79,'Upper River','',0,'','UR','',1,0,NULL,0,NULL,''),(1218,79,'Western','',0,'','WE','',1,0,NULL,0,NULL,''),(1219,80,'Abkhazia','',0,'','AB','',1,0,NULL,0,NULL,''),(1220,80,'Ajaria','',0,'','AJ','',1,0,NULL,0,NULL,''),(1221,80,'Tbilisi','',0,'','TB','',1,0,NULL,0,NULL,''),(1222,80,'Guria','',0,'','GU','',1,0,NULL,0,NULL,''),(1223,80,'Imereti','',0,'','IM','',1,0,NULL,0,NULL,''),(1224,80,'Kakheti','',0,'','KA','',1,0,NULL,0,NULL,''),(1225,80,'Kvemo Kartli','',0,'','KK','',1,0,NULL,0,NULL,''),(1226,80,'Mtskheta-Mtianeti','',0,'','MM','',1,0,NULL,0,NULL,''),(1227,80,'Racha Lechkhumi and Kvemo Svanet','',0,'','RL','',1,0,NULL,0,NULL,''),(1228,80,'Samegrelo-Zemo Svaneti','',0,'','SZ','',1,0,NULL,0,NULL,''),(1229,80,'Samtskhe-Javakheti','',0,'','SJ','',1,0,NULL,0,NULL,''),(1230,80,'Shida Kartli','',0,'','SK','',1,0,NULL,0,NULL,''),(1231,81,'Baden-W&uuml;rttemberg','',0,'','BAW','',1,0,NULL,0,NULL,''),(1232,81,'Bayern','',0,'','BAY','',1,0,NULL,0,NULL,''),(1233,81,'Berlin','',0,'','BER','',1,0,NULL,0,NULL,''),(1234,81,'Brandenburg','',0,'','BRG','',1,0,NULL,0,NULL,''),(1235,81,'Bremen','',0,'','BRE','',1,0,NULL,0,NULL,''),(1236,81,'Hamburg','',0,'','HAM','',1,0,NULL,0,NULL,''),(1237,81,'Hessen','',0,'','HES','',1,0,NULL,0,NULL,''),(1238,81,'Mecklenburg-Vorpommern','',0,'','MEC','',1,0,NULL,0,NULL,''),(1239,81,'Niedersachsen','',0,'','NDS','',1,0,NULL,0,NULL,''),(1240,81,'Nordrhein-Westfalen','',0,'','NRW','',1,0,NULL,0,NULL,''),(1241,81,'Rheinland-Pfalz','',0,'','RHE','',1,0,NULL,0,NULL,''),(1242,81,'Saarland','',0,'','SAR','',1,0,NULL,0,NULL,''),(1243,81,'Sachsen','',0,'','SAS','',1,0,NULL,0,NULL,''),(1244,81,'Sachsen-Anhalt','',0,'','SAC','',1,0,NULL,0,NULL,''),(1245,81,'Schleswig-Holstein','',0,'','SCN','',1,0,NULL,0,NULL,''),(1246,81,'Th&uuml;ringen','',0,'','THE','',1,0,NULL,0,NULL,''),(1247,82,'Ashanti Region','',0,'','AS','',1,0,NULL,0,NULL,''),(1248,82,'Brong-Ahafo Region','',0,'','BA','',1,0,NULL,0,NULL,''),(1249,82,'Central Region','',0,'','CE','',1,0,NULL,0,NULL,''),(1250,82,'Eastern Region','',0,'','EA','',1,0,NULL,0,NULL,''),(1251,82,'Greater Accra Region','',0,'','GA','',1,0,NULL,0,NULL,''),(1252,82,'Northern Region','',0,'','NO','',1,0,NULL,0,NULL,''),(1253,82,'Upper East Region','',0,'','UE','',1,0,NULL,0,NULL,''),(1254,82,'Upper West Region','',0,'','UW','',1,0,NULL,0,NULL,''),(1255,82,'Volta Region','',0,'','VO','',1,0,NULL,0,NULL,''),(1256,82,'Western Region','',0,'','WE','',1,0,NULL,0,NULL,''),(1257,84,'Attica','',0,'','AT','',1,0,NULL,0,NULL,''),(1258,84,'Central Greece','',0,'','CN','',1,0,NULL,0,NULL,''),(1259,84,'Central Macedonia','',0,'','CM','',1,0,NULL,0,NULL,''),(1260,84,'Crete','',0,'','CR','',1,0,NULL,0,NULL,''),(1261,84,'East Macedonia and Thrace','',0,'','EM','',1,0,NULL,0,NULL,''),(1262,84,'Epirus','',0,'','EP','',1,0,NULL,0,NULL,''),(1263,84,'Ionian Islands','',0,'','II','',1,0,NULL,0,NULL,''),(1264,84,'North Aegean','',0,'','NA','',1,0,NULL,0,NULL,''),(1265,84,'Peloponnesos','',0,'','PP','',1,0,NULL,0,NULL,''),(1266,84,'South Aegean','',0,'','SA','',1,0,NULL,0,NULL,''),(1267,84,'Thessaly','',0,'','TH','',1,0,NULL,0,NULL,''),(1268,84,'West Greece','',0,'','WG','',1,0,NULL,0,NULL,''),(1269,84,'West Macedonia','',0,'','WM','',1,0,NULL,0,NULL,''),(1270,85,'Avannaa','',0,'','A','',1,0,NULL,0,NULL,''),(1271,85,'Tunu','',0,'','T','',1,0,NULL,0,NULL,''),(1272,85,'Kitaa','',0,'','K','',1,0,NULL,0,NULL,''),(1273,86,'Saint Andrew','',0,'','A','',1,0,NULL,0,NULL,''),(1274,86,'Saint David','',0,'','D','',1,0,NULL,0,NULL,''),(1275,86,'Saint George','',0,'','G','',1,0,NULL,0,NULL,''),(1276,86,'Saint John','',0,'','J','',1,0,NULL,0,NULL,''),(1277,86,'Saint Mark','',0,'','M','',1,0,NULL,0,NULL,''),(1278,86,'Saint Patrick','',0,'','P','',1,0,NULL,0,NULL,''),(1279,86,'Carriacou','',0,'','C','',1,0,NULL,0,NULL,''),(1280,86,'Petit Martinique','',0,'','Q','',1,0,NULL,0,NULL,''),(1281,89,'Alta Verapaz','',0,'','AV','',1,0,NULL,0,NULL,''),(1282,89,'Baja Verapaz','',0,'','BV','',1,0,NULL,0,NULL,''),(1283,89,'Chimaltenango','',0,'','CM','',1,0,NULL,0,NULL,''),(1284,89,'Chiquimula','',0,'','CQ','',1,0,NULL,0,NULL,''),(1285,89,'El Peten','',0,'','PE','',1,0,NULL,0,NULL,''),(1286,89,'El Progreso','',0,'','PR','',1,0,NULL,0,NULL,''),(1287,89,'El Quiche','',0,'','QC','',1,0,NULL,0,NULL,''),(1288,89,'Escuintla','',0,'','ES','',1,0,NULL,0,NULL,''),(1289,89,'Guatemala','',0,'','GU','',1,0,NULL,0,NULL,''),(1290,89,'Huehuetenango','',0,'','HU','',1,0,NULL,0,NULL,''),(1291,89,'Izabal','',0,'','IZ','',1,0,NULL,0,NULL,''),(1292,89,'Jalapa','',0,'','JA','',1,0,NULL,0,NULL,''),(1293,89,'Jutiapa','',0,'','JU','',1,0,NULL,0,NULL,''),(1294,89,'Quetzaltenango','',0,'','QZ','',1,0,NULL,0,NULL,''),(1295,89,'Retalhuleu','',0,'','RE','',1,0,NULL,0,NULL,''),(1296,89,'Sacatepequez','',0,'','ST','',1,0,NULL,0,NULL,''),(1297,89,'San Marcos','',0,'','SM','',1,0,NULL,0,NULL,''),(1298,89,'Santa Rosa','',0,'','SR','',1,0,NULL,0,NULL,''),(1299,89,'Solola','',0,'','SO','',1,0,NULL,0,NULL,''),(1300,89,'Suchitepequez','',0,'','SU','',1,0,NULL,0,NULL,''),(1301,89,'Totonicapan','',0,'','TO','',1,0,NULL,0,NULL,''),(1302,89,'Zacapa','',0,'','ZA','',1,0,NULL,0,NULL,''),(1303,90,'Conakry','',0,'','CNK','',1,0,NULL,0,NULL,''),(1304,90,'Beyla','',0,'','BYL','',1,0,NULL,0,NULL,''),(1305,90,'Boffa','',0,'','BFA','',1,0,NULL,0,NULL,''),(1306,90,'Boke','',0,'','BOK','',1,0,NULL,0,NULL,''),(1307,90,'Coyah','',0,'','COY','',1,0,NULL,0,NULL,''),(1308,90,'Dabola','',0,'','DBL','',1,0,NULL,0,NULL,''),(1309,90,'Dalaba','',0,'','DLB','',1,0,NULL,0,NULL,''),(1310,90,'Dinguiraye','',0,'','DGR','',1,0,NULL,0,NULL,''),(1311,90,'Dubreka','',0,'','DBR','',1,0,NULL,0,NULL,''),(1312,90,'Faranah','',0,'','FRN','',1,0,NULL,0,NULL,''),(1313,90,'Forecariah','',0,'','FRC','',1,0,NULL,0,NULL,''),(1314,90,'Fria','',0,'','FRI','',1,0,NULL,0,NULL,''),(1315,90,'Gaoual','',0,'','GAO','',1,0,NULL,0,NULL,''),(1316,90,'Gueckedou','',0,'','GCD','',1,0,NULL,0,NULL,''),(1317,90,'Kankan','',0,'','KNK','',1,0,NULL,0,NULL,''),(1318,90,'Kerouane','',0,'','KRN','',1,0,NULL,0,NULL,''),(1319,90,'Kindia','',0,'','KND','',1,0,NULL,0,NULL,''),(1320,90,'Kissidougou','',0,'','KSD','',1,0,NULL,0,NULL,''),(1321,90,'Koubia','',0,'','KBA','',1,0,NULL,0,NULL,''),(1322,90,'Koundara','',0,'','KDA','',1,0,NULL,0,NULL,''),(1323,90,'Kouroussa','',0,'','KRA','',1,0,NULL,0,NULL,''),(1324,90,'Labe','',0,'','LAB','',1,0,NULL,0,NULL,''),(1325,90,'Lelouma','',0,'','LLM','',1,0,NULL,0,NULL,''),(1326,90,'Lola','',0,'','LOL','',1,0,NULL,0,NULL,''),(1327,90,'Macenta','',0,'','MCT','',1,0,NULL,0,NULL,''),(1328,90,'Mali','',0,'','MAL','',1,0,NULL,0,NULL,''),(1329,90,'Mamou','',0,'','MAM','',1,0,NULL,0,NULL,''),(1330,90,'Mandiana','',0,'','MAN','',1,0,NULL,0,NULL,''),(1331,90,'Nzerekore','',0,'','NZR','',1,0,NULL,0,NULL,''),(1332,90,'Pita','',0,'','PIT','',1,0,NULL,0,NULL,''),(1333,90,'Siguiri','',0,'','SIG','',1,0,NULL,0,NULL,''),(1334,90,'Telimele','',0,'','TLM','',1,0,NULL,0,NULL,''),(1335,90,'Tougue','',0,'','TOG','',1,0,NULL,0,NULL,''),(1336,90,'Yomou','',0,'','YOM','',1,0,NULL,0,NULL,''),(1337,91,'Bafata Region','',0,'','BF','',1,0,NULL,0,NULL,''),(1338,91,'Biombo Region','',0,'','BB','',1,0,NULL,0,NULL,''),(1339,91,'Bissau Region','',0,'','BS','',1,0,NULL,0,NULL,''),(1340,91,'Bolama Region','',0,'','BL','',1,0,NULL,0,NULL,''),(1341,91,'Cacheu Region','',0,'','CA','',1,0,NULL,0,NULL,''),(1342,91,'Gabu Region','',0,'','GA','',1,0,NULL,0,NULL,''),(1343,91,'Oio Region','',0,'','OI','',1,0,NULL,0,NULL,''),(1344,91,'Quinara Region','',0,'','QU','',1,0,NULL,0,NULL,''),(1345,91,'Tombali Region','',0,'','TO','',1,0,NULL,0,NULL,''),(1346,92,'Barima-Waini','',0,'','BW','',1,0,NULL,0,NULL,''),(1347,92,'Cuyuni-Mazaruni','',0,'','CM','',1,0,NULL,0,NULL,''),(1348,92,'Demerara-Mahaica','',0,'','DM','',1,0,NULL,0,NULL,''),(1349,92,'East Berbice-Corentyne','',0,'','EC','',1,0,NULL,0,NULL,''),(1350,92,'Essequibo Islands-West Demerara','',0,'','EW','',1,0,NULL,0,NULL,''),(1351,92,'Mahaica-Berbice','',0,'','MB','',1,0,NULL,0,NULL,''),(1352,92,'Pomeroon-Supenaam','',0,'','PM','',1,0,NULL,0,NULL,''),(1353,92,'Potaro-Siparuni','',0,'','PI','',1,0,NULL,0,NULL,''),(1354,92,'Upper Demerara-Berbice','',0,'','UD','',1,0,NULL,0,NULL,''),(1355,92,'Upper Takutu-Upper Essequibo','',0,'','UT','',1,0,NULL,0,NULL,''),(1356,93,'Artibonite','',0,'','AR','',1,0,NULL,0,NULL,''),(1357,93,'Centre','',0,'','CE','',1,0,NULL,0,NULL,''),(1358,93,'Grand\'Anse','',0,'','GA','',1,0,NULL,0,NULL,''),(1359,93,'Nord','',0,'','ND','',1,0,NULL,0,NULL,''),(1360,93,'Nord-Est','',0,'','NE','',1,0,NULL,0,NULL,''),(1361,93,'Nord-Ouest','',0,'','NO','',1,0,NULL,0,NULL,''),(1362,93,'Ouest','',0,'','OU','',1,0,NULL,0,NULL,''),(1363,93,'Sud','',0,'','SD','',1,0,NULL,0,NULL,''),(1364,93,'Sud-Est','',0,'','SE','',1,0,NULL,0,NULL,''),(1365,94,'Flat Island','',0,'','F','',1,0,NULL,0,NULL,''),(1366,94,'McDonald Island','',0,'','M','',1,0,NULL,0,NULL,''),(1367,94,'Shag Island','',0,'','S','',1,0,NULL,0,NULL,''),(1368,94,'Heard Island','',0,'','H','',1,0,NULL,0,NULL,''),(1369,95,'Atlantida','',0,'','AT','',1,0,NULL,0,NULL,''),(1370,95,'Choluteca','',0,'','CH','',1,0,NULL,0,NULL,''),(1371,95,'Colon','',0,'','CL','',1,0,NULL,0,NULL,''),(1372,95,'Comayagua','',0,'','CM','',1,0,NULL,0,NULL,''),(1373,95,'Copan','',0,'','CP','',1,0,NULL,0,NULL,''),(1374,95,'Cortes','',0,'','CR','',1,0,NULL,0,NULL,''),(1375,95,'El Paraiso','',0,'','PA','',1,0,NULL,0,NULL,''),(1376,95,'Francisco Morazan','',0,'','FM','',1,0,NULL,0,NULL,''),(1377,95,'Gracias a Dios','',0,'','GD','',1,0,NULL,0,NULL,''),(1378,95,'Intibuca','',0,'','IN','',1,0,NULL,0,NULL,''),(1379,95,'Islas de la Bahia (Bay Islands)','',0,'','IB','',1,0,NULL,0,NULL,''),(1380,95,'La Paz','',0,'','PZ','',1,0,NULL,0,NULL,''),(1381,95,'Lempira','',0,'','LE','',1,0,NULL,0,NULL,''),(1382,95,'Ocotepeque','',0,'','OC','',1,0,NULL,0,NULL,''),(1383,95,'Olancho','',0,'','OL','',1,0,NULL,0,NULL,''),(1384,95,'Santa Barbara','',0,'','SB','',1,0,NULL,0,NULL,''),(1385,95,'Valle','',0,'','VA','',1,0,NULL,0,NULL,''),(1386,95,'Yoro','',0,'','YO','',1,0,NULL,0,NULL,''),(1387,96,'Central and Western Hong Kong Island','',0,'','HCW','',1,0,NULL,0,NULL,''),(1388,96,'Eastern Hong Kong Island','',0,'','HEA','',1,0,NULL,0,NULL,''),(1389,96,'Southern Hong Kong Island','',0,'','HSO','',1,0,NULL,0,NULL,''),(1390,96,'Wan Chai Hong Kong Island','',0,'','HWC','',1,0,NULL,0,NULL,''),(1391,96,'Kowloon City Kowloon','',0,'','KKC','',1,0,NULL,0,NULL,''),(1392,96,'Kwun Tong Kowloon','',0,'','KKT','',1,0,NULL,0,NULL,''),(1393,96,'Sham Shui Po Kowloon','',0,'','KSS','',1,0,NULL,0,NULL,''),(1394,96,'Wong Tai Sin Kowloon','',0,'','KWT','',1,0,NULL,0,NULL,''),(1395,96,'Yau Tsim Mong Kowloon','',0,'','KYT','',1,0,NULL,0,NULL,''),(1396,96,'Islands New Territories','',0,'','NIS','',1,0,NULL,0,NULL,''),(1397,96,'Kwai Tsing New Territories','',0,'','NKT','',1,0,NULL,0,NULL,''),(1398,96,'North New Territories','',0,'','NNO','',1,0,NULL,0,NULL,''),(1399,96,'Sai Kung New Territories','',0,'','NSK','',1,0,NULL,0,NULL,''),(1400,96,'Sha Tin New Territories','',0,'','NST','',1,0,NULL,0,NULL,''),(1401,96,'Tai Po New Territories','',0,'','NTP','',1,0,NULL,0,NULL,''),(1402,96,'Tsuen Wan New Territories','',0,'','NTW','',1,0,NULL,0,NULL,''),(1403,96,'Tuen Mun New Territories','',0,'','NTM','',1,0,NULL,0,NULL,''),(1404,96,'Yuen Long New Territories','',0,'','NYL','',1,0,NULL,0,NULL,''),(1405,97,'Bacs-Kiskun','',0,'','BK','',1,0,NULL,0,NULL,''),(1406,97,'Baranya','',0,'','BA','',1,0,NULL,0,NULL,''),(1407,97,'Bekes','',0,'','BE','',1,0,NULL,0,NULL,''),(1408,97,'Bekescsaba','',0,'','BS','',1,0,NULL,0,NULL,''),(1409,97,'Borsod-Abauj-Zemplen','',0,'','BZ','',1,0,NULL,0,NULL,''),(1410,97,'Budapest','',0,'','BU','',1,0,NULL,0,NULL,''),(1411,97,'Csongrad','',0,'','CS','',1,0,NULL,0,NULL,''),(1412,97,'Debrecen','',0,'','DE','',1,0,NULL,0,NULL,''),(1413,97,'Dunaujvaros','',0,'','DU','',1,0,NULL,0,NULL,''),(1414,97,'Eger','',0,'','EG','',1,0,NULL,0,NULL,''),(1415,97,'Fejer','',0,'','FE','',1,0,NULL,0,NULL,''),(1416,97,'Gyor','',0,'','GY','',1,0,NULL,0,NULL,''),(1417,97,'Gyor-Moson-Sopron','',0,'','GM','',1,0,NULL,0,NULL,''),(1418,97,'Hajdu-Bihar','',0,'','HB','',1,0,NULL,0,NULL,''),(1419,97,'Heves','',0,'','HE','',1,0,NULL,0,NULL,''),(1420,97,'Hodmezovasarhely','',0,'','HO','',1,0,NULL,0,NULL,''),(1421,97,'Jasz-Nagykun-Szolnok','',0,'','JN','',1,0,NULL,0,NULL,''),(1422,97,'Kaposvar','',0,'','KA','',1,0,NULL,0,NULL,''),(1423,97,'Kecskemet','',0,'','KE','',1,0,NULL,0,NULL,''),(1424,97,'Komarom-Esztergom','',0,'','KO','',1,0,NULL,0,NULL,''),(1425,97,'Miskolc','',0,'','MI','',1,0,NULL,0,NULL,''),(1426,97,'Nagykanizsa','',0,'','NA','',1,0,NULL,0,NULL,''),(1427,97,'Nograd','',0,'','NO','',1,0,NULL,0,NULL,''),(1428,97,'Nyiregyhaza','',0,'','NY','',1,0,NULL,0,NULL,''),(1429,97,'Pecs','',0,'','PE','',1,0,NULL,0,NULL,''),(1430,97,'Pest','',0,'','PS','',1,0,NULL,0,NULL,''),(1431,97,'Somogy','',0,'','SO','',1,0,NULL,0,NULL,''),(1432,97,'Sopron','',0,'','SP','',1,0,NULL,0,NULL,''),(1433,97,'Szabolcs-Szatmar-Bereg','',0,'','SS','',1,0,NULL,0,NULL,''),(1434,97,'Szeged','',0,'','SZ','',1,0,NULL,0,NULL,''),(1435,97,'Szekesfehervar','',0,'','SE','',1,0,NULL,0,NULL,''),(1436,97,'Szolnok','',0,'','SL','',1,0,NULL,0,NULL,''),(1437,97,'Szombathely','',0,'','SM','',1,0,NULL,0,NULL,''),(1438,97,'Tatabanya','',0,'','TA','',1,0,NULL,0,NULL,''),(1439,97,'Tolna','',0,'','TO','',1,0,NULL,0,NULL,''),(1440,97,'Vas','',0,'','VA','',1,0,NULL,0,NULL,''),(1441,97,'Veszprem','',0,'','VE','',1,0,NULL,0,NULL,''),(1442,97,'Zala','',0,'','ZA','',1,0,NULL,0,NULL,''),(1443,97,'Zalaegerszeg','',0,'','ZZ','',1,0,NULL,0,NULL,''),(1444,98,'Austurland','',0,'','AL','',1,0,NULL,0,NULL,''),(1445,98,'Hofuoborgarsvaeoi','',0,'','HF','',1,0,NULL,0,NULL,''),(1446,98,'Norourland eystra','',0,'','NE','',1,0,NULL,0,NULL,''),(1447,98,'Norourland vestra','',0,'','NV','',1,0,NULL,0,NULL,''),(1448,98,'Suourland','',0,'','SL','',1,0,NULL,0,NULL,''),(1449,98,'Suournes','',0,'','SN','',1,0,NULL,0,NULL,''),(1450,98,'Vestfiroir','',0,'','VF','',1,0,NULL,0,NULL,''),(1451,98,'Vesturland','',0,'','VL','',1,0,NULL,0,NULL,''),(1452,99,'Andaman and Nicobar Islands','',0,'','AN','',1,0,NULL,0,NULL,''),(1453,99,'Andhra Pradesh','',0,'','AP','',1,0,NULL,0,NULL,''),(1454,99,'Arunachal Pradesh','',0,'','AR','',1,0,NULL,0,NULL,''),(1455,99,'Assam','',0,'','AS','',1,0,NULL,0,NULL,''),(1456,99,'Bihar','',0,'','BI','',1,0,NULL,0,NULL,''),(1457,99,'Chandigarh','',0,'','CH','',1,0,NULL,0,NULL,''),(1458,99,'Dadra and Nagar Haveli','',0,'','DA','',1,0,NULL,0,NULL,''),(1459,99,'Daman and Diu','',0,'','DM','',1,0,NULL,0,NULL,''),(1460,99,'Delhi','',0,'','DE','',1,0,NULL,0,NULL,''),(1461,99,'Goa','',0,'','GO','',1,0,NULL,0,NULL,''),(1462,99,'Gujarat','',0,'','GU','',1,0,NULL,0,NULL,''),(1463,99,'Haryana','',0,'','HA','',1,0,NULL,0,NULL,''),(1464,99,'Himachal Pradesh','',0,'','HP','',1,0,NULL,0,NULL,''),(1465,99,'Jammu and Kashmir','',0,'','JA','',1,0,NULL,0,NULL,''),(1466,99,'Karnataka','',0,'','KA','',1,0,NULL,0,NULL,''),(1467,99,'Kerala','',0,'','KE','',1,0,NULL,0,NULL,''),(1468,99,'Lakshadweep Islands','',0,'','LI','',1,0,NULL,0,NULL,''),(1469,99,'Madhya Pradesh','',0,'','MP','',1,0,NULL,0,NULL,''),(1470,99,'Maharashtra','',0,'','MA','',1,0,NULL,0,NULL,''),(1471,99,'Manipur','',0,'','MN','',1,0,NULL,0,NULL,''),(1472,99,'Meghalaya','',0,'','ME','',1,0,NULL,0,NULL,''),(1473,99,'Mizoram','',0,'','MI','',1,0,NULL,0,NULL,''),(1474,99,'Nagaland','',0,'','NA','',1,0,NULL,0,NULL,''),(1475,99,'Orissa','',0,'','OR','',1,0,NULL,0,NULL,''),(1476,99,'Pondicherry','',0,'','PO','',1,0,NULL,0,NULL,''),(1477,99,'Punjab','',0,'','PU','',1,0,NULL,0,NULL,''),(1478,99,'Rajasthan','',0,'','RA','',1,0,NULL,0,NULL,''),(1479,99,'Sikkim','',0,'','SI','',1,0,NULL,0,NULL,''),(1480,99,'Tamil Nadu','',0,'','TN','',1,0,NULL,0,NULL,''),(1481,99,'Tripura','',0,'','TR','',1,0,NULL,0,NULL,''),(1482,99,'Uttar Pradesh','',0,'','UP','',1,0,NULL,0,NULL,''),(1483,99,'West Bengal','',0,'','WB','',1,0,NULL,0,NULL,''),(1484,100,'Aceh','',0,'','AC','',1,0,NULL,0,NULL,''),(1485,100,'Bali','',0,'','BA','',1,0,NULL,0,NULL,''),(1486,100,'Banten','',0,'','BT','',1,0,NULL,0,NULL,''),(1487,100,'Bengkulu','',0,'','BE','',1,0,NULL,0,NULL,''),(1488,100,'BoDeTaBek','',0,'','BD','',1,0,NULL,0,NULL,''),(1489,100,'Gorontalo','',0,'','GO','',1,0,NULL,0,NULL,''),(1490,100,'Jakarta Raya','',0,'','JK','',1,0,NULL,0,NULL,''),(1491,100,'Jambi','',0,'','JA','',1,0,NULL,0,NULL,''),(1492,100,'Jawa Barat','',0,'','JB','',1,0,NULL,0,NULL,''),(1493,100,'Jawa Tengah','',0,'','JT','',1,0,NULL,0,NULL,''),(1494,100,'Jawa Timur','',0,'','JI','',1,0,NULL,0,NULL,''),(1495,100,'Kalimantan Barat','',0,'','KB','',1,0,NULL,0,NULL,''),(1496,100,'Kalimantan Selatan','',0,'','KS','',1,0,NULL,0,NULL,''),(1497,100,'Kalimantan Tengah','',0,'','KT','',1,0,NULL,0,NULL,''),(1498,100,'Kalimantan Timur','',0,'','KI','',1,0,NULL,0,NULL,''),(1499,100,'Kepulauan Bangka Belitung','',0,'','BB','',1,0,NULL,0,NULL,''),(1500,100,'Lampung','',0,'','LA','',1,0,NULL,0,NULL,''),(1501,100,'Maluku','',0,'','MA','',1,0,NULL,0,NULL,''),(1502,100,'Maluku Utara','',0,'','MU','',1,0,NULL,0,NULL,''),(1503,100,'Nusa Tenggara Barat','',0,'','NB','',1,0,NULL,0,NULL,''),(1504,100,'Nusa Tenggara Timur','',0,'','NT','',1,0,NULL,0,NULL,''),(1505,100,'Papua','',0,'','PA','',1,0,NULL,0,NULL,''),(1506,100,'Riau','',0,'','RI','',1,0,NULL,0,NULL,''),(1507,100,'Sulawesi Selatan','',0,'','SN','',1,0,NULL,0,NULL,''),(1508,100,'Sulawesi Tengah','',0,'','ST','',1,0,NULL,0,NULL,''),(1509,100,'Sulawesi Tenggara','',0,'','SG','',1,0,NULL,0,NULL,''),(1510,100,'Sulawesi Utara','',0,'','SA','',1,0,NULL,0,NULL,''),(1511,100,'Sumatera Barat','',0,'','SB','',1,0,NULL,0,NULL,''),(1512,100,'Sumatera Selatan','',0,'','SS','',1,0,NULL,0,NULL,''),(1513,100,'Sumatera Utara','',0,'','SU','',1,0,NULL,0,NULL,''),(1514,100,'Yogyakarta','',0,'','YO','',1,0,NULL,0,NULL,''),(1515,101,'Tehran','',0,'','TEH','',1,0,NULL,0,NULL,''),(1516,101,'Qom','',0,'','QOM','',1,0,NULL,0,NULL,''),(1517,101,'Markazi','',0,'','MKZ','',1,0,NULL,0,NULL,''),(1518,101,'Qazvin','',0,'','QAZ','',1,0,NULL,0,NULL,''),(1519,101,'Gilan','',0,'','GIL','',1,0,NULL,0,NULL,''),(1520,101,'Ardabil','',0,'','ARD','',1,0,NULL,0,NULL,''),(1521,101,'Zanjan','',0,'','ZAN','',1,0,NULL,0,NULL,''),(1522,101,'East Azarbaijan','',0,'','EAZ','',1,0,NULL,0,NULL,''),(1523,101,'West Azarbaijan','',0,'','WEZ','',1,0,NULL,0,NULL,''),(1524,101,'Kurdistan','',0,'','KRD','',1,0,NULL,0,NULL,''),(1525,101,'Hamadan','',0,'','HMD','',1,0,NULL,0,NULL,''),(1526,101,'Kermanshah','',0,'','KRM','',1,0,NULL,0,NULL,''),(1527,101,'Ilam','',0,'','ILM','',1,0,NULL,0,NULL,''),(1528,101,'Lorestan','',0,'','LRS','',1,0,NULL,0,NULL,''),(1529,101,'Khuzestan','',0,'','KZT','',1,0,NULL,0,NULL,''),(1530,101,'Chahar Mahaal and Bakhtiari','',0,'','CMB','',1,0,NULL,0,NULL,''),(1531,101,'Kohkiluyeh and Buyer Ahmad','',0,'','KBA','',1,0,NULL,0,NULL,''),(1532,101,'Bushehr','',0,'','BSH','',1,0,NULL,0,NULL,''),(1533,101,'Fars','',0,'','FAR','',1,0,NULL,0,NULL,''),(1534,101,'Hormozgan','',0,'','HRM','',1,0,NULL,0,NULL,''),(1535,101,'Sistan and Baluchistan','',0,'','SBL','',1,0,NULL,0,NULL,''),(1536,101,'Kerman','',0,'','KRB','',1,0,NULL,0,NULL,''),(1537,101,'Yazd','',0,'','YZD','',1,0,NULL,0,NULL,''),(1538,101,'Esfahan','',0,'','EFH','',1,0,NULL,0,NULL,''),(1539,101,'Semnan','',0,'','SMN','',1,0,NULL,0,NULL,''),(1540,101,'Mazandaran','',0,'','MZD','',1,0,NULL,0,NULL,''),(1541,101,'Golestan','',0,'','GLS','',1,0,NULL,0,NULL,''),(1542,101,'North Khorasan','',0,'','NKH','',1,0,NULL,0,NULL,''),(1543,101,'Razavi Khorasan','',0,'','RKH','',1,0,NULL,0,NULL,''),(1544,101,'South Khorasan','',0,'','SKH','',1,0,NULL,0,NULL,''),(1545,102,'Baghdad','',0,'','BD','',1,0,NULL,0,NULL,''),(1546,102,'Salah ad Din','',0,'','SD','',1,0,NULL,0,NULL,''),(1547,102,'Diyala','',0,'','DY','',1,0,NULL,0,NULL,''),(1548,102,'Wasit','',0,'','WS','',1,0,NULL,0,NULL,''),(1549,102,'Maysan','',0,'','MY','',1,0,NULL,0,NULL,''),(1550,102,'Al Basrah','',0,'','BA','',1,0,NULL,0,NULL,''),(1551,102,'Dhi Qar','',0,'','DQ','',1,0,NULL,0,NULL,''),(1552,102,'Al Muthanna','',0,'','MU','',1,0,NULL,0,NULL,''),(1553,102,'Al Qadisyah','',0,'','QA','',1,0,NULL,0,NULL,''),(1554,102,'Babil','',0,'','BB','',1,0,NULL,0,NULL,''),(1555,102,'Al Karbala','',0,'','KB','',1,0,NULL,0,NULL,''),(1556,102,'An Najaf','',0,'','NJ','',1,0,NULL,0,NULL,''),(1557,102,'Al Anbar','',0,'','AB','',1,0,NULL,0,NULL,''),(1558,102,'Ninawa','',0,'','NN','',1,0,NULL,0,NULL,''),(1559,102,'Dahuk','',0,'','DH','',1,0,NULL,0,NULL,''),(1560,102,'Arbil','',0,'','AL','',1,0,NULL,0,NULL,''),(1561,102,'At Ta\'mim','',0,'','TM','',1,0,NULL,0,NULL,''),(1562,102,'As Sulaymaniyah','',0,'','SL','',1,0,NULL,0,NULL,''),(1563,103,'Carlow','',0,'','CA','',1,0,NULL,0,NULL,''),(1564,103,'Cavan','',0,'','CV','',1,0,NULL,0,NULL,''),(1565,103,'Clare','',0,'','CL','',1,0,NULL,0,NULL,''),(1566,103,'Cork','',0,'','CO','',1,0,NULL,0,NULL,''),(1567,103,'Donegal','',0,'','DO','',1,0,NULL,0,NULL,''),(1568,103,'Dublin','',0,'','DU','',1,0,NULL,0,NULL,''),(1569,103,'Galway','',0,'','GA','',1,0,NULL,0,NULL,''),(1570,103,'Kerry','',0,'','KE','',1,0,NULL,0,NULL,''),(1571,103,'Kildare','',0,'','KI','',1,0,NULL,0,NULL,''),(1572,103,'Kilkenny','',0,'','KL','',1,0,NULL,0,NULL,''),(1573,103,'Laois','',0,'','LA','',1,0,NULL,0,NULL,''),(1574,103,'Leitrim','',0,'','LE','',1,0,NULL,0,NULL,''),(1575,103,'Limerick','',0,'','LI','',1,0,NULL,0,NULL,''),(1576,103,'Longford','',0,'','LO','',1,0,NULL,0,NULL,''),(1577,103,'Louth','',0,'','LU','',1,0,NULL,0,NULL,''),(1578,103,'Mayo','',0,'','MA','',1,0,NULL,0,NULL,''),(1579,103,'Meath','',0,'','ME','',1,0,NULL,0,NULL,''),(1580,103,'Monaghan','',0,'','MO','',1,0,NULL,0,NULL,''),(1581,103,'Offaly','',0,'','OF','',1,0,NULL,0,NULL,''),(1582,103,'Roscommon','',0,'','RO','',1,0,NULL,0,NULL,''),(1583,103,'Sligo','',0,'','SL','',1,0,NULL,0,NULL,''),(1584,103,'Tipperary','',0,'','TI','',1,0,NULL,0,NULL,''),(1585,103,'Waterford','',0,'','WA','',1,0,NULL,0,NULL,''),(1586,103,'Westmeath','',0,'','WE','',1,0,NULL,0,NULL,''),(1587,103,'Wexford','',0,'','WX','',1,0,NULL,0,NULL,''),(1588,103,'Wicklow','',0,'','WI','',1,0,NULL,0,NULL,''),(1589,104,'Be\'er Sheva','',0,'','BS','',1,0,NULL,0,NULL,''),(1590,104,'Bika\'at Hayarden','',0,'','BH','',1,0,NULL,0,NULL,''),(1591,104,'Eilat and Arava','',0,'','EA','',1,0,NULL,0,NULL,''),(1592,104,'Galil','',0,'','GA','',1,0,NULL,0,NULL,''),(1593,104,'Haifa','',0,'','HA','',1,0,NULL,0,NULL,''),(1594,104,'Jehuda Mountains','',0,'','JM','',1,0,NULL,0,NULL,''),(1595,104,'Jerusalem','',0,'','JE','',1,0,NULL,0,NULL,''),(1596,104,'Negev','',0,'','NE','',1,0,NULL,0,NULL,''),(1597,104,'Semaria','',0,'','SE','',1,0,NULL,0,NULL,''),(1598,104,'Sharon','',0,'','SH','',1,0,NULL,0,NULL,''),(1599,104,'Tel Aviv (Gosh Dan)','',0,'','TA','',1,0,NULL,0,NULL,''),(1600,105,'Caltanissetta','',0,'','CL','',1,0,NULL,0,NULL,''),(1601,105,'Agrigento','',0,'','AG','',1,0,NULL,0,NULL,''),(1602,105,'Alessandria','',0,'','AL','',1,0,NULL,0,NULL,''),(1603,105,'Ancona','',0,'','AN','',1,0,NULL,0,NULL,''),(1604,105,'Aosta','',0,'','AO','',1,0,NULL,0,NULL,''),(1605,105,'Arezzo','',0,'','AR','',1,0,NULL,0,NULL,''),(1606,105,'Ascoli Piceno','',0,'','AP','',1,0,NULL,0,NULL,''),(1607,105,'Asti','',0,'','AT','',1,0,NULL,0,NULL,''),(1608,105,'Avellino','',0,'','AV','',1,0,NULL,0,NULL,''),(1609,105,'Bari','',0,'','BA','',1,0,NULL,0,NULL,''),(1610,105,'Belluno','',0,'','BL','',1,0,NULL,0,NULL,''),(1611,105,'Benevento','',0,'','BN','',1,0,NULL,0,NULL,''),(1612,105,'Bergamo','',0,'','BG','',1,0,NULL,0,NULL,''),(1613,105,'Biella','',0,'','BI','',1,0,NULL,0,NULL,''),(1614,105,'Bologna','',0,'','BO','',1,0,NULL,0,NULL,''),(1615,105,'Bolzano','',0,'','BZ','',1,0,NULL,0,NULL,''),(1616,105,'Brescia','',0,'','BS','',1,0,NULL,0,NULL,''),(1617,105,'Brindisi','',0,'','BR','',1,0,NULL,0,NULL,''),(1618,105,'Cagliari','',0,'','CA','',1,0,NULL,0,NULL,''),(1619,106,'Clarendon Parish','',0,'','CLA','',1,0,NULL,0,NULL,''),(1620,106,'Hanover Parish','',0,'','HAN','',1,0,NULL,0,NULL,''),(1621,106,'Kingston Parish','',0,'','KIN','',1,0,NULL,0,NULL,''),(1622,106,'Manchester Parish','',0,'','MAN','',1,0,NULL,0,NULL,''),(1623,106,'Portland Parish','',0,'','POR','',1,0,NULL,0,NULL,''),(1624,106,'Saint Andrew Parish','',0,'','AND','',1,0,NULL,0,NULL,''),(1625,106,'Saint Ann Parish','',0,'','ANN','',1,0,NULL,0,NULL,''),(1626,106,'Saint Catherine Parish','',0,'','CAT','',1,0,NULL,0,NULL,''),(1627,106,'Saint Elizabeth Parish','',0,'','ELI','',1,0,NULL,0,NULL,''),(1628,106,'Saint James Parish','',0,'','JAM','',1,0,NULL,0,NULL,''),(1629,106,'Saint Mary Parish','',0,'','MAR','',1,0,NULL,0,NULL,''),(1630,106,'Saint Thomas Parish','',0,'','THO','',1,0,NULL,0,NULL,''),(1631,106,'Trelawny Parish','',0,'','TRL','',1,0,NULL,0,NULL,''),(1632,106,'Westmoreland Parish','',0,'','WML','',1,0,NULL,0,NULL,''),(1633,107,'Aichi','',0,'','AI','',1,0,NULL,0,NULL,''),(1634,107,'Akita','',0,'','AK','',1,0,NULL,0,NULL,''),(1635,107,'Aomori','',0,'','AO','',1,0,NULL,0,NULL,''),(1636,107,'Chiba','',0,'','CH','',1,0,NULL,0,NULL,''),(1637,107,'Ehime','',0,'','EH','',1,0,NULL,0,NULL,''),(1638,107,'Fukui','',0,'','FK','',1,0,NULL,0,NULL,''),(1639,107,'Fukuoka','',0,'','FU','',1,0,NULL,0,NULL,''),(1640,107,'Fukushima','',0,'','FS','',1,0,NULL,0,NULL,''),(1641,107,'Gifu','',0,'','GI','',1,0,NULL,0,NULL,''),(1642,107,'Gumma','',0,'','GU','',1,0,NULL,0,NULL,''),(1643,107,'Hiroshima','',0,'','HI','',1,0,NULL,0,NULL,''),(1644,107,'Hokkaido','',0,'','HO','',1,0,NULL,0,NULL,''),(1645,107,'Hyogo','',0,'','HY','',1,0,NULL,0,NULL,''),(1646,107,'Ibaraki','',0,'','IB','',1,0,NULL,0,NULL,''),(1647,107,'Ishikawa','',0,'','IS','',1,0,NULL,0,NULL,''),(1648,107,'Iwate','',0,'','IW','',1,0,NULL,0,NULL,''),(1649,107,'Kagawa','',0,'','KA','',1,0,NULL,0,NULL,''),(1650,107,'Kagoshima','',0,'','KG','',1,0,NULL,0,NULL,''),(1651,107,'Kanagawa','',0,'','KN','',1,0,NULL,0,NULL,''),(1652,107,'Kochi','',0,'','KO','',1,0,NULL,0,NULL,''),(1653,107,'Kumamoto','',0,'','KU','',1,0,NULL,0,NULL,''),(1654,107,'Kyoto','',0,'','KY','',1,0,NULL,0,NULL,''),(1655,107,'Mie','',0,'','MI','',1,0,NULL,0,NULL,''),(1656,107,'Miyagi','',0,'','MY','',1,0,NULL,0,NULL,''),(1657,107,'Miyazaki','',0,'','MZ','',1,0,NULL,0,NULL,''),(1658,107,'Nagano','',0,'','NA','',1,0,NULL,0,NULL,''),(1659,107,'Nagasaki','',0,'','NG','',1,0,NULL,0,NULL,''),(1660,107,'Nara','',0,'','NR','',1,0,NULL,0,NULL,''),(1661,107,'Niigata','',0,'','NI','',1,0,NULL,0,NULL,''),(1662,107,'Oita','',0,'','OI','',1,0,NULL,0,NULL,''),(1663,107,'Okayama','',0,'','OK','',1,0,NULL,0,NULL,''),(1664,107,'Okinawa','',0,'','ON','',1,0,NULL,0,NULL,''),(1665,107,'Osaka','',0,'','OS','',1,0,NULL,0,NULL,''),(1666,107,'Saga','',0,'','SA','',1,0,NULL,0,NULL,''),(1667,107,'Saitama','',0,'','SI','',1,0,NULL,0,NULL,''),(1668,107,'Shiga','',0,'','SH','',1,0,NULL,0,NULL,''),(1669,107,'Shimane','',0,'','SM','',1,0,NULL,0,NULL,''),(1670,107,'Shizuoka','',0,'','SZ','',1,0,NULL,0,NULL,''),(1671,107,'Tochigi','',0,'','TO','',1,0,NULL,0,NULL,''),(1672,107,'Tokushima','',0,'','TS','',1,0,NULL,0,NULL,''),(1673,107,'Tokyo','',0,'','TK','',1,0,NULL,0,NULL,''),(1674,107,'Tottori','',0,'','TT','',1,0,NULL,0,NULL,''),(1675,107,'Toyama','',0,'','TY','',1,0,NULL,0,NULL,''),(1676,107,'Wakayama','',0,'','WA','',1,0,NULL,0,NULL,''),(1677,107,'Yamagata','',0,'','YA','',1,0,NULL,0,NULL,''),(1678,107,'Yamaguchi','',0,'','YM','',1,0,NULL,0,NULL,''),(1679,107,'Yamanashi','',0,'','YN','',1,0,NULL,0,NULL,''),(1680,108,'\'Amman','',0,'','AM','',1,0,NULL,0,NULL,''),(1681,108,'Ajlun','',0,'','AJ','',1,0,NULL,0,NULL,''),(1682,108,'Al \'Aqabah','',0,'','AA','',1,0,NULL,0,NULL,''),(1683,108,'Al Balqa\'','',0,'','AB','',1,0,NULL,0,NULL,''),(1684,108,'Al Karak','',0,'','AK','',1,0,NULL,0,NULL,''),(1685,108,'Al Mafraq','',0,'','AL','',1,0,NULL,0,NULL,''),(1686,108,'At Tafilah','',0,'','AT','',1,0,NULL,0,NULL,''),(1687,108,'Az Zarqa\'','',0,'','AZ','',1,0,NULL,0,NULL,''),(1688,108,'Irbid','',0,'','IR','',1,0,NULL,0,NULL,''),(1689,108,'Jarash','',0,'','JA','',1,0,NULL,0,NULL,''),(1690,108,'Ma\'an','',0,'','MA','',1,0,NULL,0,NULL,''),(1691,108,'Madaba','',0,'','MD','',1,0,NULL,0,NULL,''),(1692,109,'Almaty','',0,'','AL','',1,0,NULL,0,NULL,''),(1693,109,'Almaty City','',0,'','AC','',1,0,NULL,0,NULL,''),(1694,109,'Aqmola','',0,'','AM','',1,0,NULL,0,NULL,''),(1695,109,'Aqtobe','',0,'','AQ','',1,0,NULL,0,NULL,''),(1696,109,'Astana City','',0,'','AS','',1,0,NULL,0,NULL,''),(1697,109,'Atyrau','',0,'','AT','',1,0,NULL,0,NULL,''),(1698,109,'Batys Qazaqstan','',0,'','BA','',1,0,NULL,0,NULL,''),(1699,109,'Bayqongyr City','',0,'','BY','',1,0,NULL,0,NULL,''),(1700,109,'Mangghystau','',0,'','MA','',1,0,NULL,0,NULL,''),(1701,109,'Ongtustik Qazaqstan','',0,'','ON','',1,0,NULL,0,NULL,''),(1702,109,'Pavlodar','',0,'','PA','',1,0,NULL,0,NULL,''),(1703,109,'Qaraghandy','',0,'','QA','',1,0,NULL,0,NULL,''),(1704,109,'Qostanay','',0,'','QO','',1,0,NULL,0,NULL,''),(1705,109,'Qyzylorda','',0,'','QY','',1,0,NULL,0,NULL,''),(1706,109,'Shyghys Qazaqstan','',0,'','SH','',1,0,NULL,0,NULL,''),(1707,109,'Soltustik Qazaqstan','',0,'','SO','',1,0,NULL,0,NULL,''),(1708,109,'Zhambyl','',0,'','ZH','',1,0,NULL,0,NULL,''),(1709,110,'Central','',0,'','CE','',1,0,NULL,0,NULL,''),(1710,110,'Coast','',0,'','CO','',1,0,NULL,0,NULL,''),(1711,110,'Eastern','',0,'','EA','',1,0,NULL,0,NULL,''),(1712,110,'Nairobi Area','',0,'','NA','',1,0,NULL,0,NULL,''),(1713,110,'North Eastern','',0,'','NE','',1,0,NULL,0,NULL,''),(1714,110,'Nyanza','',0,'','NY','',1,0,NULL,0,NULL,''),(1715,110,'Rift Valley','',0,'','RV','',1,0,NULL,0,NULL,''),(1716,110,'Western','',0,'','WE','',1,0,NULL,0,NULL,''),(1717,111,'Abaiang','',0,'','AG','',1,0,NULL,0,NULL,''),(1718,111,'Abemama','',0,'','AM','',1,0,NULL,0,NULL,''),(1719,111,'Aranuka','',0,'','AK','',1,0,NULL,0,NULL,''),(1720,111,'Arorae','',0,'','AO','',1,0,NULL,0,NULL,''),(1721,111,'Banaba','',0,'','BA','',1,0,NULL,0,NULL,''),(1722,111,'Beru','',0,'','BE','',1,0,NULL,0,NULL,''),(1723,111,'Butaritari','',0,'','bT','',1,0,NULL,0,NULL,''),(1724,111,'Kanton','',0,'','KA','',1,0,NULL,0,NULL,''),(1725,111,'Kiritimati','',0,'','KR','',1,0,NULL,0,NULL,''),(1726,111,'Kuria','',0,'','KU','',1,0,NULL,0,NULL,''),(1727,111,'Maiana','',0,'','MI','',1,0,NULL,0,NULL,''),(1728,111,'Makin','',0,'','MN','',1,0,NULL,0,NULL,''),(1729,111,'Marakei','',0,'','ME','',1,0,NULL,0,NULL,''),(1730,111,'Nikunau','',0,'','NI','',1,0,NULL,0,NULL,''),(1731,111,'Nonouti','',0,'','NO','',1,0,NULL,0,NULL,''),(1732,111,'Onotoa','',0,'','ON','',1,0,NULL,0,NULL,''),(1733,111,'Tabiteuea','',0,'','TT','',1,0,NULL,0,NULL,''),(1734,111,'Tabuaeran','',0,'','TR','',1,0,NULL,0,NULL,''),(1735,111,'Tamana','',0,'','TM','',1,0,NULL,0,NULL,''),(1736,111,'Tarawa','',0,'','TW','',1,0,NULL,0,NULL,''),(1737,111,'Teraina','',0,'','TE','',1,0,NULL,0,NULL,''),(1738,112,'Chagang-do','',0,'','CHA','',1,0,NULL,0,NULL,''),(1739,112,'Hamgyong-bukto','',0,'','HAB','',1,0,NULL,0,NULL,''),(1740,112,'Hamgyong-namdo','',0,'','HAN','',1,0,NULL,0,NULL,''),(1741,112,'Hwanghae-bukto','',0,'','HWB','',1,0,NULL,0,NULL,''),(1742,112,'Hwanghae-namdo','',0,'','HWN','',1,0,NULL,0,NULL,''),(1743,112,'Kangwon-do','',0,'','KAN','',1,0,NULL,0,NULL,''),(1744,112,'P\'yongan-bukto','',0,'','PYB','',1,0,NULL,0,NULL,''),(1745,112,'P\'yongan-namdo','',0,'','PYN','',1,0,NULL,0,NULL,''),(1746,112,'Ryanggang-do (Yanggang-do)','',0,'','YAN','',1,0,NULL,0,NULL,''),(1747,112,'Rason Directly Governed City','',0,'','NAJ','',1,0,NULL,0,NULL,''),(1748,112,'P\'yongyang Special City','',0,'','PYO','',1,0,NULL,0,NULL,''),(1749,113,'Ch\'ungch\'ong-bukto','',0,'','CO','',1,0,NULL,0,NULL,''),(1750,113,'Ch\'ungch\'ong-namdo','',0,'','CH','',1,0,NULL,0,NULL,''),(1751,113,'Cheju-do','',0,'','CD','',1,0,NULL,0,NULL,''),(1752,113,'Cholla-bukto','',0,'','CB','',1,0,NULL,0,NULL,''),(1753,113,'Cholla-namdo','',0,'','CN','',1,0,NULL,0,NULL,''),(1754,113,'Inch\'on-gwangyoksi','',0,'','IG','',1,0,NULL,0,NULL,''),(1755,113,'Kangwon-do','',0,'','KA','',1,0,NULL,0,NULL,''),(1756,113,'Kwangju-gwangyoksi','',0,'','KG','',1,0,NULL,0,NULL,''),(1757,113,'Kyonggi-do','',0,'','KD','',1,0,NULL,0,NULL,''),(1758,113,'Kyongsang-bukto','',0,'','KB','',1,0,NULL,0,NULL,''),(1759,113,'Kyongsang-namdo','',0,'','KN','',1,0,NULL,0,NULL,''),(1760,113,'Pusan-gwangyoksi','',0,'','PG','',1,0,NULL,0,NULL,''),(1761,113,'Soul-t\'ukpyolsi','',0,'','SO','',1,0,NULL,0,NULL,''),(1762,113,'Taegu-gwangyoksi','',0,'','TA','',1,0,NULL,0,NULL,''),(1763,113,'Taejon-gwangyoksi','',0,'','TG','',1,0,NULL,0,NULL,''),(1764,114,'Al \'Asimah','',0,'','AL','',1,0,NULL,0,NULL,''),(1765,114,'Al Ahmadi','',0,'','AA','',1,0,NULL,0,NULL,''),(1766,114,'Al Farwaniyah','',0,'','AF','',1,0,NULL,0,NULL,''),(1767,114,'Al Jahra\'','',0,'','AJ','',1,0,NULL,0,NULL,''),(1768,114,'Hawalli','',0,'','HA','',1,0,NULL,0,NULL,''),(1769,115,'Bishkek','',0,'','GB','',1,0,NULL,0,NULL,''),(1770,115,'Batken','',0,'','B','',1,0,NULL,0,NULL,''),(1771,115,'Chu','',0,'','C','',1,0,NULL,0,NULL,''),(1772,115,'Jalal-Abad','',0,'','J','',1,0,NULL,0,NULL,''),(1773,115,'Naryn','',0,'','N','',1,0,NULL,0,NULL,''),(1774,115,'Osh','',0,'','O','',1,0,NULL,0,NULL,''),(1775,115,'Talas','',0,'','T','',1,0,NULL,0,NULL,''),(1776,115,'Ysyk-Kol','',0,'','Y','',1,0,NULL,0,NULL,''),(1777,116,'Vientiane','',0,'','VT','',1,0,NULL,0,NULL,''),(1778,116,'Attapu','',0,'','AT','',1,0,NULL,0,NULL,''),(1779,116,'Bokeo','',0,'','BK','',1,0,NULL,0,NULL,''),(1780,116,'Bolikhamxai','',0,'','BL','',1,0,NULL,0,NULL,''),(1781,116,'Champasak','',0,'','CH','',1,0,NULL,0,NULL,''),(1782,116,'Houaphan','',0,'','HO','',1,0,NULL,0,NULL,''),(1783,116,'Khammouan','',0,'','KH','',1,0,NULL,0,NULL,''),(1784,116,'Louang Namtha','',0,'','LM','',1,0,NULL,0,NULL,''),(1785,116,'Louangphabang','',0,'','LP','',1,0,NULL,0,NULL,''),(1786,116,'Oudomxai','',0,'','OU','',1,0,NULL,0,NULL,''),(1787,116,'Phongsali','',0,'','PH','',1,0,NULL,0,NULL,''),(1788,116,'Salavan','',0,'','SL','',1,0,NULL,0,NULL,''),(1789,116,'Savannakhet','',0,'','SV','',1,0,NULL,0,NULL,''),(1790,116,'Vientiane','',0,'','VI','',1,0,NULL,0,NULL,''),(1791,116,'Xaignabouli','',0,'','XA','',1,0,NULL,0,NULL,''),(1792,116,'Xekong','',0,'','XE','',1,0,NULL,0,NULL,''),(1793,116,'Xiangkhoang','',0,'','XI','',1,0,NULL,0,NULL,''),(1794,116,'Xaisomboun','',0,'','XN','',1,0,NULL,0,NULL,''),(1795,117,'Aizkraukles Rajons','',0,'','AIZ','',1,0,NULL,0,NULL,''),(1796,117,'Aluksnes Rajons','',0,'','ALU','',1,0,NULL,0,NULL,''),(1797,117,'Balvu Rajons','',0,'','BAL','',1,0,NULL,0,NULL,''),(1798,117,'Bauskas Rajons','',0,'','BAU','',1,0,NULL,0,NULL,''),(1799,117,'Cesu Rajons','',0,'','CES','',1,0,NULL,0,NULL,''),(1800,117,'Daugavpils Rajons','',0,'','DGR','',1,0,NULL,0,NULL,''),(1801,117,'Dobeles Rajons','',0,'','DOB','',1,0,NULL,0,NULL,''),(1802,117,'Gulbenes Rajons','',0,'','GUL','',1,0,NULL,0,NULL,''),(1803,117,'Jekabpils Rajons','',0,'','JEK','',1,0,NULL,0,NULL,''),(1804,117,'Jelgavas Rajons','',0,'','JGR','',1,0,NULL,0,NULL,''),(1805,117,'Kraslavas Rajons','',0,'','KRA','',1,0,NULL,0,NULL,''),(1806,117,'Kuldigas Rajons','',0,'','KUL','',1,0,NULL,0,NULL,''),(1807,117,'Liepajas Rajons','',0,'','LPR','',1,0,NULL,0,NULL,''),(1808,117,'Limbazu Rajons','',0,'','LIM','',1,0,NULL,0,NULL,''),(1809,117,'Ludzas Rajons','',0,'','LUD','',1,0,NULL,0,NULL,''),(1810,117,'Madonas Rajons','',0,'','MAD','',1,0,NULL,0,NULL,''),(1811,117,'Ogres Rajons','',0,'','OGR','',1,0,NULL,0,NULL,''),(1812,117,'Preilu Rajons','',0,'','PRE','',1,0,NULL,0,NULL,''),(1813,117,'Rezeknes Rajons','',0,'','RZR','',1,0,NULL,0,NULL,''),(1814,117,'Rigas Rajons','',0,'','RGR','',1,0,NULL,0,NULL,''),(1815,117,'Saldus Rajons','',0,'','SAL','',1,0,NULL,0,NULL,''),(1816,117,'Talsu Rajons','',0,'','TAL','',1,0,NULL,0,NULL,''),(1817,117,'Tukuma Rajons','',0,'','TUK','',1,0,NULL,0,NULL,''),(1818,117,'Valkas Rajons','',0,'','VLK','',1,0,NULL,0,NULL,''),(1819,117,'Valmieras Rajons','',0,'','VLM','',1,0,NULL,0,NULL,''),(1820,117,'Ventspils Rajons','',0,'','VSR','',1,0,NULL,0,NULL,''),(1821,117,'Daugavpils','',0,'','DGV','',1,0,NULL,0,NULL,''),(1822,117,'Jelgava','',0,'','JGV','',1,0,NULL,0,NULL,''),(1823,117,'Jurmala','',0,'','JUR','',1,0,NULL,0,NULL,''),(1824,117,'Liepaja','',0,'','LPK','',1,0,NULL,0,NULL,''),(1825,117,'Rezekne','',0,'','RZK','',1,0,NULL,0,NULL,''),(1826,117,'Riga','',0,'','RGA','',1,0,NULL,0,NULL,''),(1827,117,'Ventspils','',0,'','VSL','',1,0,NULL,0,NULL,''),(1828,119,'Berea','',0,'','BE','',1,0,NULL,0,NULL,''),(1829,119,'Butha-Buthe','',0,'','BB','',1,0,NULL,0,NULL,''),(1830,119,'Leribe','',0,'','LE','',1,0,NULL,0,NULL,''),(1831,119,'Mafeteng','',0,'','MF','',1,0,NULL,0,NULL,''),(1832,119,'Maseru','',0,'','MS','',1,0,NULL,0,NULL,''),(1833,119,'Mohale\'s Hoek','',0,'','MH','',1,0,NULL,0,NULL,''),(1834,119,'Mokhotlong','',0,'','MK','',1,0,NULL,0,NULL,''),(1835,119,'Qacha\'s Nek','',0,'','QN','',1,0,NULL,0,NULL,''),(1836,119,'Quthing','',0,'','QT','',1,0,NULL,0,NULL,''),(1837,119,'Thaba-Tseka','',0,'','TT','',1,0,NULL,0,NULL,''),(1838,120,'Bomi','',0,'','BI','',1,0,NULL,0,NULL,''),(1839,120,'Bong','',0,'','BG','',1,0,NULL,0,NULL,''),(1840,120,'Grand Bassa','',0,'','GB','',1,0,NULL,0,NULL,''),(1841,120,'Grand Cape Mount','',0,'','CM','',1,0,NULL,0,NULL,''),(1842,120,'Grand Gedeh','',0,'','GG','',1,0,NULL,0,NULL,''),(1843,120,'Grand Kru','',0,'','GK','',1,0,NULL,0,NULL,''),(1844,120,'Lofa','',0,'','LO','',1,0,NULL,0,NULL,''),(1845,120,'Margibi','',0,'','MG','',1,0,NULL,0,NULL,''),(1846,120,'Maryland','',0,'','ML','',1,0,NULL,0,NULL,''),(1847,120,'Montserrado','',0,'','MS','',1,0,NULL,0,NULL,''),(1848,120,'Nimba','',0,'','NB','',1,0,NULL,0,NULL,''),(1849,120,'River Cess','',0,'','RC','',1,0,NULL,0,NULL,''),(1850,120,'Sinoe','',0,'','SN','',1,0,NULL,0,NULL,''),(1851,121,'Ajdabiya','',0,'','AJ','',1,0,NULL,0,NULL,''),(1852,121,'Al \'Aziziyah','',0,'','AZ','',1,0,NULL,0,NULL,''),(1853,121,'Al Fatih','',0,'','FA','',1,0,NULL,0,NULL,''),(1854,121,'Al Jabal al Akhdar','',0,'','JA','',1,0,NULL,0,NULL,''),(1855,121,'Al Jufrah','',0,'','JU','',1,0,NULL,0,NULL,''),(1856,121,'Al Khums','',0,'','KH','',1,0,NULL,0,NULL,''),(1857,121,'Al Kufrah','',0,'','KU','',1,0,NULL,0,NULL,''),(1858,121,'An Nuqat al Khams','',0,'','NK','',1,0,NULL,0,NULL,''),(1859,121,'Ash Shati\'','',0,'','AS','',1,0,NULL,0,NULL,''),(1860,121,'Awbari','',0,'','AW','',1,0,NULL,0,NULL,''),(1861,121,'Az Zawiyah','',0,'','ZA','',1,0,NULL,0,NULL,''),(1862,121,'Banghazi','',0,'','BA','',1,0,NULL,0,NULL,''),(1863,121,'Darnah','',0,'','DA','',1,0,NULL,0,NULL,''),(1864,121,'Ghadamis','',0,'','GD','',1,0,NULL,0,NULL,''),(1865,121,'Gharyan','',0,'','GY','',1,0,NULL,0,NULL,''),(1866,121,'Misratah','',0,'','MI','',1,0,NULL,0,NULL,''),(1867,121,'Murzuq','',0,'','MZ','',1,0,NULL,0,NULL,''),(1868,121,'Sabha','',0,'','SB','',1,0,NULL,0,NULL,''),(1869,121,'Sawfajjin','',0,'','SW','',1,0,NULL,0,NULL,''),(1870,121,'Surt','',0,'','SU','',1,0,NULL,0,NULL,''),(1871,121,'Tarabulus (Tripoli)','',0,'','TL','',1,0,NULL,0,NULL,''),(1872,121,'Tarhunah','',0,'','TH','',1,0,NULL,0,NULL,''),(1873,121,'Tubruq','',0,'','TU','',1,0,NULL,0,NULL,''),(1874,121,'Yafran','',0,'','YA','',1,0,NULL,0,NULL,''),(1875,121,'Zlitan','',0,'','ZL','',1,0,NULL,0,NULL,''),(1876,122,'Vaduz','',0,'','V','',1,0,NULL,0,NULL,''),(1877,122,'Schaan','',0,'','A','',1,0,NULL,0,NULL,''),(1878,122,'Balzers','',0,'','B','',1,0,NULL,0,NULL,''),(1879,122,'Triesen','',0,'','N','',1,0,NULL,0,NULL,''),(1880,122,'Eschen','',0,'','E','',1,0,NULL,0,NULL,''),(1881,122,'Mauren','',0,'','M','',1,0,NULL,0,NULL,''),(1882,122,'Triesenberg','',0,'','T','',1,0,NULL,0,NULL,''),(1883,122,'Ruggell','',0,'','R','',1,0,NULL,0,NULL,''),(1884,122,'Gamprin','',0,'','G','',1,0,NULL,0,NULL,''),(1885,122,'Schellenberg','',0,'','L','',1,0,NULL,0,NULL,''),(1886,122,'Planken','',0,'','P','',1,0,NULL,0,NULL,''),(1887,123,'Alytus','',0,'','AL','',1,0,NULL,0,NULL,''),(1888,123,'Kaunas','',0,'','KA','',1,0,NULL,0,NULL,''),(1889,123,'Klaipeda','',0,'','KL','',1,0,NULL,0,NULL,''),(1890,123,'Marijampole','',0,'','MA','',1,0,NULL,0,NULL,''),(1891,123,'Panevezys','',0,'','PA','',1,0,NULL,0,NULL,''),(1892,123,'Siauliai','',0,'','SI','',1,0,NULL,0,NULL,''),(1893,123,'Taurage','',0,'','TA','',1,0,NULL,0,NULL,''),(1894,123,'Telsiai','',0,'','TE','',1,0,NULL,0,NULL,''),(1895,123,'Utena','',0,'','UT','',1,0,NULL,0,NULL,''),(1896,123,'Vilnius','',0,'','VI','',1,0,NULL,0,NULL,''),(1897,124,'Diekirch','',0,'','DD','',1,0,NULL,0,NULL,''),(1898,124,'Clervaux','',0,'','DC','',1,0,NULL,0,NULL,''),(1899,124,'Redange','',0,'','DR','',1,0,NULL,0,NULL,''),(1900,124,'Vianden','',0,'','DV','',1,0,NULL,0,NULL,''),(1901,124,'Wiltz','',0,'','DW','',1,0,NULL,0,NULL,''),(1902,124,'Grevenmacher','',0,'','GG','',1,0,NULL,0,NULL,''),(1903,124,'Echternach','',0,'','GE','',1,0,NULL,0,NULL,''),(1904,124,'Remich','',0,'','GR','',1,0,NULL,0,NULL,''),(1905,124,'Luxembourg','',0,'','LL','',1,0,NULL,0,NULL,''),(1906,124,'Capellen','',0,'','LC','',1,0,NULL,0,NULL,''),(1907,124,'Esch-sur-Alzette','',0,'','LE','',1,0,NULL,0,NULL,''),(1908,124,'Mersch','',0,'','LM','',1,0,NULL,0,NULL,''),(1909,125,'Our Lady Fatima Parish','',0,'','OLF','',1,0,NULL,0,NULL,''),(1910,125,'St. Anthony Parish','',0,'','ANT','',1,0,NULL,0,NULL,''),(1911,125,'St. Lazarus Parish','',0,'','LAZ','',1,0,NULL,0,NULL,''),(1912,125,'Cathedral Parish','',0,'','CAT','',1,0,NULL,0,NULL,''),(1913,125,'St. Lawrence Parish','',0,'','LAW','',1,0,NULL,0,NULL,''),(1914,127,'Antananarivo','',0,'','AN','',1,0,NULL,0,NULL,''),(1915,127,'Antsiranana','',0,'','AS','',1,0,NULL,0,NULL,''),(1916,127,'Fianarantsoa','',0,'','FN','',1,0,NULL,0,NULL,''),(1917,127,'Mahajanga','',0,'','MJ','',1,0,NULL,0,NULL,''),(1918,127,'Toamasina','',0,'','TM','',1,0,NULL,0,NULL,''),(1919,127,'Toliara','',0,'','TL','',1,0,NULL,0,NULL,''),(1920,128,'Balaka','',0,'','BLK','',1,0,NULL,0,NULL,''),(1921,128,'Blantyre','',0,'','BLT','',1,0,NULL,0,NULL,''),(1922,128,'Chikwawa','',0,'','CKW','',1,0,NULL,0,NULL,''),(1923,128,'Chiradzulu','',0,'','CRD','',1,0,NULL,0,NULL,''),(1924,128,'Chitipa','',0,'','CTP','',1,0,NULL,0,NULL,''),(1925,128,'Dedza','',0,'','DDZ','',1,0,NULL,0,NULL,''),(1926,128,'Dowa','',0,'','DWA','',1,0,NULL,0,NULL,''),(1927,128,'Karonga','',0,'','KRG','',1,0,NULL,0,NULL,''),(1928,128,'Kasungu','',0,'','KSG','',1,0,NULL,0,NULL,''),(1929,128,'Likoma','',0,'','LKM','',1,0,NULL,0,NULL,''),(1930,128,'Lilongwe','',0,'','LLG','',1,0,NULL,0,NULL,''),(1931,128,'Machinga','',0,'','MCG','',1,0,NULL,0,NULL,''),(1932,128,'Mangochi','',0,'','MGC','',1,0,NULL,0,NULL,''),(1933,128,'Mchinji','',0,'','MCH','',1,0,NULL,0,NULL,''),(1934,128,'Mulanje','',0,'','MLJ','',1,0,NULL,0,NULL,''),(1935,128,'Mwanza','',0,'','MWZ','',1,0,NULL,0,NULL,''),(1936,128,'Mzimba','',0,'','MZM','',1,0,NULL,0,NULL,''),(1937,128,'Ntcheu','',0,'','NTU','',1,0,NULL,0,NULL,''),(1938,128,'Nkhata Bay','',0,'','NKB','',1,0,NULL,0,NULL,''),(1939,128,'Nkhotakota','',0,'','NKH','',1,0,NULL,0,NULL,''),(1940,128,'Nsanje','',0,'','NSJ','',1,0,NULL,0,NULL,''),(1941,128,'Ntchisi','',0,'','NTI','',1,0,NULL,0,NULL,''),(1942,128,'Phalombe','',0,'','PHL','',1,0,NULL,0,NULL,''),(1943,128,'Rumphi','',0,'','RMP','',1,0,NULL,0,NULL,''),(1944,128,'Salima','',0,'','SLM','',1,0,NULL,0,NULL,''),(1945,128,'Thyolo','',0,'','THY','',1,0,NULL,0,NULL,''),(1946,128,'Zomba','',0,'','ZBA','',1,0,NULL,0,NULL,''),(1947,129,'Johor','',0,'','JO','',1,0,NULL,0,NULL,''),(1948,129,'Kedah','',0,'','KE','',1,0,NULL,0,NULL,''),(1949,129,'Kelantan','',0,'','KL','',1,0,NULL,0,NULL,''),(1950,129,'Labuan','',0,'','LA','',1,0,NULL,0,NULL,''),(1951,129,'Melaka','',0,'','ME','',1,0,NULL,0,NULL,''),(1952,129,'Negeri Sembilan','',0,'','NS','',1,0,NULL,0,NULL,''),(1953,129,'Pahang','',0,'','PA','',1,0,NULL,0,NULL,''),(1954,129,'Perak','',0,'','PE','',1,0,NULL,0,NULL,''),(1955,129,'Perlis','',0,'','PR','',1,0,NULL,0,NULL,''),(1956,129,'Pulau Pinang','',0,'','PP','',1,0,NULL,0,NULL,''),(1957,129,'Sabah','',0,'','SA','',1,0,NULL,0,NULL,''),(1958,129,'Sarawak','',0,'','SR','',1,0,NULL,0,NULL,''),(1959,129,'Selangor','',0,'','SE','',1,0,NULL,0,NULL,''),(1960,129,'Terengganu','',0,'','TE','',1,0,NULL,0,NULL,''),(1961,129,'Wilayah Persekutuan','',0,'','WP','',1,0,NULL,0,NULL,''),(1962,130,'Thiladhunmathi Uthuru','',0,'','THU','',1,0,NULL,0,NULL,''),(1963,130,'Thiladhunmathi Dhekunu','',0,'','THD','',1,0,NULL,0,NULL,''),(1964,130,'Miladhunmadulu Uthuru','',0,'','MLU','',1,0,NULL,0,NULL,''),(1965,130,'Miladhunmadulu Dhekunu','',0,'','MLD','',1,0,NULL,0,NULL,''),(1966,130,'Maalhosmadulu Uthuru','',0,'','MAU','',1,0,NULL,0,NULL,''),(1967,130,'Maalhosmadulu Dhekunu','',0,'','MAD','',1,0,NULL,0,NULL,''),(1968,130,'Faadhippolhu','',0,'','FAA','',1,0,NULL,0,NULL,''),(1969,130,'Male Atoll','',0,'','MAA','',1,0,NULL,0,NULL,''),(1970,130,'Ari Atoll Uthuru','',0,'','AAU','',1,0,NULL,0,NULL,''),(1971,130,'Ari Atoll Dheknu','',0,'','AAD','',1,0,NULL,0,NULL,''),(1972,130,'Felidhe Atoll','',0,'','FEA','',1,0,NULL,0,NULL,''),(1973,130,'Mulaku Atoll','',0,'','MUA','',1,0,NULL,0,NULL,''),(1974,130,'Nilandhe Atoll Uthuru','',0,'','NAU','',1,0,NULL,0,NULL,''),(1975,130,'Nilandhe Atoll Dhekunu','',0,'','NAD','',1,0,NULL,0,NULL,''),(1976,130,'Kolhumadulu','',0,'','KLH','',1,0,NULL,0,NULL,''),(1977,130,'Hadhdhunmathi','',0,'','HDH','',1,0,NULL,0,NULL,''),(1978,130,'Huvadhu Atoll Uthuru','',0,'','HAU','',1,0,NULL,0,NULL,''),(1979,130,'Huvadhu Atoll Dhekunu','',0,'','HAD','',1,0,NULL,0,NULL,''),(1980,130,'Fua Mulaku','',0,'','FMU','',1,0,NULL,0,NULL,''),(1981,130,'Addu','',0,'','ADD','',1,0,NULL,0,NULL,''),(1982,131,'Gao','',0,'','GA','',1,0,NULL,0,NULL,''),(1983,131,'Kayes','',0,'','KY','',1,0,NULL,0,NULL,''),(1984,131,'Kidal','',0,'','KD','',1,0,NULL,0,NULL,''),(1985,131,'Koulikoro','',0,'','KL','',1,0,NULL,0,NULL,''),(1986,131,'Mopti','',0,'','MP','',1,0,NULL,0,NULL,''),(1987,131,'Segou','',0,'','SG','',1,0,NULL,0,NULL,''),(1988,131,'Sikasso','',0,'','SK','',1,0,NULL,0,NULL,''),(1989,131,'Tombouctou','',0,'','TB','',1,0,NULL,0,NULL,''),(1990,131,'Bamako Capital District','',0,'','CD','',1,0,NULL,0,NULL,''),(1991,132,'Attard','',0,'','ATT','',1,0,NULL,0,NULL,''),(1992,132,'Balzan','',0,'','BAL','',1,0,NULL,0,NULL,''),(1993,132,'Birgu','',0,'','BGU','',1,0,NULL,0,NULL,''),(1994,132,'Birkirkara','',0,'','BKK','',1,0,NULL,0,NULL,''),(1995,132,'Birzebbuga','',0,'','BRZ','',1,0,NULL,0,NULL,''),(1996,132,'Bormla','',0,'','BOR','',1,0,NULL,0,NULL,''),(1997,132,'Dingli','',0,'','DIN','',1,0,NULL,0,NULL,''),(1998,132,'Fgura','',0,'','FGU','',1,0,NULL,0,NULL,''),(1999,132,'Floriana','',0,'','FLO','',1,0,NULL,0,NULL,''),(2000,132,'Gudja','',0,'','GDJ','',1,0,NULL,0,NULL,''),(2001,132,'Gzira','',0,'','GZR','',1,0,NULL,0,NULL,''),(2002,132,'Gargur','',0,'','GRG','',1,0,NULL,0,NULL,''),(2003,132,'Gaxaq','',0,'','GXQ','',1,0,NULL,0,NULL,''),(2004,132,'Hamrun','',0,'','HMR','',1,0,NULL,0,NULL,''),(2005,132,'Iklin','',0,'','IKL','',1,0,NULL,0,NULL,''),(2006,132,'Isla','',0,'','ISL','',1,0,NULL,0,NULL,''),(2007,132,'Kalkara','',0,'','KLK','',1,0,NULL,0,NULL,''),(2008,132,'Kirkop','',0,'','KRK','',1,0,NULL,0,NULL,''),(2009,132,'Lija','',0,'','LIJ','',1,0,NULL,0,NULL,''),(2010,132,'Luqa','',0,'','LUQ','',1,0,NULL,0,NULL,''),(2011,132,'Marsa','',0,'','MRS','',1,0,NULL,0,NULL,''),(2012,132,'Marsaskala','',0,'','MKL','',1,0,NULL,0,NULL,''),(2013,132,'Marsaxlokk','',0,'','MXL','',1,0,NULL,0,NULL,''),(2014,132,'Mdina','',0,'','MDN','',1,0,NULL,0,NULL,''),(2015,132,'Melliea','',0,'','MEL','',1,0,NULL,0,NULL,''),(2016,132,'Mgarr','',0,'','MGR','',1,0,NULL,0,NULL,''),(2017,132,'Mosta','',0,'','MST','',1,0,NULL,0,NULL,''),(2018,132,'Mqabba','',0,'','MQA','',1,0,NULL,0,NULL,''),(2019,132,'Msida','',0,'','MSI','',1,0,NULL,0,NULL,''),(2020,132,'Mtarfa','',0,'','MTF','',1,0,NULL,0,NULL,''),(2021,132,'Naxxar','',0,'','NAX','',1,0,NULL,0,NULL,''),(2022,132,'Paola','',0,'','PAO','',1,0,NULL,0,NULL,''),(2023,132,'Pembroke','',0,'','PEM','',1,0,NULL,0,NULL,''),(2024,132,'Pieta','',0,'','PIE','',1,0,NULL,0,NULL,''),(2025,132,'Qormi','',0,'','QOR','',1,0,NULL,0,NULL,''),(2026,132,'Qrendi','',0,'','QRE','',1,0,NULL,0,NULL,''),(2027,132,'Rabat','',0,'','RAB','',1,0,NULL,0,NULL,''),(2028,132,'Safi','',0,'','SAF','',1,0,NULL,0,NULL,''),(2029,132,'San Giljan','',0,'','SGI','',1,0,NULL,0,NULL,''),(2030,132,'Santa Lucija','',0,'','SLU','',1,0,NULL,0,NULL,''),(2031,132,'San Pawl il-Bahar','',0,'','SPB','',1,0,NULL,0,NULL,''),(2032,132,'San Gwann','',0,'','SGW','',1,0,NULL,0,NULL,''),(2033,132,'Santa Venera','',0,'','SVE','',1,0,NULL,0,NULL,''),(2034,132,'Siggiewi','',0,'','SIG','',1,0,NULL,0,NULL,''),(2035,132,'Sliema','',0,'','SLM','',1,0,NULL,0,NULL,''),(2036,132,'Swieqi','',0,'','SWQ','',1,0,NULL,0,NULL,''),(2037,132,'Ta Xbiex','',0,'','TXB','',1,0,NULL,0,NULL,''),(2038,132,'Tarxien','',0,'','TRX','',1,0,NULL,0,NULL,''),(2039,132,'Valletta','',0,'','VLT','',1,0,NULL,0,NULL,''),(2040,132,'Xgajra','',0,'','XGJ','',1,0,NULL,0,NULL,''),(2041,132,'Zabbar','',0,'','ZBR','',1,0,NULL,0,NULL,''),(2042,132,'Zebbug','',0,'','ZBG','',1,0,NULL,0,NULL,''),(2043,132,'Zejtun','',0,'','ZJT','',1,0,NULL,0,NULL,''),(2044,132,'Zurrieq','',0,'','ZRQ','',1,0,NULL,0,NULL,''),(2045,132,'Fontana','',0,'','FNT','',1,0,NULL,0,NULL,''),(2046,132,'Ghajnsielem','',0,'','GHJ','',1,0,NULL,0,NULL,''),(2047,132,'Gharb','',0,'','GHR','',1,0,NULL,0,NULL,''),(2048,132,'Ghasri','',0,'','GHS','',1,0,NULL,0,NULL,''),(2049,132,'Kercem','',0,'','KRC','',1,0,NULL,0,NULL,''),(2050,132,'Munxar','',0,'','MUN','',1,0,NULL,0,NULL,''),(2051,132,'Nadur','',0,'','NAD','',1,0,NULL,0,NULL,''),(2052,132,'Qala','',0,'','QAL','',1,0,NULL,0,NULL,''),(2053,132,'Victoria','',0,'','VIC','',1,0,NULL,0,NULL,''),(2054,132,'San Lawrenz','',0,'','SLA','',1,0,NULL,0,NULL,''),(2055,132,'Sannat','',0,'','SNT','',1,0,NULL,0,NULL,''),(2056,132,'Xagra','',0,'','ZAG','',1,0,NULL,0,NULL,''),(2057,132,'Xewkija','',0,'','XEW','',1,0,NULL,0,NULL,''),(2058,132,'Zebbug','',0,'','ZEB','',1,0,NULL,0,NULL,''),(2059,133,'Ailinginae','',0,'','ALG','',1,0,NULL,0,NULL,''),(2060,133,'Ailinglaplap','',0,'','ALL','',1,0,NULL,0,NULL,''),(2061,133,'Ailuk','',0,'','ALK','',1,0,NULL,0,NULL,''),(2062,133,'Arno','',0,'','ARN','',1,0,NULL,0,NULL,''),(2063,133,'Aur','',0,'','AUR','',1,0,NULL,0,NULL,''),(2064,133,'Bikar','',0,'','BKR','',1,0,NULL,0,NULL,''),(2065,133,'Bikini','',0,'','BKN','',1,0,NULL,0,NULL,''),(2066,133,'Bokak','',0,'','BKK','',1,0,NULL,0,NULL,''),(2067,133,'Ebon','',0,'','EBN','',1,0,NULL,0,NULL,''),(2068,133,'Enewetak','',0,'','ENT','',1,0,NULL,0,NULL,''),(2069,133,'Erikub','',0,'','EKB','',1,0,NULL,0,NULL,''),(2070,133,'Jabat','',0,'','JBT','',1,0,NULL,0,NULL,''),(2071,133,'Jaluit','',0,'','JLT','',1,0,NULL,0,NULL,''),(2072,133,'Jemo','',0,'','JEM','',1,0,NULL,0,NULL,''),(2073,133,'Kili','',0,'','KIL','',1,0,NULL,0,NULL,''),(2074,133,'Kwajalein','',0,'','KWJ','',1,0,NULL,0,NULL,''),(2075,133,'Lae','',0,'','LAE','',1,0,NULL,0,NULL,''),(2076,133,'Lib','',0,'','LIB','',1,0,NULL,0,NULL,''),(2077,133,'Likiep','',0,'','LKP','',1,0,NULL,0,NULL,''),(2078,133,'Majuro','',0,'','MJR','',1,0,NULL,0,NULL,''),(2079,133,'Maloelap','',0,'','MLP','',1,0,NULL,0,NULL,''),(2080,133,'Mejit','',0,'','MJT','',1,0,NULL,0,NULL,''),(2081,133,'Mili','',0,'','MIL','',1,0,NULL,0,NULL,''),(2082,133,'Namorik','',0,'','NMK','',1,0,NULL,0,NULL,''),(2083,133,'Namu','',0,'','NAM','',1,0,NULL,0,NULL,''),(2084,133,'Rongelap','',0,'','RGL','',1,0,NULL,0,NULL,''),(2085,133,'Rongrik','',0,'','RGK','',1,0,NULL,0,NULL,''),(2086,133,'Toke','',0,'','TOK','',1,0,NULL,0,NULL,''),(2087,133,'Ujae','',0,'','UJA','',1,0,NULL,0,NULL,''),(2088,133,'Ujelang','',0,'','UJL','',1,0,NULL,0,NULL,''),(2089,133,'Utirik','',0,'','UTK','',1,0,NULL,0,NULL,''),(2090,133,'Wotho','',0,'','WTH','',1,0,NULL,0,NULL,''),(2091,133,'Wotje','',0,'','WTJ','',1,0,NULL,0,NULL,''),(2092,135,'Adrar','',0,'','AD','',1,0,NULL,0,NULL,''),(2093,135,'Assaba','',0,'','AS','',1,0,NULL,0,NULL,''),(2094,135,'Brakna','',0,'','BR','',1,0,NULL,0,NULL,''),(2095,135,'Dakhlet Nouadhibou','',0,'','DN','',1,0,NULL,0,NULL,''),(2096,135,'Gorgol','',0,'','GO','',1,0,NULL,0,NULL,''),(2097,135,'Guidimaka','',0,'','GM','',1,0,NULL,0,NULL,''),(2098,135,'Hodh Ech Chargui','',0,'','HC','',1,0,NULL,0,NULL,''),(2099,135,'Hodh El Gharbi','',0,'','HG','',1,0,NULL,0,NULL,''),(2100,135,'Inchiri','',0,'','IN','',1,0,NULL,0,NULL,''),(2101,135,'Tagant','',0,'','TA','',1,0,NULL,0,NULL,''),(2102,135,'Tiris Zemmour','',0,'','TZ','',1,0,NULL,0,NULL,''),(2103,135,'Trarza','',0,'','TR','',1,0,NULL,0,NULL,''),(2104,135,'Nouakchott','',0,'','NO','',1,0,NULL,0,NULL,''),(2105,136,'Beau Bassin-Rose Hill','',0,'','BR','',1,0,NULL,0,NULL,''),(2106,136,'Curepipe','',0,'','CU','',1,0,NULL,0,NULL,''),(2107,136,'Port Louis','',0,'','PU','',1,0,NULL,0,NULL,''),(2108,136,'Quatre Bornes','',0,'','QB','',1,0,NULL,0,NULL,''),(2109,136,'Vacoas-Phoenix','',0,'','VP','',1,0,NULL,0,NULL,''),(2110,136,'Agalega Islands','',0,'','AG','',1,0,NULL,0,NULL,''),(2111,136,'Cargados Carajos Shoals (Saint Brandon Islands)','',0,'','CC','',1,0,NULL,0,NULL,''),(2112,136,'Rodrigues','',0,'','RO','',1,0,NULL,0,NULL,''),(2113,136,'Black River','',0,'','BL','',1,0,NULL,0,NULL,''),(2114,136,'Flacq','',0,'','FL','',1,0,NULL,0,NULL,''),(2115,136,'Grand Port','',0,'','GP','',1,0,NULL,0,NULL,''),(2116,136,'Moka','',0,'','MO','',1,0,NULL,0,NULL,''),(2117,136,'Pamplemousses','',0,'','PA','',1,0,NULL,0,NULL,''),(2118,136,'Plaines Wilhems','',0,'','PW','',1,0,NULL,0,NULL,''),(2119,136,'Port Louis','',0,'','PL','',1,0,NULL,0,NULL,''),(2120,136,'Riviere du Rempart','',0,'','RR','',1,0,NULL,0,NULL,''),(2121,136,'Savanne','',0,'','SA','',1,0,NULL,0,NULL,''),(2122,138,'Baja California Norte','',0,'','BN','',1,0,NULL,0,NULL,''),(2123,138,'Baja California Sur','',0,'','BS','',1,0,NULL,0,NULL,''),(2124,138,'Campeche','',0,'','CA','',1,0,NULL,0,NULL,''),(2125,138,'Chiapas','',0,'','CI','',1,0,NULL,0,NULL,''),(2126,138,'Chihuahua','',0,'','CH','',1,0,NULL,0,NULL,''),(2127,138,'Coahuila de Zaragoza','',0,'','CZ','',1,0,NULL,0,NULL,''),(2128,138,'Colima','',0,'','CL','',1,0,NULL,0,NULL,''),(2129,138,'Distrito Federal','',0,'','DF','',1,0,NULL,0,NULL,''),(2130,138,'Durango','',0,'','DU','',1,0,NULL,0,NULL,''),(2131,138,'Guanajuato','',0,'','GA','',1,0,NULL,0,NULL,''),(2132,138,'Guerrero','',0,'','GE','',1,0,NULL,0,NULL,''),(2133,138,'Hidalgo','',0,'','HI','',1,0,NULL,0,NULL,''),(2134,138,'Jalisco','',0,'','JA','',1,0,NULL,0,NULL,''),(2135,138,'Mexico','',0,'','ME','',1,0,NULL,0,NULL,''),(2136,138,'Michoacan de Ocampo','',0,'','MI','',1,0,NULL,0,NULL,''),(2137,138,'Morelos','',0,'','MO','',1,0,NULL,0,NULL,''),(2138,138,'Nayarit','',0,'','NA','',1,0,NULL,0,NULL,''),(2139,138,'Nuevo Leon','',0,'','NL','',1,0,NULL,0,NULL,''),(2140,138,'Oaxaca','',0,'','OA','',1,0,NULL,0,NULL,''),(2141,138,'Puebla','',0,'','PU','',1,0,NULL,0,NULL,''),(2142,138,'Queretaro de Arteaga','',0,'','QA','',1,0,NULL,0,NULL,''),(2143,138,'Quintana Roo','',0,'','QR','',1,0,NULL,0,NULL,''),(2144,138,'San Luis Potosi','',0,'','SA','',1,0,NULL,0,NULL,''),(2145,138,'Sinaloa','',0,'','SI','',1,0,NULL,0,NULL,''),(2146,138,'Sonora','',0,'','SO','',1,0,NULL,0,NULL,''),(2147,138,'Tabasco','',0,'','TB','',1,0,NULL,0,NULL,''),(2148,138,'Tamaulipas','',0,'','TM','',1,0,NULL,0,NULL,''),(2149,138,'Tlaxcala','',0,'','TL','',1,0,NULL,0,NULL,''),(2150,138,'Veracruz-Llave','',0,'','VE','',1,0,NULL,0,NULL,''),(2151,138,'Yucatan','',0,'','YU','',1,0,NULL,0,NULL,''),(2152,138,'Zacatecas','',0,'','ZA','',1,0,NULL,0,NULL,''),(2153,139,'Chuuk','',0,'','C','',1,0,NULL,0,NULL,''),(2154,139,'Kosrae','',0,'','K','',1,0,NULL,0,NULL,''),(2155,139,'Pohnpei','',0,'','P','',1,0,NULL,0,NULL,''),(2156,139,'Yap','',0,'','Y','',1,0,NULL,0,NULL,''),(2157,140,'Gagauzia','',0,'','GA','',1,0,NULL,0,NULL,''),(2158,140,'Chisinau','',0,'','CU','',1,0,NULL,0,NULL,''),(2159,140,'Balti','',0,'','BA','',1,0,NULL,0,NULL,''),(2160,140,'Cahul','',0,'','CA','',1,0,NULL,0,NULL,''),(2161,140,'Edinet','',0,'','ED','',1,0,NULL,0,NULL,''),(2162,140,'Lapusna','',0,'','LA','',1,0,NULL,0,NULL,''),(2163,140,'Orhei','',0,'','OR','',1,0,NULL,0,NULL,''),(2164,140,'Soroca','',0,'','SO','',1,0,NULL,0,NULL,''),(2165,140,'Tighina','',0,'','TI','',1,0,NULL,0,NULL,''),(2166,140,'Ungheni','',0,'','UN','',1,0,NULL,0,NULL,''),(2167,140,'St‚nga Nistrului','',0,'','SN','',1,0,NULL,0,NULL,''),(2168,141,'Fontvieille','',0,'','FV','',1,0,NULL,0,NULL,''),(2169,141,'La Condamine','',0,'','LC','',1,0,NULL,0,NULL,''),(2170,141,'Monaco-Ville','',0,'','MV','',1,0,NULL,0,NULL,''),(2171,141,'Monte-Carlo','',0,'','MC','',1,0,NULL,0,NULL,''),(2172,142,'Ulanbaatar','',0,'','1','',1,0,NULL,0,NULL,''),(2173,142,'Orhon','',0,'','035','',1,0,NULL,0,NULL,''),(2174,142,'Darhan uul','',0,'','037','',1,0,NULL,0,NULL,''),(2175,142,'Hentiy','',0,'','039','',1,0,NULL,0,NULL,''),(2176,142,'Hovsgol','',0,'','041','',1,0,NULL,0,NULL,''),(2177,142,'Hovd','',0,'','043','',1,0,NULL,0,NULL,''),(2178,142,'Uvs','',0,'','046','',1,0,NULL,0,NULL,''),(2179,142,'Tov','',0,'','047','',1,0,NULL,0,NULL,''),(2180,142,'Selenge','',0,'','049','',1,0,NULL,0,NULL,''),(2181,142,'Suhbaatar','',0,'','051','',1,0,NULL,0,NULL,''),(2182,142,'Omnogovi','',0,'','053','',1,0,NULL,0,NULL,''),(2183,142,'Ovorhangay','',0,'','055','',1,0,NULL,0,NULL,''),(2184,142,'Dzavhan','',0,'','057','',1,0,NULL,0,NULL,''),(2185,142,'DundgovL','',0,'','059','',1,0,NULL,0,NULL,''),(2186,142,'Dornod','',0,'','061','',1,0,NULL,0,NULL,''),(2187,142,'Dornogov','',0,'','063','',1,0,NULL,0,NULL,''),(2188,142,'Govi-Sumber','',0,'','064','',1,0,NULL,0,NULL,''),(2189,142,'Govi-Altay','',0,'','065','',1,0,NULL,0,NULL,''),(2190,142,'Bulgan','',0,'','067','',1,0,NULL,0,NULL,''),(2191,142,'Bayanhongor','',0,'','069','',1,0,NULL,0,NULL,''),(2192,142,'Bayan-Olgiy','',0,'','071','',1,0,NULL,0,NULL,''),(2193,142,'Arhangay','',0,'','073','',1,0,NULL,0,NULL,''),(2194,143,'Saint Anthony','',0,'','A','',1,0,NULL,0,NULL,''),(2195,143,'Saint Georges','',0,'','G','',1,0,NULL,0,NULL,''),(2196,143,'Saint Peter','',0,'','P','',1,0,NULL,0,NULL,''),(2197,144,'Agadir','',0,'','AGD','',1,0,NULL,0,NULL,''),(2198,144,'Al Hoceima','',0,'','HOC','',1,0,NULL,0,NULL,''),(2199,144,'Azilal','',0,'','AZI','',1,0,NULL,0,NULL,''),(2200,144,'Beni Mellal','',0,'','BME','',1,0,NULL,0,NULL,''),(2201,144,'Ben Slimane','',0,'','BSL','',1,0,NULL,0,NULL,''),(2202,144,'Boulemane','',0,'','BLM','',1,0,NULL,0,NULL,''),(2203,144,'Casablanca','',0,'','CBL','',1,0,NULL,0,NULL,''),(2204,144,'Chaouen','',0,'','CHA','',1,0,NULL,0,NULL,''),(2205,144,'El Jadida','',0,'','EJA','',1,0,NULL,0,NULL,''),(2206,144,'El Kelaa des Sraghna','',0,'','EKS','',1,0,NULL,0,NULL,''),(2207,144,'Er Rachidia','',0,'','ERA','',1,0,NULL,0,NULL,''),(2208,144,'Essaouira','',0,'','ESS','',1,0,NULL,0,NULL,''),(2209,144,'Fes','',0,'','FES','',1,0,NULL,0,NULL,''),(2210,144,'Figuig','',0,'','FIG','',1,0,NULL,0,NULL,''),(2211,144,'Guelmim','',0,'','GLM','',1,0,NULL,0,NULL,''),(2212,144,'Ifrane','',0,'','IFR','',1,0,NULL,0,NULL,''),(2213,144,'Kenitra','',0,'','KEN','',1,0,NULL,0,NULL,''),(2214,144,'Khemisset','',0,'','KHM','',1,0,NULL,0,NULL,''),(2215,144,'Khenifra','',0,'','KHN','',1,0,NULL,0,NULL,''),(2216,144,'Khouribga','',0,'','KHO','',1,0,NULL,0,NULL,''),(2217,144,'Laayoune','',0,'','LYN','',1,0,NULL,0,NULL,''),(2218,144,'Larache','',0,'','LAR','',1,0,NULL,0,NULL,''),(2219,144,'Marrakech','',0,'','MRK','',1,0,NULL,0,NULL,''),(2220,144,'Meknes','',0,'','MKN','',1,0,NULL,0,NULL,''),(2221,144,'Nador','',0,'','NAD','',1,0,NULL,0,NULL,''),(2222,144,'Ouarzazate','',0,'','ORZ','',1,0,NULL,0,NULL,''),(2223,144,'Oujda','',0,'','OUJ','',1,0,NULL,0,NULL,''),(2224,144,'Rabat-Sale','',0,'','RSA','',1,0,NULL,0,NULL,''),(2225,144,'Safi','',0,'','SAF','',1,0,NULL,0,NULL,''),(2226,144,'Settat','',0,'','SET','',1,0,NULL,0,NULL,''),(2227,144,'Sidi Kacem','',0,'','SKA','',1,0,NULL,0,NULL,''),(2228,144,'Tangier','',0,'','TGR','',1,0,NULL,0,NULL,''),(2229,144,'Tan-Tan','',0,'','TAN','',1,0,NULL,0,NULL,''),(2230,144,'Taounate','',0,'','TAO','',1,0,NULL,0,NULL,''),(2231,144,'Taroudannt','',0,'','TRD','',1,0,NULL,0,NULL,''),(2232,144,'Tata','',0,'','TAT','',1,0,NULL,0,NULL,''),(2233,144,'Taza','',0,'','TAZ','',1,0,NULL,0,NULL,''),(2234,144,'Tetouan','',0,'','TET','',1,0,NULL,0,NULL,''),(2235,144,'Tiznit','',0,'','TIZ','',1,0,NULL,0,NULL,''),(2236,144,'Ad Dakhla','',0,'','ADK','',1,0,NULL,0,NULL,''),(2237,144,'Boujdour','',0,'','BJD','',1,0,NULL,0,NULL,''),(2238,144,'Es Smara','',0,'','ESM','',1,0,NULL,0,NULL,''),(2239,145,'Cabo Delgado','',0,'','CD','',1,0,NULL,0,NULL,''),(2240,145,'Gaza','',0,'','GZ','',1,0,NULL,0,NULL,''),(2241,145,'Inhambane','',0,'','IN','',1,0,NULL,0,NULL,''),(2242,145,'Manica','',0,'','MN','',1,0,NULL,0,NULL,''),(2243,145,'Maputo (city)','',0,'','MC','',1,0,NULL,0,NULL,''),(2244,145,'Maputo','',0,'','MP','',1,0,NULL,0,NULL,''),(2245,145,'Nampula','',0,'','NA','',1,0,NULL,0,NULL,''),(2246,145,'Niassa','',0,'','NI','',1,0,NULL,0,NULL,''),(2247,145,'Sofala','',0,'','SO','',1,0,NULL,0,NULL,''),(2248,145,'Tete','',0,'','TE','',1,0,NULL,0,NULL,''),(2249,145,'Zambezia','',0,'','ZA','',1,0,NULL,0,NULL,''),(2250,146,'Ayeyarwady','',0,'','AY','',1,0,NULL,0,NULL,''),(2251,146,'Bago','',0,'','BG','',1,0,NULL,0,NULL,''),(2252,146,'Magway','',0,'','MG','',1,0,NULL,0,NULL,''),(2253,146,'Mandalay','',0,'','MD','',1,0,NULL,0,NULL,''),(2254,146,'Sagaing','',0,'','SG','',1,0,NULL,0,NULL,''),(2255,146,'Tanintharyi','',0,'','TN','',1,0,NULL,0,NULL,''),(2256,146,'Yangon','',0,'','YG','',1,0,NULL,0,NULL,''),(2257,146,'Chin State','',0,'','CH','',1,0,NULL,0,NULL,''),(2258,146,'Kachin State','',0,'','KC','',1,0,NULL,0,NULL,''),(2259,146,'Kayah State','',0,'','KH','',1,0,NULL,0,NULL,''),(2260,146,'Kayin State','',0,'','KN','',1,0,NULL,0,NULL,''),(2261,146,'Mon State','',0,'','MN','',1,0,NULL,0,NULL,''),(2262,146,'Rakhine State','',0,'','RK','',1,0,NULL,0,NULL,''),(2263,146,'Shan State','',0,'','SH','',1,0,NULL,0,NULL,''),(2264,147,'Caprivi','',0,'','CA','',1,0,NULL,0,NULL,''),(2265,147,'Erongo','',0,'','ER','',1,0,NULL,0,NULL,''),(2266,147,'Hardap','',0,'','HA','',1,0,NULL,0,NULL,''),(2267,147,'Karas','',0,'','KR','',1,0,NULL,0,NULL,''),(2268,147,'Kavango','',0,'','KV','',1,0,NULL,0,NULL,''),(2269,147,'Khomas','',0,'','KH','',1,0,NULL,0,NULL,''),(2270,147,'Kunene','',0,'','KU','',1,0,NULL,0,NULL,''),(2271,147,'Ohangwena','',0,'','OW','',1,0,NULL,0,NULL,''),(2272,147,'Omaheke','',0,'','OK','',1,0,NULL,0,NULL,''),(2273,147,'Omusati','',0,'','OT','',1,0,NULL,0,NULL,''),(2274,147,'Oshana','',0,'','ON','',1,0,NULL,0,NULL,''),(2275,147,'Oshikoto','',0,'','OO','',1,0,NULL,0,NULL,''),(2276,147,'Otjozondjupa','',0,'','OJ','',1,0,NULL,0,NULL,''),(2277,148,'Aiwo','',0,'','AO','',1,0,NULL,0,NULL,''),(2278,148,'Anabar','',0,'','AA','',1,0,NULL,0,NULL,''),(2279,148,'Anetan','',0,'','AT','',1,0,NULL,0,NULL,''),(2280,148,'Anibare','',0,'','AI','',1,0,NULL,0,NULL,''),(2281,148,'Baiti','',0,'','BA','',1,0,NULL,0,NULL,''),(2282,148,'Boe','',0,'','BO','',1,0,NULL,0,NULL,''),(2283,148,'Buada','',0,'','BU','',1,0,NULL,0,NULL,''),(2284,148,'Denigomodu','',0,'','DE','',1,0,NULL,0,NULL,''),(2285,148,'Ewa','',0,'','EW','',1,0,NULL,0,NULL,''),(2286,148,'Ijuw','',0,'','IJ','',1,0,NULL,0,NULL,''),(2287,148,'Meneng','',0,'','ME','',1,0,NULL,0,NULL,''),(2288,148,'Nibok','',0,'','NI','',1,0,NULL,0,NULL,''),(2289,148,'Uaboe','',0,'','UA','',1,0,NULL,0,NULL,''),(2290,148,'Yaren','',0,'','YA','',1,0,NULL,0,NULL,''),(2291,149,'Bagmati','',0,'','BA','',1,0,NULL,0,NULL,''),(2292,149,'Bheri','',0,'','BH','',1,0,NULL,0,NULL,''),(2293,149,'Dhawalagiri','',0,'','DH','',1,0,NULL,0,NULL,''),(2294,149,'Gandaki','',0,'','GA','',1,0,NULL,0,NULL,''),(2295,149,'Janakpur','',0,'','JA','',1,0,NULL,0,NULL,''),(2296,149,'Karnali','',0,'','KA','',1,0,NULL,0,NULL,''),(2297,149,'Kosi','',0,'','KO','',1,0,NULL,0,NULL,''),(2298,149,'Lumbini','',0,'','LU','',1,0,NULL,0,NULL,''),(2299,149,'Mahakali','',0,'','MA','',1,0,NULL,0,NULL,''),(2300,149,'Mechi','',0,'','ME','',1,0,NULL,0,NULL,''),(2301,149,'Narayani','',0,'','NA','',1,0,NULL,0,NULL,''),(2302,149,'Rapti','',0,'','RA','',1,0,NULL,0,NULL,''),(2303,149,'Sagarmatha','',0,'','SA','',1,0,NULL,0,NULL,''),(2304,149,'Seti','',0,'','SE','',1,0,NULL,0,NULL,''),(2305,150,'Drenthe','',0,'','DR','',1,0,NULL,0,NULL,''),(2306,150,'Flevoland','',0,'','FL','',1,0,NULL,0,NULL,''),(2307,150,'Friesland','',0,'','FR','',1,0,NULL,0,NULL,''),(2308,150,'Gelderland','',0,'','GE','',1,0,NULL,0,NULL,''),(2309,150,'Groningen','',0,'','GR','',1,0,NULL,0,NULL,''),(2310,150,'Limburg','',0,'','LI','',1,0,NULL,0,NULL,''),(2311,150,'Noord Brabant','',0,'','NB','',1,0,NULL,0,NULL,''),(2312,150,'Noord Holland','',0,'','NH','',1,0,NULL,0,NULL,''),(2313,150,'Overijssel','',0,'','OV','',1,0,NULL,0,NULL,''),(2314,150,'Utrecht','',0,'','UT','',1,0,NULL,0,NULL,''),(2315,150,'Zeeland','',0,'','ZE','',1,0,NULL,0,NULL,''),(2316,150,'Zuid Holland','',0,'','ZH','',1,0,NULL,0,NULL,''),(2317,152,'Iles Loyaute','',0,'','L','',1,0,NULL,0,NULL,''),(2318,152,'Nord','',0,'','N','',1,0,NULL,0,NULL,''),(2319,152,'Sud','',0,'','S','',1,0,NULL,0,NULL,''),(2320,153,'Auckland','',0,'','AUK','',1,0,NULL,0,NULL,''),(2321,153,'Bay of Plenty','',0,'','BOP','',1,0,NULL,0,NULL,''),(2322,153,'Canterbury','',0,'','CAN','',1,0,NULL,0,NULL,''),(2323,153,'Coromandel','',0,'','COR','',1,0,NULL,0,NULL,''),(2324,153,'Gisborne','',0,'','GIS','',1,0,NULL,0,NULL,''),(2325,153,'Fiordland','',0,'','FIO','',1,0,NULL,0,NULL,''),(2326,153,'Hawke\'s Bay','',0,'','HKB','',1,0,NULL,0,NULL,''),(2327,153,'Marlborough','',0,'','MBH','',1,0,NULL,0,NULL,''),(2328,153,'Manawatu-Wanganui','',0,'','MWT','',1,0,NULL,0,NULL,''),(2329,153,'Mt Cook-Mackenzie','',0,'','MCM','',1,0,NULL,0,NULL,''),(2330,153,'Nelson','',0,'','NSN','',1,0,NULL,0,NULL,''),(2331,153,'Northland','',0,'','NTL','',1,0,NULL,0,NULL,''),(2332,153,'Otago','',0,'','OTA','',1,0,NULL,0,NULL,''),(2333,153,'Southland','',0,'','STL','',1,0,NULL,0,NULL,''),(2334,153,'Taranaki','',0,'','TKI','',1,0,NULL,0,NULL,''),(2335,153,'Wellington','',0,'','WGN','',1,0,NULL,0,NULL,''),(2336,153,'Waikato','',0,'','WKO','',1,0,NULL,0,NULL,''),(2337,153,'Wairarapa','',0,'','WAI','',1,0,NULL,0,NULL,''),(2338,153,'West Coast','',0,'','WTC','',1,0,NULL,0,NULL,''),(2339,154,'Atlantico Norte','',0,'','AN','',1,0,NULL,0,NULL,''),(2340,154,'Atlantico Sur','',0,'','AS','',1,0,NULL,0,NULL,''),(2341,154,'Boaco','',0,'','BO','',1,0,NULL,0,NULL,''),(2342,154,'Carazo','',0,'','CA','',1,0,NULL,0,NULL,''),(2343,154,'Chinandega','',0,'','CI','',1,0,NULL,0,NULL,''),(2344,154,'Chontales','',0,'','CO','',1,0,NULL,0,NULL,''),(2345,154,'Esteli','',0,'','ES','',1,0,NULL,0,NULL,''),(2346,154,'Granada','',0,'','GR','',1,0,NULL,0,NULL,''),(2347,154,'Jinotega','',0,'','JI','',1,0,NULL,0,NULL,''),(2348,154,'Leon','',0,'','LE','',1,0,NULL,0,NULL,''),(2349,154,'Madriz','',0,'','MD','',1,0,NULL,0,NULL,''),(2350,154,'Managua','',0,'','MN','',1,0,NULL,0,NULL,''),(2351,154,'Masaya','',0,'','MS','',1,0,NULL,0,NULL,''),(2352,154,'Matagalpa','',0,'','MT','',1,0,NULL,0,NULL,''),(2353,154,'Nuevo Segovia','',0,'','NS','',1,0,NULL,0,NULL,''),(2354,154,'Rio San Juan','',0,'','RS','',1,0,NULL,0,NULL,''),(2355,154,'Rivas','',0,'','RI','',1,0,NULL,0,NULL,''),(2356,155,'Agadez','',0,'','AG','',1,0,NULL,0,NULL,''),(2357,155,'Diffa','',0,'','DF','',1,0,NULL,0,NULL,''),(2358,155,'Dosso','',0,'','DS','',1,0,NULL,0,NULL,''),(2359,155,'Maradi','',0,'','MA','',1,0,NULL,0,NULL,''),(2360,155,'Niamey','',0,'','NM','',1,0,NULL,0,NULL,''),(2361,155,'Tahoua','',0,'','TH','',1,0,NULL,0,NULL,''),(2362,155,'Tillaberi','',0,'','TL','',1,0,NULL,0,NULL,''),(2363,155,'Zinder','',0,'','ZD','',1,0,NULL,0,NULL,''),(2364,156,'Abia','',0,'','AB','',1,0,NULL,0,NULL,''),(2365,156,'Abuja Federal Capital Territory','',0,'','CT','',1,0,NULL,0,NULL,''),(2366,156,'Adamawa','',0,'','AD','',1,0,NULL,0,NULL,''),(2367,156,'Akwa Ibom','',0,'','AK','',1,0,NULL,0,NULL,''),(2368,156,'Anambra','',0,'','AN','',1,0,NULL,0,NULL,''),(2369,156,'Bauchi','',0,'','BC','',1,0,NULL,0,NULL,''),(2370,156,'Bayelsa','',0,'','BY','',1,0,NULL,0,NULL,''),(2371,156,'Benue','',0,'','BN','',1,0,NULL,0,NULL,''),(2372,156,'Borno','',0,'','BO','',1,0,NULL,0,NULL,''),(2373,156,'Cross River','',0,'','CR','',1,0,NULL,0,NULL,''),(2374,156,'Delta','',0,'','DE','',1,0,NULL,0,NULL,''),(2375,156,'Ebonyi','',0,'','EB','',1,0,NULL,0,NULL,''),(2376,156,'Edo','',0,'','ED','',1,0,NULL,0,NULL,''),(2377,156,'Ekiti','',0,'','EK','',1,0,NULL,0,NULL,''),(2378,156,'Enugu','',0,'','EN','',1,0,NULL,0,NULL,''),(2379,156,'Gombe','',0,'','GO','',1,0,NULL,0,NULL,''),(2380,156,'Imo','',0,'','IM','',1,0,NULL,0,NULL,''),(2381,156,'Jigawa','',0,'','JI','',1,0,NULL,0,NULL,''),(2382,156,'Kaduna','',0,'','KD','',1,0,NULL,0,NULL,''),(2383,156,'Kano','',0,'','KN','',1,0,NULL,0,NULL,''),(2384,156,'Katsina','',0,'','KT','',1,0,NULL,0,NULL,''),(2385,156,'Kebbi','',0,'','KE','',1,0,NULL,0,NULL,''),(2386,156,'Kogi','',0,'','KO','',1,0,NULL,0,NULL,''),(2387,156,'Kwara','',0,'','KW','',1,0,NULL,0,NULL,''),(2388,156,'Lagos','',0,'','LA','',1,0,NULL,0,NULL,''),(2389,156,'Nassarawa','',0,'','NA','',1,0,NULL,0,NULL,''),(2390,156,'Niger','',0,'','NI','',1,0,NULL,0,NULL,''),(2391,156,'Ogun','',0,'','OG','',1,0,NULL,0,NULL,''),(2392,156,'Ondo','',0,'','ONG','',1,0,NULL,0,NULL,''),(2393,156,'Osun','',0,'','OS','',1,0,NULL,0,NULL,''),(2394,156,'Oyo','',0,'','OY','',1,0,NULL,0,NULL,''),(2395,156,'Plateau','',0,'','PL','',1,0,NULL,0,NULL,''),(2396,156,'Rivers','',0,'','RI','',1,0,NULL,0,NULL,''),(2397,156,'Sokoto','',0,'','SO','',1,0,NULL,0,NULL,''),(2398,156,'Taraba','',0,'','TA','',1,0,NULL,0,NULL,''),(2399,156,'Yobe','',0,'','YO','',1,0,NULL,0,NULL,''),(2400,156,'Zamfara','',0,'','ZA','',1,0,NULL,0,NULL,''),(2401,159,'Northern Islands','',0,'','N','',1,0,NULL,0,NULL,''),(2402,159,'Rota','',0,'','R','',1,0,NULL,0,NULL,''),(2403,159,'Saipan','',0,'','S','',1,0,NULL,0,NULL,''),(2404,159,'Tinian','',0,'','T','',1,0,NULL,0,NULL,''),(2405,160,'Akershus','',0,'','AK','',1,0,NULL,0,NULL,''),(2406,160,'Aust-Agder','',0,'','AA','',1,0,NULL,0,NULL,''),(2407,160,'Buskerud','',0,'','BU','',1,0,NULL,0,NULL,''),(2408,160,'Finnmark','',0,'','FM','',1,0,NULL,0,NULL,''),(2409,160,'Hedmark','',0,'','HM','',1,0,NULL,0,NULL,''),(2410,160,'Hordaland','',0,'','HL','',1,0,NULL,0,NULL,''),(2411,160,'More og Romdal','',0,'','MR','',1,0,NULL,0,NULL,''),(2412,160,'Nord-Trondelag','',0,'','NT','',1,0,NULL,0,NULL,''),(2413,160,'Nordland','',0,'','NL','',1,0,NULL,0,NULL,''),(2414,160,'Ostfold','',0,'','OF','',1,0,NULL,0,NULL,''),(2415,160,'Oppland','',0,'','OP','',1,0,NULL,0,NULL,''),(2416,160,'Oslo','',0,'','OL','',1,0,NULL,0,NULL,''),(2417,160,'Rogaland','',0,'','RL','',1,0,NULL,0,NULL,''),(2418,160,'Sor-Trondelag','',0,'','ST','',1,0,NULL,0,NULL,''),(2419,160,'Sogn og Fjordane','',0,'','SJ','',1,0,NULL,0,NULL,''),(2420,160,'Svalbard','',0,'','SV','',1,0,NULL,0,NULL,''),(2421,160,'Telemark','',0,'','TM','',1,0,NULL,0,NULL,''),(2422,160,'Troms','',0,'','TR','',1,0,NULL,0,NULL,''),(2423,160,'Vest-Agder','',0,'','VA','',1,0,NULL,0,NULL,''),(2424,160,'Vestfold','',0,'','VF','',1,0,NULL,0,NULL,''),(2425,161,'Ad Dakhiliyah','',0,'','DA','',1,0,NULL,0,NULL,''),(2426,161,'Al Batinah','',0,'','BA','',1,0,NULL,0,NULL,''),(2427,161,'Al Wusta','',0,'','WU','',1,0,NULL,0,NULL,''),(2428,161,'Ash Sharqiyah','',0,'','SH','',1,0,NULL,0,NULL,''),(2429,161,'Az Zahirah','',0,'','ZA','',1,0,NULL,0,NULL,''),(2430,161,'Masqat','',0,'','MA','',1,0,NULL,0,NULL,''),(2431,161,'Musandam','',0,'','MU','',1,0,NULL,0,NULL,''),(2432,161,'Zufar','',0,'','ZU','',1,0,NULL,0,NULL,''),(2433,162,'Balochistan','',0,'','B','',1,0,NULL,0,NULL,''),(2434,162,'Federally Administered Tribal Areas','',0,'','T','',1,0,NULL,0,NULL,''),(2435,162,'Islamabad Capital Territory','',0,'','I','',1,0,NULL,0,NULL,''),(2436,162,'North-West Frontier','',0,'','N','',1,0,NULL,0,NULL,''),(2437,162,'Punjab','',0,'','P','',1,0,NULL,0,NULL,''),(2438,162,'Sindh','',0,'','S','',1,0,NULL,0,NULL,''),(2439,163,'Aimeliik','',0,'','AM','',1,0,NULL,0,NULL,''),(2440,163,'Airai','',0,'','AR','',1,0,NULL,0,NULL,''),(2441,163,'Angaur','',0,'','AN','',1,0,NULL,0,NULL,''),(2442,163,'Hatohobei','',0,'','HA','',1,0,NULL,0,NULL,''),(2443,163,'Kayangel','',0,'','KA','',1,0,NULL,0,NULL,''),(2444,163,'Koror','',0,'','KO','',1,0,NULL,0,NULL,''),(2445,163,'Melekeok','',0,'','ME','',1,0,NULL,0,NULL,''),(2446,163,'Ngaraard','',0,'','NA','',1,0,NULL,0,NULL,''),(2447,163,'Ngarchelong','',0,'','NG','',1,0,NULL,0,NULL,''),(2448,163,'Ngardmau','',0,'','ND','',1,0,NULL,0,NULL,''),(2449,163,'Ngatpang','',0,'','NT','',1,0,NULL,0,NULL,''),(2450,163,'Ngchesar','',0,'','NC','',1,0,NULL,0,NULL,''),(2451,163,'Ngeremlengui','',0,'','NR','',1,0,NULL,0,NULL,''),(2452,163,'Ngiwal','',0,'','NW','',1,0,NULL,0,NULL,''),(2453,163,'Peleliu','',0,'','PE','',1,0,NULL,0,NULL,''),(2454,163,'Sonsorol','',0,'','SO','',1,0,NULL,0,NULL,''),(2455,164,'Bocas del Toro','',0,'','BT','',1,0,NULL,0,NULL,''),(2456,164,'Chiriqui','',0,'','CH','',1,0,NULL,0,NULL,''),(2457,164,'Cocle','',0,'','CC','',1,0,NULL,0,NULL,''),(2458,164,'Colon','',0,'','CL','',1,0,NULL,0,NULL,''),(2459,164,'Darien','',0,'','DA','',1,0,NULL,0,NULL,''),(2460,164,'Herrera','',0,'','HE','',1,0,NULL,0,NULL,''),(2461,164,'Los Santos','',0,'','LS','',1,0,NULL,0,NULL,''),(2462,164,'Panama','',0,'','PA','',1,0,NULL,0,NULL,''),(2463,164,'San Blas','',0,'','SB','',1,0,NULL,0,NULL,''),(2464,164,'Veraguas','',0,'','VG','',1,0,NULL,0,NULL,''),(2465,165,'Bougainville','',0,'','BV','',1,0,NULL,0,NULL,''),(2466,165,'Central','',0,'','CE','',1,0,NULL,0,NULL,''),(2467,165,'Chimbu','',0,'','CH','',1,0,NULL,0,NULL,''),(2468,165,'Eastern Highlands','',0,'','EH','',1,0,NULL,0,NULL,''),(2469,165,'East New Britain','',0,'','EB','',1,0,NULL,0,NULL,''),(2470,165,'East Sepik','',0,'','ES','',1,0,NULL,0,NULL,''),(2471,165,'Enga','',0,'','EN','',1,0,NULL,0,NULL,''),(2472,165,'Gulf','',0,'','GU','',1,0,NULL,0,NULL,''),(2473,165,'Madang','',0,'','MD','',1,0,NULL,0,NULL,''),(2474,165,'Manus','',0,'','MN','',1,0,NULL,0,NULL,''),(2475,165,'Milne Bay','',0,'','MB','',1,0,NULL,0,NULL,''),(2476,165,'Morobe','',0,'','MR','',1,0,NULL,0,NULL,''),(2477,165,'National Capital','',0,'','NC','',1,0,NULL,0,NULL,''),(2478,165,'New Ireland','',0,'','NI','',1,0,NULL,0,NULL,''),(2479,165,'Northern','',0,'','NO','',1,0,NULL,0,NULL,''),(2480,165,'Sandaun','',0,'','SA','',1,0,NULL,0,NULL,''),(2481,165,'Southern Highlands','',0,'','SH','',1,0,NULL,0,NULL,''),(2482,165,'Western','',0,'','WE','',1,0,NULL,0,NULL,''),(2483,165,'Western Highlands','',0,'','WH','',1,0,NULL,0,NULL,''),(2484,165,'West New Britain','',0,'','WB','',1,0,NULL,0,NULL,''),(2485,166,'Alto Paraguay','',0,'','AG','',1,0,NULL,0,NULL,''),(2486,166,'Alto Parana','',0,'','AN','',1,0,NULL,0,NULL,''),(2487,166,'Amambay','',0,'','AM','',1,0,NULL,0,NULL,''),(2488,166,'Asuncion','',0,'','AS','',1,0,NULL,0,NULL,''),(2489,166,'Boqueron','',0,'','BO','',1,0,NULL,0,NULL,''),(2490,166,'Caaguazu','',0,'','CG','',1,0,NULL,0,NULL,''),(2491,166,'Caazapa','',0,'','CZ','',1,0,NULL,0,NULL,''),(2492,166,'Canindeyu','',0,'','CN','',1,0,NULL,0,NULL,''),(2493,166,'Central','',0,'','CE','',1,0,NULL,0,NULL,''),(2494,166,'Concepcion','',0,'','CC','',1,0,NULL,0,NULL,''),(2495,166,'Cordillera','',0,'','CD','',1,0,NULL,0,NULL,''),(2496,166,'Guaira','',0,'','GU','',1,0,NULL,0,NULL,''),(2497,166,'Itapua','',0,'','IT','',1,0,NULL,0,NULL,''),(2498,166,'Misiones','',0,'','MI','',1,0,NULL,0,NULL,''),(2499,166,'Neembucu','',0,'','NE','',1,0,NULL,0,NULL,''),(2500,166,'Paraguari','',0,'','PA','',1,0,NULL,0,NULL,''),(2501,166,'Presidente Hayes','',0,'','PH','',1,0,NULL,0,NULL,''),(2502,166,'San Pedro','',0,'','SP','',1,0,NULL,0,NULL,''),(2503,167,'Amazonas','',0,'','AM','',1,0,NULL,0,NULL,''),(2504,167,'Ancash','',0,'','AN','',1,0,NULL,0,NULL,''),(2505,167,'Apurimac','',0,'','AP','',1,0,NULL,0,NULL,''),(2506,167,'Arequipa','',0,'','AR','',1,0,NULL,0,NULL,''),(2507,167,'Ayacucho','',0,'','AY','',1,0,NULL,0,NULL,''),(2508,167,'Cajamarca','',0,'','CJ','',1,0,NULL,0,NULL,''),(2509,167,'Callao','',0,'','CL','',1,0,NULL,0,NULL,''),(2510,167,'Cusco','',0,'','CU','',1,0,NULL,0,NULL,''),(2511,167,'Huancavelica','',0,'','HV','',1,0,NULL,0,NULL,''),(2512,167,'Huanuco','',0,'','HO','',1,0,NULL,0,NULL,''),(2513,167,'Ica','',0,'','IC','',1,0,NULL,0,NULL,''),(2514,167,'Junin','',0,'','JU','',1,0,NULL,0,NULL,''),(2515,167,'La Libertad','',0,'','LD','',1,0,NULL,0,NULL,''),(2516,167,'Lambayeque','',0,'','LY','',1,0,NULL,0,NULL,''),(2517,167,'Lima','',0,'','LI','',1,0,NULL,0,NULL,''),(2518,167,'Loreto','',0,'','LO','',1,0,NULL,0,NULL,''),(2519,167,'Madre de Dios','',0,'','MD','',1,0,NULL,0,NULL,''),(2520,167,'Moquegua','',0,'','MO','',1,0,NULL,0,NULL,''),(2521,167,'Pasco','',0,'','PA','',1,0,NULL,0,NULL,''),(2522,167,'Piura','',0,'','PI','',1,0,NULL,0,NULL,''),(2523,167,'Puno','',0,'','PU','',1,0,NULL,0,NULL,''),(2524,167,'San Martin','',0,'','SM','',1,0,NULL,0,NULL,''),(2525,167,'Tacna','',0,'','TA','',1,0,NULL,0,NULL,''),(2526,167,'Tumbes','',0,'','TU','',1,0,NULL,0,NULL,''),(2527,167,'Ucayali','',0,'','UC','',1,0,NULL,0,NULL,''),(2528,168,'Abra','',0,'','ABR','',1,0,NULL,0,NULL,''),(2529,168,'Agusan del Norte','',0,'','ANO','',1,0,NULL,0,NULL,''),(2530,168,'Agusan del Sur','',0,'','ASU','',1,0,NULL,0,NULL,''),(2531,168,'Aklan','',0,'','AKL','',1,0,NULL,0,NULL,''),(2532,168,'Albay','',0,'','ALB','',1,0,NULL,0,NULL,''),(2533,168,'Antique','',0,'','ANT','',1,0,NULL,0,NULL,''),(2534,168,'Apayao','',0,'','APY','',1,0,NULL,0,NULL,''),(2535,168,'Aurora','',0,'','AUR','',1,0,NULL,0,NULL,''),(2536,168,'Basilan','',0,'','BAS','',1,0,NULL,0,NULL,''),(2537,168,'Bataan','',0,'','BTA','',1,0,NULL,0,NULL,''),(2538,168,'Batanes','',0,'','BTE','',1,0,NULL,0,NULL,''),(2539,168,'Batangas','',0,'','BTG','',1,0,NULL,0,NULL,''),(2540,168,'Biliran','',0,'','BLR','',1,0,NULL,0,NULL,''),(2541,168,'Benguet','',0,'','BEN','',1,0,NULL,0,NULL,''),(2542,168,'Bohol','',0,'','BOL','',1,0,NULL,0,NULL,''),(2543,168,'Bukidnon','',0,'','BUK','',1,0,NULL,0,NULL,''),(2544,168,'Bulacan','',0,'','BUL','',1,0,NULL,0,NULL,''),(2545,168,'Cagayan','',0,'','CAG','',1,0,NULL,0,NULL,''),(2546,168,'Camarines Norte','',0,'','CNO','',1,0,NULL,0,NULL,''),(2547,168,'Camarines Sur','',0,'','CSU','',1,0,NULL,0,NULL,''),(2548,168,'Camiguin','',0,'','CAM','',1,0,NULL,0,NULL,''),(2549,168,'Capiz','',0,'','CAP','',1,0,NULL,0,NULL,''),(2550,168,'Catanduanes','',0,'','CAT','',1,0,NULL,0,NULL,''),(2551,168,'Cavite','',0,'','CAV','',1,0,NULL,0,NULL,''),(2552,168,'Cebu','',0,'','CEB','',1,0,NULL,0,NULL,''),(2553,168,'Compostela','',0,'','CMP','',1,0,NULL,0,NULL,''),(2554,168,'Davao del Norte','',0,'','DNO','',1,0,NULL,0,NULL,''),(2555,168,'Davao del Sur','',0,'','DSU','',1,0,NULL,0,NULL,''),(2556,168,'Davao Oriental','',0,'','DOR','',1,0,NULL,0,NULL,''),(2557,168,'Eastern Samar','',0,'','ESA','',1,0,NULL,0,NULL,''),(2558,168,'Guimaras','',0,'','GUI','',1,0,NULL,0,NULL,''),(2559,168,'Ifugao','',0,'','IFU','',1,0,NULL,0,NULL,''),(2560,168,'Ilocos Norte','',0,'','INO','',1,0,NULL,0,NULL,''),(2561,168,'Ilocos Sur','',0,'','ISU','',1,0,NULL,0,NULL,''),(2562,168,'Iloilo','',0,'','ILO','',1,0,NULL,0,NULL,''),(2563,168,'Isabela','',0,'','ISA','',1,0,NULL,0,NULL,''),(2564,168,'Kalinga','',0,'','KAL','',1,0,NULL,0,NULL,''),(2565,168,'Laguna','',0,'','LAG','',1,0,NULL,0,NULL,''),(2566,168,'Lanao del Norte','',0,'','LNO','',1,0,NULL,0,NULL,''),(2567,168,'Lanao del Sur','',0,'','LSU','',1,0,NULL,0,NULL,''),(2568,168,'La Union','',0,'','UNI','',1,0,NULL,0,NULL,''),(2569,168,'Leyte','',0,'','LEY','',1,0,NULL,0,NULL,''),(2570,168,'Maguindanao','',0,'','MAG','',1,0,NULL,0,NULL,''),(2571,168,'Marinduque','',0,'','MRN','',1,0,NULL,0,NULL,''),(2572,168,'Masbate','',0,'','MSB','',1,0,NULL,0,NULL,''),(2573,168,'Mindoro Occidental','',0,'','MIC','',1,0,NULL,0,NULL,''),(2574,168,'Mindoro Oriental','',0,'','MIR','',1,0,NULL,0,NULL,''),(2575,168,'Misamis Occidental','',0,'','MSC','',1,0,NULL,0,NULL,''),(2576,168,'Misamis Oriental','',0,'','MOR','',1,0,NULL,0,NULL,''),(2577,168,'Mountain','',0,'','MOP','',1,0,NULL,0,NULL,''),(2578,168,'Negros Occidental','',0,'','NOC','',1,0,NULL,0,NULL,''),(2579,168,'Negros Oriental','',0,'','NOR','',1,0,NULL,0,NULL,''),(2580,168,'North Cotabato','',0,'','NCT','',1,0,NULL,0,NULL,''),(2581,168,'Northern Samar','',0,'','NSM','',1,0,NULL,0,NULL,''),(2582,168,'Nueva Ecija','',0,'','NEC','',1,0,NULL,0,NULL,''),(2583,168,'Nueva Vizcaya','',0,'','NVZ','',1,0,NULL,0,NULL,''),(2584,168,'Palawan','',0,'','PLW','',1,0,NULL,0,NULL,''),(2585,168,'Pampanga','',0,'','PMP','',1,0,NULL,0,NULL,''),(2586,168,'Pangasinan','',0,'','PNG','',1,0,NULL,0,NULL,''),(2587,168,'Quezon','',0,'','QZN','',1,0,NULL,0,NULL,''),(2588,168,'Quirino','',0,'','QRN','',1,0,NULL,0,NULL,''),(2589,168,'Rizal','',0,'','RIZ','',1,0,NULL,0,NULL,''),(2590,168,'Romblon','',0,'','ROM','',1,0,NULL,0,NULL,''),(2591,168,'Samar','',0,'','SMR','',1,0,NULL,0,NULL,''),(2592,168,'Sarangani','',0,'','SRG','',1,0,NULL,0,NULL,''),(2593,168,'Siquijor','',0,'','SQJ','',1,0,NULL,0,NULL,''),(2594,168,'Sorsogon','',0,'','SRS','',1,0,NULL,0,NULL,''),(2595,168,'South Cotabato','',0,'','SCO','',1,0,NULL,0,NULL,''),(2596,168,'Southern Leyte','',0,'','SLE','',1,0,NULL,0,NULL,''),(2597,168,'Sultan Kudarat','',0,'','SKU','',1,0,NULL,0,NULL,''),(2598,168,'Sulu','',0,'','SLU','',1,0,NULL,0,NULL,''),(2599,168,'Surigao del Norte','',0,'','SNO','',1,0,NULL,0,NULL,''),(2600,168,'Surigao del Sur','',0,'','SSU','',1,0,NULL,0,NULL,''),(2601,168,'Tarlac','',0,'','TAR','',1,0,NULL,0,NULL,''),(2602,168,'Tawi-Tawi','',0,'','TAW','',1,0,NULL,0,NULL,''),(2603,168,'Zambales','',0,'','ZBL','',1,0,NULL,0,NULL,''),(2604,168,'Zamboanga del Norte','',0,'','ZNO','',1,0,NULL,0,NULL,''),(2605,168,'Zamboanga del Sur','',0,'','ZSU','',1,0,NULL,0,NULL,''),(2606,168,'Zamboanga Sibugay','',0,'','ZSI','',1,0,NULL,0,NULL,''),(2607,170,'Dolnoslaskie','',0,'','DO','',1,0,NULL,0,NULL,''),(2608,170,'Kujawsko-Pomorskie','',0,'','KP','',1,0,NULL,0,NULL,''),(2609,170,'Lodzkie','',0,'','LO','',1,0,NULL,0,NULL,''),(2610,170,'Lubelskie','',0,'','LL','',1,0,NULL,0,NULL,''),(2611,170,'Lubuskie','',0,'','LU','',1,0,NULL,0,NULL,''),(2612,170,'Malopolskie','',0,'','ML','',1,0,NULL,0,NULL,''),(2613,170,'Mazowieckie','',0,'','MZ','',1,0,NULL,0,NULL,''),(2614,170,'Opolskie','',0,'','OP','',1,0,NULL,0,NULL,''),(2615,170,'Podkarpackie','',0,'','PP','',1,0,NULL,0,NULL,''),(2616,170,'Podlaskie','',0,'','PL','',1,0,NULL,0,NULL,''),(2617,170,'Pomorskie','',0,'','PM','',1,0,NULL,0,NULL,''),(2618,170,'Slaskie','',0,'','SL','',1,0,NULL,0,NULL,''),(2619,170,'Swietokrzyskie','',0,'','SW','',1,0,NULL,0,NULL,''),(2620,170,'Warminsko-Mazurskie','',0,'','WM','',1,0,NULL,0,NULL,''),(2621,170,'Wielkopolskie','',0,'','WP','',1,0,NULL,0,NULL,''),(2622,170,'Zachodniopomorskie','',0,'','ZA','',1,0,NULL,0,NULL,''),(2623,198,'Saint Pierre','',0,'','P','',1,0,NULL,0,NULL,''),(2624,198,'Miquelon','',0,'','M','',1,0,NULL,0,NULL,''),(2625,171,'A&ccedil;ores','',0,'','AC','',1,0,NULL,0,NULL,''),(2626,171,'Aveiro','',0,'','AV','',1,0,NULL,0,NULL,''),(2627,171,'Beja','',0,'','BE','',1,0,NULL,0,NULL,''),(2628,171,'Braga','',0,'','BR','',1,0,NULL,0,NULL,''),(2629,171,'Bragan&ccedil;a','',0,'','BA','',1,0,NULL,0,NULL,''),(2630,171,'Castelo Branco','',0,'','CB','',1,0,NULL,0,NULL,''),(2631,171,'Coimbra','',0,'','CO','',1,0,NULL,0,NULL,''),(2632,171,'&Eacute;vora','',0,'','EV','',1,0,NULL,0,NULL,''),(2633,171,'Faro','',0,'','FA','',1,0,NULL,0,NULL,''),(2634,171,'Guarda','',0,'','GU','',1,0,NULL,0,NULL,''),(2635,171,'Leiria','',0,'','LE','',1,0,NULL,0,NULL,''),(2636,171,'Lisboa','',0,'','LI','',1,0,NULL,0,NULL,''),(2637,171,'Madeira','',0,'','ME','',1,0,NULL,0,NULL,''),(2638,171,'Portalegre','',0,'','PO','',1,0,NULL,0,NULL,''),(2639,171,'Porto','',0,'','PR','',1,0,NULL,0,NULL,''),(2640,171,'Santar&eacute;m','',0,'','SA','',1,0,NULL,0,NULL,''),(2641,171,'Set&uacute;bal','',0,'','SE','',1,0,NULL,0,NULL,''),(2642,171,'Viana do Castelo','',0,'','VC','',1,0,NULL,0,NULL,''),(2643,171,'Vila Real','',0,'','VR','',1,0,NULL,0,NULL,''),(2644,171,'Viseu','',0,'','VI','',1,0,NULL,0,NULL,''),(2645,173,'Ad Dawhah','',0,'','DW','',1,0,NULL,0,NULL,''),(2646,173,'Al Ghuwayriyah','',0,'','GW','',1,0,NULL,0,NULL,''),(2647,173,'Al Jumayliyah','',0,'','JM','',1,0,NULL,0,NULL,''),(2648,173,'Al Khawr','',0,'','KR','',1,0,NULL,0,NULL,''),(2649,173,'Al Wakrah','',0,'','WK','',1,0,NULL,0,NULL,''),(2650,173,'Ar Rayyan','',0,'','RN','',1,0,NULL,0,NULL,''),(2651,173,'Jarayan al Batinah','',0,'','JB','',1,0,NULL,0,NULL,''),(2652,173,'Madinat ash Shamal','',0,'','MS','',1,0,NULL,0,NULL,''),(2653,173,'Umm Sa\'id','',0,'','UD','',1,0,NULL,0,NULL,''),(2654,173,'Umm Salal','',0,'','UL','',1,0,NULL,0,NULL,''),(2655,175,'Alba','',0,'','AB','',1,0,NULL,0,NULL,''),(2656,175,'Arad','',0,'','AR','',1,0,NULL,0,NULL,''),(2657,175,'Arges','',0,'','AG','',1,0,NULL,0,NULL,''),(2658,175,'Bacau','',0,'','BC','',1,0,NULL,0,NULL,''),(2659,175,'Bihor','',0,'','BH','',1,0,NULL,0,NULL,''),(2660,175,'Bistrita-Nasaud','',0,'','BN','',1,0,NULL,0,NULL,''),(2661,175,'Botosani','',0,'','BT','',1,0,NULL,0,NULL,''),(2662,175,'Brasov','',0,'','BV','',1,0,NULL,0,NULL,''),(2663,175,'Braila','',0,'','BR','',1,0,NULL,0,NULL,''),(2664,175,'Bucuresti','',0,'','B','',1,0,NULL,0,NULL,''),(2665,175,'Buzau','',0,'','BZ','',1,0,NULL,0,NULL,''),(2666,175,'Caras-Severin','',0,'','CS','',1,0,NULL,0,NULL,''),(2667,175,'Calarasi','',0,'','CL','',1,0,NULL,0,NULL,''),(2668,175,'Cluj','',0,'','CJ','',1,0,NULL,0,NULL,''),(2669,175,'Constanta','',0,'','CT','',1,0,NULL,0,NULL,''),(2670,175,'Covasna','',0,'','CV','',1,0,NULL,0,NULL,''),(2671,175,'Dimbovita','',0,'','DB','',1,0,NULL,0,NULL,''),(2672,175,'Dolj','',0,'','DJ','',1,0,NULL,0,NULL,''),(2673,175,'Galati','',0,'','GL','',1,0,NULL,0,NULL,''),(2674,175,'Giurgiu','',0,'','GR','',1,0,NULL,0,NULL,''),(2675,175,'Gorj','',0,'','GJ','',1,0,NULL,0,NULL,''),(2676,175,'Harghita','',0,'','HR','',1,0,NULL,0,NULL,''),(2677,175,'Hunedoara','',0,'','HD','',1,0,NULL,0,NULL,''),(2678,175,'Ialomita','',0,'','IL','',1,0,NULL,0,NULL,''),(2679,175,'Iasi','',0,'','IS','',1,0,NULL,0,NULL,''),(2680,175,'Ilfov','',0,'','IF','',1,0,NULL,0,NULL,''),(2681,175,'Maramures','',0,'','MM','',1,0,NULL,0,NULL,''),(2682,175,'Mehedinti','',0,'','MH','',1,0,NULL,0,NULL,''),(2683,175,'Mures','',0,'','MS','',1,0,NULL,0,NULL,''),(2684,175,'Neamt','',0,'','NT','',1,0,NULL,0,NULL,''),(2685,175,'Olt','',0,'','OT','',1,0,NULL,0,NULL,''),(2686,175,'Prahova','',0,'','PH','',1,0,NULL,0,NULL,''),(2687,175,'Satu-Mare','',0,'','SM','',1,0,NULL,0,NULL,''),(2688,175,'Salaj','',0,'','SJ','',1,0,NULL,0,NULL,''),(2689,175,'Sibiu','',0,'','SB','',1,0,NULL,0,NULL,''),(2690,175,'Suceava','',0,'','SV','',1,0,NULL,0,NULL,''),(2691,175,'Teleorman','',0,'','TR','',1,0,NULL,0,NULL,''),(2692,175,'Timis','',0,'','TM','',1,0,NULL,0,NULL,''),(2693,175,'Tulcea','',0,'','TL','',1,0,NULL,0,NULL,''),(2694,175,'Vaslui','',0,'','VS','',1,0,NULL,0,NULL,''),(2695,175,'Valcea','',0,'','VL','',1,0,NULL,0,NULL,''),(2696,175,'Vrancea','',0,'','VN','',1,0,NULL,0,NULL,''),(2697,176,'Abakan','',0,'','AB','',1,0,NULL,0,NULL,''),(2698,176,'Aginskoye','',0,'','AG','',1,0,NULL,0,NULL,''),(2699,176,'Anadyr','',0,'','AN','',1,0,NULL,0,NULL,''),(2700,176,'Arkahangelsk','',0,'','AR','',1,0,NULL,0,NULL,''),(2701,176,'Astrakhan','',0,'','AS','',1,0,NULL,0,NULL,''),(2702,176,'Barnaul','',0,'','BA','',1,0,NULL,0,NULL,''),(2703,176,'Belgorod','',0,'','BE','',1,0,NULL,0,NULL,''),(2704,176,'Birobidzhan','',0,'','BI','',1,0,NULL,0,NULL,''),(2705,176,'Blagoveshchensk','',0,'','BL','',1,0,NULL,0,NULL,''),(2706,176,'Bryansk','',0,'','BR','',1,0,NULL,0,NULL,''),(2707,176,'Cheboksary','',0,'','CH','',1,0,NULL,0,NULL,''),(2708,176,'Chelyabinsk','',0,'','CL','',1,0,NULL,0,NULL,''),(2709,176,'Cherkessk','',0,'','CR','',1,0,NULL,0,NULL,''),(2710,176,'Chita','',0,'','CI','',1,0,NULL,0,NULL,''),(2711,176,'Dudinka','',0,'','DU','',1,0,NULL,0,NULL,''),(2712,176,'Elista','',0,'','EL','',1,0,NULL,0,NULL,''),(2713,176,'Gomo-Altaysk','',0,'','GO','',1,0,NULL,0,NULL,''),(2714,176,'Gorno-Altaysk','',0,'','GA','',1,0,NULL,0,NULL,''),(2715,176,'Groznyy','',0,'','GR','',1,0,NULL,0,NULL,''),(2716,176,'Irkutsk','',0,'','IR','',1,0,NULL,0,NULL,''),(2717,176,'Ivanovo','',0,'','IV','',1,0,NULL,0,NULL,''),(2718,176,'Izhevsk','',0,'','IZ','',1,0,NULL,0,NULL,''),(2719,176,'Kalinigrad','',0,'','KA','',1,0,NULL,0,NULL,''),(2720,176,'Kaluga','',0,'','KL','',1,0,NULL,0,NULL,''),(2721,176,'Kasnodar','',0,'','KS','',1,0,NULL,0,NULL,''),(2722,176,'Kazan','',0,'','KZ','',1,0,NULL,0,NULL,''),(2723,176,'Kemerovo','',0,'','KE','',1,0,NULL,0,NULL,''),(2724,176,'Khabarovsk','',0,'','KH','',1,0,NULL,0,NULL,''),(2725,176,'Khanty-Mansiysk','',0,'','KM','',1,0,NULL,0,NULL,''),(2726,176,'Kostroma','',0,'','KO','',1,0,NULL,0,NULL,''),(2727,176,'Krasnodar','',0,'','KR','',1,0,NULL,0,NULL,''),(2728,176,'Krasnoyarsk','',0,'','KN','',1,0,NULL,0,NULL,''),(2729,176,'Kudymkar','',0,'','KU','',1,0,NULL,0,NULL,''),(2730,176,'Kurgan','',0,'','KG','',1,0,NULL,0,NULL,''),(2731,176,'Kursk','',0,'','KK','',1,0,NULL,0,NULL,''),(2732,176,'Kyzyl','',0,'','KY','',1,0,NULL,0,NULL,''),(2733,176,'Lipetsk','',0,'','LI','',1,0,NULL,0,NULL,''),(2734,176,'Magadan','',0,'','MA','',1,0,NULL,0,NULL,''),(2735,176,'Makhachkala','',0,'','MK','',1,0,NULL,0,NULL,''),(2736,176,'Maykop','',0,'','MY','',1,0,NULL,0,NULL,''),(2737,176,'Moscow','',0,'','MO','',1,0,NULL,0,NULL,''),(2738,176,'Murmansk','',0,'','MU','',1,0,NULL,0,NULL,''),(2739,176,'Nalchik','',0,'','NA','',1,0,NULL,0,NULL,''),(2740,176,'Naryan Mar','',0,'','NR','',1,0,NULL,0,NULL,''),(2741,176,'Nazran','',0,'','NZ','',1,0,NULL,0,NULL,''),(2742,176,'Nizhniy Novgorod','',0,'','NI','',1,0,NULL,0,NULL,''),(2743,176,'Novgorod','',0,'','NO','',1,0,NULL,0,NULL,''),(2744,176,'Novosibirsk','',0,'','NV','',1,0,NULL,0,NULL,''),(2745,176,'Omsk','',0,'','OM','',1,0,NULL,0,NULL,''),(2746,176,'Orel','',0,'','OR','',1,0,NULL,0,NULL,''),(2747,176,'Orenburg','',0,'','OE','',1,0,NULL,0,NULL,''),(2748,176,'Palana','',0,'','PA','',1,0,NULL,0,NULL,''),(2749,176,'Penza','',0,'','PE','',1,0,NULL,0,NULL,''),(2750,176,'Perm','',0,'','PR','',1,0,NULL,0,NULL,''),(2751,176,'Petropavlovsk-Kamchatskiy','',0,'','PK','',1,0,NULL,0,NULL,''),(2752,176,'Petrozavodsk','',0,'','PT','',1,0,NULL,0,NULL,''),(2753,176,'Pskov','',0,'','PS','',1,0,NULL,0,NULL,''),(2754,176,'Rostov-na-Donu','',0,'','RO','',1,0,NULL,0,NULL,''),(2755,176,'Ryazan','',0,'','RY','',1,0,NULL,0,NULL,''),(2756,176,'Salekhard','',0,'','SL','',1,0,NULL,0,NULL,''),(2757,176,'Samara','',0,'','SA','',1,0,NULL,0,NULL,''),(2758,176,'Saransk','',0,'','SR','',1,0,NULL,0,NULL,''),(2759,176,'Saratov','',0,'','SV','',1,0,NULL,0,NULL,''),(2760,176,'Smolensk','',0,'','SM','',1,0,NULL,0,NULL,''),(2761,176,'St. Petersburg','',0,'','SP','',1,0,NULL,0,NULL,''),(2762,176,'Stavropol','',0,'','ST','',1,0,NULL,0,NULL,''),(2763,176,'Syktyvkar','',0,'','SY','',1,0,NULL,0,NULL,''),(2764,176,'Tambov','',0,'','TA','',1,0,NULL,0,NULL,''),(2765,176,'Tomsk','',0,'','TO','',1,0,NULL,0,NULL,''),(2766,176,'Tula','',0,'','TU','',1,0,NULL,0,NULL,''),(2767,176,'Tura','',0,'','TR','',1,0,NULL,0,NULL,''),(2768,176,'Tver','',0,'','TV','',1,0,NULL,0,NULL,''),(2769,176,'Tyumen','',0,'','TY','',1,0,NULL,0,NULL,''),(2770,176,'Ufa','',0,'','UF','',1,0,NULL,0,NULL,''),(2771,176,'Ul\'yanovsk','',0,'','UL','',1,0,NULL,0,NULL,''),(2772,176,'Ulan-Ude','',0,'','UU','',1,0,NULL,0,NULL,''),(2773,176,'Ust\'-Ordynskiy','',0,'','US','',1,0,NULL,0,NULL,''),(2774,176,'Vladikavkaz','',0,'','VL','',1,0,NULL,0,NULL,''),(2775,176,'Vladimir','',0,'','VA','',1,0,NULL,0,NULL,''),(2776,176,'Vladivostok','',0,'','VV','',1,0,NULL,0,NULL,''),(2777,176,'Volgograd','',0,'','VG','',1,0,NULL,0,NULL,''),(2778,176,'Vologda','',0,'','VD','',1,0,NULL,0,NULL,''),(2779,176,'Voronezh','',0,'','VO','',1,0,NULL,0,NULL,''),(2780,176,'Vyatka','',0,'','VY','',1,0,NULL,0,NULL,''),(2781,176,'Yakutsk','',0,'','YA','',1,0,NULL,0,NULL,''),(2782,176,'Yaroslavl','',0,'','YR','',1,0,NULL,0,NULL,''),(2783,176,'Yekaterinburg','',0,'','YE','',1,0,NULL,0,NULL,''),(2784,176,'Yoshkar-Ola','',0,'','YO','',1,0,NULL,0,NULL,''),(2785,177,'Butare','',0,'','BU','',1,0,NULL,0,NULL,''),(2786,177,'Byumba','',0,'','BY','',1,0,NULL,0,NULL,''),(2787,177,'Cyangugu','',0,'','CY','',1,0,NULL,0,NULL,''),(2788,177,'Gikongoro','',0,'','GK','',1,0,NULL,0,NULL,''),(2789,177,'Gisenyi','',0,'','GS','',1,0,NULL,0,NULL,''),(2790,177,'Gitarama','',0,'','GT','',1,0,NULL,0,NULL,''),(2791,177,'Kibungo','',0,'','KG','',1,0,NULL,0,NULL,''),(2792,177,'Kibuye','',0,'','KY','',1,0,NULL,0,NULL,''),(2793,177,'Kigali Rurale','',0,'','KR','',1,0,NULL,0,NULL,''),(2794,177,'Kigali-ville','',0,'','KV','',1,0,NULL,0,NULL,''),(2795,177,'Ruhengeri','',0,'','RU','',1,0,NULL,0,NULL,''),(2796,177,'Umutara','',0,'','UM','',1,0,NULL,0,NULL,''),(2797,178,'Christ Church Nichola Town','',0,'','CCN','',1,0,NULL,0,NULL,''),(2798,178,'Saint Anne Sandy Point','',0,'','SAS','',1,0,NULL,0,NULL,''),(2799,178,'Saint George Basseterre','',0,'','SGB','',1,0,NULL,0,NULL,''),(2800,178,'Saint George Gingerland','',0,'','SGG','',1,0,NULL,0,NULL,''),(2801,178,'Saint James Windward','',0,'','SJW','',1,0,NULL,0,NULL,''),(2802,178,'Saint John Capesterre','',0,'','SJC','',1,0,NULL,0,NULL,''),(2803,178,'Saint John Figtree','',0,'','SJF','',1,0,NULL,0,NULL,''),(2804,178,'Saint Mary Cayon','',0,'','SMC','',1,0,NULL,0,NULL,''),(2805,178,'Saint Paul Capesterre','',0,'','CAP','',1,0,NULL,0,NULL,''),(2806,178,'Saint Paul Charlestown','',0,'','CHA','',1,0,NULL,0,NULL,''),(2807,178,'Saint Peter Basseterre','',0,'','SPB','',1,0,NULL,0,NULL,''),(2808,178,'Saint Thomas Lowland','',0,'','STL','',1,0,NULL,0,NULL,''),(2809,178,'Saint Thomas Middle Island','',0,'','STM','',1,0,NULL,0,NULL,''),(2810,178,'Trinity Palmetto Point','',0,'','TPP','',1,0,NULL,0,NULL,''),(2811,179,'Anse-la-Raye','',0,'','AR','',1,0,NULL,0,NULL,''),(2812,179,'Castries','',0,'','CA','',1,0,NULL,0,NULL,''),(2813,179,'Choiseul','',0,'','CH','',1,0,NULL,0,NULL,''),(2814,179,'Dauphin','',0,'','DA','',1,0,NULL,0,NULL,''),(2815,179,'Dennery','',0,'','DE','',1,0,NULL,0,NULL,''),(2816,179,'Gros-Islet','',0,'','GI','',1,0,NULL,0,NULL,''),(2817,179,'Laborie','',0,'','LA','',1,0,NULL,0,NULL,''),(2818,179,'Micoud','',0,'','MI','',1,0,NULL,0,NULL,''),(2819,179,'Praslin','',0,'','PR','',1,0,NULL,0,NULL,''),(2820,179,'Soufriere','',0,'','SO','',1,0,NULL,0,NULL,''),(2821,179,'Vieux-Fort','',0,'','VF','',1,0,NULL,0,NULL,''),(2822,180,'Charlotte','',0,'','C','',1,0,NULL,0,NULL,''),(2823,180,'Grenadines','',0,'','R','',1,0,NULL,0,NULL,''),(2824,180,'Saint Andrew','',0,'','A','',1,0,NULL,0,NULL,''),(2825,180,'Saint David','',0,'','D','',1,0,NULL,0,NULL,''),(2826,180,'Saint George','',0,'','G','',1,0,NULL,0,NULL,''),(2827,180,'Saint Patrick','',0,'','P','',1,0,NULL,0,NULL,''),(2828,181,'A\'ana','',0,'','AN','',1,0,NULL,0,NULL,''),(2829,181,'Aiga-i-le-Tai','',0,'','AI','',1,0,NULL,0,NULL,''),(2830,181,'Atua','',0,'','AT','',1,0,NULL,0,NULL,''),(2831,181,'Fa\'asaleleaga','',0,'','FA','',1,0,NULL,0,NULL,''),(2832,181,'Gaga\'emauga','',0,'','GE','',1,0,NULL,0,NULL,''),(2833,181,'Gagaifomauga','',0,'','GF','',1,0,NULL,0,NULL,''),(2834,181,'Palauli','',0,'','PA','',1,0,NULL,0,NULL,''),(2835,181,'Satupa\'itea','',0,'','SA','',1,0,NULL,0,NULL,''),(2836,181,'Tuamasaga','',0,'','TU','',1,0,NULL,0,NULL,''),(2837,181,'Va\'a-o-Fonoti','',0,'','VF','',1,0,NULL,0,NULL,''),(2838,181,'Vaisigano','',0,'','VS','',1,0,NULL,0,NULL,''),(2839,182,'Acquaviva','',0,'','AC','',1,0,NULL,0,NULL,''),(2840,182,'Borgo Maggiore','',0,'','BM','',1,0,NULL,0,NULL,''),(2841,182,'Chiesanuova','',0,'','CH','',1,0,NULL,0,NULL,''),(2842,182,'Domagnano','',0,'','DO','',1,0,NULL,0,NULL,''),(2843,182,'Faetano','',0,'','FA','',1,0,NULL,0,NULL,''),(2844,182,'Fiorentino','',0,'','FI','',1,0,NULL,0,NULL,''),(2845,182,'Montegiardino','',0,'','MO','',1,0,NULL,0,NULL,''),(2846,182,'Citta di San Marino','',0,'','SM','',1,0,NULL,0,NULL,''),(2847,182,'Serravalle','',0,'','SE','',1,0,NULL,0,NULL,''),(2848,183,'Sao Tome','',0,'','S','',1,0,NULL,0,NULL,''),(2849,183,'Principe','',0,'','P','',1,0,NULL,0,NULL,''),(2850,184,'Al Bahah','',0,'','BH','',1,0,NULL,0,NULL,''),(2851,184,'Al Hudud ash Shamaliyah','',0,'','HS','',1,0,NULL,0,NULL,''),(2852,184,'Al Jawf','',0,'','JF','',1,0,NULL,0,NULL,''),(2853,184,'Al Madinah','',0,'','MD','',1,0,NULL,0,NULL,''),(2854,184,'Al Qasim','',0,'','QS','',1,0,NULL,0,NULL,''),(2855,184,'Ar Riyad','',0,'','RD','',1,0,NULL,0,NULL,''),(2856,184,'Ash Sharqiyah (Eastern)','',0,'','AQ','',1,0,NULL,0,NULL,''),(2857,184,'\'Asir','',0,'','AS','',1,0,NULL,0,NULL,''),(2858,184,'Ha\'il','',0,'','HL','',1,0,NULL,0,NULL,''),(2859,184,'Jizan','',0,'','JZ','',1,0,NULL,0,NULL,''),(2860,184,'Makkah','',0,'','ML','',1,0,NULL,0,NULL,''),(2861,184,'Najran','',0,'','NR','',1,0,NULL,0,NULL,''),(2862,184,'Tabuk','',0,'','TB','',1,0,NULL,0,NULL,''),(2863,185,'Dakar','',0,'','DA','',1,0,NULL,0,NULL,''),(2864,185,'Diourbel','',0,'','DI','',1,0,NULL,0,NULL,''),(2865,185,'Fatick','',0,'','FA','',1,0,NULL,0,NULL,''),(2866,185,'Kaolack','',0,'','KA','',1,0,NULL,0,NULL,''),(2867,185,'Kolda','',0,'','KO','',1,0,NULL,0,NULL,''),(2868,185,'Louga','',0,'','LO','',1,0,NULL,0,NULL,''),(2869,185,'Matam','',0,'','MA','',1,0,NULL,0,NULL,''),(2870,185,'Saint-Louis','',0,'','SL','',1,0,NULL,0,NULL,''),(2871,185,'Tambacounda','',0,'','TA','',1,0,NULL,0,NULL,''),(2872,185,'Thies','',0,'','TH','',1,0,NULL,0,NULL,''),(2873,185,'Ziguinchor','',0,'','ZI','',1,0,NULL,0,NULL,''),(2874,186,'Anse aux Pins','',0,'','AP','',1,0,NULL,0,NULL,''),(2875,186,'Anse Boileau','',0,'','AB','',1,0,NULL,0,NULL,''),(2876,186,'Anse Etoile','',0,'','AE','',1,0,NULL,0,NULL,''),(2877,186,'Anse Louis','',0,'','AL','',1,0,NULL,0,NULL,''),(2878,186,'Anse Royale','',0,'','AR','',1,0,NULL,0,NULL,''),(2879,186,'Baie Lazare','',0,'','BL','',1,0,NULL,0,NULL,''),(2880,186,'Baie Sainte Anne','',0,'','BS','',1,0,NULL,0,NULL,''),(2881,186,'Beau Vallon','',0,'','BV','',1,0,NULL,0,NULL,''),(2882,186,'Bel Air','',0,'','BA','',1,0,NULL,0,NULL,''),(2883,186,'Bel Ombre','',0,'','BO','',1,0,NULL,0,NULL,''),(2884,186,'Cascade','',0,'','CA','',1,0,NULL,0,NULL,''),(2885,186,'Glacis','',0,'','GL','',1,0,NULL,0,NULL,''),(2886,186,'Grand\' Anse (on Mahe)','',0,'','GM','',1,0,NULL,0,NULL,''),(2887,186,'Grand\' Anse (on Praslin)','',0,'','GP','',1,0,NULL,0,NULL,''),(2888,186,'La Digue','',0,'','DG','',1,0,NULL,0,NULL,''),(2889,186,'La Riviere Anglaise','',0,'','RA','',1,0,NULL,0,NULL,''),(2890,186,'Mont Buxton','',0,'','MB','',1,0,NULL,0,NULL,''),(2891,186,'Mont Fleuri','',0,'','MF','',1,0,NULL,0,NULL,''),(2892,186,'Plaisance','',0,'','PL','',1,0,NULL,0,NULL,''),(2893,186,'Pointe La Rue','',0,'','PR','',1,0,NULL,0,NULL,''),(2894,186,'Port Glaud','',0,'','PG','',1,0,NULL,0,NULL,''),(2895,186,'Saint Louis','',0,'','SL','',1,0,NULL,0,NULL,''),(2896,186,'Takamaka','',0,'','TA','',1,0,NULL,0,NULL,''),(2897,187,'Eastern','',0,'','E','',1,0,NULL,0,NULL,''),(2898,187,'Northern','',0,'','N','',1,0,NULL,0,NULL,''),(2899,187,'Southern','',0,'','S','',1,0,NULL,0,NULL,''),(2900,187,'Western','',0,'','W','',1,0,NULL,0,NULL,''),(2901,189,'Banskobystrický','',0,'','BA','',1,0,NULL,0,NULL,''),(2902,189,'Bratislavský','',0,'','BR','',1,0,NULL,0,NULL,''),(2903,189,'Košický','',0,'','KO','',1,0,NULL,0,NULL,''),(2904,189,'Nitriansky','',0,'','NI','',1,0,NULL,0,NULL,''),(2905,189,'Prešovský','',0,'','PR','',1,0,NULL,0,NULL,''),(2906,189,'Trenčiansky','',0,'','TC','',1,0,NULL,0,NULL,''),(2907,189,'Trnavský','',0,'','TV','',1,0,NULL,0,NULL,''),(2908,189,'Žilinský','',0,'','ZI','',1,0,NULL,0,NULL,''),(2909,191,'Central','',0,'','CE','',1,0,NULL,0,NULL,''),(2910,191,'Choiseul','',0,'','CH','',1,0,NULL,0,NULL,''),(2911,191,'Guadalcanal','',0,'','GC','',1,0,NULL,0,NULL,''),(2912,191,'Honiara','',0,'','HO','',1,0,NULL,0,NULL,''),(2913,191,'Isabel','',0,'','IS','',1,0,NULL,0,NULL,''),(2914,191,'Makira','',0,'','MK','',1,0,NULL,0,NULL,''),(2915,191,'Malaita','',0,'','ML','',1,0,NULL,0,NULL,''),(2916,191,'Rennell and Bellona','',0,'','RB','',1,0,NULL,0,NULL,''),(2917,191,'Temotu','',0,'','TM','',1,0,NULL,0,NULL,''),(2918,191,'Western','',0,'','WE','',1,0,NULL,0,NULL,''),(2919,192,'Awdal','',0,'','AW','',1,0,NULL,0,NULL,''),(2920,192,'Bakool','',0,'','BK','',1,0,NULL,0,NULL,''),(2921,192,'Banaadir','',0,'','BN','',1,0,NULL,0,NULL,''),(2922,192,'Bari','',0,'','BR','',1,0,NULL,0,NULL,''),(2923,192,'Bay','',0,'','BY','',1,0,NULL,0,NULL,''),(2924,192,'Galguduud','',0,'','GA','',1,0,NULL,0,NULL,''),(2925,192,'Gedo','',0,'','GE','',1,0,NULL,0,NULL,''),(2926,192,'Hiiraan','',0,'','HI','',1,0,NULL,0,NULL,''),(2927,192,'Jubbada Dhexe','',0,'','JD','',1,0,NULL,0,NULL,''),(2928,192,'Jubbada Hoose','',0,'','JH','',1,0,NULL,0,NULL,''),(2929,192,'Mudug','',0,'','MU','',1,0,NULL,0,NULL,''),(2930,192,'Nugaal','',0,'','NU','',1,0,NULL,0,NULL,''),(2931,192,'Sanaag','',0,'','SA','',1,0,NULL,0,NULL,''),(2932,192,'Shabeellaha Dhexe','',0,'','SD','',1,0,NULL,0,NULL,''),(2933,192,'Shabeellaha Hoose','',0,'','SH','',1,0,NULL,0,NULL,''),(2934,192,'Sool','',0,'','SL','',1,0,NULL,0,NULL,''),(2935,192,'Togdheer','',0,'','TO','',1,0,NULL,0,NULL,''),(2936,192,'Woqooyi Galbeed','',0,'','WG','',1,0,NULL,0,NULL,''),(2937,193,'Eastern Cape','',0,'','EC','',1,0,NULL,0,NULL,''),(2938,193,'Free State','',0,'','FS','',1,0,NULL,0,NULL,''),(2939,193,'Gauteng','',0,'','GT','',1,0,NULL,0,NULL,''),(2940,193,'KwaZulu-Natal','',0,'','KN','',1,0,NULL,0,NULL,''),(2941,193,'Limpopo','',0,'','LP','',1,0,NULL,0,NULL,''),(2942,193,'Mpumalanga','',0,'','MP','',1,0,NULL,0,NULL,''),(2943,193,'North West','',0,'','NW','',1,0,NULL,0,NULL,''),(2944,193,'Northern Cape','',0,'','NC','',1,0,NULL,0,NULL,''),(2945,193,'Western Cape','',0,'','WC','',1,0,NULL,0,NULL,''),(2946,195,'La Coru&ntilde;a','',0,'','CA','',1,0,NULL,0,NULL,''),(2947,195,'&Aacute;lava','',0,'','AL','',1,0,NULL,0,NULL,''),(2948,195,'Albacete','',0,'','AB','',1,0,NULL,0,NULL,''),(2949,195,'Alicante','',0,'','AC','',1,0,NULL,0,NULL,''),(2950,195,'Almeria','',0,'','AM','',1,0,NULL,0,NULL,''),(2951,195,'Asturias','',0,'','AS','',1,0,NULL,0,NULL,''),(2952,195,'&Aacute;vila','',0,'','AV','',1,0,NULL,0,NULL,''),(2953,195,'Badajoz','',0,'','BJ','',1,0,NULL,0,NULL,''),(2954,195,'Baleares','',0,'','IB','',1,0,NULL,0,NULL,''),(2955,195,'Barcelona','',0,'','BA','',1,0,NULL,0,NULL,''),(2956,195,'Burgos','',0,'','BU','',1,0,NULL,0,NULL,''),(2957,195,'C&aacute;ceres','',0,'','CC','',1,0,NULL,0,NULL,''),(2958,195,'C&aacute;diz','',0,'','CZ','',1,0,NULL,0,NULL,''),(2959,195,'Cantabria','',0,'','CT','',1,0,NULL,0,NULL,''),(2960,195,'Castell&oacute;n','',0,'','CL','',1,0,NULL,0,NULL,''),(2961,195,'Ceuta','',0,'','CE','',1,0,NULL,0,NULL,''),(2962,195,'Ciudad Real','',0,'','CR','',1,0,NULL,0,NULL,''),(2963,195,'C&oacute;rdoba','',0,'','CD','',1,0,NULL,0,NULL,''),(2964,195,'Cuenca','',0,'','CU','',1,0,NULL,0,NULL,''),(2965,195,'Girona','',0,'','GI','',1,0,NULL,0,NULL,''),(2966,195,'Granada','',0,'','GD','',1,0,NULL,0,NULL,''),(2967,195,'Guadalajara','',0,'','GJ','',1,0,NULL,0,NULL,''),(2968,195,'Guip&uacute;zcoa','',0,'','GP','',1,0,NULL,0,NULL,''),(2969,195,'Huelva','',0,'','HL','',1,0,NULL,0,NULL,''),(2970,195,'Huesca','',0,'','HS','',1,0,NULL,0,NULL,''),(2971,195,'Ja&eacute;n','',0,'','JN','',1,0,NULL,0,NULL,''),(2972,195,'La Rioja','',0,'','RJ','',1,0,NULL,0,NULL,''),(2973,195,'Las Palmas','',0,'','PM','',1,0,NULL,0,NULL,''),(2974,195,'Leon','',0,'','LE','',1,0,NULL,0,NULL,''),(2975,195,'Lleida','',0,'','LL','',1,0,NULL,0,NULL,''),(2976,195,'Lugo','',0,'','LG','',1,0,NULL,0,NULL,''),(2977,195,'Madrid','',0,'','MD','',1,0,NULL,0,NULL,''),(2978,195,'Malaga','',0,'','MA','',1,0,NULL,0,NULL,''),(2979,195,'Melilla','',0,'','ML','',1,0,NULL,0,NULL,''),(2980,195,'Murcia','',0,'','MU','',1,0,NULL,0,NULL,''),(2981,195,'Navarra','',0,'','NV','',1,0,NULL,0,NULL,''),(2982,195,'Ourense','',0,'','OU','',1,0,NULL,0,NULL,''),(2983,195,'Palencia','',0,'','PL','',1,0,NULL,0,NULL,''),(2984,195,'Pontevedra','',0,'','PO','',1,0,NULL,0,NULL,''),(2985,195,'Salamanca','',0,'','SL','',1,0,NULL,0,NULL,''),(2986,195,'Santa Cruz de Tenerife','',0,'','SC','',1,0,NULL,0,NULL,''),(2987,195,'Segovia','',0,'','SG','',1,0,NULL,0,NULL,''),(2988,195,'Sevilla','',0,'','SV','',1,0,NULL,0,NULL,''),(2989,195,'Soria','',0,'','SO','',1,0,NULL,0,NULL,''),(2990,195,'Tarragona','',0,'','TA','',1,0,NULL,0,NULL,''),(2991,195,'Teruel','',0,'','TE','',1,0,NULL,0,NULL,''),(2992,195,'Toledo','',0,'','TO','',1,0,NULL,0,NULL,''),(2993,195,'Valencia','',0,'','VC','',1,0,NULL,0,NULL,''),(2994,195,'Valladolid','',0,'','VD','',1,0,NULL,0,NULL,''),(2995,195,'Vizcaya','',0,'','VZ','',1,0,NULL,0,NULL,''),(2996,195,'Zamora','',0,'','ZM','',1,0,NULL,0,NULL,''),(2997,195,'Zaragoza','',0,'','ZR','',1,0,NULL,0,NULL,''),(2998,196,'Central','',0,'','CE','',1,0,NULL,0,NULL,''),(2999,196,'Eastern','',0,'','EA','',1,0,NULL,0,NULL,''),(3000,196,'North Central','',0,'','NC','',1,0,NULL,0,NULL,''),(3001,196,'Northern','',0,'','NO','',1,0,NULL,0,NULL,''),(3002,196,'North Western','',0,'','NW','',1,0,NULL,0,NULL,''),(3003,196,'Sabaragamuwa','',0,'','SA','',1,0,NULL,0,NULL,''),(3004,196,'Southern','',0,'','SO','',1,0,NULL,0,NULL,''),(3005,196,'Uva','',0,'','UV','',1,0,NULL,0,NULL,''),(3006,196,'Western','',0,'','WE','',1,0,NULL,0,NULL,''),(3007,197,'Ascension','',0,'','A','',1,0,NULL,0,NULL,''),(3008,197,'Saint Helena','',0,'','S','',1,0,NULL,0,NULL,''),(3009,197,'Tristan da Cunha','',0,'','T','',1,0,NULL,0,NULL,''),(3010,199,'A\'ali an Nil','',0,'','ANL','',1,0,NULL,0,NULL,''),(3011,199,'Al Bahr al Ahmar','',0,'','BAM','',1,0,NULL,0,NULL,''),(3012,199,'Al Buhayrat','',0,'','BRT','',1,0,NULL,0,NULL,''),(3013,199,'Al Jazirah','',0,'','JZR','',1,0,NULL,0,NULL,''),(3014,199,'Al Khartum','',0,'','KRT','',1,0,NULL,0,NULL,''),(3015,199,'Al Qadarif','',0,'','QDR','',1,0,NULL,0,NULL,''),(3016,199,'Al Wahdah','',0,'','WDH','',1,0,NULL,0,NULL,''),(3017,199,'An Nil al Abyad','',0,'','ANB','',1,0,NULL,0,NULL,''),(3018,199,'An Nil al Azraq','',0,'','ANZ','',1,0,NULL,0,NULL,''),(3019,199,'Ash Shamaliyah','',0,'','ASH','',1,0,NULL,0,NULL,''),(3020,199,'Bahr al Jabal','',0,'','BJA','',1,0,NULL,0,NULL,''),(3021,199,'Gharb al Istiwa\'iyah','',0,'','GIS','',1,0,NULL,0,NULL,''),(3022,199,'Gharb Bahr al Ghazal','',0,'','GBG','',1,0,NULL,0,NULL,''),(3023,199,'Gharb Darfur','',0,'','GDA','',1,0,NULL,0,NULL,''),(3024,199,'Gharb Kurdufan','',0,'','GKU','',1,0,NULL,0,NULL,''),(3025,199,'Janub Darfur','',0,'','JDA','',1,0,NULL,0,NULL,''),(3026,199,'Janub Kurdufan','',0,'','JKU','',1,0,NULL,0,NULL,''),(3027,199,'Junqali','',0,'','JQL','',1,0,NULL,0,NULL,''),(3028,199,'Kassala','',0,'','KSL','',1,0,NULL,0,NULL,''),(3029,199,'Nahr an Nil','',0,'','NNL','',1,0,NULL,0,NULL,''),(3030,199,'Shamal Bahr al Ghazal','',0,'','SBG','',1,0,NULL,0,NULL,''),(3031,199,'Shamal Darfur','',0,'','SDA','',1,0,NULL,0,NULL,''),(3032,199,'Shamal Kurdufan','',0,'','SKU','',1,0,NULL,0,NULL,''),(3033,199,'Sharq al Istiwa\'iyah','',0,'','SIS','',1,0,NULL,0,NULL,''),(3034,199,'Sinnar','',0,'','SNR','',1,0,NULL,0,NULL,''),(3035,199,'Warab','',0,'','WRB','',1,0,NULL,0,NULL,''),(3036,200,'Brokopondo','',0,'','BR','',1,0,NULL,0,NULL,''),(3037,200,'Commewijne','',0,'','CM','',1,0,NULL,0,NULL,''),(3038,200,'Coronie','',0,'','CR','',1,0,NULL,0,NULL,''),(3039,200,'Marowijne','',0,'','MA','',1,0,NULL,0,NULL,''),(3040,200,'Nickerie','',0,'','NI','',1,0,NULL,0,NULL,''),(3041,200,'Para','',0,'','PA','',1,0,NULL,0,NULL,''),(3042,200,'Paramaribo','',0,'','PM','',1,0,NULL,0,NULL,''),(3043,200,'Saramacca','',0,'','SA','',1,0,NULL,0,NULL,''),(3044,200,'Sipaliwini','',0,'','SI','',1,0,NULL,0,NULL,''),(3045,200,'Wanica','',0,'','WA','',1,0,NULL,0,NULL,''),(3046,202,'Hhohho','',0,'','H','',1,0,NULL,0,NULL,''),(3047,202,'Lubombo','',0,'','L','',1,0,NULL,0,NULL,''),(3048,202,'Manzini','',0,'','M','',1,0,NULL,0,NULL,''),(3049,202,'Shishelweni','',0,'','S','',1,0,NULL,0,NULL,''),(3050,203,'Blekinge','',0,'','K','',1,0,NULL,0,NULL,''),(3051,203,'Dalarna','',0,'','W','',1,0,NULL,0,NULL,''),(3052,203,'G&auml;vleborg','',0,'','X','',1,0,NULL,0,NULL,''),(3053,203,'Gotland','',0,'','I','',1,0,NULL,0,NULL,''),(3054,203,'Halland','',0,'','N','',1,0,NULL,0,NULL,''),(3055,203,'J&auml;mtland','',0,'','Z','',1,0,NULL,0,NULL,''),(3056,203,'J&ouml;nk&ouml;ping','',0,'','F','',1,0,NULL,0,NULL,''),(3057,203,'Kalmar','',0,'','H','',1,0,NULL,0,NULL,''),(3058,203,'Kronoberg','',0,'','G','',1,0,NULL,0,NULL,''),(3059,203,'Norrbotten','',0,'','BD','',1,0,NULL,0,NULL,''),(3060,203,'&Ouml;rebro','',0,'','T','',1,0,NULL,0,NULL,''),(3061,203,'&Ouml;sterg&ouml;tland','',0,'','E','',1,0,NULL,0,NULL,''),(3062,203,'Sk&aring;ne','',0,'','M','',1,0,NULL,0,NULL,''),(3063,203,'S&ouml;dermanland','',0,'','D','',1,0,NULL,0,NULL,''),(3064,203,'Stockholm','',0,'','AB','',1,0,NULL,0,NULL,''),(3065,203,'Uppsala','',0,'','C','',1,0,NULL,0,NULL,''),(3066,203,'V&auml;rmland','',0,'','S','',1,0,NULL,0,NULL,''),(3067,203,'V&auml;sterbotten','',0,'','AC','',1,0,NULL,0,NULL,''),(3068,203,'V&auml;sternorrland','',0,'','Y','',1,0,NULL,0,NULL,''),(3069,203,'V&auml;stmanland','',0,'','U','',1,0,NULL,0,NULL,''),(3070,203,'V&auml;stra G&ouml;taland','',0,'','O','',1,0,NULL,0,NULL,''),(3071,204,'Aargau','',0,'','AG','',1,0,NULL,0,NULL,''),(3072,204,'Appenzell Ausserrhoden','',0,'','AR','',1,0,NULL,0,NULL,''),(3073,204,'Appenzell Innerrhoden','',0,'','AI','',1,0,NULL,0,NULL,''),(3074,204,'Basel-Stadt','',0,'','BS','',1,0,NULL,0,NULL,''),(3075,204,'Basel-Landschaft','',0,'','BL','',1,0,NULL,0,NULL,''),(3076,204,'Bern','',0,'','BE','',1,0,NULL,0,NULL,''),(3077,204,'Fribourg','',0,'','FR','',1,0,NULL,0,NULL,''),(3078,204,'Gen&egrave;ve','',0,'','GE','',1,0,NULL,0,NULL,''),(3079,204,'Glarus','',0,'','GL','',1,0,NULL,0,NULL,''),(3080,204,'Graub&uuml;nden','',0,'','GR','',1,0,NULL,0,NULL,''),(3081,204,'Jura','',0,'','JU','',1,0,NULL,0,NULL,''),(3082,204,'Luzern','',0,'','LU','',1,0,NULL,0,NULL,''),(3083,204,'Neuch&acirc;tel','',0,'','NE','',1,0,NULL,0,NULL,''),(3084,204,'Nidwalden','',0,'','NW','',1,0,NULL,0,NULL,''),(3085,204,'Obwalden','',0,'','OW','',1,0,NULL,0,NULL,''),(3086,204,'St. Gallen','',0,'','SG','',1,0,NULL,0,NULL,''),(3087,204,'Schaffhausen','',0,'','SH','',1,0,NULL,0,NULL,''),(3088,204,'Schwyz','',0,'','SZ','',1,0,NULL,0,NULL,''),(3089,204,'Solothurn','',0,'','SO','',1,0,NULL,0,NULL,''),(3090,204,'Thurgau','',0,'','TG','',1,0,NULL,0,NULL,''),(3091,204,'Ticino','',0,'','TI','',1,0,NULL,0,NULL,''),(3092,204,'Uri','',0,'','UR','',1,0,NULL,0,NULL,''),(3093,204,'Valais','',0,'','VS','',1,0,NULL,0,NULL,''),(3094,204,'Vaud','',0,'','VD','',1,0,NULL,0,NULL,''),(3095,204,'Zug','',0,'','ZG','',1,0,NULL,0,NULL,''),(3096,204,'Z&uuml;rich','',0,'','ZH','',1,0,NULL,0,NULL,''),(3097,205,'Al Hasakah','',0,'','HA','',1,0,NULL,0,NULL,''),(3098,205,'Al Ladhiqiyah','',0,'','LA','',1,0,NULL,0,NULL,''),(3099,205,'Al Qunaytirah','',0,'','QU','',1,0,NULL,0,NULL,''),(3100,205,'Ar Raqqah','',0,'','RQ','',1,0,NULL,0,NULL,''),(3101,205,'As Suwayda','',0,'','SU','',1,0,NULL,0,NULL,''),(3102,205,'Dara','',0,'','DA','',1,0,NULL,0,NULL,''),(3103,205,'Dayr az Zawr','',0,'','DZ','',1,0,NULL,0,NULL,''),(3104,205,'Dimashq','',0,'','DI','',1,0,NULL,0,NULL,''),(3105,205,'Halab','',0,'','HL','',1,0,NULL,0,NULL,''),(3106,205,'Hamah','',0,'','HM','',1,0,NULL,0,NULL,''),(3107,205,'Hims','',0,'','HI','',1,0,NULL,0,NULL,''),(3108,205,'Idlib','',0,'','ID','',1,0,NULL,0,NULL,''),(3109,205,'Rif Dimashq','',0,'','RD','',1,0,NULL,0,NULL,''),(3110,205,'Tartus','',0,'','TA','',1,0,NULL,0,NULL,''),(3111,206,'Chang-hua','',0,'','CH','',1,0,NULL,0,NULL,''),(3112,206,'Chia-i','',0,'','CI','',1,0,NULL,0,NULL,''),(3113,206,'Hsin-chu','',0,'','HS','',1,0,NULL,0,NULL,''),(3114,206,'Hua-lien','',0,'','HL','',1,0,NULL,0,NULL,''),(3115,206,'I-lan','',0,'','IL','',1,0,NULL,0,NULL,''),(3116,206,'Kao-hsiung county','',0,'','KH','',1,0,NULL,0,NULL,''),(3117,206,'Kin-men','',0,'','KM','',1,0,NULL,0,NULL,''),(3118,206,'Lien-chiang','',0,'','LC','',1,0,NULL,0,NULL,''),(3119,206,'Miao-li','',0,'','ML','',1,0,NULL,0,NULL,''),(3120,206,'Nan-t\'ou','',0,'','NT','',1,0,NULL,0,NULL,''),(3121,206,'P\'eng-hu','',0,'','PH','',1,0,NULL,0,NULL,''),(3122,206,'P\'ing-tung','',0,'','PT','',1,0,NULL,0,NULL,''),(3123,206,'T\'ai-chung','',0,'','TG','',1,0,NULL,0,NULL,''),(3124,206,'T\'ai-nan','',0,'','TA','',1,0,NULL,0,NULL,''),(3125,206,'T\'ai-pei county','',0,'','TP','',1,0,NULL,0,NULL,''),(3126,206,'T\'ai-tung','',0,'','TT','',1,0,NULL,0,NULL,''),(3127,206,'T\'ao-yuan','',0,'','TY','',1,0,NULL,0,NULL,''),(3128,206,'Yun-lin','',0,'','YL','',1,0,NULL,0,NULL,''),(3129,206,'Chia-i city','',0,'','CC','',1,0,NULL,0,NULL,''),(3130,206,'Chi-lung','',0,'','CL','',1,0,NULL,0,NULL,''),(3131,206,'Hsin-chu','',0,'','HC','',1,0,NULL,0,NULL,''),(3132,206,'T\'ai-chung','',0,'','TH','',1,0,NULL,0,NULL,''),(3133,206,'T\'ai-nan','',0,'','TN','',1,0,NULL,0,NULL,''),(3134,206,'Kao-hsiung city','',0,'','KC','',1,0,NULL,0,NULL,''),(3135,206,'T\'ai-pei city','',0,'','TC','',1,0,NULL,0,NULL,''),(3136,207,'Gorno-Badakhstan','',0,'','GB','',1,0,NULL,0,NULL,''),(3137,207,'Khatlon','',0,'','KT','',1,0,NULL,0,NULL,''),(3138,207,'Sughd','',0,'','SU','',1,0,NULL,0,NULL,''),(3139,208,'Arusha','',0,'','AR','',1,0,NULL,0,NULL,''),(3140,208,'Dar es Salaam','',0,'','DS','',1,0,NULL,0,NULL,''),(3141,208,'Dodoma','',0,'','DO','',1,0,NULL,0,NULL,''),(3142,208,'Iringa','',0,'','IR','',1,0,NULL,0,NULL,''),(3143,208,'Kagera','',0,'','KA','',1,0,NULL,0,NULL,''),(3144,208,'Kigoma','',0,'','KI','',1,0,NULL,0,NULL,''),(3145,208,'Kilimanjaro','',0,'','KJ','',1,0,NULL,0,NULL,''),(3146,208,'Lindi','',0,'','LN','',1,0,NULL,0,NULL,''),(3147,208,'Manyara','',0,'','MY','',1,0,NULL,0,NULL,''),(3148,208,'Mara','',0,'','MR','',1,0,NULL,0,NULL,''),(3149,208,'Mbeya','',0,'','MB','',1,0,NULL,0,NULL,''),(3150,208,'Morogoro','',0,'','MO','',1,0,NULL,0,NULL,''),(3151,208,'Mtwara','',0,'','MT','',1,0,NULL,0,NULL,''),(3152,208,'Mwanza','',0,'','MW','',1,0,NULL,0,NULL,''),(3153,208,'Pemba North','',0,'','PN','',1,0,NULL,0,NULL,''),(3154,208,'Pemba South','',0,'','PS','',1,0,NULL,0,NULL,''),(3155,208,'Pwani','',0,'','PW','',1,0,NULL,0,NULL,''),(3156,208,'Rukwa','',0,'','RK','',1,0,NULL,0,NULL,''),(3157,208,'Ruvuma','',0,'','RV','',1,0,NULL,0,NULL,''),(3158,208,'Shinyanga','',0,'','SH','',1,0,NULL,0,NULL,''),(3159,208,'Singida','',0,'','SI','',1,0,NULL,0,NULL,''),(3160,208,'Tabora','',0,'','TB','',1,0,NULL,0,NULL,''),(3161,208,'Tanga','',0,'','TN','',1,0,NULL,0,NULL,''),(3162,208,'Zanzibar Central/South','',0,'','ZC','',1,0,NULL,0,NULL,''),(3163,208,'Zanzibar North','',0,'','ZN','',1,0,NULL,0,NULL,''),(3164,208,'Zanzibar Urban/West','',0,'','ZU','',1,0,NULL,0,NULL,''),(3165,209,'Amnat Charoen','',0,'','Amnat Charoen','',1,0,NULL,0,NULL,''),(3166,209,'Ang Thong','',0,'','Ang Thong','',1,0,NULL,0,NULL,''),(3167,209,'Ayutthaya','',0,'','Ayutthaya','',1,0,NULL,0,NULL,''),(3168,209,'Bangkok','',0,'','Bangkok','',1,0,NULL,0,NULL,''),(3169,209,'Buriram','',0,'','Buriram','',1,0,NULL,0,NULL,''),(3170,209,'Chachoengsao','',0,'','Chachoengsao','',1,0,NULL,0,NULL,''),(3171,209,'Chai Nat','',0,'','Chai Nat','',1,0,NULL,0,NULL,''),(3172,209,'Chaiyaphum','',0,'','Chaiyaphum','',1,0,NULL,0,NULL,''),(3173,209,'Chanthaburi','',0,'','Chanthaburi','',1,0,NULL,0,NULL,''),(3174,209,'Chiang Mai','',0,'','Chiang Mai','',1,0,NULL,0,NULL,''),(3175,209,'Chiang Rai','',0,'','Chiang Rai','',1,0,NULL,0,NULL,''),(3176,209,'Chon Buri','',0,'','Chon Buri','',1,0,NULL,0,NULL,''),(3177,209,'Chumphon','',0,'','Chumphon','',1,0,NULL,0,NULL,''),(3178,209,'Kalasin','',0,'','Kalasin','',1,0,NULL,0,NULL,''),(3179,209,'Kamphaeng Phet','',0,'','Kamphaeng Phet','',1,0,NULL,0,NULL,''),(3180,209,'Kanchanaburi','',0,'','Kanchanaburi','',1,0,NULL,0,NULL,''),(3181,209,'Khon Kaen','',0,'','Khon Kaen','',1,0,NULL,0,NULL,''),(3182,209,'Krabi','',0,'','Krabi','',1,0,NULL,0,NULL,''),(3183,209,'Lampang','',0,'','Lampang','',1,0,NULL,0,NULL,''),(3184,209,'Lamphun','',0,'','Lamphun','',1,0,NULL,0,NULL,''),(3185,209,'Loei','',0,'','Loei','',1,0,NULL,0,NULL,''),(3186,209,'Lop Buri','',0,'','Lop Buri','',1,0,NULL,0,NULL,''),(3187,209,'Mae Hong Son','',0,'','Mae Hong Son','',1,0,NULL,0,NULL,''),(3188,209,'Maha Sarakham','',0,'','Maha Sarakham','',1,0,NULL,0,NULL,''),(3189,209,'Mukdahan','',0,'','Mukdahan','',1,0,NULL,0,NULL,''),(3190,209,'Nakhon Nayok','',0,'','Nakhon Nayok','',1,0,NULL,0,NULL,''),(3191,209,'Nakhon Pathom','',0,'','Nakhon Pathom','',1,0,NULL,0,NULL,''),(3192,209,'Nakhon Phanom','',0,'','Nakhon Phanom','',1,0,NULL,0,NULL,''),(3193,209,'Nakhon Ratchasima','',0,'','Nakhon Ratchasima','',1,0,NULL,0,NULL,''),(3194,209,'Nakhon Sawan','',0,'','Nakhon Sawan','',1,0,NULL,0,NULL,''),(3195,209,'Nakhon Si Thammarat','',0,'','Nakhon Si Thammarat','',1,0,NULL,0,NULL,''),(3196,209,'Nan','',0,'','Nan','',1,0,NULL,0,NULL,''),(3197,209,'Narathiwat','',0,'','Narathiwat','',1,0,NULL,0,NULL,''),(3198,209,'Nong Bua Lamphu','',0,'','Nong Bua Lamphu','',1,0,NULL,0,NULL,''),(3199,209,'Nong Khai','',0,'','Nong Khai','',1,0,NULL,0,NULL,''),(3200,209,'Nonthaburi','',0,'','Nonthaburi','',1,0,NULL,0,NULL,''),(3201,209,'Pathum Thani','',0,'','Pathum Thani','',1,0,NULL,0,NULL,''),(3202,209,'Pattani','',0,'','Pattani','',1,0,NULL,0,NULL,''),(3203,209,'Phangnga','',0,'','Phangnga','',1,0,NULL,0,NULL,''),(3204,209,'Phatthalung','',0,'','Phatthalung','',1,0,NULL,0,NULL,''),(3205,209,'Phayao','',0,'','Phayao','',1,0,NULL,0,NULL,''),(3206,209,'Phetchabun','',0,'','Phetchabun','',1,0,NULL,0,NULL,''),(3207,209,'Phetchaburi','',0,'','Phetchaburi','',1,0,NULL,0,NULL,''),(3208,209,'Phichit','',0,'','Phichit','',1,0,NULL,0,NULL,''),(3209,209,'Phitsanulok','',0,'','Phitsanulok','',1,0,NULL,0,NULL,''),(3210,209,'Phrae','',0,'','Phrae','',1,0,NULL,0,NULL,''),(3211,209,'Phuket','',0,'','Phuket','',1,0,NULL,0,NULL,''),(3212,209,'Prachin Buri','',0,'','Prachin Buri','',1,0,NULL,0,NULL,''),(3213,209,'Prachuap Khiri Khan','',0,'','Prachuap Khiri Khan','',1,0,NULL,0,NULL,''),(3214,209,'Ranong','',0,'','Ranong','',1,0,NULL,0,NULL,''),(3215,209,'Ratchaburi','',0,'','Ratchaburi','',1,0,NULL,0,NULL,''),(3216,209,'Rayong','',0,'','Rayong','',1,0,NULL,0,NULL,''),(3217,209,'Roi Et','',0,'','Roi Et','',1,0,NULL,0,NULL,''),(3218,209,'Sa Kaeo','',0,'','Sa Kaeo','',1,0,NULL,0,NULL,''),(3219,209,'Sakon Nakhon','',0,'','Sakon Nakhon','',1,0,NULL,0,NULL,''),(3220,209,'Samut Prakan','',0,'','Samut Prakan','',1,0,NULL,0,NULL,''),(3221,209,'Samut Sakhon','',0,'','Samut Sakhon','',1,0,NULL,0,NULL,''),(3222,209,'Samut Songkhram','',0,'','Samut Songkhram','',1,0,NULL,0,NULL,''),(3223,209,'Sara Buri','',0,'','Sara Buri','',1,0,NULL,0,NULL,''),(3224,209,'Satun','',0,'','Satun','',1,0,NULL,0,NULL,''),(3225,209,'Sing Buri','',0,'','Sing Buri','',1,0,NULL,0,NULL,''),(3226,209,'Sisaket','',0,'','Sisaket','',1,0,NULL,0,NULL,''),(3227,209,'Songkhla','',0,'','Songkhla','',1,0,NULL,0,NULL,''),(3228,209,'Sukhothai','',0,'','Sukhothai','',1,0,NULL,0,NULL,''),(3229,209,'Suphan Buri','',0,'','Suphan Buri','',1,0,NULL,0,NULL,''),(3230,209,'Surat Thani','',0,'','Surat Thani','',1,0,NULL,0,NULL,''),(3231,209,'Surin','',0,'','Surin','',1,0,NULL,0,NULL,''),(3232,209,'Tak','',0,'','Tak','',1,0,NULL,0,NULL,''),(3233,209,'Trang','',0,'','Trang','',1,0,NULL,0,NULL,''),(3234,209,'Trat','',0,'','Trat','',1,0,NULL,0,NULL,''),(3235,209,'Ubon Ratchathani','',0,'','Ubon Ratchathani','',1,0,NULL,0,NULL,''),(3236,209,'Udon Thani','',0,'','Udon Thani','',1,0,NULL,0,NULL,''),(3237,209,'Uthai Thani','',0,'','Uthai Thani','',1,0,NULL,0,NULL,''),(3238,209,'Uttaradit','',0,'','Uttaradit','',1,0,NULL,0,NULL,''),(3239,209,'Yala','',0,'','Yala','',1,0,NULL,0,NULL,''),(3240,209,'Yasothon','',0,'','Yasothon','',1,0,NULL,0,NULL,''),(3241,210,'Kara','',0,'','K','',1,0,NULL,0,NULL,''),(3242,210,'Plateaux','',0,'','P','',1,0,NULL,0,NULL,''),(3243,210,'Savanes','',0,'','S','',1,0,NULL,0,NULL,''),(3244,210,'Centrale','',0,'','C','',1,0,NULL,0,NULL,''),(3245,210,'Maritime','',0,'','M','',1,0,NULL,0,NULL,''),(3246,211,'Atafu','',0,'','A','',1,0,NULL,0,NULL,''),(3247,211,'Fakaofo','',0,'','F','',1,0,NULL,0,NULL,''),(3248,211,'Nukunonu','',0,'','N','',1,0,NULL,0,NULL,''),(3249,212,'Ha\'apai','',0,'','H','',1,0,NULL,0,NULL,''),(3250,212,'Tongatapu','',0,'','T','',1,0,NULL,0,NULL,''),(3251,212,'Vava\'u','',0,'','V','',1,0,NULL,0,NULL,''),(3252,213,'Couva/Tabaquite/Talparo','',0,'','CT','',1,0,NULL,0,NULL,''),(3253,213,'Diego Martin','',0,'','DM','',1,0,NULL,0,NULL,''),(3254,213,'Mayaro/Rio Claro','',0,'','MR','',1,0,NULL,0,NULL,''),(3255,213,'Penal/Debe','',0,'','PD','',1,0,NULL,0,NULL,''),(3256,213,'Princes Town','',0,'','PT','',1,0,NULL,0,NULL,''),(3257,213,'Sangre Grande','',0,'','SG','',1,0,NULL,0,NULL,''),(3258,213,'San Juan/Laventille','',0,'','SL','',1,0,NULL,0,NULL,''),(3259,213,'Siparia','',0,'','SI','',1,0,NULL,0,NULL,''),(3260,213,'Tunapuna/Piarco','',0,'','TP','',1,0,NULL,0,NULL,''),(3261,213,'Port of Spain','',0,'','PS','',1,0,NULL,0,NULL,''),(3262,213,'San Fernando','',0,'','SF','',1,0,NULL,0,NULL,''),(3263,213,'Arima','',0,'','AR','',1,0,NULL,0,NULL,''),(3264,213,'Point Fortin','',0,'','PF','',1,0,NULL,0,NULL,''),(3265,213,'Chaguanas','',0,'','CH','',1,0,NULL,0,NULL,''),(3266,213,'Tobago','',0,'','TO','',1,0,NULL,0,NULL,''),(3267,214,'Ariana','',0,'','AR','',1,0,NULL,0,NULL,''),(3268,214,'Beja','',0,'','BJ','',1,0,NULL,0,NULL,''),(3269,214,'Ben Arous','',0,'','BA','',1,0,NULL,0,NULL,''),(3270,214,'Bizerte','',0,'','BI','',1,0,NULL,0,NULL,''),(3271,214,'Gabes','',0,'','GB','',1,0,NULL,0,NULL,''),(3272,214,'Gafsa','',0,'','GF','',1,0,NULL,0,NULL,''),(3273,214,'Jendouba','',0,'','JE','',1,0,NULL,0,NULL,''),(3274,214,'Kairouan','',0,'','KR','',1,0,NULL,0,NULL,''),(3275,214,'Kasserine','',0,'','KS','',1,0,NULL,0,NULL,''),(3276,214,'Kebili','',0,'','KB','',1,0,NULL,0,NULL,''),(3277,214,'Kef','',0,'','KF','',1,0,NULL,0,NULL,''),(3278,214,'Mahdia','',0,'','MH','',1,0,NULL,0,NULL,''),(3279,214,'Manouba','',0,'','MN','',1,0,NULL,0,NULL,''),(3280,214,'Medenine','',0,'','ME','',1,0,NULL,0,NULL,''),(3281,214,'Monastir','',0,'','MO','',1,0,NULL,0,NULL,''),(3282,214,'Nabeul','',0,'','NA','',1,0,NULL,0,NULL,''),(3283,214,'Sfax','',0,'','SF','',1,0,NULL,0,NULL,''),(3284,214,'Sidi','',0,'','SD','',1,0,NULL,0,NULL,''),(3285,214,'Siliana','',0,'','SL','',1,0,NULL,0,NULL,''),(3286,214,'Sousse','',0,'','SO','',1,0,NULL,0,NULL,''),(3287,214,'Tataouine','',0,'','TA','',1,0,NULL,0,NULL,''),(3288,214,'Tozeur','',0,'','TO','',1,0,NULL,0,NULL,''),(3289,214,'Tunis','',0,'','TU','',1,0,NULL,0,NULL,''),(3290,214,'Zaghouan','',0,'','ZA','',1,0,NULL,0,NULL,''),(3291,215,'Adana','',0,'','ADA','',1,0,NULL,0,NULL,''),(3292,215,'Adıyaman','',0,'','ADI','',1,0,NULL,0,NULL,''),(3293,215,'Afyonkarahisar','',0,'','AFY','',1,0,NULL,0,NULL,''),(3294,215,'Ağrı','',0,'','AGR','',1,0,NULL,0,NULL,''),(3295,215,'Aksaray','',0,'','AKS','',1,0,NULL,0,NULL,''),(3296,215,'Amasya','',0,'','AMA','',1,0,NULL,0,NULL,''),(3297,215,'Ankara','',0,'','ANK','',1,0,NULL,0,NULL,''),(3298,215,'Antalya','',0,'','ANT','',1,0,NULL,0,NULL,''),(3299,215,'Ardahan','',0,'','ARD','',1,0,NULL,0,NULL,''),(3300,215,'Artvin','',0,'','ART','',1,0,NULL,0,NULL,''),(3301,215,'Aydın','',0,'','AYI','',1,0,NULL,0,NULL,''),(3302,215,'Balıkesir','',0,'','BAL','',1,0,NULL,0,NULL,''),(3303,215,'Bartın','',0,'','BAR','',1,0,NULL,0,NULL,''),(3304,215,'Batman','',0,'','BAT','',1,0,NULL,0,NULL,''),(3305,215,'Bayburt','',0,'','BAY','',1,0,NULL,0,NULL,''),(3306,215,'Bilecik','',0,'','BIL','',1,0,NULL,0,NULL,''),(3307,215,'Bingöl','',0,'','BIN','',1,0,NULL,0,NULL,''),(3308,215,'Bitlis','',0,'','BIT','',1,0,NULL,0,NULL,''),(3309,215,'Bolu','',0,'','BOL','',1,0,NULL,0,NULL,''),(3310,215,'Burdur','',0,'','BRD','',1,0,NULL,0,NULL,''),(3311,215,'Bursa','',0,'','BRS','',1,0,NULL,0,NULL,''),(3312,215,'Çanakkale','',0,'','CKL','',1,0,NULL,0,NULL,''),(3313,215,'Çankırı','',0,'','CKR','',1,0,NULL,0,NULL,''),(3314,215,'Çorum','',0,'','COR','',1,0,NULL,0,NULL,''),(3315,215,'Denizli','',0,'','DEN','',1,0,NULL,0,NULL,''),(3316,215,'Diyarbakir','',0,'','DIY','',1,0,NULL,0,NULL,''),(3317,215,'Düzce','',0,'','DUZ','',1,0,NULL,0,NULL,''),(3318,215,'Edirne','',0,'','EDI','',1,0,NULL,0,NULL,''),(3319,215,'Elazığ','',0,'','ELA','',1,0,NULL,0,NULL,''),(3320,215,'Erzincan','',0,'','EZC','',1,0,NULL,0,NULL,''),(3321,215,'Erzurum','',0,'','EZR','',1,0,NULL,0,NULL,''),(3322,215,'Eskişehir','',0,'','ESK','',1,0,NULL,0,NULL,''),(3323,215,'Gaziantep','',0,'','GAZ','',1,0,NULL,0,NULL,''),(3324,215,'Giresun','',0,'','GIR','',1,0,NULL,0,NULL,''),(3325,215,'Gümüşhane','',0,'','GMS','',1,0,NULL,0,NULL,''),(3326,215,'Hakkari','',0,'','HKR','',1,0,NULL,0,NULL,''),(3327,215,'Hatay','',0,'','HTY','',1,0,NULL,0,NULL,''),(3328,215,'Iğdır','',0,'','IGD','',1,0,NULL,0,NULL,''),(3329,215,'Isparta','',0,'','ISP','',1,0,NULL,0,NULL,''),(3330,215,'İstanbul','',0,'','IST','',1,0,NULL,0,NULL,''),(3331,215,'İzmir','',0,'','IZM','',1,0,NULL,0,NULL,''),(3332,215,'Kahramanmaraş','',0,'','KAH','',1,0,NULL,0,NULL,''),(3333,215,'Karabük','',0,'','KRB','',1,0,NULL,0,NULL,''),(3334,215,'Karaman','',0,'','KRM','',1,0,NULL,0,NULL,''),(3335,215,'Kars','',0,'','KRS','',1,0,NULL,0,NULL,''),(3336,215,'Kastamonu','',0,'','KAS','',1,0,NULL,0,NULL,''),(3337,215,'Kayseri','',0,'','KAY','',1,0,NULL,0,NULL,''),(3338,215,'Kilis','',0,'','KLS','',1,0,NULL,0,NULL,''),(3339,215,'Kırıkkale','',0,'','KRK','',1,0,NULL,0,NULL,''),(3340,215,'Kırklareli','',0,'','KLR','',1,0,NULL,0,NULL,''),(3341,215,'Kırşehir','',0,'','KRH','',1,0,NULL,0,NULL,''),(3342,215,'Kocaeli','',0,'','KOC','',1,0,NULL,0,NULL,''),(3343,215,'Konya','',0,'','KON','',1,0,NULL,0,NULL,''),(3344,215,'Kütahya','',0,'','KUT','',1,0,NULL,0,NULL,''),(3345,215,'Malatya','',0,'','MAL','',1,0,NULL,0,NULL,''),(3346,215,'Manisa','',0,'','MAN','',1,0,NULL,0,NULL,''),(3347,215,'Mardin','',0,'','MAR','',1,0,NULL,0,NULL,''),(3348,215,'Mersin','',0,'','MER','',1,0,NULL,0,NULL,''),(3349,215,'Muğla','',0,'','MUG','',1,0,NULL,0,NULL,''),(3350,215,'Muş','',0,'','MUS','',1,0,NULL,0,NULL,''),(3351,215,'Nevşehir','',0,'','NEV','',1,0,NULL,0,NULL,''),(3352,215,'Niğde','',0,'','NIG','',1,0,NULL,0,NULL,''),(3353,215,'Ordu','',0,'','ORD','',1,0,NULL,0,NULL,''),(3354,215,'Osmaniye','',0,'','OSM','',1,0,NULL,0,NULL,''),(3355,215,'Rize','',0,'','RIZ','',1,0,NULL,0,NULL,''),(3356,215,'Sakarya','',0,'','SAK','',1,0,NULL,0,NULL,''),(3357,215,'Samsun','',0,'','SAM','',1,0,NULL,0,NULL,''),(3358,215,'Şanlıurfa','',0,'','SAN','',1,0,NULL,0,NULL,''),(3359,215,'Siirt','',0,'','SII','',1,0,NULL,0,NULL,''),(3360,215,'Sinop','',0,'','SIN','',1,0,NULL,0,NULL,''),(3361,215,'Şırnak','',0,'','SIR','',1,0,NULL,0,NULL,''),(3362,215,'Sivas','',0,'','SIV','',1,0,NULL,0,NULL,''),(3363,215,'Tekirdağ','',0,'','TEL','',1,0,NULL,0,NULL,''),(3364,215,'Tokat','',0,'','TOK','',1,0,NULL,0,NULL,''),(3365,215,'Trabzon','',0,'','TRA','',1,0,NULL,0,NULL,''),(3366,215,'Tunceli','',0,'','TUN','',1,0,NULL,0,NULL,''),(3367,215,'Uşak','',0,'','USK','',1,0,NULL,0,NULL,''),(3368,215,'Van','',0,'','VAN','',1,0,NULL,0,NULL,''),(3369,215,'Yalova','',0,'','YAL','',1,0,NULL,0,NULL,''),(3370,215,'Yozgat','',0,'','YOZ','',1,0,NULL,0,NULL,''),(3371,215,'Zonguldak','',0,'','ZON','',1,0,NULL,0,NULL,''),(3372,216,'Ahal Welayaty','',0,'','A','',1,0,NULL,0,NULL,''),(3373,216,'Balkan Welayaty','',0,'','B','',1,0,NULL,0,NULL,''),(3374,216,'Dashhowuz Welayaty','',0,'','D','',1,0,NULL,0,NULL,''),(3375,216,'Lebap Welayaty','',0,'','L','',1,0,NULL,0,NULL,''),(3376,216,'Mary Welayaty','',0,'','M','',1,0,NULL,0,NULL,''),(3377,217,'Ambergris Cays','',0,'','AC','',1,0,NULL,0,NULL,''),(3378,217,'Dellis Cay','',0,'','DC','',1,0,NULL,0,NULL,''),(3379,217,'French Cay','',0,'','FC','',1,0,NULL,0,NULL,''),(3380,217,'Little Water Cay','',0,'','LW','',1,0,NULL,0,NULL,''),(3381,217,'Parrot Cay','',0,'','RC','',1,0,NULL,0,NULL,''),(3382,217,'Pine Cay','',0,'','PN','',1,0,NULL,0,NULL,''),(3383,217,'Salt Cay','',0,'','SL','',1,0,NULL,0,NULL,''),(3384,217,'Grand Turk','',0,'','GT','',1,0,NULL,0,NULL,''),(3385,217,'South Caicos','',0,'','SC','',1,0,NULL,0,NULL,''),(3386,217,'East Caicos','',0,'','EC','',1,0,NULL,0,NULL,''),(3387,217,'Middle Caicos','',0,'','MC','',1,0,NULL,0,NULL,''),(3388,217,'North Caicos','',0,'','NC','',1,0,NULL,0,NULL,''),(3389,217,'Providenciales','',0,'','PR','',1,0,NULL,0,NULL,''),(3390,217,'West Caicos','',0,'','WC','',1,0,NULL,0,NULL,''),(3391,218,'Nanumanga','',0,'','NMG','',1,0,NULL,0,NULL,''),(3392,218,'Niulakita','',0,'','NLK','',1,0,NULL,0,NULL,''),(3393,218,'Niutao','',0,'','NTO','',1,0,NULL,0,NULL,''),(3394,218,'Funafuti','',0,'','FUN','',1,0,NULL,0,NULL,''),(3395,218,'Nanumea','',0,'','NME','',1,0,NULL,0,NULL,''),(3396,218,'Nui','',0,'','NUI','',1,0,NULL,0,NULL,''),(3397,218,'Nukufetau','',0,'','NFT','',1,0,NULL,0,NULL,''),(3398,218,'Nukulaelae','',0,'','NLL','',1,0,NULL,0,NULL,''),(3399,218,'Vaitupu','',0,'','VAI','',1,0,NULL,0,NULL,''),(3400,219,'Kalangala','',0,'','KAL','',1,0,NULL,0,NULL,''),(3401,219,'Kampala','',0,'','KMP','',1,0,NULL,0,NULL,''),(3402,219,'Kayunga','',0,'','KAY','',1,0,NULL,0,NULL,''),(3403,219,'Kiboga','',0,'','KIB','',1,0,NULL,0,NULL,''),(3404,219,'Luwero','',0,'','LUW','',1,0,NULL,0,NULL,''),(3405,219,'Masaka','',0,'','MAS','',1,0,NULL,0,NULL,''),(3406,219,'Mpigi','',0,'','MPI','',1,0,NULL,0,NULL,''),(3407,219,'Mubende','',0,'','MUB','',1,0,NULL,0,NULL,''),(3408,219,'Mukono','',0,'','MUK','',1,0,NULL,0,NULL,''),(3409,219,'Nakasongola','',0,'','NKS','',1,0,NULL,0,NULL,''),(3410,219,'Rakai','',0,'','RAK','',1,0,NULL,0,NULL,''),(3411,219,'Sembabule','',0,'','SEM','',1,0,NULL,0,NULL,''),(3412,219,'Wakiso','',0,'','WAK','',1,0,NULL,0,NULL,''),(3413,219,'Bugiri','',0,'','BUG','',1,0,NULL,0,NULL,''),(3414,219,'Busia','',0,'','BUS','',1,0,NULL,0,NULL,''),(3415,219,'Iganga','',0,'','IGA','',1,0,NULL,0,NULL,''),(3416,219,'Jinja','',0,'','JIN','',1,0,NULL,0,NULL,''),(3417,219,'Kaberamaido','',0,'','KAB','',1,0,NULL,0,NULL,''),(3418,219,'Kamuli','',0,'','KML','',1,0,NULL,0,NULL,''),(3419,219,'Kapchorwa','',0,'','KPC','',1,0,NULL,0,NULL,''),(3420,219,'Katakwi','',0,'','KTK','',1,0,NULL,0,NULL,''),(3421,219,'Kumi','',0,'','KUM','',1,0,NULL,0,NULL,''),(3422,219,'Mayuge','',0,'','MAY','',1,0,NULL,0,NULL,''),(3423,219,'Mbale','',0,'','MBA','',1,0,NULL,0,NULL,''),(3424,219,'Pallisa','',0,'','PAL','',1,0,NULL,0,NULL,''),(3425,219,'Sironko','',0,'','SIR','',1,0,NULL,0,NULL,''),(3426,219,'Soroti','',0,'','SOR','',1,0,NULL,0,NULL,''),(3427,219,'Tororo','',0,'','TOR','',1,0,NULL,0,NULL,''),(3428,219,'Adjumani','',0,'','ADJ','',1,0,NULL,0,NULL,''),(3429,219,'Apac','',0,'','APC','',1,0,NULL,0,NULL,''),(3430,219,'Arua','',0,'','ARU','',1,0,NULL,0,NULL,''),(3431,219,'Gulu','',0,'','GUL','',1,0,NULL,0,NULL,''),(3432,219,'Kitgum','',0,'','KIT','',1,0,NULL,0,NULL,''),(3433,219,'Kotido','',0,'','KOT','',1,0,NULL,0,NULL,''),(3434,219,'Lira','',0,'','LIR','',1,0,NULL,0,NULL,''),(3435,219,'Moroto','',0,'','MRT','',1,0,NULL,0,NULL,''),(3436,219,'Moyo','',0,'','MOY','',1,0,NULL,0,NULL,''),(3437,219,'Nakapiripirit','',0,'','NAK','',1,0,NULL,0,NULL,''),(3438,219,'Nebbi','',0,'','NEB','',1,0,NULL,0,NULL,''),(3439,219,'Pader','',0,'','PAD','',1,0,NULL,0,NULL,''),(3440,219,'Yumbe','',0,'','YUM','',1,0,NULL,0,NULL,''),(3441,219,'Bundibugyo','',0,'','BUN','',1,0,NULL,0,NULL,''),(3442,219,'Bushenyi','',0,'','BSH','',1,0,NULL,0,NULL,''),(3443,219,'Hoima','',0,'','HOI','',1,0,NULL,0,NULL,''),(3444,219,'Kabale','',0,'','KBL','',1,0,NULL,0,NULL,''),(3445,219,'Kabarole','',0,'','KAR','',1,0,NULL,0,NULL,''),(3446,219,'Kamwenge','',0,'','KAM','',1,0,NULL,0,NULL,''),(3447,219,'Kanungu','',0,'','KAN','',1,0,NULL,0,NULL,''),(3448,219,'Kasese','',0,'','KAS','',1,0,NULL,0,NULL,''),(3449,219,'Kibaale','',0,'','KBA','',1,0,NULL,0,NULL,''),(3450,219,'Kisoro','',0,'','KIS','',1,0,NULL,0,NULL,''),(3451,219,'Kyenjojo','',0,'','KYE','',1,0,NULL,0,NULL,''),(3452,219,'Masindi','',0,'','MSN','',1,0,NULL,0,NULL,''),(3453,219,'Mbarara','',0,'','MBR','',1,0,NULL,0,NULL,''),(3454,219,'Ntungamo','',0,'','NTU','',1,0,NULL,0,NULL,''),(3455,219,'Rukungiri','',0,'','RUK','',1,0,NULL,0,NULL,''),(3456,220,'Cherkasy','',0,'','CK','',1,0,NULL,0,NULL,''),(3457,220,'Chernihiv','',0,'','CH','',1,0,NULL,0,NULL,''),(3458,220,'Chernivtsi','',0,'','CV','',1,0,NULL,0,NULL,''),(3459,220,'Crimea','',0,'','CR','',1,0,NULL,0,NULL,''),(3460,220,'Dnipropetrovs\'k','',0,'','DN','',1,0,NULL,0,NULL,''),(3461,220,'Donets\'k','',0,'','DO','',1,0,NULL,0,NULL,''),(3462,220,'Ivano-Frankivs\'k','',0,'','IV','',1,0,NULL,0,NULL,''),(3463,220,'Kharkiv Kherson','',0,'','KL','',1,0,NULL,0,NULL,''),(3464,220,'Khmel\'nyts\'kyy','',0,'','KM','',1,0,NULL,0,NULL,''),(3465,220,'Kirovohrad','',0,'','KR','',1,0,NULL,0,NULL,''),(3466,220,'Kiev','',0,'','KV','',1,0,NULL,0,NULL,''),(3467,220,'Kyyiv','',0,'','KY','',1,0,NULL,0,NULL,''),(3468,220,'Luhans\'k','',0,'','LU','',1,0,NULL,0,NULL,''),(3469,220,'L\'viv','',0,'','LV','',1,0,NULL,0,NULL,''),(3470,220,'Mykolayiv','',0,'','MY','',1,0,NULL,0,NULL,''),(3471,220,'Odesa','',0,'','OD','',1,0,NULL,0,NULL,''),(3472,220,'Poltava','',0,'','PO','',1,0,NULL,0,NULL,''),(3473,220,'Rivne','',0,'','RI','',1,0,NULL,0,NULL,''),(3474,220,'Sevastopol','',0,'','SE','',1,0,NULL,0,NULL,''),(3475,220,'Sumy','',0,'','SU','',1,0,NULL,0,NULL,''),(3476,220,'Ternopil\'','',0,'','TE','',1,0,NULL,0,NULL,''),(3477,220,'Vinnytsya','',0,'','VI','',1,0,NULL,0,NULL,''),(3478,220,'Volyn\'','',0,'','VO','',1,0,NULL,0,NULL,''),(3479,220,'Zakarpattya','',0,'','ZK','',1,0,NULL,0,NULL,''),(3480,220,'Zaporizhzhya','',0,'','ZA','',1,0,NULL,0,NULL,''),(3481,220,'Zhytomyr','',0,'','ZH','',1,0,NULL,0,NULL,''),(3482,221,'Abu Zaby','',0,'','AZ','',1,0,NULL,0,NULL,''),(3483,221,'\'Ajman','',0,'','AJ','',1,0,NULL,0,NULL,''),(3484,221,'Al Fujayrah','',0,'','FU','',1,0,NULL,0,NULL,''),(3485,221,'Ash Shariqah','',0,'','SH','',1,0,NULL,0,NULL,''),(3486,221,'Dubayy','',0,'','DU','',1,0,NULL,0,NULL,''),(3487,221,'R\'as al Khaymah','',0,'','RK','',1,0,NULL,0,NULL,''),(3488,221,'Umm al Qaywayn','',0,'','UQ','',1,0,NULL,0,NULL,''),(3489,222,'Aberdeen','',0,'','ABN','',1,0,NULL,0,NULL,''),(3490,222,'Aberdeenshire','',0,'','ABNS','',1,0,NULL,0,NULL,''),(3491,222,'Anglesey','',0,'','ANG','',1,0,NULL,0,NULL,''),(3492,222,'Angus','',0,'','AGS','',1,0,NULL,0,NULL,''),(3493,222,'Argyll and Bute','',0,'','ARY','',1,0,NULL,0,NULL,''),(3494,222,'Bedfordshire','',0,'','BEDS','',1,0,NULL,0,NULL,''),(3495,222,'Berkshire','',0,'','BERKS','',1,0,NULL,0,NULL,''),(3496,222,'Blaenau Gwent','',0,'','BLA','',1,0,NULL,0,NULL,''),(3497,222,'Bridgend','',0,'','BRI','',1,0,NULL,0,NULL,''),(3498,222,'Bristol','',0,'','BSTL','',1,0,NULL,0,NULL,''),(3499,222,'Buckinghamshire','',0,'','BUCKS','',1,0,NULL,0,NULL,''),(3500,222,'Caerphilly','',0,'','CAE','',1,0,NULL,0,NULL,''),(3501,222,'Cambridgeshire','',0,'','CAMBS','',1,0,NULL,0,NULL,''),(3502,222,'Cardiff','',0,'','CDF','',1,0,NULL,0,NULL,''),(3503,222,'Carmarthenshire','',0,'','CARM','',1,0,NULL,0,NULL,''),(3504,222,'Ceredigion','',0,'','CDGN','',1,0,NULL,0,NULL,''),(3505,222,'Cheshire','',0,'','CHES','',1,0,NULL,0,NULL,''),(3506,222,'Clackmannanshire','',0,'','CLACK','',1,0,NULL,0,NULL,''),(3507,222,'Conwy','',0,'','CON','',1,0,NULL,0,NULL,''),(3508,222,'Cornwall','',0,'','CORN','',1,0,NULL,0,NULL,''),(3509,222,'Denbighshire','',0,'','DNBG','',1,0,NULL,0,NULL,''),(3510,222,'Derbyshire','',0,'','DERBY','',1,0,NULL,0,NULL,''),(3511,222,'Devon','',0,'','DVN','',1,0,NULL,0,NULL,''),(3512,222,'Dorset','',0,'','DOR','',1,0,NULL,0,NULL,''),(3513,222,'Dumfries and Galloway','',0,'','DGL','',1,0,NULL,0,NULL,''),(3514,222,'Dundee','',0,'','DUND','',1,0,NULL,0,NULL,''),(3515,222,'Durham','',0,'','DHM','',1,0,NULL,0,NULL,''),(3516,222,'East Ayrshire','',0,'','ARYE','',1,0,NULL,0,NULL,''),(3517,222,'East Dunbartonshire','',0,'','DUNBE','',1,0,NULL,0,NULL,''),(3518,222,'East Lothian','',0,'','LOTE','',1,0,NULL,0,NULL,''),(3519,222,'East Renfrewshire','',0,'','RENE','',1,0,NULL,0,NULL,''),(3520,222,'East Riding of Yorkshire','',0,'','ERYS','',1,0,NULL,0,NULL,''),(3521,222,'East Sussex','',0,'','SXE','',1,0,NULL,0,NULL,''),(3522,222,'Edinburgh','',0,'','EDIN','',1,0,NULL,0,NULL,''),(3523,222,'Essex','',0,'','ESX','',1,0,NULL,0,NULL,''),(3524,222,'Falkirk','',0,'','FALK','',1,0,NULL,0,NULL,''),(3525,222,'Fife','',0,'','FFE','',1,0,NULL,0,NULL,''),(3526,222,'Flintshire','',0,'','FLINT','',1,0,NULL,0,NULL,''),(3527,222,'Glasgow','',0,'','GLAS','',1,0,NULL,0,NULL,''),(3528,222,'Gloucestershire','',0,'','GLOS','',1,0,NULL,0,NULL,''),(3529,222,'Greater London','',0,'','LDN','',1,0,NULL,0,NULL,''),(3530,222,'Greater Manchester','',0,'','MCH','',1,0,NULL,0,NULL,''),(3531,222,'Gwynedd','',0,'','GDD','',1,0,NULL,0,NULL,''),(3532,222,'Hampshire','',0,'','HANTS','',1,0,NULL,0,NULL,''),(3533,222,'Herefordshire','',0,'','HWR','',1,0,NULL,0,NULL,''),(3534,222,'Hertfordshire','',0,'','HERTS','',1,0,NULL,0,NULL,''),(3535,222,'Highlands','',0,'','HLD','',1,0,NULL,0,NULL,''),(3536,222,'Inverclyde','',0,'','IVER','',1,0,NULL,0,NULL,''),(3537,222,'Isle of Wight','',0,'','IOW','',1,0,NULL,0,NULL,''),(3538,222,'Kent','',0,'','KNT','',1,0,NULL,0,NULL,''),(3539,222,'Lancashire','',0,'','LANCS','',1,0,NULL,0,NULL,''),(3540,222,'Leicestershire','',0,'','LEICS','',1,0,NULL,0,NULL,''),(3541,222,'Lincolnshire','',0,'','LINCS','',1,0,NULL,0,NULL,''),(3542,222,'Merseyside','',0,'','MSY','',1,0,NULL,0,NULL,''),(3543,222,'Merthyr Tydfil','',0,'','MERT','',1,0,NULL,0,NULL,''),(3544,222,'Midlothian','',0,'','MLOT','',1,0,NULL,0,NULL,''),(3545,222,'Monmouthshire','',0,'','MMOUTH','',1,0,NULL,0,NULL,''),(3546,222,'Moray','',0,'','MORAY','',1,0,NULL,0,NULL,''),(3547,222,'Neath Port Talbot','',0,'','NPRTAL','',1,0,NULL,0,NULL,''),(3548,222,'Newport','',0,'','NEWPT','',1,0,NULL,0,NULL,''),(3549,222,'Norfolk','',0,'','NOR','',1,0,NULL,0,NULL,''),(3550,222,'North Ayrshire','',0,'','ARYN','',1,0,NULL,0,NULL,''),(3551,222,'North Lanarkshire','',0,'','LANN','',1,0,NULL,0,NULL,''),(3552,222,'North Yorkshire','',0,'','YSN','',1,0,NULL,0,NULL,''),(3553,222,'Northamptonshire','',0,'','NHM','',1,0,NULL,0,NULL,''),(3554,222,'Northumberland','',0,'','NLD','',1,0,NULL,0,NULL,''),(3555,222,'Nottinghamshire','',0,'','NOT','',1,0,NULL,0,NULL,''),(3556,222,'Orkney Islands','',0,'','ORK','',1,0,NULL,0,NULL,''),(3557,222,'Oxfordshire','',0,'','OFE','',1,0,NULL,0,NULL,''),(3558,222,'Pembrokeshire','',0,'','PEM','',1,0,NULL,0,NULL,''),(3559,222,'Perth and Kinross','',0,'','PERTH','',1,0,NULL,0,NULL,''),(3560,222,'Powys','',0,'','PWS','',1,0,NULL,0,NULL,''),(3561,222,'Renfrewshire','',0,'','REN','',1,0,NULL,0,NULL,''),(3562,222,'Rhondda Cynon Taff','',0,'','RHON','',1,0,NULL,0,NULL,''),(3563,222,'Rutland','',0,'','RUT','',1,0,NULL,0,NULL,''),(3564,222,'Scottish Borders','',0,'','BOR','',1,0,NULL,0,NULL,''),(3565,222,'Shetland Islands','',0,'','SHET','',1,0,NULL,0,NULL,''),(3566,222,'Shropshire','',0,'','SPE','',1,0,NULL,0,NULL,''),(3567,222,'Somerset','',0,'','SOM','',1,0,NULL,0,NULL,''),(3568,222,'South Ayrshire','',0,'','ARYS','',1,0,NULL,0,NULL,''),(3569,222,'South Lanarkshire','',0,'','LANS','',1,0,NULL,0,NULL,''),(3570,222,'South Yorkshire','',0,'','YSS','',1,0,NULL,0,NULL,''),(3571,222,'Staffordshire','',0,'','SFD','',1,0,NULL,0,NULL,''),(3572,222,'Stirling','',0,'','STIR','',1,0,NULL,0,NULL,''),(3573,222,'Suffolk','',0,'','SFK','',1,0,NULL,0,NULL,''),(3574,222,'Surrey','',0,'','SRY','',1,0,NULL,0,NULL,''),(3575,222,'Swansea','',0,'','SWAN','',1,0,NULL,0,NULL,''),(3576,222,'Torfaen','',0,'','TORF','',1,0,NULL,0,NULL,''),(3577,222,'Tyne and Wear','',0,'','TWR','',1,0,NULL,0,NULL,''),(3578,222,'Vale of Glamorgan','',0,'','VGLAM','',1,0,NULL,0,NULL,''),(3579,222,'Warwickshire','',0,'','WARKS','',1,0,NULL,0,NULL,''),(3580,222,'West Dunbartonshire','',0,'','WDUN','',1,0,NULL,0,NULL,''),(3581,222,'West Lothian','',0,'','WLOT','',1,0,NULL,0,NULL,''),(3582,222,'West Midlands','',0,'','WMD','',1,0,NULL,0,NULL,''),(3583,222,'West Sussex','',0,'','SXW','',1,0,NULL,0,NULL,''),(3584,222,'West Yorkshire','',0,'','YSW','',1,0,NULL,0,NULL,''),(3585,222,'Western Isles','',0,'','WIL','',1,0,NULL,0,NULL,''),(3586,222,'Wiltshire','',0,'','WLT','',1,0,NULL,0,NULL,''),(3587,222,'Worcestershire','',0,'','WORCS','',1,0,NULL,0,NULL,''),(3588,222,'Wrexham','',0,'','WRX','',1,0,NULL,0,NULL,''),(3589,223,'Alabama','',0,'','AL','',1,0,NULL,0,NULL,''),(3590,223,'Alaska','',0,'','AK','',1,0,NULL,0,NULL,''),(3591,223,'American Samoa','',0,'','AS','',1,0,NULL,0,NULL,''),(3592,223,'Arizona','',0,'','AZ','',1,0,NULL,0,NULL,''),(3593,223,'Arkansas','',0,'','AR','',1,0,NULL,0,NULL,''),(3594,223,'Armed Forces Africa','',0,'','AF','',1,0,NULL,0,NULL,''),(3595,223,'Armed Forces Americas','',0,'','AA','',1,0,NULL,0,NULL,''),(3596,223,'Armed Forces Canada','',0,'','AC','',1,0,NULL,0,NULL,''),(3597,223,'Armed Forces Europe','',0,'','AE','',1,0,NULL,0,NULL,''),(3598,223,'Armed Forces Middle East','',0,'','AM','',1,0,NULL,0,NULL,''),(3599,223,'Armed Forces Pacific','',0,'','AP','',1,0,NULL,0,NULL,''),(3600,223,'California','',0,'','CA','',1,0,NULL,0,NULL,''),(3601,223,'Colorado','',0,'','CO','',1,0,NULL,0,NULL,''),(3602,223,'Connecticut','',0,'','CT','',1,0,NULL,0,NULL,''),(3603,223,'Delaware','',0,'','DE','',1,0,NULL,0,NULL,''),(3604,223,'District of Columbia','',0,'','DC','',1,0,NULL,0,NULL,''),(3605,223,'Federated States Of Micronesia','',0,'','FM','',1,0,NULL,0,NULL,''),(3606,223,'Florida','',0,'','FL','',1,0,NULL,0,NULL,''),(3607,223,'Georgia','',0,'','GA','',1,0,NULL,0,NULL,''),(3608,223,'Guam','',0,'','GU','',1,0,NULL,0,NULL,''),(3609,223,'Hawaii','',0,'','HI','',1,0,NULL,0,NULL,''),(3610,223,'Idaho','',0,'','ID','',1,0,NULL,0,NULL,''),(3611,223,'Illinois','',0,'','IL','',1,0,NULL,0,NULL,''),(3612,223,'Indiana','',0,'','IN','',1,0,NULL,0,NULL,''),(3613,223,'Iowa','',0,'','IA','',1,0,NULL,0,NULL,''),(3614,223,'Kansas','',0,'','KS','',1,0,NULL,0,NULL,''),(3615,223,'Kentucky','',0,'','KY','',1,0,NULL,0,NULL,''),(3616,223,'Louisiana','',0,'','LA','',1,0,NULL,0,NULL,''),(3617,223,'Maine','',0,'','ME','',1,0,NULL,0,NULL,''),(3618,223,'Marshall Islands','',0,'','MH','',1,0,NULL,0,NULL,''),(3619,223,'Maryland','',0,'','MD','',1,0,NULL,0,NULL,''),(3620,223,'Massachusetts','',0,'','MA','',1,0,NULL,0,NULL,''),(3621,223,'Michigan','',0,'','MI','',1,0,NULL,0,NULL,''),(3622,223,'Minnesota','',0,'','MN','',1,0,NULL,0,NULL,''),(3623,223,'Mississippi','',0,'','MS','',1,0,NULL,0,NULL,''),(3624,223,'Missouri','',0,'','MO','',1,0,NULL,0,NULL,''),(3625,223,'Montana','',0,'','MT','',1,0,NULL,0,NULL,''),(3626,223,'Nebraska','',0,'','NE','',1,0,NULL,0,NULL,''),(3627,223,'Nevada','',0,'','NV','',1,0,NULL,0,NULL,''),(3628,223,'New Hampshire','',0,'','NH','',1,0,NULL,0,NULL,''),(3629,223,'New Jersey','',0,'','NJ','',1,0,NULL,0,NULL,''),(3630,223,'New Mexico','',0,'','NM','',1,0,NULL,0,NULL,''),(3631,223,'New York','',0,'','NY','',1,0,NULL,0,NULL,''),(3632,223,'North Carolina','',0,'','NC','',1,0,NULL,0,NULL,''),(3633,223,'North Dakota','',0,'','ND','',1,0,NULL,0,NULL,''),(3634,223,'Northern Mariana Islands','',0,'','MP','',1,0,NULL,0,NULL,''),(3635,223,'Ohio','',0,'','OH','',1,0,NULL,0,NULL,''),(3636,223,'Oklahoma','',0,'','OK','',1,0,NULL,0,NULL,''),(3637,223,'Oregon','',0,'','OR','',1,0,NULL,0,NULL,''),(3638,223,'Palau','',0,'','PW','',1,0,NULL,0,NULL,''),(3639,223,'Pennsylvania','',0,'','PA','',1,0,NULL,0,NULL,''),(3640,223,'Puerto Rico','',0,'','PR','',1,0,NULL,0,NULL,''),(3641,223,'Rhode Island','',0,'','RI','',1,0,NULL,0,NULL,''),(3642,223,'South Carolina','',0,'','SC','',1,0,NULL,0,NULL,''),(3643,223,'South Dakota','',0,'','SD','',1,0,NULL,0,NULL,''),(3644,223,'Tennessee','',0,'','TN','',1,0,NULL,0,NULL,''),(3645,223,'Texas','',0,'','TX','',1,0,NULL,0,NULL,''),(3646,223,'Utah','',0,'','UT','',1,0,NULL,0,NULL,''),(3647,223,'Vermont','',0,'','VT','',1,0,NULL,0,NULL,''),(3648,223,'Virgin Islands','',0,'','VI','',1,0,NULL,0,NULL,''),(3649,223,'Virginia','',0,'','VA','',1,0,NULL,0,NULL,''),(3650,223,'Washington','',0,'','WA','',1,0,NULL,0,NULL,''),(3651,223,'West Virginia','',0,'','WV','',1,0,NULL,0,NULL,''),(3652,223,'Wisconsin','',0,'','WI','',1,0,NULL,0,NULL,''),(3653,223,'Wyoming','',0,'','WY','',1,0,NULL,0,NULL,''),(3654,224,'Baker Island','',0,'','BI','',1,0,NULL,0,NULL,''),(3655,224,'Howland Island','',0,'','HI','',1,0,NULL,0,NULL,''),(3656,224,'Jarvis Island','',0,'','JI','',1,0,NULL,0,NULL,''),(3657,224,'Johnston Atoll','',0,'','JA','',1,0,NULL,0,NULL,''),(3658,224,'Kingman Reef','',0,'','KR','',1,0,NULL,0,NULL,''),(3659,224,'Midway Atoll','',0,'','MA','',1,0,NULL,0,NULL,''),(3660,224,'Navassa Island','',0,'','NI','',1,0,NULL,0,NULL,''),(3661,224,'Palmyra Atoll','',0,'','PA','',1,0,NULL,0,NULL,''),(3662,224,'Wake Island','',0,'','WI','',1,0,NULL,0,NULL,''),(3663,225,'Artigas','',0,'','AR','',1,0,NULL,0,NULL,''),(3664,225,'Canelones','',0,'','CA','',1,0,NULL,0,NULL,''),(3665,225,'Cerro Largo','',0,'','CL','',1,0,NULL,0,NULL,''),(3666,225,'Colonia','',0,'','CO','',1,0,NULL,0,NULL,''),(3667,225,'Durazno','',0,'','DU','',1,0,NULL,0,NULL,''),(3668,225,'Flores','',0,'','FS','',1,0,NULL,0,NULL,''),(3669,225,'Florida','',0,'','FA','',1,0,NULL,0,NULL,''),(3670,225,'Lavalleja','',0,'','LA','',1,0,NULL,0,NULL,''),(3671,225,'Maldonado','',0,'','MA','',1,0,NULL,0,NULL,''),(3672,225,'Montevideo','',0,'','MO','',1,0,NULL,0,NULL,''),(3673,225,'Paysandu','',0,'','PA','',1,0,NULL,0,NULL,''),(3674,225,'Rio Negro','',0,'','RN','',1,0,NULL,0,NULL,''),(3675,225,'Rivera','',0,'','RV','',1,0,NULL,0,NULL,''),(3676,225,'Rocha','',0,'','RO','',1,0,NULL,0,NULL,''),(3677,225,'Salto','',0,'','SL','',1,0,NULL,0,NULL,''),(3678,225,'San Jose','',0,'','SJ','',1,0,NULL,0,NULL,''),(3679,225,'Soriano','',0,'','SO','',1,0,NULL,0,NULL,''),(3680,225,'Tacuarembo','',0,'','TA','',1,0,NULL,0,NULL,''),(3681,225,'Treinta y Tres','',0,'','TT','',1,0,NULL,0,NULL,''),(3682,226,'Andijon','',0,'','AN','',1,0,NULL,0,NULL,''),(3683,226,'Buxoro','',0,'','BU','',1,0,NULL,0,NULL,''),(3684,226,'Farg\'ona','',0,'','FA','',1,0,NULL,0,NULL,''),(3685,226,'Jizzax','',0,'','JI','',1,0,NULL,0,NULL,''),(3686,226,'Namangan','',0,'','NG','',1,0,NULL,0,NULL,''),(3687,226,'Navoiy','',0,'','NW','',1,0,NULL,0,NULL,''),(3688,226,'Qashqadaryo','',0,'','QA','',1,0,NULL,0,NULL,''),(3689,226,'Qoraqalpog\'iston Republikasi','',0,'','QR','',1,0,NULL,0,NULL,''),(3690,226,'Samarqand','',0,'','SA','',1,0,NULL,0,NULL,''),(3691,226,'Sirdaryo','',0,'','SI','',1,0,NULL,0,NULL,''),(3692,226,'Surxondaryo','',0,'','SU','',1,0,NULL,0,NULL,''),(3693,226,'Toshkent City','',0,'','TK','',1,0,NULL,0,NULL,''),(3694,226,'Toshkent Region','',0,'','TO','',1,0,NULL,0,NULL,''),(3695,226,'Xorazm','',0,'','XO','',1,0,NULL,0,NULL,''),(3696,227,'Malampa','',0,'','MA','',1,0,NULL,0,NULL,''),(3697,227,'Penama','',0,'','PE','',1,0,NULL,0,NULL,''),(3698,227,'Sanma','',0,'','SA','',1,0,NULL,0,NULL,''),(3699,227,'Shefa','',0,'','SH','',1,0,NULL,0,NULL,''),(3700,227,'Tafea','',0,'','TA','',1,0,NULL,0,NULL,''),(3701,227,'Torba','',0,'','TO','',1,0,NULL,0,NULL,''),(3702,229,'Amazonas','',0,'','AM','',1,0,NULL,0,NULL,''),(3703,229,'Anzoategui','',0,'','AN','',1,0,NULL,0,NULL,''),(3704,229,'Apure','',0,'','AP','',1,0,NULL,0,NULL,''),(3705,229,'Aragua','',0,'','AR','',1,0,NULL,0,NULL,''),(3706,229,'Barinas','',0,'','BA','',1,0,NULL,0,NULL,''),(3707,229,'Bolivar','',0,'','BO','',1,0,NULL,0,NULL,''),(3708,229,'Carabobo','',0,'','CA','',1,0,NULL,0,NULL,''),(3709,229,'Cojedes','',0,'','CO','',1,0,NULL,0,NULL,''),(3710,229,'Delta Amacuro','',0,'','DA','',1,0,NULL,0,NULL,''),(3711,229,'Dependencias Federales','',0,'','DF','',1,0,NULL,0,NULL,''),(3712,229,'Distrito Federal','',0,'','DI','',1,0,NULL,0,NULL,''),(3713,229,'Falcon','',0,'','FA','',1,0,NULL,0,NULL,''),(3714,229,'Guarico','',0,'','GU','',1,0,NULL,0,NULL,''),(3715,229,'Lara','',0,'','LA','',1,0,NULL,0,NULL,''),(3716,229,'Merida','',0,'','ME','',1,0,NULL,0,NULL,''),(3717,229,'Miranda','',0,'','MI','',1,0,NULL,0,NULL,''),(3718,229,'Monagas','',0,'','MO','',1,0,NULL,0,NULL,''),(3719,229,'Nueva Esparta','',0,'','NE','',1,0,NULL,0,NULL,''),(3720,229,'Portuguesa','',0,'','PO','',1,0,NULL,0,NULL,''),(3721,229,'Sucre','',0,'','SU','',1,0,NULL,0,NULL,''),(3722,229,'Tachira','',0,'','TA','',1,0,NULL,0,NULL,''),(3723,229,'Trujillo','',0,'','TR','',1,0,NULL,0,NULL,''),(3724,229,'Vargas','',0,'','VA','',1,0,NULL,0,NULL,''),(3725,229,'Yaracuy','',0,'','YA','',1,0,NULL,0,NULL,''),(3726,229,'Zulia','',0,'','ZU','',1,0,NULL,0,NULL,''),(3727,230,'An Giang','',0,'','AG','',1,0,NULL,0,NULL,''),(3728,230,'Bac Giang','',0,'','BG','',1,0,NULL,0,NULL,''),(3729,230,'Bac Kan','',0,'','BK','',1,0,NULL,0,NULL,''),(3730,230,'Bac Lieu','',0,'','BL','',1,0,NULL,0,NULL,''),(3731,230,'Bac Ninh','',0,'','BC','',1,0,NULL,0,NULL,''),(3732,230,'Ba Ria-Vung Tau','',0,'','BR','',1,0,NULL,0,NULL,''),(3733,230,'Ben Tre','',0,'','BN','',1,0,NULL,0,NULL,''),(3734,230,'Binh Dinh','',0,'','BH','',1,0,NULL,0,NULL,''),(3735,230,'Binh Duong','',0,'','BU','',1,0,NULL,0,NULL,''),(3736,230,'Binh Phuoc','',0,'','BP','',1,0,NULL,0,NULL,''),(3737,230,'Binh Thuan','',0,'','BT','',1,0,NULL,0,NULL,''),(3738,230,'Ca Mau','',0,'','CM','',1,0,NULL,0,NULL,''),(3739,230,'Can Tho','',0,'','CT','',1,0,NULL,0,NULL,''),(3740,230,'Cao Bang','',0,'','CB','',1,0,NULL,0,NULL,''),(3741,230,'Dak Lak','',0,'','DL','',1,0,NULL,0,NULL,''),(3742,230,'Dak Nong','',0,'','DG','',1,0,NULL,0,NULL,''),(3743,230,'Da Nang','',0,'','DN','',1,0,NULL,0,NULL,''),(3744,230,'Dien Bien','',0,'','DB','',1,0,NULL,0,NULL,''),(3745,230,'Dong Nai','',0,'','DI','',1,0,NULL,0,NULL,''),(3746,230,'Dong Thap','',0,'','DT','',1,0,NULL,0,NULL,''),(3747,230,'Gia Lai','',0,'','GL','',1,0,NULL,0,NULL,''),(3748,230,'Ha Giang','',0,'','HG','',1,0,NULL,0,NULL,''),(3749,230,'Hai Duong','',0,'','HD','',1,0,NULL,0,NULL,''),(3750,230,'Hai Phong','',0,'','HP','',1,0,NULL,0,NULL,''),(3751,230,'Ha Nam','',0,'','HM','',1,0,NULL,0,NULL,''),(3752,230,'Ha Noi','',0,'','HI','',1,0,NULL,0,NULL,''),(3753,230,'Ha Tay','',0,'','HT','',1,0,NULL,0,NULL,''),(3754,230,'Ha Tinh','',0,'','HH','',1,0,NULL,0,NULL,''),(3755,230,'Hoa Binh','',0,'','HB','',1,0,NULL,0,NULL,''),(3756,230,'Ho Chi Minh City','',0,'','HC','',1,0,NULL,0,NULL,''),(3757,230,'Hau Giang','',0,'','HU','',1,0,NULL,0,NULL,''),(3758,230,'Hung Yen','',0,'','HY','',1,0,NULL,0,NULL,''),(3759,232,'Saint Croix','',0,'','C','',1,0,NULL,0,NULL,''),(3760,232,'Saint John','',0,'','J','',1,0,NULL,0,NULL,''),(3761,232,'Saint Thomas','',0,'','T','',1,0,NULL,0,NULL,''),(3762,233,'Alo','',0,'','A','',1,0,NULL,0,NULL,''),(3763,233,'Sigave','',0,'','S','',1,0,NULL,0,NULL,''),(3764,233,'Wallis','',0,'','W','',1,0,NULL,0,NULL,''),(3765,235,'Abyan','',0,'','AB','',1,0,NULL,0,NULL,''),(3766,235,'Adan','',0,'','AD','',1,0,NULL,0,NULL,''),(3767,235,'Amran','',0,'','AM','',1,0,NULL,0,NULL,''),(3768,235,'Al Bayda','',0,'','BA','',1,0,NULL,0,NULL,''),(3769,235,'Ad Dali','',0,'','DA','',1,0,NULL,0,NULL,''),(3770,235,'Dhamar','',0,'','DH','',1,0,NULL,0,NULL,''),(3771,235,'Hadramawt','',0,'','HD','',1,0,NULL,0,NULL,''),(3772,235,'Hajjah','',0,'','HJ','',1,0,NULL,0,NULL,''),(3773,235,'Al Hudaydah','',0,'','HU','',1,0,NULL,0,NULL,''),(3774,235,'Ibb','',0,'','IB','',1,0,NULL,0,NULL,''),(3775,235,'Al Jawf','',0,'','JA','',1,0,NULL,0,NULL,''),(3776,235,'Lahij','',0,'','LA','',1,0,NULL,0,NULL,''),(3777,235,'Ma\'rib','',0,'','MA','',1,0,NULL,0,NULL,''),(3778,235,'Al Mahrah','',0,'','MR','',1,0,NULL,0,NULL,''),(3779,235,'Al Mahwit','',0,'','MW','',1,0,NULL,0,NULL,''),(3780,235,'Sa\'dah','',0,'','SD','',1,0,NULL,0,NULL,''),(3781,235,'San\'a','',0,'','SN','',1,0,NULL,0,NULL,''),(3782,235,'Shabwah','',0,'','SH','',1,0,NULL,0,NULL,''),(3783,235,'Ta\'izz','',0,'','TA','',1,0,NULL,0,NULL,''),(3784,237,'Bas-Congo','',0,'','BC','',1,0,NULL,0,NULL,''),(3785,237,'Bandundu','',0,'','BN','',1,0,NULL,0,NULL,''),(3786,237,'Equateur','',0,'','EQ','',1,0,NULL,0,NULL,''),(3787,237,'Katanga','',0,'','KA','',1,0,NULL,0,NULL,''),(3788,237,'Kasai-Oriental','',0,'','KE','',1,0,NULL,0,NULL,''),(3789,237,'Kinshasa','',0,'','KN','',1,0,NULL,0,NULL,''),(3790,237,'Kasai-Occidental','',0,'','KW','',1,0,NULL,0,NULL,''),(3791,237,'Maniema','',0,'','MA','',1,0,NULL,0,NULL,''),(3792,237,'Nord-Kivu','',0,'','NK','',1,0,NULL,0,NULL,''),(3793,237,'Orientale','',0,'','OR','',1,0,NULL,0,NULL,''),(3794,237,'Sud-Kivu','',0,'','SK','',1,0,NULL,0,NULL,''),(3795,238,'Central','',0,'','CE','',1,0,NULL,0,NULL,''),(3796,238,'Copperbelt','',0,'','CB','',1,0,NULL,0,NULL,''),(3797,238,'Eastern','',0,'','EA','',1,0,NULL,0,NULL,''),(3798,238,'Luapula','',0,'','LP','',1,0,NULL,0,NULL,''),(3799,238,'Lusaka','',0,'','LK','',1,0,NULL,0,NULL,''),(3800,238,'Northern','',0,'','NO','',1,0,NULL,0,NULL,''),(3801,238,'North-Western','',0,'','NW','',1,0,NULL,0,NULL,''),(3802,238,'Southern','',0,'','SO','',1,0,NULL,0,NULL,''),(3803,238,'Western','',0,'','WE','',1,0,NULL,0,NULL,''),(3804,239,'Bulawayo','',0,'','BU','',1,0,NULL,0,NULL,''),(3805,239,'Harare','',0,'','HA','',1,0,NULL,0,NULL,''),(3806,239,'Manicaland','',0,'','ML','',1,0,NULL,0,NULL,''),(3807,239,'Mashonaland Central','',0,'','MC','',1,0,NULL,0,NULL,''),(3808,239,'Mashonaland East','',0,'','ME','',1,0,NULL,0,NULL,''),(3809,239,'Mashonaland West','',0,'','MW','',1,0,NULL,0,NULL,''),(3810,239,'Masvingo','',0,'','MV','',1,0,NULL,0,NULL,''),(3811,239,'Matabeleland North','',0,'','MN','',1,0,NULL,0,NULL,''),(3812,239,'Matabeleland South','',0,'','MS','',1,0,NULL,0,NULL,''),(3813,239,'Midlands','',0,'','MD','',1,0,NULL,0,NULL,''),(3814,105,'Campobasso','',0,'','CB','',1,0,NULL,0,NULL,''),(3815,105,'Carbonia-Iglesias','',0,'','CI','',1,0,NULL,0,NULL,''),(3816,105,'Caserta','',0,'','CE','',1,0,NULL,0,NULL,''),(3817,105,'Catania','',0,'','CT','',1,0,NULL,0,NULL,''),(3818,105,'Catanzaro','',0,'','CZ','',1,0,NULL,0,NULL,''),(3819,105,'Chieti','',0,'','CH','',1,0,NULL,0,NULL,''),(3820,105,'Como','',0,'','CO','',1,0,NULL,0,NULL,''),(3821,105,'Cosenza','',0,'','CS','',1,0,NULL,0,NULL,''),(3822,105,'Cremona','',0,'','CR','',1,0,NULL,0,NULL,''),(3823,105,'Crotone','',0,'','KR','',1,0,NULL,0,NULL,''),(3824,105,'Cuneo','',0,'','CN','',1,0,NULL,0,NULL,''),(3825,105,'Enna','',0,'','EN','',1,0,NULL,0,NULL,''),(3826,105,'Ferrara','',0,'','FE','',1,0,NULL,0,NULL,''),(3827,105,'Firenze','',0,'','FI','',1,0,NULL,0,NULL,''),(3828,105,'Foggia','',0,'','FG','',1,0,NULL,0,NULL,''),(3829,105,'Forli-Cesena','',0,'','FC','',1,0,NULL,0,NULL,''),(3830,105,'Frosinone','',0,'','FR','',1,0,NULL,0,NULL,''),(3831,105,'Genova','',0,'','GE','',1,0,NULL,0,NULL,''),(3832,105,'Gorizia','',0,'','GO','',1,0,NULL,0,NULL,''),(3833,105,'Grosseto','',0,'','GR','',1,0,NULL,0,NULL,''),(3834,105,'Imperia','',0,'','IM','',1,0,NULL,0,NULL,''),(3835,105,'Isernia','',0,'','IS','',1,0,NULL,0,NULL,''),(3836,105,'L&#39;Aquila','',0,'','AQ','',1,0,NULL,0,NULL,''),(3837,105,'La Spezia','',0,'','SP','',1,0,NULL,0,NULL,''),(3838,105,'Latina','',0,'','LT','',1,0,NULL,0,NULL,''),(3839,105,'Lecce','',0,'','LE','',1,0,NULL,0,NULL,''),(3840,105,'Lecco','',0,'','LC','',1,0,NULL,0,NULL,''),(3841,105,'Livorno','',0,'','LI','',1,0,NULL,0,NULL,''),(3842,105,'Lodi','',0,'','LO','',1,0,NULL,0,NULL,''),(3843,105,'Lucca','',0,'','LU','',1,0,NULL,0,NULL,''),(3844,105,'Macerata','',0,'','MC','',1,0,NULL,0,NULL,''),(3845,105,'Mantova','',0,'','MN','',1,0,NULL,0,NULL,''),(3846,105,'Massa-Carrara','',0,'','MS','',1,0,NULL,0,NULL,''),(3847,105,'Matera','',0,'','MT','',1,0,NULL,0,NULL,''),(3848,105,'Medio Campidano','',0,'','VS','',1,0,NULL,0,NULL,''),(3849,105,'Messina','',0,'','ME','',1,0,NULL,0,NULL,''),(3850,105,'Milano','',0,'','MI','',1,0,NULL,0,NULL,''),(3851,105,'Modena','',0,'','MO','',1,0,NULL,0,NULL,''),(3852,105,'Napoli','',0,'','NA','',1,0,NULL,0,NULL,''),(3853,105,'Novara','',0,'','NO','',1,0,NULL,0,NULL,''),(3854,105,'Nuoro','',0,'','NU','',1,0,NULL,0,NULL,''),(3855,105,'Ogliastra','',0,'','OG','',1,0,NULL,0,NULL,''),(3856,105,'Olbia-Tempio','',0,'','OT','',1,0,NULL,0,NULL,''),(3857,105,'Oristano','',0,'','OR','',1,0,NULL,0,NULL,''),(3858,105,'Padova','',0,'','PD','',1,0,NULL,0,NULL,''),(3859,105,'Palermo','',0,'','PA','',1,0,NULL,0,NULL,''),(3860,105,'Parma','',0,'','PR','',1,0,NULL,0,NULL,''),(3861,105,'Pavia','',0,'','PV','',1,0,NULL,0,NULL,''),(3862,105,'Perugia','',0,'','PG','',1,0,NULL,0,NULL,''),(3863,105,'Pesaro e Urbino','',0,'','PU','',1,0,NULL,0,NULL,''),(3864,105,'Pescara','',0,'','PE','',1,0,NULL,0,NULL,''),(3865,105,'Piacenza','',0,'','PC','',1,0,NULL,0,NULL,''),(3866,105,'Pisa','',0,'','PI','',1,0,NULL,0,NULL,''),(3867,105,'Pistoia','',0,'','PT','',1,0,NULL,0,NULL,''),(3868,105,'Pordenone','',0,'','PN','',1,0,NULL,0,NULL,''),(3869,105,'Potenza','',0,'','PZ','',1,0,NULL,0,NULL,''),(3870,105,'Prato','',0,'','PO','',1,0,NULL,0,NULL,''),(3871,105,'Ragusa','',0,'','RG','',1,0,NULL,0,NULL,''),(3872,105,'Ravenna','',0,'','RA','',1,0,NULL,0,NULL,''),(3873,105,'Reggio Calabria','',0,'','RC','',1,0,NULL,0,NULL,''),(3874,105,'Reggio Emilia','',0,'','RE','',1,0,NULL,0,NULL,''),(3875,105,'Rieti','',0,'','RI','',1,0,NULL,0,NULL,''),(3876,105,'Rimini','',0,'','RN','',1,0,NULL,0,NULL,''),(3877,105,'Roma','',0,'','RM','',1,0,NULL,0,NULL,''),(3878,105,'Rovigo','',0,'','RO','',1,0,NULL,0,NULL,''),(3879,105,'Salerno','',0,'','SA','',1,0,NULL,0,NULL,''),(3880,105,'Sassari','',0,'','SS','',1,0,NULL,0,NULL,''),(3881,105,'Savona','',0,'','SV','',1,0,NULL,0,NULL,''),(3882,105,'Siena','',0,'','SI','',1,0,NULL,0,NULL,''),(3883,105,'Siracusa','',0,'','SR','',1,0,NULL,0,NULL,''),(3884,105,'Sondrio','',0,'','SO','',1,0,NULL,0,NULL,''),(3885,105,'Taranto','',0,'','TA','',1,0,NULL,0,NULL,''),(3886,105,'Teramo','',0,'','TE','',1,0,NULL,0,NULL,''),(3887,105,'Terni','',0,'','TR','',1,0,NULL,0,NULL,''),(3888,105,'Torino','',0,'','TO','',1,0,NULL,0,NULL,''),(3889,105,'Trapani','',0,'','TP','',1,0,NULL,0,NULL,''),(3890,105,'Trento','',0,'','TN','',1,0,NULL,0,NULL,''),(3891,105,'Treviso','',0,'','TV','',1,0,NULL,0,NULL,''),(3892,105,'Trieste','',0,'','TS','',1,0,NULL,0,NULL,''),(3893,105,'Udine','',0,'','UD','',1,0,NULL,0,NULL,''),(3894,105,'Varese','',0,'','VA','',1,0,NULL,0,NULL,''),(3895,105,'Venezia','',0,'','VE','',1,0,NULL,0,NULL,''),(3896,105,'Verbano-Cusio-Ossola','',0,'','VB','',1,0,NULL,0,NULL,''),(3897,105,'Vercelli','',0,'','VC','',1,0,NULL,0,NULL,''),(3898,105,'Verona','',0,'','VR','',1,0,NULL,0,NULL,''),(3899,105,'Vibo Valentia','',0,'','VV','',1,0,NULL,0,NULL,''),(3900,105,'Vicenza','',0,'','VI','',1,0,NULL,0,NULL,''),(3901,105,'Viterbo','',0,'','VT','',1,0,NULL,0,NULL,''),(3902,222,'County Antrim','',0,'','ANT','',1,0,NULL,0,NULL,''),(3903,222,'County Armagh','',0,'','ARM','',1,0,NULL,0,NULL,''),(3904,222,'County Down','',0,'','DOW','',1,0,NULL,0,NULL,''),(3905,222,'County Fermanagh','',0,'','FER','',1,0,NULL,0,NULL,''),(3906,222,'County Londonderry','',0,'','LDY','',1,0,NULL,0,NULL,''),(3907,222,'County Tyrone','',0,'','TYR','',1,0,NULL,0,NULL,''),(3908,222,'Cumbria','',0,'','CMA','',1,0,NULL,0,NULL,''),(3909,190,'Pomurska','',0,'','1','',1,0,NULL,0,NULL,''),(3910,190,'Podravska','',0,'','2','',1,0,NULL,0,NULL,''),(3911,190,'Koroška','',0,'','3','',1,0,NULL,0,NULL,''),(3912,190,'Savinjska','',0,'','4','',1,0,NULL,0,NULL,''),(3913,190,'Zasavska','',0,'','5','',1,0,NULL,0,NULL,''),(3914,190,'Spodnjeposavska','',0,'','6','',1,0,NULL,0,NULL,''),(3915,190,'Jugovzhodna Slovenija','',0,'','7','',1,0,NULL,0,NULL,''),(3916,190,'Osrednjeslovenska','',0,'','8','',1,0,NULL,0,NULL,''),(3917,190,'Gorenjska','',0,'','9','',1,0,NULL,0,NULL,''),(3918,190,'Notranjsko-kraška','',0,'','10','',1,0,NULL,0,NULL,''),(3919,190,'Goriška','',0,'','11','',1,0,NULL,0,NULL,''),(3920,190,'Obalno-kraška','',0,'','12','',1,0,NULL,0,NULL,''),(3921,33,'Ruse','',0,'','','',1,0,NULL,0,NULL,''),(3922,101,'Alborz','',0,'','ALB','',1,0,NULL,0,NULL,''),(3923,21,'Brussels-Capital Region','',0,'','BRU','',1,0,NULL,0,NULL,''),(3924,138,'Aguascalientes','',0,'','AG','',1,0,NULL,0,NULL,''),(3925,222,'Isle of Man','',0,'','IOM','',1,0,NULL,0,NULL,''),(3926,242,'Andrijevica','',0,'','01','',1,0,NULL,0,NULL,''),(3927,242,'Bar','',0,'','02','',1,0,NULL,0,NULL,''),(3928,242,'Berane','',0,'','03','',1,0,NULL,0,NULL,''),(3929,242,'Bijelo Polje','',0,'','04','',1,0,NULL,0,NULL,''),(3930,242,'Budva','',0,'','05','',1,0,NULL,0,NULL,''),(3931,242,'Cetinje','',0,'','06','',1,0,NULL,0,NULL,''),(3932,242,'Danilovgrad','',0,'','07','',1,0,NULL,0,NULL,''),(3933,242,'Herceg-Novi','',0,'','08','',1,0,NULL,0,NULL,''),(3934,242,'Kolašin','',0,'','09','',1,0,NULL,0,NULL,''),(3935,242,'Kotor','',0,'','10','',1,0,NULL,0,NULL,''),(3936,242,'Mojkovac','',0,'','11','',1,0,NULL,0,NULL,''),(3937,242,'Nikšić','',0,'','12','',1,0,NULL,0,NULL,''),(3938,242,'Plav','',0,'','13','',1,0,NULL,0,NULL,''),(3939,242,'Pljevlja','',0,'','14','',1,0,NULL,0,NULL,''),(3940,242,'Plužine','',0,'','15','',1,0,NULL,0,NULL,''),(3941,242,'Podgorica','',0,'','16','',1,0,NULL,0,NULL,''),(3942,242,'Rožaje','',0,'','17','',1,0,NULL,0,NULL,''),(3943,242,'Šavnik','',0,'','18','',1,0,NULL,0,NULL,''),(3944,242,'Tivat','',0,'','19','',1,0,NULL,0,NULL,''),(3945,242,'Ulcinj','',0,'','20','',1,0,NULL,0,NULL,''),(3946,242,'Žabljak','',0,'','21','',1,0,NULL,0,NULL,''),(3947,243,'Belgrade','',0,'','00','',1,0,NULL,0,NULL,''),(3948,243,'North Bačka','',0,'','01','',1,0,NULL,0,NULL,''),(3949,243,'Central Banat','',0,'','02','',1,0,NULL,0,NULL,''),(3950,243,'North Banat','',0,'','03','',1,0,NULL,0,NULL,''),(3951,243,'South Banat','',0,'','04','',1,0,NULL,0,NULL,''),(3952,243,'West Bačka','',0,'','05','',1,0,NULL,0,NULL,''),(3953,243,'South Bačka','',0,'','06','',1,0,NULL,0,NULL,''),(3954,243,'Srem','',0,'','07','',1,0,NULL,0,NULL,''),(3955,243,'Mačva','',0,'','08','',1,0,NULL,0,NULL,''),(3956,243,'Kolubara','',0,'','09','',1,0,NULL,0,NULL,''),(3957,243,'Podunavlje','',0,'','10','',1,0,NULL,0,NULL,''),(3958,243,'Braničevo','',0,'','11','',1,0,NULL,0,NULL,''),(3959,243,'Šumadija','',0,'','12','',1,0,NULL,0,NULL,''),(3960,243,'Pomoravlje','',0,'','13','',1,0,NULL,0,NULL,''),(3961,243,'Bor','',0,'','14','',1,0,NULL,0,NULL,''),(3962,243,'Zaječar','',0,'','15','',1,0,NULL,0,NULL,''),(3963,243,'Zlatibor','',0,'','16','',1,0,NULL,0,NULL,''),(3964,243,'Moravica','',0,'','17','',1,0,NULL,0,NULL,''),(3965,243,'Raška','',0,'','18','',1,0,NULL,0,NULL,''),(3966,243,'Rasina','',0,'','19','',1,0,NULL,0,NULL,''),(3967,243,'Nišava','',0,'','20','',1,0,NULL,0,NULL,''),(3968,243,'Toplica','',0,'','21','',1,0,NULL,0,NULL,''),(3969,243,'Pirot','',0,'','22','',1,0,NULL,0,NULL,''),(3970,243,'Jablanica','',0,'','23','',1,0,NULL,0,NULL,''),(3971,243,'Pčinja','',0,'','24','',1,0,NULL,0,NULL,''),(3972,243,'Kosovo','',0,'','KM','',1,0,NULL,0,NULL,''),(3973,245,'Bonaire','',0,'','BO','',1,0,NULL,0,NULL,''),(3974,245,'Saba','',0,'','SA','',1,0,NULL,0,NULL,''),(3975,245,'Sint Eustatius','',0,'','SE','',1,0,NULL,0,NULL,''),(3976,248,'Central Equatoria','',0,'','EC','',1,0,NULL,0,NULL,''),(3977,248,'Eastern Equatoria','',0,'','EE','',1,0,NULL,0,NULL,''),(3978,248,'Jonglei','',0,'','JG','',1,0,NULL,0,NULL,''),(3979,248,'Lakes','',0,'','LK','',1,0,NULL,0,NULL,''),(3980,248,'Northern Bahr el-Ghazal','',0,'','BN','',1,0,NULL,0,NULL,''),(3981,248,'Unity','',0,'','UY','',1,0,NULL,0,NULL,''),(3982,248,'Upper Nile','',0,'','NU','',1,0,NULL,0,NULL,''),(3983,248,'Warrap','',0,'','WR','',1,0,NULL,0,NULL,''),(3984,248,'Western Bahr el-Ghazal','',0,'','BW','',1,0,NULL,0,NULL,''),(3985,248,'Western Equatoria','',0,'','EW','',1,0,NULL,0,NULL,'');
/*!40000 ALTER TABLE `tc5xu_phocacart_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_reviews`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `review` text COLLATE utf8mb4_unicode_ci,
  `rating` int NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_reviews`
--

LOCK TABLES `tc5xu_phocacart_reviews` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_reward_points`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_reward_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_reward_points` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `order_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `points` int NOT NULL DEFAULT '0',
  `type` tinyint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_reward_points`
--

LOCK TABLES `tc5xu_phocacart_reward_points` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_reward_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_reward_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_sections`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_sections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_published` (`published`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_sections`
--

LOCK TABLES `tc5xu_phocacart_sections` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_shipping_method_countries`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_shipping_method_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_shipping_method_countries` (
  `shipping_id` int NOT NULL DEFAULT '0',
  `country_id` int NOT NULL DEFAULT '0',
  KEY `idx_shipping` (`shipping_id`,`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_shipping_method_countries`
--

LOCK TABLES `tc5xu_phocacart_shipping_method_countries` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_shipping_method_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_shipping_method_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_shipping_method_regions`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_shipping_method_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_shipping_method_regions` (
  `shipping_id` int NOT NULL DEFAULT '0',
  `region_id` int NOT NULL DEFAULT '0',
  KEY `idx_shipping` (`shipping_id`,`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_shipping_method_regions`
--

LOCK TABLES `tc5xu_phocacart_shipping_method_regions` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_shipping_method_regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_shipping_method_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_shipping_method_zones`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_shipping_method_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_shipping_method_zones` (
  `shipping_id` int NOT NULL DEFAULT '0',
  `zone_id` int NOT NULL DEFAULT '0',
  KEY `idx_shipping` (`shipping_id`,`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_shipping_method_zones`
--

LOCK TABLES `tc5xu_phocacart_shipping_method_zones` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_shipping_method_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_shipping_method_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_shipping_methods`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_shipping_methods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tax_id` int NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `cost_additional` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `calculation_type` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint NOT NULL DEFAULT '0',
  `change_tax` tinyint(1) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_info` text COLLATE utf8mb4_unicode_ci,
  `tracking_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tracking_description` text COLLATE utf8mb4_unicode_ci,
  `tracking_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lowest_weight` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `highest_weight` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `active_volume` tinyint(1) NOT NULL DEFAULT '0',
  `lowest_volume` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `highest_volume` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `active_weight` tinyint(1) NOT NULL DEFAULT '0',
  `lowest_amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `highest_amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `active_size` tinyint(1) NOT NULL DEFAULT '0',
  `maximal_width` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `maximal_height` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `maximal_length` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `minimal_width` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `minimal_height` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `minimal_length` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `active_quantity` tinyint(1) NOT NULL DEFAULT '0',
  `minimal_quantity` int NOT NULL DEFAULT '0',
  `maximal_quantity` int NOT NULL DEFAULT '0',
  `active_amount` tinyint(1) NOT NULL DEFAULT '0',
  `active_country` tinyint(1) NOT NULL DEFAULT '0',
  `active_region` tinyint(1) NOT NULL DEFAULT '0',
  `active_zone` tinyint(1) NOT NULL DEFAULT '0',
  `zip` text COLLATE utf8mb4_unicode_ci,
  `active_zip` tinyint(1) NOT NULL DEFAULT '0',
  `method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `access` int unsigned NOT NULL DEFAULT '0',
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `published` (`published`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_shipping_methods`
--

LOCK TABLES `tc5xu_phocacart_shipping_methods` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_shipping_methods` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_shipping_methods` VALUES (1,1,0.0000,0.0000,0,'Standard Shipping','standard-shipping','','',0,0,'',NULL,'',NULL,'',0.0000,0.0000,0,0.0000,0.0000,0,0.0000,0.0000,0,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0,0,0,0,0,0,0,NULL,0,'',1,0,1,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',0,'','');
/*!40000 ALTER TABLE `tc5xu_phocacart_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_shipping_methods_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_shipping_methods_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_shipping_methods_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_info` text COLLATE utf8mb4_unicode_ci,
  `tracking_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_description` text COLLATE utf8mb4_unicode_ci,
  `tracking_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_shipping_methods_i18n`
--

LOCK TABLES `tc5xu_phocacart_shipping_methods_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_shipping_methods_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_shipping_methods_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_specification_groups`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_specification_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_specification_groups`
--

LOCK TABLES `tc5xu_phocacart_specification_groups` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_specification_groups` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_specification_groups` VALUES (1,'Flavour','flavour',1,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,'*');
/*!40000 ALTER TABLE `tc5xu_phocacart_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_specification_groups_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_specification_groups_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_specification_groups_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_specification_groups_i18n`
--

LOCK TABLES `tc5xu_phocacart_specification_groups_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_specification_groups_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_specification_groups_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_specifications`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_specifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `group_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci,
  `alias_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_medium` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_small` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_product` (`product_id`),
  KEY `idx_group` (`group_id`),
  KEY `idx_alias` (`alias`),
  KEY `idx_alias_value` (`alias_value`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_specifications`
--

LOCK TABLES `tc5xu_phocacart_specifications` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_specifications` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_specifications` VALUES (1,1,0,'Flavour','flavour','Apple','apple','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(2,1,0,'Flavour','flavour','Pear','pear','','','','',0,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00',NULL,''),(3,2,0,'Flavour','flavour','Strawberry','strawberry','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(4,2,0,'Flavour','flavour','Blueberry','blueberry','','','','',0,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00',NULL,''),(5,3,0,'Flavour','flavour','Peach','peach','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(6,3,0,'Flavour','flavour','Banana','banana','','','','',0,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00',NULL,''),(7,4,1,'Flavour','flavour','Mango','mango','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(8,4,1,'Flavour','flavour','Papaya','papaya','','','','',0,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00',NULL,''),(9,5,0,'Flavour','flavour','Banana','banana','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(10,5,0,'Flavour','flavour','Pineapple','pineapple','','','','',0,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00',NULL,''),(11,6,0,'Flavour','flavour','Raspberry','raspberry','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(12,6,0,'Flavour','flavour','Pear','pear','','','','',0,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00',NULL,''),(13,7,0,'Flavour','flavour','Lemon','lemon','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(14,8,0,'Flavour','flavour','Orange','orange','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(15,9,0,'Flavour','flavour','Cherry','cherry','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(16,10,1,'Flavour','flavour','Blackberry','blackberry','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(17,11,1,'Flavour','flavour','Melon','melon','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(18,12,0,'Flavour','flavour','Plum','plum','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(19,13,1,'Flavour','flavour','Melon','melon','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(20,14,1,'Flavour','flavour','Orange','orange','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(21,15,0,'Flavour','flavour','Lemon','lemon','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(22,16,0,'Flavour','flavour','Blackberry','blackberry','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(23,17,1,'Flavour','flavour','Mint','mint','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(24,18,0,'Flavour','flavour','Strawberry','strawberry','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(25,19,1,'Flavour','flavour','Coconut','coconut','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(26,19,1,'Flavour','flavour','Raspberry','raspberry','','','','',0,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00',NULL,''),(27,20,0,'Flavour','flavour','Apple','apple','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(28,20,0,'Flavour','flavour','Pear','pear','','','','',0,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00',NULL,''),(29,21,0,'Flavour','flavour','Nuts','nuts','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(30,21,0,'Flavour','flavour','Grapes','grapes','','','','',0,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00',NULL,''),(31,22,0,'Flavour','flavour','Mango','mango','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(32,22,0,'Flavour','flavour','Papaya','papaya','','','','',0,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00',NULL,''),(33,23,0,'Flavour','flavour','Blueberry','blueberry','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(34,23,0,'Flavour','flavour','Strawberry','strawberry','','','','',0,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00',NULL,''),(35,24,0,'Flavour','flavour','Banana','banana','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(36,24,0,'Flavour','flavour','Peach','peach','','','','',0,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00',NULL,''),(37,25,0,'Flavour','flavour','Orange','orange','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(38,26,0,'Flavour','flavour','Kiwi','kiwi','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(39,27,0,'Flavour','flavour','Apple','apple','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(40,28,0,'Flavour','flavour','Strawberry','strawberry','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(41,29,0,'Flavour','flavour','Peach','peach','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(42,30,1,'Flavour','flavour','Blackcurrant','blackcurrant','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(43,31,0,'Flavour','flavour','Orange','orange','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(44,32,0,'Flavour','flavour','Lemon','lemon','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(45,33,0,'Flavour','flavour','Melon','melon','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(46,34,1,'Flavour','flavour','Blackberry','blackberry','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(47,35,1,'Flavour','flavour','Cherry','cherry','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,''),(48,36,0,'Flavour','flavour','Apple','apple','','','','',0,0,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',NULL,'');
/*!40000 ALTER TABLE `tc5xu_phocacart_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_specifications_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_specifications_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_specifications_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`),
  KEY `idx_alias_value` (`alias_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_specifications_i18n`
--

LOCK TABLES `tc5xu_phocacart_specifications_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_specifications_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_specifications_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_stock_statuses`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_stock_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_stock_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title_feed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_stock_statuses`
--

LOCK TABLES `tc5xu_phocacart_stock_statuses` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_stock_statuses` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_stock_statuses` VALUES (1,'COM_PHOCACART_STATUS_OUT_OF_STOCK','','','','','',NULL,1,0,NULL,1,'2024-12-02 23:08:42',0,NULL,''),(2,'COM_PHOCACART_STATUS_IN_STOCK','','','','','',NULL,1,0,NULL,2,'2024-12-02 23:08:42',0,NULL,''),(3,'COM_PHOCACART_STATUS_2_3_DAYS','','','','','',NULL,1,0,NULL,3,'2024-12-02 23:08:42',0,NULL,'');
/*!40000 ALTER TABLE `tc5xu_phocacart_stock_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_submit_items`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_submit_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_submit_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `items_item` text COLLATE utf8mb4_unicode_ci,
  `items_contact` text COLLATE utf8mb4_unicode_ci,
  `items_parameter` text COLLATE utf8mb4_unicode_ci,
  `access` int unsigned NOT NULL DEFAULT '0',
  `upload_token` char(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `upload_folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date_submit` datetime NOT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `published` (`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_submit_items`
--

LOCK TABLES `tc5xu_phocacart_submit_items` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_submit_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_submit_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_taglabels_related`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_taglabels_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_taglabels_related` (
  `item_id` int NOT NULL DEFAULT '0',
  `tag_id` int NOT NULL DEFAULT '0',
  UNIQUE KEY `i_taglabel_id` (`item_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_taglabels_related`
--

LOCK TABLES `tc5xu_phocacart_taglabels_related` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_taglabels_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_taglabels_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_tags`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `display_format` tinyint(1) NOT NULL DEFAULT '0',
  `icon_class` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_ext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_cat` int unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `count_date` datetime NOT NULL,
  `count_products` int NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_tags`
--

LOCK TABLES `tc5xu_phocacart_tags` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_tags_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_tags_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_tags_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_tags_i18n`
--

LOCK TABLES `tc5xu_phocacart_tags_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_tags_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_tags_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_tags_related`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_tags_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_tags_related` (
  `item_id` int NOT NULL DEFAULT '0',
  `tag_id` int NOT NULL DEFAULT '0',
  UNIQUE KEY `i_tag_id` (`item_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_tags_related`
--

LOCK TABLES `tc5xu_phocacart_tags_related` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_tags_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_tags_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_tax_countries`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_tax_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_tax_countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tax_id` int NOT NULL DEFAULT '0',
  `country_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `tax_id` (`tax_id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_tax_countries`
--

LOCK TABLES `tc5xu_phocacart_tax_countries` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_tax_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_tax_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_tax_regions`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_tax_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_tax_regions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tax_id` int NOT NULL DEFAULT '0',
  `region_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `tax_id` (`tax_id`),
  KEY `region_id` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_tax_regions`
--

LOCK TABLES `tc5xu_phocacart_tax_regions` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_tax_regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_tax_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_taxes`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_taxes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `calculation_type` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `tax_hide` text COLLATE utf8mb4_unicode_ci,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_taxes`
--

LOCK TABLES `tc5xu_phocacart_taxes` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_taxes` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_taxes` VALUES (1,'VAT','vat','','',20.0000,1,1,0,NULL,'0000-00-00 00:00:00',1,'','');
/*!40000 ALTER TABLE `tc5xu_phocacart_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_taxes_i18n`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_taxes_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_taxes_i18n` (
  `id` int NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`language`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_taxes_i18n`
--

LOCK TABLES `tc5xu_phocacart_taxes_i18n` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_taxes_i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_taxes_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_units`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `section_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_css` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_published` (`published`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_units`
--

LOCK TABLES `tc5xu_phocacart_units` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_users`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `ba_sa` tinyint(1) NOT NULL DEFAULT '0',
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `loyalty_card_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name_first` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name_middle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name_last` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name_degree` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vat_1` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vat_2` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vat_valid` tinyint(1) NOT NULL DEFAULT '0',
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` int NOT NULL DEFAULT '0',
  `region` int NOT NULL DEFAULT '0',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_contact` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_1` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params_user` text COLLATE utf8mb4_unicode_ci,
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_phocacart_users` (`type`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_users`
--

LOCK TABLES `tc5xu_phocacart_users` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_users` DISABLE KEYS */;
INSERT INTO `tc5xu_phocacart_users` VALUES (1,783,0,1,0,'','2024-12-03-01-22-53','','','Chetra','','Yoem','','Other','','',0,'Speu Kert, Speu, Chamkar Leu','','Kampong Cham','03025',36,573,'chetra.storeit@gmail.com','','','','','',NULL,0,'2024-12-03 01:22:54',0,0,NULL,0);
/*!40000 ALTER TABLE `tc5xu_phocacart_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_vendors`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_vendors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` int NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_published` (`published`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_vendors`
--

LOCK TABLES `tc5xu_phocacart_vendors` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_wishlists`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_wishlists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `wishlist` text COLLATE utf8mb4_unicode_ci,
  `ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quantity` int NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_product_user` (`product_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_wishlists`
--

LOCK TABLES `tc5xu_phocacart_wishlists` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_zone_countries`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_zone_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_zone_countries` (
  `zone_id` int NOT NULL DEFAULT '0',
  `country_id` int NOT NULL DEFAULT '0',
  KEY `idx_zonecountry` (`zone_id`,`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_zone_countries`
--

LOCK TABLES `tc5xu_phocacart_zone_countries` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_zone_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_zone_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_zone_regions`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_zone_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_zone_regions` (
  `zone_id` int NOT NULL DEFAULT '0',
  `region_id` int NOT NULL DEFAULT '0',
  KEY `idx_zoneregion` (`zone_id`,`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_zone_regions`
--

LOCK TABLES `tc5xu_phocacart_zone_regions` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_zone_regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_zone_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_phocacart_zones`
--

DROP TABLE IF EXISTS `tc5xu_phocacart_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_phocacart_zones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` int NOT NULL DEFAULT '0',
  `code2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code3` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_phocacart_zones`
--

LOCK TABLES `tc5xu_phocacart_zones` WRITE;
/*!40000 ALTER TABLE `tc5xu_phocacart_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_phocacart_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_postinstall_messages`
--

DROP TABLE IF EXISTS `tc5xu_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_postinstall_messages` (
  `postinstall_message_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_postinstall_messages`
--

LOCK TABLES `tc5xu_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `tc5xu_postinstall_messages` DISABLE KEYS */;
INSERT INTO `tc5xu_postinstall_messages` VALUES (1,239,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),(2,239,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),(3,239,'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION','plg_system_httpheaders',1,'action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_condition','4.0.0',1),(4,239,'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_TITLE','COM_USERS_POSTINSTALL_MULTIFACTORAUTH_BODY','COM_USERS_POSTINSTALL_MULTIFACTORAUTH_ACTION','com_users',1,'action','admin://components/com_users/postinstall/multifactorauth.php','com_users_postinstall_mfa_action','admin://components/com_users/postinstall/multifactorauth.php','com_users_postinstall_mfa_condition','4.2.0',1);
/*!40000 ALTER TABLE `tc5xu_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_privacy_consents`
--

DROP TABLE IF EXISTS `tc5xu_privacy_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_privacy_consents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `state` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_privacy_consents`
--

LOCK TABLES `tc5xu_privacy_consents` WRITE;
/*!40000 ALTER TABLE `tc5xu_privacy_consents` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_privacy_consents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_privacy_requests`
--

DROP TABLE IF EXISTS `tc5xu_privacy_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_privacy_requests` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_privacy_requests`
--

LOCK TABLES `tc5xu_privacy_requests` WRITE;
/*!40000 ALTER TABLE `tc5xu_privacy_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_privacy_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_redirect_links`
--

DROP TABLE IF EXISTS `tc5xu_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_redirect_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modified` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_redirect_links`
--

LOCK TABLES `tc5xu_redirect_links` WRITE;
/*!40000 ALTER TABLE `tc5xu_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_scheduler_tasks`
--

DROP TABLE IF EXISTS `tc5xu_scheduler_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_scheduler_tasks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint NOT NULL DEFAULT '0',
  `last_exit_code` int NOT NULL DEFAULT '0' COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int DEFAULT '0' COMMENT 'Count of successful triggers',
  `times_failed` int DEFAULT '0' COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0' COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint NOT NULL DEFAULT '0' COMMENT 'If 1, the task is only accessible via CLI',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_state` (`state`),
  KEY `idx_last_exit` (`last_exit_code`),
  KEY `idx_next_exec` (`next_execution`),
  KEY `idx_locked` (`locked`),
  KEY `idx_priority` (`priority`),
  KEY `idx_cli_exclusive` (`cli_exclusive`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_scheduler_tasks`
--

LOCK TABLES `tc5xu_scheduler_tasks` WRITE;
/*!40000 ALTER TABLE `tc5xu_scheduler_tasks` DISABLE KEYS */;
INSERT INTO `tc5xu_scheduler_tasks` VALUES (1,97,'Rotate Logs','rotation.logs','{\"rule-type\":\"interval-days\",\"interval-days\":\"30\",\"exec-day\":\"9\",\"exec-time\":\"05:00\"}','{\"type\":\"interval\",\"exp\":\"P30D\"}',1,0,'2024-11-17 13:03:59','2024-12-17 13:03:59',1,0,NULL,0,0,0,'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"logstokeep\":1}',NULL,'2024-10-09 05:53:39',783,NULL,NULL),(2,98,'Session GC','session.gc','{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"05:00\"}','{\"type\":\"interval\",\"exp\":\"PT24H\"}',1,0,'2024-12-02 12:56:33','2024-12-03 12:56:33',6,0,NULL,0,0,0,'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"enable_session_gc\":1,\"enable_session_metadata_gc\":1}',NULL,'2024-10-09 05:53:39',783,NULL,NULL),(3,99,'Update Notification','update.notification','{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"05:00\"}','{\"type\":\"interval\",\"exp\":\"PT24H\"}',1,0,'2024-12-02 12:51:34','2024-12-03 12:51:34',6,0,NULL,0,0,0,'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"email\":\"\",\"language_override\":\"\"}',NULL,'2024-10-09 05:53:39',783,NULL,NULL);
/*!40000 ALTER TABLE `tc5xu_scheduler_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_schemaorg`
--

DROP TABLE IF EXISTS `tc5xu_schemaorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_schemaorg` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `itemId` int unsigned DEFAULT NULL,
  `context` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schemaType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_schemaorg`
--

LOCK TABLES `tc5xu_schemaorg` WRITE;
/*!40000 ALTER TABLE `tc5xu_schemaorg` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_schemaorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_schemas`
--

DROP TABLE IF EXISTS `tc5xu_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_schemas` (
  `extension_id` int NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_schemas`
--

LOCK TABLES `tc5xu_schemas` WRITE;
/*!40000 ALTER TABLE `tc5xu_schemas` DISABLE KEYS */;
INSERT INTO `tc5xu_schemas` VALUES (239,'5.1.1-2024-04-18'),(247,''),(248,'5.0.0');
/*!40000 ALTER TABLE `tc5xu_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_session`
--

DROP TABLE IF EXISTS `tc5xu_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint unsigned DEFAULT NULL,
  `guest` tinyint unsigned DEFAULT '1',
  `time` int NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `client_id_guest` (`client_id`,`guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_session`
--

LOCK TABLES `tc5xu_session` WRITE;
/*!40000 ALTER TABLE `tc5xu_session` DISABLE KEYS */;
INSERT INTO `tc5xu_session` VALUES (_binary '387fu79j1kqumg73f8haotg2u2',NULL,1,1733187546,'joomla|s:348:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzMzMTg3NTQ2O3M6NDoibGFzdCI7aToxNzMzMTg3NTQ2O3M6Mzoibm93IjtpOjE3MzMxODc1NDY7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),(_binary '52v0bgf2lfopkr93fj3pt19kpm',1,0,1733192818,'joomla|s:780:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzMzMTkyNzkwO3M6NDoibGFzdCI7aToxNzMzMTkyODE4O3M6Mzoibm93IjtpOjE3MzMxOTI4MTg7fXM6NToidG9rZW4iO3M6MzI6ImE2YWMyMzRjMWM2ZDBjMzQ0ZGEwZGM0NWU2ZmNlMWFhIjtzOjc6ImNvdW50ZXIiO2k6NTt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTo3ODM7fXM6OToiY29tX3VzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJtZmFfY2hlY2tlZCI7aToxO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',783,'root'),(_binary 'crbfsgctq8igars9qeumjli4r7',NULL,1,1733187546,'joomla|s:348:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzMzMTg3NTQ2O3M6NDoibGFzdCI7aToxNzMzMTg3NTQ2O3M6Mzoibm93IjtpOjE3MzMxODc1NDY7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),(_binary 'is67daa2t7mi7lv42o62porv1c',0,1,1733195591,'joomla|s:1016:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzMzMTkyODI0O3M6NDoibGFzdCI7aToxNzMzMTk0NzUxO3M6Mzoibm93IjtpOjE3MzMxOTU1OTE7fXM6NToidG9rZW4iO3M6MzI6IjgyN2YwYjJlMTJhZTgzMTllMmM1MDRiYWI0NWYzZmZiIjtzOjc6ImNvdW50ZXIiO2k6Njt9czo5OiJwaG9jYUNhcnQiO086ODoic3RkQ2xhc3MiOjg6e3M6ODoiY3VycmVuY3kiO2k6MTtzOjU6Imd1ZXN0IjtiOjA7czoxMjoiZ3Vlc3RhZGRyZXNzIjtiOjA7czoxMzoiZ3Vlc3RzaGlwcGluZyI7YjowO3M6MTI6Imd1ZXN0cGF5bWVudCI7YjowO3M6MTk6Imd1ZXN0c2hpcHBpbmdwYXJhbXMiO2I6MDtzOjE4OiJndWVzdHBheW1lbnRwYXJhbXMiO2I6MDtzOjIyOiJndWVzdGxveWFsdHljYXJkbnVtYmVyIjtiOjA7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',0,'');
/*!40000 ALTER TABLE `tc5xu_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_tags`
--

DROP TABLE IF EXISTS `tc5xu_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_tags`
--

LOCK TABLES `tc5xu_tags` WRITE;
/*!40000 ALTER TABLE `tc5xu_tags` DISABLE KEYS */;
INSERT INTO `tc5xu_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,NULL,NULL,1,'','','','',783,'2024-10-09 05:53:38','',783,'2024-10-09 05:53:38','','',0,'*',1,NULL,NULL);
/*!40000 ALTER TABLE `tc5xu_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_template_overrides`
--

DROP TABLE IF EXISTS `tc5xu_template_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_template_overrides` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hash_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension_id` int DEFAULT '0',
  `state` tinyint NOT NULL DEFAULT '0',
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint unsigned NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_extension_id` (`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_template_overrides`
--

LOCK TABLES `tc5xu_template_overrides` WRITE;
/*!40000 ALTER TABLE `tc5xu_template_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_template_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_template_styles`
--

DROP TABLE IF EXISTS `tc5xu_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_template_styles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inheritable` tinyint NOT NULL DEFAULT '0',
  `parent` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_client_id` (`client_id`),
  KEY `idx_client_id_home` (`client_id`,`home`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_template_styles`
--

LOCK TABLES `tc5xu_template_styles` WRITE;
/*!40000 ALTER TABLE `tc5xu_template_styles` DISABLE KEYS */;
INSERT INTO `tc5xu_template_styles` VALUES (10,'atum',1,'1','Atum - Default',1,'','{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"colorScheme\":\"os\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),(11,'cassiopeia',0,'0','Cassiopeia - Default',1,'','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}'),(12,'cassiopeia_phocacart_beauty',0,'1','cassiopeia_phocacart_beauty - Default',0,'cassiopeia','{\"brand\":false,\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"systemFontBody\":\"\",\"systemFontHeading\":\"\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}');
/*!40000 ALTER TABLE `tc5xu_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_tuf_metadata`
--

DROP TABLE IF EXISTS `tc5xu_tuf_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_tuf_metadata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `update_site_id` int DEFAULT '0',
  `root` text COLLATE utf8mb4_unicode_ci,
  `targets` text COLLATE utf8mb4_unicode_ci,
  `snapshot` text COLLATE utf8mb4_unicode_ci,
  `timestamp` text COLLATE utf8mb4_unicode_ci,
  `mirrors` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Secure TUF Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_tuf_metadata`
--

LOCK TABLES `tc5xu_tuf_metadata` WRITE;
/*!40000 ALTER TABLE `tc5xu_tuf_metadata` DISABLE KEYS */;
INSERT INTO `tc5xu_tuf_metadata` VALUES (1,1,'{\"signed\":{\"_type\":\"root\",\"spec_version\":\"1.0\",\"version\":5,\"expires\":\"2025-12-17T11:13:09Z\",\"keys\":{\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"9b2af2d9b9727227735253d795bd27ea8f0e294a5f3603e822dc5052b44802b9\"}},\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a18e5ebabc19d5d5984b601a292ece61ba3662ab2d071dc520da5bd4f8948799\"}},\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"cb0a7a131961a20edea051d6dc2b091fb650bd399bd8514adb67b3c60db9f8f9\"}},\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"589d029a68b470deff1ca16dbf3eea6b5b3fcba0ae7bb52c468abc7fb058b2a2\"}},\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6043c8bacc76ac5c9750f45454dd865c6ca1fc57d69e14cc192cfd420f6a66a9\"}},\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6eb44460e5914e8e0df726ddb90bd1f3771b8ce5af19b40fb01ac5a85b023a6f\"}},\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ad1950e117b29ebe7a38635a2e574123e07571e4f9a011783e053b5f15d2562a\"}},\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"5d451915bc2b93a0e4e4745bc6a8b292d58996d50e0fb66c78c7827152a65879\"}}},\"roles\":{\"root\":{\"keyids\":[\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\"],\"threshold\":1},\"snapshot\":{\"keyids\":[\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\"],\"threshold\":1},\"targets\":{\"keyids\":[\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\"],\"threshold\":1},\"timestamp\":{\"keyids\":[\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\"],\"threshold\":1}},\"consistent_snapshot\":true},\"signatures\":[{\"keyid\":\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"sig\":\"b41106e5cd55b1e47ae5bcbe4eb99f57a1cd785b8186f796803ec15682ae55b0f09382238e0db5a940f9622e85afc1acf05616a5166618be12ffbf0514159f01\"}]}','{\"signed\":{\"_type\":\"targets\",\"spec_version\":\"1.0\",\"version\":30,\"expires\":\"2025-02-26T18:11:06Z\",\"targets\":{\"Joomla_5.1.2-Stable-Upgrade_Package.zip\":{\"length\":28134889,\"hashes\":{\"sha512\":\"d6b46cdedb9b31d01a607fe4c2f3a830a3265ed6ae5c0cb7b0f836b1b016ee7c639bd8948df00baf1b61a87f2fc71368a80b39e67ef9ec2b8842ee0ab09a620f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html\",\"title\":\"Joomla! 5.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.2\"}},\"Joomla_5.1.4-Stable-Update_Package.zip\":{\"length\":28289998,\"hashes\":{\"sha512\":\"97c556bddd77604d89106077e09e43845927e0507179bfca7646aadddaf69246079d71e83ceb33b714f4437d836deac8d3ec12fc103024524e2ae1ae41885104\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.4 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-4/Joomla_5.1.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.4/Joomla_5.1.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.4/Joomla_5.1.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5911-joomla-5-1-4-and-joomla-4-4-8-are-here.html\",\"title\":\"Joomla! 5.1.4 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.4\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.4\"}},\"Joomla_5.2.0-Stable-Update_Package.zip\":{\"length\":28151103,\"hashes\":{\"sha512\":\"f6d0bdeb9362d18fd570a0ec06e24eebbc8bf88db74d7abd3995f939b2af91edd95e8fa31fbab325877b3d0eae49e3fe3e592a0d3d3ee7942570f3c05b97f75f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.0 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-2-0/Joomla_5.2.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.0/Joomla_5.2.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.2.0/Joomla_5.2.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5916-joomla-5-2-0-and-joomla-4-4-9-are-here.html\",\"title\":\"Joomla! 5.2.0 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.0\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.0\"}},\"Joomla_5.2.0-beta3-Beta-Update_Package.zip\":{\"length\":28143116,\"hashes\":{\"sha512\":\"7fd986f6aa2ea6f17944322fb5ee030919d4753d322aec1efc3fc72cb402179973f10bd011aeb55137aa07c564f2b8f2b65e9876194790d53a7912bf44828c92\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.0-beta3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.0-beta3/Joomla_5.2.0-beta3-Beta-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/950-joomla-5-2-0-beta-3.html\",\"title\":\"Joomla! 5.2.0-beta3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.0-beta3\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Beta\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.0-beta3\"}},\"Joomla_5.2.0-rc1-Release_Candidate-Update_Package.zip\":{\"length\":28144127,\"hashes\":{\"sha512\":\"b757bbe2d941df05786ec2d8382c429b75d98b9efb6174c2d4981c12d8ffdd88e99607c67586bdb720fb1f889b611d87dd908db18cc18fb2305db9a520510d7e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.0-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.0-rc1/Joomla_5.2.0-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5912-joomla-5-2-0-release-candidate.html\",\"title\":\"Joomla! 5.2.0-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.0-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.0-rc1\"}},\"Joomla_5.2.0-rc2-Release_Candidate-Update_Package.zip\":{\"length\":28144148,\"hashes\":{\"sha512\":\"e82886e3f24a67180e369ed04b1d1b098052f8c7f226169dd4b32bdcc78f9a5533ab01765837ab465c55b7be3561e488bec31126dbf2338ff628ed71c78f310b\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.0-rc2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.0-rc2/Joomla_5.2.0-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5913-joomla-5-2-0-release-candidate-2.html\",\"title\":\"Joomla! 5.2.0-rc2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.0-rc2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.0-rc2\"}},\"Joomla_5.2.1-Stable-Update_Package.zip\":{\"length\":28183353,\"hashes\":{\"sha512\":\"9e846affcbf04a4d1c60d6cb54182e6800defb56aa90c8c5664be317ee4fc2fffe6b9986c875403fe54a488427969861b0c4ed2c839abd1c3f1a91a91131abae\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.1 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-2-1/Joomla_5.2.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.1/Joomla_5.2.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.2.1/Joomla_5.2.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5917-joomla-5-2-1-security-release.html\",\"title\":\"Joomla! 5.2.1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.1\"}},\"Joomla_5.2.2-Stable-Update_Package.zip\":{\"length\":28252628,\"hashes\":{\"sha512\":\"563001cf71b91ee028f439608f39eb4255a112a505bf81ce94a835ffabddb1f74c45f57cd555fd3769cb5660e6cc293642ff0e66ce8b8cdffaeaf0d65caa7223\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-2-2/Joomla_5.2.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.2/Joomla_5.2.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.2.2/Joomla_5.2.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5918-joomla-5-2-2-security-bugfix-release.html\",\"title\":\"Joomla! 5.2.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.2\"}},\"Joomla_5.3.0-alpha1-Alpha-Update_Package.zip\":{\"length\":28263180,\"hashes\":{\"sha512\":\"0a75a8093eacad4a0da56450111ee780e1969587930557c3f0a6306208874d7b6aa3960a229f5ea61a9abcc04e9f45f1890eefb4c8fe432a7bb8d7fe197d72ec\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.3.0-alpha1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.3.0-alpha1/Joomla_5.3.0-alpha1-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.3.0-alpha1\",\"title\":\"Joomla! 5.3.0-alpha1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.3.0-alpha1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.3.0-alpha1\"}}}},\"signatures\":[{\"keyid\":\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"sig\":\"83f91fbcca6c1e430eb9753bf8bb1f5af6c3fc4e1d4484f34594f629fad2273a1ffe04a092e560c6c484babd91dfc73bc4231a9da8641dfd2e2963b6eb356d0c\"}]}','{\"signed\":{\"_type\":\"snapshot\",\"spec_version\":\"1.0\",\"version\":34,\"expires\":\"2025-06-24T18:36:34Z\",\"meta\":{\"targets.json\":{\"length\":10170,\"hashes\":{\"sha512\":\"1fa41f7903b4f06798e65dfab0ce744c0d5792db13fee9443c0aae3c84685261b4ef2427e03508a84dffa67a27d185b679f8df6c7087c2d939e370afc4d47a42\"},\"version\":30}}},\"signatures\":[{\"keyid\":\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"sig\":\"9c7b14cea5e58edec63285011762e6cf7ca94b672e9517d71e1b7ffe15fd0ef4d8bc370676388e01ee3faf06ea4cc9cea77fcac01f9cf593d845424c260dd409\"}]}','{\"signed\":{\"_type\":\"timestamp\",\"spec_version\":\"1.0\",\"version\":378,\"expires\":\"2024-12-05T01:14:07Z\",\"meta\":{\"snapshot.json\":{\"length\":532,\"hashes\":{\"sha512\":\"c9d7ec0898bed1b5e761076f8b9e303af51c8733c93e8eb98ad8fcce3ea94a1ffc3a4ee67eff641b0d7ee06d608a3bd192da843ecb74ed2f850139491c70964d\"},\"version\":34}}},\"signatures\":[{\"keyid\":\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\",\"sig\":\"114a4c1ab1cff5f3b4e3e29e5b3722ba5ab16e0418eadec2414a5072f71799b1e1af2c07aac5b323909cfacae4d50645645095c54213775760850f5d54437209\"}]}',NULL);
/*!40000 ALTER TABLE `tc5xu_tuf_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_ucm_base`
--

DROP TABLE IF EXISTS `tc5xu_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_ucm_base` (
  `ucm_id` int unsigned NOT NULL,
  `ucm_item_id` int NOT NULL,
  `ucm_type_id` int NOT NULL,
  `ucm_language_id` int NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_ucm_base`
--

LOCK TABLES `tc5xu_ucm_base` WRITE;
/*!40000 ALTER TABLE `tc5xu_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_ucm_content`
--

DROP TABLE IF EXISTS `tc5xu_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_ucm_content` (
  `core_content_id` int unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci,
  `core_state` tinyint NOT NULL DEFAULT '0',
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int unsigned DEFAULT NULL,
  `core_access` int unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci,
  `core_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci,
  `core_urls` text COLLATE utf8mb4_unicode_ci,
  `core_hits` int unsigned NOT NULL DEFAULT '0',
  `core_version` int unsigned NOT NULL DEFAULT '1',
  `core_ordering` int NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci,
  `core_catid` int unsigned NOT NULL DEFAULT '0',
  `core_type_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_ucm_content`
--

LOCK TABLES `tc5xu_ucm_content` WRITE;
/*!40000 ALTER TABLE `tc5xu_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_update_sites`
--

DROP TABLE IF EXISTS `tc5xu_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_update_sites` (
  `update_site_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int DEFAULT '0',
  `last_check_timestamp` bigint DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_update_sites`
--

LOCK TABLES `tc5xu_update_sites` WRITE;
/*!40000 ALTER TABLE `tc5xu_update_sites` DISABLE KEYS */;
INSERT INTO `tc5xu_update_sites` VALUES (1,'Joomla! Core','tuf','https://update.joomla.org/cms/',1,1733190229,'',NULL,NULL),(2,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_5.xml',1,1733190229,'',NULL,NULL),(3,'Joomla! Update Component','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1733190230,'',NULL,NULL),(4,'MOD_PHOCATOPMENU','extension','https://raw.githubusercontent.com/PhocaCz/PhocaTopMenuModule/master/manifest.xml',1,1733190230,'',NULL,NULL),(5,'PLG_SYSTEM_PHOCADESKTOP','extension','https://raw.githubusercontent.com/PhocaCz/PhocaDesktopSystemPlugin/master/manifest.xml',1,1733190231,'',NULL,NULL),(6,'PLG_SYSTEM_PHOCAFILTEROPTIONS','extension','https://raw.githubusercontent.com/PhocaCz/PhocaFilterOptions/master/manifest.xml',1,1733190231,'',NULL,NULL),(7,'COM_PHOCACOMMANDER','extension','https://raw.githubusercontent.com/PhocaCz/PhocaCommander/master/manifest.xml',1,1733190231,'',NULL,NULL),(8,'COM_PHOCACART','extension','https://raw.githubusercontent.com/PhocaCz/PhocaCart/master/manifest.xml',1,1733190232,'',NULL,NULL),(9,'MOD_PHOCACART_BRANDS','extension','https://raw.githubusercontent.com/PhocaCz/PhocaCartBrandsModule/master/manifest.xml',1,1733190233,'',NULL,NULL),(10,'MOD_PHOCACART_CART','extension','https://raw.githubusercontent.com/PhocaCz/PhocaCartCartModule/master/manifest.xml',1,1733190233,'',NULL,NULL),(11,'MOD_PHOCACART_CATEGORY','extension','https://raw.githubusercontent.com/PhocaCz/PhocaCartCategoryModule/master/manifest.xml',1,1733190234,'',NULL,NULL),(12,'MOD_PHOCACART_COMPARE','extension','https://raw.githubusercontent.com/PhocaCz/PhocaCartCompareModule/master/manifest.xml',1,1733190234,'',NULL,NULL),(13,'MOD_PHOCACART_CURRENCY','extension','https://raw.githubusercontent.com/PhocaCz/PhocaCartCurrencyModule/master/manifest.xml',1,1733190235,'',NULL,NULL),(14,'MOD_PHOCACART_FILTER','extension','https://raw.githubusercontent.com/PhocaCz/PhocaCartFilterModule/master/manifest.xml',1,1733190236,'',NULL,NULL),(15,'MOD_PHOCACART_PRODUCT_SCROLLER','extension','https://raw.githubusercontent.com/PhocaCz/PhocaCartProductScrollerModule/master/manifest.xml',1,1733190236,'',NULL,NULL),(16,'MOD_PHOCACART_PRODUCT','extension','https://raw.githubusercontent.com/PhocaCz/PhocaCartProductModule/master/manifest.xml',1,1733190237,'',NULL,NULL),(17,'MOD_PHOCACART_SEARCH','extension','https://raw.githubusercontent.com/PhocaCz/PhocaCartSearchModule/master/manifest.xml',1,1733190238,'',NULL,NULL),(18,'MOD_PHOCACART_WISHLIST','extension','https://raw.githubusercontent.com/PhocaCz/PhocaCartWishListModule/master/manifest.xml',1,1733190238,'',NULL,NULL),(19,'MOD_PHOCAPARTICLES','extension','https://raw.githubusercontent.com/PhocaCz/PhocaParticlesModule/main/manifest.xml',1,1733190239,'',NULL,NULL);
/*!40000 ALTER TABLE `tc5xu_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_update_sites_extensions`
--

DROP TABLE IF EXISTS `tc5xu_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_update_sites_extensions` (
  `update_site_id` int NOT NULL DEFAULT '0',
  `extension_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_update_sites_extensions`
--

LOCK TABLES `tc5xu_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `tc5xu_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `tc5xu_update_sites_extensions` VALUES (1,239),(2,240),(3,24),(4,244),(5,245),(6,246),(7,247),(8,248),(9,250),(10,251),(11,252),(12,253),(13,254),(14,255),(15,256),(16,257),(17,258),(18,259),(19,262);
/*!40000 ALTER TABLE `tc5xu_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_updates`
--

DROP TABLE IF EXISTS `tc5xu_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_updates` (
  `update_id` int NOT NULL AUTO_INCREMENT,
  `update_site_id` int DEFAULT '0',
  `extension_id` int DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text COLLATE utf8mb4_unicode_ci,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_updates`
--

LOCK TABLES `tc5xu_updates` WRITE;
/*!40000 ALTER TABLE `tc5xu_updates` DISABLE KEYS */;
INSERT INTO `tc5xu_updates` VALUES (250,1,239,'Joomla! 5.2.2','Joomla! 5.2.2 Release','joomla','file','',0,'5.2.2','','https://update.joomla.org/cms/','https://www.joomla.org/announcements/release-news/5918-joomla-5-2-2-security-bugfix-release.html',NULL,''),(251,2,0,'Afrikaans','','pkg_af-ZA','package','',0,'5.0.2.1','','https://update.joomla.org/language/details5/af-ZA_details.xml','','',''),(252,2,0,'Belarusian','','pkg_be-BY','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/be-BY_details.xml','','',''),(253,2,0,'Catalan','','pkg_ca-ES','package','',0,'5.2.2.2','','https://update.joomla.org/language/details5/ca-ES_details.xml','','',''),(254,2,0,'Chinese, Simplified','','pkg_zh-CN','package','',0,'5.1.2.1','','https://update.joomla.org/language/details5/zh-CN_details.xml','','',''),(255,2,0,'Chinese, Traditional','','pkg_zh-TW','package','',0,'5.0.3.1','','https://update.joomla.org/language/details5/zh-TW_details.xml','','',''),(256,2,0,'Croatian','','pkg_hr-HR','package','',0,'5.2.1.1','','https://update.joomla.org/language/details5/hr-HR_details.xml','','',''),(257,2,0,'Czech','','pkg_cs-CZ','package','',0,'5.2.0.1','','https://update.joomla.org/language/details5/cs-CZ_details.xml','','',''),(258,2,0,'Danish','','pkg_da-DK','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/da-DK_details.xml','','',''),(259,2,0,'Dutch','','pkg_nl-NL','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/nl-NL_details.xml','','',''),(260,2,0,'English, Australia','','pkg_en-AU','package','',0,'5.0.3.1','','https://update.joomla.org/language/details5/en-AU_details.xml','','',''),(261,2,0,'English, Canada','','pkg_en-CA','package','',0,'5.0.3.1','','https://update.joomla.org/language/details5/en-CA_details.xml','','',''),(262,2,0,'English, New Zealand','','pkg_en-NZ','package','',0,'5.0.3.2','','https://update.joomla.org/language/details5/en-NZ_details.xml','','',''),(263,2,0,'English, USA','','pkg_en-US','package','',0,'5.0.3.1','','https://update.joomla.org/language/details5/en-US_details.xml','','',''),(264,2,0,'Estonian','','pkg_et-EE','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/et-EE_details.xml','','',''),(265,2,0,'Finnish','','pkg_fi-FI','package','',0,'5.2.1.1','','https://update.joomla.org/language/details5/fi-FI_details.xml','','',''),(266,2,0,'Flemish','','pkg_nl-BE','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/nl-BE_details.xml','','',''),(267,2,0,'French','','pkg_fr-FR','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/fr-FR_details.xml','','',''),(268,2,0,'French, Canada','','pkg_fr-CA','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/fr-CA_details.xml','','',''),(269,2,0,'Georgian','','pkg_ka-GE','package','',0,'5.2.1.1','','https://update.joomla.org/language/details5/ka-GE_details.xml','','',''),(270,2,0,'German','','pkg_de-DE','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/de-DE_details.xml','','',''),(271,2,0,'German, Austria','','pkg_de-AT','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/de-AT_details.xml','','',''),(272,2,0,'German, Liechtenstein','','pkg_de-LI','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/de-LI_details.xml','','',''),(273,2,0,'German, Luxembourg','','pkg_de-LU','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/de-LU_details.xml','','',''),(274,2,0,'German, Switzerland','','pkg_de-CH','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/de-CH_details.xml','','',''),(275,2,0,'Greek','','pkg_el-GR','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/el-GR_details.xml','','',''),(276,2,0,'Hungarian','','pkg_hu-HU','package','',0,'5.2.0.1','','https://update.joomla.org/language/details5/hu-HU_details.xml','','',''),(277,2,0,'Italian','','pkg_it-IT','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/it-IT_details.xml','','',''),(278,2,0,'Japanese','','pkg_ja-JP','package','',0,'5.2.1.1','','https://update.joomla.org/language/details5/ja-JP_details.xml','','',''),(279,2,0,'Kazakh','','pkg_kk-KZ','package','',0,'5.0.0.4','','https://update.joomla.org/language/details5/kk-KZ_details.xml','','',''),(280,2,0,'Korean','','pkg_ko-KR','package','',0,'5.0.2.1','','https://update.joomla.org/language/details5/ko-KR_details.xml','','',''),(281,2,0,'Latvian','','pkg_lv-LV','package','',0,'5.2.2.2','','https://update.joomla.org/language/details5/lv-LV_details.xml','','',''),(282,2,0,'Pashto Afghanistan','','pkg_ps-AF','package','',0,'5.0.1.1','','https://update.joomla.org/language/details5/ps-AF_details.xml','','',''),(283,2,0,'Persian Farsi','','pkg_fa-IR','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/fa-IR_details.xml','','',''),(284,2,0,'Polish','','pkg_pl-PL','package','',0,'5.1.2.1','','https://update.joomla.org/language/details5/pl-PL_details.xml','','',''),(285,2,0,'Portuguese, Brazil','','pkg_pt-BR','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/pt-BR_details.xml','','',''),(286,2,0,'Portuguese, Portugal','','pkg_pt-PT','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/pt-PT_details.xml','','',''),(287,2,0,'Romanian','','pkg_ro-RO','package','',0,'5.2.0.2','','https://update.joomla.org/language/details5/ro-RO_details.xml','','',''),(288,2,0,'Russian','','pkg_ru-RU','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/ru-RU_details.xml','','',''),(289,2,0,'Serbian, Cyrillic','','pkg_sr-RS','package','',0,'5.2.1.1','','https://update.joomla.org/language/details5/sr-RS_details.xml','','',''),(290,2,0,'Serbian, Latin','','pkg_sr-YU','package','',0,'5.1.2.1','','https://update.joomla.org/language/details5/sr-YU_details.xml','','',''),(291,2,0,'Slovak','','pkg_sk-SK','package','',0,'5.2.1.1','','https://update.joomla.org/language/details5/sk-SK_details.xml','','',''),(292,2,0,'Slovenian','','pkg_sl-SI','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/sl-SI_details.xml','','',''),(293,2,0,'Spanish','','pkg_es-ES','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/es-ES_details.xml','','',''),(294,2,0,'Swedish','','pkg_sv-SE','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/sv-SE_details.xml','','',''),(295,2,0,'Tamil, India','','pkg_ta-IN','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/ta-IN_details.xml','','',''),(296,2,0,'Thai','','pkg_th-TH','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/th-TH_details.xml','','',''),(297,2,0,'Turkish','','pkg_tr-TR','package','',0,'5.2.2.1','','https://update.joomla.org/language/details5/tr-TR_details.xml','','',''),(298,2,0,'Ukrainian','','pkg_uk-UA','package','',0,'5.1.3.1','','https://update.joomla.org/language/details5/uk-UA_details.xml','','',''),(299,2,0,'Urdu, Pakistan','','pkg_ur-PK','package','',0,'5.1.2.1','','https://update.joomla.org/language/details5/ur-PK_details.xml','','',''),(300,2,0,'Welsh','','pkg_cy-GB','package','',0,'5.1.4.1','','https://update.joomla.org/language/details5/cy-GB_details.xml','','','');
/*!40000 ALTER TABLE `tc5xu_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_user_keys`
--

DROP TABLE IF EXISTS `tc5xu_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_user_keys` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_user_keys`
--

LOCK TABLES `tc5xu_user_keys` WRITE;
/*!40000 ALTER TABLE `tc5xu_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_user_mfa`
--

DROP TABLE IF EXISTS `tc5xu_user_mfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_user_mfa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `tries` int NOT NULL DEFAULT '0',
  `last_try` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Multi-factor Authentication settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_user_mfa`
--

LOCK TABLES `tc5xu_user_mfa` WRITE;
/*!40000 ALTER TABLE `tc5xu_user_mfa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_user_mfa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_user_notes`
--

DROP TABLE IF EXISTS `tc5xu_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_user_notes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_user_notes`
--

LOCK TABLES `tc5xu_user_notes` WRITE;
/*!40000 ALTER TABLE `tc5xu_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_user_profiles`
--

DROP TABLE IF EXISTS `tc5xu_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_user_profiles` (
  `user_id` int NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_user_profiles`
--

LOCK TABLES `tc5xu_user_profiles` WRITE;
/*!40000 ALTER TABLE `tc5xu_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_user_usergroup_map`
--

DROP TABLE IF EXISTS `tc5xu_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_user_usergroup_map` (
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_user_usergroup_map`
--

LOCK TABLES `tc5xu_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `tc5xu_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `tc5xu_user_usergroup_map` VALUES (783,8);
/*!40000 ALTER TABLE `tc5xu_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_usergroups`
--

DROP TABLE IF EXISTS `tc5xu_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_usergroups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_usergroups`
--

LOCK TABLES `tc5xu_usergroups` WRITE;
/*!40000 ALTER TABLE `tc5xu_usergroups` DISABLE KEYS */;
INSERT INTO `tc5xu_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `tc5xu_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_users`
--

DROP TABLE IF EXISTS `tc5xu_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint NOT NULL DEFAULT '0',
  `sendEmail` tinyint DEFAULT '0',
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Backup Codes',
  `requireReset` tinyint NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=784 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_users`
--

LOCK TABLES `tc5xu_users` WRITE;
/*!40000 ALTER TABLE `tc5xu_users` DISABLE KEYS */;
INSERT INTO `tc5xu_users` VALUES (783,'Chetra  Yoem','root','chetra.storeit@gmail.com','$2y$10$Ipb5ORw1vivjclNrE62A.O1DA4qBADs.vRbVN2eKBYLiNI9VoYnaa',0,1,'2024-10-09 05:53:41','2024-12-03 02:26:55','0','',NULL,0,'','',0,'');
/*!40000 ALTER TABLE `tc5xu_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_viewlevels`
--

DROP TABLE IF EXISTS `tc5xu_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_viewlevels` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_viewlevels`
--

LOCK TABLES `tc5xu_viewlevels` WRITE;
/*!40000 ALTER TABLE `tc5xu_viewlevels` DISABLE KEYS */;
INSERT INTO `tc5xu_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',2,'[6,2,8]'),(3,'Special',3,'[6,3,8]'),(5,'Guest',1,'[9]'),(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `tc5xu_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_webauthn_credentials`
--

DROP TABLE IF EXISTS `tc5xu_webauthn_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_webauthn_credentials` (
  `id` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User handle',
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential source data, JSON format',
  PRIMARY KEY (`id`(100)),
  KEY `user_id` (`user_id`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_webauthn_credentials`
--

LOCK TABLES `tc5xu_webauthn_credentials` WRITE;
/*!40000 ALTER TABLE `tc5xu_webauthn_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_webauthn_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_workflow_associations`
--

DROP TABLE IF EXISTS `tc5xu_workflow_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_workflow_associations` (
  `item_id` int NOT NULL DEFAULT '0' COMMENT 'Extension table id value',
  `stage_id` int NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`item_id`,`extension`),
  KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  KEY `idx_item_id` (`item_id`),
  KEY `idx_stage_id` (`stage_id`),
  KEY `idx_extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_workflow_associations`
--

LOCK TABLES `tc5xu_workflow_associations` WRITE;
/*!40000 ALTER TABLE `tc5xu_workflow_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc5xu_workflow_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_workflow_stages`
--

DROP TABLE IF EXISTS `tc5xu_workflow_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_workflow_stages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `workflow_id` int NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_id` (`workflow_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_default` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_workflow_stages`
--

LOCK TABLES `tc5xu_workflow_stages` WRITE;
/*!40000 ALTER TABLE `tc5xu_workflow_stages` DISABLE KEYS */;
INSERT INTO `tc5xu_workflow_stages` VALUES (1,57,1,1,1,'COM_WORKFLOW_BASIC_STAGE','',1,NULL,NULL);
/*!40000 ALTER TABLE `tc5xu_workflow_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_workflow_transitions`
--

DROP TABLE IF EXISTS `tc5xu_workflow_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_workflow_transitions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `workflow_id` int NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_stage_id` int NOT NULL,
  `to_stage_id` int NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_from_stage_id` (`from_stage_id`),
  KEY `idx_to_stage_id` (`to_stage_id`),
  KEY `idx_workflow_id` (`workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_workflow_transitions`
--

LOCK TABLES `tc5xu_workflow_transitions` WRITE;
/*!40000 ALTER TABLE `tc5xu_workflow_transitions` DISABLE KEYS */;
INSERT INTO `tc5xu_workflow_transitions` VALUES (1,58,1,1,1,'UNPUBLISH','',-1,1,'{\"publishing\":\"0\"}',NULL,NULL),(2,59,2,1,1,'PUBLISH','',-1,1,'{\"publishing\":\"1\"}',NULL,NULL),(3,60,3,1,1,'TRASH','',-1,1,'{\"publishing\":\"-2\"}',NULL,NULL),(4,61,4,1,1,'ARCHIVE','',-1,1,'{\"publishing\":\"2\"}',NULL,NULL),(5,62,5,1,1,'FEATURE','',-1,1,'{\"featuring\":\"1\"}',NULL,NULL),(6,63,6,1,1,'UNFEATURE','',-1,1,'{\"featuring\":\"0\"}',NULL,NULL),(7,64,7,1,1,'PUBLISH_AND_FEATURE','',-1,1,'{\"publishing\":\"1\",\"featuring\":\"1\"}',NULL,NULL);
/*!40000 ALTER TABLE `tc5xu_workflow_transitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc5xu_workflows`
--

DROP TABLE IF EXISTS `tc5xu_workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc5xu_workflows` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT '0',
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_extension` (`extension`),
  KEY `idx_default` (`default`),
  KEY `idx_created` (`created`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_modified` (`modified`),
  KEY `idx_modified_by` (`modified_by`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc5xu_workflows`
--

LOCK TABLES `tc5xu_workflows` WRITE;
/*!40000 ALTER TABLE `tc5xu_workflows` DISABLE KEYS */;
INSERT INTO `tc5xu_workflows` VALUES (1,56,1,'COM_WORKFLOW_BASIC_WORKFLOW','','com_content.article',1,1,'2024-10-09 05:53:38',783,'2024-10-09 05:53:38',783,NULL,NULL);
/*!40000 ALTER TABLE `tc5xu_workflows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-16  0:38:25
