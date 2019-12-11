-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 11 Décembre 2019 à 09:16
-- Version du serveur :  10.1.40-MariaDB
-- Version de PHP :  5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `inestomialojelecerf`
--

-- --------------------------------------------------------

--
-- Structure de la table `amis`
--

CREATE TABLE IF NOT EXISTS `amis` (
  `id` int(11) NOT NULL,
  `id_demandeur` int(11) NOT NULL,
  `id_receveur` int(11) NOT NULL,
  `etat` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `amis`
--

INSERT INTO `amis` (`id`, `id_demandeur`, `id_receveur`, `etat`) VALUES
(1, 1, 2, 0),
(10, 1, 3, 1),
(11, 1, 4, 0),
(12, 1, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ecrit`
--

CREATE TABLE IF NOT EXISTS `ecrit` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text,
  `dateEcrit` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `idAuteur` int(11) NOT NULL,
  `idAmi` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ecrit`
--

INSERT INTO `ecrit` (`id`, `titre`, `contenu`, `dateEcrit`, `image`, `idAuteur`, `idAmi`) VALUES
(1, 'le nouveau post des e cici', 'alors comment ca va', '2017-10-10 16:57:14', '', 2, 1),
(2, 'test', 'alors comment ca va', '2017-10-10 16:57:14', '', 1, 2),
(3, 'Merci de me contacter', 'Ca fait plaisir entre citrouilles', '2017-10-10 16:57:14', '', 1, 2),
(4, 'salut', 'bon appetit les citrouilles', '2019-11-26 12:59:39', NULL, 4, 2),
(5, 'rtrft', 'dfdfd', '2019-11-26 13:00:24', NULL, 4, 2),
(6, 'jyruyj', 'ikgiu', '2019-11-26 13:00:34', NULL, 4, 4),
(7, 'fjfglkddfjfb', 'gsgq<dg', '2019-12-02 11:49:08', NULL, 1, 1),
(8, 'coucou', 'margfo', '2019-12-03 12:26:48', NULL, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `login`, `mdp`, `email`, `genre`) VALUES
(1, 'gilles', '*A4B6157319038724E3560894F7F932C8886EBFCF', 'gilles@toto.fr', 'C'),
(2, 'citrouille', '*A4B6157319038724E3560894F7F932C8886EBFCF', 'gilles@toto.fr', 'C'),
(3, 'margo', '*A4B6157319038724E3560894F7F932C8886EBFCF', 'margo@mmi.fr', 'on'),
(4, 'cendrillon', '*A4B6157319038724E3560894F7F932C8886EBFCF', 'cendrillon@disney.fr', 'on');

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-04 10:05:13', '2019-12-04 09:05:13', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1:8000', 'yes'),
(2, 'home', 'http://127.0.0.1:8000', 'yes'),
(3, 'blogname', 'CrashTest', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tomines@hotmail.fr', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=14&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:"advanced-custom-fields-pro/acf.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:110:"/export/etu/ines.tomialoje-lecerf/Documents/wp/wordpress/wp-content/plugins/advanced-custom-fields-pro/acf.php";i:1;s:0:"";}', 'no'),
(40, 'template', 'my-theme', 'yes'),
(41, 'stylesheet', 'my-theme', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '33', 'yes'),
(84, 'page_on_front', '14', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1576055124;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1576055126;a:4:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1576055146;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1576055147;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1576055150;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.3";s:7:"version";s:3:"5.3";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-5.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-5.3.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.3";s:7:"version";s:3:"5.3";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.3";s:7:"version";s:3:"5.3";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1576054604;s:15:"version_checked";s:5:"5.2.4";s:12:"translations";a:0:{}}', 'no'),
(120, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1576054615;s:7:"checked";a:4:{s:8:"my-theme";s:3:"1.0";s:14:"twentynineteen";s:3:"1.4";s:15:"twentyseventeen";s:3:"2.2";s:13:"twentysixteen";s:3:"2.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(122, '_site_transient_timeout_browser_1342df7e5afb33a2f1de6c596e7b65b1', '1576055148', 'no'),
(123, '_site_transient_browser_1342df7e5afb33a2f1de6c596e7b65b1', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"67.0";s:8:"platform";s:5:"Linux";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(124, '_site_transient_timeout_php_check_f0b6411b8c82dcf39302e5312c1fbd33', '1576055148', 'no'),
(125, '_site_transient_php_check_f0b6411b8c82dcf39302e5312c1fbd33', 'a:5:{s:19:"recommended_version";s:3:"7.3";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:1;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no'),
(139, 'can_compress_scripts', '0', 'no'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(145, 'theme_mods_my-theme', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:3:{s:8:"nav_main";i:2;s:7:"nav_xxx";i:0;s:7:"nav_xyz";i:0;}}', 'yes'),
(150, 'acf_version', '5.8.7', 'yes'),
(159, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1575453813;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(160, 'current_theme', 'My theme', 'yes'),
(161, 'theme_switched', '', 'yes'),
(183, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(201, '_transient_timeout_acf_plugin_updates', '1576227405', 'no'),
(202, '_transient_acf_plugin_updates', 'a:4:{s:7:"plugins";a:0:{}s:10:"expiration";i:172800;s:6:"status";i:1;s:7:"checked";a:1:{s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.8.7";}}', 'no'),
(203, '_site_transient_timeout_theme_roots', '1576056412', 'no'),
(204, '_site_transient_theme_roots', 'a:4:{s:8:"my-theme";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(205, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1576054617;s:7:"checked";a:3:{s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.8.7";s:19:"akismet/akismet.php";s:5:"4.1.2";s:9:"hello.php";s:5:"1.7.2";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.4.1.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.3";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:59:"http://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1575713401:1'),
(7, 2, '_edit_lock', '1575452787:1'),
(8, 12, '_edit_lock', '1575452792:1'),
(9, 13, '_edit_lock', '1575452903:1'),
(10, 3, '_edit_lock', '1575452920:1'),
(11, 14, '_edit_lock', '1575713748:1'),
(12, 14, '_edit_last', '1'),
(13, 14, 'banner_baseline', 'salutttttt'),
(14, 14, '_banner_baseline', 'field_5de77c529d669'),
(15, 14, 'banner_title_brown', 'titre marron'),
(16, 14, '_banner_title_brown', 'field_5de77cef9d66a'),
(17, 14, 'banner_title_green', 'titre verttttt'),
(18, 14, '_banner_title_green', 'field_5de77f279a44b'),
(19, 14, 'banner_register_link', ''),
(20, 14, '_banner_register_link', 'field_5de77f419a44c'),
(21, 14, 'banner_background_image', '17'),
(22, 14, '_banner_background_image', 'field_5de77f689a44d'),
(23, 16, 'banner_baseline', 'salutttttt'),
(24, 16, '_banner_baseline', 'field_5de77c529d669'),
(25, 16, 'banner_title_brown', ''),
(26, 16, '_banner_title_brown', 'field_5de77cef9d66a'),
(27, 16, 'banner_title_green', ''),
(28, 16, '_banner_title_green', 'field_5de77f279a44b'),
(29, 16, 'banner_register_link', ''),
(30, 16, '_banner_register_link', 'field_5de77f419a44c'),
(31, 16, 'banner_background_image', ''),
(32, 16, '_banner_background_image', 'field_5de77f689a44d'),
(33, 17, '_wp_attached_file', '2019/12/spaghetti-à-la-bolognaise-végétarienne.jpg'),
(34, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:663;s:4:"file";s:53:"2019/12/spaghetti-à-la-bolognaise-végétarienne.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:53:"spaghetti-à-la-bolognaise-végétarienne-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:53:"spaghetti-à-la-bolognaise-végétarienne-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:53:"spaghetti-à-la-bolognaise-végétarienne-768x509.jpg";s:5:"width";i:768;s:6:"height";i:509;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(35, 18, 'banner_baseline', 'salutttttt'),
(36, 18, '_banner_baseline', 'field_5de77c529d669'),
(37, 18, 'banner_title_brown', 'titre marron'),
(38, 18, '_banner_title_brown', 'field_5de77cef9d66a'),
(39, 18, 'banner_title_green', 'titre verttttt'),
(40, 18, '_banner_title_green', 'field_5de77f279a44b'),
(41, 18, 'banner_register_link', ''),
(42, 18, '_banner_register_link', 'field_5de77f419a44c'),
(43, 18, 'banner_background_image', '17'),
(44, 18, '_banner_background_image', 'field_5de77f689a44d'),
(45, 14, 'section-title', 'salut les amis'),
(46, 14, '_section-title', 'field_5de77c529d669'),
(47, 14, 'section-chaine', 'mdr t ki'),
(48, 14, '_section-chaine', 'field_5de77cef9d66a'),
(49, 14, 'section-q', 'nicky ahahahahhahaha'),
(50, 14, '_section-q', 'field_5de77f279a44b'),
(51, 14, 'link', 'a:3:{s:5:"title";s:16:"regarde dont ça";s:3:"url";s:36:"https://fr.wikipedia.org/wiki/Patate";s:6:"target";s:6:"_blank";}'),
(52, 14, '_link', 'field_5de77f419a44c'),
(53, 19, 'banner_baseline', 'salutttttt'),
(54, 19, '_banner_baseline', 'field_5de77c529d669'),
(55, 19, 'banner_title_brown', 'titre marron'),
(56, 19, '_banner_title_brown', 'field_5de77cef9d66a'),
(57, 19, 'banner_title_green', 'titre verttttt'),
(58, 19, '_banner_title_green', 'field_5de77f279a44b'),
(59, 19, 'banner_register_link', ''),
(60, 19, '_banner_register_link', 'field_5de77f419a44c'),
(61, 19, 'banner_background_image', '17'),
(62, 19, '_banner_background_image', 'field_5de77f689a44d'),
(63, 19, 'section-title', '65165156'),
(64, 19, '_section-title', 'field_5de77c529d669'),
(65, 19, 'section-chaine', ''),
(66, 19, '_section-chaine', 'field_5de77cef9d66a'),
(67, 19, 'section-q', ''),
(68, 19, '_section-q', 'field_5de77f279a44b'),
(69, 19, 'link', ''),
(70, 19, '_link', 'field_5de77f419a44c'),
(71, 20, 'banner_baseline', 'salutttttt'),
(72, 20, '_banner_baseline', 'field_5de77c529d669'),
(73, 20, 'banner_title_brown', 'titre marron'),
(74, 20, '_banner_title_brown', 'field_5de77cef9d66a'),
(75, 20, 'banner_title_green', 'titre verttttt'),
(76, 20, '_banner_title_green', 'field_5de77f279a44b'),
(77, 20, 'banner_register_link', ''),
(78, 20, '_banner_register_link', 'field_5de77f419a44c'),
(79, 20, 'banner_background_image', '17'),
(80, 20, '_banner_background_image', 'field_5de77f689a44d'),
(81, 20, 'section-title', 'salut les amis'),
(82, 20, '_section-title', 'field_5de77c529d669'),
(83, 20, 'section-chaine', 'mdr t ki'),
(84, 20, '_section-chaine', 'field_5de77cef9d66a'),
(85, 20, 'section-q', 'nicky ahahahahhahaha'),
(86, 20, '_section-q', 'field_5de77f279a44b'),
(87, 20, 'link', 'a:3:{s:5:"title";s:16:"regarde dont ça";s:3:"url";s:36:"https://fr.wikipedia.org/wiki/Patate";s:6:"target";s:0:"";}'),
(88, 20, '_link', 'field_5de77f419a44c'),
(89, 21, 'banner_baseline', 'salutttttt'),
(90, 21, '_banner_baseline', 'field_5de77c529d669'),
(91, 21, 'banner_title_brown', 'titre marron'),
(92, 21, '_banner_title_brown', 'field_5de77cef9d66a'),
(93, 21, 'banner_title_green', 'titre verttttt'),
(94, 21, '_banner_title_green', 'field_5de77f279a44b'),
(95, 21, 'banner_register_link', ''),
(96, 21, '_banner_register_link', 'field_5de77f419a44c'),
(97, 21, 'banner_background_image', '17'),
(98, 21, '_banner_background_image', 'field_5de77f689a44d'),
(99, 21, 'section-title', 'salut les amis'),
(100, 21, '_section-title', 'field_5de77c529d669'),
(101, 21, 'section-chaine', 'mdr t ki'),
(102, 21, '_section-chaine', 'field_5de77cef9d66a'),
(103, 21, 'section-q', 'nicky ahahahahhahaha'),
(104, 21, '_section-q', 'field_5de77f279a44b'),
(105, 21, 'link', 'a:3:{s:5:"title";s:16:"regarde dont ça";s:3:"url";s:36:"https://fr.wikipedia.org/wiki/Patate";s:6:"target";s:6:"_blank";}'),
(106, 21, '_link', 'field_5de77f419a44c'),
(107, 2, '_wp_trash_meta_status', 'publish'),
(108, 2, '_wp_trash_meta_time', '1575705252'),
(109, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(110, 3, '_wp_trash_meta_status', 'draft'),
(111, 3, '_wp_trash_meta_time', '1575705252'),
(112, 3, '_wp_desired_post_slug', 'politique-de-confidentialite'),
(113, 1, '_wp_trash_meta_status', 'publish'),
(114, 1, '_wp_trash_meta_time', '1575705291'),
(115, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(116, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(117, 25, '_edit_lock', '1575705404:1'),
(119, 27, '_edit_lock', '1575705421:1'),
(120, 28, '_edit_lock', '1575705484:1'),
(121, 29, '_edit_lock', '1575705487:1'),
(122, 30, '_edit_lock', '1575705640:1'),
(123, 31, '_edit_lock', '1575705522:1'),
(124, 31, '_wp_trash_meta_status', 'publish'),
(125, 31, '_wp_trash_meta_time', '1575705700'),
(126, 31, '_wp_desired_post_slug', 'actu'),
(127, 33, '_edit_lock', '1575705593:1'),
(128, 35, '_edit_lock', '1575705608:1'),
(129, 37, '_edit_lock', '1575705624:1'),
(130, 39, '_edit_lock', '1575705639:1'),
(131, 41, '_menu_item_type', 'post_type'),
(132, 41, '_menu_item_menu_item_parent', '0'),
(133, 41, '_menu_item_object_id', '35'),
(134, 41, '_menu_item_object', 'page'),
(135, 41, '_menu_item_target', ''),
(136, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(137, 41, '_menu_item_xfn', ''),
(138, 41, '_menu_item_url', ''),
(140, 42, '_menu_item_type', 'post_type'),
(141, 42, '_menu_item_menu_item_parent', '0'),
(142, 42, '_menu_item_object_id', '33'),
(143, 42, '_menu_item_object', 'page'),
(144, 42, '_menu_item_target', ''),
(145, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(146, 42, '_menu_item_xfn', ''),
(147, 42, '_menu_item_url', ''),
(149, 43, '_menu_item_type', 'post_type'),
(150, 43, '_menu_item_menu_item_parent', '0'),
(151, 43, '_menu_item_object_id', '14'),
(152, 43, '_menu_item_object', 'page'),
(153, 43, '_menu_item_target', ''),
(154, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(155, 43, '_menu_item_xfn', ''),
(156, 43, '_menu_item_url', ''),
(158, 44, '_menu_item_type', 'post_type'),
(159, 44, '_menu_item_menu_item_parent', '0'),
(160, 44, '_menu_item_object_id', '35'),
(161, 44, '_menu_item_object', 'page'),
(162, 44, '_menu_item_target', ''),
(163, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(164, 44, '_menu_item_xfn', ''),
(165, 44, '_menu_item_url', ''),
(166, 44, '_menu_item_orphaned', '1575705966'),
(167, 45, '_menu_item_type', 'post_type'),
(168, 45, '_menu_item_menu_item_parent', '0'),
(169, 45, '_menu_item_object_id', '33'),
(170, 45, '_menu_item_object', 'page'),
(171, 45, '_menu_item_target', ''),
(172, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(173, 45, '_menu_item_xfn', ''),
(174, 45, '_menu_item_url', ''),
(175, 45, '_menu_item_orphaned', '1575705966'),
(176, 46, '_menu_item_type', 'post_type'),
(177, 46, '_menu_item_menu_item_parent', '0'),
(178, 46, '_menu_item_object_id', '14'),
(179, 46, '_menu_item_object', 'page'),
(180, 46, '_menu_item_target', ''),
(181, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(182, 46, '_menu_item_xfn', ''),
(183, 46, '_menu_item_url', ''),
(184, 46, '_menu_item_orphaned', '1575705966'),
(185, 37, '_wp_trash_meta_status', 'publish'),
(186, 37, '_wp_trash_meta_time', '1575706132'),
(187, 37, '_wp_desired_post_slug', 'mentions-legales'),
(188, 39, '_wp_trash_meta_status', 'publish'),
(189, 39, '_wp_trash_meta_time', '1575706132'),
(190, 39, '_wp_desired_post_slug', 'plan-du-site'),
(191, 47, '_edit_lock', '1575707221:1'),
(193, 14, 'img-2', '17'),
(194, 14, '_img-2', 'field_5deb7207d0cd4'),
(195, 50, 'banner_baseline', 'salutttttt'),
(196, 50, '_banner_baseline', 'field_5de77c529d669'),
(197, 50, 'banner_title_brown', 'titre marron'),
(198, 50, '_banner_title_brown', 'field_5de77cef9d66a'),
(199, 50, 'banner_title_green', 'titre verttttt'),
(200, 50, '_banner_title_green', 'field_5de77f279a44b'),
(201, 50, 'banner_register_link', ''),
(202, 50, '_banner_register_link', 'field_5de77f419a44c'),
(203, 50, 'banner_background_image', '17'),
(204, 50, '_banner_background_image', 'field_5de77f689a44d'),
(205, 50, 'section-title', 'salut les amis'),
(206, 50, '_section-title', 'field_5de77c529d669'),
(207, 50, 'section-chaine', 'mdr t ki'),
(208, 50, '_section-chaine', 'field_5de77cef9d66a'),
(209, 50, 'section-q', 'nicky ahahahahhahaha'),
(210, 50, '_section-q', 'field_5de77f279a44b'),
(211, 50, 'link', 'a:3:{s:5:"title";s:16:"regarde dont ça";s:3:"url";s:36:"https://fr.wikipedia.org/wiki/Patate";s:6:"target";s:6:"_blank";}'),
(212, 50, '_link', 'field_5de77f419a44c'),
(213, 50, 'img-2', '17'),
(214, 50, '_img-2', 'field_5deb7207d0cd4'),
(215, 14, 'section-conf', 'La conférence'),
(216, 14, '_section-conf', 'field_5deb73ff81197'),
(217, 14, 'txt', 'Les rencontres de la fondation s''intitulent cette année "chaine alimentaire végétale et durabilité : une question d''équilibre". Elles se tiendront le 3 décembre prochain à Bruxelles et auront pour objectif de décrypter la transition nutritionelle des systemes alimentaires à travers le monde, qui appelle à favoriser une alimentation plus végétale.'),
(218, 14, '_txt', 'field_5deb742481198'),
(219, 53, 'banner_baseline', 'salutttttt'),
(220, 53, '_banner_baseline', 'field_5de77c529d669'),
(221, 53, 'banner_title_brown', 'titre marron'),
(222, 53, '_banner_title_brown', 'field_5de77cef9d66a'),
(223, 53, 'banner_title_green', 'titre verttttt'),
(224, 53, '_banner_title_green', 'field_5de77f279a44b'),
(225, 53, 'banner_register_link', ''),
(226, 53, '_banner_register_link', 'field_5de77f419a44c'),
(227, 53, 'banner_background_image', '17'),
(228, 53, '_banner_background_image', 'field_5de77f689a44d'),
(229, 53, 'section-title', 'salut les amis'),
(230, 53, '_section-title', 'field_5de77c529d669'),
(231, 53, 'section-chaine', 'mdr t ki'),
(232, 53, '_section-chaine', 'field_5de77cef9d66a'),
(233, 53, 'section-q', 'nicky ahahahahhahaha'),
(234, 53, '_section-q', 'field_5de77f279a44b'),
(235, 53, 'link', 'a:3:{s:5:"title";s:16:"regarde dont ça";s:3:"url";s:36:"https://fr.wikipedia.org/wiki/Patate";s:6:"target";s:6:"_blank";}'),
(236, 53, '_link', 'field_5de77f419a44c'),
(237, 53, 'img-2', '17'),
(238, 53, '_img-2', 'field_5deb7207d0cd4'),
(239, 53, 'section-conf', 'La conférence'),
(240, 53, '_section-conf', 'field_5deb73ff81197'),
(241, 53, 'txt', 'Les rencontres de la fondation s''intitulent cette année "chaine alimentaire végétale et durabilité : une question d''équilibre". Elles se tiendront le 3 décembre prochain à Bruxelles et auront pour objectif de décrypter la transition nutritionelle des systemes alimentaires à travers le monde, qui appelle à favoriser une alimentation plus végétale.'),
(242, 53, '_txt', 'field_5deb742481198'),
(243, 14, 'program_0_hour', '8:30'),
(244, 14, '_program_0_hour', 'field_5deb7ac68aa78'),
(245, 14, 'program_0_description', 'Introduction par christophe...'),
(246, 14, '_program_0_description', 'field_5deb7ace8aa79'),
(247, 14, 'program_1_hour', '9:00'),
(248, 14, '_program_1_hour', 'field_5deb7ac68aa78'),
(249, 14, 'program_1_description', 'Wim de ...'),
(250, 14, '_program_1_description', 'field_5deb7ace8aa79'),
(251, 14, 'program_2_hour', '10:30'),
(252, 14, '_program_2_hour', 'field_5deb7ac68aa78'),
(253, 14, 'program_2_description', 'Pause café'),
(254, 14, '_program_2_description', 'field_5deb7ace8aa79'),
(255, 14, 'program', '3'),
(256, 14, '_program', 'field_5deb7aad8aa77'),
(257, 59, 'banner_baseline', 'salutttttt'),
(258, 59, '_banner_baseline', 'field_5de77c529d669'),
(259, 59, 'banner_title_brown', 'titre marron'),
(260, 59, '_banner_title_brown', 'field_5de77cef9d66a'),
(261, 59, 'banner_title_green', 'titre verttttt'),
(262, 59, '_banner_title_green', 'field_5de77f279a44b'),
(263, 59, 'banner_register_link', ''),
(264, 59, '_banner_register_link', 'field_5de77f419a44c'),
(265, 59, 'banner_background_image', '17'),
(266, 59, '_banner_background_image', 'field_5de77f689a44d'),
(267, 59, 'section-title', 'salut les amis'),
(268, 59, '_section-title', 'field_5de77c529d669'),
(269, 59, 'section-chaine', 'mdr t ki'),
(270, 59, '_section-chaine', 'field_5de77cef9d66a'),
(271, 59, 'section-q', 'nicky ahahahahhahaha'),
(272, 59, '_section-q', 'field_5de77f279a44b'),
(273, 59, 'link', 'a:3:{s:5:"title";s:16:"regarde dont ça";s:3:"url";s:36:"https://fr.wikipedia.org/wiki/Patate";s:6:"target";s:6:"_blank";}'),
(274, 59, '_link', 'field_5de77f419a44c'),
(275, 59, 'img-2', '17'),
(276, 59, '_img-2', 'field_5deb7207d0cd4'),
(277, 59, 'section-conf', 'La conférence'),
(278, 59, '_section-conf', 'field_5deb73ff81197'),
(279, 59, 'txt', 'Les rencontres de la fondation s''intitulent cette année "chaine alimentaire végétale et durabilité : une question d''équilibre". Elles se tiendront le 3 décembre prochain à Bruxelles et auront pour objectif de décrypter la transition nutritionelle des systemes alimentaires à travers le monde, qui appelle à favoriser une alimentation plus végétale.'),
(280, 59, '_txt', 'field_5deb742481198'),
(281, 59, 'program_0_hour', '8:30'),
(282, 59, '_program_0_hour', 'field_5deb7ac68aa78'),
(283, 59, 'program_0_description', 'Introduction par christophe...'),
(284, 59, '_program_0_description', 'field_5deb7ace8aa79'),
(285, 59, 'program_1_hour', '9:00'),
(286, 59, '_program_1_hour', 'field_5deb7ac68aa78'),
(287, 59, 'program_1_description', 'Wim de ...'),
(288, 59, '_program_1_description', 'field_5deb7ace8aa79'),
(289, 59, 'program_2_hour', '10:30'),
(290, 59, '_program_2_hour', 'field_5deb7ac68aa78'),
(291, 59, 'program_2_description', 'Pause café'),
(292, 59, '_program_2_description', 'field_5deb7ace8aa79'),
(293, 59, 'program', '3'),
(294, 59, '_program', 'field_5deb7aad8aa77');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-12-04 10:05:13', '2019-12-04 09:05:13', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2019-12-07 08:54:51', '2019-12-07 07:54:51', '', 0, 'http://127.0.0.1:8000/?p=1', 0, 'post', '', 1),
(2, 1, '2019-12-04 10:05:13', '2019-12-04 09:05:13', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://127.0.0.1:8000/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2019-12-07 08:54:12', '2019-12-07 07:54:12', '', 0, 'http://127.0.0.1:8000/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-12-04 10:05:13', '2019-12-04 09:05:13', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://127.0.0.1:8000.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'trash', 'closed', 'open', '', 'politique-de-confidentialite__trashed', '', '', '2019-12-07 08:54:12', '2019-12-07 07:54:12', '', 0, 'http://127.0.0.1:8000/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-12-04 10:05:50', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-04 10:05:50', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:8000/?p=4', 0, 'post', '', 0),
(6, 1, '2019-12-04 10:39:51', '2019-12-04 09:39:51', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"front_page";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Contenu de la page d''accueil', 'contenu-de-la-page-daccueil', 'publish', 'closed', 'closed', '', 'group_5de77ae57fc95', '', '', '2019-12-07 11:12:24', '2019-12-07 10:12:24', '', 0, 'http://127.0.0.1:8000/?post_type=acf-field-group&#038;p=6', 0, 'acf-field-group', '', 0),
(7, 1, '2019-12-04 10:39:51', '2019-12-04 09:39:51', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Baseline', 'section-title', 'publish', 'closed', 'closed', '', 'field_5de77c529d669', '', '', '2019-12-07 11:12:24', '2019-12-07 10:12:24', '', 6, 'http://127.0.0.1:8000/?post_type=acf-field&#038;p=7', 1, 'acf-field', '', 0),
(8, 1, '2019-12-04 10:39:51', '2019-12-04 09:39:51', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Titre marron', 'section-chaine', 'publish', 'closed', 'closed', '', 'field_5de77cef9d66a', '', '', '2019-12-07 11:12:24', '2019-12-07 10:12:24', '', 6, 'http://127.0.0.1:8000/?post_type=acf-field&#038;p=8', 2, 'acf-field', '', 0),
(9, 1, '2019-12-04 10:42:16', '2019-12-04 09:42:16', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Titre vert', 'section-q', 'publish', 'closed', 'closed', '', 'field_5de77f279a44b', '', '', '2019-12-07 11:12:24', '2019-12-07 10:12:24', '', 6, 'http://127.0.0.1:8000/?post_type=acf-field&#038;p=9', 3, 'acf-field', '', 0),
(10, 1, '2019-12-04 10:42:16', '2019-12-04 09:42:16', 'a:6:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";}', 'Lien d''inscription', 'link', 'publish', 'closed', 'closed', '', 'field_5de77f419a44c', '', '', '2019-12-07 11:12:24', '2019-12-07 10:12:24', '', 6, 'http://127.0.0.1:8000/?post_type=acf-field&#038;p=10', 4, 'acf-field', '', 0),
(11, 1, '2019-12-04 10:42:16', '2019-12-04 09:42:16', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'image de fond', 'banner_background_image', 'publish', 'closed', 'closed', '', 'field_5de77f689a44d', '', '', '2019-12-07 11:12:24', '2019-12-07 10:12:24', '', 6, 'http://127.0.0.1:8000/?post_type=acf-field&#038;p=11', 5, 'acf-field', '', 0),
(12, 1, '2019-12-04 10:48:54', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-12-04 10:48:54', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:8000/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-12-04 10:50:45', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-12-04 10:50:45', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:8000/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-12-04 10:53:39', '2019-12-04 09:53:39', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2019-12-07 11:13:33', '2019-12-07 10:13:33', '', 0, 'http://127.0.0.1:8000/?page_id=14', 0, 'page', '', 0),
(15, 1, '2019-12-04 10:53:39', '2019-12-04 09:53:39', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-12-04 10:53:39', '2019-12-04 09:53:39', '', 14, 'http://127.0.0.1:8000/?p=15', 0, 'revision', '', 0),
(16, 1, '2019-12-04 10:54:50', '2019-12-04 09:54:50', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-12-04 10:54:50', '2019-12-04 09:54:50', '', 14, 'http://127.0.0.1:8000/?p=16', 0, 'revision', '', 0),
(17, 1, '2019-12-04 10:55:24', '2019-12-04 09:55:24', '', 'spaghetti à la bolognaise végétarienne', '', 'inherit', 'open', 'closed', '', 'spaghetti-a-la-bolognaise-vegetarienne', '', '', '2019-12-04 10:55:24', '2019-12-04 09:55:24', '', 14, 'http://127.0.0.1:8000/wp-content/uploads/2019/12/spaghetti-à-la-bolognaise-végétarienne.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2019-12-04 10:55:29', '2019-12-04 09:55:29', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-12-04 10:55:29', '2019-12-04 09:55:29', '', 14, 'http://127.0.0.1:8000/?p=18', 0, 'revision', '', 0),
(19, 1, '2019-12-04 11:03:24', '2019-12-04 10:03:24', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-12-04 11:03:24', '2019-12-04 10:03:24', '', 14, 'http://127.0.0.1:8000/?p=19', 0, 'revision', '', 0),
(20, 1, '2019-12-07 08:43:25', '2019-12-07 07:43:25', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-12-07 08:43:25', '2019-12-07 07:43:25', '', 14, 'http://127.0.0.1:8000/?p=20', 0, 'revision', '', 0),
(21, 1, '2019-12-07 08:45:11', '2019-12-07 07:45:11', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-12-07 08:45:11', '2019-12-07 07:45:11', '', 14, 'http://127.0.0.1:8000/?p=21', 0, 'revision', '', 0),
(22, 1, '2019-12-07 08:54:12', '2019-12-07 07:54:12', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://127.0.0.1:8000/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-12-07 08:54:12', '2019-12-07 07:54:12', '', 2, 'http://127.0.0.1:8000/?p=22', 0, 'revision', '', 0),
(23, 1, '2019-12-07 08:54:12', '2019-12-07 07:54:12', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://127.0.0.1:8000.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-12-07 08:54:12', '2019-12-07 07:54:12', '', 3, 'http://127.0.0.1:8000/?p=23', 0, 'revision', '', 0),
(24, 1, '2019-12-07 08:54:51', '2019-12-07 07:54:51', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-12-07 08:54:51', '2019-12-07 07:54:51', '', 1, 'http://127.0.0.1:8000/?p=24', 0, 'revision', '', 0),
(25, 1, '2019-12-07 08:58:52', '2019-12-07 07:58:52', '<!-- wp:paragraph {"align":"left"} -->\n<p style="text-align:left">Un chef-d''oeuvre. Petit bijou d''animation,&nbsp;<em>Le Tombeau des luciole</em>s,\n dont le papa n''est autre&nbsp;que Isao Takahata (cofondateur du célèbre \nstudio Ghibli, ndlr), s''apprête à débarquer sur Netflix. Il sera \ndisponible sur la plateforme à partir du 1er décembre. Un joli cadeau \navant Noël. Un conseil cependant : préparez vos mouchoirs pour vous \naider à suivre les aventures de Seita et sa sœur Setsuko&nbsp;dans le Japon \ndes années 1945.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class="wp-block-image"><img src="https://medias.laprovence.com/tkkziopH9_MdozYtRcSZvAQ3rWI=/0x69:600x400/850x575/top/smart/c69c0b8b2d5d4a3090271d826545b01f/1574871340_19079746.jpg-r_1920_1080-f_jpg-q_x-xxyxx.jpg" alt=""/></figure>\n<!-- /wp:image -->', 'Véritable chef-d''oeuvre d''animation, "Le Tombeau des lucioles" arrive sur Netflix', '', 'publish', 'open', 'open', '', 'veritable-chef-doeuvre-danimation-le-tombeau-des-lucioles-arrive-sur-netflix', '', '', '2019-12-07 08:58:52', '2019-12-07 07:58:52', '', 0, 'http://127.0.0.1:8000/?p=25', 0, 'post', '', 0),
(26, 1, '2019-12-07 08:58:52', '2019-12-07 07:58:52', '<!-- wp:paragraph {"align":"left"} -->\n<p style="text-align:left">Un chef-d''oeuvre. Petit bijou d''animation,&nbsp;<em>Le Tombeau des luciole</em>s,\n dont le papa n''est autre&nbsp;que Isao Takahata (cofondateur du célèbre \nstudio Ghibli, ndlr), s''apprête à débarquer sur Netflix. Il sera \ndisponible sur la plateforme à partir du 1er décembre. Un joli cadeau \navant Noël. Un conseil cependant : préparez vos mouchoirs pour vous \naider à suivre les aventures de Seita et sa sœur Setsuko&nbsp;dans le Japon \ndes années 1945.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class="wp-block-image"><img src="https://medias.laprovence.com/tkkziopH9_MdozYtRcSZvAQ3rWI=/0x69:600x400/850x575/top/smart/c69c0b8b2d5d4a3090271d826545b01f/1574871340_19079746.jpg-r_1920_1080-f_jpg-q_x-xxyxx.jpg" alt=""/></figure>\n<!-- /wp:image -->', 'Véritable chef-d''oeuvre d''animation, "Le Tombeau des lucioles" arrive sur Netflix', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-12-07 08:58:52', '2019-12-07 07:58:52', '', 25, 'http://127.0.0.1:8000/?p=26', 0, 'revision', '', 0),
(27, 1, '2019-12-07 08:59:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-07 08:59:09', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:8000/?p=27', 0, 'post', '', 0),
(28, 1, '2019-12-07 09:00:00', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-12-07 09:00:00', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:8000/?page_id=28', 0, 'page', '', 0),
(29, 1, '2019-12-07 09:00:29', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-12-07 09:00:29', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:8000/?page_id=29', 0, 'page', '', 0),
(30, 1, '2019-12-07 09:00:40', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-12-07 09:00:40', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:8000/?page_id=30', 0, 'page', '', 0),
(31, 1, '2019-12-07 09:00:56', '2019-12-07 08:00:56', '', 'Actu', '', 'trash', 'closed', 'closed', '', 'actu__trashed', '', '', '2019-12-07 09:01:40', '2019-12-07 08:01:40', '', 0, 'http://127.0.0.1:8000/?page_id=31', 0, 'page', '', 0),
(32, 1, '2019-12-07 09:00:56', '2019-12-07 08:00:56', '', 'Actu', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-12-07 09:00:56', '2019-12-07 08:00:56', '', 31, 'http://127.0.0.1:8000/?p=32', 0, 'revision', '', 0),
(33, 1, '2019-12-07 09:02:16', '2019-12-07 08:02:16', '', 'Actualités', '', 'publish', 'closed', 'closed', '', 'actualites', '', '', '2019-12-07 09:02:16', '2019-12-07 08:02:16', '', 0, 'http://127.0.0.1:8000/?page_id=33', 0, 'page', '', 0),
(34, 1, '2019-12-07 09:02:16', '2019-12-07 08:02:16', '', 'Actualités', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-12-07 09:02:16', '2019-12-07 08:02:16', '', 33, 'http://127.0.0.1:8000/?p=34', 0, 'revision', '', 0),
(35, 1, '2019-12-07 09:02:32', '2019-12-07 08:02:32', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-12-07 09:02:32', '2019-12-07 08:02:32', '', 0, 'http://127.0.0.1:8000/?page_id=35', 0, 'page', '', 0),
(36, 1, '2019-12-07 09:02:32', '2019-12-07 08:02:32', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-12-07 09:02:32', '2019-12-07 08:02:32', '', 35, 'http://127.0.0.1:8000/?p=36', 0, 'revision', '', 0),
(37, 1, '2019-12-07 09:02:47', '2019-12-07 08:02:47', '', 'Mentions légales', '', 'trash', 'closed', 'closed', '', 'mentions-legales__trashed', '', '', '2019-12-07 09:08:52', '2019-12-07 08:08:52', '', 0, 'http://127.0.0.1:8000/?page_id=37', 0, 'page', '', 0),
(38, 1, '2019-12-07 09:02:47', '2019-12-07 08:02:47', '', 'Mentions légales', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-12-07 09:02:47', '2019-12-07 08:02:47', '', 37, 'http://127.0.0.1:8000/?p=38', 0, 'revision', '', 0),
(39, 1, '2019-12-07 09:03:03', '2019-12-07 08:03:03', '', 'Plan du site', '', 'trash', 'closed', 'closed', '', 'plan-du-site__trashed', '', '', '2019-12-07 09:08:52', '2019-12-07 08:08:52', '', 0, 'http://127.0.0.1:8000/?page_id=39', 0, 'page', '', 0),
(40, 1, '2019-12-07 09:03:03', '2019-12-07 08:03:03', '', 'Plan du site', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-12-07 09:03:03', '2019-12-07 08:03:03', '', 39, 'http://127.0.0.1:8000/?p=40', 0, 'revision', '', 0),
(41, 1, '2019-12-07 09:05:55', '2019-12-07 08:05:55', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2019-12-07 09:09:11', '2019-12-07 08:09:11', '', 0, 'http://127.0.0.1:8000/?p=41', 3, 'nav_menu_item', '', 0),
(42, 1, '2019-12-07 09:05:55', '2019-12-07 08:05:55', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2019-12-07 09:09:11', '2019-12-07 08:09:11', '', 0, 'http://127.0.0.1:8000/?p=42', 2, 'nav_menu_item', '', 0),
(43, 1, '2019-12-07 09:05:55', '2019-12-07 08:05:55', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2019-12-07 09:09:11', '2019-12-07 08:09:11', '', 0, 'http://127.0.0.1:8000/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2019-12-07 09:06:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-07 09:06:06', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:8000/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2019-12-07 09:06:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-07 09:06:06', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:8000/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2019-12-07 09:06:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-07 09:06:06', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:8000/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2019-12-07 09:24:37', '2019-12-07 08:24:37', '<!-- wp:paragraph -->\n<p>Contenu actu 2</p>\n<!-- /wp:paragraph -->', 'Actu 2', '', 'publish', 'open', 'open', '', 'actu-2', '', '', '2019-12-07 09:24:37', '2019-12-07 08:24:37', '', 0, 'http://127.0.0.1:8000/?p=47', 0, 'post', '', 0),
(48, 1, '2019-12-07 09:24:37', '2019-12-07 08:24:37', '<!-- wp:paragraph -->\n<p>Contenu actu 2</p>\n<!-- /wp:paragraph -->', 'Actu 2', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2019-12-07 09:24:37', '2019-12-07 08:24:37', '', 47, 'http://127.0.0.1:8000/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2019-12-07 10:34:13', '2019-12-07 09:34:13', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'image section 2', 'img-2', 'publish', 'closed', 'closed', '', 'field_5deb7207d0cd4', '', '', '2019-12-07 11:12:24', '2019-12-07 10:12:24', '', 6, 'http://127.0.0.1:8000/?post_type=acf-field&#038;p=49', 7, 'acf-field', '', 0),
(50, 1, '2019-12-07 10:39:21', '2019-12-07 09:39:21', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-12-07 10:39:21', '2019-12-07 09:39:21', '', 14, 'http://127.0.0.1:8000/14-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-12-07 10:43:28', '2019-12-07 09:43:28', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'titre section 2', 'section-conf', 'publish', 'closed', 'closed', '', 'field_5deb73ff81197', '', '', '2019-12-07 11:12:24', '2019-12-07 10:12:24', '', 6, 'http://127.0.0.1:8000/?post_type=acf-field&#038;p=51', 8, 'acf-field', '', 0),
(52, 1, '2019-12-07 10:43:28', '2019-12-07 09:43:28', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'texte section 2', 'txt', 'publish', 'closed', 'closed', '', 'field_5deb742481198', '', '', '2019-12-07 11:12:24', '2019-12-07 10:12:24', '', 6, 'http://127.0.0.1:8000/?post_type=acf-field&#038;p=52', 9, 'acf-field', '', 0),
(53, 1, '2019-12-07 10:45:27', '2019-12-07 09:45:27', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-12-07 10:45:27', '2019-12-07 09:45:27', '', 14, 'http://127.0.0.1:8000/14-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-12-07 11:11:33', '2019-12-07 10:11:33', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'Programme', 'program', 'publish', 'closed', 'closed', '', 'field_5deb7aad8aa77', '', '', '2019-12-07 11:12:24', '2019-12-07 10:12:24', '', 6, 'http://127.0.0.1:8000/?post_type=acf-field&#038;p=54', 10, 'acf-field', '', 0),
(55, 1, '2019-12-07 11:11:33', '2019-12-07 10:11:33', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Heure', 'hour', 'publish', 'closed', 'closed', '', 'field_5deb7ac68aa78', '', '', '2019-12-07 11:11:33', '2019-12-07 10:11:33', '', 54, 'http://127.0.0.1:8000/?post_type=acf-field&p=55', 0, 'acf-field', '', 0),
(56, 1, '2019-12-07 11:11:33', '2019-12-07 10:11:33', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5deb7ace8aa79', '', '', '2019-12-07 11:11:33', '2019-12-07 10:11:33', '', 54, 'http://127.0.0.1:8000/?post_type=acf-field&p=56', 1, 'acf-field', '', 0),
(57, 1, '2019-12-07 11:12:24', '2019-12-07 10:12:24', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Bannière', 'banniere', 'publish', 'closed', 'closed', '', 'field_5deb7adad29b9', '', '', '2019-12-07 11:12:24', '2019-12-07 10:12:24', '', 6, 'http://127.0.0.1:8000/?post_type=acf-field&p=57', 0, 'acf-field', '', 0),
(58, 1, '2019-12-07 11:12:24', '2019-12-07 10:12:24', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Conférence', 'conference', 'publish', 'closed', 'closed', '', 'field_5deb7af5d29ba', '', '', '2019-12-07 11:12:24', '2019-12-07 10:12:24', '', 6, 'http://127.0.0.1:8000/?post_type=acf-field&p=58', 6, 'acf-field', '', 0),
(59, 1, '2019-12-07 11:13:33', '2019-12-07 10:13:33', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-12-07 11:13:33', '2019-12-07 10:13:33', '', 14, 'http://127.0.0.1:8000/14-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'menu principal', 'menu-principal', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(25, 1, 0),
(41, 2, 0),
(42, 2, 0),
(43, 2, 0),
(47, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ines.tomialoje'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"28c29e8a97515195b8679ab9cbcc2a81e9f2a376225d9056b6f23c7f62f2e05a";a:4:{s:10:"expiration";i:1575877170;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:67.0) Gecko/20100101 Firefox/67.0";s:5:"login";i:1575704370;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(20, 1, 'wp_user-settings-time', '1575453787'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(23, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ines.tomialoje', '$P$BUr30kqcuMWIANkgMdSqy8Mmqa2MCu.', 'ines-tomialoje', 'tomines@hotmail.fr', '', '2019-12-04 09:05:13', '', 0, 'ines.tomialoje');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `amis`
--
ALTER TABLE `amis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ecrit`
--
ALTER TABLE `ecrit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `amis`
--
ALTER TABLE `amis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `ecrit`
--
ALTER TABLE `ecrit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=295;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
