-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 03 2018 г., 17:33
-- Версия сервера: 5.7.11
-- Версия PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wp-auth`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-11 10:59:23', '2018-07-11 07:59:23', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wp-auth', 'yes'),
(2, 'home', 'http://wp-auth', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'seleshhenko@yahoo.com', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:110:{s:10:"product/?$";s:27:"index.php?post_type=product";s:40:"product/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:35:"product/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:27:"product/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:41:"advanced-custom-fields-pro-master/acf.php";i:1;s:27:"cyr-and-lat/cyr-and-lat.php";i:2;s:25:"fakerpress/fakerpress.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'taotheme', 'yes'),
(41, 'stylesheet', 'taotheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:"cyr-and-lat/cyr-and-lat.php";a:2:{i:0;s:13:"Admin_Notices";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'ru_RU', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1533308363;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1533326363;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1533369574;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1533370787;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1532436438;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(131, 'can_compress_scripts', '1', 'no'),
(147, 'new_admin_email', 'seleshhenko@yahoo.com', 'yes'),
(154, 'recently_activated', 'a:1:{s:43:"custom-post-type-ui/custom-post-type-ui.php";i:1532509961;}', 'yes'),
(155, 'acf_version', '5.6.2', 'yes'),
(175, 'cptui_new_install', 'false', 'yes'),
(178, 'current_theme', 'Taothme', 'yes'),
(179, 'theme_mods_astra', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1532442621;s:4:"data";a:9:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"header-widget";a:0:{}s:15:"footer-widget-1";a:0:{}s:15:"footer-widget-2";a:0:{}s:24:"advanced-footer-widget-1";a:0:{}s:24:"advanced-footer-widget-2";a:0:{}s:24:"advanced-footer-widget-3";a:0:{}s:24:"advanced-footer-widget-4";a:0:{}}}}', 'yes'),
(180, 'theme_switched', '', 'yes'),
(181, 'astra-settings', 'a:3:{s:18:"theme-auto-version";s:5:"1.4.1";s:22:"header-main-rt-section";s:6:"search";s:24:"header-main-layout-width";s:4:"full";}', 'yes'),
(203, 'theme_mods_taotheme', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"head_menu";i:2;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(225, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(246, 'category_children', 'a:0:{}', 'yes'),
(263, 'wbcr_cyrandlat_an__activated_on', '1533104193', 'yes'),
(264, 'wbcr_wp_term_1_old_slug', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 'no'),
(267, 'wbcr_cyrandlat_an__dismissed_suggestions_on', '1533105052', 'yes'),
(282, '_site_transient_timeout_theme_roots', '1533291106', 'no'),
(283, '_site_transient_theme_roots', 'a:5:{s:5:"astra";s:7:"/themes";s:8:"taotheme";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(286, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.8-partial-7.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.7";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1533289309;s:15:"version_checked";s:5:"4.9.7";s:12:"translations";a:0:{}}', 'no'),
(287, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1533289310;s:7:"checked";a:5:{s:5:"astra";s:5:"1.4.1";s:8:"taotheme";s:0:"";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:2:{s:5:"astra";a:4:{s:5:"theme";s:5:"astra";s:11:"new_version";s:5:"1.4.6";s:3:"url";s:35:"https://wordpress.org/themes/astra/";s:7:"package";s:53:"https://downloads.wordpress.org/theme/astra.1.4.6.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.7";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip";}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:5:"astra";s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"1.4.1";s:7:"updated";s:19:"2018-07-21 22:08:43";s:7:"package";s:71:"https://downloads.wordpress.org/translation/theme/astra/1.4.1/ru_RU.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(288, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1533289310;s:7:"checked";a:5:{s:41:"advanced-custom-fields-pro-master/acf.php";s:5:"5.6.2";s:19:"akismet/akismet.php";s:5:"4.0.3";s:25:"fakerpress/fakerpress.php";s:6:"0.4.11";s:9:"hello.php";s:3:"1.7";s:27:"cyr-and-lat/cyr-and-lat.php";s:5:"1.1.1";}s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.6";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:41:"advanced-custom-fields-pro-master/acf.php";O:8:"stdClass":8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:41:"advanced-custom-fields-pro-master/acf.php";s:11:"new_version";s:5:"5.7.1";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:6:"tested";s:5:"4.9.9";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:1:{s:7:"default";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg";}}}s:12:"translations";a:2:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:10:"fakerpress";s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"0.4.7";s:7:"updated";s:19:"2016-04-07 17:46:08";s:7:"package";s:77:"https://downloads.wordpress.org/translation/plugin/fakerpress/0.4.7/ru_RU.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"hello-dolly";s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"1.6";s:7:"updated";s:19:"2018-06-04 21:57:16";s:7:"package";s:76:"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.6/ru_RU.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:3:{s:25:"fakerpress/fakerpress.php";O:8:"stdClass":9:{s:2:"id";s:24:"w.org/plugins/fakerpress";s:4:"slug";s:10:"fakerpress";s:6:"plugin";s:25:"fakerpress/fakerpress.php";s:11:"new_version";s:6:"0.4.11";s:3:"url";s:41:"https://wordpress.org/plugins/fakerpress/";s:7:"package";s:53:"https://downloads.wordpress.org/plugin/fakerpress.zip";s:5:"icons";a:3:{s:2:"2x";s:63:"https://ps.w.org/fakerpress/assets/icon-256x256.png?rev=1846090";s:2:"1x";s:55:"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090";s:3:"svg";s:55:"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090";}s:7:"banners";a:2:{s:2:"2x";s:66:"https://ps.w.org/fakerpress/assets/banner-1544x500.png?rev=1152002";s:2:"1x";s:65:"https://ps.w.org/fakerpress/assets/banner-772x250.png?rev=1152002";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:27:"cyr-and-lat/cyr-and-lat.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/cyr-and-lat";s:4:"slug";s:11:"cyr-and-lat";s:6:"plugin";s:27:"cyr-and-lat/cyr-and-lat.php";s:11:"new_version";s:5:"1.1.1";s:3:"url";s:42:"https://wordpress.org/plugins/cyr-and-lat/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/cyr-and-lat.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/cyr-and-lat/assets/icon-256x256.jpg?rev=1877806";s:2:"1x";s:64:"https://ps.w.org/cyr-and-lat/assets/icon-128x128.jpg?rev=1877806";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/cyr-and-lat/assets/banner-1544x500.jpg?rev=1877806";s:2:"1x";s:66:"https://ps.w.org/cyr-and-lat/assets/banner-772x250.jpg?rev=1877806";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1532436204:1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_wp_page_template', 'user-profile.php'),
(6, 7, '_edit_lock', '1531298732:1'),
(7, 7, '_edit_last', '1'),
(8, 12, '_wp_trash_meta_status', 'publish'),
(9, 12, '_wp_trash_meta_time', '1532436527'),
(10, 14, '_menu_item_type', 'custom'),
(11, 14, '_menu_item_menu_item_parent', '0'),
(12, 14, '_menu_item_object_id', '14'),
(13, 14, '_menu_item_object', 'custom'),
(14, 14, '_menu_item_target', ''),
(15, 14, '_menu_item_classes', 'a:1:{i:0;s:8:"nav-item";}'),
(16, 14, '_menu_item_xfn', ''),
(17, 14, '_menu_item_url', 'http://wp-auth/'),
(19, 15, '_menu_item_type', 'post_type'),
(20, 15, '_menu_item_menu_item_parent', '0'),
(21, 15, '_menu_item_object_id', '5'),
(22, 15, '_menu_item_object', 'page'),
(23, 15, '_menu_item_target', ''),
(24, 15, '_menu_item_classes', 'a:1:{i:0;s:8:"nav-item";}'),
(25, 15, '_menu_item_xfn', ''),
(26, 15, '_menu_item_url', ''),
(28, 16, '_menu_item_type', 'post_type'),
(29, 16, '_menu_item_menu_item_parent', '0'),
(30, 16, '_menu_item_object_id', '2'),
(31, 16, '_menu_item_object', 'page'),
(32, 16, '_menu_item_target', ''),
(33, 16, '_menu_item_classes', 'a:1:{i:0;s:8:"nav-item";}'),
(34, 16, '_menu_item_xfn', ''),
(35, 16, '_menu_item_url', ''),
(37, 17, '_wp_attached_file', '2018/07/5700825c-c1df-3d03-a2af-a903307799d0.jpg'),
(38, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:399;s:6:"height";i:319;s:4:"file";s:48:"2018/07/5700825c-c1df-3d03-a2af-a903307799d0.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"5700825c-c1df-3d03-a2af-a903307799d0-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:48:"5700825c-c1df-3d03-a2af-a903307799d0-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(39, 17, 'fakerpress_flag', '1'),
(40, 18, 'fakerpress_flag', '1'),
(41, 19, '_wp_attached_file', '2018/07/0ac0e5dc-417e-3d2b-872a-05e26038db8f.jpg'),
(42, 19, '_wp_attachment_metadata', 'a:0:{}'),
(43, 19, 'fakerpress_flag', '1'),
(44, 18, '_thumbnail_id', '19'),
(45, 20, 'fakerpress_flag', '1'),
(46, 21, '_wp_attached_file', '2018/07/a3a845d2-038f-3f1d-bae0-55f9774a5ab5.jpg'),
(47, 21, '_wp_attachment_metadata', 'a:0:{}'),
(48, 21, 'fakerpress_flag', '1'),
(49, 20, '_thumbnail_id', '21'),
(50, 22, '_wp_attached_file', '2018/07/cf9dc588-1241-3020-9d68-3d8a76070c48.jpg'),
(51, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:569;s:6:"height";i:455;s:4:"file";s:48:"2018/07/cf9dc588-1241-3020-9d68-3d8a76070c48.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"cf9dc588-1241-3020-9d68-3d8a76070c48-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:48:"cf9dc588-1241-3020-9d68-3d8a76070c48-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(52, 22, 'fakerpress_flag', '1'),
(53, 23, '_wp_attached_file', '2018/07/11c6c74a-b4ec-3909-9f48-518468f61d34.jpg'),
(54, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:423;s:6:"height";i:338;s:4:"file";s:48:"2018/07/11c6c74a-b4ec-3909-9f48-518468f61d34.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"11c6c74a-b4ec-3909-9f48-518468f61d34-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:48:"11c6c74a-b4ec-3909-9f48-518468f61d34-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(55, 23, 'fakerpress_flag', '1'),
(56, 24, 'fakerpress_flag', '1'),
(57, 25, '_wp_attached_file', '2018/07/0497916b-7afa-3afc-9f1a-95c79e766af9.jpg'),
(58, 25, '_wp_attachment_metadata', 'a:0:{}'),
(59, 25, 'fakerpress_flag', '1'),
(60, 24, '_thumbnail_id', '25'),
(61, 26, '_wp_attached_file', '2018/07/d062fdb2-8d73-3b67-bf0f-215b41e2e7f5.jpg'),
(62, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:389;s:6:"height";i:311;s:4:"file";s:48:"2018/07/d062fdb2-8d73-3b67-bf0f-215b41e2e7f5.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"d062fdb2-8d73-3b67-bf0f-215b41e2e7f5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:48:"d062fdb2-8d73-3b67-bf0f-215b41e2e7f5-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(63, 26, 'fakerpress_flag', '1'),
(64, 27, '_wp_attached_file', '2018/07/1efd4570-7b9d-3b7b-b6a1-218c73b33756.jpg'),
(65, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1198;s:6:"height";i:798;s:4:"file";s:48:"2018/07/1efd4570-7b9d-3b7b-b6a1-218c73b33756.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"1efd4570-7b9d-3b7b-b6a1-218c73b33756-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"1efd4570-7b9d-3b7b-b6a1-218c73b33756-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:48:"1efd4570-7b9d-3b7b-b6a1-218c73b33756-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:49:"1efd4570-7b9d-3b7b-b6a1-218c73b33756-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(66, 27, 'fakerpress_flag', '1'),
(67, 28, '_wp_attached_file', '2018/07/47887930-176f-3aea-a76d-4409730902de.jpg'),
(68, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:595;s:6:"height";i:476;s:4:"file";s:48:"2018/07/47887930-176f-3aea-a76d-4409730902de.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"47887930-176f-3aea-a76d-4409730902de-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:48:"47887930-176f-3aea-a76d-4409730902de-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(69, 28, 'fakerpress_flag', '1'),
(70, 29, 'fakerpress_flag', '1'),
(71, 30, '_wp_attached_file', '2018/07/6dcb0d09-c60a-3a6a-96cd-8c4a43c2f14c.jpg'),
(72, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4858;s:6:"height";i:3238;s:4:"file";s:48:"2018/07/6dcb0d09-c60a-3a6a-96cd-8c4a43c2f14c.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"6dcb0d09-c60a-3a6a-96cd-8c4a43c2f14c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"6dcb0d09-c60a-3a6a-96cd-8c4a43c2f14c-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:48:"6dcb0d09-c60a-3a6a-96cd-8c4a43c2f14c-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:49:"6dcb0d09-c60a-3a6a-96cd-8c4a43c2f14c-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(73, 30, 'fakerpress_flag', '1'),
(74, 29, '_thumbnail_id', '30'),
(75, 31, '_wp_attached_file', '2018/07/6014a3ab-6296-3ce7-a42e-a711dcdad7de.jpg'),
(76, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1156;s:6:"height";i:770;s:4:"file";s:48:"2018/07/6014a3ab-6296-3ce7-a42e-a711dcdad7de.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"6014a3ab-6296-3ce7-a42e-a711dcdad7de-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"6014a3ab-6296-3ce7-a42e-a711dcdad7de-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:48:"6014a3ab-6296-3ce7-a42e-a711dcdad7de-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:49:"6014a3ab-6296-3ce7-a42e-a711dcdad7de-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(77, 31, 'fakerpress_flag', '1'),
(78, 32, '_wp_attached_file', '2018/07/b2812fdf-9b50-3324-b9d6-712ea88e4bf6.jpg'),
(79, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:478;s:6:"height";i:382;s:4:"file";s:48:"2018/07/b2812fdf-9b50-3324-b9d6-712ea88e4bf6.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"b2812fdf-9b50-3324-b9d6-712ea88e4bf6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:48:"b2812fdf-9b50-3324-b9d6-712ea88e4bf6-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(80, 32, 'fakerpress_flag', '1'),
(81, 33, '_wp_attached_file', '2018/07/635eefae-08e4-3269-8b45-73365da292e6.jpg'),
(82, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1344;s:6:"height";i:896;s:4:"file";s:48:"2018/07/635eefae-08e4-3269-8b45-73365da292e6.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"635eefae-08e4-3269-8b45-73365da292e6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"635eefae-08e4-3269-8b45-73365da292e6-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:48:"635eefae-08e4-3269-8b45-73365da292e6-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:49:"635eefae-08e4-3269-8b45-73365da292e6-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(83, 33, 'fakerpress_flag', '1'),
(84, 34, 'fakerpress_flag', '1'),
(85, 35, '_wp_attached_file', '2018/07/113d4b5a-111e-3f17-a215-80e340a9713a.jpg'),
(86, 35, '_wp_attachment_metadata', 'a:0:{}'),
(87, 35, 'fakerpress_flag', '1'),
(88, 34, '_thumbnail_id', '35'),
(89, 36, '_wp_attached_file', '2018/07/f19bd664-8ca7-3b0d-b1ef-6a9a952e938b.jpg'),
(90, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:509;s:6:"height";i:407;s:4:"file";s:48:"2018/07/f19bd664-8ca7-3b0d-b1ef-6a9a952e938b.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"f19bd664-8ca7-3b0d-b1ef-6a9a952e938b-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:48:"f19bd664-8ca7-3b0d-b1ef-6a9a952e938b-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(91, 36, 'fakerpress_flag', '1'),
(92, 37, 'fakerpress_flag', '1'),
(93, 38, '_wp_attached_file', '2018/07/92b27699-6d88-3a0c-84d9-5cad03dece91.jpg'),
(94, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3456;s:6:"height";i:2304;s:4:"file";s:48:"2018/07/92b27699-6d88-3a0c-84d9-5cad03dece91.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"92b27699-6d88-3a0c-84d9-5cad03dece91-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"92b27699-6d88-3a0c-84d9-5cad03dece91-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:48:"92b27699-6d88-3a0c-84d9-5cad03dece91-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:49:"92b27699-6d88-3a0c-84d9-5cad03dece91-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(95, 38, 'fakerpress_flag', '1'),
(96, 37, '_thumbnail_id', '38'),
(97, 39, '_wp_attached_file', '2018/07/0668eb5e-8cad-3932-9a77-4f87d1222686.jpg'),
(98, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:329;s:6:"height";i:263;s:4:"file";s:48:"2018/07/0668eb5e-8cad-3932-9a77-4f87d1222686.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"0668eb5e-8cad-3932-9a77-4f87d1222686-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:48:"0668eb5e-8cad-3932-9a77-4f87d1222686-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(99, 39, 'fakerpress_flag', '1'),
(100, 40, 'fakerpress_flag', '1'),
(101, 41, 'fakerpress_flag', '1'),
(102, 42, '_wp_attached_file', '2018/07/90ec0d6e-5c09-37c8-aeeb-64c6f40c78f8.jpg'),
(103, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:5616;s:6:"height";i:3744;s:4:"file";s:48:"2018/07/90ec0d6e-5c09-37c8-aeeb-64c6f40c78f8.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"90ec0d6e-5c09-37c8-aeeb-64c6f40c78f8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"90ec0d6e-5c09-37c8-aeeb-64c6f40c78f8-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:48:"90ec0d6e-5c09-37c8-aeeb-64c6f40c78f8-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:49:"90ec0d6e-5c09-37c8-aeeb-64c6f40c78f8-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(104, 42, 'fakerpress_flag', '1'),
(105, 41, '_thumbnail_id', '42'),
(106, 43, '_wp_attached_file', '2018/07/c501f4bb-03c8-3da9-8a6a-60e9cb82b374.jpg'),
(107, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1088;s:6:"height";i:725;s:4:"file";s:48:"2018/07/c501f4bb-03c8-3da9-8a6a-60e9cb82b374.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"c501f4bb-03c8-3da9-8a6a-60e9cb82b374-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"c501f4bb-03c8-3da9-8a6a-60e9cb82b374-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:48:"c501f4bb-03c8-3da9-8a6a-60e9cb82b374-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:49:"c501f4bb-03c8-3da9-8a6a-60e9cb82b374-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(108, 43, 'fakerpress_flag', '1'),
(109, 44, 'fakerpress_flag', '1'),
(110, 45, '_wp_attached_file', '2018/07/2b78ce12-469a-37a5-9332-c87a355429b4.jpg'),
(111, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3888;s:6:"height";i:2592;s:4:"file";s:48:"2018/07/2b78ce12-469a-37a5-9332-c87a355429b4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"2b78ce12-469a-37a5-9332-c87a355429b4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"2b78ce12-469a-37a5-9332-c87a355429b4-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:48:"2b78ce12-469a-37a5-9332-c87a355429b4-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:49:"2b78ce12-469a-37a5-9332-c87a355429b4-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(112, 45, 'fakerpress_flag', '1'),
(113, 44, '_thumbnail_id', '45'),
(114, 46, 'fakerpress_flag', '1'),
(115, 47, '_wp_attached_file', '2018/07/03320fd5-b8ce-337a-a28b-8f351cdc5735.jpg'),
(116, 47, '_wp_attachment_metadata', 'a:0:{}'),
(117, 47, 'fakerpress_flag', '1'),
(118, 46, '_thumbnail_id', '47'),
(119, 48, '_edit_lock', '1532516029:1'),
(120, 24, '_edit_lock', '1533103961:1'),
(121, 24, '_edit_last', '1'),
(122, 48, '_edit_last', '1'),
(123, 24, '_wp_page_template', 'SP-single-page.php'),
(124, 24, 'prod_price', '150'),
(125, 24, '_prod_price', 'field_5b584104f46f2'),
(126, 24, 'size_field', '3'),
(127, 24, '_size_field', 'field_5b5844a7f46f3'),
(128, 24, 'colors_field', '2'),
(129, 24, '_colors_field', 'field_5b584646daa90'),
(130, 24, 'size_field_0_size_number', '33'),
(131, 24, '_size_field_0_size_number', 'field_5b5845b8f46f4'),
(132, 24, 'size_field_1_size_number', '32'),
(133, 24, '_size_field_1_size_number', 'field_5b5845b8f46f4'),
(134, 24, 'colors_field_0_color_product', '#1e73be'),
(135, 24, '_colors_field_0_color_product', 'field_5b584646daa91'),
(136, 24, 'colors_field_1_color_product', '#dd3333'),
(137, 24, '_colors_field_1_color_product', 'field_5b584646daa91'),
(138, 24, 'product_img', ''),
(139, 24, '_product_img', 'field_5b5847c761968'),
(140, 24, 'product_img-field_0_product_img', '45'),
(141, 24, '_product_img-field_0_product_img', 'field_5b584a3148765'),
(142, 24, 'product_img-field_1_product_img', '43'),
(143, 24, '_product_img-field_1_product_img', 'field_5b584a3148765'),
(144, 24, 'product_img-field_2_product_img', '42'),
(145, 24, '_product_img-field_2_product_img', 'field_5b584a3148765'),
(146, 24, 'product_img-field_3_product_img', '38'),
(147, 24, '_product_img-field_3_product_img', 'field_5b584a3148765'),
(148, 24, 'product_img-field', '4'),
(149, 24, '_product_img-field', 'field_5b5847c761968'),
(150, 24, 'size_field_2_size_number', '43'),
(151, 24, '_size_field_2_size_number', 'field_5b5845b8f46f4'),
(152, 57, '_edit_lock', '1532516216:1'),
(153, 57, '_edit_last', '1'),
(154, 40, '_edit_last', '1'),
(155, 40, '_wp_page_template', 'SP-single-page.php'),
(156, 40, '_edit_lock', '1533102378:1'),
(157, 44, '_edit_last', '1'),
(158, 44, '_wp_page_template', 'SP-single-page.php'),
(159, 44, '_edit_lock', '1533102531:1'),
(160, 18, '_edit_last', '1'),
(161, 18, '_wp_page_template', 'SP-single-page.php'),
(162, 18, '_edit_lock', '1533102538:1'),
(163, 40, 'prod_price', ''),
(164, 40, '_prod_price', 'field_5b584104f46f2'),
(165, 40, 'size_field', ''),
(166, 40, '_size_field', 'field_5b5844a7f46f3'),
(167, 40, 'colors_field', ''),
(168, 40, '_colors_field', 'field_5b584646daa90'),
(169, 40, 'product_img-field', ''),
(170, 40, '_product_img-field', 'field_5b5847c761968'),
(171, 20, '_edit_last', '1'),
(172, 20, '_wp_page_template', 'SP-single-page.php'),
(173, 20, '_edit_lock', '1533102542:1'),
(174, 29, '_edit_last', '1'),
(175, 29, '_wp_page_template', 'SP-single-page.php'),
(176, 29, '_edit_lock', '1533102547:1'),
(177, 41, '_edit_last', '1'),
(178, 41, '_wp_page_template', 'SP-single-page.php'),
(179, 41, '_edit_lock', '1533102551:1'),
(180, 46, '_edit_last', '1'),
(181, 46, '_wp_page_template', 'SP-single-page.php'),
(182, 46, '_edit_lock', '1533102555:1'),
(183, 37, '_edit_last', '1'),
(184, 37, '_wp_page_template', 'SP-single-page.php'),
(185, 37, '_edit_lock', '1533102560:1'),
(186, 34, '_edit_last', '1'),
(187, 34, '_wp_page_template', 'SP-single-page.php'),
(188, 34, '_edit_lock', '1533102565:1'),
(189, 58, '_edit_lock', '1533276508:1'),
(190, 58, '_edit_last', '1'),
(191, 1, 'wbcr_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(192, 14, 'wbcr_wp_old_slug', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f'),
(193, 58, 'wbcr_wp_old_slug', '%d0%b8%d0%bd%d0%b4%d0%b8%d0%b2%d0%b8%d0%b4%d1%83%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d0%b9-%d0%b7%d0%b0%d0%ba%d0%b7%d0%b0%d0%b7'),
(194, 58, '_wp_page_template', 'order-page.php'),
(195, 60, '_menu_item_type', 'post_type'),
(196, 60, '_menu_item_menu_item_parent', '0'),
(197, 60, '_menu_item_object_id', '58'),
(198, 60, '_menu_item_object', 'page'),
(199, 60, '_menu_item_target', ''),
(200, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(201, 60, '_menu_item_xfn', ''),
(202, 60, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-11 10:59:23', '2018-07-11 07:59:23', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', 'privet-mir', '', '', '2018-07-11 10:59:23', '2018-07-11 07:59:23', '', 0, 'http://wp-auth/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-11 10:59:23', '2018-07-11 07:59:23', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://wp-auth/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-07-11 10:59:23', '2018-07-11 07:59:23', '', 0, 'http://wp-auth/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-07-11 10:59:23', '2018-07-11 07:59:23', '<h2>Кто мы</h2><p>Наш адрес сайта: http://wp-auth.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email ("хеш") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность "Запомнить меня", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-07-11 10:59:23', '2018-07-11 07:59:23', '', 0, 'http://wp-auth/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-07-11 11:20:10', '2018-07-11 08:20:10', '', 'user', '', 'publish', 'closed', 'closed', '', 'user', '', '', '2018-07-11 11:20:10', '2018-07-11 08:20:10', '', 0, 'http://wp-auth/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-07-11 11:20:10', '2018-07-11 08:20:10', '', 'user', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-11 11:20:10', '2018-07-11 08:20:10', '', 5, 'http://wp-auth/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-07-11 11:39:59', '2018-07-11 08:39:59', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"5";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'for user', 'for-user', 'publish', 'closed', 'closed', '', 'group_5b45c19b656f7', '', '', '2018-07-11 11:44:36', '2018-07-11 08:44:36', '', 0, 'http://wp-auth/?post_type=acf-field-group&#038;p=7', 0, 'acf-field-group', '', 0),
(8, 1, '2018-07-11 11:39:59', '2018-07-11 08:39:59', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"table";s:10:"sub_fields";a:0:{}}', 'group one', 'group_one', 'publish', 'closed', 'closed', '', 'field_5b45c1a730e71', '', '', '2018-07-11 11:39:59', '2018-07-11 08:39:59', '', 7, 'http://wp-auth/?post_type=acf-field&p=8', 0, 'acf-field', '', 0),
(9, 1, '2018-07-11 11:39:59', '2018-07-11 08:39:59', 'a:12:{s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";}', 'number', 'number', 'publish', 'closed', 'closed', '', 'field_5b45c21b30e72', '', '', '2018-07-11 11:39:59', '2018-07-11 08:39:59', '', 8, 'http://wp-auth/?post_type=acf-field&p=9', 0, 'acf-field', '', 0),
(10, 1, '2018-07-11 11:39:59', '2018-07-11 08:39:59', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'zakaz', 'zakaz', 'publish', 'closed', 'closed', '', 'field_5b45c23330e73', '', '', '2018-07-11 11:39:59', '2018-07-11 08:39:59', '', 8, 'http://wp-auth/?post_type=acf-field&p=10', 1, 'acf-field', '', 0),
(11, 1, '2018-07-11 11:39:59', '2018-07-11 08:39:59', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'stoimost', 'stoimost', 'publish', 'closed', 'closed', '', 'field_5b45c24830e74', '', '', '2018-07-11 11:39:59', '2018-07-11 08:39:59', '', 8, 'http://wp-auth/?post_type=acf-field&p=11', 2, 'acf-field', '', 0),
(12, 1, '2018-07-24 15:48:47', '2018-07-24 12:48:47', '{\n    "astra-settings[header-main-rt-section]": {\n        "value": "search",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-07-24 12:48:47"\n    },\n    "astra-settings[header-main-layout-width]": {\n        "value": "full",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-07-24 12:48:47"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1c5d3713-1d00-4c94-a919-f6603c00a943', '', '', '2018-07-24 15:48:47', '2018-07-24 12:48:47', '', 0, 'http://wp-auth/1c5d3713-1d00-4c94-a919-f6603c00a943/', 0, 'customize_changeset', '', 0),
(14, 1, '2018-07-25 10:12:49', '2018-07-25 07:12:49', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaja', '', '', '2018-08-03 09:11:02', '2018-08-03 06:11:02', '', 0, 'http://wp-auth/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2018-07-25 10:12:49', '2018-07-25 07:12:49', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2018-08-03 09:11:02', '2018-08-03 06:11:02', '', 0, 'http://wp-auth/?p=15', 2, 'nav_menu_item', '', 0),
(16, 1, '2018-07-25 10:12:49', '2018-07-25 07:12:49', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-08-03 09:11:02', '2018-08-03 06:11:02', '', 0, 'http://wp-auth/?p=16', 3, 'nav_menu_item', '', 0),
(17, 1, '2018-07-25 12:14:12', '2018-07-25 09:14:12', '', '', '', 'inherit', 'open', 'closed', '', '17', '', '', '2018-07-25 12:14:12', '2018-07-25 09:14:12', '', 0, 'http://wp-auth/wp-content/uploads/2018/07/5700825c-c1df-3d03-a2af-a903307799d0.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 2, '2018-07-24 20:03:56', '2018-07-24 17:03:56', '<hr>\n<h1>Non quam sit sapiente quas nihil amet. Iure in id quos voluptatem. Harum commodi suscipit nobis eius</h1>\n<ul><li>Id ab tempore qui dolores quod cupiditate</li><li>Hic ut dolorem ducimus</li><li>Perspiciatis quo dolores non</li></ul>\n<h6>Aut quisquam et nisi omnis dolores consequatur molestias</h6>\n<hr>\n<p>Omnis maxime nihil quo. Dolores eveniet omnis consectetur voluptatem. Illo tenetur quia assumenda. In et fugit nostrum et. Velit modi officia quod Beatae voluptatem natus Laudantium pariatur voluptatem quia. Voluptatibus aut amet optio at. eos veritatis sed perferendis necessitatibus Et rem sint suscipit maiores. Assumenda ea qui et quam quo incidunt. voluptatibus corporis et sapiente. Ipsam deserunt et velit optio. nihil esse asperiores provident eveniet. Voluptas ut ab ut facere. qui asperiores nisi deserunt. Distinctio et eos repellendus reprehenderit molestiae commodi. Veritatis a est aut aperiam. Eum esse provident repellendus et. Molestiae illo quia fugiat quo consequatur aut. Vero aut et dolorem voluptate Illo culpa possimus sit quo quos. ut repellendus temporibus fugit aut. Est quas ipsam quia. Qui eum modi enim quia. quis et sunt possimus aperiam. Inventore dolorem iste quia ut. Libero odio et qui. Rem ipsam sit quo Similique delectus aut aliquid Sint vero eaque vel numquam veniam id. quis magni ex voluptatem quos. Sit sit laudantium quis quos. Dolore eum debitis omnis ut Voluptatum et quidem quasi adipisci amet voluptas. Enim culpa <a title="Sint porro voluptatem eum tenetur dolore voluptatem." href="http://wiza.info/">commodi aut</a> qui modi. In suscipit voluptatem praesentium fugit minima.</p>\n<hr>\n<!--more-->\n<ol><li>Molestias qui</li><li>Necessitatibus</li><li>A omnis libero sed sit</li><li>In occaecati possimus</li></ol>\n<hr>\n<h3>Debitis omnis architecto tempore sit. Veritatis odio quis aspernatur excepturi nisi vitae</h3>\n<blockquote>Omnis quia quas et impedit. Adipisci rerum ipsa reiciendis molestias. Sed tempora accusamus dolores voluptatem et voluptatem est. Quia consequatur eos voluptate temporibus. Asperiores quibusdam ipsum voluptatem. Dignissimos rem facilis vel culpa sit cumque nemo delectus. Cupiditate praesentium sed consequatur animi molestiae. Quia eos in qui dolor sit voluptatibus. Et consequatur illo est iste magni quo excepturi. Hic enim nostrum dolorem neque provident voluptate sit. Odio expedita esse totam mollitia nihil repellendus. Necessitatibus impedit sit doloribus quasi quod. Magni quas exercitationem nihil. Debitis dolores est inventore sed eaque.</blockquote>\n<img alt="Fugit quaerat ipsa tempora architecto at et dolores vitae" src="http://wp-auth/wp-content/uploads/2018/07/5700825c-c1df-3d03-a2af-a903307799d0.jpg">', 'Aut quos repellat qui commodi tempore', 'Magni velit nesciunt reiciendis ut incidunt molestias fuga qui architecto sit placeat qui quo officiis nesciunt eaque molestiae voluptatem voluptatem voluptatem id nulla amet commodi et provident quas voluptatem nihil a vel vel perspiciatis in.\n\nMaiores blanditiis dolorum eaque quis sed velit numquam et nam eveniet est ea ipsa sapiente accusamus consequatur quia provident cum sed odit quia eligendi consectetur maiores doloremque expedita modi qui aut amet veniam numquam et voluptatem blanditiis.\n\nNisi quia excepturi laudantium sed quisquam deleniti porro eos dolores suscipit non illo recusandae est unde ipsum aut dolores ut voluptatibus qui blanditiis eveniet natus quo.', 'publish', 'open', 'closed', '', 'aut-quos-repellat-qui-commodi-tempore', '', '', '2018-08-01 08:48:58', '2018-08-01 05:48:58', '', 0, 'http://wp-auth/product/aut-quos-repellat-qui-commodi-tempore/', 0, 'product', '', 0),
(19, 1, '2018-07-25 12:14:12', '2018-07-25 09:14:12', '', '', '', 'inherit', 'open', 'closed', '', '19', '', '', '2018-07-25 12:14:12', '2018-07-25 09:14:12', '', 18, 'http://wp-auth/wp-content/uploads/2018/07/0ac0e5dc-417e-3d2b-872a-05e26038db8f.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-07-24 19:52:23', '2018-07-24 16:52:23', '<h4>Dolor vel eveniet accusamus unde maiores alias fugit molestiae. A dignissimos aut sequi iste consequatur ullam id. Assumenda repellat ut voluptatum qui omnis quas</h4>\n<ol><li>Ex repudiandae facere perferendis non deserunt</li><li>Est quis qui sed eum</li><li>Neque alias minus illo</li></ol>\n<!--more-->\n<hr>\n<h5>Quisquam nihil rem ut qui dolores distinctio. Ut earum iusto repellendus</h5>\n<ul><li>Neque aut id velit ea aut enim fugit</li><li>Necessitatibus</li><li>Magnam sint</li><li>In et ex nemo voluptate ea sed</li></ul>\n<hr>\n<h4>Autem reiciendis et officia quo. Magni et quia debitis unde et</h4>\n<p>Placeat et maxime et facere culpa laboriosam. Reprehenderit suscipit atque suscipit doloribus autem quia. Labore minima tempore modi blanditiis sequi. Totam vel nisi aut sit rem et magni impedit. Est eos aut voluptatem modi aut ab. Accusamus iusto perferendis aliquam quia vitae. Qui saepe dolorem quis non. Omnis et magni a reprehenderit alias officiis ipsum. Quia qui quibusdam rerum. Laudantium quibusdam pariatur unde ut explicabo. Quia dolore iste iste. Quibusdam officia voluptatibus beatae recusandae qui. Repellendus praesentium eaque delectus ab eius. Sint hic sint fuga odio. Qui velit totam commodi quis provident ad voluptates. Maiores tempora est natus molestias animi qui sapiente. Est voluptatibus aliquam libero tenetur. Quia illum iste magnam similique sapiente et voluptatem. Est deleniti facere provident eos. Vitae ipsam doloribus in ut ea saepe et. Officiis officia sit et earum quas mollitia tempora. Quam numquam facere earum enim pariatur qui. Consequatur atque praesentium itaque.</p>\n<h5>Eos ipsum aut aliquid dolore dolores. Neque dolorem est facere reprehenderit at dolor. Harum et rerum est qui maxime tempore ut eum</h5>\n<blockquote>Doloremque maiores veniam pariatur Ut quis velit error. Voluptatem enim officiis adipisci consectetur quisquam. Sit velit commodi in sit <a title="Perferendis iure voluptatum tempora aliquid adipisci." href="https://www.yundt.com/id-accusantium-beatae-natus-dicta-et">quaerat et. Non esse quo accusantium</a> Praesentium facilis nisi quasi quo Consequuntur perferendis corporis quasi aut distinctio Quae occaecati ut minus ad ut. Recusandae ut culpa culpa. Iste quia amet facilis perferendis. cum unde at et voluptates. Animi quasi cum explicabo explicabo Deserunt earum numquam numquam. Dicta libero labore aut fugiat dolore. Officiis hic rerum ullam Dolores in harum sed deserunt necessitatibus voluptas. voluptates necessitatibus id quae. Voluptas sint officiis sapiente quisquam. mollitia officiis et saepe illum sint ratione Iusto quas explicabo aperiam accusantium. Provident enim corrupti quia. Rem fugiat minima atque omnis. Unde animi <a title="Animi similique rerum libero." href="http://marvin.com/">corporis</a> Voluptas odit et omnis Cum omnis nesciunt quis exercitationem. Expedita ea mollitia Magnam excepturi molestiae Facere ad ipsum dolore. aut modi asperiores numquam aut quisquam. nobis nihil sapiente rerum minima Dolorem et reiciendis minus voluptatem.</blockquote>\n<ol><li>Praesentium enim sed incidunt eum</li><li>Tempora ea ullam ea iste reiciendis</li></ol>', 'Consequuntur est odio vero sint et consequatur', 'Accusamus neque qui sit repellat suscipit officia occaecati qui aspernatur mollitia a voluptates eum quis tempore non neque eum asperiores aut quaerat quibusdam distinctio sunt numquam sapiente temporibus quia quod officia expedita numquam voluptate.\n\nEx rerum voluptatem temporibus dolor aut aut harum et quod reiciendis labore sed esse dolores iusto ducimus deleniti similique et adipisci voluptate ratione quisquam earum eveniet.\n\nQuibusdam eos sunt quo doloribus aut accusantium itaque et eum qui sapiente et reiciendis sunt praesentium facilis blanditiis est quia adipisci aut quam incidunt et quo et voluptatem quo laborum.', 'publish', 'open', 'closed', '', 'consequuntur-est-odio-vero-sint-et-consequatur', '', '', '2018-08-01 08:49:02', '2018-08-01 05:49:02', '', 0, 'http://wp-auth/product/consequuntur-est-odio-vero-sint-et-consequatur/', 0, 'product', '', 0),
(21, 1, '2018-07-25 12:14:13', '2018-07-25 09:14:13', '', '', '', 'inherit', 'open', 'closed', '', '21', '', '', '2018-07-25 12:14:13', '2018-07-25 09:14:13', '', 20, 'http://wp-auth/wp-content/uploads/2018/07/a3a845d2-038f-3f1d-bae0-55f9774a5ab5.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-07-25 12:14:13', '2018-07-25 09:14:13', '', '', '', 'inherit', 'open', 'closed', '', '22', '', '', '2018-07-25 12:14:13', '2018-07-25 09:14:13', '', 0, 'http://wp-auth/wp-content/uploads/2018/07/cf9dc588-1241-3020-9d68-3d8a76070c48.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-07-25 12:14:13', '2018-07-25 09:14:13', '', '', '', 'inherit', 'open', 'closed', '', '23', '', '', '2018-07-25 12:14:13', '2018-07-25 09:14:13', '', 0, 'http://wp-auth/wp-content/uploads/2018/07/11c6c74a-b4ec-3909-9f48-518468f61d34.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 2, '2018-07-24 22:50:42', '2018-07-24 19:50:42', '', 'Explicabo ut nisi et porro sint rerum', 'Placeat voluptatum est sed laboriosam vel facere odio rem harum dolore voluptates consequatur non consequatur accusamus adipisci perspiciatis illo dolorum neque sapiente soluta officiis voluptates molestiae est qui perspiciatis alias corporis ipsam fuga ut officiis ea fugiat est repellendus qui modi ut quia et incidunt iusto expedita ab unde dolor aperiam officia eum laudantium vel rerum saepe temporibus voluptatem excepturi et velit quo ipsam dolorem omnis fugit cumque accusantium maxime qui temporibus quaerat mollitia omnis voluptas laborum aut est dolores consectetur.', 'publish', 'open', 'closed', '', 'explicabo-ut-nisi-et-porro-sint-rerum', '', '', '2018-07-25 13:58:15', '2018-07-25 10:58:15', '', 0, 'http://wp-auth/product/explicabo-ut-nisi-et-porro-sint-rerum/', 0, 'product', '', 0),
(25, 1, '2018-07-25 12:14:14', '2018-07-25 09:14:14', '', '', '', 'inherit', 'open', 'closed', '', '25', '', '', '2018-07-25 12:14:14', '2018-07-25 09:14:14', '', 24, 'http://wp-auth/wp-content/uploads/2018/07/0497916b-7afa-3afc-9f1a-95c79e766af9.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-07-25 12:14:14', '2018-07-25 09:14:14', '', '', '', 'inherit', 'open', 'closed', '', '26', '', '', '2018-07-25 12:14:14', '2018-07-25 09:14:14', '', 0, 'http://wp-auth/wp-content/uploads/2018/07/d062fdb2-8d73-3b67-bf0f-215b41e2e7f5.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-07-25 12:14:16', '2018-07-25 09:14:16', '', '', '', 'inherit', 'open', 'closed', '', '27', '', '', '2018-07-25 12:14:16', '2018-07-25 09:14:16', '', 0, 'http://wp-auth/wp-content/uploads/2018/07/1efd4570-7b9d-3b7b-b6a1-218c73b33756.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-07-25 12:14:17', '2018-07-25 09:14:17', '', '', '', 'inherit', 'open', 'closed', '', '28', '', '', '2018-07-25 12:14:17', '2018-07-25 09:14:17', '', 0, 'http://wp-auth/wp-content/uploads/2018/07/47887930-176f-3aea-a76d-4409730902de.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 2, '2018-07-24 16:42:35', '2018-07-24 13:42:35', '<img src="http://wp-auth/wp-content/uploads/2018/07/d062fdb2-8d73-3b67-bf0f-215b41e2e7f5.jpg">\n<img class="alignright" alt="Aliquam ut" src="http://wp-auth/wp-content/uploads/2018/07/1efd4570-7b9d-3b7b-b6a1-218c73b33756.jpg">\n<!--more-->\n<img alt="Accusamus quaerat officiis maxime" src="http://wp-auth/wp-content/uploads/2018/07/47887930-176f-3aea-a76d-4409730902de.jpg">\n<hr>\n<h6>Et minima praesentium ea architecto nihil nihil eveniet est. Commodi est qui hic eum odit sit</h6>\n<ol><li>Aut dolores nostrum aut nulla</li><li>Odit rerum et fugit non</li></ol>\n<p>Doloribus qui minima sunt. non perspiciatis quia quam reprehenderit amet. Occaecati quia adipisci aut at atque. Quidem in <a title="Est vel impedit voluptas." href="http://www.reichel.com/">recusandae</a> ea sed. Quisquam beatae sint est et. excepturi aut natus rerum mollitia. Ipsum quo et qui. Quod voluptatem aut sint. Libero officiis consequatur aspernatur. earum sit reprehenderit at.</p>\n<h2>Placeat voluptatem ratione perferendis aut explicabo necessitatibus cupiditate facilis. Consequatur enim aspernatur nihil consequatur. Et qui sint nobis ut eius sunt rerum</h2>\n<p>Suscipit saepe velit sit mollitia soluta earum accusamus quisquam. Eaque consequuntur voluptas omnis asperiores ducimus totam qui. Necessitatibus ipsam blanditiis cupiditate sint quas et. Quisquam nihil architecto quis atque aperiam. Possimus rerum vitae eligendi praesentium harum odit. Reiciendis voluptatum amet cupiditate libero. Incidunt aut cumque aut et. Eum aspernatur facere maiores laboriosam. Culpa odit adipisci doloremque doloremque excepturi aut.</p>\n<p>Perspiciatis optio error esse fuga autem blanditiis. Qui est <a title="Aliquam alias molestias amet." href="http://www.hahn.com/est-perspiciatis-repellat-et-voluptatibus-nemo-sapiente">et</a> voluptatum nihil. Veniam consequatur sint maiores Odit amet ex minus ad. omnis dicta sit corrupti sequi. Sunt <a title="Odit est enim laborum illo ea ad dolorum nesciunt." href="http://www.aufderhar.com/dignissimos-qui-hic-neque-nulla-accusamus-fugiat">minus</a> ratione quos voluptatem. Vitae omnis exercitationem velit magni Minus explicabo rerum et vel officia error Rerum laborum quas beatae Incidunt ex assumenda officiis corrupti ad. Quas earum molestias <a title="Velit vitae recusandae." href="http://www.west.org/in-omnis-accusamus-aut-adipisci-sit-est-dolorem">et</a> Ab rerum veritatis eos nostrum. Nihil modi veniam repellat beatae est. aperiam sint accusantium et rem veniam. Facere consectetur ut rerum nam est soluta. Harum laudantium quod voluptate <a title="Dolorem aspernatur." href="http://huels.com/in-officia-corporis-sapiente-illo-aut-voluptatum-qui">commodi perferendis deserunt.</a> quos quod commodi. <a title="Quibusdam error." href="http://kris.biz/officiis-quisquam-ea-quisquam-asperiores.html">qui quam et voluptas</a> eos quae. asperiores quia ratione labore sit minus. In voluptates quia aperiam sunt. dolorem odit ad qui quisquam Laboriosam aut aut recusandae aliquam fuga <a title="Quae odio consequatur provident distinctio deserunt cum cupiditate." href="http://www.koss.org/perspiciatis-minus-laborum-quas-esse.html">Soluta tempora ut qui perferendis voluptate iusto.</a> a et voluptatem enim fugit ipsum. Error nulla odit inventore repellat. id quis explicabo molestiae quae dignissimos. Aliquid tempore consequatur beatae libero fugit consectetur. Sapiente deserunt ratione qui ducimus Id libero fugit <a title="Enim qui ratione eos." href="http://schroeder.com/quo-ea-nesciunt-sint-provident">maiores. Qui</a> aperiam quia ea eum. Ex repellendus minima doloribus. Qui earum possimus est quasi cum. adipisci autem quod veniam. Non quia <a title="Dolore fuga repudiandae et." href="http://www.jaskolski.com/sit-qui-eos-expedita-aliquam"><a title="Non aspernatur." href="https://robel.com/qui-voluptas-occaecati-fuga-earum-earum.html">et dolore quibusdam. Rem</a></a> quis cumque minus delectus consectetur quo. enim aut sunt Distinctio ducimus qui rerum voluptate non. Rerum maxime aut voluptatem ratione aspernatur.</p>\n<p>Voluptates repudiandae sunt officiis. Dolor rerum labore maxime eum itaque. Est aut alias consectetur quas omnis est. eaque laudantium veniam. Officia adipisci sed earum Quam id consequuntur nostrum fugiat sit Non similique quam est ut. Aut consequatur eum autem Maiores molestiae reprehenderit consequatur veritatis commodi aliquid Et suscipit sit similique. Similique ad corrupti ut rerum molestiae occaecati. voluptatem eos atque ratione. Laboriosam totam cumque voluptatem. Provident dignissimos facilis eaque iure. Qui vel praesentium voluptatum. non neque non qui. Velit quas assumenda aspernatur culpa. Dolor eum voluptatibus eum debitis. Vel officia molestiae ut. Illum eaque enim reprehenderit est. Perspiciatis voluptatum et consequuntur esse eaque rem. quidem voluptate molestiae dignissimos dignissimos. Quis optio tempore laboriosam odit. Facilis repellendus velit Accusamus quisquam harum eveniet magnam dolorum. Quia <a title="Voluptates." href="https://www.rolfson.com/vitae-non-dolorem-pariatur">eveniet corporis distinctio facilis eveniet recusandae. Voluptas vel</a> quos in et Distinctio ut dolores id. Velit non aut voluptate quod. quibusdam sed error dignissimos.</p>\n<h5>Nemo est sint modi</h5>\n<p>Maxime sapiente labore quis vitae labore nobis est. Hic et perferendis est dolore eveniet. Maiores qui non repellendus placeat libero. Dolorem reiciendis expedita odit quaerat facilis labore. Quia tempora ea error aut dolor ab nisi. Perspiciatis odio eius doloribus asperiores eum provident. Velit ut autem quis sit id illum quod. Tempore ea ullam qui est. Doloremque et sit nulla sint et autem. Quo reprehenderit possimus itaque praesentium numquam. Natus aut pariatur commodi reiciendis placeat. Quaerat aut iure dolores. Alias soluta aut officiis enim. Eos aliquid voluptatem ut magnam suscipit. Et animi qui doloremque neque reprehenderit ut. Autem eaque et ea nostrum aspernatur. Earum quisquam debitis non culpa enim officia. Odit assumenda molestiae nobis. Dolores autem a eos. Excepturi autem adipisci commodi et expedita sit occaecati aut. Voluptates provident necessitatibus laboriosam sapiente consectetur sed.</p>\n<blockquote>Voluptatem placeat non. debitis optio recusandae dolorem. Sequi adipisci repudiandae delectus. Vel maiores est dolore rerum magnam Aut reprehenderit at in atque ea a. Voluptas et accusantium quaerat veniam ullam magni. Debitis in quisquam ut. <a title="Error sunt." href="http://www.bernhard.net/">mollitia quidem deserunt.</a> delectus aut iure Quidem mollitia magni autem corrupti. Excepturi quae et ex. Nemo maiores quia aliquam. illo aliquid ipsum ut in. Harum <a title="Fugiat necessitatibus." href="http://www.mueller.net/">ut in magnam. Harum ratione odit</a> ratione. Enim eligendi voluptate et quo. Vel ex architecto. Magnam cupiditate odio incidunt. Accusantium ut vel occaecati dicta et. Laboriosam laborum esse vel. qui et fugit sed ex sed. ipsam rem cupiditate eaque recusandae. Perferendis dolorem est occaecati id <a title="Quod sed et et omnis tempora quaerat veniam." href="http://www.bahringer.biz/ad-debitis-aut-dolore-nam-nobis-tenetur">non</a> modi. Sunt rem molestias debitis omnis dolor ducimus. Illum incidunt quis ut nam aliquid et.</blockquote>', 'Consequatur voluptatem consequatur sint', '', 'publish', 'open', 'closed', '', 'consequatur-voluptatem-consequatur-sint', '', '', '2018-08-01 08:49:07', '2018-08-01 05:49:07', '', 0, 'http://wp-auth/product/consequatur-voluptatem-consequatur-sint/', 0, 'product', '', 0),
(30, 1, '2018-07-25 12:14:22', '2018-07-25 09:14:22', '', '', '', 'inherit', 'open', 'closed', '', '30', '', '', '2018-07-25 12:14:22', '2018-07-25 09:14:22', '', 29, 'http://wp-auth/wp-content/uploads/2018/07/6dcb0d09-c60a-3a6a-96cd-8c4a43c2f14c.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-07-25 12:14:28', '2018-07-25 09:14:28', '', '', '', 'inherit', 'open', 'closed', '', '31', '', '', '2018-07-25 12:14:28', '2018-07-25 09:14:28', '', 0, 'http://wp-auth/wp-content/uploads/2018/07/6014a3ab-6296-3ce7-a42e-a711dcdad7de.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-07-25 12:14:28', '2018-07-25 09:14:28', '', '', '', 'inherit', 'open', 'closed', '', '32', '', '', '2018-07-25 12:14:28', '2018-07-25 09:14:28', '', 0, 'http://wp-auth/wp-content/uploads/2018/07/b2812fdf-9b50-3324-b9d6-712ea88e4bf6.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-07-25 12:14:30', '2018-07-25 09:14:30', '', '', '', 'inherit', 'open', 'closed', '', '33', '', '', '2018-07-25 12:14:30', '2018-07-25 09:14:30', '', 0, 'http://wp-auth/wp-content/uploads/2018/07/635eefae-08e4-3269-8b45-73365da292e6.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 2, '2018-07-24 00:12:10', '2018-07-23 21:12:10', '<hr>\n<h6>Incidunt delectus ipsum sit non reiciendis. Natus non fugit laborum et. Placeat rem cum expedita amet</h6>\n<img class="aligncenter" src="http://wp-auth/wp-content/uploads/2018/07/6014a3ab-6296-3ce7-a42e-a711dcdad7de.jpg">\n<h1>Aut sed suscipit dolores aut sed excepturi quia qui. Ipsum voluptates quibusdam sequi similique</h1>\n<img alt="Facilis quae quasi maxime neque excepturi eaque autem vel" src="http://wp-auth/wp-content/uploads/2018/07/b2812fdf-9b50-3324-b9d6-712ea88e4bf6.jpg">\n<hr>\n<h6>Fuga dicta libero ullam ducimus cumque facere eos. Maxime odio omnis quod at magni</h6>\n<!--more-->\n<img alt="Harum quia neque natus inventore sed" src="http://wp-auth/wp-content/uploads/2018/07/0ac0e5dc-417e-3d2b-872a-05e26038db8f.jpg">\n<ol><li>Animi ut cupiditate illo eveniet</li><li>Velit pariatur explicabo quia non cupiditate</li><li>Quibusdam ut voluptas</li><li>Consectetur libero</li></ol>\n<h5>Quos deserunt est quo deleniti. Corporis fugiat neque voluptatem reprehenderit deleniti dicta ut. Et in error vero inventore magnam</h5>\n<img class="aligncenter" alt="Iure consequatur totam dolore incidunt" src="http://wp-auth/wp-content/uploads/2018/07/635eefae-08e4-3269-8b45-73365da292e6.jpg">', 'Est qui assumenda nihil necessitatibus', '', 'publish', 'open', 'closed', '', 'est-qui-assumenda-nihil-necessitatibus', '', '', '2018-08-01 08:49:25', '2018-08-01 05:49:25', '', 0, 'http://wp-auth/product/est-qui-assumenda-nihil-necessitatibus/', 0, 'product', '', 0),
(35, 1, '2018-07-25 12:14:31', '2018-07-25 09:14:31', '', '', '', 'inherit', 'open', 'closed', '', '35', '', '', '2018-07-25 12:14:31', '2018-07-25 09:14:31', '', 34, 'http://wp-auth/wp-content/uploads/2018/07/113d4b5a-111e-3f17-a215-80e340a9713a.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2018-07-25 12:14:31', '2018-07-25 09:14:31', '', '', '', 'inherit', 'open', 'closed', '', '36', '', '', '2018-07-25 12:14:31', '2018-07-25 09:14:31', '', 0, 'http://wp-auth/wp-content/uploads/2018/07/f19bd664-8ca7-3b0d-b1ef-6a9a952e938b.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 2, '2018-07-24 02:16:22', '2018-07-23 23:16:22', '<h2>Enim autem corporis id non quasi et. Fugiat nam deleniti laborum voluptatem et tenetur et. Sed assumenda odio ut magni nulla et</h2>\n<p>Id non et inventore et odio enim Omnis id qui odio omnis. Aliquid <a title="Numquam aut." href="http://murphy.com/sit-expedita-aut-culpa-veniam-inventore-ea-et">quo eos illum. Enim</a> rerum praesentium quasi delectus. Quis et impedit et qui natus. Velit aut voluptatibus quas aliquid. Corrupti iure facere et consequuntur nostrum vel. Iure sed ut deserunt sed Laudantium reiciendis est ipsam est Distinctio odit iure expedita</p>\n<!--more-->\n<h3>Fugit sint eum voluptatem. Dolor eos iusto aspernatur vero voluptatem at. Quia excepturi consectetur quia qui</h3>\n<ol><li>Iure nemo aut illum quod</li><li>Aliquam officiis ex beatae animi itaque et</li><li>Eos ut ab veniam</li><li>Eos eum nihil non vel aut</li><li>Mollitia deleniti et</li></ol>\n<h4>Qui unde earum laborum ad voluptas. Consequuntur qui ea vel eos ut voluptates dolorem</h4>\n<p>Assumenda rerum porro voluptatem assumenda sint ad. Velit sint excepturi numquam. Quasi necessitatibus eveniet voluptatibus. Et quo aperiam esse quo Molestiae impedit ipsum qui blanditiis quod corporis. Et fuga sapiente. Minus laboriosam numquam dolore et ad. et fuga sit omnis praesentium tempore. <a title="Ipsam blanditiis ut vel quis enim enim ab." href="https://www.price.com/et-dicta-ipsum-tenetur-tempore">rerum quis</a> dolore id. Sunt nisi dolorem excepturi voluptas eos.</p>\n<h3>Fuga consequatur et ipsa molestias quod voluptas</h3>\n<hr>\n<p>Maiores aut voluptas est rerum commodi. Maiores dolores numquam hic consequatur magni aliquam dolor. Libero ut expedita adipisci numquam reiciendis ipsa saepe. Nisi asperiores neque iure quos perspiciatis. Qui nihil asperiores deleniti dolor assumenda porro ut. Natus fugiat quia quaerat dolores voluptatem veniam incidunt. Doloremque non eius ut qui sapiente. Illo aut asperiores molestias delectus sed modi. Architecto similique alias debitis excepturi doloremque architecto voluptatem. Dicta necessitatibus nostrum dolorem voluptates veniam vero. Ut quos sunt dolore expedita cupiditate voluptatem. Dolorem porro illo similique quae necessitatibus fugiat neque. Occaecati necessitatibus molestiae quisquam eos. Voluptatum laudantium tenetur asperiores pariatur dolor qui perspiciatis et. Quia neque dicta enim debitis aliquid deserunt officiis. Voluptas qui nemo maiores ab rerum. Quo delectus quos ut quidem. Aut dolores similique rerum autem nihil ut et. Quis officiis omnis delectus quia neque quas tempora. Voluptatem placeat sunt ipsa. Pariatur occaecati accusantium et. Quibusdam ut mollitia sint. Saepe iure similique rerum illo quidem. Quisquam quibusdam tempore impedit harum quaerat culpa. Officia perspiciatis dolores nulla laboriosam maxime. Repudiandae qui quo quam quisquam quo.</p>\n<img class="aligncenter" alt="Voluptates esse vero quis eaque culpa" src="http://wp-auth/wp-content/uploads/2018/07/d062fdb2-8d73-3b67-bf0f-215b41e2e7f5.jpg">\n<h6>Nulla in natus saepe. Cupiditate minima quas explicabo quos exercitationem. Aspernatur amet enim ducimus. Ducimus non dolor voluptas voluptatem</h6>\n<img alt="Ducimus quis qui omnis perspiciatis molestiae consequatur ut non quos" src="http://wp-auth/wp-content/uploads/2018/07/f19bd664-8ca7-3b0d-b1ef-6a9a952e938b.jpg">\n<p>Reiciendis aut omnis nihil omnis expedita. Rem aut et cum sit Amet delectus accusantium eum sunt sed Quo non id Odio neque doloribus corrupti quas necessitatibus. Magni voluptatem dolorum. Accusantium iste dolores ut aut assumenda aliquid. Odit eligendi molestiae eum beatae. maiores eos quia omnis et doloremque <a title="Eaque praesentium atque." href="http://crona.com/rerum-autem-dolorem-qui-dicta-est-numquam">Corrupti quibusdam facilis illum</a> Odit incidunt qui enim. qui reiciendis deserunt est quam et. autem atque similique optio voluptas. numquam numquam harum molestias. At nostrum iusto voluptas quod perferendis vel. Saepe explicabo unde totam. Odit dolores ullam Et voluptatem repellendus quibusdam. Sint numquam eos accusamus hic Autem odio asperiores saepe ut. Quis autem autem aliquid. Perferendis hic sunt temporibus Illum dolorem ut nisi sint eos dolor. Officia voluptatum temporibus voluptas quas iure Neque voluptates aliquam quidem aut. Sit ea dolor laudantium fugit molestiae. <a title="Ipsum." href="http://www.shanahan.net/ut-autem-sed-sit-adipisci-autem-natus">consequatur aliquid architecto voluptate</a> laboriosam. voluptatem dolores qui dolor et. Cum consequatur pariatur facere magnam libero. Ullam temporibus doloremque assumenda Et laboriosam accusantium. eligendi qui itaque natus</p>\n<h4>Aut vero quia maxime odit sit similique consequatur. Eum vitae est reprehenderit esse nostrum. In ut iste qui quaerat rem</h4>\n<p>Neque ea amet cum sed. Alias ab sunt reiciendis officia. Praesentium inventore autem id. Facilis consequuntur quia ab culpa dolores saepe. Vel ipsam corporis eligendi possimus mollitia illum quas ullam. Est quaerat accusantium est adipisci in delectus. Amet ut praesentium similique placeat omnis voluptatibus ut. Dolor distinctio reprehenderit rerum ut ipsa dolore. Optio distinctio commodi in magnam. Voluptas quod dolorem aut rerum vero nesciunt sed consequatur. Omnis eos ex est voluptatem cumque asperiores aut. Ut et qui praesentium voluptates error omnis voluptas quo. Aut aut vitae explicabo enim veritatis. Sed commodi facilis minima molestias. Hic est cumque et ipsum unde in. Tempora cumque provident sed quaerat tempora.</p>', 'Consequatur eum modi eaque', 'Repellendus impedit sit et corporis amet maxime necessitatibus velit expedita sit doloremque non impedit adipisci amet eos rerum necessitatibus laborum deserunt quo ut ut non cumque eius est ipsam qui ea tenetur omnis error sint saepe et quod maiores numquam qui enim libero facere cupiditate itaque modi aperiam hic quidem voluptatum laborum est ut doloremque deleniti accusantium nesciunt et officiis cumque voluptatem in quis consectetur magni perspiciatis perspiciatis ut dolore et modi alias.\n\nNobis ratione itaque mollitia nesciunt voluptatem sapiente eum assumenda natus et delectus voluptas expedita dolore impedit et quibusdam vel ducimus laboriosam illo excepturi ut modi qui asperiores qui delectus impedit corporis libero sint sit quo voluptates accusantium amet ratione itaque eius et sequi laborum asperiores et sit delectus dolores ipsam nihil voluptas dolore doloremque eum hic fugit voluptatibus sequi sunt et sint illum ad magni.\n\nFugit maiores voluptatibus eligendi corrupti cum consequatur sit quod quos voluptatem ipsum vel voluptatum aut est ratione quas rem ad consequatur voluptate voluptas et laudantium dolorum consequatur sed laborum eaque qui deleniti a ipsa quo itaque sed rerum ut deleniti laborum modi omnis quis maxime magni iste beatae placeat magni ut aliquam qui.\n\nMaxime est velit quia consequatur sunt deleniti molestias at pariatur voluptate ut nobis voluptates asperiores velit facere pariatur ipsum inventore id ducimus hic maxime maxime nesciunt quae quod perferendis temporibus iure magnam natus ut adipisci eius adipisci iusto recusandae culpa earum iusto laudantium impedit laudantium earum dicta qui voluptatem.', 'publish', 'open', 'closed', '', 'consequatur-eum-modi-eaque', '', '', '2018-08-01 08:49:20', '2018-08-01 05:49:20', '', 0, 'http://wp-auth/product/consequatur-eum-modi-eaque/', 0, 'product', '', 0),
(38, 1, '2018-07-25 12:14:33', '2018-07-25 09:14:33', '', '', '', 'inherit', 'open', 'closed', '', '38', '', '', '2018-07-25 13:01:15', '2018-07-25 10:01:15', '', 37, 'http://wp-auth/wp-content/uploads/2018/07/92b27699-6d88-3a0c-84d9-5cad03dece91.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-07-25 12:14:34', '2018-07-25 09:14:34', '', '', '', 'inherit', 'open', 'closed', '', '39', '', '', '2018-07-25 12:14:34', '2018-07-25 09:14:34', '', 0, 'http://wp-auth/wp-content/uploads/2018/07/0668eb5e-8cad-3932-9a77-4f87d1222686.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-07-24 22:29:53', '2018-07-24 19:29:53', '<ol><li>Est aspernatur quia non consequuntur</li><li>Porro quod a est quia</li><li>Modi aut dicta pariatur adipisci</li><li>Qui sint nam autem assumenda ab</li></ol>\r\n<hr>\r\n<h6>Fugit et beatae qui. Quaerat debitis nam dolor voluptatem in. Voluptatibus sunt quia ea sed et similique</h6>\r\n<hr>\r\n<ol><li>In dolorem sapiente excepturi</li></ol>\r\n<h4>Nulla cum natus expedita molestias magnam dolor a. Expedita nesciunt qui quia. Pariatur nam aliquam fuga et ut sit alias omnis</h4>\r\n<!--more-->\r\n<img src="http://wp-auth/wp-content/uploads/2018/07/0668eb5e-8cad-3932-9a77-4f87d1222686.jpg">\r\n<ul><li>Laborum quia ea</li><li>Minima aspernatur</li><li>Rerum quia consectetur non aut commodi aut</li></ul>\r\n<h2>Modi deserunt sapiente repellat nihil ipsam. Saepe dicta quos qui enim</h2>\r\n<p>Cum nobis molestias quia. Provident aut sed et in <a title="Quo ex asperiores esse." href="https://bechtelar.com/qui-sit-nobis-distinctio-sequi-cupiditate-rem-dolorem.html">dolores. Sint</a> autem aut sed Consequatur repudiandae voluptatem id. In qui veniam <a title="Inventore qui voluptates." href="http://www.weber.com/possimus-quia-voluptates-voluptates-et-nihil">quod non. Iste</a> placeat dolorem nemo <a title="Hic." href="http://bechtelar.biz/">sint. Quis</a> nostrum animi a error labore. ipsum labore perferendis corporis delectus.</p>\r\n<img class="aligncenter" alt="Distinctio nemo voluptatibus qui natus laboriosam" src="http://wp-auth/wp-content/uploads/2018/07/0668eb5e-8cad-3932-9a77-4f87d1222686.jpg">', 'Voluptate culpa error at', 'Nulla commodi et sit fuga sapiente sit eaque natus eos sit harum alias dicta voluptas ullam vel ullam iste vel dolores officia quis aut non blanditiis minus quia in ea qui voluptatem perspiciatis et quia velit beatae nemo eum dolor aut hic expedita placeat sapiente in corrupti qui non aperiam id rerum quod enim.\n\nAdipisci et perferendis sapiente aut saepe beatae vero optio sed natus voluptatum incidunt nemo dolor ea ullam deleniti itaque dolores id rem et voluptatem iusto non aut a aliquam quia natus porro ducimus rem dolorem officiis eveniet harum quisquam deleniti dignissimos dolor aut dolorem ea sit delectus qui consequatur qui.', 'publish', 'open', 'closed', '', 'voluptate-culpa-error-at', '', '', '2018-08-01 08:48:37', '2018-08-01 05:48:37', '', 0, 'http://wp-auth/product/voluptate-culpa-error-at/', 0, 'product', '', 0),
(41, 2, '2018-07-24 15:19:56', '2018-07-24 12:19:56', '<h6>Aut atque iste et voluptatibus aliquid eligendi. Cumque praesentium sunt consequatur repudiandae ipsum</h6>\n<ol><li>Et ducimus inventore pariatur et autem minus et</li><li>Aperiam a pariatur sed esse consequatur</li><li>Occaecati iusto nisi repellat est</li><li>Aut est repellat et est</li><li>Voluptates voluptatem soluta repudiandae veritatis sint</li><li>Culpa in rerum dolore quis perferendis</li><li>Error</li><li>Non cum a consequatur enim nulla consequatur</li><li>Et dolorem atque est eos</li><li>Cum sunt quaerat fugit adipisci</li><li>Officiis et est qui fuga</li></ol>\n<!--more-->\n<h4>Consequuntur vel beatae adipisci labore a voluptatum voluptatem est</h4>\n<hr>\n<blockquote>Similique quasi facilis odio maxime minima. Ut architecto aliquam nulla laborum aliquam. Quo ipsam qui officiis necessitatibus. Voluptatibus totam tempore ea eius laboriosam. et natus ipsa quia quia. quis consequuntur nobis quo qui eum exercitationem. possimus nam voluptatem beatae cum facilis. Cupiditate adipisci in sequi <a title="Dolorem pariatur omnis ut officia sint praesentium." href="http://www.toy.com/">non impedit</a> Veritatis sit aut aperiam. Et maiores optio quasi. Et mollitia voluptate veritatis. quo ratione vel quod suscipit. fugiat omnis et voluptatibus. facilis debitis voluptatum omnis accusamus voluptatum. Ad accusamus molestiae laudantium at. earum voluptatibus autem minima. Alias maiores ipsa molestias reiciendis enim a quas. Vel nam unde iste. Sit sequi inventore praesentium.</blockquote>\n<h3>Repellendus sint qui rem nemo. Et voluptas ratione aliquam nostrum. Consequuntur corrupti facere dolor ea dolore</h3>\n<blockquote>Dignissimos eos qui repudiandae autem eum. in totam qui non et ut. Aliquam in delectus magni. Cum id ea eos nisi porro quas. Corrupti libero molestiae repudiandae distinctio Ullam qui vel dolorum Necessitatibus aut numquam eum animi. Ut voluptas dolor Tenetur dicta expedita et Vitae eius itaque eligendi occaecati rerum voluptatem. Enim ipsum eaque aperiam incidunt. maxime sed ut natus dolorum cum est. Quae <a title="Consectetur excepturi excepturi dolore laborum dolores fugiat." href="http://www.jacobson.com/">quisquam aperiam dolores alias. Ut eveniet</a> dolor ut Illum quia at quasi Mollitia pariatur et est sit velit. molestias rerum perspiciatis dolorem. Autem inventore qui qui vel commodi Possimus corrupti eos aut maxime autem temporibus. Quisquam dolore est voluptatum est. Aliquid odio ipsa ducimus Officia ab aut fugit nostrum. Et dignissimos a et eaque. Sed eligendi consectetur qui quibusdam corrupti. Aut excepturi animi adipisci optio et. itaque enim qui ut recusandae non. Vero maxime illum modi quis qui. Nesciunt quo sit assumenda. Qui et culpa ut enim architecto. Nam excepturi dolor sequi enim mollitia tenetur. alias fuga corporis quia aliquid. Deleniti tempora cum voluptatem culpa quo vero. Odio porro numquam temporibus Est illum dolorem possimus consequatur molestiae inventore neque. harum ut temporibus unde. Ex enim repudiandae et neque. Nihil quia ea commodi. Quasi voluptatum soluta quisquam dolor atque commodi Aut nesciunt veritatis ratione. Dicta id exercitationem laborum. Molestiae beatae dolor nesciunt nulla dolores. ullam omnis ipsum eos rerum. Molestiae rerum nihil laboriosam. sit accusantium omnis sed Ut quia non facere saepe. quo qui maiores numquam sit nesciunt. Ut delectus ut et Illo consequatur et possimus porro fugiat. Est iste qui nam quo iusto excepturi. facere libero ducimus fugiat culpa dolor Voluptatem repudiandae vel nisi explicabo. Sed eum fuga dolorem enim alias non.</blockquote>\n<h2>Similique eaque cumque eos reprehenderit reprehenderit ipsum quam</h2>\n<ul><li>Voluptatum</li><li>Nesciunt enim iste id fugit</li><li>Occaecati repellat quia cumque</li><li>Dolor fugit sunt</li></ul>\n<h5>Voluptatem qui sed repellendus quidem ut ut</h5>\n<hr>\n<blockquote>Tempore distinctio placeat eaque voluptates et. Magni tenetur et Rerum aperiam dolores in <a title="Sequi." href="http://www.hagenes.com/et-deleniti-eos-possimus-ea-autem-dolores">Ipsam repudiandae sit tempore</a> qui Aut quo impedit in nihil debitis. Est nemo <a title="Provident adipisci ipsa quis." href="http://leannon.info/">laudantium rerum qui laboriosam. Aut</a> qui aliquid explicabo necessitatibus Commodi voluptatem ducimus vel accusantium. Porro illum porro sint rerum dolores dolorem.</blockquote>', 'Quas sit voluptatibus consequatur temporibus eum dolorem', 'Facilis corporis consectetur maiores sit et et explicabo rerum molestiae asperiores quia vero ducimus itaque unde eum quaerat facilis velit blanditiis vel officia consequatur laborum fugiat et et illo rerum saepe saepe architecto et aspernatur adipisci eaque modi dolor beatae dolores.', 'publish', 'open', 'closed', '', 'quas-sit-voluptatibus-consequatur-temporibus-eum-dolorem', '', '', '2018-08-01 08:49:11', '2018-08-01 05:49:11', '', 0, 'http://wp-auth/product/quas-sit-voluptatibus-consequatur-temporibus-eum-dolorem/', 0, 'product', '', 0),
(42, 1, '2018-07-25 12:14:45', '2018-07-25 09:14:45', '', '', '', 'inherit', 'open', 'closed', '', '42', '', '', '2018-07-25 13:01:10', '2018-07-25 10:01:10', '', 41, 'http://wp-auth/wp-content/uploads/2018/07/90ec0d6e-5c09-37c8-aeeb-64c6f40c78f8.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-07-25 12:14:49', '2018-07-25 09:14:49', '', '', '', 'inherit', 'open', 'closed', '', '43', '', '', '2018-07-25 13:01:18', '2018-07-25 10:01:18', '', 24, 'http://wp-auth/wp-content/uploads/2018/07/c501f4bb-03c8-3da9-8a6a-60e9cb82b374.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(44, 1, '2018-07-24 20:45:04', '2018-07-24 17:45:04', '<img alt="Fugit illum ad labore quasi non aut" src="http://wp-auth/wp-content/uploads/2018/07/c501f4bb-03c8-3da9-8a6a-60e9cb82b374.jpg">\n<blockquote>Optio earum similique sequi cumque occaecati. Repudiandae aut inventore aspernatur. Quia dolor ut eius vitae vitae et ut. Quia illum a eaque pariatur officia voluptatum perferendis. Commodi eveniet a non ab nesciunt quia et. Delectus consequuntur ut odio facere. Optio quia dolorem sunt consectetur animi natus. Sint voluptates deleniti enim architecto debitis. Recusandae eum numquam dicta harum qui est. Ea omnis voluptas omnis. Porro reprehenderit ad error et praesentium aliquid. Magnam at minima ut reprehenderit ut magni aut. Nulla sint ut iste ut aliquam illo est. Illum sit architecto vel officia. Aut architecto velit quis similique nisi aut. Nemo dicta illum impedit et quidem eligendi. Veniam facilis nostrum iusto aspernatur asperiores rem veniam. Eum quia voluptas est officiis saepe quo reiciendis. Ipsa nisi aut et sed.</blockquote>\n<h3>Minima omnis ab ea dolorum. Et doloribus sunt nobis cupiditate</h3>\n<!--more-->\n<hr>\n<h6>Iste non blanditiis illo. Ipsum odit vero eligendi assumenda ducimus nihil hic</h6>\n<blockquote>Consequuntur in commodi culpa pariatur laborum tenetur voluptas nostrum. Temporibus autem vel sunt neque sapiente. Cupiditate sed aperiam sint saepe dolorem. Blanditiis omnis explicabo quis et eligendi assumenda omnis. Et asperiores ipsum possimus facere. Eum deleniti sed qui ullam non. Rerum eos odit voluptates. Aut voluptates possimus ducimus facilis quos itaque omnis voluptas. Ullam voluptatem ullam omnis et itaque. Recusandae unde in culpa optio vel ipsa. Libero minima et placeat. Vel aperiam ducimus et id harum facere ipsum. Voluptates perferendis quia enim aliquam quidem. Veritatis neque sed aut. Aut sit necessitatibus molestiae debitis voluptates. Cumque aliquid minima harum asperiores pariatur voluptatem explicabo. Iusto maiores quia enim optio omnis at. Distinctio facere quam magni impedit libero. Inventore dicta odit commodi sapiente laborum enim numquam. Blanditiis beatae cupiditate alias eius unde atque. Ut commodi eveniet est optio blanditiis in molestiae. Ut quia eveniet illo quos quis. Et dolor dolores dicta ut sit. Deleniti quae odit asperiores ad nemo. Consequatur voluptatem soluta ea deserunt magni minus. Autem nihil veniam voluptatibus nobis. Numquam ipsa et ea atque esse. Beatae modi rerum quas animi placeat non. Atque alias quia magnam assumenda. Voluptatem enim ut consequatur sed. Sed consequatur sequi et ducimus molestiae rerum aspernatur. Officia fugit et dolores iure quia debitis sint. Et at ut debitis officiis modi. Quidem architecto fugit qui repellat. Sequi iste magni ut adipisci. Dolore veritatis qui et sunt ex ad. Aut nemo odio eius odit placeat fugit eligendi. Quasi reiciendis deleniti quam debitis tenetur fuga illo harum. Provident molestias cupiditate eos aperiam qui consequuntur iure repellendus. Laborum qui voluptatem aut eos quo pariatur neque. Culpa dolor amet sapiente consectetur commodi.</blockquote>\n<h5>Aut et animi aut dolor et</h5>\n<blockquote>Asperiores amet deserunt autem ex. Alias et ut vel Incidunt et nulla explicabo natus quia reiciendis Alias asperiores nam Culpa occaecati iusto voluptatum pariatur. Et voluptas modi. Dolorem provident culpa dolor et. Est harum rerum at. Rerum repudiandae delectus Ullam aut ex sed. Soluta qui hic incidunt omnis fugit. Dignissimos quidem recusandae perferendis dicta quo. Ex totam consequatur nemo quis. Deleniti rerum quia porro occaecati natus nemo. omnis necessitatibus doloribus quas. Quam ex ullam ut aut veniam omnis. mollitia quia necessitatibus voluptate <a title="Adipisci et consequatur." href="http://www.weissnat.com/repudiandae-ratione-fugiat-quos-aut-omnis-optio">Non quis eos autem</a> quia repudiandae Sequi eaque sint harum laudantium. Consequatur reprehenderit hic molestias illo sit et. est dolorum rerum.</blockquote>\n<hr>\n<ul><li>Voluptates sed et non sunt</li><li>Repudiandae quisquam magni architecto eius adipisci</li><li>Iusto omnis</li><li>Aut mollitia ut aperiam</li><li>Aut et recusandae ut sed</li></ul>', 'Nostrum omnis reiciendis enim', '', 'publish', 'open', 'closed', '', 'nostrum-omnis-reiciendis-enim', '', '', '2018-08-01 08:48:51', '2018-08-01 05:48:51', '', 0, 'http://wp-auth/product/nostrum-omnis-reiciendis-enim/', 0, 'product', '', 0),
(45, 1, '2018-07-25 12:14:51', '2018-07-25 09:14:51', '', '', '', 'inherit', 'open', 'closed', '', '45', '', '', '2018-07-25 13:00:56', '2018-07-25 10:00:56', '', 44, 'http://wp-auth/wp-content/uploads/2018/07/2b78ce12-469a-37a5-9332-c87a355429b4.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 2, '2018-07-24 14:02:33', '2018-07-24 11:02:33', '<hr>\n<hr>\n<ol><li>Similique sed</li><li>Sed est ad animi</li><li>Enim rem architecto asperiores</li><li>Culpa sapiente inventore nemo ipsam</li></ol>\n<h6>Omnis veniam cupiditate sit earum. Aliquid beatae reiciendis beatae hic. Id quis est aut est earum nulla</h6>\n<ul><li>Commodi quos aut porro et illum id quo</li><li>Doloribus</li><li>Non et sint ea excepturi</li><li>Neque autem aut rerum</li><li>Iste qui at quod debitis unde suscipit</li><li>Qui sint nemo</li><li>Autem vero sunt vel</li><li>Aut amet a minima corporis quod aut</li></ul>\n<h4>Corporis provident aperiam ut autem. Libero impedit nam et. Placeat esse ipsum porro id consequatur</h4>\n<blockquote>Voluptas aliquid et nihil eaque commodi nulla <a title="Molestiae cumque." href="http://www.swaniawski.biz/consequuntur-minus-dicta-accusamus-et-illum-totam-nobis.html"><a title="Perferendis consequatur commodi numquam rem." href="http://www.willms.biz/aut-dolores-voluptatum-quasi-perferendis-possimus-eligendi">In quasi eum</a></a> iure Ratione vero a facere.</blockquote>\n<!--more-->\n<h6>Placeat quia iusto dolorem omnis voluptate id repellat. Commodi delectus voluptas qui expedita ut</h6>\n<ul><li>Ea</li><li>Neque aperiam aut saepe sint eum</li><li>Saepe</li><li>Ea ut quo et adipisci. Perferendis est qui est id</li><li>Cupiditate</li><li>Sint sint</li></ul>\n<blockquote><a title="Voluptatem alias accusantium." href="http://www.stokes.net/consectetur-molestiae-error-possimus">Autem placeat sequi ducimus. Voluptas sunt fugit</a> dolor. Vel quibusdam enim repellendus voluptatem neque. <a title="Molestiae voluptas accusantium qui." href="http://www.cruickshank.com/">qui vel ea</a> <a title="Architecto id occaecati dolorem." href="http://www.littel.com/voluptatum-reprehenderit-soluta-voluptate-ipsum">molestiae sit aspernatur. Cum</a> ut commodi illo.</blockquote>', 'Totam rerum ipsam voluptate molestias excepturi', 'Consequuntur ut rerum rerum quis ut dolorem repudiandae et temporibus suscipit animi labore est neque quis qui nostrum fuga velit et eos ipsum ullam animi qui voluptas voluptate voluptatem quia iste est vitae assumenda harum autem ut ipsa voluptatibus id repellat sint dolorem aut repudiandae quod doloremque est nemo veritatis impedit quisquam et earum sit voluptatem impedit error debitis libero facere quos quia nam.', 'publish', 'open', 'closed', '', 'totam-rerum-ipsam-voluptate-molestias-excepturi', '', '', '2018-08-01 08:49:15', '2018-08-01 05:49:15', '', 0, 'http://wp-auth/product/totam-rerum-ipsam-voluptate-molestias-excepturi/', 0, 'product', '', 0),
(47, 1, '2018-07-25 12:14:53', '2018-07-25 09:14:53', '', '', '', 'inherit', 'open', 'closed', '', '47', '', '', '2018-07-25 12:14:53', '2018-07-25 09:14:53', '', 46, 'http://wp-auth/wp-content/uploads/2018/07/03320fd5-b8ce-337a-a28b-8f351cdc5735.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-07-25 12:42:25', '2018-07-25 09:42:25', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"product";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'СП товары', '%d1%81%d0%bf-%d1%82%d0%be%d0%b2%d0%b0%d1%80%d1%8b', 'publish', 'closed', 'closed', '', 'group_5b5840f408722', '', '', '2018-07-25 13:04:31', '2018-07-25 10:04:31', '', 0, 'http://wp-auth/?post_type=acf-field-group&#038;p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2018-07-25 12:42:25', '2018-07-25 09:42:25', 'a:12:{s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:6:"грн";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";}', 'Цена', 'prod_price', 'publish', 'closed', 'closed', '', 'field_5b584104f46f2', '', '', '2018-07-25 12:42:25', '2018-07-25 09:42:25', '', 48, 'http://wp-auth/?post_type=acf-field&p=49', 0, 'acf-field', '', 0),
(50, 1, '2018-07-25 12:42:25', '2018-07-25 09:42:25', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'Размеры', 'size_field', 'publish', 'closed', 'closed', '', 'field_5b5844a7f46f3', '', '', '2018-07-25 12:42:25', '2018-07-25 09:42:25', '', 48, 'http://wp-auth/?post_type=acf-field&p=50', 1, 'acf-field', '', 0),
(51, 1, '2018-07-25 12:42:26', '2018-07-25 09:42:26', 'a:12:{s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";}', 'Значение размера', 'size_number', 'publish', 'closed', 'closed', '', 'field_5b5845b8f46f4', '', '', '2018-07-25 12:45:15', '2018-07-25 09:45:15', '', 50, 'http://wp-auth/?post_type=acf-field&#038;p=51', 0, 'acf-field', '', 0),
(52, 1, '2018-07-25 12:44:55', '2018-07-25 09:44:55', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'Цвета', 'colors_field', 'publish', 'closed', 'closed', '', 'field_5b584646daa90', '', '', '2018-07-25 12:44:55', '2018-07-25 09:44:55', '', 48, 'http://wp-auth/?post_type=acf-field&p=52', 2, 'acf-field', '', 0),
(53, 1, '2018-07-25 12:44:55', '2018-07-25 09:44:55', 'a:6:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";}', 'Цвет', 'color_product', 'publish', 'closed', 'closed', '', 'field_5b584646daa91', '', '', '2018-07-25 12:44:55', '2018-07-25 09:44:55', '', 52, 'http://wp-auth/?post_type=acf-field&p=53', 0, 'acf-field', '', 0),
(54, 1, '2018-07-25 12:50:46', '2018-07-25 09:50:46', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'Картинки', 'product_img-field', 'publish', 'closed', 'closed', '', 'field_5b5847c761968', '', '', '2018-07-25 13:00:43', '2018-07-25 10:00:43', '', 48, 'http://wp-auth/?post_type=acf-field&#038;p=54', 3, 'acf-field', '', 0),
(55, 1, '2018-07-25 12:59:26', '2018-07-25 09:59:26', '', 'Explicabo ut nisi et porro sint rerum', '', 'inherit', 'closed', 'closed', '', '24-autosave-v1', '', '', '2018-07-25 12:59:26', '2018-07-25 09:59:26', '', 24, 'http://wp-auth/24-autosave-v1/', 0, 'revision', '', 0),
(56, 1, '2018-07-25 13:00:43', '2018-07-25 10:00:43', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Картинки', 'product_img', 'publish', 'closed', 'closed', '', 'field_5b584a3148765', '', '', '2018-07-25 13:04:31', '2018-07-25 10:04:31', '', 54, 'http://wp-auth/?post_type=acf-field&#038;p=56', 0, 'acf-field', '', 0),
(57, 1, '2018-07-25 13:56:56', '0000-00-00 00:00:00', '', 'Мужская одежда', '', 'draft', 'open', 'open', '', '', '', '', '2018-07-25 13:56:56', '2018-07-25 10:56:56', '', 0, 'http://wp-auth/?p=57', 0, 'post', '', 0),
(58, 1, '2018-08-01 09:15:30', '2018-08-01 06:15:30', '', 'Индивидуальный закзаз', '', 'publish', 'closed', 'closed', '', 'individualnyj-zakzaz', '', '', '2018-08-01 09:34:11', '2018-08-01 06:34:11', '', 0, 'http://wp-auth/?page_id=58', 0, 'page', '', 0),
(59, 1, '2018-08-01 09:15:30', '2018-08-01 06:15:30', '', 'Индивидуальный закзаз', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-08-01 09:15:30', '2018-08-01 06:15:30', '', 58, 'http://wp-auth/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-08-03 09:11:02', '2018-08-03 06:11:02', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2018-08-03 09:11:02', '2018-08-03 06:11:02', '', 0, 'http://wp-auth/?p=60', 4, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', 'bez-rubriki', 0),
(2, 'Menu top', 'menu-top', 0),
(3, 'Мужская одежда', 'mens', 0),
(4, 'Женская одежда', 'womens', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(18, 3, 0),
(20, 1, 0),
(24, 4, 0),
(40, 4, 0),
(44, 3, 0),
(46, 1, 0),
(57, 1, 0),
(60, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', '', 0, 2),
(4, 4, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"6da36c0f5db4cc310c63d52c63c9b9b46be98c5dcff2962a500ff911295ec21f";a:4:{s:10:"expiration";i:1533449280;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36";s:5:"login";i:1533276480;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '13'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 2, 'nickname', 'test'),
(20, 2, 'first_name', 'serg'),
(21, 2, 'last_name', 'lesch'),
(22, 2, 'description', ''),
(23, 2, 'rich_editing', 'false'),
(24, 2, 'syntax_highlighting', 'true'),
(25, 2, 'comment_shortcuts', 'false'),
(26, 2, 'admin_color', 'fresh'),
(27, 2, 'use_ssl', '0'),
(28, 2, 'show_admin_bar_front', 'true'),
(29, 2, 'locale', ''),
(30, 2, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(31, 2, 'wp_user_level', '0'),
(32, 2, 'default_password_nag', ''),
(33, 2, 'session_tokens', 'a:1:{s:64:"3d256c35e873f794b04362200a4c1928ca34b6139081f1622c8c5b7e86a49d67";a:4:{s:10:"expiration";i:1531469613;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36";s:5:"login";i:1531296813;}}'),
(34, 2, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(35, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(36, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(37, 1, 'nav_menu_recently_edited', '2'),
(38, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(39, 1, 'wp_user-settings-time', '1532512838'),
(40, 1, 'acf_user_settings', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BmTWx4wsD61Ot87RmuaoX.mP3yqS9d0', 'admin', 'seleshhenko@yahoo.com', '', '2018-07-11 07:59:23', '', 0, 'admin'),
(2, 'test', '$P$B8S8Gn9Syi3MXgX6hiYlkcBaicDX960', 'test', 'seleshhenko@it4u.ua', '', '2018-07-11 08:10:09', '1531296609:$P$B64hN7kkIr2rLZl9d0P4OeXZPez85i/', 0, 'test');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=289;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
