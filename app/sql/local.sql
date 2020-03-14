-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-03-10 14:33:53','2020-03-10 14:33:53','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=726 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://biojonas.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://biojonas.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','bio_jonas','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','ztreg-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','closed','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','H:i','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:104:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"movie/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"movie/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"movie/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"movie/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"movie/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"movie/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"movie/([^/]+)/embed/?$\";s:38:\"index.php?movie=$matches[1]&embed=true\";s:26:\"movie/([^/]+)/trackback/?$\";s:32:\"index.php?movie=$matches[1]&tb=1\";s:34:\"movie/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?movie=$matches[1]&paged=$matches[2]\";s:41:\"movie/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?movie=$matches[1]&cpage=$matches[2]\";s:30:\"movie/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?movie=$matches[1]&page=$matches[2]\";s:22:\"movie/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"movie/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"movie/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"movie/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"movie/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"movie/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:6:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:37:\"Jonas-Custom-Box/Jonas-Custom-Box.php\";i:2;s:30:\"advanced-custom-fields/acf.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:25:\"kk-star-ratings/index.php\";i:5;s:23:\"wp-smushit/wp-smush.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','understrap','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','understrap-child','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','200','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','200','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','retro','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','200','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','200','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1599402833','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:12:\"left-sidebar\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:5:{i:1584207234;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1584239634;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1584282834;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584282867;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','yvp^,A4j|# ]`~R8yzvl-pCQ/R2_,</Mzu{F$^ :(fQw1dB]VqfoEeSAuXzsxOg-','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','*f.H@(X)6bf@jDTXPyTuK3,$0#U,uxZ<+>UrhmIVpO0=8w^gQn[{.N0aL}2/>|Wt','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (117,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1584197080;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1583851247;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (124,'_site_transient_timeout_browser_eb9c1268a950e6eddb2708071f6b0d52','1584455667','no');
INSERT INTO `wp_options` VALUES (125,'_site_transient_browser_eb9c1268a950e6eddb2708071f6b0d52','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"73.0.3683.86\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (126,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1584455667','no');
INSERT INTO `wp_options` VALUES (127,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (141,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (144,'recently_activated','a:3:{s:29:\"rate-my-post/rate-my-post.php\";i:1583964313;s:33:\"acf-cpt-options-pages/cpt-acf.php\";i:1583920903;s:19:\"akismet/akismet.php\";i:1583850992;}','yes');
INSERT INTO `wp_options` VALUES (150,'widget_akismet_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (156,'cptui_new_install','false','yes');
INSERT INTO `wp_options` VALUES (158,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1584197080;s:7:\"checked\";a:6:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";s:16:\"understrap-child\";s:5:\"0.5.5\";s:10:\"understrap\";s:5:\"0.9.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (159,'current_theme','UnderStrap Child','yes');
INSERT INTO `wp_options` VALUES (160,'theme_mods_understrap','a:7:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1583851729;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:12:\"left-sidebar\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (161,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (165,'theme_mods_understrap-child','a:6:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (168,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}','yes');
INSERT INTO `wp_options` VALUES (174,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (177,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (178,'new_admin_email','ztreg-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (194,'cptui_post_types','a:1:{s:5:\"movie\";a:30:{s:4:\"name\";s:5:\"movie\";s:5:\"label\";s:6:\"Movies\";s:14:\"singular_label\";s:5:\"Movie\";s:11:\"description\";s:25:\"Information about a movie\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:9:\"My Movies\";s:9:\"all_items\";s:10:\"All Movies\";s:7:\"add_new\";s:7:\"Add new\";s:12:\"add_new_item\";s:13:\"Add new Movie\";s:9:\"edit_item\";s:10:\"Edit Movie\";s:8:\"new_item\";s:9:\"New Movie\";s:9:\"view_item\";s:10:\"View Movie\";s:10:\"view_items\";s:11:\"View Movies\";s:12:\"search_items\";s:13:\"Search Movies\";s:9:\"not_found\";s:15:\"No Movies found\";s:18:\"not_found_in_trash\";s:24:\"No Movies found in trash\";s:6:\"parent\";s:13:\"Parent Movie:\";s:14:\"featured_image\";s:29:\"Featured image for this Movie\";s:18:\"set_featured_image\";s:33:\"Set featured image for this Movie\";s:21:\"remove_featured_image\";s:36:\"Remove featured image for this Movie\";s:18:\"use_featured_image\";s:36:\"Use as featured image for this Movie\";s:8:\"archives\";s:14:\"Movie archives\";s:16:\"insert_into_item\";s:17:\"Insert into Movie\";s:21:\"uploaded_to_this_item\";s:20:\"Upload to this Movie\";s:17:\"filter_items_list\";s:18:\"Filter Movies list\";s:21:\"items_list_navigation\";s:22:\"Movies list navigation\";s:10:\"items_list\";s:11:\"Movies list\";s:10:\"attributes\";s:17:\"Movies attributes\";s:14:\"name_admin_bar\";s:5:\"Movie\";s:14:\"item_published\";s:15:\"Movie published\";s:24:\"item_published_privately\";s:26:\"Movie published privately.\";s:22:\"item_reverted_to_draft\";s:24:\"Movie reverted to draft.\";s:14:\"item_scheduled\";s:15:\"Movie scheduled\";s:12:\"item_updated\";s:14:\"Movie updated.\";s:17:\"parent_item_colon\";s:13:\"Parent Movie:\";}s:15:\"custom_supports\";s:0:\"\";}}','yes');
INSERT INTO `wp_options` VALUES (201,'acf_version','5.8.8','yes');
INSERT INTO `wp_options` VALUES (206,'recovery_mode_email_last_sent','1584103042','yes');
INSERT INTO `wp_options` VALUES (230,'rmp_options','a:32:{s:9:\"icon_type\";i:1;s:11:\"widgetAlign\";i:1;s:5:\"posts\";i:1;s:5:\"pages\";i:1;s:10:\"resultPost\";i:1;s:11:\"resultPages\";i:1;s:10:\"rate_email\";i:1;s:10:\"hoverTexts\";i:2;s:17:\"preventAccidental\";i:1;s:13:\"notShowRating\";i:1;s:16:\"ampCompatibility\";i:1;s:13:\"cookieDisable\";i:1;s:18:\"structuredDataType\";s:4:\"none\";s:7:\"exclude\";a:0:{}s:16:\"positiveNegative\";i:2;s:8:\"feedback\";i:1;s:14:\"feedback_email\";i:1;s:6:\"social\";i:1;s:11:\"socialShare\";i:1;s:2:\"fb\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:6:\"flickr\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:9:\"cptRating\";a:0:{}s:9:\"cptResult\";a:0:{}s:12:\"archivePages\";i:1;s:12:\"multiLingual\";i:1;s:8:\"ajaxLoad\";i:1;s:15:\"wipeOnUninstall\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (231,'rmp_customize_strings','a:38:{s:9:\"rateTitle\";s:24:\"How good was this movie?\";s:12:\"rateSubtitle\";s:27:\"Click on a star to rate it!\";s:10:\"rateResult\";s:14:\"Average rating\";s:11:\"rateResult2\";s:11:\"Vote count:\";s:12:\"cookieNotice\";s:49:\"You already voted! This vote will not be counted!\";s:8:\"noRating\";s:49:\"No votes so far! Be the first to rate this movie.\";s:9:\"afterVote\";s:31:\"Thank you for rating this post!\";s:5:\"star1\";s:17:\"Not at all useful\";s:5:\"star2\";s:15:\"Somewhat useful\";s:5:\"star3\";s:6:\"Useful\";s:5:\"star4\";s:13:\"Fairly useful\";s:5:\"star5\";s:11:\"Very useful\";s:16:\"submitButtonText\";s:13:\"Submit Rating\";s:17:\"customResultsText\";s:0:\"\";s:11:\"socialTitle\";s:32:\"As you found this post useful...\";s:14:\"socialSubtitle\";s:26:\"Follow us on social media!\";s:13:\"feedbackTitle\";s:51:\"We are sorry that this post was not useful for you!\";s:16:\"feedbackSubtitle\";s:25:\"Let us improve this post!\";s:12:\"feedbackText\";s:37:\"Tell us how we can improve this post?\";s:14:\"feedbackNotice\";s:25:\"Thanks for your feedback!\";s:14:\"feedbackButton\";s:15:\"Submit Feedback\";s:13:\"feedbackAlert\";s:45:\"Please insert your feedback in the box above!\";s:13:\"titleFontSize\";i:0;s:16:\"subtitleFontSize\";i:0;s:12:\"textFontSize\";i:0;s:17:\"titleMarginBottom\";i:0;s:20:\"subtitleMarginBottom\";i:0;s:11:\"borderWidth\";i:0;s:12:\"borderRadius\";i:0;s:11:\"borderColor\";s:0:\"\";s:15:\"backgroundColor\";s:0:\"\";s:8:\"iconSize\";i:0;s:16:\"iconColorResults\";s:0:\"\";s:14:\"iconColorHover\";s:0:\"\";s:14:\"iconColorRated\";s:0:\"\";s:12:\"iconColorAvg\";s:0:\"\";s:10:\"iconMargin\";i:0;s:14:\"socialFontSize\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (232,'rmp_security','a:8:{s:10:\"privileges\";i:1;s:9:\"recaptcha\";i:1;s:7:\"siteKey\";s:0:\"\";s:9:\"secretKey\";s:0:\"\";s:10:\"votingPriv\";i:1;s:10:\"ipTracking\";i:1;s:12:\"userTracking\";i:1;s:12:\"ipDoubleVote\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (233,'rmp_version','3.1.0','yes');
INSERT INTO `wp_options` VALUES (234,'widget_rate-my-post-top-rated-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (258,'fs_active_plugins','O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:24:\"kk-star-ratings/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.0\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1584188386;s:11:\"plugin_path\";s:25:\"kk-star-ratings/index.php\";}}s:7:\"abspath\";s:47:\"C:\\Users\\Ztreg\\Local Sites\\biojonas\\app\\public/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:25:\"kk-star-ratings/index.php\";s:8:\"sdk_path\";s:24:\"kk-star-ratings/freemius\";s:7:\"version\";s:5:\"2.3.0\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1584188386;}}','yes');
INSERT INTO `wp_options` VALUES (259,'fs_debug_mode','','yes');
INSERT INTO `wp_options` VALUES (260,'fs_accounts','a:12:{s:21:\"id_slug_type_path_map\";a:1:{i:3890;a:3:{s:4:\"slug\";s:15:\"kk-star-ratings\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:25:\"kk-star-ratings/index.php\";}}s:11:\"plugin_data\";a:1:{s:15:\"kk-star-ratings\";a:19:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:25:\"kk-star-ratings/index.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1583964315;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.0\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"4.1.3\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"biojonas.local\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1583964315;s:7:\"version\";s:5:\"4.1.3\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:14:\"has_trial_plan\";b:0;s:22:\"install_sync_timestamp\";i:1583964419;s:19:\"keepalive_timestamp\";i:1583964419;s:20:\"activation_timestamp\";i:1583964412;}}s:13:\"file_slug_map\";a:1:{s:25:\"kk-star-ratings/index.php\";s:15:\"kk-star-ratings\";}s:7:\"plugins\";a:1:{s:15:\"kk-star-ratings\";O:9:\"FS_Plugin\":22:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:15:\"kk Star Ratings\";s:4:\"slug\";s:15:\"kk-star-ratings\";s:12:\"premium_slug\";s:23:\"kk-star-ratings-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:25:\"kk-star-ratings/index.php\";s:7:\"version\";s:5:\"4.1.3\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:10:\"public_key\";s:32:\"pk_e6d3c068ac8b44274990af9fc9eeb\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"3890\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"e463548a027691b862005bc7a6af3569\";s:5:\"plans\";a:1:{s:15:\"kk-star-ratings\";a:1:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"Mzg5MA==\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:8:\"RnJlZQ==\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"NjI2Nw==\";s:7:\"updated\";s:28:\"MjAxOS0wNy0xNiAyMzozNDoyOQ==\";s:7:\"created\";s:28:\"MjAxOS0wNi0wMiAxNTo0Mzo1MA==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:14:\"active_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1583964419;s:3:\"md5\";s:32:\"f298090636c0e4da3a65ecc7f0d03877\";s:7:\"plugins\";a:5:{s:30:\"advanced-custom-fields/acf.php\";a:5:{s:4:\"slug\";s:22:\"advanced-custom-fields\";s:7:\"version\";s:5:\"5.8.8\";s:5:\"title\";s:22:\"Advanced Custom Fields\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";a:5:{s:4:\"slug\";s:19:\"custom-post-type-ui\";s:7:\"version\";s:5:\"1.7.3\";s:5:\"title\";s:19:\"Custom Post Type UI\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:37:\"Jonas-Custom-Box/Jonas-Custom-Box.php\";a:5:{s:4:\"slug\";s:16:\"Jonas-Custom-Box\";s:7:\"version\";s:3:\"1.0\";s:5:\"title\";s:16:\"Jonas Custom Box\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:25:\"kk-star-ratings/index.php\";a:5:{s:4:\"slug\";s:15:\"kk-star-ratings\";s:7:\"version\";s:5:\"4.1.3\";s:5:\"title\";s:15:\"kk Star Ratings\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:31:\"query-monitor/query-monitor.php\";a:5:{s:4:\"slug\";s:13:\"query-monitor\";s:7:\"version\";s:5:\"3.5.2\";s:5:\"title\";s:13:\"Query Monitor\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:11:\"all_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1583964419;s:3:\"md5\";s:32:\"3a5187503e85fe1ec62ab89b4c566325\";s:7:\"plugins\";a:9:{s:30:\"advanced-custom-fields/acf.php\";a:5:{s:4:\"slug\";s:22:\"advanced-custom-fields\";s:7:\"version\";s:5:\"5.8.8\";s:5:\"title\";s:22:\"Advanced Custom Fields\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:33:\"acf-cpt-options-pages/cpt-acf.php\";a:5:{s:4:\"slug\";s:21:\"acf-cpt-options-pages\";s:7:\"version\";s:5:\"2.0.5\";s:5:\"title\";s:42:\"Advanced Custom Fields : CPT Options Pages\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:19:\"akismet/akismet.php\";a:5:{s:4:\"slug\";s:7:\"akismet\";s:7:\"version\";s:5:\"4.1.3\";s:5:\"title\";s:17:\"Akismet Anti-Spam\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:25:\"cinema-api/cinema-api.php\";a:5:{s:4:\"slug\";s:10:\"cinema-api\";s:7:\"version\";s:5:\"1.0.0\";s:5:\"title\";s:16:\"Cinema-movie-api\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";a:5:{s:4:\"slug\";s:19:\"custom-post-type-ui\";s:7:\"version\";s:5:\"1.7.3\";s:5:\"title\";s:19:\"Custom Post Type UI\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:37:\"Jonas-Custom-Box/Jonas-Custom-Box.php\";a:5:{s:4:\"slug\";s:16:\"Jonas-Custom-Box\";s:7:\"version\";s:3:\"1.0\";s:5:\"title\";s:16:\"Jonas Custom Box\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:25:\"kk-star-ratings/index.php\";a:5:{s:4:\"slug\";s:15:\"kk-star-ratings\";s:7:\"version\";s:5:\"4.1.3\";s:5:\"title\";s:15:\"kk Star Ratings\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:31:\"query-monitor/query-monitor.php\";a:5:{s:4:\"slug\";s:13:\"query-monitor\";s:7:\"version\";s:5:\"3.5.2\";s:5:\"title\";s:13:\"Query Monitor\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:29:\"rate-my-post/rate-my-post.php\";a:5:{s:4:\"slug\";s:12:\"rate-my-post\";s:7:\"version\";s:5:\"3.1.0\";s:5:\"title\";s:31:\"Rate my Post - WP Rating System\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:10:\"all_themes\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1583964419;s:3:\"md5\";s:32:\"6a1bd43378e92f5d1c2ebe7f927b79d4\";s:6:\"themes\";a:6:{s:14:\"twentynineteen\";a:5:{s:4:\"slug\";s:14:\"twentynineteen\";s:7:\"version\";s:3:\"1.4\";s:5:\"title\";s:15:\"Twenty Nineteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:15:\"twentyseventeen\";a:5:{s:4:\"slug\";s:15:\"twentyseventeen\";s:7:\"version\";s:3:\"2.2\";s:5:\"title\";s:16:\"Twenty Seventeen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:13:\"twentysixteen\";a:5:{s:4:\"slug\";s:13:\"twentysixteen\";s:7:\"version\";s:3:\"2.0\";s:5:\"title\";s:14:\"Twenty Sixteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:12:\"twentytwenty\";a:5:{s:4:\"slug\";s:12:\"twentytwenty\";s:7:\"version\";s:3:\"1.1\";s:5:\"title\";s:13:\"Twenty Twenty\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:10:\"understrap\";a:5:{s:4:\"slug\";s:10:\"understrap\";s:7:\"version\";s:5:\"0.9.4\";s:5:\"title\";s:10:\"UnderStrap\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:16:\"understrap-child\";a:5:{s:4:\"slug\";s:16:\"understrap-child\";s:7:\"version\";s:5:\"0.5.5\";s:5:\"title\";s:22:\"Jonas UnderStrap Child\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:5:\"sites\";a:1:{s:15:\"kk-star-ratings\";O:7:\"FS_Site\":25:{s:7:\"site_id\";s:8:\"18019114\";s:9:\"plugin_id\";s:4:\"3890\";s:7:\"user_id\";s:7:\"2776396\";s:5:\"title\";s:9:\"bio_jonas\";s:3:\"url\";s:21:\"http://biojonas.local\";s:7:\"version\";s:5:\"4.1.3\";s:8:\"language\";s:5:\"en-US\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"5.3.2\";s:11:\"sdk_version\";s:5:\"2.3.0\";s:28:\"programming_language_version\";s:5:\"7.3.5\";s:7:\"plan_id\";s:4:\"6267\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:1;s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;s:10:\"public_key\";s:32:\"pk_ba90b42864269e6a9a318df8bd597\";s:10:\"secret_key\";s:32:\"sk_0QKe@@7I0EmXzgL5CKc923@y$[WfR\";s:2:\"id\";s:7:\"4110327\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2020-03-11 22:06:53\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:5:\"users\";a:1:{i:2776396;O:7:\"FS_User\":13:{s:5:\"email\";s:26:\"ztreg-email@flywheel.local\";s:5:\"first\";s:5:\"ztreg\";s:4:\"last\";s:0:\"\";s:11:\"is_verified\";b:0;s:7:\"is_beta\";N;s:11:\"customer_id\";N;s:5:\"gross\";i:0;s:10:\"public_key\";s:32:\"pk_000eb7121d5d203c0f4fe4389eee0\";s:10:\"secret_key\";s:32:\"sk_M7e=@+Rw~J}xA=^oVnp0@le^JN1wq\";s:2:\"id\";s:7:\"2776396\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2020-03-11 22:06:52\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:7:\"updates\";a:1:{i:3890;N;}}','yes');
INSERT INTO `wp_options` VALUES (261,'fs_api_cache','a:5:{s:26:\"get:/v1/users/2776396.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":16:{s:15:\"default_card_id\";N;s:5:\"gross\";i:0;s:6:\"source\";i:0;s:13:\"last_login_at\";N;s:5:\"email\";s:26:\"ztreg-email@flywheel.local\";s:5:\"first\";s:5:\"ztreg\";s:4:\"last\";s:0:\"\";s:7:\"picture\";N;s:2:\"ip\";s:14:\"192.71.198.231\";s:11:\"is_verified\";b:0;s:10:\"secret_key\";s:32:\"sk_M7e=@+Rw~J}xA=^oVnp0@le^JN1wq\";s:10:\"public_key\";s:32:\"pk_000eb7121d5d203c0f4fe4389eee0\";s:2:\"id\";s:7:\"2776396\";s:7:\"created\";s:19:\"2020-03-11 22:06:52\";s:7:\"updated\";N;s:11:\"customer_id\";N;}s:7:\"created\";i:1583964412;s:9:\"timestamp\";i:1584050812;}s:29:\"get:/v1/installs/4110327.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":31:{s:7:\"site_id\";s:8:\"18019114\";s:9:\"plugin_id\";s:4:\"3890\";s:7:\"user_id\";s:7:\"2776396\";s:3:\"url\";s:21:\"http://biojonas.local\";s:5:\"title\";s:9:\"bio_jonas\";s:7:\"version\";s:5:\"4.1.3\";s:7:\"plan_id\";s:4:\"6267\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:15:\"subscription_id\";N;s:5:\"gross\";i:0;s:12:\"country_code\";s:2:\"se\";s:8:\"language\";s:5:\"en-US\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"5.3.2\";s:11:\"sdk_version\";s:5:\"2.3.0\";s:28:\"programming_language_version\";s:5:\"7.3.5\";s:9:\"is_active\";b:1;s:15:\"is_disconnected\";b:0;s:10:\"is_premium\";b:0;s:14:\"is_uninstalled\";b:0;s:9:\"is_locked\";b:0;s:6:\"source\";i:0;s:8:\"upgraded\";N;s:12:\"last_seen_at\";s:19:\"2020-03-11 22:06:59\";s:10:\"secret_key\";s:32:\"sk_0QKe@@7I0EmXzgL5CKc923@y$[WfR\";s:10:\"public_key\";s:32:\"pk_ba90b42864269e6a9a318df8bd597\";s:2:\"id\";s:7:\"4110327\";s:7:\"created\";s:19:\"2020-03-11 22:06:53\";s:7:\"updated\";N;}s:7:\"created\";i:1583964412;s:9:\"timestamp\";i:1584050812;}s:45:\"get:/v1/users/2776396/plugins/3890/plans.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:5:\"plans\";a:1:{i:0;O:8:\"stdClass\":22:{s:9:\"plugin_id\";s:4:\"3890\";s:4:\"name\";s:4:\"free\";s:5:\"title\";s:4:\"Free\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:25:\"is_block_features_monthly\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:4:\"6267\";s:7:\"created\";s:19:\"2019-06-02 15:43:50\";s:7:\"updated\";s:19:\"2019-07-16 23:34:29\";}}}s:7:\"created\";i:1583964412;s:9:\"timestamp\";i:1584050812;}s:73:\"get:/v1/installs/4110327/updates/latest.json?is_premium=false&readme=true\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":3:{s:4:\"path\";s:41:\":/installs/install_id/updates/latest.json\";s:5:\"error\";O:8:\"stdClass\":5:{s:4:\"type\";s:0:\"\";s:7:\"message\";s:53:\"Plugin was not yet deployed or still pending release.\";s:4:\"code\";s:19:\"plugin_not_deployed\";s:4:\"http\";i:404;s:9:\"timestamp\";s:31:\"Wed, 11 Mar 2020 22:08:29 +0000\";}s:7:\"request\";O:8:\"stdClass\":4:{s:10:\"is_premium\";s:5:\"false\";s:6:\"readme\";s:4:\"true\";s:11:\"sdk_version\";s:5:\"2.3.0\";s:10:\"install_id\";s:7:\"4110327\";}}s:7:\"created\";i:1583964505;s:9:\"timestamp\";i:1583966305;}s:68:\"get:/v1/users/2776396/plugins/3890/payments.json?include_addons=true\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:8:\"payments\";a:0:{}}s:7:\"created\";i:1583964505;s:9:\"timestamp\";i:1584050905;}}','yes');
INSERT INTO `wp_options` VALUES (262,'fs_gdpr','a:1:{s:2:\"u1\";a:2:{s:8:\"required\";b:0;s:18:\"show_opt_in_notice\";b:0;}}','yes');
INSERT INTO `wp_options` VALUES (265,'kksr_enable','1','yes');
INSERT INTO `wp_options` VALUES (266,'kksr_strategies','a:2:{i:0;s:8:\"archives\";i:1;s:6:\"guests\";}','yes');
INSERT INTO `wp_options` VALUES (267,'kksr_manual_control','a:1:{i:0;s:5:\"movie\";}','yes');
INSERT INTO `wp_options` VALUES (268,'kksr_exclude_locations','a:2:{i:0;s:4:\"home\";i:1;s:8:\"archives\";}','yes');
INSERT INTO `wp_options` VALUES (269,'kksr_exclude_categories','a:1:{i:0;s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (270,'kksr_position','top-left','yes');
INSERT INTO `wp_options` VALUES (271,'kksr_gap','4','yes');
INSERT INTO `wp_options` VALUES (272,'kksr_stars','5','yes');
INSERT INTO `wp_options` VALUES (273,'kksr_size','24','yes');
INSERT INTO `wp_options` VALUES (274,'kksr_greet','Rate this [type]','yes');
INSERT INTO `wp_options` VALUES (275,'kksr_grs','1','yes');
INSERT INTO `wp_options` VALUES (276,'kksr_sd','{\n    \"@context\": \"https://schema.org/\",\n    \"@type\": \"CreativeWorkSeries\",\n    \"name\": \"[title]\",\n    \"aggregateRating\": {\n        \"@type\": \"AggregateRating\",\n        \"ratingValue\": \"[score]\",\n        \"bestRating\": \"[best]\",\n        \"ratingCount\": \"[count]\"\n    }\n}','yes');
INSERT INTO `wp_options` VALUES (277,'kksr_ver','4.1.3','yes');
INSERT INTO `wp_options` VALUES (278,'_site_transient_timeout_locked_1','1899324418','no');
INSERT INTO `wp_options` VALUES (279,'_site_transient_locked_1','1','no');
INSERT INTO `wp_options` VALUES (299,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1584190317;s:7:\"checked\";a:10:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.8\";s:33:\"acf-cpt-options-pages/cpt-acf.php\";s:5:\"2.0.5\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:25:\"cinema-api/cinema-api.php\";s:5:\"1.0.0\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.7.3\";s:37:\"Jonas-Custom-Box/Jonas-Custom-Box.php\";s:3:\"1.0\";s:25:\"kk-star-ratings/index.php\";s:5:\"4.1.3\";s:31:\"query-monitor/query-monitor.php\";s:5:\"3.5.2\";s:29:\"rate-my-post/rate-my-post.php\";s:5:\"3.1.0\";s:23:\"wp-smushit/wp-smush.php\";s:5:\"3.6.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.8\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"acf-cpt-options-pages/cpt-acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/acf-cpt-options-pages\";s:4:\"slug\";s:21:\"acf-cpt-options-pages\";s:6:\"plugin\";s:33:\"acf-cpt-options-pages/cpt-acf.php\";s:11:\"new_version\";s:5:\"2.0.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/acf-cpt-options-pages/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/acf-cpt-options-pages.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/acf-cpt-options-pages/assets/icon-256x256.png?rev=2105355\";s:2:\"1x\";s:74:\"https://ps.w.org/acf-cpt-options-pages/assets/icon-128x128.png?rev=2105355\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/acf-cpt-options-pages/assets/banner-772x250.png?rev=1490128\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.3\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"kk-star-ratings/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/kk-star-ratings\";s:4:\"slug\";s:15:\"kk-star-ratings\";s:6:\"plugin\";s:25:\"kk-star-ratings/index.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/kk-star-ratings/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/kk-star-ratings.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/kk-star-ratings/assets/icon-256x256.jpg?rev=2140680\";s:2:\"1x\";s:68:\"https://ps.w.org/kk-star-ratings/assets/icon-128x128.jpg?rev=2140680\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/kk-star-ratings/assets/banner-1544x500.jpg?rev=2140680\";s:2:\"1x\";s:70:\"https://ps.w.org/kk-star-ratings/assets/banner-772x250.jpg?rev=2140680\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:5:\"3.5.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/query-monitor.3.5.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/query-monitor/assets/icon-256x256.png?rev=2056073\";s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=1629576\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=1731469\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"rate-my-post/rate-my-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/rate-my-post\";s:4:\"slug\";s:12:\"rate-my-post\";s:6:\"plugin\";s:29:\"rate-my-post/rate-my-post.php\";s:11:\"new_version\";s:5:\"3.1.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/rate-my-post/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/rate-my-post.3.1.0.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/rate-my-post/assets/icon-128x128.png?rev=2045796\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/rate-my-post/assets/banner-772x250.png?rev=2045796\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"wp-smushit/wp-smush.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/wp-smushit\";s:4:\"slug\";s:10:\"wp-smushit\";s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:11:\"new_version\";s:5:\"3.6.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/wp-smushit/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-smushit.3.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/wp-smushit/assets/icon-256x256.jpg?rev=2132251\";s:2:\"1x\";s:63:\"https://ps.w.org/wp-smushit/assets/icon-128x128.jpg?rev=2132250\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-smushit/assets/banner-1544x500.png?rev=1863697\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-smushit/assets/banner-772x250.png?rev=1863697\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (300,'wp-smush-settings','a:22:{s:4:\"auto\";b:1;s:5:\"lossy\";b:0;s:10:\"strip_exif\";b:1;s:6:\"resize\";b:1;s:9:\"detection\";b:0;s:8:\"original\";b:0;s:6:\"backup\";b:0;s:10:\"png_to_jpg\";b:0;s:7:\"nextgen\";b:0;s:2:\"s3\";b:0;s:9:\"gutenberg\";b:0;s:10:\"js_builder\";b:0;s:3:\"cdn\";b:0;s:11:\"auto_resize\";b:0;s:4:\"webp\";b:1;s:5:\"usage\";b:0;s:17:\"accessible_colors\";b:0;s:9:\"keep_data\";b:1;s:9:\"lazy_load\";b:1;s:17:\"background_images\";b:1;s:16:\"rest_api_support\";b:0;s:4:\"bulk\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (301,'wp-smush-install-type','existing','no');
INSERT INTO `wp_options` VALUES (302,'wp-smush-version','3.6.1','no');
INSERT INTO `wp_options` VALUES (305,'wdev-frash','a:3:{s:7:\"plugins\";a:1:{s:23:\"wp-smushit/wp-smush.php\";i:1583967847;}s:5:\"queue\";a:2:{s:32:\"7de3619981caadc55f30a002bfb299f6\";a:4:{s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:4:\"type\";s:5:\"email\";s:7:\"show_at\";i:1583967847;s:6:\"sticky\";b:1;}s:32:\"fc50097023d0d34c5a66f6cddcf77694\";a:3:{s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:4:\"type\";s:4:\"rate\";s:7:\"show_at\";i:1584572647;}}s:4:\"done\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (306,'wpmudev_recommended_plugins_registered','a:1:{s:23:\"wp-smushit/wp-smush.php\";a:1:{s:13:\"registered_at\";i:1583967847;}}','no');
INSERT INTO `wp_options` VALUES (310,'smush_global_stats','a:9:{s:11:\"size_before\";i:2457193;s:10:\"size_after\";i:1642531;s:7:\"percent\";d:33.200000000000003;s:5:\"human\";s:8:\"795.6 KB\";s:5:\"bytes\";i:814662;s:12:\"total_images\";i:12;s:12:\"resize_count\";i:1;s:14:\"resize_savings\";i:710082;s:18:\"conversion_savings\";i:0;}','no');
INSERT INTO `wp_options` VALUES (312,'dir_smush_stats','a:2:{s:9:\"dir_smush\";a:2:{s:5:\"total\";i:0;s:9:\"optimised\";i:0;}s:14:\"combined_stats\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (313,'wp-smush-lazy_load','a:7:{s:6:\"format\";a:5:{s:4:\"jpeg\";b:1;s:3:\"png\";b:1;s:3:\"gif\";b:1;s:3:\"svg\";b:1;s:6:\"iframe\";b:1;}s:6:\"output\";a:4:{s:7:\"content\";b:1;s:7:\"widgets\";b:1;s:10:\"thumbnails\";b:1;s:9:\"gravatars\";b:1;}s:9:\"animation\";a:4:{s:8:\"selected\";s:6:\"fadein\";s:6:\"fadein\";a:2:{s:8:\"duration\";i:400;s:5:\"delay\";i:0;}s:7:\"spinner\";a:2:{s:8:\"selected\";i:1;s:6:\"custom\";a:0:{}}s:11:\"placeholder\";a:3:{s:8:\"selected\";i:1;s:6:\"custom\";a:0:{}s:5:\"color\";s:7:\"#F3F3F3\";}}s:7:\"include\";a:7:{s:9:\"frontpage\";b:1;s:4:\"home\";b:1;s:4:\"page\";b:1;s:6:\"single\";b:1;s:7:\"archive\";b:1;s:8:\"category\";b:1;s:3:\"tag\";b:1;}s:13:\"exclude-pages\";a:0:{}s:15:\"exclude-classes\";a:0:{}s:6:\"footer\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (314,'skip-smush-setup','1','yes');
INSERT INTO `wp_options` VALUES (320,'wp-smush-hide_smush_welcome','1','no');
INSERT INTO `wp_options` VALUES (321,'wp-smush-resize_sizes','a:2:{s:5:\"width\";i:500;s:6:\"height\";i:500;}','yes');
INSERT INTO `wp_options` VALUES (624,'_transient_timeout_plugin_slugs','1584276719','no');
INSERT INTO `wp_options` VALUES (625,'_transient_plugin_slugs','a:10:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"acf-cpt-options-pages/cpt-acf.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:25:\"cinema-api/cinema-api.php\";i:4;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:5;s:37:\"Jonas-Custom-Box/Jonas-Custom-Box.php\";i:6;s:25:\"kk-star-ratings/index.php\";i:7;s:31:\"query-monitor/query-monitor.php\";i:8;s:29:\"rate-my-post/rate-my-post.php\";i:9;s:23:\"wp-smushit/wp-smush.php\";}','no');
INSERT INTO `wp_options` VALUES (647,'_site_transient_timeout_theme_roots','1584198880','no');
INSERT INTO `wp_options` VALUES (648,'_site_transient_theme_roots','a:6:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:16:\"understrap-child\";s:7:\"/themes\";s:10:\"understrap\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (650,'_transient_timeout_wp-smush-conflict_check','1584209003','no');
INSERT INTO `wp_options` VALUES (651,'_transient_wp-smush-conflict_check','a:0:{}','no');
INSERT INTO `wp_options` VALUES (725,'_transient_is_multi_author','0','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (4,5,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (5,5,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (6,5,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (7,5,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (8,5,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (9,5,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (10,5,'_menu_item_url','http://biojonas.local/');
INSERT INTO `wp_postmeta` VALUES (12,6,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (13,6,'_menu_item_menu_item_parent','5');
INSERT INTO `wp_postmeta` VALUES (14,6,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (15,6,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (16,6,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (17,6,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (18,6,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (19,6,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (21,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (22,7,'_edit_lock','1583946578:1');
INSERT INTO `wp_postmeta` VALUES (23,10,'_edit_lock','1583965209:1');
INSERT INTO `wp_postmeta` VALUES (24,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (25,10,'actors',' Elijah Wood, Ian McKellen, Orlando Bloom');
INSERT INTO `wp_postmeta` VALUES (26,10,'_actors','field_5e68b75bfd8c9');
INSERT INTO `wp_postmeta` VALUES (27,10,'genre','fantasy');
INSERT INTO `wp_postmeta` VALUES (28,10,'_genre','field_5e68b792fd8ca');
INSERT INTO `wp_postmeta` VALUES (29,1,'_edit_lock','1583921819:1');
INSERT INTO `wp_postmeta` VALUES (30,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (31,1,'_wp_trash_meta_time','1583921964');
INSERT INTO `wp_postmeta` VALUES (32,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (33,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (34,12,'_edit_lock','1583924269:1');
INSERT INTO `wp_postmeta` VALUES (35,13,'_edit_lock','1583923218:1');
INSERT INTO `wp_postmeta` VALUES (36,14,'_edit_lock','1583924834:1');
INSERT INTO `wp_postmeta` VALUES (37,15,'_edit_lock','1583923363:1');
INSERT INTO `wp_postmeta` VALUES (38,16,'_edit_lock','1583924876:1');
INSERT INTO `wp_postmeta` VALUES (41,16,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (49,16,'movie_actors','The Jön');
INSERT INTO `wp_postmeta` VALUES (50,16,'movie_director','The Jön the Second');
INSERT INTO `wp_postmeta` VALUES (51,16,'movie_genres','all out action');
INSERT INTO `wp_postmeta` VALUES (52,16,'movie_budget','100000000000000000000');
INSERT INTO `wp_postmeta` VALUES (53,16,'_pingme','1');
INSERT INTO `wp_postmeta` VALUES (54,16,'_encloseme','1');
INSERT INTO `wp_postmeta` VALUES (55,18,'_edit_lock','1583924766:1');
INSERT INTO `wp_postmeta` VALUES (56,19,'_edit_lock','1583924791:1');
INSERT INTO `wp_postmeta` VALUES (57,20,'_edit_lock','1584200648:1');
INSERT INTO `wp_postmeta` VALUES (58,20,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (59,20,'movie_imdb-id','tt0120737');
INSERT INTO `wp_postmeta` VALUES (60,20,'movie_actors','Alan Howard, Noel Appleby, Sean Astin, Sala Baker');
INSERT INTO `wp_postmeta` VALUES (61,20,'movie_director','Peter Jackson');
INSERT INTO `wp_postmeta` VALUES (62,20,'movie_genres','Adventure, Drama, Fantasy');
INSERT INTO `wp_postmeta` VALUES (63,20,'movie_budget','$314,000,000');
INSERT INTO `wp_postmeta` VALUES (64,20,'actors','To be determined');
INSERT INTO `wp_postmeta` VALUES (65,20,'_actors','field_5e68b75bfd8c9');
INSERT INTO `wp_postmeta` VALUES (66,20,'genre','');
INSERT INTO `wp_postmeta` VALUES (67,20,'_genre','field_5e68b792fd8ca');
INSERT INTO `wp_postmeta` VALUES (68,22,'_wp_attached_file','2020/03/lotr1.jpeg');
INSERT INTO `wp_postmeta` VALUES (69,22,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:421;s:4:\"file\";s:18:\"2020/03/lotr1.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"lotr1-214x300.jpeg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"lotr1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (70,20,'movie-poster','');
INSERT INTO `wp_postmeta` VALUES (71,20,'_movie-poster','field_5e691781070e7');
INSERT INTO `wp_postmeta` VALUES (72,20,'_kksr_casts','8');
INSERT INTO `wp_postmeta` VALUES (73,20,'_kksr_ratings','35');
INSERT INTO `wp_postmeta` VALUES (74,20,'_kksr_avg','4.375');
INSERT INTO `wp_postmeta` VALUES (75,20,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (76,10,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (77,10,'_wp_trash_meta_time','1583965208');
INSERT INTO `wp_postmeta` VALUES (78,10,'_wp_desired_post_slug','the-lord-of-the-rings-the-return-of-the-kind');
INSERT INTO `wp_postmeta` VALUES (79,10,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (80,10,'movie_imdb-id','');
INSERT INTO `wp_postmeta` VALUES (81,10,'movie_actors','');
INSERT INTO `wp_postmeta` VALUES (82,10,'movie_director','');
INSERT INTO `wp_postmeta` VALUES (83,10,'movie_genres','');
INSERT INTO `wp_postmeta` VALUES (84,10,'movie_budget','');
INSERT INTO `wp_postmeta` VALUES (85,10,'movie-poster','');
INSERT INTO `wp_postmeta` VALUES (86,10,'_movie-poster','field_5e691781070e7');
INSERT INTO `wp_postmeta` VALUES (87,23,'_edit_lock','1584205189:1');
INSERT INTO `wp_postmeta` VALUES (88,24,'_wp_attached_file','2020/03/lotr1-1.jpeg');
INSERT INTO `wp_postmeta` VALUES (89,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:421;s:4:\"file\";s:20:\"2020/03/lotr1-1.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"lotr1-1-214x300.jpeg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"lotr1-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (90,25,'_wp_attached_file','2020/03/lotr21.jpg');
INSERT INTO `wp_postmeta` VALUES (91,25,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:415;s:4:\"file\";s:18:\"2020/03/lotr21.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"lotr21-217x300.jpg\";s:5:\"width\";i:217;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"lotr21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (92,23,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (93,23,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (94,23,'movie_imdb-id','tt0167261');
INSERT INTO `wp_postmeta` VALUES (95,23,'movie_actors','Bruce Allpress, Sean Astin, John Bach, Sala Baker');
INSERT INTO `wp_postmeta` VALUES (96,23,'movie_director','Peter Jackson');
INSERT INTO `wp_postmeta` VALUES (97,23,'movie_genres','Adventure, Drama, Fantasy');
INSERT INTO `wp_postmeta` VALUES (98,23,'movie_budget','$339,700,000');
INSERT INTO `wp_postmeta` VALUES (99,23,'movie-poster','');
INSERT INTO `wp_postmeta` VALUES (100,23,'_movie-poster','field_5e691781070e7');
INSERT INTO `wp_postmeta` VALUES (101,20,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (102,20,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (103,20,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (104,20,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (105,23,'_kksr_casts','4');
INSERT INTO `wp_postmeta` VALUES (106,23,'_kksr_ratings','20');
INSERT INTO `wp_postmeta` VALUES (107,23,'_kksr_avg','5');
INSERT INTO `wp_postmeta` VALUES (108,23,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (109,23,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (110,26,'_edit_lock','1584205525:1');
INSERT INTO `wp_postmeta` VALUES (111,27,'_wp_attached_file','2020/03/lotr31.jpg');
INSERT INTO `wp_postmeta` VALUES (112,27,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:333;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2020/03/lotr31.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"lotr31-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"lotr31-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"lotr31-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"lotr31-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"lotr31-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:20:\"lotr31-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (113,26,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (114,26,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (115,26,'movie_imdb-id','tt0167260');
INSERT INTO `wp_postmeta` VALUES (116,26,'movie_actors','Noel Appleby, Ali Astin, Sean Astin, David Aston');
INSERT INTO `wp_postmeta` VALUES (117,26,'movie_director','Peter Jackson');
INSERT INTO `wp_postmeta` VALUES (118,26,'movie_genres','Adventure, Drama, Fantasy');
INSERT INTO `wp_postmeta` VALUES (119,26,'movie_budget','$364,000,000');
INSERT INTO `wp_postmeta` VALUES (120,26,'movie-poster','');
INSERT INTO `wp_postmeta` VALUES (121,26,'_movie-poster','field_5e691781070e7');
INSERT INTO `wp_postmeta` VALUES (122,27,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:6.1346209862713712;s:5:\"bytes\";i:99616;s:11:\"size_before\";i:1623833;s:10:\"size_after\";i:1524217;s:4:\"time\";d:0.54000000000000004;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:6:{s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.5499999999999998;s:5:\"bytes\";i:1247;s:11:\"size_before\";i:19030;s:10:\"size_after\";i:17783;s:4:\"time\";d:0.01;}s:5:\"large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.9900000000000002;s:5:\"bytes\";i:13089;s:11:\"size_before\";i:187370;s:10:\"size_after\";i:174281;s:4:\"time\";d:0.080000000000000002;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.29;s:5:\"bytes\";i:622;s:11:\"size_before\";i:8533;s:10:\"size_after\";i:7911;s:4:\"time\";d:0.02;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.0999999999999996;s:5:\"bytes\";i:16925;s:11:\"size_before\";i:238231;s:10:\"size_after\";i:221306;s:4:\"time\";d:0.070000000000000007;}s:9:\"1536x1536\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.6699999999999999;s:5:\"bytes\";i:28664;s:11:\"size_before\";i:429958;s:10:\"size_after\";i:401294;s:4:\"time\";d:0.12;}s:9:\"2048x2048\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.2699999999999996;s:5:\"bytes\";i:39069;s:11:\"size_before\";i:740711;s:10:\"size_after\";i:701642;s:4:\"time\";d:0.23999999999999999;}}}');
INSERT INTO `wp_postmeta` VALUES (123,25,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:6.3119437210929306;s:5:\"bytes\";i:1624;s:11:\"size_before\";i:25729;s:10:\"size_after\";i:24105;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.9699999999999998;s:5:\"bytes\";i:1084;s:11:\"size_before\";i:18146;s:10:\"size_after\";i:17062;s:4:\"time\";d:0.01;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.1200000000000001;s:5:\"bytes\";i:540;s:11:\"size_before\";i:7583;s:10:\"size_after\";i:7043;s:4:\"time\";d:0.01;}}}');
INSERT INTO `wp_postmeta` VALUES (124,24,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:6.5503039811727799;s:5:\"bytes\";i:1670;s:11:\"size_before\";i:25495;s:10:\"size_after\";i:23825;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.9900000000000002;s:5:\"bytes\";i:1069;s:11:\"size_before\";i:17842;s:10:\"size_after\";i:16773;s:4:\"time\";d:0.01;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.8499999999999996;s:5:\"bytes\";i:601;s:11:\"size_before\";i:7653;s:10:\"size_after\";i:7052;s:4:\"time\";d:0.01;}}}');
INSERT INTO `wp_postmeta` VALUES (125,22,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:6.5503039811727799;s:5:\"bytes\";i:1670;s:11:\"size_before\";i:25495;s:10:\"size_after\";i:23825;s:4:\"time\";d:0.040000000000000001;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.9900000000000002;s:5:\"bytes\";i:1069;s:11:\"size_before\";i:17842;s:10:\"size_after\";i:16773;s:4:\"time\";d:0.01;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.8499999999999996;s:5:\"bytes\";i:601;s:11:\"size_before\";i:7653;s:10:\"size_after\";i:7052;s:4:\"time\";d:0.029999999999999999;}}}');
INSERT INTO `wp_postmeta` VALUES (126,27,'wp-smush-resize_savings','a:3:{s:5:\"bytes\";i:710082;s:11:\"size_before\";i:756641;s:10:\"size_after\";i:46559;}');
INSERT INTO `wp_postmeta` VALUES (127,26,'_kksr_casts','4');
INSERT INTO `wp_postmeta` VALUES (128,26,'_kksr_ratings','20');
INSERT INTO `wp_postmeta` VALUES (129,26,'_kksr_avg','5');
INSERT INTO `wp_postmeta` VALUES (130,26,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (131,26,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (132,28,'_edit_lock','1584197015:1');
INSERT INTO `wp_postmeta` VALUES (133,29,'_wp_attached_file','2020/03/hob11-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (134,29,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:346;s:6:\"height\";i:500;s:4:\"file\";s:24:\"2020/03/hob11-scaled.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"hob11-138x200.jpg\";s:5:\"width\";i:138;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"hob11-138x200.jpg\";s:5:\"width\";i:138;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"hob11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";}s:14:\"original_image\";s:9:\"hob11.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (135,29,'wp-smpro-smush-data','a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.9318309615467797;s:5:\"bytes\";i:909;s:11:\"size_before\";i:23119;s:10:\"size_after\";i:22210;s:4:\"time\";d:0.050000000000000003;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:3:{s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.6600000000000001;s:5:\"bytes\";i:473;s:11:\"size_before\";i:8353;s:10:\"size_after\";i:7880;s:4:\"time\";d:0.01;}s:5:\"large\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:7880;s:10:\"size_after\";i:7880;s:4:\"time\";d:0.01;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.3300000000000001;s:5:\"bytes\";i:436;s:11:\"size_before\";i:6886;s:10:\"size_after\";i:6450;s:4:\"time\";d:0.029999999999999999;}}}');
INSERT INTO `wp_postmeta` VALUES (136,28,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (137,28,'movie_imdb-id','tt0903624');
INSERT INTO `wp_postmeta` VALUES (138,28,'movie_actors','Ian McKellen, Martin Freeman, Richard Armitage, Ken Stott');
INSERT INTO `wp_postmeta` VALUES (139,28,'movie_director','Peter Jackson');
INSERT INTO `wp_postmeta` VALUES (140,28,'movie_genres','Adventure, Family, Fantasy');
INSERT INTO `wp_postmeta` VALUES (141,28,'movie_budget','$303,001,229');
INSERT INTO `wp_postmeta` VALUES (142,28,'movie-poster','');
INSERT INTO `wp_postmeta` VALUES (143,28,'_movie-poster','field_5e691781070e7');
INSERT INTO `wp_postmeta` VALUES (144,28,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (145,28,'_kksr_casts','1');
INSERT INTO `wp_postmeta` VALUES (146,28,'_kksr_ratings','2');
INSERT INTO `wp_postmeta` VALUES (147,28,'_kksr_avg','2');
INSERT INTO `wp_postmeta` VALUES (148,28,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (149,20,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (150,30,'_edit_lock','1584197015:1');
INSERT INTO `wp_postmeta` VALUES (151,26,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (152,26,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (153,23,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (154,23,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (155,20,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (156,20,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (157,30,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (158,30,'movie_imdb-id','tt3896198');
INSERT INTO `wp_postmeta` VALUES (159,30,'movie_actors','Chris Pratt, Zoe Saldana, Dave Bautista, Vin Diesel');
INSERT INTO `wp_postmeta` VALUES (160,30,'movie_director','James Gunn');
INSERT INTO `wp_postmeta` VALUES (161,30,'movie_genres','Action, Adventure, Comedy, Sci-Fi');
INSERT INTO `wp_postmeta` VALUES (162,30,'movie_budget','$389,804,217');
INSERT INTO `wp_postmeta` VALUES (163,30,'movie-poster','');
INSERT INTO `wp_postmeta` VALUES (164,30,'_movie-poster','field_5e691781070e7');
INSERT INTO `wp_postmeta` VALUES (165,30,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (166,32,'movie_imdb-id','');
INSERT INTO `wp_postmeta` VALUES (167,32,'_edit_lock','1584112362:1');
INSERT INTO `wp_postmeta` VALUES (168,33,'movie_imdb-id','');
INSERT INTO `wp_postmeta` VALUES (169,33,'_edit_lock','1584112520:1');
INSERT INTO `wp_postmeta` VALUES (170,34,'movie_imdb-id','');
INSERT INTO `wp_postmeta` VALUES (171,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (172,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (173,34,'_menu_item_object_id','33');
INSERT INTO `wp_postmeta` VALUES (174,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (175,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (176,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (177,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (178,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (179,33,'_wp_page_template','test.php');
INSERT INTO `wp_postmeta` VALUES (180,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (181,33,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (182,36,'movie_imdb-id','tt6751668');
INSERT INTO `wp_postmeta` VALUES (183,36,'movie_actors','Kang-ho Song, Sun-kyun Lee, Yeo-jeong Jo, Woo-sik Choi');
INSERT INTO `wp_postmeta` VALUES (184,36,'movie_director','Bong Joon Ho');
INSERT INTO `wp_postmeta` VALUES (185,36,'movie_genres','Comedy, Drama, Thriller');
INSERT INTO `wp_postmeta` VALUES (186,36,'movie_budget','N/A');
INSERT INTO `wp_postmeta` VALUES (187,36,'_edit_lock','1584190491:1');
INSERT INTO `wp_postmeta` VALUES (188,36,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (189,36,'movie-poster','');
INSERT INTO `wp_postmeta` VALUES (190,36,'_movie-poster','field_5e691781070e7');
INSERT INTO `wp_postmeta` VALUES (191,36,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (192,36,'movie_poster','https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (193,36,'_kksr_casts','1');
INSERT INTO `wp_postmeta` VALUES (194,36,'_kksr_ratings','5');
INSERT INTO `wp_postmeta` VALUES (195,36,'_kksr_avg','5');
INSERT INTO `wp_postmeta` VALUES (196,36,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (197,30,'movie_poster','https://m.media-amazon.com/images/M/MV5BNjM0NTc0NzItM2FlYS00YzEwLWE0YmUtNTA2ZWIzODc2OTgxXkEyXkFqcGdeQXVyNTgwNzIyNzg@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (198,28,'movie_poster','https://m.media-amazon.com/images/M/MV5BMTcwNTE4MTUxMl5BMl5BanBnXkFtZTcwMDIyODM4OA@@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (199,26,'movie_poster','https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (200,23,'movie_poster','https://m.media-amazon.com/images/M/MV5BNGE5MzIyNTAtNWFlMC00NDA2LWJiMjItMjc4Yjg1OWM5NzhhXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (201,20,'movie_poster','https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (202,20,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (203,30,'_kksr_casts','1');
INSERT INTO `wp_postmeta` VALUES (204,30,'_kksr_ratings','4');
INSERT INTO `wp_postmeta` VALUES (205,30,'_kksr_avg','4');
INSERT INTO `wp_postmeta` VALUES (206,30,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (207,26,'movie_boxoffice','$364,000,000');
INSERT INTO `wp_postmeta` VALUES (208,23,'movie_boxoffice','$339,700,000');
INSERT INTO `wp_postmeta` VALUES (209,20,'movie_boxoffice','$314,000,000');
INSERT INTO `wp_postmeta` VALUES (210,23,'movie_writers',NULL);
INSERT INTO `wp_postmeta` VALUES (211,20,'movie_writer','J.R.R. Tolkien (novel), Fran Walsh (screenplay), Philippa Boyens (screenplay), Peter Jackson (screenplay)');
INSERT INTO `wp_postmeta` VALUES (212,26,'movie_year','2003');
INSERT INTO `wp_postmeta` VALUES (213,26,'movie_writer','J.R.R. Tolkien (novel), Fran Walsh (screenplay), Philippa Boyens (screenplay), Peter Jackson (screenplay)');
INSERT INTO `wp_postmeta` VALUES (214,26,'movie_released','17 Dec 2003');
INSERT INTO `wp_postmeta` VALUES (215,23,'movie_title','The Lord of the Rings: The Two Towers');
INSERT INTO `wp_postmeta` VALUES (216,23,'movie_plot','While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron\'s new ally, Saruman, and his hordes of Isengard.');
INSERT INTO `wp_postmeta` VALUES (217,23,'movie_released','18 Dec 2002');
INSERT INTO `wp_postmeta` VALUES (218,23,'movie_writer','J.R.R. Tolkien (novel), Fran Walsh (screenplay), Philippa Boyens (screenplay), Stephen Sinclair (screenplay), Peter Jackson (screenplay)');
INSERT INTO `wp_postmeta` VALUES (219,26,'movie_title','The Lord of the Rings: The Return of the King');
INSERT INTO `wp_postmeta` VALUES (220,26,'movie_plot','Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-03-10 14:33:53','2020-03-10 14:33:53','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2020-03-11 10:19:24','2020-03-11 10:19:24','',0,'http://biojonas.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-03-10 14:33:53','2020-03-10 14:33:53','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://biojonas.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-03-10 14:33:53','2020-03-10 14:33:53','',0,'http://biojonas.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-03-10 14:33:53','2020-03-10 14:33:53','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://biojonas.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2020-03-10 14:33:53','2020-03-10 14:33:53','',0,'http://biojonas.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2020-03-10 14:34:27','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-03-10 14:34:27','0000-00-00 00:00:00','',0,'http://biojonas.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-03-10 15:02:46','2020-03-10 15:02:46','','Home','','publish','closed','closed','','home','','','2020-03-10 15:02:56','2020-03-10 15:02:56','',0,'http://biojonas.local/?p=5',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-03-10 15:02:46','2020-03-10 15:02:46',' ','','','publish','closed','closed','','6','','','2020-03-10 15:02:56','2020-03-10 15:02:56','',0,'http://biojonas.local/?p=6',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-03-11 10:08:29','2020-03-11 10:08:29','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"movie\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Movie','movie','publish','closed','closed','','group_5e68b74a799d0','','','2020-03-11 16:53:54','2020-03-11 16:53:54','',0,'http://biojonas.local/?post_type=acf-field-group&#038;p=7',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-03-11 10:10:43','2020-03-11 10:10:43','<!-- wp:paragraph -->\n<p>I do Like this movie heh</p>\n<!-- /wp:paragraph -->','The Lord of the rings, the return of the kind','','trash','closed','closed','','the-lord-of-the-rings-the-return-of-the-kind__trashed','','','2020-03-11 22:20:09','2020-03-11 22:20:09','',0,'http://biojonas.local/?post_type=movie&#038;p=10',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-03-11 10:19:24','2020-03-11 10:19:24','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2020-03-11 10:19:24','2020-03-11 10:19:24','',1,'http://biojonas.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-03-11 10:41:08','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-03-11 10:41:08','0000-00-00 00:00:00','',0,'http://biojonas.local/?post_type=movie&p=12',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-03-11 10:41:22','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','open','','','','','2020-03-11 10:41:22','0000-00-00 00:00:00','',0,'http://biojonas.local/?p=13',0,'post','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-03-11 10:41:23','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-03-11 10:41:23','0000-00-00 00:00:00','',0,'http://biojonas.local/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-03-11 10:42:43','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','open','','','','','2020-03-11 10:42:43','0000-00-00 00:00:00','',0,'http://biojonas.local/?p=15',0,'post','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-03-11 10:45:33','2020-03-11 10:45:33','<!-- wp:paragraph -->\n<p>Eyy</p>\n<!-- /wp:paragraph -->','Ey','','publish','closed','open','','ey','','','2020-03-11 10:53:27','2020-03-11 10:53:27','',0,'http://biojonas.local/?p=16',0,'post','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-03-11 10:45:33','2020-03-11 10:45:33','<!-- wp:paragraph -->\n<p>Eyy</p>\n<!-- /wp:paragraph -->','Ey','','inherit','closed','closed','','16-revision-v1','','','2020-03-11 10:45:33','2020-03-11 10:45:33','',16,'http://biojonas.local/16-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-03-11 11:00:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-03-11 11:00:15','0000-00-00 00:00:00','',0,'http://biojonas.local/?post_type=movie&p=18',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-03-11 11:08:32','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-03-11 11:08:32','0000-00-00 00:00:00','',0,'http://biojonas.local/?post_type=movie&p=19',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-03-11 11:10:04','2020-03-11 11:10:04','<!-- wp:paragraph -->\n<p> A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron. </p>\n<!-- /wp:paragraph -->','Sagan om ringen: Härskarringen','','publish','closed','closed','','sagan-om-ringen-harskarringen','','','2020-03-14 15:40:19','2020-03-14 15:40:19','',0,'http://biojonas.local/?post_type=movie&#038;p=20',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-03-11 16:53:54','2020-03-11 16:53:54','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Movie-poster','movie-poster','publish','closed','closed','','field_5e691781070e7','','','2020-03-11 16:53:54','2020-03-11 16:53:54','',7,'http://biojonas.local/?post_type=acf-field&p=21',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-03-11 16:54:48','2020-03-11 16:54:48','','lotr1','','inherit','closed','closed','','lotr1','','','2020-03-11 16:54:48','2020-03-11 16:54:48','',20,'http://biojonas.local/wp-content/uploads/2020/03/lotr1.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-03-11 22:23:03','2020-03-11 22:23:03','<!-- wp:paragraph -->\n<p>xd</p>\n<!-- /wp:paragraph -->','Title:','','publish','closed','closed','','sagan-om-de-tva-tornen-harskarringen','','','2020-03-14 17:01:54','2020-03-14 17:01:54','',0,'http://biojonas.local/?post_type=movie&#038;p=23',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-03-11 22:22:05','2020-03-11 22:22:05','','lotr1','','inherit','closed','closed','','lotr1-2','','','2020-03-11 22:22:05','2020-03-11 22:22:05','',23,'http://biojonas.local/wp-content/uploads/2020/03/lotr1-1.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-03-11 22:22:13','2020-03-11 22:22:13','','lotr21','','inherit','closed','closed','','lotr21','','','2020-03-11 22:22:13','2020-03-11 22:22:13','',23,'http://biojonas.local/wp-content/uploads/2020/03/lotr21.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-03-11 23:01:42','2020-03-11 23:01:42','','Title','','publish','closed','closed','','sagan-om-konungens-aterkomst-2003','','','2020-03-14 17:03:18','2020-03-14 17:03:18','',0,'http://biojonas.local/?post_type=movie&#038;p=26',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-03-11 23:00:54','2020-03-11 23:00:54','','lotr31','','inherit','closed','closed','','lotr31','','','2020-03-11 23:00:54','2020-03-11 23:00:54','',26,'http://biojonas.local/wp-content/uploads/2020/03/lotr31.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-03-11 23:10:30','2020-03-11 23:10:30','<!-- wp:paragraph -->\n<p> A reluctant Hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home, and the gold within it from the dragon Smaug. </p>\n<!-- /wp:paragraph -->','Hobbit: En oväntad resa','','publish','closed','closed','','hobbit-en-ovantad-resa','','','2020-03-14 14:44:55','2020-03-14 14:44:55','',0,'http://biojonas.local/?post_type=movie&#038;p=28',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-03-11 23:09:50','2020-03-11 23:09:50','','hob11','','inherit','closed','closed','','hob11','','','2020-03-11 23:09:50','2020-03-11 23:09:50','',28,'http://biojonas.local/wp-content/uploads/2020/03/hob11.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-03-13 12:38:07','2020-03-13 12:38:07','','TestApiMovie','','publish','closed','closed','','testapimovie','','','2020-03-14 12:57:33','2020-03-14 12:57:33','',0,'http://biojonas.local/?post_type=movie&#038;p=30',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-03-13 15:14:53','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-03-13 15:14:53','0000-00-00 00:00:00','',0,'http://biojonas.local/?page_id=32',0,'page','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-03-13 15:15:19','2020-03-13 15:15:19','','Work please','','publish','closed','closed','','work-please','','','2020-03-13 15:15:20','2020-03-13 15:15:20','',0,'http://biojonas.local/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-03-13 15:15:19','2020-03-13 15:15:19',' ','','','publish','closed','closed','','34','','','2020-03-13 15:15:19','2020-03-13 15:15:19','',0,'http://biojonas.local/34/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-03-13 15:15:19','2020-03-13 15:15:19','','Work please','','inherit','closed','closed','','33-revision-v1','','','2020-03-13 15:15:19','2020-03-13 15:15:19','',33,'http://biojonas.local/33-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-03-14 12:24:10','2020-03-14 12:24:10','','The fuggboi','','publish','closed','closed','','the-fuggboi','','','2020-03-14 12:55:22','2020-03-14 12:55:22','',0,'http://biojonas.local/?post_type=movie&#038;p=36',0,'movie','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rmp_analytics`
--

DROP TABLE IF EXISTS `wp_rmp_analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rmp_analytics` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `country` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user` smallint(5) NOT NULL,
  `post` mediumint(9) NOT NULL,
  `action` smallint(5) NOT NULL,
  `duration` smallint(5) NOT NULL,
  `average` decimal(2,1) NOT NULL,
  `votes` smallint(5) NOT NULL,
  `value` smallint(5) NOT NULL,
  `token` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rmp_analytics`
--

LOCK TABLES `wp_rmp_analytics` WRITE;
/*!40000 ALTER TABLE `wp_rmp_analytics` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rmp_analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_smush_dir_images`
--

DROP TABLE IF EXISTS `wp_smush_dir_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_smush_dir_images` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `path_hash` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resize` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lossy` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_size` int(10) unsigned DEFAULT NULL,
  `orig_size` int(10) unsigned DEFAULT NULL,
  `file_time` int(10) unsigned DEFAULT NULL,
  `last_scan` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text COLLATE utf8mb4_unicode_520_ci,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `path_hash` (`path_hash`),
  KEY `image_size` (`image_size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_smush_dir_images`
--

LOCK TABLES `wp_smush_dir_images` WRITE;
/*!40000 ALTER TABLE `wp_smush_dir_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_smush_dir_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,2,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
INSERT INTO `wp_term_relationships` VALUES (16,1,0);
INSERT INTO `wp_term_relationships` VALUES (34,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,3);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Meny','meny',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','ztreg');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"752f8559d579ed067da932a84dfc3a54779d07971462029f8c4d0f3975aeba4d\";a:4:{s:10:\"expiration\";i:1584274753;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36\";s:5:\"login\";i:1584101953;}s:64:\"3e6202ef3c07df79c0a03e6d54373d500c2b945c985012c11977d416d71d5441\";a:4:{s:10:\"expiration\";i:1584282208;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36\";s:5:\"login\";i:1584109408;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'closedpostboxes_movie','a:1:{i:0;s:23:\"acf-group_5e68b74a799d0\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_movie','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (23,1,'closedpostboxes_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (24,1,'metaboxhidden_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'meta-box-order_movie','a:4:{s:6:\"normal\";s:23:\"acf-group_5e68b74a799d0\";s:8:\"advanced\";s:7:\"movie-1\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (27,1,'wp_user-settings-time','1583945691');
INSERT INTO `wp_usermeta` VALUES (28,1,'meta-box-order_dashboard','a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'ztreg','$P$Bj3NVfHTZJv8SSCNX6RYvlL0V4DFXP0','ztreg','ztreg-email@flywheel.local','','2020-03-10 14:33:53','',0,'ztreg');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-14 18:06:54
