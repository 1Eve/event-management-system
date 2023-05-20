-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 09:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-05-17 17:41:01', '2023-05-17 17:41:01', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/eventmanagementsystem', 'yes'),
(2, 'home', 'http://localhost/eventmanagementsystem', 'yes'),
(3, 'blogname', 'EventManagement', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'orderntools@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'eventmanagement', 'yes'),
(41, 'stylesheet', 'eventmanagement', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1699897260', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '3', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1684582861;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1684604461;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1684604470;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1684604472;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1685036461;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1684345445;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(123, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.1\";s:7:\"version\";s:5:\"6.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1684568721;s:15:\"version_checked\";s:5:\"6.2.1\";s:12:\"translations\";a:0:{}}', 'no'),
(126, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1684573773;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:53:\"http://downloads.wordpress.org/plugin/akismet.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:59:\"http://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}}', 'no'),
(129, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1684568721;s:7:\"checked\";a:4:{s:15:\"eventmanagement\";s:5:\"1.0.0\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(130, '_site_transient_timeout_browser_878044b9ce2fa6cf955814bc0be8d5ae', '1684950071', 'no'),
(131, '_site_transient_browser_878044b9ce2fa6cf955814bc0be8d5ae', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"113.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(132, '_site_transient_timeout_php_check_3fde9d06ba9e4fd20d08658e6f30b792', '1684950071', 'no'),
(133, '_site_transient_php_check_3fde9d06ba9e4fd20d08658e6f30b792', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(137, 'can_compress_scripts', '1', 'no'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(151, 'current_theme', '', 'yes'),
(152, 'theme_mods_eventmanagement', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(158, '_site_transient_timeout_browser_c2e8770a57bb05f02fa99fc10237a511', '1685014976', 'no'),
(159, '_site_transient_browser_c2e8770a57bb05f02fa99fc10237a511', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"113.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(160, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1685014978', 'no'),
(161, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(175, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":5,\"critical\":3}', 'yes'),
(176, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1684611932', 'no'),
(177, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>', 'no'),
(194, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(198, 'recently_activated', 'a:0:{}', 'yes'),
(200, '_site_transient_timeout_theme_roots', '1684578221', 'no'),
(201, '_site_transient_theme_roots', 'a:4:{s:15:\"eventmanagement\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(202, '_site_transient_timeout_wp_remote_block_patterns_674068de1407634310e5f304d042616b', '1684576428', 'no'),
(203, '_site_transient_wp_remote_block_patterns_674068de1407634310e5f304d042616b', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:80:\"cURL error 28: Operation timed out after 5002 milliseconds with 0 bytes received\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'no'),
(204, '_site_transient_timeout_wp_remote_block_patterns_aa8b691f0110fe823cb1d70f63a84241', '1684580026', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(205, '_site_transient_wp_remote_block_patterns_aa8b691f0110fe823cb1d70f63a84241', 'a:14:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";i:207567;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:11:\"Link in Bio\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:6458:\"\n<div class=\"wp-block-group has-white-background-color has-background is-layout-flow wp-block-group-is-layout-flow\" style=\"padding-top:var(--wp--preset--spacing--80);padding-right:0;padding-bottom:var(--wp--preset--spacing--80);padding-left:0\"><h1 style=\"font-style:normal;font-weight:700;\" class=\"has-text-align-center wp-block-site-title has-medium-font-size\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1>\n\n<p class=\"has-text-align-center wp-block-site-tagline\">Beautifully designed patterns ready to go with a simple copy/paste</p>\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-buttons is-content-justification-center is-layout-flex wp-container-1 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link wp-element-button\">Watch my latest videos</a></div>\n\n\n\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link wp-element-button\">Buy merch</a></div>\n\n\n\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link wp-element-button\">Support me on Patreon</a></div>\n\n\n\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-fill\"><a class=\"wp-block-button__link wp-element-button\">Get tickets for my show</a></div>\n</div>\n\n\n\n<ul class=\"wp-block-social-links has-normal-icon-size has-icon-color has-icon-background-color is-content-justification-center is-layout-flex wp-container-2 wp-block-social-links-is-layout-flex\" style=\"padding-top:var(--wp--preset--spacing--60);padding-bottom:var(--wp--preset--spacing--60)\"><li style=\"color: #000000; background-color: #ffffff; \" class=\"wp-social-link wp-social-link-instagram wp-block-social-link\"><a href=\"https://wordpress.org/patterns/\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M12,4.622c2.403,0,2.688,0.009,3.637,0.052c0.877,0.04,1.354,0.187,1.671,0.31c0.42,0.163,0.72,0.358,1.035,0.673 c0.315,0.315,0.51,0.615,0.673,1.035c0.123,0.317,0.27,0.794,0.31,1.671c0.043,0.949,0.052,1.234,0.052,3.637 s-0.009,2.688-0.052,3.637c-0.04,0.877-0.187,1.354-0.31,1.671c-0.163,0.42-0.358,0.72-0.673,1.035 c-0.315,0.315-0.615,0.51-1.035,0.673c-0.317,0.123-0.794,0.27-1.671,0.31c-0.949,0.043-1.233,0.052-3.637,0.052 s-2.688-0.009-3.637-0.052c-0.877-0.04-1.354-0.187-1.671-0.31c-0.42-0.163-0.72-0.358-1.035-0.673 c-0.315-0.315-0.51-0.615-0.673-1.035c-0.123-0.317-0.27-0.794-0.31-1.671C4.631,14.688,4.622,14.403,4.622,12 s0.009-2.688,0.052-3.637c0.04-0.877,0.187-1.354,0.31-1.671c0.163-0.42,0.358-0.72,0.673-1.035 c0.315-0.315,0.615-0.51,1.035-0.673c0.317-0.123,0.794-0.27,1.671-0.31C9.312,4.631,9.597,4.622,12,4.622 M12,3 C9.556,3,9.249,3.01,8.289,3.054C7.331,3.098,6.677,3.25,6.105,3.472C5.513,3.702,5.011,4.01,4.511,4.511 c-0.5,0.5-0.808,1.002-1.038,1.594C3.25,6.677,3.098,7.331,3.054,8.289C3.01,9.249,3,9.556,3,12c0,2.444,0.01,2.751,0.054,3.711 c0.044,0.958,0.196,1.612,0.418,2.185c0.23,0.592,0.538,1.094,1.038,1.594c0.5,0.5,1.002,0.808,1.594,1.038 c0.572,0.222,1.227,0.375,2.185,0.418C9.249,20.99,9.556,21,12,21s2.751-0.01,3.711-0.054c0.958-0.044,1.612-0.196,2.185-0.418 c0.592-0.23,1.094-0.538,1.594-1.038c0.5-0.5,0.808-1.002,1.038-1.594c0.222-0.572,0.375-1.227,0.418-2.185 C20.99,14.751,21,14.444,21,12s-0.01-2.751-0.054-3.711c-0.044-0.958-0.196-1.612-0.418-2.185c-0.23-0.592-0.538-1.094-1.038-1.594 c-0.5-0.5-1.002-0.808-1.594-1.038c-0.572-0.222-1.227-0.375-2.185-0.418C14.751,3.01,14.444,3,12,3L12,3z M12,7.378 c-2.552,0-4.622,2.069-4.622,4.622S9.448,16.622,12,16.622s4.622-2.069,4.622-4.622S14.552,7.378,12,7.378z M12,15 c-1.657,0-3-1.343-3-3s1.343-3,3-3s3,1.343,3,3S13.657,15,12,15z M16.804,6.116c-0.596,0-1.08,0.484-1.08,1.08 s0.484,1.08,1.08,1.08c0.596,0,1.08-0.484,1.08-1.08S17.401,6.116,16.804,6.116z\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">Instagram</span></a></li>\n\n<li style=\"color: #000000; background-color: #ffffff; \" class=\"wp-social-link wp-social-link-bandcamp wp-block-social-link\"><a href=\"https://wordpress.org/patterns/\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M15.27 17.289 3 17.289 8.73 6.711 21 6.711 15.27 17.289\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">Bandcamp</span></a></li>\n\n<li style=\"color: #000000; background-color: #ffffff; \" class=\"wp-social-link wp-social-link-twitter wp-block-social-link\"><a href=\"https://wordpress.org/patterns/\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M22.23,5.924c-0.736,0.326-1.527,0.547-2.357,0.646c0.847-0.508,1.498-1.312,1.804-2.27 c-0.793,0.47-1.671,0.812-2.606,0.996C18.324,4.498,17.257,4,16.077,4c-2.266,0-4.103,1.837-4.103,4.103 c0,0.322,0.036,0.635,0.106,0.935C8.67,8.867,5.647,7.234,3.623,4.751C3.27,5.357,3.067,6.062,3.067,6.814 c0,1.424,0.724,2.679,1.825,3.415c-0.673-0.021-1.305-0.206-1.859-0.513c0,0.017,0,0.034,0,0.052c0,1.988,1.414,3.647,3.292,4.023 c-0.344,0.094-0.707,0.144-1.081,0.144c-0.264,0-0.521-0.026-0.772-0.074c0.522,1.63,2.038,2.816,3.833,2.85 c-1.404,1.1-3.174,1.756-5.096,1.756c-0.331,0-0.658-0.019-0.979-0.057c1.816,1.164,3.973,1.843,6.29,1.843 c7.547,0,11.675-6.252,11.675-11.675c0-0.178-0.004-0.355-0.012-0.531C20.985,7.47,21.68,6.747,22.23,5.924z\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">Twitter</span></a></li>\n\n<li style=\"color: #000000; background-color: #ffffff; \" class=\"wp-social-link wp-social-link-twitch wp-block-social-link\"><a href=\"https://wordpress.org/patterns/\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M16.499,8.089h-1.636v4.91h1.636V8.089z M12,8.089h-1.637v4.91H12V8.089z M4.228,3.178L3,6.451v13.092h4.499V22h2.456 l2.454-2.456h3.681L21,14.636V3.178H4.228z M19.364,13.816l-2.864,2.865H12l-2.453,2.453V16.68H5.863V4.814h13.501V13.816z\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">Twitch</span></a></li></ul>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:116:\"core/button,core/buttons,core/group,core/site-tagline,core/site-title,core/social-link,core/social-links,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:2665:\"<!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|80\",\"right\":\"0\",\"bottom\":\"var:preset|spacing|80\",\"left\":\"0\"}}},\"backgroundColor\":\"white\",\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group has-white-background-color has-background\" style=\"padding-top:var(--wp--preset--spacing--80);padding-right:0;padding-bottom:var(--wp--preset--spacing--80);padding-left:0\"><!-- wp:site-title {\"textAlign\":\"center\",\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"700\"}},\"fontSize\":\"medium\"} /-->\n\n<!-- wp:site-tagline {\"textAlign\":\"center\"} /-->\n\n<!-- wp:spacer {\"height\":\"20px\"} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"width\":100} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link wp-element-button\">Watch my latest videos</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"width\":100} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link wp-element-button\">Buy merch</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"width\":100} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link wp-element-button\">Support me on Patreon</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"width\":100,\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-fill\"><a class=\"wp-block-button__link wp-element-button\">Get tickets for my show</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:social-links {\"iconColor\":\"black\",\"iconColorValue\":\"#000000\",\"iconBackgroundColor\":\"white\",\"iconBackgroundColorValue\":\"#ffffff\",\"size\":\"has-normal-icon-size\",\"style\":{\"spacing\":{\"blockGap\":{\"top\":\"0\",\"left\":\"0\"},\"padding\":{\"top\":\"var:preset|spacing|60\",\"bottom\":\"var:preset|spacing|60\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<ul class=\"wp-block-social-links has-normal-icon-size has-icon-color has-icon-background-color\" style=\"padding-top:var(--wp--preset--spacing--60);padding-bottom:var(--wp--preset--spacing--60)\"><!-- wp:social-link {\"url\":\"https://wordpress.org/patterns/\",\"service\":\"instagram\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://wordpress.org/patterns/\",\"service\":\"bandcamp\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://wordpress.org/patterns/\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://wordpress.org/patterns/\",\"service\":\"twitch\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group -->\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";i:732;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Simple call to action\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:961:\"\n<div class=\"wp-block-group alignfull has-text-color has-background is-layout-flow wp-block-group-is-layout-flow\" style=\"background-color:#ffffff;color:#000000\">\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-align-center has-small-font-size\" style=\"line-height:.9\"><strong>GET IN TOUCH</strong></p>\n\n\n\n<h2 class=\"has-text-align-center wp-block-heading\" id=\"schedule-a-visit\" style=\"font-size:59px;line-height:1.15\"><strong>Schedule a Visit</strong></h2>\n\n\n\n<div class=\"wp-block-buttons is-horizontal is-content-justification-center is-layout-flex wp-container-4 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-50\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:50px;background-color:#000000;color:#ffffff\">Contact us</a></div>\n</div>\n\n\n\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:89:\"A container with a white background. Inside is a centered paragraph, heading, and button.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:75:\"core/button,core/buttons,core/group,core/heading,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"buttons\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1506:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-group alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:spacer {\"height\":64} -->\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"style\":{\"typography\":{\"lineHeight\":\".9\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-text-align-center has-small-font-size\" style=\"line-height:.9\"><strong>GET IN TOUCH</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"style\":{\"typography\":{\"fontSize\":59,\"lineHeight\":\"1.15\"}}} -->\n<h2 class=\"has-text-align-center\" id=\"schedule-a-visit\" style=\"font-size:59px;line-height:1.15\"><strong>Schedule a Visit</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"width\":50,\"style\":{\"color\":{\"background\":\"#000000\",\"text\":\"#ffffff\"},\"border\":{\"radius\":\"50px\"}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-50\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:50px;background-color:#000000;color:#ffffff\">Contact us</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":64} -->\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";i:678;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:26:\"Three column pricing table\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3717:\"\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-12 wp-block-columns-is-layout-flex\" style=\"margin-bottom:0\">\n<div class=\"wp-block-column has-text-color has-background has-link-color wp-elements-2ae1b943d87d6b5cbc827b8e7de5c343 is-layout-flow wp-block-column-is-layout-flow\" style=\"color:#000000;background-color:#ffe97d;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 class=\"wp-block-heading\" id=\"single\" style=\"font-size:40px\"><strong>Single</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Enrich our growing community.</strong> </p>\n\n\n\n<hr class=\"wp-block-separator has-text-color has-css-opacity has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n\n\n\n<ul class=\"has-normal-font-size\">\n<li>General admission and member discounts for one adult</li>\n\n\n\n<li>One free ticket per special exhibition</li>\n\n\n\n<li>Two single-use guest passes per year</li>\n</ul>\n\n\n\n<div class=\"wp-block-buttons alignfull is-horizontal is-content-justification-center is-layout-flex wp-container-6 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$110 / year</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column has-text-color has-background has-link-color wp-elements-c860b6260b3b3b7bae640a65db9c9aec is-layout-flow wp-block-column-is-layout-flow\" style=\"color:#000000;background-color:#d1d1e1;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 class=\"wp-block-heading\" id=\"family\" style=\"font-size:40px\"><strong>Family</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Support special exhibitions.</strong></p>\n\n\n\n<hr class=\"wp-block-separator has-css-opacity is-style-wide\" />\n\n\n\n<ul class=\"has-normal-font-size\">\n<li>General admission and member discounts for two adults</li>\n\n\n\n<li>Four free tickets per special exhibition</li>\n\n\n\n<li>Four single-use guest passes per year</li>\n</ul>\n\n\n\n<div class=\"wp-block-buttons alignfull is-horizontal is-content-justification-center is-layout-flex wp-container-8 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-fill\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$200 / year</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column has-text-color has-background has-link-color wp-elements-4a86cd4fa1de9230a73a90c7ad305893 is-layout-flow wp-block-column-is-layout-flow\" style=\"color:#000000;background-color:#c0ebf1;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 class=\"wp-block-heading\" id=\"patron\" style=\"font-size:40px\"><strong>Patron</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\"><strong>Take support to the next level.</strong></p>\n\n\n\n<hr class=\"wp-block-separator has-css-opacity is-style-wide\" />\n\n\n\n<ul class=\"has-normal-font-size\">\n<li>General admission and member discounts for two adults</li>\n\n\n\n<li>Five free tickets per special exhibition</li>\n\n\n\n<li>Six single-use guest passes per year</li>\n</ul>\n\n\n\n<div class=\"wp-block-buttons alignfull is-horizontal is-content-justification-center is-layout-flex wp-container-10 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$400 / year</a></div>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:272:\"Three equal-width columns set up as a pricing table. The left column has a yellow background, the middle column has a light purple background, and the right column has a light blue background. Each column contains a heading, subheading, separator, list, and then a button.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:117:\"core/button,core/buttons,core/column,core/columns,core/heading,core/list,core/list-item,core/paragraph,core/separator\";}s:14:\"category_slugs\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:6125:\"<!-- wp:columns {\"align\":\"wide\",\"style\":{\"spacing\":{\"margin\":{\"bottom\":\"0\"}}}} -->\n<div class=\"wp-block-columns alignwide\" style=\"margin-bottom:0\"><!-- wp:column {\"style\":{\"color\":{\"background\":\"#ffe97d\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"color:#000000;background-color:#ffe97d;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}},\"anchor\":\"single\"} -->\n<h2 class=\"wp-block-heading\" id=\"single\" style=\"font-size:40px\"><strong>Single</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.5\"}},\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Enrich our growing community.</strong> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"opacity\":\"css\",\"style\":{\"color\":{\"background\":\"#000000\"}},\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-css-opacity has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><!-- wp:list-item -->\n<li>General admission and member discounts for one adult</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>One free ticket per special exhibition</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Two single-use guest passes per year</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$110 / year</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"style\":{\"color\":{\"background\":\"#d1d1e1\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"color:#000000;background-color:#d1d1e1;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}},\"anchor\":\"family\"} -->\n<h2 class=\"wp-block-heading\" id=\"family\" style=\"font-size:40px\"><strong>Family</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.5\"}},\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Support special exhibitions.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"opacity\":\"css\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-css-opacity is-style-wide\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><!-- wp:list-item -->\n<li>General admission and member discounts for two adults</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Four free tickets per special exhibition</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Four single-use guest passes per year</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-fill\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$200 / year</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"style\":{\"color\":{\"background\":\"#c0ebf1\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"color:#000000;background-color:#c0ebf1;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}},\"anchor\":\"patron\"} -->\n<h2 class=\"wp-block-heading\" id=\"patron\" style=\"font-size:40px\"><strong>Patron</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\"><strong>Take support to the next level.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"opacity\":\"css\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-css-opacity is-style-wide\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><!-- wp:list-item -->\n<li>General admission and member discounts for two adults</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Five free tickets per special exhibition</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Six single-use guest passes per year</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$400 / year</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";i:669;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:31:\"Image and quote on a background\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2281:\"\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#f1f5c7\"><figure class=\"wp-block-media-text__media\"><img decoding=\"async\" loading=\"lazy\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png\" alt=\"\" class=\"wp-image-5263 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png 1024w, https://s.w.org/patterns/files/2021/06/pear-1-300x300.png 300w, https://s.w.org/patterns/files/2021/06/pear-1-150x150.png 150w, https://s.w.org/patterns/files/2021/06/pear-1-768x768.png 768w, https://s.w.org/patterns/files/2021/06/pear-1.png 1300w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure><div class=\"wp-block-media-text__content\">\n<div class=\"wp-block-group is-layout-flow wp-block-group-is-layout-flow\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<p style=\"font-size:36px;line-height:1.2\"><strong>Even the bitterest fruit has sugar in it.</strong></p>\n\n\n\n<p class=\"has-extra-small-font-size\">– Terry a O&#8217;Neal</p>\n</div>\n</div></div>\n\n\n\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#fffdea\"><figure class=\"wp-block-media-text__media\"><img decoding=\"async\" loading=\"lazy\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png\" alt=\"\" class=\"wp-image-673 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png 1024w, https://s.w.org/patterns/files/2021/06/pear-half-300x300.png 300w, https://s.w.org/patterns/files/2021/06/pear-half-150x150.png 150w, https://s.w.org/patterns/files/2021/06/pear-half-768x768.png 768w, https://s.w.org/patterns/files/2021/06/pear-half.png 1300w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure><div class=\"wp-block-media-text__content\">\n<div class=\"wp-block-group is-layout-flow wp-block-group-is-layout-flow\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<p style=\"font-size:36px;line-height:1.2\"><strong>The trees that are slow to grow bear the best fruit.</strong></p>\n\n\n\n<p class=\"has-extra-small-font-size\">– Molière</p>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:221:\"Two media and text blocks. The top one has a pale green background. The text is on the left and contains a quote, and the image is on the right. The next block underneath has the image on the left, and quote on the right.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:41:\"core/group,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"images\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:2404:\"<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":5263,\"mediaLink\":\"https://wordpress.org/patterns/pattern/image-and-quote-on-a-background/pear-3/\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\",\"style\":{\"color\":{\"background\":\"#f1f5c7\"}}} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#f1f5c7\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png\" alt=\"\" class=\"wp-image-5263 size-full\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.2\",\"fontSize\":\"36px\"}}} -->\n<p style=\"font-size:36px;line-height:1.2\"><strong>Even the bitterest fruit has sugar in it.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"extra-small\"} -->\n<p class=\"has-extra-small-font-size\">– Terry a O\'Neal</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":673,\"mediaLink\":\"https://wordpress.org/patterns/pear-half/\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\",\"style\":{\"color\":{\"background\":\"#fffdea\"}}} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#fffdea\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png\" alt=\"\" class=\"wp-image-673 size-full\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.2\",\"fontSize\":\"36px\"}}} -->\n<p style=\"font-size:36px;line-height:1.2\"><strong>The trees that are slow to grow bear the best fruit.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"extra-small\"} -->\n<p class=\"has-extra-small-font-size\">– Molière</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:media-text -->\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";i:591;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Event\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1687:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-top has-text-color has-background has-link-color wp-elements-5fce4e677a9b9d7d0cae0196c9d74d97\" style=\"color:#fffdc7;background-color:#121c1c;grid-template-columns:auto 60%\"><div class=\"wp-block-media-text__content\">\n<div class=\"wp-block-group has-link-color wp-elements-71b4a847bbd96313422a1303e9ba41f3 is-layout-flow wp-block-group-is-layout-flow\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 class=\"wp-block-heading\" style=\"font-size:48px;font-weight:700;line-height:1.15\">Opening <br>Party</h2>\n\n\n\n<p class=\"has-text-color has-link-color wp-elements-0860918d5b16b9e1778b1966b333b980\" style=\"color:#fffdc7\"><strong><a href=\"#\">RSVP →</a></strong></p>\n</div>\n</div><figure class=\"wp-block-media-text__media\"><img decoding=\"async\" loading=\"lazy\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" alt=\"\" class=\"wp-image-590 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg 1024w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-300x300.jpg 300w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-150x150.jpg 150w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-768x768.jpg 768w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1536x1536.jpg 1536w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1.jpg 1572w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:54:\"core/group,core/heading,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:3:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";i:2;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1617:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaId\":590,\"mediaLink\":\"https://wordpress.org/patterns/image-from-rawpixel-id-430289-jpeg-1/\",\"mediaType\":\"image\",\"mediaWidth\":60,\"verticalAlignment\":\"top\",\"style\":{\"color\":{\"background\":\"#121c1c\",\"text\":\"#fffdc7\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-top has-text-color has-background has-link-color\" style=\"color:#fffdc7;background-color:#121c1c;grid-template-columns:auto 60%\"><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"700\",\"fontSize\":\"48px\",\"lineHeight\":\"1.15\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:48px;font-weight:700;line-height:1.15\">Opening <br>Party</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}},\"color\":{\"text\":\"#fffdc7\"}}} -->\n<p class=\"has-text-color has-link-color\" style=\"color:#fffdc7\"><strong><a href=\"#\">RSVP →</a></strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" alt=\"\" class=\"wp-image-590 size-full\" /></figure></div>\n<!-- /wp:media-text -->\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";i:573;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Image on solid color with description\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1830:\"\n<div class=\"wp-block-columns alignfull is-layout-flex wp-container-21 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:50%\">\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#f6f6f6;min-height:600px\"><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-medium\"><img decoding=\"async\" loading=\"lazy\" width=\"263\" height=\"300\" src=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg\" alt=\"\" class=\"wp-image-571\" srcset=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg 263w, https://s.w.org/patterns/files/2021/06/wire-sculpture-898x1024.jpg 898w, https://s.w.org/patterns/files/2021/06/wire-sculpture-768x875.jpg 768w, https://s.w.org/patterns/files/2021/06/wire-sculpture-1347x1536.jpg 1347w, https://s.w.org/patterns/files/2021/06/wire-sculpture.jpg 1658w\" sizes=\"(max-width: 263px) 100vw, 263px\" /></figure></div>\n</div></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\" style=\"padding-top:1em;padding-right:1em;padding-bottom:1em;padding-left:1em\">\n<div class=\"wp-block-columns is-layout-flex wp-container-19 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:320px\">\n<p class=\"has-small-font-size\" style=\"line-height:1.6\"><strong>Airplane</strong></p>\n\n\n\n<p class=\"has-small-font-size\" style=\"line-height:1.6\">Copper wire, wood base. I created this piece in late 2008. For this work, I aimed to convey both the industrial heaviness of an airplane, but also the cloudlike floating quality you feel when you’re in one.</p>\n</div>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:38:\"Image on solid color with description.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:61:\"core/column,core/columns,core/cover,core/image,core/paragraph\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"images\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1826:\"<!-- wp:columns {\"align\":\"full\"} -->\n<div class=\"wp-block-columns alignfull\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:cover {\"customOverlayColor\":\"#f6f6f6\",\"minHeight\":600} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#f6f6f6;min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:image {\"align\":\"center\",\"id\":571,\"sizeSlug\":\"medium\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-medium\"><img src=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg\" alt=\"\" class=\"wp-image-571\" /></figure></div>\n<!-- /wp:image --></div></div>\n<!-- /wp:cover --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"1em\",\"right\":\"1em\",\"bottom\":\"1em\",\"left\":\"1em\"}}}} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"padding-top:1em;padding-right:1em;padding-bottom:1em;padding-left:1em\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"320px\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:320px\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\" style=\"line-height:1.6\"><strong>Airplane</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\" style=\"line-height:1.6\">Copper wire, wood base. I created this piece in late 2008. For this work, I aimed to convey both the industrial heaviness of an airplane, but also the cloudlike floating quality you feel when you’re in one.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";i:526;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:31:\"Offset images with descriptions\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2907:\"\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top is-layout-flex wp-container-31 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-vertically-aligned-top is-layout-flow wp-block-column-is-layout-flow\">\n<div class=\"wp-block-group wp-container-content-24 is-vertical is-content-justification-left is-nowrap is-layout-flex wp-container-25 wp-block-group-is-layout-flex\" style=\"margin-top:0;margin-bottom:0\">\n<figure class=\"wp-block-image size-large wp-container-content-22\"><img decoding=\"async\" loading=\"lazy\" width=\"793\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg\" alt=\"Beautiful photomechanical prints of White Irises (1887-1897) by Ogawa Kazumasa. Original from The Rijksmuseum. \" class=\"wp-image-525\" srcset=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg 793w, https://s.w.org/patterns/files/2021/06/Iris-232x300.jpg 232w, https://s.w.org/patterns/files/2021/06/Iris-768x992.jpg 768w, https://s.w.org/patterns/files/2021/06/Iris-1189x1536.jpg 1189w, https://s.w.org/patterns/files/2021/06/Iris-1586x2048.jpg 1586w, https://s.w.org/patterns/files/2021/06/Iris.jpg 1920w\" sizes=\"(max-width: 793px) 100vw, 793px\" /></figure>\n\n\n\n<div class=\"wp-block-group is-vertical is-nowrap is-layout-flex wp-container-23 wp-block-group-is-layout-flex\">\n<p class=\"has-medium-font-size\"><strong>White Irises</strong></p>\n\n\n\n<p class=\"has-small-font-size\">Ogawa Kazumasa</p>\n</div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-top is-layout-flow wp-block-column-is-layout-flow\">\n<div class=\"wp-block-group wp-container-content-28 is-vertical is-layout-flex wp-container-29 wp-block-group-is-layout-flex\" style=\"margin-top:0;margin-bottom:0\">\n<div class=\"wp-block-group is-vertical is-nowrap is-layout-flex wp-container-27 wp-block-group-is-layout-flex\">\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-medium-font-size\"><strong>Cherry Blossom</strong></p>\n\n\n\n<p class=\"has-small-font-size\">Ogawa Kazumasa</p>\n</div>\n\n\n\n<figure class=\"wp-block-image size-large\" style=\"font-size:14px\"><img decoding=\"async\" loading=\"lazy\" width=\"707\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg\" alt=\"Beautiful photomechanical prints of Cherry Blossom (1887-1897) by Ogawa Kazumasa. Original from The Rijksmuseum. \" class=\"wp-image-524\" srcset=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg 707w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-207x300.jpg 207w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-768x1112.jpg 768w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-1061x1536.jpg 1061w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-1414x2048.jpg 1414w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-scaled.jpg 1768w\" sizes=\"(max-width: 707px) 100vw, 707px\" /></figure>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:58:\"Two offset columns with images and titles within each one.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:73:\"core/column,core/columns,core/group,core/image,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:7:\"gallery\";i:2;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:2930:\"<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":{\"top\":\"var:preset|spacing|40\",\"left\":\"var:preset|spacing|40\"}}}} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:group {\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"480px\"},\"spacing\":{\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\" style=\"margin-top:0;margin-bottom:0\"><!-- wp:image {\"id\":525,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"50%\"}}} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg\" alt=\"Beautiful photomechanical prints of White Irises (1887-1897) by Ogawa Kazumasa. Original from The Rijksmuseum. \" class=\"wp-image-525\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0\"}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\"><strong>White Irises</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">Ogawa Kazumasa</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:group {\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"480px\"},\"spacing\":{\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\"}} -->\n<div class=\"wp-block-group\" style=\"margin-top:0;margin-bottom:0\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0\"}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:spacer {\"height\":\"80px\"} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\"><strong>Cherry Blossom</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">Ogawa Kazumasa</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"id\":524,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} -->\n<figure class=\"wp-block-image size-large\" style=\"font-size:14px\"><img src=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg\" alt=\"Beautiful photomechanical prints of Cherry Blossom (1887-1897) by Ogawa Kazumasa. Original from The Rijksmuseum. \" class=\"wp-image-524\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";i:521;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:45:\"Image with description below and to the right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1665:\"\n<div class=\"wp-block-columns is-layout-flex wp-container-36 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:10%\"></div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" loading=\"lazy\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg\" alt=\"Vintage Cupid Illustration\" class=\"wp-image-522\" srcset=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg 1024w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-300x300.jpg 300w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-150x150.jpg 150w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-768x768.jpg 768w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1.jpg 1510w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:10%\"></div>\n</div>\n\n\n\n<div class=\"wp-block-columns is-layout-flex wp-container-39 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p style=\"font-size:14px\"><strong>Cupid in Flight</strong><br>48” x 48” Giclee print on archival paper.</p>\n</div>\n</div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:46:\"Image with description below and to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:50:\"core/column,core/columns,core/image,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1241:\"<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"10%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:10%\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":522,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg\" alt=\"Vintage Cupid Illustration\" class=\"wp-image-522\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"10%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:10%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} -->\n<p style=\"font-size:14px\"><strong>Cupid in Flight</strong><br>48” x 48” Giclee print on archival paper.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";i:502;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:13:\"Event details\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1684:\"\n<figure class=\"wp-block-image alignwide size-full\"><img decoding=\"async\" loading=\"lazy\" width=\"2560\" height=\"1227\" src=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg\" alt=\"Image of a woman being carried through the air by swans.\" class=\"wp-image-501\" srcset=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg 2560w, https://s.w.org/patterns/files/2021/06/Group-17-300x144.jpg 300w, https://s.w.org/patterns/files/2021/06/Group-17-1024x491.jpg 1024w, https://s.w.org/patterns/files/2021/06/Group-17-768x368.jpg 768w, https://s.w.org/patterns/files/2021/06/Group-17-1536x736.jpg 1536w, https://s.w.org/patterns/files/2021/06/Group-17-2048x981.jpg 2048w\" sizes=\"(max-width: 2560px) 100vw, 2560px\" /></figure>\n\n\n\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-layout-flex wp-container-44 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\">\n<p style=\"line-height:2\"><strong>Location:</strong><br>82 Main St. Brooklyn, NY</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\">\n<p style=\"line-height:2\"><strong>Date:</strong><br>October 24, 2021</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\">\n<div class=\"wp-block-buttons is-layout-flex wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"color:#efefef;background-color:#262626\">Purchase Tickets</a></div>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:14:\"Event details.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:75:\"core/button,core/buttons,core/column,core/columns,core/image,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1642:\"<!-- wp:image {\"align\":\"wide\",\"id\":501,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image alignwide size-full\"><img src=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg\" alt=\"Image of a woman being carried through the air by swans.\" class=\"wp-image-501\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"2\"}}} -->\n<p style=\"line-height:2\"><strong>Location:</strong><br>82 Main St. Brooklyn, NY</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"2\"}}} -->\n<p style=\"line-height:2\"><strong>Date:</strong><br>October 24, 2021</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"width\":100,\"style\":{\"color\":{\"background\":\"#262626\",\"text\":\"#efefef\"}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"color:#efefef;background-color:#262626\">Purchase Tickets</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:9;O:8:\"stdClass\":7:{s:2:\"id\";i:200;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Three columns of text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1077:\"\n<div class=\"wp-block-columns alignfull has-text-color has-background is-layout-flex wp-container-48 wp-block-columns-is-layout-flex\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<h3 class=\"wp-block-heading\" style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n\n\n\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<h3 class=\"wp-block-heading\" style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n\n\n\n<p>Stay updated and see our current exhibitions here.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<h3 class=\"wp-block-heading\" style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n\n\n\n<p>Get to know our opening times, ticket prices and discounts.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:22:\"Three columns of text.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:52:\"core/column,core/columns,core/heading,core/paragraph\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1496:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Stay updated and see our current exhibitions here.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get to know our opening times, ticket prices and discounts.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:10;O:8:\"stdClass\":7:{s:2:\"id\";i:199;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Three columns with images and text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3152:\"\n<div class=\"wp-block-group alignfull has-background is-layout-flow wp-block-group-is-layout-flow\" style=\"background-color:#f8f4e4\">\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-50 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h6 class=\"has-text-color wp-block-heading\" id=\"ecosystem\" style=\"color:#000000\">ECOSYSTEM</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n\n\n\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-54 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33%\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-57 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:67%\">\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man&#8217;s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Three columns with images and text, with vertical spacing for an offset look.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:86:\"core/column,core/columns,core/group,core/heading,core/image,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:3990:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f8f4e4\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h6 class=\"has-text-color\" id=\"ecosystem\" style=\"color:#000000\">ECOSYSTEM</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"5vw\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"5px\"} -->\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"67%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:67%\"><!-- wp:image {\"align\":\"right\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man\'s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\";}i:11;O:8:\"stdClass\":7:{s:2:\"id\";i:192;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Media and text with image on the left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:554:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"wp-block-heading has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the left and text to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:43:\"core/heading,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:844:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"wp-block-heading has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:12;O:8:\"stdClass\":7:{s:2:\"id\";i:185;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with left-aligned text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1320:\"\n<div class=\"wp-block-cover alignfull\" style=\"min-height:800px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-60 has-background-dim\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<h2 class=\"wp-block-heading alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-61 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Cover image with quote on top\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:75:\"core/column,core/columns,core/cover,core/heading,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1698:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:800px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-60 has-background-dim\"></span><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"wp-block-heading alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":\"330px\"} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:13;O:8:\"stdClass\":7:{s:2:\"id\";i:184;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:7:\"Heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:526:\"\n<h2 class=\"alignwide wp-block-heading\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">We&#8217;re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:17:\"large text, title\";s:16:\"wpop_description\";s:12:\"Heading text\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:12:\"core/heading\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:621:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">We\'re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n<!-- /wp:heading -->\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1684568816:1'),
(4, 5, '_wp_page_template', 'page-register.php'),
(5, 7, '_edit_lock', '1684576292:1'),
(6, 7, '_wp_page_template', 'page-login.php'),
(7, 3, '_wp_trash_meta_status', 'draft'),
(8, 3, '_wp_trash_meta_time', '1684569006'),
(9, 3, '_wp_desired_post_slug', 'privacy-policy'),
(10, 2, '_wp_trash_meta_status', 'publish'),
(11, 2, '_wp_trash_meta_time', '1684569014'),
(12, 2, '_wp_desired_post_slug', 'sample-page'),
(13, 11, '_menu_item_type', 'post_type'),
(14, 11, '_menu_item_menu_item_parent', '0'),
(15, 11, '_menu_item_object_id', '7'),
(16, 11, '_menu_item_object', 'page'),
(17, 11, '_menu_item_target', ''),
(18, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(19, 11, '_menu_item_xfn', ''),
(20, 11, '_menu_item_url', ''),
(22, 12, '_menu_item_type', 'post_type'),
(23, 12, '_menu_item_menu_item_parent', '0'),
(24, 12, '_menu_item_object_id', '5'),
(25, 12, '_menu_item_object', 'page'),
(26, 12, '_menu_item_target', ''),
(27, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 12, '_menu_item_xfn', ''),
(29, 12, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
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
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-05-17 17:41:01', '2023-05-17 17:41:01', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-05-17 17:41:01', '2023-05-17 17:41:01', '', 0, 'http://localhost/eventmanagementsystem/?p=1', 0, 'post', '', 1),
(2, 1, '2023-05-17 17:41:01', '2023-05-17 17:41:01', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/eventmanagementsystem/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-05-20 07:50:14', '2023-05-20 07:50:14', '', 0, 'http://localhost/eventmanagementsystem/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-05-17 17:41:01', '2023-05-17 17:41:01', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/eventmanagementsystem.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2023-05-20 07:50:06', '2023-05-20 07:50:06', '', 0, 'http://localhost/eventmanagementsystem/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-05-17 17:41:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-05-17 17:41:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/eventmanagementsystem/?p=4', 0, 'post', '', 0),
(5, 1, '2023-05-20 07:49:15', '2023-05-20 07:49:15', '', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2023-05-20 07:49:15', '2023-05-20 07:49:15', '', 0, 'http://localhost/eventmanagementsystem/?page_id=5', 0, 'page', '', 0),
(6, 1, '2023-05-20 07:49:15', '2023-05-20 07:49:15', '', 'Register', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-05-20 07:49:15', '2023-05-20 07:49:15', '', 5, 'http://localhost/eventmanagementsystem/?p=6', 0, 'revision', '', 0),
(7, 1, '2023-05-20 07:49:42', '2023-05-20 07:49:42', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2023-05-20 07:49:42', '2023-05-20 07:49:42', '', 0, 'http://localhost/eventmanagementsystem/?page_id=7', 0, 'page', '', 0),
(8, 1, '2023-05-20 07:49:42', '2023-05-20 07:49:42', '', 'Login', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-05-20 07:49:42', '2023-05-20 07:49:42', '', 7, 'http://localhost/eventmanagementsystem/?p=8', 0, 'revision', '', 0),
(9, 1, '2023-05-20 07:50:06', '2023-05-20 07:50:06', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/eventmanagementsystem.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-05-20 07:50:06', '2023-05-20 07:50:06', '', 3, 'http://localhost/eventmanagementsystem/?p=9', 0, 'revision', '', 0),
(10, 1, '2023-05-20 07:50:14', '2023-05-20 07:50:14', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/eventmanagementsystem/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-20 07:50:14', '2023-05-20 07:50:14', '', 2, 'http://localhost/eventmanagementsystem/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-05-20 07:51:25', '2023-05-20 07:51:25', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2023-05-20 07:51:25', '2023-05-20 07:51:25', '', 0, 'http://localhost/eventmanagementsystem/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2023-05-20 07:51:25', '2023-05-20 07:51:25', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2023-05-20 07:51:25', '2023-05-20 07:51:25', '', 0, 'http://localhost/eventmanagementsystem/?p=12', 2, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary', 'primary', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 2, 0),
(12, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"153d32209bec117ab5f63e26c4dd815307f0d21d9d42aa6899996379da5a113c\";a:4:{s:10:\"expiration\";i:1684582973;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36\";s:5:\"login\";i:1684410173;}s:64:\"88a47f83b83adbdb8b4bd25bef78e9c227b62c4acab81965227dde66b6e3521a\";a:4:{s:10:\"expiration\";i:1684741523;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42\";s:5:\"login\";i:1684568723;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 2, 'nickname', 'joy@gmail.com'),
(21, 2, 'first_name', ''),
(22, 2, 'last_name', ''),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'syntax_highlighting', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'locale', ''),
(31, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(32, 2, 'wp_user_level', '0'),
(33, 2, 'fullname', 'Joy Mwende'),
(34, 2, 'email', 'joy@gmail.com'),
(35, 2, 'phonenumber', '0706330213'),
(36, 3, 'nickname', 'victory@gmail.com'),
(37, 3, 'first_name', ''),
(38, 3, 'last_name', ''),
(39, 3, 'description', ''),
(40, 3, 'rich_editing', 'true'),
(41, 3, 'syntax_highlighting', 'true'),
(42, 3, 'comment_shortcuts', 'false'),
(43, 3, 'admin_color', 'fresh'),
(44, 3, 'use_ssl', '0'),
(45, 3, 'show_admin_bar_front', 'true'),
(46, 3, 'locale', ''),
(47, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(48, 3, 'wp_user_level', '0'),
(49, 3, 'fullname', 'Victory Mukiri'),
(50, 3, 'email', 'victory@gmail.com'),
(51, 3, 'phonenumber', '0796418731'),
(52, 3, 'session_tokens', 'a:2:{s:64:\"2b9d91b605465fc62e5abd0e2bffb7ef2598280d1a409ee1109ee72133c953fb\";a:4:{s:10:\"expiration\";i:1684752118;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42\";s:5:\"login\";i:1684579318;}s:64:\"7a4a150e79950db2a65b5d00cc96aa7ae3b7a42508d625016fa1fa5418f5efc8\";a:4:{s:10:\"expiration\";i:1684752118;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42\";s:5:\"login\";i:1684579318;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BFdJfokYzKml5QPpwGqitLB25JEzSy1', 'admin', 'orderntools@gmail.com', 'http://localhost/eventmanagementsystem', '2023-05-17 17:41:01', '', 0, 'admin'),
(2, 'joy@gmail.com', '$P$BKQjddoo5nGkgyfyfKoKY71KcVrZhu.', 'joygmail-com', 'joy@gmail.com', '', '2023-05-20 10:39:44', '', 0, 'joy@gmail.com'),
(3, 'victory@gmail.com', '$P$BqOd.oQ7WVVToLHeAiwlBfzi/VeWZj1', 'victorygmail-com', 'victory@gmail.com', '', '2023-05-20 10:41:58', '', 0, 'victory@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
