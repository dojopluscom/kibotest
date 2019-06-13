-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql:3306
-- Tiempo de generación: 13-06-2019 a las 22:14:00
-- Versión del servidor: 5.7.25
-- Versión de PHP: 7.2.8

SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kibo`
--
CREATE DATABASE IF NOT EXISTS `kibo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE kibo;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kibo_commentmeta`
--

DROP TABLE IF EXISTS `kibo_commentmeta`;
CREATE TABLE IF NOT EXISTS `kibo_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kibo_comments`
--

DROP TABLE IF EXISTS `kibo_comments`;
CREATE TABLE IF NOT EXISTS `kibo_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_date_gmt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ;

--
-- Volcado de datos para la tabla `kibo_comments`
--

INSERT INTO `kibo_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-11 17:21:10', '2019-06-11 15:21:10', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kibo_links`
--

DROP TABLE IF EXISTS `kibo_links`;
CREATE TABLE IF NOT EXISTS `kibo_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kibo_options`
--

DROP TABLE IF EXISTS `kibo_options`;
CREATE TABLE IF NOT EXISTS `kibo_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ;

--
-- Volcado de datos para la tabla `kibo_options`
--

INSERT INTO `kibo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/app', 'yes'),
(2, 'home', 'http://localhost/app', 'yes'),
(3, 'blogname', 'Kibo TEST', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@dojo-plus.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:106:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"html5-blank/?$\";s:31:\"index.php?post_type=html5-blank\";s:44:\"html5-blank/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=html5-blank&feed=$matches[1]\";s:39:\"html5-blank/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=html5-blank&feed=$matches[1]\";s:31:\"html5-blank/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=html5-blank&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"html5-blank/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"html5-blank/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"html5-blank/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"html5-blank/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"html5-blank/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"html5-blank/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"html5-blank/(.+?)/embed/?$\";s:44:\"index.php?html5-blank=$matches[1]&embed=true\";s:30:\"html5-blank/(.+?)/trackback/?$\";s:38:\"index.php?html5-blank=$matches[1]&tb=1\";s:50:\"html5-blank/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?html5-blank=$matches[1]&feed=$matches[2]\";s:45:\"html5-blank/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?html5-blank=$matches[1]&feed=$matches[2]\";s:38:\"html5-blank/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?html5-blank=$matches[1]&paged=$matches[2]\";s:45:\"html5-blank/(.+?)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?html5-blank=$matches[1]&cpage=$matches[2]\";s:34:\"html5-blank/(.+?)(?:/([0-9]+))?/?$\";s:50:\"index.php?html5-blank=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:27:\"redis-cache/redis-cache.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'no-front', 'yes'),
(41, 'stylesheet', 'no-front', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Madrid', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'kibo_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '1', 'yes'),
(96, 'WPLANG', 'es_ES', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"widget-area-1\";a:0:{}s:13:\"widget-area-2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1560464888;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1560482472;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1560525671;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1560525719;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1560525722;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560275108;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(125, '_site_transient_timeout_browser_3193f38d3ec163ef29fec8f0c31c869d', '1560871319', 'no'),
(126, '_site_transient_browser_3193f38d3ec163ef29fec8f0c31c869d', 'a:10:{s:4:\"name\";s:5:\"Opera\";s:7:\"version\";s:13:\"60.0.3255.160\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:22:\"https://www.opera.com/\";s:7:\"img_src\";s:42:\"http://s.w.org/images/browsers/opera.png?1\";s:11:\"img_src_ssl\";s:43:\"https://s.w.org/images/browsers/opera.png?1\";s:15:\"current_version\";s:5:\"12.18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(127, '_site_transient_timeout_php_check_1d5ece82c6431f7e2186fe51280fa8af', '1560871322', 'no'),
(128, '_site_transient_php_check_1d5ece82c6431f7e2186fe51280fa8af', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(132, 'can_compress_scripts', '0', 'no'),
(145, 'current_theme', 'No Front', 'yes'),
(146, 'theme_mods_no-front', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:2;}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(151, '_transient_timeout_plugin_slugs', '1560466779', 'no'),
(152, '_transient_plugin_slugs', 'a:4:{i:0;s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:27:\"redis-cache/redis-cache.php\";}', 'no'),
(153, 'recently_activated', 'a:1:{s:27:\"redis-cache/redis-cache.php\";i:1560380371;}', 'yes'),
(159, 'acf_version', '5.8.0', 'yes'),
(165, '_site_transient_timeout_browser_2465c55c6e981ba7f038915f55044d51', '1560898612', 'no'),
(166, '_site_transient_browser_2465c55c6e981ba7f038915f55044d51', 'a:10:{s:4:\"name\";s:5:\"Opera\";s:7:\"version\";s:13:\"60.0.3255.160\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:22:\"https://www.opera.com/\";s:7:\"img_src\";s:42:\"http://s.w.org/images/browsers/opera.png?1\";s:11:\"img_src_ssl\";s:43:\"https://s.w.org/images/browsers/opera.png?1\";s:15:\"current_version\";s:5:\"12.18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(174, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.2.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1560453097;s:15:\"version_checked\";s:5:\"5.2.1\";s:12:\"translations\";a:0:{}}', 'no'),
(176, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1560453099;s:7:\"checked\";a:1:{s:8:\"no-front\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(178, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1560336083;s:7:\"version\";s:5:\"5.1.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(179, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(182, '_transient_timeout_acf_plugin_updates', '1560466776', 'no'),
(183, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.0\";}}', 'no'),
(192, '_site_transient_timeout_community-events-457e6c90cd2f372ed464cccaaa5cde16', '1560458088', 'no'),
(193, '_site_transient_community-events-457e6c90cd2f372ed464cccaaa5cde16', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.24.0.0\";}s:6:\"events\";a:6:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://2019.europe.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2019-06-20 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Berlin, Germany\";s:7:\"country\";s:2:\"DE\";s:8:\"latitude\";d:52.50697;s:9:\"longitude\";d:13.2843064;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:58:\"<devs> Desarrollos en Gutenberg: Quítate el miedo </devs>\";s:3:\"url\";s:57:\"https://www.meetup.com/WordPress-Madrid/events/261798297/\";s:6:\"meetup\";s:16:\"WordPress Madrid\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/WordPress-Madrid/\";s:4:\"date\";s:19:\"2019-06-12 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:13:\"Madrid, Spain\";s:7:\"country\";s:2:\"es\";s:8:\"latitude\";d:40.412426;s:9:\"longitude\";d:-3.718222;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:74:\"Archivo wp-config vitaminado: No te conformes con lo que viene por defecto\";s:3:\"url\";s:66:\"https://www.meetup.com/Mostoles-WordPress-Meetup/events/261824624/\";s:6:\"meetup\";s:26:\"Móstoles WordPress Meetup\";s:10:\"meetup_url\";s:49:\"https://www.meetup.com/Mostoles-WordPress-Meetup/\";s:4:\"date\";s:19:\"2019-06-14 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Móstoles, Spain\";s:7:\"country\";s:2:\"es\";s:8:\"latitude\";d:40.308548;s:9:\"longitude\";d:-3.865959;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:34:\"2×1 Madrid WordPress Meetup Junio\";s:3:\"url\";s:57:\"https://www.meetup.com/WordPress-Madrid/events/258124683/\";s:6:\"meetup\";s:16:\"WordPress Madrid\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/WordPress-Madrid/\";s:4:\"date\";s:19:\"2019-06-20 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:13:\"Madrid, Spain\";s:7:\"country\";s:2:\"es\";s:8:\"latitude\";d:40.412415;s:9:\"longitude\";d:-3.718261;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:43:\"Fotografía de bolsillo, fotografía móvil\";s:3:\"url\";s:74:\"https://www.meetup.com/WordPress-Collado-Villalba-Meetup/events/260969365/\";s:6:\"meetup\";s:26:\"WordPress Collado Villalba\";s:10:\"meetup_url\";s:57:\"https://www.meetup.com/WordPress-Collado-Villalba-Meetup/\";s:4:\"date\";s:19:\"2019-06-26 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:23:\"Collado Villalba, Spain\";s:7:\"country\";s:2:\"es\";s:8:\"latitude\";d:40.623344;s:9:\"longitude\";d:-4.015815;}}i:5;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:34:\"Cómo hacer una página web gratis\";s:3:\"url\";s:57:\"https://www.meetup.com/Wordpress-Grinon/events/262181307/\";s:6:\"meetup\";s:17:\"WordPress Griñon\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/Wordpress-Grinon/\";s:4:\"date\";s:19:\"2019-06-26 19:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Griñón, Spain\";s:7:\"country\";s:2:\"es\";s:8:\"latitude\";d:40.21027;s:9:\"longitude\";d:-3.85337;}}}}', 'no'),
(197, '_site_transient_timeout_theme_roots', '1560454898', 'no'),
(198, '_site_transient_theme_roots', 'a:1:{s:8:\"no-front\";s:7:\"/themes\";}', 'no'),
(199, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1560453100;s:7:\"checked\";a:4:{s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";s:5:\"3.1.0\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.3\";s:27:\"redis-cache/redis-cache.php\";s:5:\"1.4.3\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/acf-to-rest-api\";s:4:\"slug\";s:15:\"acf-to-rest-api\";s:6:\"plugin\";s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";s:11:\"new_version\";s:5:\"3.1.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/acf-to-rest-api/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/acf-to-rest-api.3.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-to-rest-api/assets/icon-256x256.jpg?rev=1752896\";s:2:\"1x\";s:68:\"https://ps.w.org/acf-to-rest-api/assets/icon-128x128.jpg?rev=1752896\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/acf-to-rest-api/assets/banner-1544x500.jpg?rev=1752896\";s:2:\"1x\";s:70:\"https://ps.w.org/acf-to-rest-api/assets/banner-772x250.jpg?rev=1752896\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"redis-cache/redis-cache.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/redis-cache\";s:4:\"slug\";s:11:\"redis-cache\";s:6:\"plugin\";s:27:\"redis-cache/redis-cache.php\";s:11:\"new_version\";s:5:\"1.4.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/redis-cache/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/redis-cache.1.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/redis-cache/assets/icon-256x256.png?rev=1025599\";s:2:\"1x\";s:64:\"https://ps.w.org/redis-cache/assets/icon-128x128.png?rev=1025599\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/redis-cache/assets/banner-1544x500.png?rev=1025599\";s:2:\"1x\";s:66:\"https://ps.w.org/redis-cache/assets/banner-772x250.png?rev=1025599\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(201, '_site_transient_timeout_community-events-e945964770a0fd6f0dbbcd9622f2e63f', '1560501443', 'no'),
(202, '_site_transient_community-events-e945964770a0fd6f0dbbcd9622f2e63f', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.30.0.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://2019.europe.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2019-06-20 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Berlin, Germany\";s:7:\"country\";s:2:\"DE\";s:8:\"latitude\";d:52.50697;s:9:\"longitude\";d:13.2843064;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:23:\"1.er Hackaton WPGranada\";s:3:\"url\";s:65:\"https://www.meetup.com/Granada-WordPress-Meetup/events/261482045/\";s:6:\"meetup\";s:24:\"Granada WordPress Meetup\";s:10:\"meetup_url\";s:48:\"https://www.meetup.com/Granada-WordPress-Meetup/\";s:4:\"date\";s:19:\"2019-06-12 17:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:14:\"Granada, Spain\";s:7:\"country\";s:2:\"es\";s:8:\"latitude\";d:37.197056;s:9:\"longitude\";d:-3.624551;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:69:\"Técnicas de conversión para negocios digitales basados en WordPress\";s:3:\"url\";s:57:\"https://www.meetup.com/WordPress-Malaga/events/258812875/\";s:6:\"meetup\";s:17:\"WordPress Málaga\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/WordPress-Malaga/\";s:4:\"date\";s:19:\"2019-06-27 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:14:\"Málaga, Spain\";s:7:\"country\";s:2:\"es\";s:8:\"latitude\";d:36.728634;s:9:\"longitude\";d:-4.431205;}}i:3;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:16:\"WordCamp Sevilla\";s:3:\"url\";s:44:\"https://2019-developers.sevilla.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2019-10-04 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:25:\"Seville, Andalusia, Spain\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:37.3705646;s:9:\"longitude\";d:-5.9912288;}}i:4;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:24:\"WordCamp Valencia, Spain\";s:3:\"url\";s:34:\"https://2019.valencia.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2019-10-19 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Valencia, Spain\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:39.475888;s:9:\"longitude\";d:-0.393696;}}}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kibo_postmeta`
--

DROP TABLE IF EXISTS `kibo_postmeta`;
CREATE TABLE IF NOT EXISTS `kibo_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ;

--
-- Volcado de datos para la tabla `kibo_postmeta`
--

INSERT INTO `kibo_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_edit_last', '1'),
(6, 7, '_edit_lock', '1560289514:1'),
(7, 8, '_edit_last', '1'),
(8, 8, '_edit_lock', '1560462502:1'),
(9, 9, '_edit_last', '1'),
(10, 9, '_edit_lock', '1560330294:1'),
(11, 12, '_edit_last', '1'),
(12, 12, '_edit_lock', '1560330378:1'),
(13, 15, '_edit_last', '1'),
(14, 15, '_edit_lock', '1560380828:1'),
(15, 18, '_edit_last', '1'),
(16, 18, '_edit_lock', '1560381214:1'),
(17, 20, '_edit_last', '1'),
(18, 20, '_edit_lock', '1560417069:1'),
(19, 23, '_edit_last', '1'),
(20, 23, '_edit_lock', '1560462459:1'),
(21, 8, 'bi-texto', 'Set Up'),
(22, 8, '_bi-texto', 'field_5d0021fded5da'),
(23, 8, 'bi-background', ''),
(24, 8, '_bi-background', 'field_5d00224bed5db'),
(25, 8, 'bii-texto', ''),
(26, 8, '_bii-texto', 'field_5d00231890f15'),
(27, 8, 'bii-background', ''),
(28, 8, '_bii-background', 'field_5d00233290f16'),
(29, 8, 'biii-captura-del-player', ''),
(30, 8, '_biii-captura-del-player', 'field_5d002396f04f5'),
(31, 8, 'biii-video', ''),
(32, 8, '_biii-video', 'field_5d0023b5f04f6'),
(33, 8, 'biv-galeria', ''),
(34, 8, '_biv-galeria', 'field_5d00242ec4ce2'),
(35, 8, 'bv-subtitulo', ''),
(36, 8, '_bv-subtitulo', 'field_5d0024d0cc6bf'),
(37, 8, 'bv-texto', ''),
(38, 8, '_bv-texto', 'field_5d0024e4cc6c0'),
(39, 8, 'bvi-subtitulo', ''),
(40, 8, '_bvi-subtitulo', 'field_5d00254485e0d'),
(41, 8, 'bi_texto', '<p class=\"p1\"><span class=\"s1\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</span></p>'),
(42, 8, '_bi_texto', 'field_5d0021fded5da'),
(43, 8, 'bi_background', '35'),
(44, 8, '_bi_background', 'field_5d00224bed5db'),
(45, 8, 'bii_texto', '<p class=\"p1\"><span class=\"s1\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima.</span></p>\r\n<p class=\"p1\"><span class=\"s1\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eiu.</span></p>'),
(46, 8, '_bii_texto', 'field_5d00231890f15'),
(47, 8, 'bii_background', '37'),
(48, 8, '_bii_background', 'field_5d00233290f16'),
(49, 8, 'biii_captura_del_player', '40'),
(50, 8, '_biii_captura_del_player', 'field_5d002396f04f5'),
(51, 8, 'biii_video', '41'),
(52, 8, '_biii_video', 'field_5d0023b5f04f6'),
(53, 8, 'biv_galeria', '10'),
(54, 8, '_biv_galeria', 'field_5d01866cd40e0'),
(55, 8, 'bv_subtitulo', 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eiu.'),
(56, 8, '_bv_subtitulo', 'field_5d0024d0cc6bf'),
(57, 8, 'bv_texto', '<p class=\"p1\"><span class=\"s1\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eiu. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eiu.</span></p>\r\n<p class=\"p1\"><span class=\"s1\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eiu.</span></p>'),
(58, 8, '_bv_texto', 'field_5d0024e4cc6c0'),
(59, 8, 'bvi_subtitulo', 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet,\r\nconsectetur adipisci velit, sed quia non numquam eiu.'),
(60, 8, '_bvi_subtitulo', 'field_5d00254485e0d'),
(61, 25, '_form', '[text your-input-i]\n\n[email your-input-ii]\n\n[text your-input-iii]\n\n[submit \"Enviar\"]'),
(62, 25, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"Kibo TEST \"[your-input-i]\"\";s:6:\"sender\";s:30:\"Kibo TEST <info@dojo-plus.com>\";s:9:\"recipient\";s:18:\"info@dojo-plus.com\";s:4:\"body\";s:123:\"Input 1: [your-input-i] \nInput 2: [your-input-ii]\n\nInput 3:\n[your-input-iii]\n\n-- \nMensaje enviado a través de la API de WP\";s:18:\"additional_headers\";s:19:\"Cc: [your-input-ii]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(63, 25, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"Kibo TEST \"[your-subject]\"\";s:6:\"sender\";s:30:\"Kibo TEST <info@dojo-plus.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:134:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Kibo TEST (http://localhost/app)\";s:18:\"additional_headers\";s:28:\"Reply-To: info@dojo-plus.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(64, 25, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:16:\"validation_error\";s:74:\"Uno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.\";s:4:\"spam\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:24:\"El campo es obligatorio.\";s:16:\"invalid_too_long\";s:28:\"El campo es demasiado largo.\";s:17:\"invalid_too_short\";s:28:\"El campo es demasiado corto.\";s:12:\"invalid_date\";s:34:\"El formato de fecha es incorrecto.\";s:14:\"date_too_early\";s:50:\"La fecha es anterior a la más temprana permitida.\";s:13:\"date_too_late\";s:50:\"La fecha es posterior a la más tardía permitida.\";s:13:\"upload_failed\";s:46:\"Hubo un error desconocido subiendo el archivo.\";s:24:\"upload_file_type_invalid\";s:52:\"No tienes permisos para subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:31:\"El archivo es demasiado grande.\";s:23:\"upload_failed_php_error\";s:43:\"Se ha producido un error subiendo la imagen\";s:14:\"invalid_number\";s:36:\"El formato de número no es válido.\";s:16:\"number_too_small\";s:45:\"El número es menor que el mínimo permitido.\";s:16:\"number_too_large\";s:45:\"El número es mayor que el máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:44:\"La respuesta al cuestionario no es correcta.\";s:17:\"captcha_not_match\";s:37:\"El código introducido es incorrecto.\";s:13:\"invalid_email\";s:71:\"La dirección de correo electrónico que has introducido no es válida.\";s:11:\"invalid_url\";s:21:\"La URL no es válida.\";s:11:\"invalid_tel\";s:38:\"El número de teléfono no es válido.\";}'),
(65, 25, '_additional_settings', ''),
(66, 25, '_locale', 'es_ES'),
(71, 25, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:39:\"Sintaxis incorrecta en el campo %name%.\";s:6:\"params\";a:1:{s:4:\"name\";s:2:\"Cc\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(72, 8, 'bi_titulo', '<strong>LOREM</strong> IMSUM'),
(73, 8, '_bi_titulo', 'field_5d00beea102c2'),
(74, 8, 'bii_titulo', '<strong>LOREM</strong> IPSUM'),
(75, 8, '_bii_titulo', 'field_5d00c03d513a7'),
(76, 8, 'biii_titulo', 'DOLOR <strong>ASIMET</strong>'),
(77, 8, '_biii_titulo', 'field_5d00c0cd4a1db'),
(78, 29, '_menu_item_type', 'custom'),
(79, 29, '_menu_item_menu_item_parent', '0'),
(80, 29, '_menu_item_object_id', '29'),
(81, 29, '_menu_item_object', 'custom'),
(82, 29, '_menu_item_target', ''),
(83, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 29, '_menu_item_xfn', ''),
(85, 29, '_menu_item_url', '#'),
(87, 30, '_menu_item_type', 'custom'),
(88, 30, '_menu_item_menu_item_parent', '0'),
(89, 30, '_menu_item_object_id', '30'),
(90, 30, '_menu_item_object', 'custom'),
(91, 30, '_menu_item_target', ''),
(92, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(93, 30, '_menu_item_xfn', ''),
(94, 30, '_menu_item_url', '#'),
(96, 31, '_menu_item_type', 'custom'),
(97, 31, '_menu_item_menu_item_parent', '0'),
(98, 31, '_menu_item_object_id', '31'),
(99, 31, '_menu_item_object', 'custom'),
(100, 31, '_menu_item_target', ''),
(101, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 31, '_menu_item_xfn', ''),
(103, 31, '_menu_item_url', '#'),
(105, 32, '_menu_item_type', 'custom'),
(106, 32, '_menu_item_menu_item_parent', '0'),
(107, 32, '_menu_item_object_id', '32'),
(108, 32, '_menu_item_object', 'custom'),
(109, 32, '_menu_item_target', ''),
(110, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(111, 32, '_menu_item_xfn', ''),
(112, 32, '_menu_item_url', '#'),
(114, 33, '_menu_item_type', 'custom'),
(115, 33, '_menu_item_menu_item_parent', '0'),
(116, 33, '_menu_item_object_id', '33'),
(117, 33, '_menu_item_object', 'custom'),
(118, 33, '_menu_item_target', ''),
(119, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(120, 33, '_menu_item_xfn', ''),
(121, 33, '_menu_item_url', '#'),
(123, 34, '_menu_item_type', 'custom'),
(124, 34, '_menu_item_menu_item_parent', '0'),
(125, 34, '_menu_item_object_id', '34'),
(126, 34, '_menu_item_object', 'custom'),
(127, 34, '_menu_item_target', ''),
(128, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(129, 34, '_menu_item_xfn', ''),
(130, 34, '_menu_item_url', '#'),
(131, 35, '_wp_attached_file', '2019/06/1.jpg'),
(132, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:870;s:4:\"file\";s:13:\"2019/06/1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-250x151.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x464.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:13:\"1-700x423.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:423;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:12:\"1-120x73.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:73;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:13:\"1-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 36, '_wp_attached_file', '2019/06/2.jpg'),
(134, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:729;s:4:\"file\";s:13:\"2019/06/2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-250x127.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x389.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:389;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:13:\"2-700x354.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:354;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:12:\"2-120x61.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:13:\"2-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 37, '_wp_attached_file', '2019/06/3.jpg'),
(136, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:729;s:4:\"file\";s:13:\"2019/06/3.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-250x127.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x389.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:389;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:13:\"3-700x354.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:354;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:12:\"3-120x61.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:13:\"3-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 38, '_wp_attached_file', '2019/06/4.jpeg'),
(138, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1950;s:6:\"height\";i:1300;s:4:\"file\";s:14:\"2019/06/4.jpeg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"4-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"4-250x167.jpeg\";s:5:\"width\";i:250;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"4-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"4-700x467.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:467;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:13:\"4-120x80.jpeg\";s:5:\"width\";i:120;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:14:\"4-700x200.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 39, '_wp_attached_file', '2019/06/5.jpeg'),
(140, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1950;s:6:\"height\";i:1300;s:4:\"file\";s:14:\"2019/06/5.jpeg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"5-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"5-250x167.jpeg\";s:5:\"width\";i:250;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"5-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"5-700x467.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:467;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:13:\"5-120x80.jpeg\";s:5:\"width\";i:120;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:14:\"5-700x200.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 40, '_wp_attached_file', '2019/06/6.png'),
(142, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:748;s:6:\"height\";i:454;s:4:\"file\";s:13:\"2019/06/6.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-250x152.png\";s:5:\"width\";i:250;s:6:\"height\";i:152;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:13:\"6-700x425.png\";s:5:\"width\";i:700;s:6:\"height\";i:425;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:12:\"6-120x73.png\";s:5:\"width\";i:120;s:6:\"height\";i:73;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:13:\"6-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 41, '_wp_attached_file', '2019/06/flower.mp4'),
(144, 41, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:1128375;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:5;s:16:\"length_formatted\";s:4:\"0:05\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1520436081;}'),
(145, 8, 'biii_button_text', 'Contact'),
(146, 8, '_biii_button_text', 'field_5d0184246e586'),
(147, 8, 'biv_galeria_0_biv_imagen_galeria', '39'),
(148, 8, '_biv_galeria_0_biv_imagen_galeria', 'field_5d018680d40e1'),
(149, 8, 'biv_galeria_1_biv_imagen_galeria', '38'),
(150, 8, '_biv_galeria_1_biv_imagen_galeria', 'field_5d018680d40e1'),
(151, 8, 'biv_galeria_2_biv_imagen_galeria', '39'),
(152, 8, '_biv_galeria_2_biv_imagen_galeria', 'field_5d018680d40e1'),
(153, 8, 'biv_galeria_3_biv_imagen_galeria', '38'),
(154, 8, '_biv_galeria_3_biv_imagen_galeria', 'field_5d018680d40e1'),
(155, 8, 'biv_galeria_4_biv_imagen_galeria', '39'),
(156, 8, '_biv_galeria_4_biv_imagen_galeria', 'field_5d018680d40e1'),
(157, 8, 'bv-titulo', '<strong>LOREM</strong> IPSUM'),
(158, 8, '_bv-titulo', 'field_5d020ac938b5d'),
(159, 8, 'bv_titulo', '<strong>LOREM</strong> IPSUM'),
(160, 8, '_bv_titulo', 'field_5d020ac938b5d'),
(161, 8, 'bv_button_text', 'Lorem Ipsum'),
(162, 8, '_bv_button_text', 'field_5d020c89e94c5'),
(163, 8, 'bv_imagen', '38'),
(164, 8, '_bv_imagen', 'field_5d02103a7869e'),
(165, 8, 'bvi_button_text', 'Lorem ipsum'),
(166, 8, '_bvi_button_text', 'field_5d02b41abfcb1'),
(167, 8, 'bvi_titulo', '<strong>LOREM</strong> IMSUM'),
(168, 8, '_bvi_titulo', 'field_5d02b49dcd300'),
(169, 8, 'biv_galeria_5_biv_imagen_galeria', '38'),
(170, 8, '_biv_galeria_5_biv_imagen_galeria', 'field_5d018680d40e1'),
(171, 8, 'biv_galeria_6_biv_imagen_galeria', '39'),
(172, 8, '_biv_galeria_6_biv_imagen_galeria', 'field_5d018680d40e1'),
(173, 8, 'biv_galeria_7_biv_imagen_galeria', '38'),
(174, 8, '_biv_galeria_7_biv_imagen_galeria', 'field_5d018680d40e1'),
(175, 8, 'biv_galeria_8_biv_imagen_galeria', '39'),
(176, 8, '_biv_galeria_8_biv_imagen_galeria', 'field_5d018680d40e1'),
(177, 8, 'biv_galeria_9_biv_imagen_galeria', '38'),
(178, 8, '_biv_galeria_9_biv_imagen_galeria', 'field_5d018680d40e1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kibo_posts`
--

DROP TABLE IF EXISTS `kibo_posts`;
CREATE TABLE IF NOT EXISTS `kibo_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_date_gmt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_modified_gmt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ;

--
-- Volcado de datos para la tabla `kibo_posts`
--

INSERT INTO `kibo_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-06-11 17:21:10', '2019-06-11 15:21:10', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2019-06-11 17:21:10', '2019-06-11 15:21:10', '', 0, 'http://localhost/app/?p=1', 0, 'post', '', 1),
(2, 1, '2019-06-11 17:21:10', '2019-06-11 15:21:10', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/app/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2019-06-11 17:21:10', '2019-06-11 15:21:10', '', 0, 'http://localhost/app/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-06-11 17:21:10', '2019-06-11 15:21:10', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://localhost/app.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2019-06-11 17:21:10', '2019-06-11 15:21:10', '', 0, 'http://localhost/app/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-06-11 17:22:02', CURRENT_TIMESTAMP, '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-11 17:22:02', CURRENT_TIMESTAMP, '', 0, 'http://localhost/app/?p=4', 0, 'post', '', 0),
(6, 1, '2019-06-11 23:46:11', CURRENT_TIMESTAMP, '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-11 23:46:11', CURRENT_TIMESTAMP, '', 0, 'http://localhost/app/?post_type=html5-blank&p=6', 0, 'html5-blank', '', 0),
(7, 1, '2019-06-11 23:46:48', '2019-06-11 21:46:48', '', 'My Home', '', 'publish', 'closed', 'closed', '', 'my-home', '', '', '2019-06-11 23:46:48', '2019-06-11 21:46:48', '', 0, 'http://localhost/app/?post_type=html5-blank&#038;p=7', 0, 'html5-blank', '', 0),
(8, 1, '2019-06-11 23:48:16', '2019-06-11 21:48:16', '', 'MyHome', '', 'publish', 'closed', 'closed', '', 'myhome', '', '', '2019-06-13 23:48:20', '2019-06-13 21:48:20', '', 0, 'http://localhost/app/?post_type=home-blocks&#038;p=8', 0, 'home-blocks', '', 0),
(9, 1, '2019-06-11 23:51:42', '2019-06-11 21:51:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"home-blocks\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:22:\"Contenido del Bloque I\";}', 'Bloque I', 'bloque-i', 'publish', 'closed', 'closed', '', 'group_5d0021b0be574', '', '', '2019-06-12 11:00:45', '2019-06-12 09:00:45', '', 0, 'http://localhost/app/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2019-06-11 23:51:42', '2019-06-11 21:51:42', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'bi_texto', 'publish', 'closed', 'closed', '', 'field_5d0021fded5da', '', '', '2019-06-12 11:00:38', '2019-06-12 09:00:38', '', 9, 'http://localhost/app/?post_type=acf-field&#038;p=10', 1, 'acf-field', '', 0),
(11, 1, '2019-06-11 23:51:42', '2019-06-11 21:51:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background', 'bi_background', 'publish', 'closed', 'closed', '', 'field_5d00224bed5db', '', '', '2019-06-12 11:00:38', '2019-06-12 09:00:38', '', 9, 'http://localhost/app/?post_type=acf-field&#038;p=11', 2, 'acf-field', '', 0),
(12, 1, '2019-06-11 23:52:41', '2019-06-11 21:52:41', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"home-blocks\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:23:\"Contenidos de Bloque II\";}', 'Bloque II', 'bloque-ii', 'publish', 'closed', 'closed', '', 'group_5d002290f1dbc', '', '', '2019-06-12 11:06:10', '2019-06-12 09:06:10', '', 0, 'http://localhost/app/?post_type=acf-field-group&#038;p=12', 0, 'acf-field-group', '', 0),
(13, 1, '2019-06-11 23:55:22', '2019-06-11 21:55:22', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'bii_texto', 'publish', 'closed', 'closed', '', 'field_5d00231890f15', '', '', '2019-06-12 11:06:10', '2019-06-12 09:06:10', '', 12, 'http://localhost/app/?post_type=acf-field&#038;p=13', 1, 'acf-field', '', 0),
(14, 1, '2019-06-11 23:55:22', '2019-06-11 21:55:22', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background', 'bii_background', 'publish', 'closed', 'closed', '', 'field_5d00233290f16', '', '', '2019-06-12 11:06:10', '2019-06-12 09:06:10', '', 12, 'http://localhost/app/?post_type=acf-field&#038;p=14', 2, 'acf-field', '', 0),
(15, 1, '2019-06-11 23:56:36', '2019-06-11 21:56:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"home-blocks\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:24:\"Contenidos de Bloque III\";}', 'Bloque III', 'bloque-iii', 'publish', 'closed', 'closed', '', 'group_5d00237f3c46d', '', '', '2019-06-13 01:01:30', '2019-06-12 23:01:30', '', 0, 'http://localhost/app/?post_type=acf-field-group&#038;p=15', 0, 'acf-field-group', '', 0),
(16, 1, '2019-06-11 23:57:42', '2019-06-11 21:57:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Captura del Player', 'biii_captura_del_player', 'publish', 'closed', 'closed', '', 'field_5d002396f04f5', '', '', '2019-06-12 11:08:15', '2019-06-12 09:08:15', '', 15, 'http://localhost/app/?post_type=acf-field&#038;p=16', 1, 'acf-field', '', 0),
(17, 1, '2019-06-11 23:57:42', '2019-06-11 21:57:42', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:9:\"Video mp4\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:3:\"mp4\";}', 'Video', 'biii_video', 'publish', 'closed', 'closed', '', 'field_5d0023b5f04f6', '', '', '2019-06-12 18:26:08', '2019-06-12 16:26:08', '', 15, 'http://localhost/app/?post_type=acf-field&#038;p=17', 2, 'acf-field', '', 0),
(18, 1, '2019-06-11 23:59:07', '2019-06-11 21:59:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"home-blocks\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:23:\"Contenidos de Bloque IV\";}', 'Bloque IV', 'bloque-iv', 'publish', 'closed', 'closed', '', 'group_5d0024101d3bd', '', '', '2019-06-13 01:13:31', '2019-06-12 23:13:31', '', 0, 'http://localhost/app/?post_type=acf-field-group&#038;p=18', 0, 'acf-field-group', '', 0),
(20, 1, '2019-06-12 00:02:43', '2019-06-11 22:02:43', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"home-blocks\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:22:\"Contenidos de Bloque V\";}', 'Bloque V', 'bloque-v', 'publish', 'closed', 'closed', '', 'group_5d0024c1bb21e', '', '', '2019-06-13 10:59:17', '2019-06-13 08:59:17', '', 0, 'http://localhost/app/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2019-06-12 00:02:43', '2019-06-11 22:02:43', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Subtitulo', 'bv_subtitulo', 'publish', 'closed', 'closed', '', 'field_5d0024d0cc6bf', '', '', '2019-06-13 10:36:11', '2019-06-13 08:36:11', '', 20, 'http://localhost/app/?post_type=acf-field&#038;p=21', 1, 'acf-field', '', 0),
(22, 1, '2019-06-12 00:02:43', '2019-06-11 22:02:43', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'bv_texto', 'publish', 'closed', 'closed', '', 'field_5d0024e4cc6c0', '', '', '2019-06-13 10:36:11', '2019-06-13 08:36:11', '', 20, 'http://localhost/app/?post_type=acf-field&#038;p=22', 2, 'acf-field', '', 0),
(23, 1, '2019-06-12 00:04:13', '2019-06-11 22:04:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"home-blocks\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:23:\"Contenidos de Bloque VI\";}', 'Bloque VI', 'bloque-vi', 'publish', 'closed', 'closed', '', 'group_5d00253cd9b22', '', '', '2019-06-13 23:47:36', '2019-06-13 21:47:36', '', 0, 'http://localhost/app/?post_type=acf-field-group&#038;p=23', 0, 'acf-field-group', '', 0),
(24, 1, '2019-06-12 00:04:13', '2019-06-11 22:04:13', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Subtitulo', 'bvi_subtitulo', 'publish', 'closed', 'closed', '', 'field_5d00254485e0d', '', '', '2019-06-13 23:47:36', '2019-06-13 21:47:36', '', 23, 'http://localhost/app/?post_type=acf-field&#038;p=24', 1, 'acf-field', '', 0),
(25, 1, '2019-06-12 10:41:23', '2019-06-12 08:41:23', '[text your-input-i]\r\n\r\n[email your-input-ii]\r\n\r\n[text your-input-iii]\r\n\r\n[submit \"Enviar\"]\n1\nKibo TEST \"[your-input-i]\"\nKibo TEST <info@dojo-plus.com>\ninfo@dojo-plus.com\nInput 1: [your-input-i] \r\nInput 2: [your-input-ii]\r\n\r\nInput 3:\r\n[your-input-iii]\r\n\r\n-- \r\nMensaje enviado a través de la API de WP\nCc: [your-input-ii]\n\n\n\n\nKibo TEST \"[your-subject]\"\nKibo TEST <info@dojo-plus.com>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en Kibo TEST (http://localhost/app)\nReply-To: info@dojo-plus.com\n\n\n\nGracias por tu mensaje. Ha sido enviado.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nEl campo es obligatorio.\nEl campo es demasiado largo.\nEl campo es demasiado corto.\nEl formato de fecha es incorrecto.\nLa fecha es anterior a la más temprana permitida.\nLa fecha es posterior a la más tardía permitida.\nHubo un error desconocido subiendo el archivo.\nNo tienes permisos para subir archivos de este tipo.\nEl archivo es demasiado grande.\nSe ha producido un error subiendo la imagen\nEl formato de número no es válido.\nEl número es menor que el mínimo permitido.\nEl número es mayor que el máximo permitido.\nLa respuesta al cuestionario no es correcta.\nEl código introducido es incorrecto.\nLa dirección de correo electrónico que has introducido no es válida.\nLa URL no es válida.\nEl número de teléfono no es válido.', 'Formulario de Contacto - WPAPI', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2019-06-12 10:56:19', '2019-06-12 08:56:19', '', 0, 'http://localhost/app/?post_type=wpcf7_contact_form&#038;p=25', 0, 'wpcf7_contact_form', '', 0),
(26, 1, '2019-06-12 11:00:38', '2019-06-12 09:00:38', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:72:\"Marca en negrita, el fragmento de texto que queramos detectar en \"Black\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Titulo', 'bi_titulo', 'publish', 'closed', 'closed', '', 'field_5d00beea102c2', '', '', '2019-06-12 11:00:45', '2019-06-12 09:00:45', '', 9, 'http://localhost/app/?post_type=acf-field&#038;p=26', 0, 'acf-field', '', 0),
(27, 1, '2019-06-12 11:06:10', '2019-06-12 09:06:10', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:51:\"Marca en negrita el fragmento que queramos en Black\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Título', 'bii_titulo', 'publish', 'closed', 'closed', '', 'field_5d00c03d513a7', '', '', '2019-06-12 11:06:10', '2019-06-12 09:06:10', '', 12, 'http://localhost/app/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2019-06-12 11:08:06', '2019-06-12 09:08:06', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:52:\"Marcar en negrita el fragmento que queramos en Black\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Título', 'biii_titulo', 'publish', 'closed', 'closed', '', 'field_5d00c0cd4a1db', '', '', '2019-06-12 11:08:15', '2019-06-12 09:08:15', '', 15, 'http://localhost/app/?post_type=acf-field&#038;p=28', 0, 'acf-field', '', 0),
(29, 1, '2019-06-12 11:59:13', '2019-06-12 09:59:13', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2019-06-12 12:01:47', '2019-06-12 10:01:47', '', 0, 'http://localhost/app/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2019-06-12 11:59:13', '2019-06-12 09:59:13', '', 'Enlace I', '', 'publish', 'closed', 'closed', '', 'enlace-i', '', '', '2019-06-12 12:01:47', '2019-06-12 10:01:47', '', 0, 'http://localhost/app/?p=30', 2, 'nav_menu_item', '', 0),
(31, 1, '2019-06-12 12:01:47', '2019-06-12 10:01:47', '', 'Enlace II', '', 'publish', 'closed', 'closed', '', 'enlace-ii', '', '', '2019-06-12 12:01:47', '2019-06-12 10:01:47', '', 0, 'http://localhost/app/?p=31', 3, 'nav_menu_item', '', 0),
(32, 1, '2019-06-12 12:01:47', '2019-06-12 10:01:47', '', 'Enlace III', '', 'publish', 'closed', 'closed', '', 'enlace-iii', '', '', '2019-06-12 12:01:47', '2019-06-12 10:01:47', '', 0, 'http://localhost/app/?p=32', 4, 'nav_menu_item', '', 0),
(33, 1, '2019-06-12 12:01:47', '2019-06-12 10:01:47', '', 'Enlace IV', '', 'publish', 'closed', 'closed', '', 'enlace-iv', '', '', '2019-06-12 12:01:47', '2019-06-12 10:01:47', '', 0, 'http://localhost/app/?p=33', 5, 'nav_menu_item', '', 0),
(34, 1, '2019-06-12 12:01:47', '2019-06-12 10:01:47', '', 'Enlace V', '', 'publish', 'closed', 'closed', '', 'enlace-v', '', '', '2019-06-12 12:01:47', '2019-06-12 10:01:47', '', 0, 'http://localhost/app/?p=34', 6, 'nav_menu_item', '', 0),
(35, 1, '2019-06-12 17:14:59', '2019-06-12 15:14:59', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2019-06-12 17:14:59', '2019-06-12 15:14:59', '', 8, 'http://localhost/app/wp-content/uploads/2019/06/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2019-06-12 17:15:01', '2019-06-12 15:15:01', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2019-06-13 01:08:08', '2019-06-12 23:08:08', '', 8, 'http://localhost/app/wp-content/uploads/2019/06/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2019-06-12 17:15:04', '2019-06-12 15:15:04', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2019-06-12 17:15:04', '2019-06-12 15:15:04', '', 8, 'http://localhost/app/wp-content/uploads/2019/06/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-06-12 17:15:06', '2019-06-12 15:15:06', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2019-06-13 01:08:19', '2019-06-12 23:08:19', '', 8, 'http://localhost/app/wp-content/uploads/2019/06/4.jpeg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-06-12 17:15:09', '2019-06-12 15:15:09', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2019-06-12 17:15:09', '2019-06-12 15:15:09', '', 8, 'http://localhost/app/wp-content/uploads/2019/06/5.jpeg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-06-12 17:15:12', '2019-06-12 15:15:12', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2019-06-12 17:15:12', '2019-06-12 15:15:12', '', 8, 'http://localhost/app/wp-content/uploads/2019/06/6.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2019-06-12 18:26:30', '2019-06-12 16:26:30', '', 'flower', '', 'inherit', 'open', 'closed', '', 'flower', '', '', '2019-06-12 18:26:30', '2019-06-12 16:26:30', '', 8, 'http://localhost/app/wp-content/uploads/2019/06/flower.mp4', 0, 'attachment', 'video/mp4', 0),
(42, 1, '2019-06-13 01:01:30', '2019-06-12 23:01:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto del Botón', 'biii_button_text', 'publish', 'closed', 'closed', '', 'field_5d0184246e586', '', '', '2019-06-13 01:01:30', '2019-06-12 23:01:30', '', 15, 'http://localhost/app/?post_type=acf-field&p=42', 3, 'acf-field', '', 0),
(43, 1, '2019-06-13 01:12:02', '2019-06-12 23:12:02', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Galería de Imágenes', 'biv_galeria', 'publish', 'closed', 'closed', '', 'field_5d01866cd40e0', '', '', '2019-06-13 01:12:02', '2019-06-12 23:12:02', '', 18, 'http://localhost/app/?post_type=acf-field&p=43', 0, 'acf-field', '', 0),
(44, 1, '2019-06-13 01:12:02', '2019-06-12 23:12:02', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen Galeria', 'biv_imagen_galeria', 'publish', 'closed', 'closed', '', 'field_5d018680d40e1', '', '', '2019-06-13 01:12:02', '2019-06-12 23:12:02', '', 43, 'http://localhost/app/?post_type=acf-field&p=44', 0, 'acf-field', '', 0),
(45, 1, '2019-06-13 10:36:11', '2019-06-13 08:36:11', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:36:\"Marcar en negrita para texto \"Black\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Título', 'bv_titulo', 'publish', 'closed', 'closed', '', 'field_5d020ac938b5d', '', '', '2019-06-13 10:37:34', '2019-06-13 08:37:34', '', 20, 'http://localhost/app/?post_type=acf-field&#038;p=45', 0, 'acf-field', '', 0),
(46, 1, '2019-06-13 10:43:11', '2019-06-13 08:43:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto de Botón', 'bv_button_text', 'publish', 'closed', 'closed', '', 'field_5d020c89e94c5', '', '', '2019-06-13 10:43:11', '2019-06-13 08:43:11', '', 20, 'http://localhost/app/?post_type=acf-field&p=46', 3, 'acf-field', '', 0),
(47, 1, '2019-06-13 10:59:17', '2019-06-13 08:59:17', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Bloque Imagen', 'bv_imagen', 'publish', 'closed', 'closed', '', 'field_5d02103a7869e', '', '', '2019-06-13 10:59:17', '2019-06-13 08:59:17', '', 20, 'http://localhost/app/?post_type=acf-field&p=47', 4, 'acf-field', '', 0),
(48, 1, '2019-06-13 22:38:35', '2019-06-13 20:38:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto botón', 'bvi_button_text', 'publish', 'closed', 'closed', '', 'field_5d02b41abfcb1', '', '', '2019-06-13 22:41:00', '2019-06-13 20:41:00', '', 23, 'http://localhost/app/?post_type=acf-field&#038;p=48', 2, 'acf-field', '', 0),
(49, 1, '2019-06-13 22:41:00', '2019-06-13 20:41:00', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:36:\"Marcar en negrita para texto \"Black\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Titulo', 'bvi_titulo', 'publish', 'closed', 'closed', '', 'field_5d02b49dcd300', '', '', '2019-06-13 22:41:00', '2019-06-13 20:41:00', '', 23, 'http://localhost/app/?post_type=acf-field&p=49', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kibo_termmeta`
--

DROP TABLE IF EXISTS `kibo_termmeta`;
CREATE TABLE IF NOT EXISTS `kibo_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kibo_terms`
--

DROP TABLE IF EXISTS `kibo_terms`;
CREATE TABLE IF NOT EXISTS `kibo_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ;

--
-- Volcado de datos para la tabla `kibo_terms`
--

INSERT INTO `kibo_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'header-menu', 'header-menu', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kibo_term_relationships`
--

DROP TABLE IF EXISTS `kibo_term_relationships`;
CREATE TABLE IF NOT EXISTS `kibo_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ;

--
-- Volcado de datos para la tabla `kibo_term_relationships`
--

INSERT INTO `kibo_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kibo_term_taxonomy`
--

DROP TABLE IF EXISTS `kibo_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `kibo_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ;

--
-- Volcado de datos para la tabla `kibo_term_taxonomy`
--

INSERT INTO `kibo_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kibo_usermeta`
--

DROP TABLE IF EXISTS `kibo_usermeta`;
CREATE TABLE IF NOT EXISTS `kibo_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ;

--
-- Volcado de datos para la tabla `kibo_usermeta`
--

INSERT INTO `kibo_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'kibo_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'kibo_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:5:{s:64:\"3a35a480ba11633ec3263d4712660c1b842dfc955f1377b60a528f5658ff5137\";a:4:{s:10:\"expiration\";i:1560461849;s:2:\"ip\";s:13:\"192.168.144.1\";s:2:\"ua\";s:139:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36 OPR/60.0.3255.160\";s:5:\"login\";i:1560289049;}s:64:\"f3581c944bbae90329e6a3d28e39e46ae5059052c4941499618d1fcf33a0d9d8\";a:4:{s:10:\"expiration\";i:1560499715;s:2:\"ip\";s:10:\"172.24.0.1\";s:2:\"ua\";s:139:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36 OPR/60.0.3255.160\";s:5:\"login\";i:1560326915;}s:64:\"3ecf6cb9a6927d1c7289fb81fb6db2aa6704c6015746e2ae06e09b03a74f6705\";a:4:{s:10:\"expiration\";i:1560525036;s:2:\"ip\";s:10:\"172.24.0.1\";s:2:\"ua\";s:139:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36 OPR/60.0.3255.160\";s:5:\"login\";i:1560352236;}s:64:\"fd92c3dc183e125e22d82abd0ae7334c4100386799b17950622487ab29b080bf\";a:4:{s:10:\"expiration\";i:1560587684;s:2:\"ip\";s:10:\"172.24.0.1\";s:2:\"ua\";s:139:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36 OPR/60.0.3255.160\";s:5:\"login\";i:1560414884;}s:64:\"7b5919f332bb08c0626bf625322e5d3f9e5ae1fb5efadff0378260ef7799ad68\";a:4:{s:10:\"expiration\";i:1560631036;s:2:\"ip\";s:10:\"172.30.0.1\";s:2:\"ua\";s:139:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36 OPR/60.0.3255.160\";s:5:\"login\";i:1560458236;}}'),
(17, 1, 'kibo_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.30.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(20, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(21, 1, 'kibo_user-settings', 'deleted=undefined&libraryContent=browse&editor=tinymce&hidetb=0&imgsize=full&posts_list_mode=list&align=left&uploader=1&post_dfw=off&editor_expand=off'),
(22, 1, 'kibo_user-settings-time', '1560291125'),
(23, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(24, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'edit_home-blocks_per_page', '20'),
(26, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(27, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:25:\"add-post-type-home-blocks\";i:1;s:12:\"add-post_tag\";}'),
(28, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kibo_users`
--

DROP TABLE IF EXISTS `kibo_users`;
CREATE TABLE IF NOT EXISTS `kibo_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ;

--
-- Volcado de datos para la tabla `kibo_users`
--

INSERT INTO `kibo_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BtAWSOb.a52GEjE8hYPN7M5Fl7Z91C.', 'root', 'info@dojo-plus.com', '', '2019-06-11 15:21:10', '', 0, 'root');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
