-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 15, 2014 at 05:44 PM
-- Server version: 5.5.36-cll-lve
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `course_guide_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `feed_assets`
--

CREATE TABLE IF NOT EXISTS `feed_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `feed_assets`
--

INSERT INTO `feed_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 207, 0, 'root.1', 'Root Asset', '{"core.login.site":{"1":1,"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 44, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 45, 46, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 47, 48, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 49, 50, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 51, 52, 1, 'com_login', 'com_login', '{}'),
(13, 1, 53, 54, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 55, 56, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 57, 58, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 59, 60, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 61, 62, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 63, 154, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 155, 158, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 159, 160, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 161, 162, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 163, 164, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 165, 166, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 167, 170, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 171, 178, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 179, 180, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 25, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 156, 157, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 172, 173, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 168, 169, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 181, 182, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 25, 174, 175, 2, 'com_weblinks.category.8', 'Blog Roll', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(35, 8, 26, 41, 2, 'com_content.category.9', 'Courses', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(36, 27, 19, 20, 3, 'com_content.article.1', 'Course search', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(37, 27, 21, 22, 3, 'com_content.article.2', 'Working on Your Site', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(38, 35, 27, 28, 3, 'com_content.article.3', 'Business information systems', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 27, 23, 24, 3, 'com_content.article.4', 'About courseguide.info', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 35, 29, 30, 3, 'com_content.article.5', 'Your Modules', '{"core.delete":{"2":1},"core.edit":{"2":1},"core.edit.state":{"2":1}}'),
(41, 1, 183, 184, 1, 'com_users.category.10', 'Uncategorised', ''),
(42, 1, 185, 186, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(43, 35, 31, 32, 3, 'com_content.article.6', 'Your Template', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(44, 1, 187, 188, 1, 'com_tags', 'com_tags', '{"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(45, 1, 189, 190, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(46, 1, 191, 192, 1, 'com_ajax', 'com_ajax', '{}'),
(47, 1, 193, 194, 1, 'com_postinstall', 'com_postinstall', '{}'),
(48, 18, 64, 65, 2, 'com_modules.module.93', 'jQuery login + register', '{"core.delete":{"6":1},"core.edit":{"1":1,"6":1,"4":1},"core.edit.state":{"1":1,"6":1,"5":1}}'),
(49, 18, 66, 67, 2, 'com_modules.module.94', 'Login Register', '{"core.delete":[],"core.edit":{"1":1},"core.edit.state":{"1":1}}'),
(50, 18, 68, 69, 2, 'com_modules.module.88', 'Image', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 18, 70, 71, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 18, 72, 73, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(53, 8, 42, 43, 2, 'com_content.category.10', 'About-publish', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(54, 25, 176, 177, 2, 'com_weblinks.category.11', 'Most recent comments', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(55, 35, 35, 38, 3, 'com_content.category.12', 'Recent comments', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(56, 55, 36, 37, 4, 'com_content.article.7', 'My recent comment 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 18, 74, 75, 2, 'com_modules.module.95', 'Recent comments', '{"core.delete":{"1":1,"6":1},"core.edit":{"1":1,"6":1,"4":1},"core.edit.state":{"1":1,"6":1,"5":1}}'),
(58, 18, 76, 77, 2, 'com_modules.module.85', 'Recent comments 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 18, 78, 79, 2, 'com_modules.module.81', 'Your recent activity', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(60, 1, 195, 196, 1, 'com_jcomments', 'jcomments', '{}'),
(61, 1, 197, 198, 1, 'com_rssearch', 'com_rssearch', '{}'),
(62, 18, 80, 81, 2, 'com_modules.module.96', 'RSSearch! module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 18, 82, 83, 2, 'com_modules.module.87', 'Search', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(64, 18, 84, 85, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 18, 86, 87, 2, 'com_modules.module.97', 'Top menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 1, 199, 200, 1, 'com_quicklogout', 'quicklogout', '{}'),
(67, 18, 88, 89, 2, 'com_modules.module.82', 'Syndication', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(68, 18, 90, 91, 2, 'com_modules.module.98', 'Contact us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(69, 1, 201, 202, 1, 'com_freevotes', 'freevotes', '{}'),
(70, 35, 33, 34, 3, 'com_content.article.8', 'recent commments article', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 18, 92, 93, 2, 'com_modules.module.99', 'jVS - Polls', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(72, 18, 94, 95, 2, 'com_modules.module.100', 'JA Google Chart', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 1, 203, 204, 1, 'com_acepolls', 'acepolls', '{}'),
(74, 18, 96, 97, 2, 'com_modules.module.101', 'EXT VK Poll', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 1, 205, 206, 1, 'com_jvotesystem', 'jvotesystem', '{}'),
(76, 18, 98, 99, 2, 'com_modules.module.102', 'freevotes - grade', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 18, 100, 101, 2, 'com_modules.module.103', 'freevotes - all', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 18, 102, 103, 2, 'com_modules.module.104', 'freevotes - interesting', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 18, 104, 105, 2, 'com_modules.module.105', 'Main Menu (2)', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 18, 106, 107, 2, 'com_modules.module.106', 'Breadcrumbs (2)', ''),
(81, 18, 108, 109, 2, 'com_modules.module.107', 'Archived Articles (2)', ''),
(82, 18, 110, 111, 2, 'com_modules.module.108', 'Popular Tags (2)', ''),
(83, 18, 112, 113, 2, 'com_modules.module.109', 'Similar Items (2)', ''),
(84, 18, 114, 115, 2, 'com_modules.module.110', 'Recent comments (2)', ''),
(85, 18, 116, 117, 2, 'com_modules.module.111', 'Course search', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 18, 118, 119, 2, 'com_modules.module.112', 'Top menu (2)', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 18, 120, 121, 2, 'com_modules.module.113', 'Contact us (2)', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 18, 122, 123, 2, 'com_modules.module.114', 'JA Google Chart (2)', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(89, 18, 124, 125, 2, 'com_modules.module.115', 'Vote results', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(90, 18, 126, 127, 2, 'com_modules.module.116', 'Archived Articles (3)', ''),
(91, 18, 128, 129, 2, 'com_modules.module.117', 'Breadcrumbs (3)', ''),
(92, 18, 130, 131, 2, 'com_modules.module.118', 'Contact us (3)', ''),
(93, 18, 132, 133, 2, 'com_modules.module.119', 'freevotes - all (3)', ''),
(94, 18, 134, 135, 2, 'com_modules.module.120', 'JA Google Chart (3)', ''),
(95, 18, 136, 137, 2, 'com_modules.module.121', 'Main Menu (3)', ''),
(96, 18, 138, 139, 2, 'com_modules.module.122', 'Popular Tags (3)', ''),
(97, 18, 140, 141, 2, 'com_modules.module.123', 'Recent comments (3)', ''),
(98, 18, 142, 143, 2, 'com_modules.module.124', 'RSSearch! module (3)', ''),
(99, 18, 144, 145, 2, 'com_modules.module.125', 'Similar Items (3)', ''),
(100, 18, 146, 147, 2, 'com_modules.module.126', 'Top menu (3)', ''),
(101, 35, 39, 40, 3, 'com_content.article.9', 'Java programming', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(102, 18, 148, 149, 2, 'com_modules.module.83', 'Archived Articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(103, 18, 150, 151, 2, 'com_modules.module.127', 'Vote results (2)', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(104, 18, 152, 153, 2, 'com_modules.module.128', 'Course search (2)', '');

-- --------------------------------------------------------

--
-- Table structure for table `feed_associations`
--

CREATE TABLE IF NOT EXISTS `feed_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feed_banners`
--

CREATE TABLE IF NOT EXISTS `feed_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_banner_clients`
--

CREATE TABLE IF NOT EXISTS `feed_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `feed_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feed_categories`
--

CREATE TABLE IF NOT EXISTS `feed_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `feed_categories`
--

INSERT INTO `feed_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 23, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 474, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 474, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 474, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 474, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 474, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 474, '2011-01-01 00:00:01', 363, '2012-07-20 19:31:28', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 474, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 42, 1, 13, 14, 1, 'blog-roll', 'com_weblinks', 'Blog Roll', 'blog-roll', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 474, '2011-01-01 00:00:01', 363, '2012-07-20 19:44:04', 0, '*', 1),
(9, 35, 1, 15, 18, 1, 'courses', 'com_content', 'Courses', 'courses', '', '', 1, 474, '2014-12-13 15:51:38', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 474, '2011-01-01 00:00:01', 474, '2014-12-10 23:19:58', 0, '*', 1),
(10, 53, 1, 19, 20, 1, 'about-publish', 'com_content', 'About-publish', 'about-publish', '', '<p>This is CATEGORY named "About-publish"</p>\r\n<p style="line-height: 15.8079996109009px;">gfxgfhfsgfbsfgsf</p>\r\n<p><span style="line-height: 15.8079996109009px;">sdfsrfdf</span><span style="line-height: 15.8079996109009px;">gfxgfhfsgfbsfgsf</span></p>\r\n<p><span style="line-height: 15.8079996109009px;">sdfsrfdf</span><span style="line-height: 15.8079996109009px;">gfxgfhfsgfbsfgsf</span></p>\r\n<p><span style="line-height: 15.8079996109009px;">sdfsrfdf</span>gfxgfhfsgfbsfgsf</p>\r\n<p>sdfsrfdf</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 474, '2014-11-06 22:07:36', 0, '0000-00-00 00:00:00', 0, '*', 1),
(11, 54, 1, 21, 22, 1, 'most-recent-comments', 'com_weblinks', 'Most recent comments', 'most-recent-comments', '', '<p>\\zvxcz\\zv\\</p>\r\n<p>czxv\\czx\\xc</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 474, '2014-11-10 12:47:29', 0, '0000-00-00 00:00:00', 0, '*', 1),
(12, 55, 9, 16, 17, 2, 'courses/recent-comments', 'com_content', 'Recent comments', 'recent-comments', '', '<p>sfvsfsf</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 474, '2014-11-10 12:52:34', 474, '2014-11-23 23:51:33', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feed_contact_details`
--

CREATE TABLE IF NOT EXISTS `feed_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feed_contact_details`
--

INSERT INTO `feed_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Courseguide contacts', 'courseguide-contacts', 'That''s us', '346 Bethnal Green Rd', 'London', '', 'UK', 'E2 0AH', '07895850161', '07895850161', '', '', 'callus@courseguide.info', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"hide","show_contact_list":"1","presentation_style":"tabs","show_tags":"1","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":"","contact_layout":"","show_email_form":"1","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"","redirect":""}', 474, 4, 1, '07895850161', 'http://courseguide.info', '', '', '', '*', '2014-11-23 16:32:42', 474, '', '2014-11-23 17:15:37', 474, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 14, 17);

-- --------------------------------------------------------

--
-- Table structure for table `feed_content`
--

CREATE TABLE IF NOT EXISTS `feed_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `feed_content`
--

INSERT INTO `feed_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 36, 'Course search', 'course-search', '<p> </p>\r\n<hr />\r\n<p><em>Student-generated course reviews and insights.</em></p>\r\n<hr />\r\n<p> </p>', '', 1, 2, '2011-01-01 00:00:01', 474, 'Joomla', '2014-12-13 16:26:57', 474, 0, '0000-00-00 00:00:00', '2012-01-04 16:10:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"0","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 2, '', '', 1, 975, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 37, 'Working on Your Site', 'working-on-your-site', '<p>Here are some basic tips for working on your site.</p>\r\n<ul>\r\n<li>Joomla! has a "front end" that you are looking at now and an "administrator" or "back end" which is where you do the more advanced work of creating your site such as setting up the menus and deciding what modules to show. You need to login to the administrator separately using the same user name and password that you used to login to this part of the site.</li>\r\n<li>One of the first things you will probably want to do is change the site title and tag line and to add a logo. To do this click on the Template Settings link in the top menu. To change your site description, browser title, default email and other items, click Site Settings. More advanced configuration options are available in the administrator.</li>\r\n<li>To totally change the look of your site you will probably want to install a new template. In the Extensions menu click on Extensions Manager and then go to the Install tab. There are many free and commercial templates available for Joomla.</li>\r\n<li>As you have already seen, you can control who can see different parts of you site. When you work with modules, articles or weblinks setting the Access level to Registered will mean that only logged in users can see them</li>\r\n<li>When you create a new article or other kind of content you also can save it as Published or Unpublished. If it is Unpublished site visitors will not be able to see it but you will.</li>\r\n<li>You can learn much more about working with Joomla from the <a href="http://docs.joomla.org">Joomla documentation site</a> and get help from other users at the <a href="http://forum.joomla.org">Joomla forums</a>. In the administrator there are help buttons on every page that provide detailed information about the functions on that page.</li>\r\n</ul>\r\n<p>{vote on}</p>', '', -2, 2, '2011-01-01 00:00:01', 474, 'Joomla', '2014-11-23 22:31:37', 474, 0, '0000-00-00 00:00:00', '2012-01-04 16:48:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 3, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 38, 'Business information systems', 'business-info', '<table style="height: 50px;" width="969" cellpadding="10">\n<tbody>\n<tr>\n<td style="text-align: left; vertical-align: top; padding: 2;" rowspan="2" width="430">{modules [115 | xhtml]}</td>\n<td style="text-align: left; vertical-align: top; padding: 2;" rowspan="2" width="539">\n<p>xfthxgfsfsffdgf sdfasdlfkjasdf</p>\n<p>sdfasdfsdfasdfasdfas</p>\n<p>dfsdf</p>\n<p>asfdasdfasdfasdfsadfasdfasdfasdf</p>\n<p>asdfasdfasdfasd</p>\n<p>fasdfasdfasdfasdfasfa</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p>{jcomments on}</p>', '', 1, 9, '2011-01-05 00:00:01', 474, '', '2014-12-13 15:57:38', 474, 474, '2014-12-13 15:57:38', '2012-01-05 16:55:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 47, 4, '', '', 1, 322, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 39, 'About courseguide.info', 'about-courseguide', '<p>TO BE DONE</p>\r\n<p>{jcomments off}</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>', '', 1, 2, '2011-01-03 00:00:01', 474, '', '2014-12-10 23:56:32', 474, 474, '2014-12-11 01:55:33', '2012-01-03 00:00:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 1, '', '', 1, 85, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 40, 'Your Modules', 'your-modules', '<p>Your site has some commonly used modules already preconfigured. These include:</p>\r\n<ul>\r\n<li>Image Module which holds the image beneath the menu. This is a Custom HTML module that you can edit to change the image.</li>\r\n<li>Blog Roll. which lets you link to other blogs. We''ve put in two examples, but you''ll want to change them. When you are logged in, click on blog roll on the top menu to update this.</li>\r\n<li>Most Read Posts which lists articles based on the number of times they have been read.</li>\r\n<li>Older Articles which lists out articles by month.</li>\r\n<li>Syndicate which allows your readers to read your posts in a news reader.</li>\r\n<li>Popular Tags, which will appear if you use tagging on your articles. Just enter a tag in the Tags field when editing.</li>\r\n</ul>\r\n<p>Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. Moving your mouse over a module and clicking on the edit icon will take you to an edit screen for that module. Always be sure to save and close any module you edit. </p>\r\n<p>Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more module that you can find at the <a href="http://extensions.joomla.org">Joomla Extensions Directory.</a></p>\r\n<p> </p>\r\n<p>{vote on}</p>', '', -2, 9, '2010-12-31 00:00:01', 474, 'Joomla', '2014-11-23 22:32:04', 474, 0, '0000-00-00 00:00:00', '2010-12-31 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 13, 1, '', '', 1, 20, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 43, 'Your Template', 'your-template', '<p>Templates control the look and feel of your website.</p>\r\n<p>This blog is installed with the Protostar template.</p>\r\n<p>You can edit the options by clicking on the Working on Your Site, Template Settings link in the top menu (visible when you login).</p>\r\n<p>For example you can change the site background color, highlights color, site title, site description and title font used. </p>\r\n<p>More options are available in the site administrator. You may also install a new template using the extension manager.</p>', '', -2, 9, '2011-01-02 00:00:01', 474, 'Joomla', '2013-10-13 17:04:31', 713, 0, '0000-00-00 00:00:00', '2011-01-02 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":""}', 17, 2, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 56, 'My recent comment 1', 'my-recent-comment-1', '<p>fvzdfsvzdv</p>', '', -2, 12, '2014-11-10 12:53:04', 474, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-11-10 12:53:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 70, 'recent commments article', 'adca', '<p>cfvzfzcvczvzcv</p>\r\n', '\r\n<p> </p>', -2, 9, '2014-11-23 17:56:17', 474, '', '2014-11-23 18:01:06', 474, 0, '0000-00-00 00:00:00', '2014-11-23 17:56:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"0","show_hits":"0","show_noauth":"0","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 3, '', '', 1, 23, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 101, 'Java programming', 'java-programming', '<table style="height: 50px;" width="969" cellpadding="10">\r\n<tbody>\r\n<tr>\r\n<td style="text-align: left; vertical-align: top; padding: 2;" rowspan="2" width="530">{modules [127 | xhtml]}</td>\r\n<td style="text-align: left; vertical-align: top; padding: 2;" rowspan="2" width="439">\r\n<p>xfthxgfsfsffdgf sdfasdlfkjasdf</p>\r\n<p>sdfasdfsdfasdfasdfas</p>\r\n<p>dfsdf</p>\r\n<p>asfdasdfasdfasdfsadfasdfasdfasdf</p>\r\n<p>asdfasdfasdfasd</p>\r\n<p>fasdfasdfasdfasdfasfa</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>  {jcomments on}</p>', '', 1, 9, '2014-12-11 00:14:24', 474, '', '2014-12-13 16:07:55', 474, 474, '2014-12-13 16:07:55', '2014-12-11 00:14:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 17, 0, '', '', 1, 69, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `feed_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `feed_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `feed_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `feed_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feed_content_rating`
--

CREATE TABLE IF NOT EXISTS `feed_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_content_rating`
--

INSERT INTO `feed_content_rating` (`content_id`, `rating_sum`, `rating_count`, `lastip`) VALUES
(3, 5, 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `feed_content_types`
--

CREATE TABLE IF NOT EXISTS `feed_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `feed_content_types`
--

INSERT INTO `feed_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `feed_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `feed_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feed_example_items`
--

CREATE TABLE IF NOT EXISTS `feed_example_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_extensions`
--

CREATE TABLE IF NOT EXISTS `feed_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=727 ;

--
-- Dumping data for table `feed_extensions`
--

INSERT INTO `feed_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_tags":"0","show_icons":"1","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"0","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"right","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"0","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"1","captcha":"","frontend_userparams":"0","site_language":"0","change_login_name":"1","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"98306e640e46b7a545329d0b781149ae"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2014-03-09 12:54:48","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2014 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.2.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 2, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.2","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `feed_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 1, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"September 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.6","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(701, 'mod_loginregister', 'module', 'mod_loginregister', '', 0, 1, 0, 0, '{"name":"mod_loginregister","type":"module","creationDate":"Aug 2013","author":"JM-Experts!","copyright":"Free Module by JM-Experts!. All rights reserved.","authorEmail":"info@jm-experts.com","authorUrl":"www.jm-experts.com","version":"3.1.0","description":"MOD_LOGINREGISTER_XML_DESCRIPTION","group":""}', '{"view":"0","disablelog":"0","greeting":"1","name":"0","usesecure":"0","cache":"0","checkbox1":"1","jqueryload":"local","tou":"1","checkbox":"checked","articleid":"1","title":"I Agree to the Terms of Use","enablecap":"0","public":"","private":"","jmtheme":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(702, 'flashChart Content plugin', 'plugin', 'flashchart', 'content', 0, 1, 1, 0, '{"name":"flashChart Content plugin","type":"plugin","creationDate":"September 2014","author":"Joachim Schmidt","copyright":"(C) Joachim Schmidt All Rights Reserved.","authorEmail":"joachim.schmidt@jschmidt-systemberatung.de","authorUrl":"www.jschmidt-systemberatung.de","version":"1.3.1.0","description":"PLG_FLASHCHART_XML_DESCRIPTION","group":""}', '{"width":"100%","height":"200","alpha":"0.8","number_format":"c","precision":"2","type":"bar_dome","bar_animation":"null","line_animation":"null","pie_animation":"1","scatter_animation":"0","pie_label_values":"0","pie_legend":"0","right_legend":"0","axis_3d":"1","multibar_color":"0","chart_colors":"4169E1,008000,7A0000,00BFFF,DC143C,191970,FF6600,A52A2A,52CCA3,996633,339933","bg_color":"FFFFFF","bg_image":"","label_color":"555555","x_axis_color":"B0B0B0","y_axis_color":"B0B0B0","grid_color":"B0B0B0","title_style":"padding:10px; font-size:14px; color:51698F; font-weight:bold; font-family:Sans-Serif,Arial,Helvetica;","tooltip_style":"font-size:10px; font-weight:normal; color:51698F;","axis_legend_style":"font-size:10px; font-weight:normal; color:51698F; font-family:Sans-Serif,Arial,Helvetica;","label_fontsize":"12","legend_fontsize":"12","allow_formula":"0","create_image":"1","flashchart_jquery":"1","flashchart_shadowbox":"1","dbname":"","dbhost":"localhost","dbuser":"","dbpassword":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(703, 'com_jcomments', 'component', 'com_jcomments', '', 1, 1, 0, 0, '{"name":"JComments","type":"component","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"3.0.5","description":"JComments lets your users comment on content items.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(704, 'plg_content_jcomments', 'plugin', 'jcomments', 'content', 0, 1, 1, 0, '{"name":"plg_content_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_CONTENT_JCOMMENTS_XML_DESCRIPTION","group":""}', '{"show_frontpage":"1","enable_for_archived":"1","comments_count":"0","add_comments":"1","links_position":"1","readmore_link":"1","readmore_css_class":"readmore-link","comments_css_class":"comments-link","show_hits":"1","show_comments_event":"onAfterDisplayContent"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(705, 'plg_editors-xtd_jcommentson', 'plugin', 'jcommentson', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_jcommentson","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_EDITORS-XTD_JCOMMENTSON_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(706, 'plg_editors-xtd_jcommentsoff', 'plugin', 'jcommentsoff', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_jcommentsoff","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_EDITORS-XTD_JCOMMENTSOFF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(707, 'plg_search_jcomments', 'plugin', 'jcomments', 'search', 0, 1, 1, 0, '{"name":"plg_search_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_SEARCH_JCOMMENTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(708, 'plg_system_jcomments', 'plugin', 'jcomments', 'system', 0, 1, 1, 0, '{"name":"plg_system_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_SYSTEM_JCOMMENTS_XML_DESCRIPTION","group":""}', '{"disable_template_css":"0","disable_error_reporting":"0","clear_rss":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(709, 'plg_user_jcomments', 'plugin', 'jcomments', 'user', 0, 1, 1, 0, '{"name":"plg_user_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_USER_JCOMMENTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(710, 'plg_quickicon_jcomments', 'plugin', 'jcomments', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_QUICKICON_JCOMMENTS_XML_DESCRIPTION","group":""}', '{"context":"mod_quickicon","displayedtext":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(711, 'com_rssearch', 'component', 'com_rssearch', '', 1, 1, 0, 0, '{"name":"com_rssearch","type":"component","creationDate":"March 2011","author":"RSJoomla!","copyright":"(C) 2011 www.rsjoomla.com","authorEmail":"support@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"1.0.0 R4","description":"RSSearch! helps you to create search modules for the most popular components.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(712, 'mod_rssearch', 'module', 'mod_rssearch', '', 0, 1, 0, 0, '{"name":"mod_rssearch","type":"module","creationDate":"20\\/02\\/2011","author":"RSJoomla!","copyright":"GNU General Public License","authorEmail":"suport@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"1.0","description":"RSF_MODULE_LIST_XML_DESC","group":""}', '{"comps":"","show_submit":"yes","show_loop":"no","show_type":"1","search_limit":"5","field_width":"120","results_box_width":"120","nr_words":"80","moduleclass_sfx":"","itemid":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(713, 'plg_rssearch_content', 'plugin', 'content', 'rssearch', 0, 1, 1, 0, '{"name":"plg_rssearch_content","type":"plugin","creationDate":"21.02.2011","author":"RSJoomla!","copyright":"Copyright (C) 2010 www.rsjoomla.com. All rights reserved.","authorEmail":"support@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"1.0","description":"RSF_CONT_XML_DESC","group":""}', '{"orderby":"hits","asc_desc":"ASC","searchfields":["content","categories"],"categories":["9"]}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(714, 'quicklogout', 'component', 'com_quicklogout', '', 1, 1, 0, 0, '{"name":"Quick Logout","type":"component","creationDate":"2014-07-25","author":"John Muehleisen","copyright":"Copyright (C) 2014. All rights reserved.","authorEmail":"john@welcometojoomla.com","authorUrl":"www.welcometojoomla.com","version":"1.9.3","description":"Adds a new menu option type to Joomla to allow a one click logout","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(715, 'freevotes', 'component', 'com_freevotes', '', 1, 1, 0, 0, '{"name":"Free votes","type":"component","creationDate":"2012-2-16","author":"Iacopo Guarneri","copyright":"","authorEmail":"iacopo.guarneri@alice.it","authorUrl":"http:\\/\\/www.the-html-tool.com\\/","version":"1.0","description":"Gestione anagrafiche per tutorial.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(716, 'jVS - Polls', 'module', 'mod_jvs_polls', '', 0, 1, 0, 0, '{"name":"jVS - Polls","type":"module","creationDate":"17-April-2012","author":"Johannes Me\\u00dfmer","copyright":"Copyright (C) 2011- Johannes Me\\u00dfmer","authorEmail":"service@joomess.de","authorUrl":"http:\\/\\/www.joomess.de","version":"1.00","description":"","group":""}', '{"order":"popular","time":"all-time","limit":"10","show_avatar":"1","show_title":"1","show_question":"1","show_votes":"1","show_date":"1","short":"50","bbcode":"0","cat_all":"1","cat_id":"","sub_cats":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(717, 'JA Google Chart', 'module', 'mod_jagooglechart', '', 0, 1, 0, 0, '{"name":"JA Google Chart","type":"module","creationDate":"13 March 2013","author":"JoomlArt_com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved_","authorEmail":"webmaster@joomlart_com","authorUrl":"www.joomlart.com","version":"2.6.2","description":"\\n\\t\\n\\t\\t<div style=''text-align: left;''>\\n\\t \\t<p><strong>JA Google Chart<\\/strong> is a free responsive joomla module, compatible with Joomla 2.5 &amp; Joomla 3 used to display your data in google charts: bar chart, pie chart, column chart, line chart, geo chart, area chart. You can customize the display of each chart.<\\/p>\\n\\t\\t<p style=\\"clear:both\\"><span style=\\"color: #ff6600;\\"><strong>Key Features:<\\/strong><\\/span><\\/p>\\n\\t\\t <ul>\\n\\t\\t   \\t<li>Native with Joomla 2.5 and Joomla 3<\\/li>\\n\\t\\t\\t<li>Fully responsive<\\/li>\\n            <li>Support 6 chart types<\\/li>\\n            <li>3 ways to upload data: manual, import and Google Speadsheet CSV url<\\/li>\\n            <li>Configurable Axis: horizontal and vertical<\\/li>\\n            <li>3D view for Pie chart<\\/li>\\n            <li>3 Display modes for GEO Chart<\\/li>\\t\\n\\t\\t <\\/ul>\\t\\n\\t\\t<p><strong><span style=\\"color: #ff0000;\\">Upgrade Method:<\\/span><br \\/><\\/strong><\\/p>\\n\\t\\t<ul>\\n\\t\\t\\t<li>You can install the new version directly over this version. Uninstallation is not required. Backup any customized files before upgrading. OR<\\/li>\\n\\t\\t\\t<li>Use <strong><a href=\\"http:\\/\\/extensions.joomla.org\\/extensions\\/core-enhancements\\/installers\\/12077\\" target=\\"_blank\\">JA Extensions Manager<\\/a><\\/strong> Component for easy upgrades and rollbacks. <strong><a href=\\"http:\\/\\/www.youtube.com\\/user\\/JoomlArt#p\\/c\\/BC9B0C0BFE98657E\\/2\\/mNAuJRmifG8\\" target=\\"_blank\\">Watch Video..<\\/a><\\/strong><\\/li>\\n\\t\\t<\\/ul>\\n\\t\\t<p><span style=\\"color: #008000;\\"><strong>References:<\\/strong><\\/span><\\/p>\\n\\t\\t<ul>\\n\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/www.joomlart.com\\/documentation\\/joomla-module\\/ja-google-chart\\">Documentation<\\/a><\\/li>\\n\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?538-JA-Google-Charts-Module\\">Forum<\\/a><\\/li>\\n\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/update.joomlart.com\\/\\">Updates &amp; Versions<\\/a><\\/li>\\n\\t\\t<\\/ul>\\n\\t\\t<p>Copyright 2004 - 2014 <a href=\\"http:\\/\\/www.joomlart.com\\/\\" title=\\"Visit Joomlart.com!\\">JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n\\t \\n\\t","group":""}', '{"chart_type":"area_chart","data_source":"csv","data_input":"","data_input_url":"","width":"100%","height":"600","chartArea_left":"50","chartArea_top":"50","chartArea_width":"750","chartArea_height":"500","backgroundColor":"#ffffff","stroke":"#666666","strokeWidth":"0","font":"arial","chart_titleName":"","chart_titleFont":"","chart_titleSize":"9","chart_titleColor":"#000000","legend_position":"right","legend_font":"","legend_textSize":"9","legend_textColor":"#000000","tooltip_enabled":"1","tooltip_font":"","tooltip_textSize":"9","tooltip_textColor":"#000000","axis_reverseCategories":"0","axis_lineWidth":"2","axis_pointSize":"0","hAxis_title":"","hAxis_title_font":"","hAxis_title_textSize":"11","hAxis_title_textColor":"#000000","hAxis_textPosition":"out","hAxis_text_font":"","hAxis_text_textSize":"9","hAxis_text_textColor":"#000000","hAxis_direction":"1","vAxis_title":"","vAxis_title_font":"","vAxis_title_textSize":"11","vAxis_title_textColor":"#000000","vAxis_textPosition":"out","vAxis_text_font":"","vAxis_text_textSize":"9","vAxis_text_textColor":"#000000","vAxis_direction":"1","pie_is3D":"0","pie_reverseCategories":"0","pie_pieSliceBorderColor":"#FFFFFF","pie_pieSliceText":"percentage","pieSlice_font":"","pieSlice_textSize":"9","pieSlice_textColor":"#000000","geo_displayMode":"regions","geo_region":"world","geo_resolution":"countries","geo_enableRegionInteractivity":"1","geo_keepAspectRatio":"1","geo_markerOpacity":"1.0","geo_colorAxis_minValue":"0","geo_colorAxis_maxValue":"","geo_colorAxis_fromColor":"#FFFFFF","geo_colorAxis_toColor":"#35A339","geo_datalessRegionColor":"#F5F5F5","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(718, 'plg_content_cdminipolls', 'plugin', 'cdminipolls', 'content', 0, 0, 1, 0, '{"name":"plg_content_cdminipolls","type":"plugin","creationDate":"November 11th, 2011","author":"Daniel Rataj","copyright":"(C) 2007 - 2011 Great Joomla! All rights reserved.\\n\\t","authorEmail":"info@greatjoomla.com","authorUrl":"www.greatjoomla.com","version":"1.0.0 Beta","description":"PLG_CONTENT_CDMINIPOLLS_XML_DESCRIPTION","group":""}', '{"uitheme":"ui-lightness","progressbar_width":"200px","show_statistics":"1","show_statistics_total":"1","show_statistics_firstvote":"1","show_statistics_lastvote":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(719, 'acepolls', 'component', 'com_acepolls', '', 1, 1, 0, 0, '{"name":"AcePolls","type":"component","creationDate":"03 October 2011","author":"JoomAce LLC","copyright":"2009-2011 JoomAce LLC","authorEmail":"info@joomace.net","authorUrl":"www.joomace.net","version":"1.0.9","description":"AcePolls is a simple and flexible component for voting. It shows vote results in 2 types, a nice pie chart or default Joomla way.","group":""}', '{"only_registered":"1","one_vote_per_user":"0","ip_check":"0","show_component_msg":"1","allow_voting":"1","show_comments":"1","show_what":"1","show_hits":"1","show_voters":"1","show_times":"1","show_dropdown":"1","opacity":"90","bg_color":"ffffff","circle_color":"505050","pieX":"100%","pieY":"400","start_angle":"55","radius":"150","gradient":"1","no_labels":"0","show_zero_votes":"1","animation_type":"bounce","bounce_dinstance":"30","bg_image":"-1","bg_image_x":"left","bg_image_y":"top","font_size":"11","font_color":"404040","title_lenght":"30","chartX":"100%","optionsFontSize":"12","barHeight":"15","barBorder":"1px solid #000000","bgBarColor":"f5f5f5","bgBarBorder":"1px solid #cccccc"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(720, 'EXT VK Poll', 'module', 'mod_ext_vk_poll', '', 0, 1, 0, 0, '{"name":"EXT VK Poll","type":"module","creationDate":"03\\/09\\/2013","author":"Ext-Joom.com","copyright":"Copyright (C) 2011-2013 Ext-Joom.com. All Rights Reserved.","authorEmail":"extjoom@gmail.com","authorUrl":"http:\\/\\/www.ext-joom.com","version":"1.1","description":"Using Polls widget you can create a poll for users of your site within 5 minutes by embedding the corresponding module in any place on your page. ","group":""}', '{"ext_id":"1","script_vk":"0","api_id":"3858251","poll_id":"103147219_13ed1052ccd20cc216","width":"300","cache":"0","cache_time":"0","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(721, 'jvotesystem', 'component', 'com_jvotesystem', '', 1, 0, 0, 0, '{"name":"jVoteSystem","type":"component","creationDate":"23-Jul-2011","author":"Johannes Me\\u00dfmer","copyright":"Copyright (C) 2010-2012 Johannes Me\\u00dfmer","authorEmail":"service@joomess.de","authorUrl":"http:\\/\\/www.joomess.de","version":"2.56","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(722, 'Polar Vote', 'plugin', 'polarvote', 'content', 0, 0, 1, 0, '{"name":"Polar Vote","type":"plugin","creationDate":"2014-04-02","author":"StyleWare","copyright":"Copyright (c) 2010-2014  styleware.eu All rights reserved.","authorEmail":"office@styleware.eu","authorUrl":"www.styleware.eu","version":"1.0.0","description":"This plugin allows you easily to add Polar votes to your site.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(723, 'freevotes', 'module', 'mod_freevotes', '', 0, 1, 0, 0, '{"name":"freevotes","type":"module","creationDate":"16 02 2012","author":"Iacopo Guarneri","copyright":"","authorEmail":"iacopo.guarneri@alice.it","authorUrl":"http:\\/\\/www.the-html-tool.com\\/","version":"1.0","description":"","group":""}', '{"range_da":"0","range_a":"5","img_vuoto":"modules\\/mod_freevotes\\/images\\/vuoto.png","img_pieno":"modules\\/mod_freevotes\\/images\\/pieno.png","modifica_voti":"0","aggiungi_risposte":"1","view_graph":"1","type_graph":"pie","label":"1","legend":"0","height_modulo":"350","width_wait":"50%","moduleclass_sfx":"","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(724, 'Baseline', 'template', 'baseline', '', 0, 1, 1, 0, '{"name":"Baseline","type":"template","creationDate":"07-03-2013","author":"Youjoomla.com","copyright":"Youjoomla.com","authorEmail":"youjoomlallc@gmail.com","authorUrl":"www.youjoomla.com","version":"1.0.1","description":"\\n\\t\\t<div id=\\"temp_desc\\" style=\\"font-family: Arial Narrow,sans-serif;text-align:left;\\"><h1 class=\\"admin_t_name\\">Baseline Joomla! Template<\\/h1>\\n\\t\\t\\t<img src=\\"..\\/templates\\/baseline\\/template_thumbnail.png\\" \\/><br \\/><br \\/>\\n\\t\\t\\t<h1 class=\\"admin_t_name\\">is proudly powered by<\\/h1>\\n\\t\\t\\t<a href=\\"http:\\/\\/www.yjsimplegrid.com\\" class=\\"modal\\" rel=\\"{handler: ''iframe'', size: {x: 800, y: 700}}\\">\\n\\t\\t\\t<span title=\\"YJSimpleGrid Joomla! Template Framework by Youjoomla.com\\">\\n\\t\\t\\t<img src=\\"..\\/templates\\/baseline\\/images\\/admin\\/yjsgadmin_logo.png\\" border=\\"0\\" title=\\"\\" alt=\\"\\"\\/>\\n\\t\\t\\t<\\/span>\\n\\t\\t\\t<\\/a>\\n\\t\\t\\t\\n\\t\\t\\t<div id=\\"temp_det\\">      \\n\\t\\t\\t<h3> Template Version 1.0.1 Initial Release<\\/h3>\\n\\t\\t\\t<h3>YJSG Version 1.0.16 Initial Release<\\/h3>\\n\\t\\t\\t\\n\\t\\t\\t<p>Baseline Joomla  Template by Youjoomla.com. This is Free Template by Youjoomla.com. Visit <a href=\\"http:\\/\\/www.youjoomla.com\\">Youjoomla \\t\\t\\tTemplates Club<\\/a> home page.\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<h3>Some of the YJSimpleGrid Template Framework Features are:<\\/h3>\\n\\t\\t\\t<ul>\\n\\t\\t\\t<li>Advanced Joomla Template Manager Admin Panel<\\/li>\\n\\t\\t\\t<li>Flexible Layouts<\\/li>\\n\\t\\t\\t<li>Over 52 collapsible module positions easily add more<\\/li>\\n\\t\\t\\t<li>Automatic module width adjustment in template manager<\\/li>\\n\\t\\t\\t<li>Native RTL<\\/li>\\n\\t\\t\\t<li>Native Mobile devices support<\\/li>\\n\\t\\t\\t<li>Responsive Joomla! Template<\\/li>\\n\\t\\t\\t<li>Cross browser support<\\/li>\\n\\t\\t\\t<li>Native @font-face kits support, 600+ Google fonts plus 15 CSS font types<\\/li>\\n\\t\\t\\t<li>Native Jquery Support<\\/li>\\n\\t\\t\\t<li>Google Analytics website tracking built in<\\/li>\\n\\t\\t\\t<li>Component off switch or menu item assignment<\\/li>\\n\\t\\t\\t<li>Topmenu off switch or menu item assignment<\\/li>\\n\\t\\t\\t<li>7 default module grids with 5 modules each. Easily add more<\\/li>\\n\\t\\t\\t<li>Flexible logo and header size changer<\\/li>\\n\\t\\t\\t<li>Frontpage news items number of  characters control<\\/li>\\n\\t\\t\\t<li>Visible RTL switch and Font resizer<\\/li>\\n\\t\\t\\t<li>5 menu styles<\\/li>\\n\\t\\t\\t<li>Show page title under menu link<\\/li>\\n\\t\\t\\t<li>Custom error and offline pages<\\/li>\\n\\t\\t\\t<li>Custom user pages ( com_user )<\\/li>\\n\\t\\t\\t<li>Slide to top smothscroll<\\/li>\\n\\t\\t\\t<li>XHTML , CSS and JS valid<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>For additional documentation please visit <a href=\\"http:\\/\\/www.yjsimplegrid.com\\" target=\\"_blank\\">YJSimpleGrid<\\/a><\\/h3>\\n\\t\\t\\t\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<\\/div>\\n\\t","group":""}', '{"":"TOP_MENU_OFF_YJ_LABEL","STYLE_SETTINGS_TAB":"STYLE_SETTINGS_TAB","custom_css":"2","STTEXT_LABEL":"STTEXT_LABEL","STYLE_SUB":"STYLE_SUB","yjsg_get_styles":"style1|de5d45","default_font":"13px","default_font_family":"6","selectors_override":"1","selectors_override_type":"2","css_font_family":"12","google_font_family":"Fjalla+One|sans-serif|normal","fontfacekit_font_family":"PTSansNarrowBold","affected_selectors":"h1,h2,h3,h4,h5,h6,.article_title,.module_title,.pagetitle,.showtext,.trialLink a","LOGO_SUB":"LOGO_SUB","LGTEXT_LABEL":"LGTEXT_LABEL","LOGO_YJ_TITLE":"LOGO_YJ_TITLE","logo_image":"","logo_width":"240px","logo_height":"105px","turn_logo_off":"2","turn_header_block_off":"2","TOP_MENU_SUB":"TOP_MENU_SUB","TMTEXT_LABEL":"TMTEXT_LABEL","TOP_MENU_YJ_LABEL":"TOP_MENU_YJ_LABEL","menuName":"mainmenu","default_menu_style":"2","sub_width":"200px","yjsg_menu_offset":"95","turn_topmenu_off":"0","DEF_GRID_SUB":"DEF_GRID_SUB","DGTEXT_LABEL":"DGTEXT_LABEL","MAINB_YJ_LABEL":"MAINB_YJ_LABEL","css_widthdefined":"px","css_width":"1200","site_layout":"2","MBC_W_LABEL":"MBC_W_LABEL","widthdefined":"%","maincolumn":"55","insetcolumn":"0","leftcolumn":"22.5","rightcolumn":"22.5","SPII_LABEL":"SPII_LABEL","widthdefined_itmid":"%","maincolumn_itmid":"46","insetcolumn_itmid":"18","leftcolumn_itmid":"18","rightcolumn_itmid":"18","define_itemid":"0","MG_SUB":"MG_SUB","MGTEXT_LABEL":"MGTEXT_LABEL","yjsg_1_width":"20|20|20|20|20","yjsg_header_width":"33|33|33","yjsg_2_width":"20|20|20|20|20","yjsg_3_width":"20|20|20|20|20","yjsg_4_width":"20|20|20|20|20","yjsg_bodytop_width":"33|33|33","yjsg_yjsgbodytbottom_width":"33|33|33","yjsg_5_width":"20|20|20|20|20","yjsg_6_width":"20|20|20|20|20","yjsg_7_width":"20|20|20|20|20","ADD_F_SUB":"ADD_F_SUB","ADTEXT_LABEL":"ADTEXT_LABEL","GA_YJ_LABEL":"GA_YJ_LABEL","GATEXT_LABEL":"GATEXT_LABEL","ga_switch":"0","GAcode":"Your google code","NOT_YJ_LABEL":"NOT_YJ_LABEL","ie6notice":"0","nonscript":"0","ST_YJ_LABEL":"ST_YJ_LABEL","show_tools":"1","show_fres":"1","show_rtlc":"1","TDIR_YJ_LABEL":"TDIR_YJ_LABEL","text_direction":"2","SEO_YJ_LABEL":"SEO_YJ_LABEL","turn_seo_off":"2","seo":"Your description goes here","tags":"Your keywords go here","VIDEOJS_YJ_LABEL":"VIDEOJS_YJ_LABEL","videojs_on":"0","videojs_vimeo_on":"0","videojs_youtube_on":"0","COPY_YJ_LABEL":"COPY_YJ_LABEL","branding_off":"2","joomlacredit_off":"1","custom_cp":"","joomla_generator_off":"1","validators_off":"1","totop_off":"1","YJSG_PANNELS_SUB":"YJSG_PANNELS_SUB","TOPPANEL_YJ_LABEL":"TOPPANEL_YJ_LABEL","tpopen_text":"Open","tpclose_text":"Close","tpbtn_height":"30","tpbtn_width":"100","tptran_speed":"500","yjsg_toppanel_width":"20|20|20|20|20","toppanel_module_style":"YJsgxhtml","BOTPANEL_YJ_LABEL":"BOTPANEL_YJ_LABEL","bpopen_text":"Open","bpclose_text":"Close","bpbtn_height":"30","bpbtn_width":"100","bptran_speed":"500","yjsg_botpanel_width":"20|20|20|20|20","botpanel_module_style":"YJsgxhtml","SIDEPANEL_YJ_LABEL":"SIDEPANEL_YJ_LABEL","spbox_width":"350","spbtn_poz":"45%","sptran_speed":"500","sidepanel_module_style":"YJsgxhtml","ADV_SUB":"ADV_SUB","ADVTEXT_LABEL":"ADVTEXT_LABEL","RESPONSIVE_YJ_LABEL":"RESPONSIVE_YJ_LABEL","responsive_on":"1","COMP_YJ_LABEL":"COMP_YJ_LABEL","less_compiler_on":"1","compile_css":"1","compiler_compressed":"1","use_compiled_css":"0","ajax_front_recompile":"1","buffer_front_recompile":"0","FPC_YJ_LABEL":"FPC_YJ_LABEL","fp_controll_switch":"2","fp_chars_limit":"3000","fp_after_text":"","SCRIPT_YJ_LABEL":"SCRIPT_YJ_LABEL","JQ_LABEL":"JQ_LABEL","jq_switch":"2","SMS_YJ_LABEL":"SMS_YJ_LABEL","MSTEXT_LABEL":"MSTEXT_LABEL","YJsg1_module_style":"YJsgxhtml","YJsgh_module_style":"YJsgxhtml","YJsg2_module_style":"YJsgxhtml","YJsg3_module_style":"YJsgxhtml","YJsg4_module_style":"YJsgxhtml","YJsgmt_module_style":"YJsgxhtml","YJsgl_module_style":"YJsgxhtml","YJsgr_module_style":"YJsgxhtml","YJsgi_module_style":"YJsgxhtml","YJsgit_module_style":"YJsgxhtml","YJsgib_module_style":"YJsgxhtml","YJsgmb_module_style":"YJsgxhtml","YJsg5_module_style":"YJsgxhtml","YJsg6_module_style":"YJsgxhtml","YJsg7_module_style":"YJsgxhtml","CP_LABEL":"CP_LABEL","component_switch":"0","admin_css_time":"0","yjsg_assigements":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(725, 'plg_system_f90_registration_validation', 'plugin', 'f90_registration_validation', 'system', 0, 1, 1, 0, '{"name":"plg_system_f90_registration_validation","type":"plugin","creationDate":"Oct 2013","author":"Function90","copyright":"(C) 2013 Fucntion90.com. All rights reserved.","authorEmail":"dev.fucntion90@gmail.com","authorUrl":"www.function90.com","version":"1.0.1","description":"PLG_SYSTEM_F90_REGISTRATION_VALIDATION_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(726, 'Content - Load Module in Article', 'plugin', 'loadmoduleinarticle', 'content', 0, 1, 1, 0, '{"name":"Content - Load Module in Article","type":"plugin","creationDate":"juli 2014","author":"Carsten Engel","copyright":"Copyright (C) 2008-2014 Carsten Engel, pages-and-items. All rights reserved.","authorEmail":"-","authorUrl":"www.pages-and-items.com","version":"3.0.1","description":"\\n\\t   Plugin to display a module into an article. Placing the same module more then once on a page might result in conflicts. Dont forget to ENABLE this plugin in the plugin-manager. Syntax in editor: {module [63]} where 63 is the id of the module. You can overrule the default style like this: {module [63|rounded]}. Options are ''none'', ''xhtml'' (wrapped by a div) and ''rounded'' (wrapped by multiple divs).\\n\\t","group":""}', '{"style":"none"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_filters`
--

CREATE TABLE IF NOT EXISTS `feed_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Dumping data for table `feed_finder_links`
--

INSERT INTO `feed_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(1, 'index.php?option=com_content&view=category&id=2', 'index.php?option=com_content&view=category&id=2&Itemid=119', 'Uncategorised', '', '2014-11-06 22:38:02', 'ba0e264d71ba4684131733b02103959d', 1, 1, 1, 'en-GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2232223b733a353a22616c696173223b733a31333a22756e63617465676f7269736564223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22343734223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31303a22706167655f7469746c65223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d7d733a333a226c6674223b733a313a2231223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22746172676574223b733a303a22223b733a353a22696d616765223b733a303a22223b7d7d733a343a22736c7567223b733a31353a22323a756e63617465676f7269736564223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a35343a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f322d756e63617465676f72697365643f4974656d69643d313139223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d32223b733a353a22726f757465223b733a35383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d32264974656d69643d313139223b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(2, 'index.php?option=com_banners&view=category&id=3', '', 'Uncategorised', '', '2014-11-06 22:38:02', '79197e9210da885bae5de695875d5227', 1, 1, 1, 'en-GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2233223b733a353a22616c696173223b733a31333a22756e63617465676f7269736564223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f62616e6e657273223b733a31303a22637265617465645f6279223b733a333a22343734223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31303a22706167655f7469746c65223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d7d733a333a226c6674223b733a313a2233223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22746172676574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a363a22666f6f626172223b733a303a22223b7d7d733a343a22736c7567223b733a31353a22333a756e63617465676f7269736564223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a303a22223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f62616e6e65727326766965773d63617465676f72792669643d33223b733a353a22726f757465223b733a303a22223b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(3, 'index.php?option=com_contact&view=category&id=4', 'index.php?option=com_contact&view=category&id=4&Itemid=119', 'Uncategorised', '', '2014-11-06 22:38:02', 'c699446182dc164be269e0e99cafef62', 1, 1, 1, 'en-GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2234223b733a353a22616c696173223b733a31333a22756e63617465676f7269736564223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74616374223b733a31303a22637265617465645f6279223b733a333a22343734223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31303a22706167655f7469746c65223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d7d733a333a226c6674223b733a313a2235223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22746172676574223b733a303a22223b733a353a22696d616765223b733a303a22223b7d7d733a343a22736c7567223b733a31353a22343a756e63617465676f7269736564223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a36333a22696e6465782e7068702f636f6d706f6e656e742f636f6e746163742f63617465676f72792f342d756e63617465676f72697365643f4974656d69643d313139223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e7461637426766965773d63617465676f72792669643d34223b733a353a22726f757465223b733a35383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e7461637426766965773d63617465676f72792669643d34264974656d69643d313139223b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(4, 'index.php?option=com_newsfeeds&view=category&id=5', 'index.php?option=com_newsfeeds&view=category&id=5&Itemid=119', 'Uncategorised', '', '2014-11-06 22:38:02', '904744ce9d39b8b1ceb3083ce7524e33', 1, 1, 1, 'en-GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2235223b733a353a22616c696173223b733a31333a22756e63617465676f7269736564223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31333a22636f6d5f6e6577736665656473223b733a31303a22637265617465645f6279223b733a333a22343734223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31303a22706167655f7469746c65223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d7d733a333a226c6674223b733a313a2237223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22746172676574223b733a303a22223b733a353a22696d616765223b733a303a22223b7d7d733a343a22736c7567223b733a31353a22353a756e63617465676f7269736564223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a36353a22696e6465782e7068702f636f6d706f6e656e742f6e65777366656564732f63617465676f72792f352d756e63617465676f72697365643f4974656d69643d313139223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34393a22696e6465782e7068703f6f7074696f6e3d636f6d5f6e657773666565647326766965773d63617465676f72792669643d35223b733a353a22726f757465223b733a36303a22696e6465782e7068703f6f7074696f6e3d636f6d5f6e657773666565647326766965773d63617465676f72792669643d35264974656d69643d313139223b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(5, 'index.php?option=com_weblinks&view=category&id=6', 'index.php?option=com_weblinks&view=category&id=6&Itemid=119', 'Uncategorised', '', '2014-11-06 22:38:02', '674abee39ee3c3f85f07e2636a4643c7', 1, 1, 1, 'en-GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2236223b733a353a22616c696173223b733a31333a22756e63617465676f7269736564223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31323a22636f6d5f7765626c696e6b73223b733a31303a22637265617465645f6279223b733a333a22343734223b733a383a226d6f646966696564223b733a31393a22323031322d30372d32302031393a33313a3238223b733a31313a226d6f6469666965645f6279223b733a333a22333633223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d7d733a333a226c6674223b733a313a2239223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b7d7d733a343a22736c7567223b733a31353a22363a756e63617465676f7269736564223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a36343a22696e6465782e7068702f636f6d706f6e656e742f7765626c696e6b732f63617465676f72792f362d756e63617465676f72697365643f4974656d69643d313139223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f7765626c696e6b7326766965773d63617465676f72792669643d36223b733a353a22726f757465223b733a35393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7765626c696e6b7326766965773d63617465676f72792669643d36264974656d69643d313139223b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(6, 'index.php?option=com_users&view=category&id=7', '', 'Uncategorised', '', '2014-11-06 22:38:03', '0cb4d83953fc8262c0b90554c0a9cd3a', 1, 1, 1, 'en-GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2237223b733a353a22616c696173223b733a31333a22756e63617465676f7269736564223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a393a22636f6d5f7573657273223b733a31303a22637265617465645f6279223b733a333a22343734223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31303a22706167655f7469746c65223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d7d733a333a226c6674223b733a323a223131223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22746172676574223b733a303a22223b733a353a22696d616765223b733a303a22223b7d7d733a343a22736c7567223b733a31353a22373a756e63617465676f7269736564223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a303a22223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34353a22696e6465782e7068703f6f7074696f6e3d636f6d5f757365727326766965773d63617465676f72792669643d37223b733a353a22726f757465223b733a303a22223b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(7, 'index.php?option=com_weblinks&view=category&id=8', 'index.php?option=com_weblinks&view=category&id=8&Itemid=110', 'Blog Roll', '', '2014-11-06 22:38:03', 'de1022d42cdef8432d95486173a0a896', 1, 1, 1, 'en-GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2238223b733a353a22616c696173223b733a393a22626c6f672d726f6c6c223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31323a22636f6d5f7765626c696e6b73223b733a31303a22637265617465645f6279223b733a333a22343734223b733a383a226d6f646966696564223b733a31393a22323031322d30372d32302031393a34343a3034223b733a31313a226d6f6469666965645f6279223b733a333a22333633223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d7d733a333a226c6674223b733a323a223133223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b7d7d733a343a22736c7567223b733a31313a22383a626c6f672d726f6c6c223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a34353a22696e6465782e7068702f656469742d626c6f672d726f6c6c2f63617465676f72792f382d626c6f672d726f6c6c223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f7765626c696e6b7326766965773d63617465676f72792669643d38223b733a353a22726f757465223b733a35393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7765626c696e6b7326766965773d63617465676f72792669643d38264974656d69643d313130223b733a353a227469746c65223b733a393a22426c6f6720526f6c6c223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(8, 'index.php?option=com_content&view=category&id=9', 'index.php?option=com_content&view=category&id=9&Itemid=101', 'Blog', '', '2014-11-06 22:38:03', 'd624ddaa7bab6f54c79a25146fbb5142', 1, 1, 1, 'en-GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2239223b733a353a22616c696173223b733a343a22626c6f67223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22343734223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d7d733a333a226c6674223b733a323a223135223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b7d7d733a343a22736c7567223b733a363a22393a626c6f67223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a32313a22696e6465782e7068702f686f6d652f392d626c6f67223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d39223b733a353a22726f757465223b733a35383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d39264974656d69643d313031223b733a353a227469746c65223b733a343a22426c6f67223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(9, 'index.php?option=com_content&view=category&id=10', 'index.php?option=com_content&view=category&id=10&Itemid=119', 'About-publish', 'This is CATEGORY named "About-publish" gfxgfhfsgfbsfgsf sdfsrfdf gfxgfhfsgfbsfgsf sdfsrfdf gfxgfhfsgfbsfgsf sdfsrfdf gfxgfhfsgfbsfgsf sdfsrfdf', '2014-11-06 22:38:03', '1e0c17db0ee66b260d286b1ab1013728', 1, 1, 1, 'en-GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-11-06 22:07:36', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a323a223130223b733a353a22616c696173223b733a31333a2261626f75742d7075626c697368223b733a373a2273756d6d617279223b733a3439373a223c703e546869732069732043415445474f5259206e616d6564202241626f75742d7075626c697368223c2f703e0d0a3c70207374796c653d226c696e652d6865696768743a2031352e3830373939393631303930303970783b223e676678676668667367666273666773663c2f703e0d0a3c703e3c7370616e207374796c653d226c696e652d6865696768743a2031352e3830373939393631303930303970783b223e73646673726664663c2f7370616e3e3c7370616e207374796c653d226c696e652d6865696768743a2031352e3830373939393631303930303970783b223e676678676668667367666273666773663c2f7370616e3e3c2f703e0d0a3c703e3c7370616e207374796c653d226c696e652d6865696768743a2031352e3830373939393631303930303970783b223e73646673726664663c2f7370616e3e3c7370616e207374796c653d226c696e652d6865696768743a2031352e3830373939393631303930303970783b223e676678676668667367666273666773663c2f7370616e3e3c2f703e0d0a3c703e3c7370616e207374796c653d226c696e652d6865696768743a2031352e3830373939393631303930303970783b223e73646673726664663c2f7370616e3e676678676668667367666273666773663c2f703e0d0a3c703e73646673726664663c2f703e223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22343734223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d7d733a333a226c6674223b733a323a223137223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b7d7d733a343a22736c7567223b733a31363a2231303a61626f75742d7075626c697368223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a35353a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f31302d61626f75742d7075626c6973683f4974656d69643d313139223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3130223b733a353a22726f757465223b733a35393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3130264974656d69643d313139223b733a353a227469746c65223b733a31333a2241626f75742d7075626c697368223b733a31313a226465736372697074696f6e223b733a3134323a22546869732069732043415445474f5259206e616d6564202241626f75742d7075626c697368222067667867666866736766627366677366207364667372666466206766786766686673676662736667736620736466737266646620676678676668667367666273666773662073646673726664662067667867666866736766627366677366207364667372666466223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031342d31312d30362032323a30373a3336223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(16, 'index.php?option=com_weblinks&view=weblink&id=1', 'index.php?option=com_weblinks&view=weblink&id=1:joomla-community&catid=8:blog-roll&Itemid=110', 'Joomla! Community', '', '2014-11-06 22:38:04', 'a674aeb7e7987fc2fa59fefae8dc8f3e', 1, 1, 1, 'en-GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 6, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32323a7b733a323a226964223b733a313a2231223b733a353a226361746964223b733a313a2238223b733a353a22616c696173223b733a31363a226a6f6f6d6c612d636f6d6d756e697479223b733a343a226c696e6b223b733a34383a22687474703a2f2f636f6d6d756e6974792e6a6f6f6d6c612e6f72672f626c6f67732f636f6d6d756e6974792e68746d6c223b733a373a2273756d6d617279223b733a303a22223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d7d733a383a226f72646572696e67223b733a313a2231223b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22746172676574223b733a303a22223b733a353a227769647468223b733a303a22223b733a363a22686569676874223b733a303a22223b733a31323a22636f756e745f636c69636b73223b733a303a22223b7d7d733a383a2263617465676f7279223b733a393a22426c6f6720526f6c6c223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31383a22313a6a6f6f6d6c612d636f6d6d756e697479223b733a373a22636174736c7567223b733a31313a22383a626c6f672d726f6c6c223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a373a227765626c696e6b223b733a343a2270617468223b733a36333a22696e6465782e7068702f656469742d626c6f672d726f6c6c2f7765626c696e6b2f382d626c6f672d726f6c6c2f312d6a6f6f6d6c612d636f6d6d756e697479223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a393a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a333a7b733a343a2254797065223b613a313a7b733a383a22576562204c696e6b223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a22576562204c696e6b223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a393a22426c6f6720526f6c6c223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a393a22426c6f6720526f6c6c223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f7765626c696e6b7326766965773d7765626c696e6b2669643d31223b733a353a22726f757465223b733a39333a22696e6465782e7068703f6f7074696f6e3d636f6d5f7765626c696e6b7326766965773d7765626c696e6b2669643d313a6a6f6f6d6c612d636f6d6d756e6974792663617469643d383a626c6f672d726f6c6c264974656d69643d313130223b733a353a227469746c65223b733a31373a224a6f6f6d6c612120436f6d6d756e697479223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b733a313a2231223b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a363b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d);
INSERT INTO `feed_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(17, 'index.php?option=com_weblinks&view=weblink&id=2', 'index.php?option=com_weblinks&view=weblink&id=2:joomla-leadership-blog&catid=8:blog-roll&Itemid=110', 'Joomla! Leadership Blog', '', '2014-11-06 22:38:04', '8148ee68c79744e29aaceb0ed205beff', 1, 1, 1, 'en-GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 6, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32323a7b733a323a226964223b733a313a2232223b733a353a226361746964223b733a313a2238223b733a353a22616c696173223b733a32323a226a6f6f6d6c612d6c6561646572736869702d626c6f67223b733a343a226c696e6b223b733a34393a22687474703a2f2f636f6d6d756e6974792e6a6f6f6d6c612e6f72672f626c6f67732f6c6561646572736869702e68746d6c223b733a373a2273756d6d617279223b733a303a22223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d7d733a383a226f72646572696e67223b733a313a2232223b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22746172676574223b733a303a22223b733a353a227769647468223b733a303a22223b733a363a22686569676874223b733a303a22223b733a31323a22636f756e745f636c69636b73223b733a303a22223b7d7d733a383a2263617465676f7279223b733a393a22426c6f6720526f6c6c223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32343a22323a6a6f6f6d6c612d6c6561646572736869702d626c6f67223b733a373a22636174736c7567223b733a31313a22383a626c6f672d726f6c6c223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a373a227765626c696e6b223b733a343a2270617468223b733a36393a22696e6465782e7068702f656469742d626c6f672d726f6c6c2f7765626c696e6b2f382d626c6f672d726f6c6c2f322d6a6f6f6d6c612d6c6561646572736869702d626c6f67223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a393a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a333a7b733a343a2254797065223b613a313a7b733a383a22576562204c696e6b223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a22576562204c696e6b223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a393a22426c6f6720526f6c6c223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a393a22426c6f6720526f6c6c223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f7765626c696e6b7326766965773d7765626c696e6b2669643d32223b733a353a22726f757465223b733a39393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7765626c696e6b7326766965773d7765626c696e6b2669643d323a6a6f6f6d6c612d6c6561646572736869702d626c6f672663617469643d383a626c6f672d726f6c6c264974656d69643d313130223b733a353a227469746c65223b733a32333a224a6f6f6d6c6121204c65616465727368697020426c6f67223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b733a313a2231223b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a363b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(35, 'index.php?option=com_contact&view=contact&id=1', 'index.php?option=com_contact&view=contact&id=1:courseguide-contacts&catid=4:uncategorised&Itemid=140', 'Curseguide contacts', '', '2014-11-23 17:15:37', 'e79cf2886a80f6058bbf84461d6d9a50', 1, 1, 1, 'en-GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-11-23 16:32:42', '0000-00-00 00:00:00', 0, 0, 3, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a33343a7b733a323a226964223b733a313a2231223b733a353a22616c696173223b733a32303a22636f7572736567756964652d636f6e7461637473223b733a383a22706f736974696f6e223b733a393a22546861742773207573223b733a373a2261646472657373223b733a32303a2233343620426574686e616c20477265656e205264223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d31312d32332031373a31353a3337223b733a31313a226d6f6469666965645f6279223b733a333a22343734223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b733a32353a227b22726f626f7473223a22222c22726967687473223a22227d223b733a393a22736f72746e616d6531223b733a303a22223b733a393a22736f72746e616d6532223b733a303a22223b733a393a22736f72746e616d6533223b733a303a22223b733a343a2263697479223b733a363a224c6f6e646f6e223b733a363a22726567696f6e223b733a303a22223b733a373a22636f756e747279223b733a323a22554b223b733a333a227a6970223b733a363a22453220304148223b733a393a2274656c6570686f6e65223b733a31313a223037383935383530313631223b733a333a22666178223b733a31313a223037383935383530313631223b733a373a2273756d6d617279223b733a303a22223b733a353a22656d61696c223b733a32333a2263616c6c757340636f7572736567756964652e696e666f223b733a363a226d6f62696c65223b733a31313a223037383935383530313631223b733a373a2277656270616765223b733a32333a22687474703a2f2f636f7572736567756964652e696e666f223b733a383a226f72646572696e67223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a34313a7b733a32313a2273686f775f636f6e746163745f63617465676f7279223b733a343a2268696465223b733a31373a2273686f775f636f6e746163745f6c697374223b733a313a2231223b733a31383a2270726573656e746174696f6e5f7374796c65223b733a343a2274616273223b733a393a2273686f775f74616773223b733a313a2231223b733a393a2273686f775f6e616d65223b733a303a22223b733a31333a2273686f775f706f736974696f6e223b733a303a22223b733a31303a2273686f775f656d61696c223b733a303a22223b733a31393a2273686f775f7374726565745f61646472657373223b733a303a22223b733a31313a2273686f775f737562757262223b733a303a22223b733a31303a2273686f775f7374617465223b733a303a22223b733a31333a2273686f775f706f7374636f6465223b733a303a22223b733a31323a2273686f775f636f756e747279223b733a303a22223b733a31343a2273686f775f74656c6570686f6e65223b733a303a22223b733a31313a2273686f775f6d6f62696c65223b733a303a22223b733a383a2273686f775f666178223b733a303a22223b733a31323a2273686f775f77656270616765223b733a303a22223b733a393a2273686f775f6d697363223b733a303a22223b733a31303a2273686f775f696d616765223b733a303a22223b733a31313a22616c6c6f775f7663617264223b733a303a22223b733a31333a2273686f775f61727469636c6573223b733a303a22223b733a31323a2273686f775f70726f66696c65223b733a303a22223b733a31303a2273686f775f6c696e6b73223b733a303a22223b733a31303a226c696e6b615f6e616d65223b733a303a22223b733a353a226c696e6b61223b623a303b733a31303a226c696e6b625f6e616d65223b733a303a22223b733a353a226c696e6b62223b623a303b733a31303a226c696e6b635f6e616d65223b733a303a22223b733a353a226c696e6b63223b623a303b733a31303a226c696e6b645f6e616d65223b733a303a22223b733a353a226c696e6b64223b623a303b733a31303a226c696e6b655f6e616d65223b733a303a22223b733a353a226c696e6b65223b733a303a22223b733a31343a22636f6e746163745f6c61796f7574223b733a303a22223b733a31353a2273686f775f656d61696c5f666f726d223b733a313a2231223b733a31353a2273686f775f656d61696c5f636f7079223b733a303a22223b733a31323a2262616e6e65645f656d61696c223b733a303a22223b733a31343a2262616e6e65645f7375626a656374223b733a303a22223b733a31313a2262616e6e65645f74657874223b733a303a22223b733a31363a2276616c69646174655f73657373696f6e223b733a313a2231223b733a31323a22637573746f6d5f7265706c79223b733a303a22223b733a383a227265646972656374223b733a303a22223b7d7d733a353a226361746964223b733a313a2234223b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32323a22313a636f7572736567756964652d636f6e7461637473223b733a373a22636174736c7567223b733a31353a22343a756e63617465676f7269736564223b733a343a226e616d65223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a22636f6e74616374223b733a343a2270617468223b733a36373a22696e6465782e7068702f636f6e746163742d75732f636f6e746163742f342d756e63617465676f72697365642f312d636f7572736567756964652d636f6e7461637473223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31353a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a383a22706f736974696f6e223b693a343b733a373a2261646472657373223b693a353b733a343a2263697479223b693a363b733a363a22726567696f6e223b693a373b733a373a22636f756e747279223b693a383b733a333a227a6970223b693a393b733a393a2274656c6570686f6e65223b693a31303b733a333a22666178223b693a31313b733a353a22656d61696c223b693a31323b733a363a226d6f62696c65223b693a31333b733a373a2277656270616765223b693a31343b733a343a2275736572223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a22436f6e74616374223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a22436f6e74616374223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22556e63617465676f7269736564223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a373a22436f756e747279223b613a313a7b733a323a22554b223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a323a22554b223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e7461637426766965773d636f6e746163742669643d31223b733a353a22726f757465223b733a3130303a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e7461637426766965773d636f6e746163742669643d313a636f7572736567756964652d636f6e74616374732663617469643d343a756e63617465676f7269736564264974656d69643d313430223b733a353a227469746c65223b733a31393a224375727365677569646520636f6e7461637473223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b733a313a2231223b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031342d31312d32332031363a33323a3432223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a333b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(91, 'index.php?option=com_content&view=article&id=4', 'index.php?option=com_content&view=article&id=4:about-courseguide&catid=2:uncategorised&Itemid=101', 'About courseguide.info', 'TO BE DONE {jcomments off}', '2014-12-10 16:56:32', '351ab0475e801b5f72092bc3b5694a62', 1, 1, 1, 'en-GB', '2012-01-03 00:00:00', '0000-00-00 00:00:00', '2011-01-03 00:00:01', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a313a2234223b733a353a22616c696173223b733a31373a2261626f75742d636f757273656775696465223b733a373a2273756d6d617279223b733a37343a223c703e544f20424520444f4e453c2f703e0d0a3c703e7b6a636f6d6d656e7473206f66667d3c2f703e0d0a3c703ec2a03c2f703e0d0a3c703ec2a03c2f703e0d0a3c703ec2a03c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a333a22343734223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d31322d31302032333a35363a3332223b733a31313a226d6f6469666965645f6279223b733a333a22343734223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37343a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a353a227269676874223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a323a223131223b733a383a226f72646572696e67223b733a313a2231223b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31393a22343a61626f75742d636f757273656775696465223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a36333a22696e6465782e7068702f61626f75742d636f7572736567756964652f322d756e63617465676f72697365642f342d61626f75742d636f757273656775696465223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22556e63617465676f7269736564223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d34223b733a353a22726f757465223b733a39373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d343a61626f75742d636f7572736567756964652663617469643d323a756e63617465676f7269736564264974656d69643d313031223b733a353a227469746c65223b733a32323a2241626f757420636f7572736567756964652e696e666f223b733a31313a226465736372697074696f6e223b733a32363a22544f20424520444f4e45207b6a636f6d6d656e7473206f66667d223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031322d30312d30332030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30332030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(93, 'index.php?option=com_content&view=article&id=8', 'index.php?option=com_content&view=article&id=8:adca&catid=9:courses&Itemid=147', 'recent commments article', 'cfvzfzcvczvzcv', '2014-12-10 18:54:33', '5787d8583b803943e10e1a7741d2a043', 1, 0, 1, 'en-GB', '2014-11-23 17:56:17', '0000-00-00 00:00:00', '2014-11-23 17:56:17', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a313a2238223b733a353a22616c696173223b733a343a2261646361223b733a373a2273756d6d617279223b733a32333a223c703e6366767a667a6376637a767a63763c2f703e0d0a223b733a343a22626f6479223b733a31313a220d0a3c703ec2a03c2f703e223b733a353a226361746964223b733a313a2239223b733a31303a22637265617465645f6279223b733a333a22343734223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d31312d32332031383a30313a3036223b733a31313a226d6f6469666965645f6279223b733a333a22343734223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37343a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a353a227269676874223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a313a2237223b733a383a226f72646572696e67223b733a313a2233223b733a383a2263617465676f7279223b733a373a22436f7572736573223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a363a22383a61646361223b733a373a22636174736c7567223b733a393a22393a636f7572736573223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a34333a22696e6465782e7068702f63617465676f72792d636f75727365732f392d636f75727365732f382d61646361223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a373a22436f7572736573223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a22436f7572736573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d38223b733a353a22726f757465223b733a37383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d383a616463612663617469643d393a636f7572736573264974656d69643d313437223b733a353a227469746c65223b733a32343a22726563656e7420636f6d6d6d656e74732061727469636c65223b733a31313a226465736372697074696f6e223b733a31343a226366767a667a6376637a767a6376223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d31312d32332031373a35363a3137223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031342d31312d32332031373a35363a3137223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(94, 'index.php?option=com_content&view=article&id=7', 'index.php?option=com_content&view=article&id=7:my-recent-comment-1&catid=12:recent-comments&Itemid=147', 'My recent comment 1', 'fvzdfsvzdv', '2014-12-10 18:54:33', 'c8d3997dd7a27edd5c08d073f0013ddd', 1, 0, 1, 'en-GB', '2014-11-10 12:53:04', '0000-00-00 00:00:00', '2014-11-10 12:53:04', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a313a2237223b733a353a22616c696173223b733a31393a226d792d726563656e742d636f6d6d656e742d31223b733a373a2273756d6d617279223b733a31373a223c703e66767a646673767a64763c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223132223b733a31303a22637265617465645f6279223b733a333a22343734223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37343a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a353a227269676874223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a313a2231223b733a383a226f72646572696e67223b733a313a2231223b733a383a2263617465676f7279223b733a31353a22526563656e7420636f6d6d656e7473223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32313a22373a6d792d726563656e742d636f6d6d656e742d31223b733a373a22636174736c7567223b733a31383a2231323a726563656e742d636f6d6d656e7473223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a37353a22696e6465782e7068702f63617465676f72792d636f75727365732f31322d636f75727365732f726563656e742d636f6d6d656e74732f372d6d792d726563656e742d636f6d6d656e742d31223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31353a22526563656e7420636f6d6d656e7473223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31353a22526563656e7420636f6d6d656e7473223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d37223b733a353a22726f757465223b733a3130323a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d373a6d792d726563656e742d636f6d6d656e742d312663617469643d31323a726563656e742d636f6d6d656e7473264974656d69643d313437223b733a353a227469746c65223b733a31393a224d7920726563656e7420636f6d6d656e742031223b733a31313a226465736372697074696f6e223b733a31303a2266767a646673767a6476223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d31312d31302031323a35333a3034223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031342d31312d31302031323a35333a3034223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d);
INSERT INTO `feed_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(95, 'index.php?option=com_content&view=article&id=6', 'index.php?option=com_content&view=article&id=6:your-template&catid=9:courses&Itemid=147', 'Your Template', 'Templates control the look and feel of your website. This blog is installed with the Protostar template. You can edit the options by clicking on the Working on Your Site, Template Settings link in the top menu (visible when you login). For example you can', '2014-12-10 18:54:33', '915cabbd4e07d53a513805e04f5957ae', 1, 0, 1, 'en-GB', '2011-01-02 00:00:01', '0000-00-00 00:00:00', '2011-01-02 00:00:01', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a313a2236223b733a353a22616c696173223b733a31333a22796f75722d74656d706c617465223b733a373a2273756d6d617279223b733a3531373a223c703e54656d706c6174657320636f6e74726f6c20746865206c6f6f6b20616e64206665656c206f6620796f757220776562736974652e3c2f703e0d0a3c703e5468697320626c6f6720697320696e7374616c6c65642077697468207468652050726f746f737461722074656d706c6174652e3c2f703e0d0a3c703e596f752063616e206564697420746865206f7074696f6e7320627920636c69636b696e67206f6e2074686520576f726b696e67206f6e20596f757220536974652c2054656d706c6174652053657474696e6773206c696e6b20696e2074686520746f70206d656e75202876697369626c65207768656e20796f75206c6f67696e292e3c2f703e0d0a3c703e466f72206578616d706c6520796f752063616e206368616e6765207468652073697465206261636b67726f756e6420636f6c6f722c20686967686c696768747320636f6c6f722c2073697465207469746c652c2073697465206465736372697074696f6e20616e64207469746c6520666f6e7420757365642ec2a03c2f703e0d0a3c703e4d6f7265206f7074696f6e732061726520617661696c61626c6520696e2074686520736974652061646d696e6973747261746f722e20596f75206d617920616c736f20696e7374616c6c2061206e65772074656d706c617465207573696e672074686520657874656e73696f6e206d616e616765722e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2239223b733a31303a22637265617465645f6279223b733a333a22343734223b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323031332d31302d31332031373a30343a3331223b733a31313a226d6f6469666965645f6279223b733a333a22373133223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37343a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a353a227269676874223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a323a223137223b733a383a226f72646572696e67223b733a313a2232223b733a383a2263617465676f7279223b733a373a22436f7572736573223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31353a22363a796f75722d74656d706c617465223b733a373a22636174736c7567223b733a393a22393a636f7572736573223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a35323a22696e6465782e7068702f63617465676f72792d636f75727365732f392d636f75727365732f362d796f75722d74656d706c617465223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a363a224a6f6f6d6c61223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a373a22436f7572736573223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a22436f7572736573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d36223b733a353a22726f757465223b733a38373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d363a796f75722d74656d706c6174652663617469643d393a636f7572736573264974656d69643d313437223b733a353a227469746c65223b733a31333a22596f75722054656d706c617465223b733a31313a226465736372697074696f6e223b733a3437363a2254656d706c6174657320636f6e74726f6c20746865206c6f6f6b20616e64206665656c206f6620796f757220776562736974652e205468697320626c6f6720697320696e7374616c6c65642077697468207468652050726f746f737461722074656d706c6174652e20596f752063616e206564697420746865206f7074696f6e7320627920636c69636b696e67206f6e2074686520576f726b696e67206f6e20596f757220536974652c2054656d706c6174652053657474696e6773206c696e6b20696e2074686520746f70206d656e75202876697369626c65207768656e20796f75206c6f67696e292e20466f72206578616d706c6520796f752063616e206368616e6765207468652073697465206261636b67726f756e6420636f6c6f722c20686967686c696768747320636f6c6f722c2073697465207469746c652c2073697465206465736372697074696f6e20616e64207469746c6520666f6e7420757365642e204d6f7265206f7074696f6e732061726520617661696c61626c6520696e2074686520736974652061646d696e6973747261746f722e20596f75206d617920616c736f20696e7374616c6c2061206e65772074656d706c617465207573696e672074686520657874656e73696f6e206d616e616765722e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031312d30312d30322030303a30303a3031223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30322030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(96, 'index.php?option=com_content&view=article&id=5', 'index.php?option=com_content&view=article&id=5:your-modules&catid=9:courses&Itemid=147', 'Your Modules', 'Your site has some commonly used modules already preconfigured. These include: Image Module which holds the image beneath the menu. This is a Custom HTML module that you can edit to change the image. Blog Roll. which lets you link to other blogs. We''ve pu', '2014-12-10 18:54:33', '1071167ab178d606ec0392f9d0a46312', 1, 0, 1, 'en-GB', '2010-12-31 00:00:01', '0000-00-00 00:00:00', '2010-12-31 00:00:01', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a313a2235223b733a353a22616c696173223b733a31323a22796f75722d6d6f64756c6573223b733a373a2273756d6d617279223b733a313334383a223c703e596f757220736974652068617320736f6d6520636f6d6d6f6e6c792075736564206d6f64756c657320616c726561647920707265636f6e666967757265642e20546865736520696e636c7564653a3c2f703e0d0a3c756c3e0d0a3c6c693e496d616765204d6f64756c6520776869636820686f6c64732074686520696d6167652062656e6561746820746865206d656e752e2054686973206973206120437573746f6d2048544d4c206d6f64756c65207468617420796f752063616e206564697420746f206368616e67652074686520696d6167652e3c2f6c693e0d0a3c6c693e426c6f6720526f6c6c2e207768696368206c65747320796f75206c696e6b20746f206f7468657220626c6f67732e2057652776652070757420696e2074776f206578616d706c65732c2062757420796f75276c6c2077616e7420746f206368616e6765207468656d2e205768656e20796f7520617265206c6f6767656420696e2c20636c69636b206f6e20626c6f6720726f6c6c206f6e2074686520746f70206d656e7520746f2075706461746520746869732e3c2f6c693e0d0a3c6c693e4d6f7374205265616420506f737473207768696368206c697374732061727469636c6573206261736564206f6e20746865206e756d626572206f662074696d657320746865792068617665206265656e20726561642e3c2f6c693e0d0a3c6c693e4f6c6465722041727469636c6573207768696368206c69737473206f75742061727469636c6573206279206d6f6e74682e3c2f6c693e0d0a3c6c693e53796e64696361746520776869636820616c6c6f777320796f7572207265616465727320746f207265616420796f757220706f73747320696e2061206e657773207265616465722e3c2f6c693e0d0a3c6c693e506f70756c617220546167732c2077686963682077696c6c2061707065617220696620796f75207573652074616767696e67206f6e20796f75722061727469636c65732e204a75737420656e74657220612074616720696e207468652054616773206669656c64207768656e2065646974696e672e3c2f6c693e0d0a3c2f756c3e0d0a3c703e45616368206f66207468657365206d6f64756c657320686173206d616e79206f7074696f6e7320776869636820796f752063616e206578706572696d656e74207769746820696e20746865204d6f64756c65204d616e6167657220696e20796f757220736974652041646d696e6973747261746f722e204d6f76696e6720796f7572206d6f757365206f7665722061206d6f64756c6520616e6420636c69636b696e67206f6e2074686520656469742069636f6e2077696c6c2074616b6520796f7520746f20616e20656469742073637265656e20666f722074686174206d6f64756c652e20416c77617973206265207375726520746f207361766520616e6420636c6f736520616e79206d6f64756c6520796f7520656469742ec2a03c2f703e0d0a3c703e4a6f6f6d6c612120616c736f20696e636c75646573206d616e79206f74686572206d6f64756c657320796f752063616e20696e636f72706f7261746520696e20796f757220736974652e20417320796f7520646576656c6f7020796f7572207369746520796f75206d61792077616e7420746f20616464206d6f7265206d6f64756c65207468617420796f752063616e2066696e6420617420746865203c6120687265663d22687474703a2f2f657874656e73696f6e732e6a6f6f6d6c612e6f7267223e4a6f6f6d6c6120457874656e73696f6e73204469726563746f72792e3c2f613e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c703e7b766f7465206f6e7d3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2239223b733a31303a22637265617465645f6279223b733a333a22343734223b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323031342d31312d32332032323a33323a3034223b733a31313a226d6f6469666965645f6279223b733a333a22343734223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37343a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a353a227269676874223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a323a223133223b733a383a226f72646572696e67223b733a313a2231223b733a383a2263617465676f7279223b733a373a22436f7572736573223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31343a22353a796f75722d6d6f64756c6573223b733a373a22636174736c7567223b733a393a22393a636f7572736573223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a35313a22696e6465782e7068702f63617465676f72792d636f75727365732f392d636f75727365732f352d796f75722d6d6f64756c6573223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a363a224a6f6f6d6c61223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a373a22436f7572736573223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a22436f7572736573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d35223b733a353a22726f757465223b733a38363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d353a796f75722d6d6f64756c65732663617469643d393a636f7572736573264974656d69643d313437223b733a353a227469746c65223b733a31323a22596f7572204d6f64756c6573223b733a31313a226465736372697074696f6e223b733a313138383a22596f757220736974652068617320736f6d6520636f6d6d6f6e6c792075736564206d6f64756c657320616c726561647920707265636f6e666967757265642e20546865736520696e636c7564653a20496d616765204d6f64756c6520776869636820686f6c64732074686520696d6167652062656e6561746820746865206d656e752e2054686973206973206120437573746f6d2048544d4c206d6f64756c65207468617420796f752063616e206564697420746f206368616e67652074686520696d6167652e20426c6f6720526f6c6c2e207768696368206c65747320796f75206c696e6b20746f206f7468657220626c6f67732e2057652776652070757420696e2074776f206578616d706c65732c2062757420796f75276c6c2077616e7420746f206368616e6765207468656d2e205768656e20796f7520617265206c6f6767656420696e2c20636c69636b206f6e20626c6f6720726f6c6c206f6e2074686520746f70206d656e7520746f2075706461746520746869732e204d6f7374205265616420506f737473207768696368206c697374732061727469636c6573206261736564206f6e20746865206e756d626572206f662074696d657320746865792068617665206265656e20726561642e204f6c6465722041727469636c6573207768696368206c69737473206f75742061727469636c6573206279206d6f6e74682e2053796e64696361746520776869636820616c6c6f777320796f7572207265616465727320746f207265616420796f757220706f73747320696e2061206e657773207265616465722e20506f70756c617220546167732c2077686963682077696c6c2061707065617220696620796f75207573652074616767696e67206f6e20796f75722061727469636c65732e204a75737420656e74657220612074616720696e207468652054616773206669656c64207768656e2065646974696e672e2045616368206f66207468657365206d6f64756c657320686173206d616e79206f7074696f6e7320776869636820796f752063616e206578706572696d656e74207769746820696e20746865204d6f64756c65204d616e6167657220696e20796f757220736974652041646d696e6973747261746f722e204d6f76696e6720796f7572206d6f757365206f7665722061206d6f64756c6520616e6420636c69636b696e67206f6e2074686520656469742069636f6e2077696c6c2074616b6520796f7520746f20616e20656469742073637265656e20666f722074686174206d6f64756c652e20416c77617973206265207375726520746f207361766520616e6420636c6f736520616e79206d6f64756c6520796f7520656469742e204a6f6f6d6c612120616c736f20696e636c75646573206d616e79206f74686572206d6f64756c657320796f752063616e20696e636f72706f7261746520696e20796f757220736974652e20417320796f7520646576656c6f7020796f7572207369746520796f75206d61792077616e7420746f20616464206d6f7265206d6f64756c65207468617420796f752063616e2066696e6420617420746865204a6f6f6d6c6120457874656e73696f6e73204469726563746f72792e207b766f7465206f6e7d223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031302d31322d33312030303a30303a3031223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031302d31322d33312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(97, 'index.php?option=com_content&view=article&id=2', 'index.php?option=com_content&view=article&id=2:working-on-your-site&catid=2:uncategorised&Itemid=109', 'Working on Your Site', 'Here are some basic tips for working on your site. Joomla! has a "front end" that you are looking at now and an "administrator" or "back end" which is where you do the more advanced work of creating your site such as setting up the menus and deciding what', '2014-12-10 18:54:34', '2c2fd2472fc1a3ad4f2c4ac9eda14c39', 1, 0, 3, 'en-GB', '2012-01-04 16:48:38', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a313a2232223b733a353a22616c696173223b733a32303a22776f726b696e672d6f6e2d796f75722d73697465223b733a373a2273756d6d617279223b733a313833323a223c703e486572652061726520736f6d65206261736963207469707320666f7220776f726b696e67206f6e20796f757220736974652e3c2f703e0d0a3c756c3e0d0a3c6c693e4a6f6f6d6c6121206861732061202266726f6e7420656e6422207468617420796f7520617265206c6f6f6b696e67206174206e6f7720616e6420616e202261646d696e6973747261746f7222206f7220226261636b20656e642220776869636820697320776865726520796f7520646f20746865206d6f726520616476616e63656420776f726b206f66206372656174696e6720796f7572207369746520737563682061732073657474696e6720757020746865206d656e757320616e64206465636964696e672077686174206d6f64756c657320746f2073686f772e20596f75206e65656420746f206c6f67696e20746f207468652061646d696e6973747261746f722073657061726174656c79207573696e67207468652073616d652075736572206e616d6520616e642070617373776f7264207468617420796f75207573656420746f206c6f67696e20746f20746869732070617274206f662074686520736974652e3c2f6c693e0d0a3c6c693e4f6e65206f6620746865206669727374207468696e677320796f752077696c6c2070726f6261626c792077616e7420746f20646f206973206368616e6765207468652073697465207469746c6520616e6420746167206c696e6520616e6420746f206164642061206c6f676f2e20546f20646f207468697320636c69636b206f6e207468652054656d706c6174652053657474696e6773206c696e6b20696e2074686520746f70206d656e752e20546f206368616e676520796f75722073697465206465736372697074696f6e2c2062726f77736572207469746c652c2064656661756c7420656d61696c20616e64206f74686572206974656d732c20636c69636b20536974652053657474696e67732e204d6f726520616476616e63656420636f6e66696775726174696f6e206f7074696f6e732061726520617661696c61626c6520696e207468652061646d696e6973747261746f722e3c2f6c693e0d0a3c6c693e546f20746f74616c6c79206368616e676520746865206c6f6f6b206f6620796f7572207369746520796f752077696c6c2070726f6261626c792077616e7420746f20696e7374616c6c2061206e65772074656d706c6174652e20496e2074686520457874656e73696f6e73206d656e7520636c69636b206f6e20457874656e73696f6e73204d616e6167657220616e64207468656e20676f20746f2074686520496e7374616c6c207461622e20546865726520617265206d616e79206672656520616e6420636f6d6d65726369616c2074656d706c6174657320617661696c61626c6520666f72204a6f6f6d6c612e3c2f6c693e0d0a3c6c693e417320796f75206861766520616c7265616479207365656e2c20796f752063616e20636f6e74726f6c2077686f2063616e2073656520646966666572656e74207061727473206f6620796f7520736974652e205768656e20796f7520776f726b2077697468206d6f64756c65732c2061727469636c6573206f72207765626c696e6b732073657474696e672074686520416363657373206c6576656c20746f20526567697374657265642077696c6c206d65616e2074686174206f6e6c79206c6f6767656420696e2075736572732063616e20736565207468656d3c2f6c693e0d0a3c6c693e5768656e20796f75206372656174652061206e65772061727469636c65206f72206f74686572206b696e64206f6620636f6e74656e7420796f7520616c736f2063616e2073617665206974206173205075626c6973686564206f7220556e7075626c69736865642e20496620697420697320556e7075626c697368656420736974652076697369746f72732077696c6c206e6f742062652061626c6520746f207365652069742062757420796f752077696c6c2e3c2f6c693e0d0a3c6c693e596f752063616e206c6561726e206d756368206d6f72652061626f757420776f726b696e672077697468204a6f6f6d6c612066726f6d20746865203c6120687265663d22687474703a2f2f646f63732e6a6f6f6d6c612e6f7267223e4a6f6f6d6c6120646f63756d656e746174696f6e20736974653c2f613e20616e64206765742068656c702066726f6d206f7468657220757365727320617420746865203c6120687265663d22687474703a2f2f666f72756d2e6a6f6f6d6c612e6f7267223e4a6f6f6d6c6120666f72756d733c2f613e2e20496e207468652061646d696e6973747261746f72207468657265206172652068656c7020627574746f6e73206f6e206576657279207061676520746861742070726f766964652064657461696c656420696e666f726d6174696f6e2061626f7574207468652066756e6374696f6e73206f6e207468617420706167652e3c2f6c693e0d0a3c2f756c3e0d0a3c703e7b766f7465206f6e7d3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a333a22343734223b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323031342d31312d32332032323a33313a3337223b733a31313a226d6f6469666965645f6279223b733a333a22343734223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37343a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a353a227269676874223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a313a2233223b733a383a226f72646572696e67223b733a313a2231223b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32323a22323a776f726b696e672d6f6e2d796f75722d73697465223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a36393a22696e6465782e7068702f776f726b696e672d6f6e2d796f75722d736974652f322d756e63617465676f72697365642f322d776f726b696e672d6f6e2d796f75722d73697465223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a363a224a6f6f6d6c61223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22556e63617465676f7269736564223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32223b733a353a22726f757465223b733a3130303a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d323a776f726b696e672d6f6e2d796f75722d736974652663617469643d323a756e63617465676f7269736564264974656d69643d313039223b733a353a227469746c65223b733a32303a22576f726b696e67206f6e20596f75722053697465223b733a31313a226465736372697074696f6e223b733a313637303a22486572652061726520736f6d65206261736963207469707320666f7220776f726b696e67206f6e20796f757220736974652e204a6f6f6d6c6121206861732061202266726f6e7420656e6422207468617420796f7520617265206c6f6f6b696e67206174206e6f7720616e6420616e202261646d696e6973747261746f7222206f7220226261636b20656e642220776869636820697320776865726520796f7520646f20746865206d6f726520616476616e63656420776f726b206f66206372656174696e6720796f7572207369746520737563682061732073657474696e6720757020746865206d656e757320616e64206465636964696e672077686174206d6f64756c657320746f2073686f772e20596f75206e65656420746f206c6f67696e20746f207468652061646d696e6973747261746f722073657061726174656c79207573696e67207468652073616d652075736572206e616d6520616e642070617373776f7264207468617420796f75207573656420746f206c6f67696e20746f20746869732070617274206f662074686520736974652e204f6e65206f6620746865206669727374207468696e677320796f752077696c6c2070726f6261626c792077616e7420746f20646f206973206368616e6765207468652073697465207469746c6520616e6420746167206c696e6520616e6420746f206164642061206c6f676f2e20546f20646f207468697320636c69636b206f6e207468652054656d706c6174652053657474696e6773206c696e6b20696e2074686520746f70206d656e752e20546f206368616e676520796f75722073697465206465736372697074696f6e2c2062726f77736572207469746c652c2064656661756c7420656d61696c20616e64206f74686572206974656d732c20636c69636b20536974652053657474696e67732e204d6f726520616476616e63656420636f6e66696775726174696f6e206f7074696f6e732061726520617661696c61626c6520696e207468652061646d696e6973747261746f722e20546f20746f74616c6c79206368616e676520746865206c6f6f6b206f6620796f7572207369746520796f752077696c6c2070726f6261626c792077616e7420746f20696e7374616c6c2061206e65772074656d706c6174652e20496e2074686520457874656e73696f6e73206d656e7520636c69636b206f6e20457874656e73696f6e73204d616e6167657220616e64207468656e20676f20746f2074686520496e7374616c6c207461622e20546865726520617265206d616e79206672656520616e6420636f6d6d65726369616c2074656d706c6174657320617661696c61626c6520666f72204a6f6f6d6c612e20417320796f75206861766520616c7265616479207365656e2c20796f752063616e20636f6e74726f6c2077686f2063616e2073656520646966666572656e74207061727473206f6620796f7520736974652e205768656e20796f7520776f726b2077697468206d6f64756c65732c2061727469636c6573206f72207765626c696e6b732073657474696e672074686520416363657373206c6576656c20746f20526567697374657265642077696c6c206d65616e2074686174206f6e6c79206c6f6767656420696e2075736572732063616e20736565207468656d205768656e20796f75206372656174652061206e65772061727469636c65206f72206f74686572206b696e64206f6620636f6e74656e7420796f7520616c736f2063616e2073617665206974206173205075626c6973686564206f7220556e7075626c69736865642e20496620697420697320556e7075626c697368656420736974652076697369746f72732077696c6c206e6f742062652061626c6520746f207365652069742062757420796f752077696c6c2e20596f752063616e206c6561726e206d756368206d6f72652061626f757420776f726b696e672077697468204a6f6f6d6c612066726f6d20746865204a6f6f6d6c6120646f63756d656e746174696f6e207369746520616e64206765742068656c702066726f6d206f7468657220757365727320617420746865204a6f6f6d6c6120666f72756d73202e20496e207468652061646d696e6973747261746f72207468657265206172652068656c7020627574746f6e73206f6e206576657279207061676520746861742070726f766964652064657461696c656420696e666f726d6174696f6e2061626f7574207468652066756e6374696f6e73206f6e207468617420706167652e207b766f7465206f6e7d223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a303b733a363a22616363657373223b733a313a2233223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031322d30312d30342031363a34383a3338223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d);
INSERT INTO `feed_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(119, 'index.php?option=com_content&view=article&id=3', 'index.php?option=com_content&view=article&id=3:business-info&catid=9:courses&Itemid=147', 'Business information systems', '{modules [115 | xhtml]} xfthxgfsfsffdgf sdfasdlfkjasdf sdfasdfsdfasdfasdfas dfsdf asfdasdfasdfasdfsadfasdfasdfasdf asdfasdfasdfasd fasdfasdfasdfasdfasfa {jcomments on}', '2014-12-13 08:57:38', '5f0d28d813fda5bdb464b1d1d9896317', 1, 1, 1, 'en-GB', '2012-01-05 16:55:36', '0000-00-00 00:00:00', '2011-01-05 00:00:01', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a313a2233223b733a353a22616c696173223b733a31333a22627573696e6573732d696e666f223b733a373a2273756d6d617279223b733a3531333a223c7461626c65207374796c653d226865696768743a20353070783b222077696474683d22393639222063656c6c70616464696e673d223130223e0d0a3c74626f64793e0d0a3c74723e0d0a3c7464207374796c653d22746578742d616c69676e3a206c6566743b20766572746963616c2d616c69676e3a20746f703b2070616464696e673a20323b2220726f777370616e3d2232222077696474683d22343330223e7b6d6f64756c6573205b313135207c207868746d6c5d7d3c2f74643e0d0a3c7464207374796c653d22746578742d616c69676e3a206c6566743b20766572746963616c2d616c69676e3a20746f703b2070616464696e673a20323b2220726f777370616e3d2232222077696474683d22353339223e0d0a3c703e786674687867667366736666646766207364666173646c666b6a617364663c2f703e0d0a3c703e73646661736466736466617364666173646661733c2f703e0d0a3c703e64667364663c2f703e0d0a3c703e61736664617364666173646661736466736164666173646661736466617364663c2f703e0d0a3c703e6173646661736466617364666173643c2f703e0d0a3c703e6661736466617364666173646661736466617366613c2f703e0d0a3c2f74643e0d0a3c2f74723e0d0a3c2f74626f64793e0d0a3c2f7461626c653e0d0a3c703e7b6a636f6d6d656e7473206f6e7d3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2239223b733a31303a22637265617465645f6279223b733a333a22343734223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d31322d31332031353a35373a3338223b733a31313a226d6f6469666965645f6279223b733a333a22343734223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37343a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2230223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2230223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2230223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2230223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a353a227269676874223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a323a223437223b733a383a226f72646572696e67223b733a313a2234223b733a383a2263617465676f7279223b733a373a22436f7572736573223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31353a22333a627573696e6573732d696e666f223b733a373a22636174736c7567223b733a393a22393a636f7572736573223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a35323a22696e6465782e7068702f63617465676f72792d636f75727365732f392d636f75727365732f332d627573696e6573732d696e666f223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a373a22436f7572736573223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a22436f7572736573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d33223b733a353a22726f757465223b733a38373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d333a627573696e6573732d696e666f2663617469643d393a636f7572736573264974656d69643d313437223b733a353a227469746c65223b733a32383a22427573696e65737320696e666f726d6174696f6e2073797374656d73223b733a31313a226465736372697074696f6e223b733a3136373a227b6d6f64756c6573205b313135207c207868746d6c5d7d20786674687867667366736666646766207364666173646c666b6a617364662073646661736466736466617364666173646661732064667364662061736664617364666173646661736466736164666173646661736466617364662061736466617364666173646661736420666173646661736466617364666173646661736661207b6a636f6d6d656e7473206f6e7d223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031322d30312d30352031363a35353a3336223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30352030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(120, 'index.php?option=com_content&view=article&id=9', 'index.php?option=com_content&view=article&id=9:java-programming&catid=9:courses&Itemid=147', 'Java programming', '{modules [127 | xhtml]} xfthxgfsfsffdgf sdfasdlfkjasdf sdfasdfsdfasdfasdfas dfsdf asfdasdfasdfasdfsadfasdfasdfasdf asdfasdfasdfasd fasdfasdfasdfasdfasfa {jcomments on}', '2014-12-13 09:07:55', '3e3ca7740c3f4c1ca275de23c019f57d', 1, 1, 1, 'en-GB', '2014-12-11 00:14:24', '0000-00-00 00:00:00', '2014-12-11 00:14:24', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a313a2239223b733a353a22616c696173223b733a31363a226a6176612d70726f6772616d6d696e67223b733a373a2273756d6d617279223b733a3531363a223c7461626c65207374796c653d226865696768743a20353070783b222077696474683d22393639222063656c6c70616464696e673d223130223e0d0a3c74626f64793e0d0a3c74723e0d0a3c7464207374796c653d22746578742d616c69676e3a206c6566743b20766572746963616c2d616c69676e3a20746f703b2070616464696e673a20323b2220726f777370616e3d2232222077696474683d22353330223e7b6d6f64756c6573205b313237207c207868746d6c5d7d3c2f74643e0d0a3c7464207374796c653d22746578742d616c69676e3a206c6566743b20766572746963616c2d616c69676e3a20746f703b2070616464696e673a20323b2220726f777370616e3d2232222077696474683d22343339223e0d0a3c703e786674687867667366736666646766207364666173646c666b6a617364663c2f703e0d0a3c703e73646661736466736466617364666173646661733c2f703e0d0a3c703e64667364663c2f703e0d0a3c703e61736664617364666173646661736466736164666173646661736466617364663c2f703e0d0a3c703e6173646661736466617364666173643c2f703e0d0a3c703e6661736466617364666173646661736466617366613c2f703e0d0a3c2f74643e0d0a3c2f74723e0d0a3c2f74626f64793e0d0a3c2f7461626c653e0d0a3c703ec2a0207b6a636f6d6d656e7473206f6e7d3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2239223b733a31303a22637265617465645f6279223b733a333a22343734223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d31322d31332031363a30373a3535223b733a31313a226d6f6469666965645f6279223b733a333a22343734223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37343a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2230223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2230223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2230223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2230223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a353a227269676874223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a323a223137223b733a383a226f72646572696e67223b733a313a2230223b733a383a2263617465676f7279223b733a373a22436f7572736573223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31383a22393a6a6176612d70726f6772616d6d696e67223b733a373a22636174736c7567223b733a393a22393a636f7572736573223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a35353a22696e6465782e7068702f63617465676f72792d636f75727365732f392d636f75727365732f392d6a6176612d70726f6772616d6d696e67223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a373a22436f7572736573223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a22436f7572736573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d39223b733a353a22726f757465223b733a39303a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d393a6a6176612d70726f6772616d6d696e672663617469643d393a636f7572736573264974656d69643d313437223b733a353a227469746c65223b733a31363a224a6176612070726f6772616d6d696e67223b733a31313a226465736372697074696f6e223b733a3136373a227b6d6f64756c6573205b313237207c207868746d6c5d7d20786674687867667366736666646766207364666173646c666b6a617364662073646661736466736466617364666173646661732064667364662061736664617364666173646661736466736164666173646661736466617364662061736466617364666173646661736420666173646661736466617364666173646661736661207b6a636f6d6d656e7473206f6e7d223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d31322d31312030303a31343a3234223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031342d31322d31312030303a31343a3234223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(128, 'index.php?option=com_content&view=article&id=1', 'index.php?option=com_content&view=article&id=1:course-search&catid=2:uncategorised&Itemid=108', 'Course search', 'Student-generated course reviews and insights.', '2014-12-13 09:26:57', '625338606abaea722b65a016b29645ed', 1, 1, 1, 'en-GB', '2012-01-04 16:10:42', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a313a2231223b733a353a22616c696173223b733a31333a22636f757273652d736561726368223b733a373a2273756d6d617279223b733a3130303a223c703ec2a03c2f703e0d0a3c6872202f3e0d0a3c703e3c656d3e53747564656e742d67656e65726174656420636f75727365207265766965777320616e6420696e7369676874732e3c2f656d3e3c2f703e0d0a3c6872202f3e0d0a3c703ec2a03c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a333a22343734223b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323031342d31322d31332031363a32363a3537223b733a31313a226d6f6469666965645f6279223b733a333a22343734223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37343a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2230223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2230223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2230223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2230223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2230223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a353a227269676874223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a323a223132223b733a383a226f72646572696e67223b733a313a2232223b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31353a22313a636f757273652d736561726368223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a34313a22696e6465782e7068702f322d756e63617465676f72697365642f312d636f757273652d736561726368223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a363a224a6f6f6d6c61223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22556e63617465676f7269736564223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a353a22656e2d4742223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a22656e2d4742223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31223b733a353a22726f757465223b733a39333a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d313a636f757273652d7365617263682663617469643d323a756e63617465676f7269736564264974656d69643d313038223b733a353a227469746c65223b733a31333a22436f7572736520736561726368223b733a31313a226465736372697074696f6e223b733a34363a2253747564656e742d67656e65726174656420636f75727365207265766965777320616e6420696e7369676874732e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a353a22656e2d4742223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031322d30312d30342031363a31303a3432223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_terms0`
--

INSERT INTO `feed_finder_links_terms0` (`link_id`, `term_id`, `weight`) VALUES
(97, 22, 0.05838),
(9, 22, 0.0834),
(91, 22, 0.15429),
(9, 23, 2.8666),
(9, 24, 2.08008),
(9, 25, 1.4),
(9, 26, 1.4),
(9, 39, 1.49324),
(9, 40, 3.84993),
(9, 41, 4.2),
(95, 53, 0.00581),
(96, 53, 0.02324),
(97, 53, 0.02324),
(97, 56, 0.18669),
(97, 57, 0.86331),
(128, 61, 0.0175),
(95, 61, 0.035),
(96, 61, 0.035),
(97, 61, 0.1575),
(95, 64, 0.0175),
(96, 64, 0.0175),
(97, 64, 0.0875),
(91, 67, 0.56004),
(94, 67, 0.56004),
(95, 67, 0.56004),
(96, 67, 0.56004),
(119, 67, 0.56004),
(120, 67, 0.56004),
(128, 67, 0.56004),
(97, 67, 0.88673),
(93, 67, 1.35343),
(95, 106, 0.39996),
(96, 106, 0.39996),
(97, 106, 0.39996),
(128, 106, 0.39996),
(91, 106, 0.79992),
(93, 106, 0.79992),
(94, 106, 0.79992),
(119, 106, 0.79992),
(120, 106, 0.79992),
(95, 107, 1.59996),
(96, 107, 1.59996),
(97, 107, 1.59996),
(128, 107, 1.59996),
(91, 107, 3.19992),
(93, 107, 3.19992),
(94, 107, 3.19992),
(119, 107, 3.19992),
(120, 107, 3.19992),
(95, 183, 0.81669),
(97, 183, 1.63338),
(97, 184, 1.00331),
(95, 185, 1.02669),
(97, 185, 1.02669),
(96, 194, 0.14),
(97, 194, 0.14),
(95, 197, 0.60669),
(96, 197, 0.60669),
(97, 197, 2.42676),
(96, 211, 0.32669),
(97, 211, 0.32669),
(95, 214, 0.18669),
(96, 214, 0.18669),
(97, 214, 0.18669),
(96, 217, 0.01169),
(97, 217, 0.01169),
(95, 238, 1.00331),
(97, 238, 1.00331),
(95, 239, 1.07331),
(97, 239, 1.07331),
(97, 250, 0.37331),
(96, 250, 1.49324),
(96, 253, 0.01169),
(97, 253, 0.03507),
(96, 258, 0.84),
(97, 258, 0.84),
(96, 260, 0.01169),
(97, 260, 0.02338),
(96, 263, 0.84),
(97, 263, 0.84),
(96, 264, 1.00331),
(97, 264, 1.00331),
(95, 265, 0.42),
(97, 265, 0.84),
(95, 268, 0.98),
(97, 268, 0.98),
(95, 269, 1.07331),
(97, 269, 1.07331),
(96, 602, 0.18669),
(97, 602, 0.18669),
(97, 605, 0.42),
(95, 623, 0.37331),
(97, 623, 0.74662),
(95, 624, 1.00331),
(97, 624, 1.00331),
(95, 625, 1.07331),
(97, 625, 1.07331),
(96, 631, 0.74676),
(95, 631, 0.93345),
(97, 631, 2.85369),
(95, 634, 1.07331),
(97, 634, 1.07331),
(95, 644, 0.93331),
(97, 644, 0.93331),
(96, 650, 0.88669),
(97, 650, 0.88669),
(96, 652, 0.02331),
(97, 652, 0.02331),
(96, 1311, 0.86331),
(96, 1312, 0.95669),
(95, 1618, 1.12),
(96, 1618, 1.12),
(91, 15957, 5.79679),
(91, 15958, 2.94661),
(93, 15979, 0.5334),
(95, 16001, 1.09669),
(95, 16002, 1.19),
(95, 16003, 0.98),
(95, 16004, 1.02669),
(95, 16005, 0.88669),
(95, 16006, 0.95669),
(95, 16007, 0.91),
(95, 16008, 1.02669),
(95, 16070, 1.21331),
(95, 16071, 1.05),
(95, 16072, 1.19),
(95, 16073, 1.16669),
(95, 16074, 1.00331),
(95, 16075, 1.21331),
(95, 16076, 1.05),
(96, 16128, 0.88669),
(96, 16129, 1.00331),
(96, 16130, 0.88669),
(96, 16131, 0.98),
(96, 16132, 0.84),
(96, 16133, 1.00331),
(96, 16134, 0.81669),
(96, 16135, 0.88669),
(96, 16136, 0.88669),
(96, 16137, 1.05),
(96, 16138, 1.16669),
(96, 16139, 1.28331),
(96, 16140, 0.28),
(96, 16141, 0.95669),
(96, 16142, 1.14331),
(96, 16143, 1.19),
(96, 16144, 1.33),
(96, 16145, 1.00331),
(96, 16146, 1.12),
(96, 16147, 0.28),
(96, 16148, 0.91),
(96, 16149, 1.02669),
(96, 16150, 0.86331),
(96, 16151, 1.02669),
(96, 16152, 0.98),
(96, 16153, 1.05),
(96, 16154, 0.91),
(96, 16155, 1.00331),
(96, 16156, 0.0175),
(96, 16157, 0.93331),
(96, 16158, 1.02669),
(96, 16159, 0.28),
(96, 16160, 0.91),
(96, 16161, 1.00331),
(96, 16162, 0.93331),
(96, 16163, 1.00331),
(96, 16164, 1.02669),
(96, 16165, 1.09669),
(96, 16166, 0.95669),
(96, 16167, 1.09669),
(96, 16168, 1.00331),
(96, 16169, 1.14331),
(96, 16170, 1.02669),
(96, 16171, 1.16669),
(96, 16172, 1.02669),
(96, 16417, 0.88669),
(96, 16418, 1.02669),
(96, 16419, 0.28),
(96, 16420, 0.93331),
(96, 16421, 1.05),
(96, 16422, 1.28331),
(96, 16423, 0.88669),
(96, 16424, 1.00331),
(96, 16425, 0.98),
(96, 16426, 1.00331),
(96, 16427, 1.12),
(96, 16428, 0.18669),
(96, 16429, 0.86331),
(96, 16430, 0.98),
(96, 16431, 0.42),
(96, 16432, 1.05),
(96, 16433, 1.21331),
(97, 16639, 0.86331),
(97, 16640, 0.95669),
(97, 16641, 0.84),
(97, 16642, 0.91),
(97, 16643, 0.95669),
(97, 16644, 0.91),
(97, 16645, 1.14331),
(97, 16646, 1.00331),
(97, 16647, 1.12),
(97, 16648, 0.28),
(97, 16649, 0.98),
(97, 16650, 1.05),
(97, 16651, 0.81669),
(97, 16652, 0.93331),
(97, 16653, 1.07331),
(97, 16654, 1.19),
(97, 16655, 1.26),
(97, 16656, 1.4),
(97, 16657, 1.14331),
(97, 16658, 1.23669),
(97, 16659, 1.07331),
(97, 16660, 1.26),
(97, 16661, 0.74662),
(97, 16662, 1.21331),
(97, 16663, 1.4),
(97, 16664, 1.00331),
(97, 16665, 1.07331),
(97, 16666, 0.98),
(97, 16667, 1.07331),
(97, 16668, 0.88669),
(97, 16669, 1.00331),
(97, 16670, 1.07331),
(97, 16671, 1.14331),
(97, 16672, 0.84),
(97, 16673, 1.16669),
(97, 16674, 1.02669),
(97, 16675, 1.26),
(97, 16676, 0.98),
(97, 16677, 1.09669),
(97, 16678, 0.86331),
(97, 16679, 0.98),
(97, 16680, 0.91),
(97, 16681, 1.05),
(97, 16682, 0.98),
(97, 16683, 1.09669),
(97, 16684, 0.86331),
(97, 16685, 0.98),
(97, 16686, 0.88669),
(97, 16687, 0.95669),
(97, 16688, 0.84),
(97, 16689, 0.93331),
(97, 16690, 0.88669),
(97, 16691, 1.07331),
(97, 16692, 0.95669),
(97, 16693, 1.02669),
(97, 16694, 0.88669),
(97, 16695, 1.00331),
(97, 16696, 0.88669),
(97, 16697, 1.02669),
(97, 16698, 0.93331),
(97, 16699, 1.07331),
(97, 16700, 0.95669),
(97, 16701, 1.16669),
(97, 16702, 0.98),
(97, 16703, 1.05),
(97, 16704, 0.93331),
(97, 16705, 1.00331),
(97, 16706, 0.95669),
(97, 16707, 0.84),
(97, 16708, 0.93331),
(97, 16709, 1.00331),
(97, 16710, 1.16669),
(97, 16995, 0.18669),
(97, 16996, 0.91),
(97, 16997, 1.02669),
(97, 16998, 0.86331),
(97, 16999, 0.93331),
(97, 17000, 1.00331),
(97, 17001, 1.14331),
(97, 17002, 0.84),
(97, 17003, 0.93331),
(97, 17004, 0.88669),
(97, 17005, 1.00331),
(97, 17006, 0.18669),
(97, 17007, 0.88669),
(97, 17008, 0.98),
(97, 17009, 0.46669),
(97, 17010, 1.07331),
(97, 17011, 1.16669),
(97, 17012, 0.65338),
(97, 17013, 0.95669),
(97, 17014, 1.12),
(97, 17015, 0.93331),
(97, 17016, 1.02669),
(97, 17017, 1.00331),
(97, 17018, 1.21331),
(97, 17019, 0.18669),
(97, 17020, 0.88669),
(97, 17021, 1.00331),
(97, 17022, 0.88669),
(97, 17023, 0.98),
(97, 17024, 1.26),
(97, 17025, 0.95669),
(97, 17026, 1.05),
(97, 17027, 0.88669),
(97, 17028, 0.95669),
(97, 17029, 1.00331),
(97, 17030, 1.12),
(97, 17031, 0.91),
(97, 17032, 0.98),
(97, 17033, 1.02669),
(97, 17034, 1.00331),
(97, 17035, 1.12),
(97, 17036, 0.91),
(97, 17037, 1.00331),
(97, 17038, 1.00331),
(97, 17039, 0.93331),
(97, 17040, 1.05),
(97, 17041, 0.18669),
(97, 17042, 0.86331),
(97, 17043, 1.05),
(119, 19213, 0.7),
(120, 19213, 0.7),
(119, 19214, 1.4),
(120, 19214, 1.4),
(119, 19215, 1.4),
(120, 19215, 1.4),
(119, 19216, 0.7),
(120, 19216, 0.7),
(119, 19217, 1.4),
(120, 19217, 1.4),
(119, 19218, 1.4),
(120, 19218, 1.4),
(119, 19230, 0.7),
(120, 19230, 0.7),
(119, 19231, 1.30669),
(120, 19231, 1.30669),
(119, 19232, 1.4),
(120, 19232, 1.4),
(119, 19233, 0.65331),
(120, 19233, 0.65331),
(119, 19234, 1.4),
(120, 19234, 1.4),
(119, 19235, 1.4),
(120, 19235, 1.4),
(119, 19251, 0.79339),
(128, 19408, 0.98),
(128, 19417, 1.48),
(128, 19418, 0.7),
(128, 19419, 1.26),
(128, 19420, 1.4);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_terms1`
--

INSERT INTO `feed_finder_links_terms1` (`link_id`, `term_id`, `weight`) VALUES
(5, 11, 0.17),
(95, 11, 0.17);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_terms2`
--

INSERT INTO `feed_finder_links_terms2` (`link_id`, `term_id`, `weight`) VALUES
(96, 94, 0.28),
(97, 94, 0.28),
(96, 95, 0.91),
(97, 95, 0.91),
(97, 397, 0.14),
(96, 397, 0.28),
(96, 400, 0.18669),
(97, 400, 0.18669),
(95, 465, 0.18669),
(96, 465, 0.18669),
(97, 465, 0.18669),
(16, 465, 0.32004),
(17, 465, 0.32004),
(95, 466, 0.86331),
(97, 466, 0.86331),
(95, 467, 0.95669),
(97, 467, 0.95669),
(95, 469, 0.23331),
(97, 469, 0.46662),
(95, 476, 0.18669),
(97, 476, 0.18669),
(96, 1839, 0.18669),
(16, 1839, 0.32004),
(17, 1839, 0.32004),
(16, 2356, 0.32004),
(17, 2356, 0.32004),
(35, 2356, 0.32004),
(16, 2357, 1.76004),
(17, 2357, 1.76004),
(16, 2358, 2.04),
(17, 2358, 2.04),
(17, 2385, 3.26683),
(17, 2386, 5.55),
(17, 2387, 1.8),
(35, 3786, 1.83996),
(35, 3787, 2.04),
(35, 3789, 0.48),
(95, 16043, 0.46669),
(95, 16044, 1.07331),
(95, 16045, 1.19),
(95, 16052, 0.91),
(95, 16053, 1.09669),
(95, 16054, 0.88669),
(95, 16055, 1.00331),
(96, 16251, 0.88669),
(96, 16252, 1.07331),
(96, 16253, 0.88669),
(96, 16254, 1.09669),
(96, 16255, 0.91),
(96, 16256, 1.02669),
(96, 16257, 0.23331),
(96, 16258, 0.91),
(96, 16259, 1.05),
(96, 16260, 0.95669),
(96, 16261, 1.07331),
(96, 16300, 0.18669),
(96, 16301, 0.88669),
(96, 16302, 1.00331),
(96, 16303, 0.86331),
(96, 16304, 1.00331),
(96, 16305, 0.46662),
(96, 16306, 1.02669),
(96, 16307, 1.16669),
(96, 16308, 0.91),
(96, 16309, 1.12),
(96, 16310, 1.05),
(97, 16823, 0.81669),
(97, 16824, 0.95669),
(97, 16825, 0.98),
(97, 16826, 1.09669),
(97, 16827, 0.37338),
(97, 16828, 0.98),
(97, 16829, 1.05),
(97, 16830, 0.91),
(97, 16831, 1.05),
(97, 16832, 0.18669),
(97, 16833, 0.88669),
(97, 16834, 1.00331),
(97, 16873, 0.23331),
(97, 16874, 0.93331),
(97, 16875, 1.05),
(97, 16876, 0.23331),
(97, 16877, 0.88669),
(97, 16878, 1.14331),
(97, 16879, 0.18669),
(97, 16880, 0.88669),
(97, 16881, 0.95669),
(97, 16882, 1.05),
(97, 16883, 1.77338),
(97, 16884, 0.98),
(97, 16885, 1.00331),
(97, 16886, 0.18669),
(97, 16887, 0.86331),
(97, 16888, 0.93331),
(97, 16889, 0.86331),
(97, 16890, 0.98),
(97, 16891, 0.32669),
(97, 16892, 0.93331),
(97, 16893, 1.02669);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_terms3`
--

INSERT INTO `feed_finder_links_terms3` (`link_id`, `term_id`, `weight`) VALUES
(95, 93, 0.96),
(128, 93, 0.96),
(96, 93, 1.52),
(97, 93, 2.36),
(16, 93, 2.44),
(17, 93, 2.44),
(16, 2359, 5.67321),
(16, 2360, 1.59996),
(17, 2360, 1.59996),
(16, 2361, 1.83996),
(17, 2361, 1.83996),
(17, 2383, 5.79679),
(17, 2384, 6.41321),
(91, 15658, 0.42),
(119, 15658, 0.42),
(120, 15658, 0.42),
(119, 15659, 0.98),
(120, 15659, 0.98),
(91, 15964, 1.00331),
(96, 16293, 0.95669),
(96, 16294, 1.16669),
(96, 16295, 1.09669),
(96, 16296, 1.33),
(96, 16297, 0.18669),
(96, 16298, 0.93331),
(96, 16299, 0.98),
(97, 16860, 0.91),
(97, 16861, 1.00331),
(97, 16862, 1.16669),
(97, 16863, 1.28331),
(97, 16864, 1.00331),
(97, 16865, 1.07331),
(97, 16866, 0.95669),
(97, 16867, 1.05),
(97, 16868, 0.93331),
(97, 16869, 0.98),
(120, 19259, 0.98679),
(120, 19260, 5.67321);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_terms4`
--

INSERT INTO `feed_finder_links_terms4` (`link_id`, `term_id`, `weight`) VALUES
(1, 2, 0.63996),
(2, 2, 0.63996),
(3, 2, 0.63996),
(4, 2, 0.63996),
(5, 2, 0.63996),
(6, 2, 0.63996),
(7, 2, 0.63996),
(8, 2, 0.63996),
(9, 2, 1.01327),
(16, 16, 0.32004),
(17, 16, 0.32004),
(96, 16, 0.37338),
(7, 16, 0.98679),
(8, 20, 0.17),
(120, 20, 0.17),
(9, 27, 1.02669),
(9, 28, 1.35331),
(95, 79, 0.37331),
(96, 79, 0.37331),
(95, 80, 0.95669),
(96, 80, 0.95669),
(95, 81, 1.05),
(96, 81, 1.05),
(95, 138, 0.07),
(96, 138, 0.1925),
(97, 138, 0.245),
(96, 141, 0.86331),
(97, 141, 0.86331),
(97, 143, 2.66007),
(95, 285, 0.28),
(96, 285, 0.56),
(97, 285, 0.7),
(95, 295, 0.28),
(96, 295, 0.56),
(97, 295, 0.84),
(95, 296, 0.93331),
(96, 296, 0.93331),
(97, 296, 1.86662),
(95, 298, 1.05),
(97, 298, 1.05),
(96, 301, 0.23331),
(97, 301, 0.69993),
(96, 302, 0.88669),
(97, 302, 1.77338),
(95, 316, 0.32669),
(97, 316, 0.32669),
(97, 319, 0.28),
(97, 320, 0.88669),
(97, 321, 0.98),
(95, 838, 1.72662),
(97, 838, 1.72662),
(96, 838, 3.45324),
(95, 857, 0.16983),
(97, 857, 0.21645),
(96, 857, 0.30969),
(95, 858, 0.91),
(96, 858, 3.64),
(97, 858, 8.45),
(96, 862, 1.00331),
(97, 862, 1.00331),
(93, 1600, 0.68),
(94, 1600, 1.96),
(95, 1775, 0.88669),
(96, 1775, 0.88669),
(95, 2096, 0.98),
(96, 2096, 0.98),
(95, 2106, 0.86331),
(96, 2106, 0.86331),
(17, 2352, 0.72),
(16, 2352, 3.66),
(16, 2353, 1.76004),
(16, 2354, 1.83996),
(17, 2354, 1.83996),
(16, 2355, 2.00004),
(17, 2355, 2.00004),
(35, 3772, 0.48),
(35, 3773, 1.92),
(35, 3774, 2.12004),
(35, 3775, 0.56004),
(35, 3776, 1.97321),
(91, 3777, 2.71321),
(35, 3777, 3.22652),
(35, 3778, 3.3334),
(91, 3779, 2.60661),
(35, 3779, 3.67992),
(35, 3780, 1.13339),
(35, 3781, 2.77661),
(35, 3790, 0.15996),
(93, 9249, 0.56004),
(95, 9249, 0.56004),
(96, 9249, 0.56004),
(119, 9249, 0.56004),
(120, 9249, 0.56004),
(93, 15980, 0.65331),
(93, 15981, 1.02),
(93, 15982, 2.66339),
(93, 15983, 2.60661),
(93, 15984, 3.06),
(94, 15986, 1.72679),
(94, 15987, 4.81),
(94, 15988, 0.63996),
(94, 15993, 5.42679),
(94, 15994, 5.67321),
(94, 15995, 1.8),
(95, 16016, 0.93331),
(95, 16017, 1.02669),
(95, 16018, 0.98),
(95, 16019, 0.46662),
(95, 16020, 1.07331),
(95, 16021, 1.21331),
(95, 16022, 0.93331),
(95, 16023, 1.07331),
(95, 16024, 0.95669),
(95, 16025, 1.07331),
(95, 16113, 1.02669),
(95, 16114, 0.91),
(95, 16115, 1.00331),
(95, 16116, 0.98),
(95, 16117, 1.12),
(95, 16118, 5.30321),
(95, 16119, 0.98),
(95, 16120, 1.09669),
(96, 16192, 0.95669),
(96, 16193, 1.02669),
(96, 16194, 1.14331),
(96, 16195, 0.88669),
(96, 16196, 0.95669),
(96, 16197, 1.05),
(96, 16198, 1.12),
(96, 16199, 1.07331),
(96, 16200, 0.95669),
(96, 16201, 1.07331),
(96, 16202, 1.00331),
(96, 16203, 0.23331),
(96, 16204, 0.91),
(96, 16205, 1.07331),
(96, 16206, 0.37331),
(96, 16207, 1.00331),
(96, 16208, 1.19),
(96, 16209, 0.28),
(96, 16210, 0.95669),
(96, 16211, 1.12),
(96, 16400, 0.56007),
(96, 16401, 0.93331),
(96, 16402, 1.14331),
(96, 16403, 0.93331),
(96, 16404, 1.07331),
(96, 16405, 0.91),
(96, 16406, 1.05),
(96, 16407, 0.28),
(96, 16408, 1.02669),
(96, 16409, 1.14331),
(96, 16410, 0.32669),
(96, 16411, 0.93331),
(96, 16412, 1.05),
(96, 16413, 0.86331),
(96, 16414, 0.95669),
(96, 16415, 0.93331),
(96, 16416, 1.05),
(96, 16528, 1.02669),
(96, 16529, 1.12),
(96, 16530, 0.98),
(96, 16531, 1.14331),
(96, 16532, 0.95669),
(96, 16533, 1.07331),
(96, 16534, 0.88669),
(96, 16535, 1.05),
(96, 16536, 0.88669),
(96, 16537, 0.95669),
(96, 16538, 0.98),
(96, 16539, 0.84),
(96, 16540, 0.91),
(96, 16541, 0.86331),
(96, 16542, 1.05),
(96, 16543, 0.28),
(96, 16544, 0.95669),
(96, 16545, 1.02669),
(96, 16546, 1.00331),
(96, 16547, 1.12),
(96, 16548, 5.18),
(96, 16549, 0.93331),
(96, 16550, 1.05),
(96, 16551, 0.93331),
(96, 16552, 1.00331),
(96, 16553, 0.98),
(96, 16554, 1.05),
(96, 16555, 1.23669),
(96, 16556, 0.98),
(96, 16557, 1.00331),
(97, 16725, 0.95669),
(97, 16726, 1.05),
(97, 16727, 0.91),
(97, 16728, 1.02669),
(97, 16729, 0.88669),
(97, 16730, 0.95669),
(97, 16731, 1.72662),
(97, 16732, 1.09669),
(97, 16733, 0.98),
(97, 16734, 1.05),
(97, 16735, 0.95669),
(97, 16736, 1.07331),
(97, 16737, 1.14331),
(97, 16738, 0.98),
(97, 16739, 0.93331),
(97, 16740, 1.14331),
(97, 16741, 0.46669),
(97, 16742, 1.16669),
(97, 16743, 1.4),
(97, 16744, 0.60669),
(97, 16745, 1.19),
(97, 16746, 1.28331),
(97, 16747, 0.32669),
(97, 16748, 0.95669),
(97, 16749, 1.07331),
(97, 16750, 0.95669),
(97, 16751, 1.05),
(97, 16752, 0.37331),
(97, 16753, 1.00331),
(97, 16754, 1.12),
(97, 16992, 0.46669),
(97, 16993, 1.05),
(97, 16994, 1.16669),
(97, 17191, 0.88669),
(97, 17192, 0.98),
(97, 17193, 1.05),
(97, 17194, 1.05),
(97, 17195, 1.00331),
(97, 17196, 0.93331),
(97, 17197, 0.98),
(97, 17198, 0.84),
(97, 17199, 0.93331),
(97, 17200, 0.88669),
(97, 17201, 1.07331),
(97, 17202, 0.88669),
(97, 17203, 0.95669),
(97, 17204, 0.88669),
(97, 17205, 1.00331),
(97, 17206, 0.88669),
(97, 17207, 0.95669),
(97, 17208, 2.19338),
(97, 17209, 0.98),
(97, 17210, 0.88669),
(97, 17211, 1.00331),
(97, 17212, 1.19),
(97, 17213, 1.07331),
(97, 17214, 1.02669),
(128, 19409, 1.76),
(128, 19410, 1.02669),
(128, 19411, 1.12),
(128, 19412, 5.30321),
(128, 19414, 0.32669),
(128, 19415, 0.95669),
(128, 19416, 1.16669);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_terms6`
--

INSERT INTO `feed_finder_links_terms6` (`link_id`, `term_id`, `weight`) VALUES
(95, 482, 0.32669),
(96, 482, 0.32669),
(97, 482, 0.32669),
(97, 485, 0.18669),
(96, 485, 0.37338),
(95, 491, 0.18669),
(96, 491, 0.37338),
(97, 491, 0.37338),
(96, 494, 0.86331),
(97, 494, 0.86331),
(119, 499, 0.32669),
(120, 499, 0.32669),
(97, 499, 0.65338),
(96, 499, 2.70686),
(95, 504, 0.02331),
(96, 504, 0.02331),
(97, 504, 0.06993),
(95, 1892, 0.14),
(96, 1892, 0.14),
(94, 15990, 0.06179),
(94, 15991, 4.81),
(94, 15992, 5.79679),
(95, 16056, 0.88669),
(95, 16057, 1.07331),
(95, 16058, 0.98),
(95, 16059, 1.09669),
(95, 16060, 0.98),
(95, 16061, 1.07331),
(96, 16311, 0.93331),
(96, 16312, 1.05),
(96, 16313, 0.98),
(96, 16314, 1.12),
(96, 16315, 0.93331),
(96, 16316, 1.12),
(96, 16317, 0.88669),
(96, 16318, 0.95669),
(96, 16319, 0.91),
(96, 16320, 0.98),
(96, 16321, 1.02669),
(96, 16322, 1.96),
(96, 16323, 1.00331),
(96, 16324, 1.07331),
(96, 16325, 0.93331),
(96, 16326, 1.14331),
(96, 16327, 1.02669),
(96, 16328, 1.09669),
(96, 16329, 1.91338),
(96, 16330, 2.1),
(96, 16331, 0.98),
(96, 16332, 1.12),
(96, 16333, 0.93331),
(96, 16334, 1.05),
(96, 16335, 1.05),
(96, 16336, 1.37669),
(96, 16337, 0.95669),
(96, 16338, 1.07331),
(96, 16339, 0.95669),
(96, 16340, 1.05),
(96, 16341, 0.23331),
(96, 16342, 1.05),
(96, 16343, 1.19),
(96, 16344, 0.95669),
(96, 16345, 1.07331),
(96, 16346, 0.02331),
(96, 16347, 0.91),
(96, 16348, 1.05),
(96, 16349, 0.23331),
(96, 16350, 0.93331),
(96, 16351, 0.98),
(96, 16352, 0.28),
(96, 16353, 0.95669),
(96, 16354, 1.09669),
(97, 16894, 0.95669),
(97, 16895, 1.07331),
(97, 16896, 0.91),
(97, 16897, 1.00331),
(97, 16898, 0.18669),
(97, 16899, 0.91),
(97, 16900, 1.02669),
(97, 16901, 0.93331),
(97, 16902, 1.00331),
(97, 16903, 1.02669),
(97, 16904, 0.23331),
(97, 16905, 0.91),
(97, 16906, 1.12),
(97, 16907, 1.07331),
(97, 16908, 1.14331),
(97, 16909, 0.93331),
(97, 16910, 1.05),
(97, 16911, 0.93331),
(97, 16912, 1.12),
(97, 16913, 2.00662),
(97, 16914, 1.33),
(97, 16915, 1.12),
(97, 16916, 0.18669),
(97, 16917, 0.91),
(97, 16918, 1.05),
(119, 19249, 0.95669),
(119, 19250, 1.09669),
(120, 19261, 0.95669),
(120, 19262, 1.09669);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_terms7`
--

INSERT INTO `feed_finder_links_terms7` (`link_id`, `term_id`, `weight`) VALUES
(35, 5, 1.04004),
(91, 5, 1.04004),
(97, 5, 1.04004),
(128, 5, 1.04004),
(1, 5, 3.20679),
(2, 5, 3.20679),
(3, 5, 3.20679),
(4, 5, 3.20679),
(5, 5, 3.20679),
(6, 5, 3.20679),
(9, 35, 0.23331),
(9, 36, 1.14331),
(9, 37, 1.4),
(95, 125, 0.03996),
(96, 125, 0.03996),
(128, 125, 0.03996),
(97, 125, 0.06327),
(91, 125, 0.07992),
(93, 125, 0.07992),
(94, 125, 0.07992),
(119, 125, 0.07992),
(120, 125, 0.07992),
(95, 519, 0.0175),
(97, 519, 0.035),
(97, 520, 0.95669),
(95, 522, 0.98),
(97, 522, 0.98),
(95, 776, 0.18669),
(96, 776, 0.18669),
(97, 776, 0.18669),
(95, 786, 0.23331),
(97, 786, 0.23331),
(95, 787, 0.91),
(97, 787, 0.91),
(35, 3793, 0.31992),
(35, 3794, 0.15996),
(95, 16062, 1.12),
(95, 16101, 0.91),
(95, 16102, 1.09669),
(95, 16103, 1.14331),
(96, 16355, 0.18669),
(96, 16356, 0.95669),
(96, 16357, 1.14331),
(96, 16358, 0.28),
(96, 16359, 0.91),
(96, 16360, 1.05),
(96, 16493, 0.28),
(96, 16494, 0.95669),
(96, 16495, 1.07331),
(96, 16496, 0.0175),
(96, 16497, 0.95669),
(96, 16498, 1.02669),
(96, 16499, 0.98),
(96, 16500, 1.16669),
(97, 16919, 0.18669),
(97, 16920, 0.88669),
(97, 16921, 1.09669),
(97, 16922, 0.18669),
(97, 16923, 0.86331),
(97, 16924, 1.00331),
(97, 16925, 1.02669),
(97, 16926, 1.05),
(97, 16927, 0.0175),
(97, 16928, 0.84),
(97, 16929, 0.95669),
(97, 16930, 0.14),
(97, 16931, 0.86331),
(97, 16932, 0.93331),
(97, 17133, 1.02662),
(97, 17134, 1.02669),
(97, 17135, 1.09669),
(97, 17136, 1.07331),
(97, 17137, 1.28331),
(97, 17138, 0.01169),
(97, 17139, 0.84),
(97, 17140, 0.98),
(97, 17141, 0.86331),
(97, 17142, 1.00331),
(97, 17143, 0.91),
(97, 17144, 1.00331),
(97, 17145, 0.05838),
(97, 17146, 0.88669),
(97, 17147, 0.98),
(97, 17148, 0.91),
(97, 17149, 1.00331),
(97, 17150, 1.02669);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_terms8`
--

INSERT INTO `feed_finder_links_terms8` (`link_id`, `term_id`, `weight`) VALUES
(1, 4, 0.6666),
(3, 4, 0.6666),
(4, 4, 0.6666),
(5, 4, 0.6666),
(7, 4, 0.6666),
(8, 4, 0.6666),
(9, 4, 0.6666),
(16, 4, 0.6666),
(17, 4, 0.6666),
(35, 4, 0.6666),
(91, 4, 0.6666),
(93, 4, 0.6666),
(94, 4, 0.6666),
(95, 4, 0.6666),
(96, 4, 0.6666),
(97, 4, 0.6666),
(119, 4, 0.6666),
(120, 4, 0.6666),
(128, 4, 0.6666),
(6, 12, 0.17),
(94, 12, 0.17),
(9, 32, 0.01169),
(95, 32, 0.01169),
(96, 32, 0.01169),
(97, 32, 0.03507),
(9, 33, 0.95669),
(9, 34, 1.09669),
(9, 38, 0.9334),
(95, 87, 0.02338),
(97, 87, 0.05845),
(96, 87, 0.08183),
(97, 90, 0.03507),
(97, 100, 0.04662),
(95, 331, 0.51331),
(97, 331, 0.51331),
(95, 369, 0.0175),
(96, 369, 0.0175),
(97, 369, 0.035),
(96, 411, 0.01169),
(97, 411, 0.01169),
(95, 414, 1.68),
(96, 414, 1.68),
(97, 414, 3.36),
(95, 417, 0.93331),
(97, 417, 0.93331),
(97, 420, 0.51331),
(119, 420, 1.24661),
(95, 423, 0.32669),
(97, 423, 0.65338),
(95, 424, 0.91),
(97, 424, 0.91),
(95, 425, 1.00331),
(97, 425, 1.00331),
(96, 1265, 0.84),
(96, 1271, 0.79331),
(91, 3788, 0.45339),
(119, 3788, 0.5334),
(35, 3788, 0.64008),
(91, 15961, 0.18669),
(91, 15962, 1.02669),
(91, 15963, 1.12),
(94, 15989, 0.46669),
(95, 16026, 1.05),
(95, 16027, 1.19),
(95, 16035, 0.18669),
(95, 16036, 0.86331),
(95, 16037, 0.98),
(95, 16038, 0.18669),
(95, 16039, 0.91),
(95, 16040, 1.02669),
(95, 16041, 0.95669),
(95, 16042, 1.05),
(95, 16046, 0.95669),
(95, 16047, 0.42),
(95, 16048, 1.02669),
(95, 16049, 1.12),
(95, 16050, 0.98),
(95, 16051, 1.09669),
(95, 16067, 0.42),
(95, 16068, 1.12),
(95, 16069, 1.21331),
(96, 16212, 0.32669),
(96, 16213, 0.98),
(96, 16214, 1.09669),
(96, 16215, 0.42),
(96, 16216, 1.02669),
(96, 16217, 1.09669),
(96, 16243, 0.23331),
(96, 16244, 0.93331),
(96, 16245, 1.12),
(96, 16246, 0.18669),
(96, 16247, 0.86331),
(96, 16248, 0.95669),
(96, 16249, 0.88669),
(96, 16250, 1.05),
(96, 16262, 0.18669),
(96, 16263, 0.91),
(96, 16264, 1.02669),
(96, 16265, 0.93331),
(96, 16266, 0.69993),
(96, 16267, 1.00331),
(96, 16268, 1.09669),
(96, 16269, 0.93331),
(96, 16270, 1.05),
(96, 16271, 0.98),
(96, 16272, 1.12),
(96, 16273, 0.79331),
(96, 16274, 0.91),
(96, 16275, 0.88669),
(96, 16276, 0.95669),
(96, 16277, 1.00331),
(96, 16278, 0.95669),
(96, 16279, 0.84),
(96, 16280, 1.05),
(96, 16281, 1.72662),
(96, 16282, 1.96),
(96, 16283, 0.32669),
(96, 16284, 1.00331),
(96, 16285, 1.16669),
(96, 16286, 0.37331),
(96, 16287, 1.00331),
(96, 16288, 1.14331),
(96, 16289, 0.51331),
(96, 16290, 1.02669),
(96, 16291, 1.14331),
(96, 16292, 0.95669),
(96, 16386, 0.32669),
(96, 16387, 0.98),
(96, 16388, 1.12),
(96, 16389, 0.46662),
(96, 16390, 0.88669),
(96, 16391, 0.93331),
(96, 16392, 0.95669),
(96, 16393, 1.09669),
(96, 16394, 0.60669),
(96, 16395, 1.14331),
(96, 16396, 1.33),
(96, 16397, 0.14),
(96, 16398, 0.84),
(96, 16399, 0.93331),
(97, 16755, 0.37331),
(97, 16756, 1.00331),
(97, 16757, 1.19),
(97, 16758, 0.32669),
(97, 16759, 1.00331),
(97, 16760, 1.09669),
(97, 16761, 1.14331),
(97, 16762, 1.28331),
(97, 16763, 0.37331),
(97, 16764, 1.16669),
(97, 16765, 1.30669),
(97, 16766, 0.42),
(97, 16767, 1.05),
(97, 16768, 1.12),
(97, 16769, 0.27993),
(97, 16770, 0.81669),
(97, 16771, 0.98),
(97, 16772, 0.84),
(97, 16773, 0.95669),
(97, 16774, 0.86331),
(97, 16775, 1.00331),
(97, 16776, 0.60669),
(97, 16777, 1.12),
(97, 16778, 1.21331),
(97, 16794, 0.23331),
(97, 16795, 0.98),
(97, 16796, 1.07331),
(97, 16797, 0.93331),
(97, 16798, 1.00331),
(97, 16799, 0.95669),
(97, 16800, 1.02669),
(97, 16801, 0.28),
(97, 16802, 0.91),
(97, 16803, 1.00331),
(97, 16804, 0.18669),
(97, 16805, 0.88669),
(97, 16806, 1.14331),
(97, 16807, 0.04662),
(97, 16808, 0.93331),
(97, 16809, 1.07331),
(97, 16810, 0.88669),
(97, 16811, 1.05),
(97, 16812, 0.23331),
(97, 16813, 0.91),
(97, 16814, 1.02669),
(97, 16815, 0.42),
(97, 16816, 0.98),
(97, 16817, 1.09669),
(97, 16835, 0.81669),
(97, 16836, 0.88669),
(97, 16837, 2.33338),
(97, 16838, 1.09669),
(97, 16839, 0.88669),
(97, 16840, 0.98),
(97, 16841, 1.09669),
(97, 16842, 1.19),
(97, 16843, 0.95669),
(97, 16844, 1.09669),
(97, 16845, 0.91),
(97, 16846, 1.00331),
(97, 16847, 1.02669),
(97, 16848, 1.14331),
(97, 16849, 0.88669),
(97, 16850, 0.98),
(97, 16851, 0.81669),
(97, 16852, 1.05),
(97, 16853, 0.84),
(97, 16854, 0.93331),
(97, 16855, 0.81669),
(97, 16856, 1.09669),
(97, 16857, 0.23331),
(97, 16858, 0.95669),
(97, 16859, 1.07331),
(97, 16870, 0.18669),
(97, 16871, 0.86331),
(97, 16872, 1.05),
(97, 16970, 0.91),
(97, 16971, 1.09669),
(97, 16972, 0.91),
(97, 16973, 0.98),
(97, 16974, 0.18669),
(97, 16975, 0.86331),
(97, 16976, 0.95669),
(97, 16977, 0.23331),
(97, 16978, 0.88669),
(97, 16979, 0.98),
(97, 16980, 0.37331),
(97, 16981, 1.00331),
(97, 16982, 1.09669),
(97, 16983, 0.74662),
(97, 16984, 2.00662),
(97, 16985, 2.14662),
(97, 16986, 0.32669),
(97, 16987, 1.07331),
(97, 16988, 1.35331),
(97, 16989, 0.42),
(97, 16990, 0.98),
(97, 16991, 1.26),
(119, 19219, 0.23331),
(120, 19219, 0.23331),
(119, 19220, 1.4),
(120, 19220, 1.4),
(119, 19221, 1.4),
(120, 19221, 1.4),
(119, 19222, 0.7),
(120, 19222, 0.7),
(119, 19223, 1.4),
(120, 19223, 1.4),
(119, 19224, 1.4),
(120, 19224, 1.4),
(119, 19248, 2.77661),
(120, 19263, 2.71321),
(128, 19413, 0.37331);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_terms9`
--

INSERT INTO `feed_finder_links_terms9` (`link_id`, `term_id`, `weight`) VALUES
(95, 14, 0.18669),
(16, 14, 0.32004),
(96, 14, 0.37338),
(7, 14, 0.98679),
(8, 14, 0.98679),
(17, 14, 1.30683),
(16, 15, 1.56),
(17, 15, 1.56),
(96, 15, 1.82),
(7, 15, 4.81),
(91, 68, 0.01169),
(96, 68, 0.01169),
(97, 68, 0.01169),
(97, 69, 0.86331),
(97, 70, 0.93331),
(95, 76, 0.01169),
(96, 76, 0.01169),
(96, 279, 0.0175),
(97, 279, 0.0175),
(96, 1768, 0.23331),
(16, 1768, 0.39996),
(17, 1768, 0.39996),
(16, 2350, 1.8),
(16, 2351, 2.00004),
(17, 2381, 1.83996),
(17, 2382, 2.04),
(35, 3769, 0.56004),
(35, 3770, 1.71996),
(35, 3771, 1.83996),
(96, 9860, 0.18669),
(97, 9860, 0.18669),
(96, 9861, 0.86331),
(97, 9861, 0.86331),
(91, 15959, 0.86331),
(91, 15960, 1.09669),
(95, 16009, 0.46669),
(95, 16010, 1.07331),
(95, 16011, 1.33),
(95, 16012, 0.86331),
(95, 16013, 1.09669),
(95, 16014, 0.95669),
(95, 16015, 1.02669),
(95, 16104, 0.32669),
(95, 16105, 0.98),
(95, 16106, 1.07331),
(96, 16173, 0.23331),
(96, 16174, 0.88669),
(96, 16175, 0.98),
(96, 16176, 0.86331),
(96, 16177, 0.93331),
(96, 16178, 0.18669),
(96, 16179, 0.91),
(96, 16180, 1.05),
(96, 16181, 0.32669),
(96, 16182, 0.95669),
(96, 16183, 1.07331),
(96, 16184, 0.98),
(96, 16185, 1.05),
(96, 16186, 0.95669),
(96, 16187, 1.05),
(96, 16188, 0.93331),
(96, 16189, 1.05),
(96, 16190, 0.88669),
(96, 16191, 1.12),
(97, 16711, 0.18669),
(97, 16712, 0.88669),
(97, 16713, 1.02669),
(97, 16714, 0.23331),
(97, 16715, 0.93331),
(97, 16716, 1.02669),
(97, 16717, 0.32669),
(97, 16718, 1.00331),
(97, 16719, 1.19),
(97, 16720, 0.86331),
(97, 16721, 0.98),
(97, 16722, 0.32669),
(97, 16723, 0.93331),
(97, 16724, 1.07331),
(97, 17151, 0.37331),
(97, 17152, 1.00331),
(97, 17153, 1.09669),
(119, 18598, 0.23331),
(120, 18598, 0.23331),
(119, 19236, 0.7),
(120, 19236, 0.7),
(119, 19237, 1.4),
(120, 19237, 1.4),
(119, 19238, 1.4),
(120, 19238, 1.4),
(119, 19239, 1.19),
(120, 19239, 1.19),
(119, 19240, 1.4),
(120, 19240, 1.4),
(119, 19244, 1.97321),
(119, 19245, 2.8666),
(119, 19246, 2.83339),
(119, 19247, 3.28661);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_termsa`
--

INSERT INTO `feed_finder_links_termsa` (`link_id`, `term_id`, `weight`) VALUES
(3, 9, 0.17),
(91, 9, 0.17);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_termsb`
--

INSERT INTO `feed_finder_links_termsb` (`link_id`, `term_id`, `weight`) VALUES
(9, 29, 2.8),
(9, 30, 5.13324),
(9, 31, 4.2),
(97, 394, 0.01169),
(35, 3784, 0.39996),
(35, 3785, 1.52004),
(97, 16818, 0.0175),
(97, 16819, 0.88669),
(97, 16820, 1.00331),
(97, 16821, 0.81669),
(97, 16822, 0.91);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_termsc`
--

INSERT INTO `feed_finder_links_termsc` (`link_id`, `term_id`, `weight`) VALUES
(1, 1, 0.17),
(17, 1, 0.17),
(97, 1, 0.17),
(7, 13, 0.17),
(93, 13, 0.17),
(9, 21, 0.34),
(16, 52, 0.17),
(35, 52, 0.17),
(128, 52, 0.17),
(94, 52, 0.37),
(35, 3764, 3.96),
(35, 3765, 0.24),
(119, 19241, 0.21),
(119, 19242, 0.91),
(119, 19243, 1.28331),
(120, 19256, 0.21),
(120, 19257, 0.91),
(120, 19258, 1.28331);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_termsd`
--

INSERT INTO `feed_finder_links_termsd` (`link_id`, `term_id`, `weight`) VALUES
(119, 97, 0.01169),
(120, 97, 0.01169),
(95, 97, 0.02338),
(96, 97, 0.07014),
(97, 97, 0.13193),
(95, 98, 0.84),
(97, 98, 0.84),
(96, 98, 2.52),
(95, 530, 0.01169),
(96, 530, 0.02338),
(97, 530, 0.07014),
(97, 535, 1.68),
(95, 540, 0.86331),
(97, 540, 0.86331),
(95, 549, 0.86331),
(96, 549, 0.86331),
(97, 549, 5.42652),
(95, 550, 0.98),
(97, 550, 6.16),
(96, 557, 0.32669),
(97, 557, 0.32669),
(95, 557, 0.65338),
(95, 558, 0.95669),
(97, 558, 0.95669),
(95, 559, 1.19),
(97, 559, 1.19),
(96, 569, 0.05838),
(97, 569, 0.08757),
(16, 2362, 0.24),
(17, 2362, 0.24),
(16, 2363, 1.56),
(17, 2363, 1.56),
(16, 2364, 1.95996),
(17, 2388, 2.00004),
(91, 15965, 0.0175),
(95, 16063, 1.05),
(95, 16064, 1.02669),
(95, 16065, 0.93331),
(95, 16066, 1.14331),
(96, 16361, 0.88669),
(96, 16362, 1.07331),
(96, 16363, 0.88669),
(96, 16364, 1.00331),
(96, 16365, 0.23331),
(96, 16366, 1.02669),
(96, 16367, 1.16669),
(96, 16368, 0.86331),
(96, 16369, 0.98),
(96, 16370, 0.95669),
(96, 16371, 1.00331),
(96, 16372, 0.93331),
(96, 16373, 1.07331),
(96, 16374, 1.00331),
(96, 16375, 1.09669),
(96, 16376, 0.95669),
(96, 16377, 1.09669),
(96, 16378, 1.00331),
(96, 16379, 1.09669),
(96, 16380, 0.0175),
(96, 16381, 0.98),
(96, 16382, 1.05),
(96, 16383, 0.02331),
(96, 16384, 0.84),
(96, 16385, 1.00331),
(97, 16933, 0.93331),
(97, 16934, 1.02669),
(97, 16935, 0.95669),
(97, 16936, 1.07331),
(97, 16937, 0.98),
(97, 16938, 0.95669),
(97, 16939, 0.84),
(97, 16940, 0.95669),
(97, 16941, 0.98),
(97, 16942, 0.88669),
(97, 16943, 1.00331),
(97, 16944, 1.00331),
(97, 16945, 1.19),
(97, 16946, 0.86331),
(97, 16947, 0.98),
(97, 16948, 1.05),
(97, 16949, 0.14),
(97, 16950, 0.84),
(97, 16951, 0.93331),
(97, 16952, 0.02331),
(97, 16953, 0.95669),
(97, 16954, 1.02669),
(97, 16955, 0.04676),
(97, 16956, 0.86331),
(97, 16957, 0.95669),
(97, 16958, 0.88669),
(97, 16959, 1.00331),
(97, 16960, 1.02669),
(97, 16961, 1.09669),
(97, 16962, 0.95669),
(97, 16963, 1.14331),
(97, 16964, 0.95669),
(97, 16965, 1.09669),
(97, 16966, 0.93331),
(97, 16967, 1.00331),
(97, 16968, 0.95669),
(97, 16969, 1.02669);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_termse`
--

INSERT INTO `feed_finder_links_termse` (`link_id`, `term_id`, `weight`) VALUES
(91, 3, 0.39996),
(93, 3, 0.39996),
(94, 3, 0.39996),
(95, 3, 0.39996),
(96, 3, 0.39996),
(97, 3, 0.39996),
(119, 3, 0.39996),
(120, 3, 0.39996),
(128, 3, 0.39996),
(1, 3, 0.39996),
(2, 3, 0.39996),
(3, 3, 0.39996),
(4, 3, 0.39996),
(5, 3, 0.39996),
(6, 3, 0.39996),
(7, 3, 0.39996),
(8, 3, 0.39996),
(9, 3, 0.39996),
(16, 3, 0.39996),
(17, 3, 0.39996),
(35, 3, 0.39996),
(2, 8, 0.17),
(119, 8, 0.17),
(4, 10, 0.17),
(96, 10, 0.17),
(9, 42, 0.02331),
(95, 42, 0.02331),
(96, 42, 0.04662),
(97, 42, 0.04662),
(9, 43, 0.86331),
(96, 43, 0.86331),
(9, 44, 1.07331),
(95, 82, 0.18669),
(96, 82, 0.74676),
(95, 111, 0.14),
(96, 111, 0.1575),
(97, 111, 0.315),
(91, 122, 0.01169),
(96, 122, 0.09352),
(97, 122, 0.16366),
(96, 361, 0.46669),
(97, 361, 0.93338),
(96, 661, 0.14),
(97, 661, 0.14),
(97, 664, 0.74662),
(95, 664, 3.09314),
(95, 667, 1.09669),
(97, 667, 1.09669),
(95, 668, 1.21331),
(97, 668, 1.21331),
(95, 669, 0.42),
(97, 669, 0.42),
(96, 672, 0.06993),
(97, 672, 0.11655),
(96, 678, 1.77338),
(97, 678, 1.77338),
(96, 695, 0.93331),
(97, 695, 1.86662),
(95, 698, 0.88669),
(97, 698, 0.88669),
(95, 706, 1.77338),
(97, 706, 1.77338),
(95, 711, 0.86331),
(96, 711, 0.86331),
(97, 711, 0.86331),
(95, 712, 0.98),
(96, 712, 0.98),
(97, 712, 0.98),
(96, 713, 0.02331),
(97, 713, 0.02331),
(96, 714, 0.91),
(97, 714, 0.91),
(96, 715, 1.00331),
(97, 715, 1.00331),
(95, 733, 0.46662),
(97, 733, 0.46662),
(96, 738, 0.84),
(97, 738, 0.84),
(97, 740, 0.91),
(96, 740, 1.82),
(97, 755, 1.68),
(95, 762, 0.14),
(96, 762, 0.14),
(97, 762, 0.14),
(95, 763, 0.88669),
(96, 763, 0.88669),
(97, 763, 0.88669),
(96, 764, 0.95669),
(97, 764, 0.95669),
(96, 1325, 0.91),
(35, 3766, 0.36),
(35, 3767, 1.64004),
(35, 3768, 1.88004),
(35, 3782, 0.15996),
(35, 3783, 1.44),
(35, 3791, 0.48),
(35, 3792, 1.56),
(91, 15966, 0.81669),
(91, 15967, 0.93331),
(95, 16028, 0.88669),
(95, 16029, 1.07331),
(95, 16030, 0.32669),
(95, 16031, 0.95669),
(95, 16032, 1.05),
(95, 16033, 0.42),
(95, 16034, 1.09669),
(95, 16077, 1.02669),
(95, 16078, 1.12),
(95, 16079, 0.98),
(95, 16080, 1.07331),
(95, 16081, 1.09669),
(95, 16082, 1.19),
(95, 16083, 1.00331),
(95, 16084, 1.19),
(95, 16085, 0.98),
(95, 16086, 0.95669),
(95, 16087, 1.02669),
(95, 16088, 1.00331),
(95, 16089, 1.21331),
(95, 16090, 1.21331),
(95, 16091, 1.14331),
(95, 16092, 0.95669),
(95, 16093, 1.02669),
(95, 16094, 0.91),
(95, 16095, 0.98),
(95, 16096, 0.93331),
(95, 16097, 1.05),
(95, 16098, 0.93331),
(95, 16099, 1.21331),
(95, 16100, 1.07331),
(96, 16218, 0.18669),
(96, 16219, 0.86331),
(96, 16220, 1.00331),
(96, 16221, 0.91),
(96, 16222, 1.02669),
(96, 16223, 0.95669),
(96, 16224, 1.07331),
(96, 16225, 0.95669),
(96, 16226, 1.05),
(96, 16227, 0.86331),
(96, 16228, 1.02669),
(96, 16229, 0.32669),
(96, 16230, 0.98),
(96, 16231, 1.05),
(96, 16232, 0.23331),
(96, 16233, 0.86331),
(96, 16234, 0.95669),
(96, 16235, 0.37331),
(96, 16236, 0.98),
(96, 16237, 1.14331),
(96, 16238, 0.46669),
(96, 16239, 1.05),
(96, 16240, 1.12),
(96, 16241, 1.16669),
(96, 16242, 1.28331),
(96, 16434, 0.84),
(96, 16435, 0.93331),
(96, 16436, 0.32669),
(96, 16437, 0.93331),
(96, 16438, 1.05),
(96, 16439, 0.37338),
(96, 16440, 0.93331),
(96, 16441, 1.05),
(96, 16442, 0.93331),
(96, 16443, 1.05),
(96, 16444, 0.18669),
(96, 16445, 0.88669),
(96, 16446, 0.95669),
(96, 16447, 0.95669),
(96, 16448, 1.12),
(96, 16449, 1.96),
(96, 16450, 0.88669),
(96, 16451, 1.00331),
(96, 16452, 1.82),
(96, 16453, 1.09669),
(96, 16454, 1.02669),
(96, 16455, 1.19),
(96, 16456, 0.88669),
(96, 16457, 1.00331),
(96, 16458, 0.93331),
(96, 16459, 1.12),
(96, 16460, 0.93331),
(96, 16461, 1.00331),
(96, 16462, 0.88669),
(96, 16463, 1.02669),
(96, 16464, 0.05838),
(96, 16465, 1.00331),
(96, 16466, 1.14331),
(96, 16467, 1.00331),
(96, 16468, 1.09669),
(96, 16469, 0.02331),
(96, 16470, 0.91),
(96, 16471, 1.02669),
(96, 16472, 0.91),
(96, 16473, 1.02669),
(96, 16474, 0.02919),
(96, 16475, 0.93331),
(96, 16476, 1.05),
(96, 16477, 0.95669),
(96, 16478, 0.81669),
(96, 16479, 0.93331),
(96, 16480, 1.00331),
(96, 16481, 1.02669),
(96, 16482, 0.88669),
(96, 16483, 1.02669),
(96, 16484, 0.86331),
(96, 16485, 0.98),
(96, 16486, 0.86331),
(96, 16487, 0.95669),
(96, 16488, 0.91),
(96, 16489, 1.02669),
(96, 16490, 0.14),
(96, 16491, 0.98),
(96, 16492, 1.07331),
(97, 16779, 0.23331),
(97, 16780, 0.91),
(97, 16781, 1.05),
(97, 16782, 0.28),
(97, 16783, 0.88669),
(97, 16784, 0.98),
(97, 16785, 0.91),
(97, 16786, 0.98),
(97, 16787, 0.23331),
(97, 16788, 0.93331),
(97, 16789, 1.05),
(97, 16790, 1.12),
(97, 16791, 1.21331),
(97, 16792, 1.05),
(97, 16793, 1.19),
(97, 17044, 0.14),
(97, 17045, 0.91),
(97, 17046, 1.00331),
(97, 17047, 0.88669),
(97, 17048, 0.98),
(97, 17049, 0.95669),
(97, 17050, 1.05),
(97, 17051, 1.14331),
(97, 17052, 1.23669),
(97, 17053, 0.91),
(97, 17054, 1.07331),
(97, 17055, 0.91),
(97, 17056, 1.02669),
(97, 17057, 0.98),
(97, 17058, 1.19),
(97, 17059, 0.98),
(97, 17060, 1.00331),
(97, 17061, 0.93331),
(97, 17062, 1.07331),
(97, 17063, 3.29007),
(97, 17064, 1.35331),
(97, 17065, 1.23669),
(97, 17066, 1.16669),
(97, 17067, 1.02669),
(97, 17068, 1.14331),
(97, 17069, 0.91),
(97, 17070, 1.07331),
(97, 17071, 1.00331),
(97, 17072, 1.07331),
(97, 17073, 0.95669),
(97, 17074, 1.05),
(97, 17075, 1.26),
(97, 17076, 1.09669),
(97, 17077, 0.95669),
(97, 17078, 0.91),
(97, 17079, 1.00331),
(97, 17080, 0.88669),
(97, 17081, 1.09669),
(97, 17082, 0.88669),
(97, 17083, 1.00331),
(97, 17084, 0.98),
(97, 17085, 1.02669),
(97, 17086, 0.98),
(97, 17087, 1.19),
(97, 17088, 0.02331),
(97, 17089, 0.86331),
(97, 17090, 0.93331),
(97, 17091, 0.05838),
(97, 17092, 1.82),
(97, 17093, 1.02669),
(97, 17094, 1.02669),
(97, 17095, 0.28),
(97, 17096, 0.93331),
(97, 17097, 1.05),
(97, 17098, 0.93331),
(97, 17099, 1.00331),
(97, 17100, 0.91),
(97, 17101, 0.98),
(97, 17102, 0.18669),
(97, 17103, 0.88669),
(97, 17104, 1.07331),
(97, 17105, 0.91),
(97, 17106, 1.00331),
(97, 17107, 1.00331),
(97, 17108, 1.14331),
(97, 17109, 0.88669),
(97, 17110, 1.02669),
(97, 17111, 1.63338),
(97, 17112, 0.88669),
(97, 17113, 0.93331),
(97, 17114, 0.93331),
(97, 17115, 0.98),
(97, 17116, 1.77338),
(97, 17117, 1.91338),
(97, 17118, 1.00331),
(97, 17119, 1.12),
(97, 17120, 0.84),
(97, 17121, 0.91),
(97, 17122, 0.86331),
(97, 17123, 0.95669),
(97, 17124, 1.16669),
(97, 17125, 1.02669),
(97, 17126, 0.86331),
(97, 17127, 0.98),
(97, 17128, 0.93331),
(97, 17129, 1.09669),
(97, 17130, 0.32669),
(97, 17131, 1.02669),
(97, 17132, 1.12);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `feed_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_links_termsf`
--

INSERT INTO `feed_finder_links_termsf` (`link_id`, `term_id`, `weight`) VALUES
(95, 126, 0.02331),
(96, 126, 0.04662),
(97, 126, 0.04662),
(95, 127, 0.88669),
(96, 127, 0.88669),
(97, 127, 1.77338),
(96, 132, 0.04662),
(97, 132, 0.11655),
(96, 792, 0.04662),
(97, 792, 0.04662),
(96, 793, 1.72662),
(97, 793, 1.72662),
(97, 807, 0.02919),
(96, 807, 0.20433),
(95, 820, 0.02331),
(96, 820, 0.02331),
(97, 820, 0.04662),
(95, 830, 0.32669),
(97, 830, 2.38017),
(95, 831, 0.93331),
(97, 831, 5.86652),
(95, 832, 1.05),
(97, 832, 6.6),
(16, 2365, 0.24),
(17, 2365, 0.24),
(16, 2366, 1.52004),
(17, 2366, 1.52004),
(95, 16107, 0.32669),
(95, 16108, 0.98),
(95, 16109, 1.09669),
(95, 16110, 1.02669),
(95, 16111, 0.88669),
(95, 16112, 1.12),
(96, 16501, 0.95669),
(96, 16502, 1.02669),
(96, 16503, 0.23331),
(96, 16504, 0.91),
(96, 16505, 0.98),
(96, 16506, 0.98),
(96, 16507, 1.09669),
(96, 16508, 0.98),
(96, 16509, 0.98),
(96, 16510, 1.09669),
(96, 16511, 0.95669),
(96, 16512, 1.05),
(96, 16513, 0.93331),
(96, 16514, 1.02669),
(96, 16515, 1.91338),
(96, 16516, 1.16669),
(96, 16517, 1.05),
(96, 16518, 0.93331),
(96, 16519, 1.09669),
(96, 16520, 0.91),
(96, 16521, 1.00331),
(96, 16522, 0.95669),
(96, 16523, 1.02669),
(96, 16524, 0.91),
(96, 16525, 1.00331),
(96, 16526, 0.86331),
(96, 16527, 0.95669),
(97, 17154, 0.93331),
(97, 17155, 1.05),
(97, 17156, 0.37331),
(97, 17157, 1.07331),
(97, 17158, 1.16669),
(97, 17159, 0.02331),
(97, 17160, 0.98),
(97, 17161, 1.05),
(97, 17162, 1.05),
(97, 17163, 1.00331),
(97, 17164, 0.02919),
(97, 17165, 0.91),
(97, 17166, 0.98),
(97, 17167, 0.88669),
(97, 17168, 1.02669),
(97, 17169, 0.0175),
(97, 17170, 0.86331),
(97, 17171, 0.95669),
(97, 17172, 0.91),
(97, 17173, 1.02669),
(97, 17174, 0.88669),
(97, 17175, 0.95669),
(97, 17176, 2.00662),
(97, 17177, 2.24),
(97, 17178, 0.88669),
(97, 17179, 0.98),
(97, 17180, 0.95669),
(97, 17181, 1.07331),
(97, 17182, 0.98),
(97, 17183, 1.19),
(97, 17184, 0.37338),
(97, 17185, 0.86331),
(97, 17186, 1.07331),
(97, 17187, 0.91),
(97, 17188, 1.09669),
(97, 17189, 0.98),
(97, 17190, 1.14331);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `feed_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `feed_finder_taxonomy`
--

INSERT INTO `feed_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0),
(2, 1, 'Type', 1, 1, 0),
(3, 2, 'Category', 1, 1, 0),
(4, 1, 'Language', 1, 1, 0),
(5, 4, 'en-GB', 1, 1, 0),
(6, 2, 'Article', 1, 1, 0),
(7, 1, 'Author', 1, 1, 0),
(8, 7, 'Joomla', 1, 1, 0),
(9, 1, 'Category', 1, 1, 0),
(10, 9, 'Uncategorised', 1, 1, 0),
(12, 2, 'Web Link', 1, 1, 0),
(13, 9, 'Blog Roll', 1, 1, 0),
(14, 7, 'Super User', 1, 1, 0),
(17, 1, 'Country', 1, 1, 0),
(43, 2, 'Contact', 1, 1, 0),
(44, 17, 'UK', 1, 1, 0),
(66, 9, 'Courses', 1, 1, 0),
(68, 9, 'Recent comments', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `feed_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_taxonomy_map`
--

INSERT INTO `feed_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(1, 3),
(1, 5),
(2, 3),
(2, 5),
(3, 3),
(3, 5),
(4, 3),
(4, 5),
(5, 3),
(5, 5),
(6, 3),
(6, 5),
(7, 3),
(7, 5),
(8, 3),
(8, 5),
(9, 3),
(9, 5),
(16, 5),
(16, 12),
(16, 13),
(17, 5),
(17, 12),
(17, 13),
(35, 5),
(35, 10),
(35, 43),
(35, 44),
(91, 5),
(91, 6),
(91, 10),
(91, 14),
(93, 5),
(93, 6),
(93, 14),
(93, 66),
(94, 5),
(94, 6),
(94, 14),
(94, 68),
(95, 5),
(95, 6),
(95, 8),
(95, 66),
(96, 5),
(96, 6),
(96, 8),
(96, 66),
(97, 5),
(97, 6),
(97, 8),
(97, 10),
(119, 5),
(119, 6),
(119, 14),
(119, 66),
(120, 5),
(120, 6),
(120, 14),
(120, 66),
(128, 5),
(128, 6),
(128, 8),
(128, 10);

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_terms`
--

CREATE TABLE IF NOT EXISTS `feed_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19423 ;

--
-- Dumping data for table `feed_finder_terms`
--

INSERT INTO `feed_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(1, '2', '2', 0, 0, 0.1, '', 3, 'en'),
(2, 'category', 'category', 0, 0, 0.5333, 'C326', 9, 'en'),
(3, 'en-gb', 'en-gb', 0, 0, 0.3333, 'E521', 21, 'en'),
(4, 'index', 'index', 0, 0, 0.3333, 'I532', 19, 'en'),
(5, 'uncategorised', 'uncategorised', 0, 0, 0.8667, 'U5232623', 10, 'en'),
(8, '3', '3', 0, 0, 0.1, '', 2, 'en'),
(9, '4', '4', 0, 0, 0.1, '', 2, 'en'),
(10, '5', '5', 0, 0, 0.1, '', 2, 'en'),
(11, '6', '6', 0, 0, 0.1, '', 2, 'en'),
(12, '7', '7', 0, 0, 0.1, '', 2, 'en'),
(13, '8', '8', 0, 0, 0.1, '', 2, 'en'),
(14, 'blog', 'blog', 0, 0, 0.2667, 'B420', 6, 'en'),
(15, 'blog roll', 'blog roll', 0, 1, 1.3, 'B4264', 4, 'en'),
(16, 'roll', 'roll', 0, 0, 0.2667, 'R400', 4, 'en'),
(20, '9', '9', 0, 0, 0.1, '', 2, 'en'),
(21, '10', '10', 0, 0, 0.2, '', 1, 'en'),
(22, 'about', 'about', 1, 0, 0.0417, 'A130', 3, 'en'),
(23, 'about publish', 'about publish', 0, 1, 1.4333, 'A13142', 1, 'en'),
(24, 'about-publish', 'about-publish', 0, 0, 0.8667, 'A13142', 1, 'en'),
(25, 'about-publish gfxgfhfsgfbsfgsf', 'about-publish gfxgfhfsgfbsfgsf', 0, 1, 2, 'A13142121212121', 1, 'en'),
(26, 'about-publish gfxgfhfsgfbsfgsf sdfsrfdf', 'about-publish gfxgfhfsgfbsfgsf sdfsrfdf', 0, 1, 2, 'A1314212121212123126131', 1, 'en'),
(27, 'category named', 'category named', 0, 1, 1.4667, 'C32653', 1, 'en'),
(28, 'category named about-publish', 'category named about-publish', 0, 1, 1.9333, 'C3265313142', 1, 'en'),
(29, 'gfxgfhfsgfbsfgsf', 'gfxgfhfsgfbsfgsf', 0, 0, 1, 'G121212121', 1, 'en'),
(30, 'gfxgfhfsgfbsfgsf sdfsrfdf', 'gfxgfhfsgfbsfgsf sdfsrfdf', 0, 1, 1.8333, 'G12121212123126131', 1, 'en'),
(31, 'gfxgfhfsgfbsfgsf sdfsrfdf gfxgfhfsgfbsfgsf', 'gfxgfhfsgfbsfgsf sdfsrfdf gfxgfhfsgfbsfgsf', 0, 1, 2, 'G121212121231261312121212121', 1, 'en'),
(32, 'is', 'is', 1, 0, 0.0167, 'I200', 4, 'en'),
(33, 'is category', 'is category', 0, 1, 1.3667, 'I2326', 1, 'en'),
(34, 'is category named', 'is category named', 0, 1, 1.5667, 'I232653', 1, 'en'),
(35, 'named', 'named', 0, 0, 0.3333, 'N300', 1, 'en'),
(36, 'named about-publish', 'named about-publish', 0, 1, 1.6333, 'N313142', 1, 'en'),
(37, 'named about-publish gfxgfhfsgfbsfgsf', 'named about-publish gfxgfhfsgfbsfgsf', 0, 1, 2, 'N313142121212121', 1, 'en'),
(38, 'publish', 'publish', 0, 0, 0.4667, 'P420', 1, 'en'),
(39, 'sdfsrfdf', 'sdfsrfdf', 0, 0, 0.5333, 'S3126131', 1, 'en'),
(40, 'sdfsrfdf gfxgfhfsgfbsfgsf', 'sdfsrfdf gfxgfhfsgfbsfgsf', 0, 1, 1.8333, 'S31261312121212121', 1, 'en'),
(41, 'sdfsrfdf gfxgfhfsgfbsfgsf sdfsrfdf', 'sdfsrfdf gfxgfhfsgfbsfgsf sdfsrfdf', 0, 1, 2, 'S3126131212121212123126131', 1, 'en'),
(42, 'this', 'this', 1, 0, 0.0333, 'T200', 4, 'en'),
(43, 'this is', 'this is', 0, 1, 1.2333, 'T200', 2, 'en'),
(44, 'this is category', 'this is category', 0, 1, 1.5333, 'T2326', 1, 'en'),
(52, '1', '1', 0, 0, 0.1, '', 4, 'en'),
(53, 'a', 'a', 1, 0, 0.0083, 'A000', 3, 'en'),
(56, 'able', 'able', 0, 0, 0.2667, 'A140', 1, 'en'),
(57, 'able to', 'able to', 0, 1, 1.2333, 'A143', 1, 'en'),
(61, 'and', 'and', 1, 0, 0.025, 'A530', 4, 'en'),
(64, 'are', 'are', 1, 0, 0.025, 'A600', 3, 'en'),
(67, 'article', 'article', 0, 0, 0.4667, 'A6324', 9, 'en'),
(68, 'be', 'be', 1, 0, 0.0167, 'B000', 3, 'en'),
(69, 'be able', 'be able', 0, 1, 1.2333, 'B400', 1, 'en'),
(70, 'be able to', 'be able to', 0, 1, 1.3333, 'B430', 1, 'en'),
(76, 'by', 'by', 1, 0, 0.0167, 'B000', 2, 'en'),
(79, 'clicking', 'clicking', 0, 0, 0.5333, 'C4252', 2, 'en'),
(80, 'clicking on', 'clicking on', 0, 1, 1.3667, 'C42525', 2, 'en'),
(81, 'clicking on the', 'clicking on the', 0, 1, 1.5, 'C425253', 2, 'en'),
(82, 'edit', 'edit', 0, 0, 0.2667, 'E300', 2, 'en'),
(87, 'in', 'in', 1, 0, 0.0167, 'I500', 3, 'en'),
(90, 'it', 'it', 1, 0, 0.0167, 'I300', 1, 'en'),
(93, 'joomla', 'joomla', 0, 0, 0.4, 'J540', 6, 'en'),
(94, 'logged', 'logged', 0, 0, 0.4, 'L230', 2, 'en'),
(95, 'logged in', 'logged in', 0, 1, 1.3, 'L235', 2, 'en'),
(97, 'on', 'on', 1, 0, 0.0167, 'O500', 5, 'en'),
(98, 'on the', 'on the', 0, 1, 1.2, 'O530', 3, 'en'),
(100, 'page', 'page', 1, 0, 0.0333, 'P200', 1, 'en'),
(106, 'super', 'super', 0, 0, 0.3333, 'S160', 9, 'en'),
(107, 'super user', 'super user', 0, 1, 1.3333, 'S1626', 9, 'en'),
(111, 'the', 'the', 1, 0, 0.025, 'T000', 3, 'en'),
(122, 'to', 'to', 1, 0, 0.0167, 'T000', 3, 'en'),
(125, 'user', 'user', 1, 0, 0.0333, 'U260', 9, 'en'),
(126, 'when', 'when', 1, 0, 0.0333, 'W500', 3, 'en'),
(127, 'when you', 'when you', 0, 1, 1.2667, 'W500', 3, 'en'),
(132, 'will', 'will', 1, 0, 0.0333, 'W400', 2, 'en'),
(138, 'you', 'you', 1, 0, 0.025, 'Y000', 3, 'en'),
(141, 'you are', 'you are', 0, 1, 1.2333, 'Y600', 2, 'en'),
(143, 'you will', 'you will', 0, 1, 1.2667, 'Y400', 1, 'en'),
(183, 'a new', 'a new', 0, 1, 1.1667, 'A500', 2, 'en'),
(184, 'a new article', 'a new article', 0, 1, 1.4333, 'A56324', 1, 'en'),
(185, 'a new template', 'a new template', 0, 1, 1.4667, 'A535143', 2, 'en'),
(194, 'add', 'add', 0, 0, 0.2, 'A300', 2, 'en'),
(197, 'administrator', 'administrator', 0, 0, 0.8667, 'A3523636', 3, 'en'),
(211, 'already', 'already', 0, 0, 0.4667, 'A463', 2, 'en'),
(214, 'also', 'also', 0, 0, 0.2667, 'A420', 3, 'en'),
(217, 'an', 'an', 1, 0, 0.0167, 'A500', 2, 'en'),
(238, 'are available', 'are available', 0, 1, 1.4333, 'A61414', 2, 'en'),
(239, 'are available in', 'are available in', 0, 1, 1.5333, 'A614145', 2, 'en'),
(250, 'articles', 'articles', 0, 0, 0.5333, 'A63242', 2, 'en'),
(253, 'as', 'as', 1, 0, 0.0167, 'A200', 2, 'en'),
(258, 'as you', 'as you', 0, 1, 1.2, 'A200', 2, 'en'),
(260, 'at', 'at', 1, 0, 0.0167, 'A300', 2, 'en'),
(263, 'at the', 'at the', 0, 1, 1.2, 'A300', 2, 'en'),
(264, 'at the joomla', 'at the joomla', 0, 1, 1.4333, 'A3254', 2, 'en'),
(265, 'available', 'available', 0, 0, 0.6, 'A1414', 2, 'en'),
(268, 'available in', 'available in', 0, 1, 1.4, 'A14145', 2, 'en'),
(269, 'available in the', 'available in the', 0, 1, 1.5333, 'A141453', 2, 'en'),
(279, 'but', 'but', 1, 0, 0.025, 'B300', 2, 'en'),
(285, 'can', 'can', 0, 0, 0.2, 'C500', 3, 'en'),
(295, 'change', 'change', 0, 0, 0.4, 'C520', 3, 'en'),
(296, 'change the', 'change the', 0, 1, 1.3333, 'C523', 3, 'en'),
(298, 'change the site', 'change the site', 0, 1, 1.5, 'C52323', 2, 'en'),
(301, 'click', 'click', 0, 0, 0.3333, 'C420', 2, 'en'),
(302, 'click on', 'click on', 0, 1, 1.2667, 'C425', 2, 'en'),
(316, 'control', 'control', 0, 0, 0.4667, 'C5364', 2, 'en'),
(319, 'create', 'create', 0, 0, 0.4, 'C630', 1, 'en'),
(320, 'create a', 'create a', 0, 1, 1.2667, 'C630', 1, 'en'),
(321, 'create a new', 'create a new', 0, 1, 1.4, 'C635', 1, 'en'),
(331, 'description', 'description', 0, 0, 0.7333, 'D26135', 2, 'en'),
(361, 'extensions', 'extensions', 0, 0, 0.6667, 'E235252', 2, 'en'),
(369, 'for', 'for', 1, 0, 0.025, 'F600', 3, 'en'),
(394, 'go', 'go', 1, 0, 0.0167, 'G000', 1, 'en'),
(397, 'has', 'has', 0, 0, 0.2, 'H200', 2, 'en'),
(400, 'have', 'have', 0, 0, 0.2667, 'H100', 2, 'en'),
(411, 'if', 'if', 1, 0, 0.0167, 'I100', 2, 'en'),
(414, 'in the', 'in the', 0, 1, 1.2, 'I530', 3, 'en'),
(417, 'in the top', 'in the top', 0, 1, 1.3333, 'I531', 2, 'en'),
(420, 'information', 'information', 0, 0, 0.7333, 'I516535', 2, 'en'),
(423, 'install', 'install', 0, 0, 0.4667, 'I5234', 2, 'en'),
(424, 'install a', 'install a', 0, 1, 1.3, 'I5234', 2, 'en'),
(425, 'install a new', 'install a new', 0, 1, 1.4333, 'I52345', 2, 'en'),
(465, 'link', 'link', 0, 0, 0.2667, 'L520', 5, 'en'),
(466, 'link in', 'link in', 0, 1, 1.2333, 'L525', 2, 'en'),
(467, 'link in the', 'link in the', 0, 1, 1.3667, 'L5253', 2, 'en'),
(469, 'login', 'login', 0, 0, 0.3333, 'L250', 2, 'en'),
(476, 'look', 'look', 0, 0, 0.2667, 'L200', 2, 'en'),
(482, 'manager', 'manager', 0, 0, 0.4667, 'M260', 3, 'en'),
(485, 'many', 'many', 0, 0, 0.2667, 'M000', 2, 'en'),
(491, 'menu', 'menu', 0, 0, 0.2667, 'M000', 3, 'en'),
(494, 'menu to', 'menu to', 0, 1, 1.2333, 'M300', 2, 'en'),
(499, 'modules', 'modules', 0, 0, 0.4667, 'M342', 4, 'en'),
(504, 'more', 'more', 1, 0, 0.0333, 'M600', 3, 'en'),
(519, 'new', 'new', 1, 0, 0.025, 'N000', 2, 'en'),
(520, 'new article', 'new article', 0, 1, 1.3667, 'N6324', 1, 'en'),
(522, 'new template', 'new template', 0, 1, 1.4, 'N35143', 2, 'en'),
(530, 'of', 'of', 1, 0, 0.0167, 'O100', 3, 'en'),
(535, 'of the', 'of the', 0, 1, 1.2, 'O130', 1, 'en'),
(540, 'of your', 'of your', 0, 1, 1.2333, 'O160', 2, 'en'),
(549, 'on your', 'on your', 0, 1, 1.2333, 'O560', 3, 'en'),
(550, 'on your site', 'on your site', 0, 1, 1.4, 'O5623', 2, 'en'),
(557, 'options', 'options', 0, 0, 0.4667, 'O1352', 3, 'en'),
(558, 'options are', 'options are', 0, 1, 1.3667, 'O13526', 2, 'en'),
(559, 'options are available', 'options are available', 0, 1, 1.7, 'O135261414', 2, 'en'),
(569, 'other', 'other', 1, 0, 0.0417, 'O360', 2, 'en'),
(602, 'save', 'save', 0, 0, 0.2667, 'S100', 2, 'en'),
(605, 'see', 'see', 0, 0, 0.2, 'S000', 1, 'en'),
(623, 'settings', 'settings', 0, 0, 0.5333, 'S352', 2, 'en'),
(624, 'settings link', 'settings link', 0, 1, 1.4333, 'S352452', 2, 'en'),
(625, 'settings link in', 'settings link in', 0, 1, 1.5333, 'S3524525', 2, 'en'),
(631, 'site', 'site', 0, 0, 0.2667, 'S300', 3, 'en'),
(634, 'site description', 'site description', 0, 1, 1.5333, 'S326135', 2, 'en'),
(644, 'site title', 'site title', 0, 1, 1.3333, 'S340', 2, 'en'),
(650, 'site you', 'site you', 0, 1, 1.2667, 'S300', 2, 'en'),
(652, 'some', 'some', 1, 0, 0.0333, 'S500', 2, 'en'),
(661, 'tag', 'tag', 0, 0, 0.2, 'T200', 2, 'en'),
(664, 'template', 'template', 0, 0, 0.5333, 'T5143', 2, 'en'),
(667, 'template settings', 'template settings', 0, 1, 1.5667, 'T51432352', 2, 'en'),
(668, 'template settings link', 'template settings link', 0, 1, 1.7333, 'T51432352452', 2, 'en'),
(669, 'templates', 'templates', 0, 0, 0.6, 'T51432', 2, 'en'),
(672, 'that', 'that', 1, 0, 0.0333, 'T000', 2, 'en'),
(678, 'that you', 'that you', 0, 1, 1.2667, 'T000', 2, 'en'),
(695, 'the joomla', 'the joomla', 0, 1, 1.3333, 'T254', 2, 'en'),
(698, 'the look', 'the look', 0, 1, 1.2667, 'T420', 2, 'en'),
(706, 'the site', 'the site', 0, 1, 1.2667, 'T230', 2, 'en'),
(711, 'the top', 'the top', 0, 1, 1.2333, 'T100', 3, 'en'),
(712, 'the top menu', 'the top menu', 0, 1, 1.4, 'T150', 3, 'en'),
(713, 'them', 'them', 1, 0, 0.0333, 'T500', 2, 'en'),
(714, 'them when', 'them when', 0, 1, 1.3, 'T500', 2, 'en'),
(715, 'them when you', 'them when you', 0, 1, 1.4333, 'T500', 2, 'en'),
(733, 'title', 'title', 0, 0, 0.3333, 'T400', 2, 'en'),
(738, 'to add', 'to add', 0, 1, 1.2, 'T000', 2, 'en'),
(740, 'to change', 'to change', 0, 1, 1.3, 'T252', 2, 'en'),
(755, 'to the', 'to the', 0, 1, 1.2, 'T000', 1, 'en'),
(762, 'top', 'top', 0, 0, 0.2, 'T100', 3, 'en'),
(763, 'top menu', 'top menu', 0, 1, 1.2667, 'T150', 3, 'en'),
(764, 'top menu to', 'top menu to', 0, 1, 1.3667, 'T153', 2, 'en'),
(776, 'used', 'used', 0, 0, 0.2667, 'U230', 3, 'en'),
(786, 'using', 'using', 0, 0, 0.3333, 'U252', 2, 'en'),
(787, 'using the', 'using the', 0, 1, 1.3, 'U2523', 2, 'en'),
(792, 'want', 'want', 1, 0, 0.0333, 'W530', 2, 'en'),
(793, 'want to', 'want to', 0, 1, 1.2333, 'W530', 2, 'en'),
(807, 'which', 'which', 1, 0, 0.0417, 'W200', 2, 'en'),
(820, 'with', 'with', 1, 0, 0.0333, 'W300', 3, 'en'),
(830, 'working', 'working', 0, 0, 0.4667, 'W6252', 2, 'en'),
(831, 'working on', 'working on', 0, 1, 1.3333, 'W62525', 2, 'en'),
(832, 'working on your', 'working on your', 0, 1, 1.5, 'W625256', 2, 'en'),
(838, 'you can', 'you can', 0, 1, 1.2333, 'Y250', 3, 'en'),
(857, 'your', 'your', 1, 0, 0.0333, 'Y600', 3, 'en'),
(858, 'your site', 'your site', 0, 1, 1.3, 'Y623', 3, 'en'),
(862, 'your site you', 'your site you', 0, 1, 1.4333, 'Y623', 2, 'en'),
(1265, 'if you', 'if you', 0, 1, 1.2, 'I100', 1, 'en'),
(1271, 'is a', 'is a', 0, 1, 1.1333, 'I200', 1, 'en'),
(1311, 'site as', 'site as', 0, 1, 1.2333, 'S320', 1, 'en'),
(1312, 'site as you', 'site as you', 0, 1, 1.3667, 'S320', 1, 'en'),
(1325, 'this is a', 'this is a', 0, 1, 1.3, 'T200', 1, 'en'),
(1600, 'recent', 'recent', 0, 0, 0.4, 'R253', 2, 'en'),
(1618, 'site administrator', 'site administrator', 0, 1, 1.6, 'S3523636', 2, 'en'),
(1768, 'blogs', 'blogs', 0, 0, 0.3333, 'B420', 3, 'en'),
(1775, 'can edit', 'can edit', 0, 1, 1.2667, 'C530', 2, 'en'),
(1839, 'html', 'html', 0, 0, 0.2667, 'H354', 3, 'en'),
(1892, 'may', 'may', 0, 0, 0.2, 'M000', 2, 'en'),
(2096, 'you can edit', 'you can edit', 0, 1, 1.4, 'Y253', 2, 'en'),
(2106, 'you may', 'you may', 0, 1, 1.2333, 'Y500', 2, 'en'),
(2350, 'blogs community', 'blogs community', 0, 1, 1.5, 'B4253', 1, 'en'),
(2351, 'blogs community html', 'blogs community html', 0, 1, 1.6667, 'B425354', 1, 'en'),
(2352, 'community', 'community', 0, 0, 0.6, 'C530', 2, 'en'),
(2353, 'community html', 'community html', 0, 1, 1.4667, 'C5354', 1, 'en'),
(2354, 'community joomla', 'community joomla', 0, 1, 1.5333, 'C53254', 2, 'en'),
(2355, 'community joomla org', 'community joomla org', 0, 1, 1.6667, 'C5325462', 2, 'en'),
(2356, 'http', 'http', 0, 0, 0.2667, 'H310', 3, 'en'),
(2357, 'http community', 'http community', 0, 1, 1.4667, 'H31253', 2, 'en'),
(2358, 'http community joomla', 'http community joomla', 0, 1, 1.7, 'H31253254', 2, 'en'),
(2359, 'joomla community', 'joomla community', 0, 1, 1.5333, 'J54253', 1, 'en'),
(2360, 'joomla org', 'joomla org', 0, 1, 1.3333, 'J5462', 2, 'en'),
(2361, 'joomla org blogs', 'joomla org blogs', 0, 1, 1.5333, 'J5462142', 2, 'en'),
(2362, 'org', 'org', 0, 0, 0.2, 'O620', 2, 'en'),
(2363, 'org blogs', 'org blogs', 0, 1, 1.3, 'O62142', 2, 'en'),
(2364, 'org blogs community', 'org blogs community', 0, 1, 1.6333, 'O6214253', 1, 'en'),
(2365, 'web', 'web', 0, 0, 0.2, 'W100', 2, 'en'),
(2366, 'web link', 'web link', 0, 1, 1.2667, 'W1452', 2, 'en'),
(2381, 'blogs leadership', 'blogs leadership', 0, 1, 1.5333, 'B4243621', 1, 'en'),
(2382, 'blogs leadership html', 'blogs leadership html', 0, 1, 1.7, 'B4243621354', 1, 'en'),
(2383, 'joomla leadership', 'joomla leadership', 0, 1, 1.5667, 'J543621', 1, 'en'),
(2384, 'joomla leadership blog', 'joomla leadership blog', 0, 1, 1.7333, 'J54362142', 1, 'en'),
(2385, 'leadership', 'leadership', 0, 0, 0.6667, 'L3621', 1, 'en'),
(2386, 'leadership blog', 'leadership blog', 0, 1, 1.5, 'L362142', 1, 'en'),
(2387, 'leadership html', 'leadership html', 0, 1, 1.5, 'L3621354', 1, 'en'),
(2388, 'org blogs leadership', 'org blogs leadership', 0, 1, 1.6667, 'O6214243621', 1, 'en'),
(3764, '07895850161', '07895850161', 0, 0, 1.1, '', 1, 'en'),
(3765, '0ah', '0ah', 0, 0, 0.2, 'A000', 1, 'en'),
(3766, '346', '346', 0, 0, 0.3, '', 1, 'en'),
(3767, '346 bethnal', '346 bethnal', 0, 1, 1.3667, 'B354', 1, 'en'),
(3768, '346 bethnal green', '346 bethnal green', 0, 1, 1.5667, 'B354265', 1, 'en'),
(3769, 'bethnal', 'bethnal', 0, 0, 0.4667, 'B354', 1, 'en'),
(3770, 'bethnal green', 'bethnal green', 0, 1, 1.4333, 'B354265', 1, 'en'),
(3771, 'bethnal green rd', 'bethnal green rd', 0, 1, 1.5333, 'B35426563', 1, 'en'),
(3772, 'callus', 'callus', 0, 0, 0.4, 'C420', 1, 'en'),
(3773, 'callus courseguide', 'callus courseguide', 0, 1, 1.6, 'C42623', 1, 'en'),
(3774, 'callus courseguide info', 'callus courseguide info', 0, 1, 1.7667, 'C4262351', 1, 'en'),
(3775, 'contact', 'contact', 0, 0, 0.4667, 'C5323', 1, 'en'),
(3776, 'contacts', 'contacts', 0, 0, 0.5333, 'C53232', 1, 'en'),
(3777, 'courseguide', 'courseguide', 0, 0, 0.7333, 'C623', 2, 'en'),
(3778, 'courseguide contacts', 'courseguide contacts', 0, 1, 1.6667, 'C623253232', 1, 'en'),
(3779, 'courseguide info', 'courseguide info', 0, 1, 1.5333, 'C62351', 2, 'en'),
(3780, 'curseguide', 'curseguide', 0, 0, 0.6667, 'C623', 1, 'en'),
(3781, 'curseguide contacts', 'curseguide contacts', 0, 1, 1.6333, 'C623253232', 1, 'en'),
(3782, 'e2', 'e2', 0, 0, 0.1333, 'E000', 1, 'en'),
(3783, 'e2 0ah', 'e2 0ah', 0, 1, 1.2, 'E000', 1, 'en'),
(3784, 'green', 'green', 0, 0, 0.3333, 'G650', 1, 'en'),
(3785, 'green rd', 'green rd', 0, 1, 1.2667, 'G6563', 1, 'en'),
(3786, 'http courseguide', 'http courseguide', 0, 1, 1.5333, 'H312623', 1, 'en'),
(3787, 'http courseguide info', 'http courseguide info', 0, 1, 1.7, 'H31262351', 1, 'en'),
(3788, 'info', 'info', 0, 0, 0.2667, 'I510', 3, 'en'),
(3789, 'london', 'london', 0, 0, 0.4, 'L535', 1, 'en'),
(3790, 'rd', 'rd', 0, 0, 0.1333, 'R300', 1, 'en'),
(3791, 'that''s', 'that', 0, 0, 0.4, 'T200', 1, 'en'),
(3792, 'that''s us', 'that us', 0, 1, 1.3, 'T200', 1, 'en'),
(3793, 'uk', 'uk', 0, 0, 0.1333, 'U200', 1, 'en'),
(3794, 'us', 'us', 0, 0, 0.1333, 'U200', 1, 'en'),
(9249, 'courses', 'courses', 0, 0, 0.4667, 'C620', 5, 'en'),
(9860, 'vote', 'vote', 0, 0, 0.2667, 'V300', 2, 'en'),
(9861, 'vote on', 'vote on', 0, 1, 1.2333, 'V350', 2, 'en'),
(15658, 'jcomments', 'jcomments', 0, 0, 0.6, 'J532', 3, 'en'),
(15659, 'jcomments on', 'jcomments on', 0, 1, 1.4, 'J5325', 2, 'en'),
(15957, 'about courseguide', 'about courseguide', 0, 1, 1.5667, 'A132623', 1, 'en'),
(15958, 'about courseguide info', 'about courseguide info', 0, 1, 1.7333, 'A13262351', 1, 'en'),
(15959, 'be done', 'be done', 0, 1, 1.2333, 'B350', 1, 'en'),
(15960, 'be done jcomments', 'be done jcomments', 0, 1, 1.5667, 'B352532', 1, 'en'),
(15961, 'done', 'done', 0, 0, 0.2667, 'D500', 1, 'en'),
(15962, 'done jcomments', 'done jcomments', 0, 1, 1.4667, 'D52532', 1, 'en'),
(15963, 'done jcomments off', 'done jcomments off', 0, 1, 1.6, 'D525321', 1, 'en'),
(15964, 'jcomments off', 'jcomments off', 0, 1, 1.4333, 'J5321', 1, 'en'),
(15965, 'off', 'off', 1, 0, 0.025, 'O100', 1, 'en'),
(15966, 'to be', 'to be', 0, 1, 1.1667, 'T100', 1, 'en'),
(15967, 'to be done', 'to be done', 0, 1, 1.3333, 'T135', 1, 'en'),
(15979, 'adca', 'adca', 0, 0, 0.2667, 'A320', 1, 'en'),
(15980, 'cfvzfzcvczvzcv', 'cfvzfzcvczvzcv', 0, 0, 0.9333, 'C121212121', 1, 'en'),
(15981, 'commments', 'commments', 0, 0, 0.6, 'C532', 1, 'en'),
(15982, 'commments article', 'commments article', 0, 1, 1.5667, 'C5326324', 1, 'en'),
(15983, 'recent commments', 'recent commments', 0, 1, 1.5333, 'R2532532', 1, 'en'),
(15984, 'recent commments article', 'recent commments article', 0, 1, 1.8, 'R25325326324', 1, 'en'),
(15986, 'comment', 'comment', 0, 0, 0.4667, 'C530', 1, 'en'),
(15987, 'comment 1', 'comment 1', 0, 1, 1.3, 'C530', 1, 'en'),
(15988, 'comments', 'comments', 0, 0, 0.5333, 'C532', 1, 'en'),
(15989, 'fvzdfsvzdv', 'fvzdfsvzdv', 0, 0, 0.6667, 'F23121231', 1, 'en'),
(15990, 'my', 'my', 1, 0, 0.0167, 'M000', 1, 'en'),
(15991, 'my recent', 'my recent', 0, 1, 1.3, 'M6253', 1, 'en'),
(15992, 'my recent comment', 'my recent comment', 0, 1, 1.5667, 'M6253253', 1, 'en'),
(15993, 'recent comment', 'recent comment', 0, 1, 1.4667, 'R253253', 1, 'en'),
(15994, 'recent comment 1', 'recent comment 1', 0, 1, 1.5333, 'R253253', 1, 'en'),
(15995, 'recent comments', 'recent comments', 0, 1, 1.5, 'R2532532', 1, 'en'),
(16001, 'administrator you', 'administrator you', 0, 1, 1.5667, 'A3523636', 1, 'en'),
(16002, 'administrator you may', 'administrator you may', 0, 1, 1.7, 'A35236365', 1, 'en'),
(16003, 'also install', 'also install', 0, 1, 1.4, 'A425234', 1, 'en'),
(16004, 'also install a', 'also install a', 0, 1, 1.4667, 'A425234', 1, 'en'),
(16005, 'and feel', 'and feel', 0, 1, 1.2667, 'A5314', 1, 'en'),
(16006, 'and feel of', 'and feel of', 0, 1, 1.3667, 'A53141', 1, 'en'),
(16007, 'and title', 'and title', 0, 1, 1.3, 'A534', 1, 'en'),
(16008, 'and title font', 'and title font', 0, 1, 1.4667, 'A534153', 1, 'en'),
(16009, 'background', 'background', 0, 0, 0.6667, 'B2653', 1, 'en'),
(16010, 'background color', 'background color', 0, 1, 1.5333, 'B2653246', 1, 'en'),
(16011, 'background color highlights', 'background color highlights', 0, 1, 1.9, 'B265324624232', 1, 'en'),
(16012, 'blog is', 'blog is', 0, 1, 1.2333, 'B420', 1, 'en'),
(16013, 'blog is installed', 'blog is installed', 0, 1, 1.5667, 'B4252343', 1, 'en'),
(16014, 'by clicking', 'by clicking', 0, 1, 1.3667, 'B24252', 1, 'en'),
(16015, 'by clicking on', 'by clicking on', 0, 1, 1.4667, 'B242525', 1, 'en'),
(16016, 'can change', 'can change', 0, 1, 1.3333, 'C5252', 1, 'en'),
(16017, 'can change the', 'can change the', 0, 1, 1.4667, 'C52523', 1, 'en'),
(16018, 'can edit the', 'can edit the', 0, 1, 1.4, 'C530', 1, 'en'),
(16019, 'color', 'color', 0, 0, 0.3333, 'C460', 1, 'en'),
(16020, 'color highlights', 'color highlights', 0, 1, 1.5333, 'C4624232', 1, 'en'),
(16021, 'color highlights color', 'color highlights color', 0, 1, 1.7333, 'C462423246', 1, 'en'),
(16022, 'color site', 'color site', 0, 1, 1.3333, 'C4623', 1, 'en'),
(16023, 'color site title', 'color site title', 0, 1, 1.5333, 'C46234', 1, 'en'),
(16024, 'control the', 'control the', 0, 1, 1.3667, 'C53643', 1, 'en'),
(16025, 'control the look', 'control the look', 0, 1, 1.5333, 'C5364342', 1, 'en'),
(16026, 'description and', 'description and', 0, 1, 1.5, 'D261353', 1, 'en'),
(16027, 'description and title', 'description and title', 0, 1, 1.7, 'D2613534', 1, 'en'),
(16028, 'edit the', 'edit the', 0, 1, 1.2667, 'E300', 1, 'en'),
(16029, 'edit the options', 'edit the options', 0, 1, 1.5333, 'E31352', 1, 'en'),
(16030, 'example', 'example', 0, 0, 0.4667, 'E2514', 1, 'en'),
(16031, 'example you', 'example you', 0, 1, 1.3667, 'E2514', 1, 'en'),
(16032, 'example you can', 'example you can', 0, 1, 1.5, 'E251425', 1, 'en'),
(16033, 'extension', 'extension', 0, 0, 0.6, 'E23525', 1, 'en'),
(16034, 'extension manager', 'extension manager', 0, 1, 1.5667, 'E2352526', 1, 'en'),
(16035, 'feel', 'feel', 0, 0, 0.2667, 'F400', 1, 'en'),
(16036, 'feel of', 'feel of', 0, 1, 1.2333, 'F410', 1, 'en'),
(16037, 'feel of your', 'feel of your', 0, 1, 1.4, 'F416', 1, 'en'),
(16038, 'font', 'font', 0, 0, 0.2667, 'F530', 1, 'en'),
(16039, 'font used', 'font used', 0, 1, 1.3, 'F5323', 1, 'en'),
(16040, 'font used more', 'font used more', 0, 1, 1.4667, 'F532356', 1, 'en'),
(16041, 'for example', 'for example', 0, 1, 1.3667, 'F62514', 1, 'en'),
(16042, 'for example you', 'for example you', 0, 1, 1.5, 'F62514', 1, 'en'),
(16043, 'highlights', 'highlights', 0, 0, 0.6667, 'H24232', 1, 'en'),
(16044, 'highlights color', 'highlights color', 0, 1, 1.5333, 'H2423246', 1, 'en'),
(16045, 'highlights color site', 'highlights color site', 0, 1, 1.7, 'H242324623', 1, 'en'),
(16046, 'in the site', 'in the site', 0, 1, 1.3667, 'I5323', 1, 'en'),
(16047, 'installed', 'installed', 0, 0, 0.6, 'I52343', 1, 'en'),
(16048, 'installed with', 'installed with', 0, 1, 1.4667, 'I52343', 1, 'en'),
(16049, 'installed with the', 'installed with the', 0, 1, 1.6, 'I52343', 1, 'en'),
(16050, 'is installed', 'is installed', 0, 1, 1.4, 'I252343', 1, 'en'),
(16051, 'is installed with', 'is installed with', 0, 1, 1.5667, 'I252343', 1, 'en'),
(16052, 'login for', 'login for', 0, 1, 1.3, 'L2516', 1, 'en'),
(16053, 'login for example', 'login for example', 0, 1, 1.5667, 'L25162514', 1, 'en'),
(16054, 'look and', 'look and', 0, 1, 1.2667, 'L253', 1, 'en'),
(16055, 'look and feel', 'look and feel', 0, 1, 1.4333, 'L25314', 1, 'en'),
(16056, 'may also', 'may also', 0, 1, 1.2667, 'M420', 1, 'en'),
(16057, 'may also install', 'may also install', 0, 1, 1.5333, 'M425234', 1, 'en'),
(16058, 'menu visible', 'menu visible', 0, 1, 1.4, 'M1214', 1, 'en'),
(16059, 'menu visible when', 'menu visible when', 0, 1, 1.5667, 'M12145', 1, 'en'),
(16060, 'more options', 'more options', 0, 1, 1.4, 'M61352', 1, 'en'),
(16061, 'more options are', 'more options are', 0, 1, 1.5333, 'M613526', 1, 'en'),
(16062, 'new template using', 'new template using', 0, 1, 1.6, 'N35143252', 1, 'en'),
(16063, 'of your website', 'of your website', 0, 1, 1.5, 'O16123', 1, 'en'),
(16064, 'on the working', 'on the working', 0, 1, 1.4667, 'O536252', 1, 'en'),
(16065, 'options by', 'options by', 0, 1, 1.3333, 'O13521', 1, 'en'),
(16066, 'options by clicking', 'options by clicking', 0, 1, 1.6333, 'O1352124252', 1, 'en'),
(16067, 'protostar', 'protostar', 0, 0, 0.6, 'P63236', 1, 'en'),
(16068, 'protostar template', 'protostar template', 0, 1, 1.6, 'P6323635143', 1, 'en'),
(16069, 'protostar template you', 'protostar template you', 0, 1, 1.7333, 'P6323635143', 1, 'en'),
(16070, 'site administrator you', 'site administrator you', 0, 1, 1.7333, 'S3523636', 1, 'en'),
(16071, 'site background', 'site background', 0, 1, 1.5, 'S312653', 1, 'en'),
(16072, 'site background color', 'site background color', 0, 1, 1.7, 'S312653246', 1, 'en'),
(16073, 'site description and', 'site description and', 0, 1, 1.6667, 'S3261353', 1, 'en'),
(16074, 'site template', 'site template', 0, 1, 1.4333, 'S35143', 1, 'en'),
(16075, 'site template settings', 'site template settings', 0, 1, 1.7333, 'S351432352', 1, 'en'),
(16076, 'site title site', 'site title site', 0, 1, 1.5, 'S3423', 1, 'en'),
(16077, 'template using', 'template using', 0, 1, 1.4667, 'T5143252', 1, 'en'),
(16078, 'template using the', 'template using the', 0, 1, 1.6, 'T51432523', 1, 'en'),
(16079, 'template you', 'template you', 0, 1, 1.4, 'T5143', 1, 'en'),
(16080, 'template you can', 'template you can', 0, 1, 1.5333, 'T514325', 1, 'en'),
(16081, 'templates control', 'templates control', 0, 1, 1.5667, 'T514325364', 1, 'en'),
(16082, 'templates control the', 'templates control the', 0, 1, 1.7, 'T5143253643', 1, 'en'),
(16083, 'the extension', 'the extension', 0, 1, 1.4333, 'T23525', 1, 'en'),
(16084, 'the extension manager', 'the extension manager', 0, 1, 1.7, 'T2352526', 1, 'en'),
(16085, 'the look and', 'the look and', 0, 1, 1.4, 'T4253', 1, 'en'),
(16086, 'the options', 'the options', 0, 1, 1.3667, 'T1352', 1, 'en'),
(16087, 'the options by', 'the options by', 0, 1, 1.4667, 'T13521', 1, 'en'),
(16088, 'the protostar', 'the protostar', 0, 1, 1.4333, 'T163236', 1, 'en'),
(16089, 'the protostar template', 'the protostar template', 0, 1, 1.7333, 'T16323635143', 1, 'en'),
(16090, 'the site administrator', 'the site administrator', 0, 1, 1.7333, 'T23523636', 1, 'en'),
(16091, 'the site background', 'the site background', 0, 1, 1.6333, 'T2312653', 1, 'en'),
(16092, 'the working', 'the working', 0, 1, 1.3667, 'T6252', 1, 'en'),
(16093, 'the working on', 'the working on', 0, 1, 1.4667, 'T62525', 1, 'en'),
(16094, 'this blog', 'this blog', 0, 1, 1.3, 'T2142', 1, 'en'),
(16095, 'this blog is', 'this blog is', 0, 1, 1.4, 'T2142', 1, 'en'),
(16096, 'title font', 'title font', 0, 1, 1.3333, 'T4153', 1, 'en'),
(16097, 'title font used', 'title font used', 0, 1, 1.5, 'T415323', 1, 'en'),
(16098, 'title site', 'title site', 0, 1, 1.3333, 'T423', 1, 'en'),
(16099, 'title site description', 'title site description', 0, 1, 1.7333, 'T42326135', 1, 'en'),
(16100, 'top menu visible', 'top menu visible', 0, 1, 1.5333, 'T151214', 1, 'en'),
(16101, 'used more', 'used more', 0, 1, 1.3, 'U2356', 1, 'en'),
(16102, 'used more options', 'used more options', 0, 1, 1.5667, 'U23561352', 1, 'en'),
(16103, 'using the extension', 'using the extension', 0, 1, 1.6333, 'U252323525', 1, 'en'),
(16104, 'visible', 'visible', 0, 0, 0.4667, 'V214', 1, 'en'),
(16105, 'visible when', 'visible when', 0, 1, 1.4, 'V2145', 1, 'en'),
(16106, 'visible when you', 'visible when you', 0, 1, 1.5333, 'V2145', 1, 'en'),
(16107, 'website', 'website', 0, 0, 0.4667, 'W123', 1, 'en'),
(16108, 'website this', 'website this', 0, 1, 1.4, 'W1232', 1, 'en'),
(16109, 'website this blog', 'website this blog', 0, 1, 1.5667, 'W1232142', 1, 'en'),
(16110, 'when you login', 'when you login', 0, 1, 1.4667, 'W5425', 1, 'en'),
(16111, 'with the', 'with the', 0, 1, 1.2667, 'W300', 1, 'en'),
(16112, 'with the protostar', 'with the protostar', 0, 1, 1.6, 'W3163236', 1, 'en'),
(16113, 'you can change', 'you can change', 0, 1, 1.4667, 'Y25252', 1, 'en'),
(16114, 'you login', 'you login', 0, 1, 1.3, 'Y425', 1, 'en'),
(16115, 'you login for', 'you login for', 0, 1, 1.4333, 'Y42516', 1, 'en'),
(16116, 'you may also', 'you may also', 0, 1, 1.4, 'Y542', 1, 'en'),
(16117, 'your site template', 'your site template', 0, 1, 1.6, 'Y6235143', 1, 'en'),
(16118, 'your template', 'your template', 0, 1, 1.4333, 'Y635143', 1, 'en'),
(16119, 'your website', 'your website', 0, 1, 1.4, 'Y6123', 1, 'en'),
(16120, 'your website this', 'your website this', 0, 1, 1.5667, 'Y61232', 1, 'en'),
(16128, 'a custom', 'a custom', 0, 1, 1.2667, 'A235', 1, 'en'),
(16129, 'a custom html', 'a custom html', 0, 1, 1.4333, 'A235354', 1, 'en'),
(16130, 'a module', 'a module', 0, 1, 1.2667, 'A534', 1, 'en'),
(16131, 'a module and', 'a module and', 0, 1, 1.4, 'A53453', 1, 'en'),
(16132, 'a news', 'a news', 0, 1, 1.2, 'A520', 1, 'en'),
(16133, 'a news reader', 'a news reader', 0, 1, 1.4333, 'A52636', 1, 'en'),
(16134, 'a tag', 'a tag', 0, 1, 1.1667, 'A320', 1, 'en'),
(16135, 'a tag in', 'a tag in', 0, 1, 1.2667, 'A325', 1, 'en'),
(16136, 'add more', 'add more', 0, 1, 1.2667, 'A356', 1, 'en'),
(16137, 'add more module', 'add more module', 0, 1, 1.5, 'A356534', 1, 'en'),
(16138, 'administrator moving', 'administrator moving', 0, 1, 1.6667, 'A35236365152', 1, 'en'),
(16139, 'administrator moving your', 'administrator moving your', 0, 1, 1.8333, 'A352363651526', 1, 'en'),
(16140, 'allows', 'allows', 0, 0, 0.4, 'A420', 1, 'en'),
(16141, 'allows your', 'allows your', 0, 1, 1.3667, 'A426', 1, 'en'),
(16142, 'allows your readers', 'allows your readers', 0, 1, 1.6333, 'A426362', 1, 'en'),
(16143, 'already preconfigured', 'already preconfigured', 0, 1, 1.7, 'A46316251263', 1, 'en'),
(16144, 'already preconfigured these', 'already preconfigured these', 0, 1, 1.9, 'A463162512632', 1, 'en'),
(16145, 'also includes', 'also includes', 0, 1, 1.4333, 'A4252432', 1, 'en'),
(16146, 'also includes many', 'also includes many', 0, 1, 1.6, 'A42524325', 1, 'en'),
(16147, 'always', 'always', 0, 0, 0.4, 'A420', 1, 'en'),
(16148, 'always be', 'always be', 0, 1, 1.3, 'A421', 1, 'en'),
(16149, 'always be sure', 'always be sure', 0, 1, 1.4667, 'A42126', 1, 'en'),
(16150, 'an edit', 'an edit', 0, 1, 1.2333, 'A530', 1, 'en'),
(16151, 'an edit screen', 'an edit screen', 0, 1, 1.4667, 'A53265', 1, 'en'),
(16152, 'and clicking', 'and clicking', 0, 1, 1.4, 'A5324252', 1, 'en'),
(16153, 'and clicking on', 'and clicking on', 0, 1, 1.5, 'A53242525', 1, 'en'),
(16154, 'and close', 'and close', 0, 1, 1.3, 'A53242', 1, 'en'),
(16155, 'and close any', 'and close any', 0, 1, 1.4333, 'A532425', 1, 'en'),
(16156, 'any', 'any', 1, 0, 0.025, 'A500', 1, 'en'),
(16157, 'any module', 'any module', 0, 1, 1.3333, 'A534', 1, 'en'),
(16158, 'any module you', 'any module you', 0, 1, 1.4667, 'A534', 1, 'en'),
(16159, 'appear', 'appear', 0, 0, 0.4, 'A160', 1, 'en'),
(16160, 'appear if', 'appear if', 0, 1, 1.3, 'A161', 1, 'en'),
(16161, 'appear if you', 'appear if you', 0, 1, 1.4333, 'A161', 1, 'en'),
(16162, 'are logged', 'are logged', 0, 1, 1.3333, 'A6423', 1, 'en'),
(16163, 'are logged in', 'are logged in', 0, 1, 1.4333, 'A64235', 1, 'en'),
(16164, 'articles based', 'articles based', 0, 1, 1.4667, 'A63242123', 1, 'en'),
(16165, 'articles based on', 'articles based on', 0, 1, 1.5667, 'A632421235', 1, 'en'),
(16166, 'articles by', 'articles by', 0, 1, 1.3667, 'A632421', 1, 'en'),
(16167, 'articles by month', 'articles by month', 0, 1, 1.5667, 'A63242153', 1, 'en'),
(16168, 'articles just', 'articles just', 0, 1, 1.4333, 'A632423', 1, 'en'),
(16169, 'articles just enter', 'articles just enter', 0, 1, 1.6333, 'A632423536', 1, 'en'),
(16170, 'articles which', 'articles which', 0, 1, 1.4667, 'A63242', 1, 'en'),
(16171, 'articles which lists', 'articles which lists', 0, 1, 1.6667, 'A632424232', 1, 'en'),
(16172, 'as you develop', 'as you develop', 0, 1, 1.4667, 'A23141', 1, 'en'),
(16173, 'based', 'based', 0, 0, 0.3333, 'B230', 1, 'en'),
(16174, 'based on', 'based on', 0, 1, 1.2667, 'B235', 1, 'en'),
(16175, 'based on the', 'based on the', 0, 1, 1.4, 'B2353', 1, 'en'),
(16176, 'be sure', 'be sure', 0, 1, 1.2333, 'B260', 1, 'en'),
(16177, 'be sure to', 'be sure to', 0, 1, 1.3333, 'B263', 1, 'en'),
(16178, 'been', 'been', 0, 0, 0.2667, 'B500', 1, 'en'),
(16179, 'been read', 'been read', 0, 1, 1.3, 'B563', 1, 'en'),
(16180, 'been read older', 'been read older', 0, 1, 1.5, 'B563436', 1, 'en'),
(16181, 'beneath', 'beneath', 0, 0, 0.4667, 'B530', 1, 'en'),
(16182, 'beneath the', 'beneath the', 0, 1, 1.3667, 'B530', 1, 'en'),
(16183, 'beneath the menu', 'beneath the menu', 0, 1, 1.5333, 'B535', 1, 'en'),
(16184, 'blog roll on', 'blog roll on', 0, 1, 1.4, 'B42645', 1, 'en'),
(16185, 'blog roll which', 'blog roll which', 0, 1, 1.5, 'B42642', 1, 'en'),
(16186, 'blogs we''ve', 'blogs we', 0, 1, 1.3667, 'B421', 1, 'en'),
(16187, 'blogs we''ve put', 'blogs we put', 0, 1, 1.5, 'B4213', 1, 'en'),
(16188, 'but you''ll', 'but you', 0, 1, 1.3333, 'B340', 1, 'en'),
(16189, 'but you''ll want', 'but you want', 0, 1, 1.5, 'B3453', 1, 'en'),
(16190, 'by month', 'by month', 0, 1, 1.2667, 'B530', 1, 'en'),
(16191, 'by month syndicate', 'by month syndicate', 0, 1, 1.6, 'B5325323', 1, 'en'),
(16192, 'can edit to', 'can edit to', 0, 1, 1.3667, 'C530', 1, 'en'),
(16193, 'can experiment', 'can experiment', 0, 1, 1.4667, 'C521653', 1, 'en'),
(16194, 'can experiment with', 'can experiment with', 0, 1, 1.6333, 'C521653', 1, 'en'),
(16195, 'can find', 'can find', 0, 1, 1.2667, 'C5153', 1, 'en'),
(16196, 'can find at', 'can find at', 0, 1, 1.3667, 'C5153', 1, 'en'),
(16197, 'can incorporate', 'can incorporate', 0, 1, 1.5, 'C526163', 1, 'en'),
(16198, 'can incorporate in', 'can incorporate in', 0, 1, 1.6, 'C5261635', 1, 'en'),
(16199, 'change the image', 'change the image', 0, 1, 1.5333, 'C52352', 1, 'en'),
(16200, 'change them', 'change them', 0, 1, 1.3667, 'C5235', 1, 'en'),
(16201, 'change them when', 'change them when', 0, 1, 1.5333, 'C5235', 1, 'en'),
(16202, 'click on blog', 'click on blog', 0, 1, 1.4333, 'C425142', 1, 'en'),
(16203, 'close', 'close', 0, 0, 0.3333, 'C420', 1, 'en'),
(16204, 'close any', 'close any', 0, 1, 1.3, 'C425', 1, 'en'),
(16205, 'close any module', 'close any module', 0, 1, 1.5333, 'C42534', 1, 'en'),
(16206, 'commonly', 'commonly', 0, 0, 0.5333, 'C540', 1, 'en'),
(16207, 'commonly used', 'commonly used', 0, 1, 1.4333, 'C5423', 1, 'en'),
(16208, 'commonly used modules', 'commonly used modules', 0, 1, 1.7, 'C54235342', 1, 'en'),
(16209, 'custom', 'custom', 0, 0, 0.4, 'C350', 1, 'en'),
(16210, 'custom html', 'custom html', 0, 1, 1.3667, 'C35354', 1, 'en'),
(16211, 'custom html module', 'custom html module', 0, 1, 1.6, 'C35354534', 1, 'en'),
(16212, 'develop', 'develop', 0, 0, 0.4667, 'D141', 1, 'en'),
(16213, 'develop your', 'develop your', 0, 1, 1.4, 'D1416', 1, 'en'),
(16214, 'develop your site', 'develop your site', 0, 1, 1.5667, 'D141623', 1, 'en'),
(16215, 'directory', 'directory', 0, 0, 0.6, 'D6236', 1, 'en'),
(16216, 'directory vote', 'directory vote', 0, 1, 1.4667, 'D623613', 1, 'en'),
(16217, 'directory vote on', 'directory vote on', 0, 1, 1.5667, 'D6236135', 1, 'en'),
(16218, 'each', 'each', 0, 0, 0.2667, 'E200', 1, 'en'),
(16219, 'each of', 'each of', 0, 1, 1.2333, 'E210', 1, 'en'),
(16220, 'each of these', 'each of these', 0, 1, 1.4333, 'E2132', 1, 'en'),
(16221, 'edit icon', 'edit icon', 0, 1, 1.3, 'E325', 1, 'en'),
(16222, 'edit icon will', 'edit icon will', 0, 1, 1.4667, 'E3254', 1, 'en'),
(16223, 'edit joomla', 'edit joomla', 0, 1, 1.3667, 'E3254', 1, 'en'),
(16224, 'edit joomla also', 'edit joomla also', 0, 1, 1.5333, 'E32542', 1, 'en'),
(16225, 'edit screen', 'edit screen', 0, 1, 1.3667, 'E3265', 1, 'en'),
(16226, 'edit screen for', 'edit screen for', 0, 1, 1.5, 'E326516', 1, 'en'),
(16227, 'edit to', 'edit to', 0, 1, 1.2333, 'E300', 1, 'en'),
(16228, 'edit to change', 'edit to change', 0, 1, 1.4667, 'E3252', 1, 'en'),
(16229, 'editing', 'editing', 0, 0, 0.4667, 'E352', 1, 'en'),
(16230, 'editing each', 'editing each', 0, 1, 1.4, 'E352', 1, 'en'),
(16231, 'editing each of', 'editing each of', 0, 1, 1.5, 'E3521', 1, 'en'),
(16232, 'enter', 'enter', 0, 0, 0.3333, 'E536', 1, 'en'),
(16233, 'enter a', 'enter a', 0, 1, 1.2333, 'E536', 1, 'en'),
(16234, 'enter a tag', 'enter a tag', 0, 1, 1.3667, 'E53632', 1, 'en'),
(16235, 'examples', 'examples', 0, 0, 0.5333, 'E25142', 1, 'en'),
(16236, 'examples but', 'examples but', 0, 1, 1.4, 'E2514213', 1, 'en'),
(16237, 'examples but you''ll', 'examples but you', 0, 1, 1.6333, 'E25142134', 1, 'en'),
(16238, 'experiment', 'experiment', 0, 0, 0.6667, 'E21653', 1, 'en'),
(16239, 'experiment with', 'experiment with', 0, 1, 1.5, 'E21653', 1, 'en'),
(16240, 'experiment with in', 'experiment with in', 0, 1, 1.6, 'E216535', 1, 'en'),
(16241, 'extensions directory', 'extensions directory', 0, 1, 1.6667, 'E23525236236', 1, 'en'),
(16242, 'extensions directory vote', 'extensions directory vote', 0, 1, 1.8333, 'E2352523623613', 1, 'en'),
(16243, 'field', 'field', 0, 0, 0.3333, 'F430', 1, 'en'),
(16244, 'field when', 'field when', 0, 1, 1.3333, 'F435', 1, 'en'),
(16245, 'field when editing', 'field when editing', 0, 1, 1.6, 'F435352', 1, 'en'),
(16246, 'find', 'find', 0, 0, 0.2667, 'F530', 1, 'en'),
(16247, 'find at', 'find at', 0, 1, 1.2333, 'F530', 1, 'en'),
(16248, 'find at the', 'find at the', 0, 1, 1.3667, 'F530', 1, 'en'),
(16249, 'for that', 'for that', 0, 1, 1.2667, 'F630', 1, 'en'),
(16250, 'for that module', 'for that module', 0, 1, 1.5, 'F63534', 1, 'en'),
(16251, 'has many', 'has many', 0, 1, 1.2667, 'H250', 1, 'en'),
(16252, 'has many options', 'has many options', 0, 1, 1.5333, 'H251352', 1, 'en'),
(16253, 'has some', 'has some', 0, 1, 1.2667, 'H250', 1, 'en'),
(16254, 'has some commonly', 'has some commonly', 0, 1, 1.5667, 'H25254', 1, 'en'),
(16255, 'have been', 'have been', 0, 1, 1.3, 'H150', 1, 'en'),
(16256, 'have been read', 'have been read', 0, 1, 1.4667, 'H1563', 1, 'en'),
(16257, 'holds', 'holds', 0, 0, 0.3333, 'H432', 1, 'en'),
(16258, 'holds the', 'holds the', 0, 1, 1.3, 'H4323', 1, 'en'),
(16259, 'holds the image', 'holds the image', 0, 1, 1.5, 'H432352', 1, 'en'),
(16260, 'html module', 'html module', 0, 1, 1.3667, 'H354534', 1, 'en'),
(16261, 'html module that', 'html module that', 0, 1, 1.5333, 'H3545343', 1, 'en'),
(16262, 'icon', 'icon', 0, 0, 0.2667, 'I250', 1, 'en'),
(16263, 'icon will', 'icon will', 0, 1, 1.3, 'I254', 1, 'en'),
(16264, 'icon will take', 'icon will take', 0, 1, 1.4667, 'I25432', 1, 'en'),
(16265, 'if you use', 'if you use', 0, 1, 1.3333, 'I120', 1, 'en'),
(16266, 'image', 'image', 0, 0, 0.3333, 'I520', 1, 'en'),
(16267, 'image beneath', 'image beneath', 0, 1, 1.4333, 'I52153', 1, 'en'),
(16268, 'image beneath the', 'image beneath the', 0, 1, 1.5667, 'I52153', 1, 'en'),
(16269, 'image blog', 'image blog', 0, 1, 1.3333, 'I52142', 1, 'en'),
(16270, 'image blog roll', 'image blog roll', 0, 1, 1.5, 'I5214264', 1, 'en'),
(16271, 'image module', 'image module', 0, 1, 1.4, 'I52534', 1, 'en'),
(16272, 'image module which', 'image module which', 0, 1, 1.6, 'I525342', 1, 'en'),
(16273, 'in a', 'in a', 0, 1, 1.1333, 'I500', 1, 'en'),
(16274, 'in a news', 'in a news', 0, 1, 1.3, 'I520', 1, 'en'),
(16275, 'in click', 'in click', 0, 1, 1.2667, 'I5242', 1, 'en'),
(16276, 'in click on', 'in click on', 0, 1, 1.3667, 'I52425', 1, 'en'),
(16277, 'in the module', 'in the module', 0, 1, 1.4333, 'I53534', 1, 'en'),
(16278, 'in the tags', 'in the tags', 0, 1, 1.3667, 'I532', 1, 'en'),
(16279, 'in two', 'in two', 0, 1, 1.2, 'I530', 1, 'en'),
(16280, 'in two examples', 'in two examples', 0, 1, 1.5, 'I5325142', 1, 'en'),
(16281, 'in your', 'in your', 0, 1, 1.2333, 'I560', 1, 'en'),
(16282, 'in your site', 'in your site', 0, 1, 1.4, 'I5623', 1, 'en'),
(16283, 'include', 'include', 0, 0, 0.4667, 'I5243', 1, 'en'),
(16284, 'include image', 'include image', 0, 1, 1.4333, 'I524352', 1, 'en'),
(16285, 'include image module', 'include image module', 0, 1, 1.6667, 'I524352534', 1, 'en'),
(16286, 'includes', 'includes', 0, 0, 0.5333, 'I52432', 1, 'en'),
(16287, 'includes many', 'includes many', 0, 1, 1.4333, 'I524325', 1, 'en'),
(16288, 'includes many other', 'includes many other', 0, 1, 1.6333, 'I52432536', 1, 'en'),
(16289, 'incorporate', 'incorporate', 0, 0, 0.7333, 'I526163', 1, 'en'),
(16290, 'incorporate in', 'incorporate in', 0, 1, 1.4667, 'I5261635', 1, 'en'),
(16291, 'incorporate in your', 'incorporate in your', 0, 1, 1.6333, 'I52616356', 1, 'en'),
(16292, 'is a custom', 'is a custom', 0, 1, 1.3667, 'I235', 1, 'en'),
(16293, 'joomla also', 'joomla also', 0, 1, 1.3667, 'J542', 1, 'en'),
(16294, 'joomla also includes', 'joomla also includes', 0, 1, 1.6667, 'J54252432', 1, 'en'),
(16295, 'joomla extensions', 'joomla extensions', 0, 1, 1.5667, 'J54235252', 1, 'en'),
(16296, 'joomla extensions directory', 'joomla extensions directory', 0, 1, 1.9, 'J5423525236236', 1, 'en'),
(16297, 'just', 'just', 0, 0, 0.2667, 'J300', 1, 'en'),
(16298, 'just enter', 'just enter', 0, 1, 1.3333, 'J3536', 1, 'en'),
(16299, 'just enter a', 'just enter a', 0, 1, 1.4, 'J3536', 1, 'en'),
(16300, 'lets', 'lets', 0, 0, 0.2667, 'L320', 1, 'en'),
(16301, 'lets you', 'lets you', 0, 1, 1.2667, 'L320', 1, 'en'),
(16302, 'lets you link', 'lets you link', 0, 1, 1.4333, 'L32452', 1, 'en'),
(16303, 'link to', 'link to', 0, 1, 1.2333, 'L523', 1, 'en'),
(16304, 'link to other', 'link to other', 0, 1, 1.4333, 'L5236', 1, 'en'),
(16305, 'lists', 'lists', 0, 0, 0.3333, 'L232', 1, 'en'),
(16306, 'lists articles', 'lists articles', 0, 1, 1.4667, 'L23263242', 1, 'en'),
(16307, 'lists articles based', 'lists articles based', 0, 1, 1.6667, 'L23263242123', 1, 'en'),
(16308, 'lists out', 'lists out', 0, 1, 1.3, 'L2323', 1, 'en'),
(16309, 'lists out articles', 'lists out articles', 0, 1, 1.6, 'L232363242', 1, 'en'),
(16310, 'logged in click', 'logged in click', 0, 1, 1.5, 'L235242', 1, 'en'),
(16311, 'manager in', 'manager in', 0, 1, 1.3333, 'M265', 1, 'en'),
(16312, 'manager in your', 'manager in your', 0, 1, 1.5, 'M2656', 1, 'en'),
(16313, 'many options', 'many options', 0, 1, 1.4, 'M1352', 1, 'en'),
(16314, 'many options which', 'many options which', 0, 1, 1.6, 'M1352', 1, 'en'),
(16315, 'many other', 'many other', 0, 1, 1.3333, 'M360', 1, 'en'),
(16316, 'many other modules', 'many other modules', 0, 1, 1.6, 'M365342', 1, 'en'),
(16317, 'may want', 'may want', 0, 1, 1.2667, 'M300', 1, 'en'),
(16318, 'may want to', 'may want to', 0, 1, 1.3667, 'M300', 1, 'en'),
(16319, 'menu this', 'menu this', 0, 1, 1.3, 'M320', 1, 'en'),
(16320, 'menu this is', 'menu this is', 0, 1, 1.4, 'M320', 1, 'en'),
(16321, 'menu to update', 'menu to update', 0, 1, 1.4667, 'M313', 1, 'en'),
(16322, 'module', 'module', 0, 0, 0.4, 'M340', 1, 'en'),
(16323, 'module always', 'module always', 0, 1, 1.4333, 'M342', 1, 'en'),
(16324, 'module always be', 'module always be', 0, 1, 1.5333, 'M3421', 1, 'en'),
(16325, 'module and', 'module and', 0, 1, 1.3333, 'M3453', 1, 'en'),
(16326, 'module and clicking', 'module and clicking', 0, 1, 1.6333, 'M345324252', 1, 'en'),
(16327, 'module manager', 'module manager', 0, 1, 1.4667, 'M34526', 1, 'en'),
(16328, 'module manager in', 'module manager in', 0, 1, 1.5667, 'M345265', 1, 'en'),
(16329, 'module that', 'module that', 0, 1, 1.3667, 'M343', 1, 'en'),
(16330, 'module that you', 'module that you', 0, 1, 1.5, 'M343', 1, 'en'),
(16331, 'module which', 'module which', 0, 1, 1.4, 'M342', 1, 'en'),
(16332, 'module which holds', 'module which holds', 0, 1, 1.6, 'M342432', 1, 'en'),
(16333, 'module you', 'module you', 0, 1, 1.3333, 'M340', 1, 'en'),
(16334, 'module you edit', 'module you edit', 0, 1, 1.5, 'M343', 1, 'en'),
(16335, 'modules already', 'modules already', 0, 1, 1.5, 'M342463', 1, 'en'),
(16336, 'modules already preconfigured', 'modules already preconfigured', 0, 1, 1.9667, 'M34246316251263', 1, 'en'),
(16337, 'modules has', 'modules has', 0, 1, 1.3667, 'M342', 1, 'en'),
(16338, 'modules has many', 'modules has many', 0, 1, 1.5333, 'M3425', 1, 'en'),
(16339, 'modules you', 'modules you', 0, 1, 1.3667, 'M342', 1, 'en'),
(16340, 'modules you can', 'modules you can', 0, 1, 1.5, 'M3425', 1, 'en'),
(16341, 'month', 'month', 0, 0, 0.3333, 'M300', 1, 'en'),
(16342, 'month syndicate', 'month syndicate', 0, 1, 1.5, 'M325323', 1, 'en'),
(16343, 'month syndicate which', 'month syndicate which', 0, 1, 1.7, 'M3253232', 1, 'en'),
(16344, 'more module', 'more module', 0, 1, 1.3667, 'M6534', 1, 'en'),
(16345, 'more module that', 'more module that', 0, 1, 1.5333, 'M65343', 1, 'en'),
(16346, 'most', 'most', 1, 0, 0.0333, 'M230', 1, 'en'),
(16347, 'most read', 'most read', 0, 1, 1.3, 'M2363', 1, 'en'),
(16348, 'most read posts', 'most read posts', 0, 1, 1.5, 'M23631232', 1, 'en'),
(16349, 'mouse', 'mouse', 0, 0, 0.3333, 'M200', 1, 'en'),
(16350, 'mouse over', 'mouse over', 0, 1, 1.3333, 'M216', 1, 'en'),
(16351, 'mouse over a', 'mouse over a', 0, 1, 1.4, 'M216', 1, 'en'),
(16352, 'moving', 'moving', 0, 0, 0.4, 'M152', 1, 'en'),
(16353, 'moving your', 'moving your', 0, 1, 1.3667, 'M1526', 1, 'en'),
(16354, 'moving your mouse', 'moving your mouse', 0, 1, 1.5667, 'M152652', 1, 'en'),
(16355, 'news', 'news', 0, 0, 0.2667, 'N200', 1, 'en'),
(16356, 'news reader', 'news reader', 0, 1, 1.3667, 'N2636', 1, 'en'),
(16357, 'news reader popular', 'news reader popular', 0, 1, 1.6333, 'N2636146', 1, 'en'),
(16358, 'number', 'number', 0, 0, 0.4, 'N160', 1, 'en'),
(16359, 'number of', 'number of', 0, 1, 1.3, 'N161', 1, 'en'),
(16360, 'number of times', 'number of times', 0, 1, 1.5, 'N161352', 1, 'en'),
(16361, 'of these', 'of these', 0, 1, 1.2667, 'O132', 1, 'en'),
(16362, 'of these modules', 'of these modules', 0, 1, 1.5333, 'O1325342', 1, 'en'),
(16363, 'of times', 'of times', 0, 1, 1.2667, 'O1352', 1, 'en'),
(16364, 'of times they', 'of times they', 0, 1, 1.4333, 'O13523', 1, 'en'),
(16365, 'older', 'older', 0, 0, 0.3333, 'O436', 1, 'en'),
(16366, 'older articles', 'older articles', 0, 1, 1.4667, 'O4363242', 1, 'en'),
(16367, 'older articles which', 'older articles which', 0, 1, 1.6667, 'O4363242', 1, 'en'),
(16368, 'on blog', 'on blog', 0, 1, 1.2333, 'O5142', 1, 'en'),
(16369, 'on blog roll', 'on blog roll', 0, 1, 1.4, 'O514264', 1, 'en'),
(16370, 'on the edit', 'on the edit', 0, 1, 1.3667, 'O530', 1, 'en'),
(16371, 'on the number', 'on the number', 0, 1, 1.4333, 'O53516', 1, 'en'),
(16372, 'on the top', 'on the top', 0, 1, 1.3333, 'O531', 1, 'en'),
(16373, 'on your articles', 'on your articles', 0, 1, 1.5333, 'O563242', 1, 'en'),
(16374, 'options which', 'options which', 0, 1, 1.4333, 'O1352', 1, 'en'),
(16375, 'options which you', 'options which you', 0, 1, 1.5667, 'O1352', 1, 'en'),
(16376, 'other blogs', 'other blogs', 0, 1, 1.3667, 'O36142', 1, 'en'),
(16377, 'other blogs we''ve', 'other blogs we', 0, 1, 1.5667, 'O361421', 1, 'en'),
(16378, 'other modules', 'other modules', 0, 1, 1.4333, 'O365342', 1, 'en'),
(16379, 'other modules you', 'other modules you', 0, 1, 1.5667, 'O365342', 1, 'en'),
(16380, 'out', 'out', 1, 0, 0.025, 'O300', 1, 'en'),
(16381, 'out articles', 'out articles', 0, 1, 1.4, 'O363242', 1, 'en'),
(16382, 'out articles by', 'out articles by', 0, 1, 1.5, 'O3632421', 1, 'en'),
(16383, 'over', 'over', 1, 0, 0.0333, 'O160', 1, 'en'),
(16384, 'over a', 'over a', 0, 1, 1.2, 'O160', 1, 'en'),
(16385, 'over a module', 'over a module', 0, 1, 1.4333, 'O16534', 1, 'en'),
(16386, 'popular', 'popular', 0, 0, 0.4667, 'P460', 1, 'en'),
(16387, 'popular tags', 'popular tags', 0, 1, 1.4, 'P4632', 1, 'en'),
(16388, 'popular tags which', 'popular tags which', 0, 1, 1.6, 'P4632', 1, 'en'),
(16389, 'posts', 'posts', 0, 0, 0.3333, 'P232', 1, 'en'),
(16390, 'posts in', 'posts in', 0, 1, 1.2667, 'P2325', 1, 'en'),
(16391, 'posts in a', 'posts in a', 0, 1, 1.3333, 'P2325', 1, 'en'),
(16392, 'posts which', 'posts which', 0, 1, 1.3667, 'P232', 1, 'en'),
(16393, 'posts which lists', 'posts which lists', 0, 1, 1.5667, 'P2324232', 1, 'en'),
(16394, 'preconfigured', 'preconfigured', 0, 0, 0.8667, 'P6251263', 1, 'en'),
(16395, 'preconfigured these', 'preconfigured these', 0, 1, 1.6333, 'P62512632', 1, 'en'),
(16396, 'preconfigured these include', 'preconfigured these include', 0, 1, 1.9, 'P625126325243', 1, 'en'),
(16397, 'put', 'put', 0, 0, 0.2, 'P300', 1, 'en'),
(16398, 'put in', 'put in', 0, 1, 1.2, 'P350', 1, 'en'),
(16399, 'put in two', 'put in two', 0, 1, 1.3333, 'P353', 1, 'en'),
(16400, 'read', 'read', 0, 0, 0.2667, 'R300', 1, 'en'),
(16401, 'read older', 'read older', 0, 1, 1.3333, 'R3436', 1, 'en'),
(16402, 'read older articles', 'read older articles', 0, 1, 1.6333, 'R34363242', 1, 'en'),
(16403, 'read posts', 'read posts', 0, 1, 1.3333, 'R31232', 1, 'en'),
(16404, 'read posts which', 'read posts which', 0, 1, 1.5333, 'R31232', 1, 'en'),
(16405, 'read your', 'read your', 0, 1, 1.3, 'R360', 1, 'en'),
(16406, 'read your posts', 'read your posts', 0, 1, 1.5, 'R361232', 1, 'en'),
(16407, 'reader', 'reader', 0, 0, 0.4, 'R360', 1, 'en'),
(16408, 'reader popular', 'reader popular', 0, 1, 1.4667, 'R36146', 1, 'en'),
(16409, 'reader popular tags', 'reader popular tags', 0, 1, 1.6333, 'R3614632', 1, 'en'),
(16410, 'readers', 'readers', 0, 0, 0.4667, 'R362', 1, 'en'),
(16411, 'readers to', 'readers to', 0, 1, 1.3333, 'R3623', 1, 'en'),
(16412, 'readers to read', 'readers to read', 0, 1, 1.5, 'R362363', 1, 'en'),
(16413, 'roll on', 'roll on', 0, 1, 1.2333, 'R450', 1, 'en'),
(16414, 'roll on the', 'roll on the', 0, 1, 1.3667, 'R453', 1, 'en'),
(16415, 'roll which', 'roll which', 0, 1, 1.3333, 'R420', 1, 'en'),
(16416, 'roll which lets', 'roll which lets', 0, 1, 1.5, 'R42432', 1, 'en'),
(16417, 'save and', 'save and', 0, 1, 1.2667, 'S153', 1, 'en'),
(16418, 'save and close', 'save and close', 0, 1, 1.4667, 'S153242', 1, 'en'),
(16419, 'screen', 'screen', 0, 0, 0.4, 'S650', 1, 'en'),
(16420, 'screen for', 'screen for', 0, 1, 1.3333, 'S6516', 1, 'en'),
(16421, 'screen for that', 'screen for that', 0, 1, 1.5, 'S65163', 1, 'en'),
(16422, 'site administrator moving', 'site administrator moving', 0, 1, 1.8333, 'S35236365152', 1, 'en'),
(16423, 'site has', 'site has', 0, 1, 1.2667, 'S320', 1, 'en'),
(16424, 'site has some', 'site has some', 0, 1, 1.4333, 'S325', 1, 'en'),
(16425, 'site you may', 'site you may', 0, 1, 1.4, 'S350', 1, 'en'),
(16426, 'some commonly', 'some commonly', 0, 1, 1.4333, 'S5254', 1, 'en'),
(16427, 'some commonly used', 'some commonly used', 0, 1, 1.6, 'S525423', 1, 'en'),
(16428, 'sure', 'sure', 0, 0, 0.2667, 'S600', 1, 'en'),
(16429, 'sure to', 'sure to', 0, 1, 1.2333, 'S630', 1, 'en'),
(16430, 'sure to save', 'sure to save', 0, 1, 1.4, 'S6321', 1, 'en'),
(16431, 'syndicate', 'syndicate', 0, 0, 0.6, 'S5323', 1, 'en'),
(16432, 'syndicate which', 'syndicate which', 0, 1, 1.5, 'S53232', 1, 'en'),
(16433, 'syndicate which allows', 'syndicate which allows', 0, 1, 1.7333, 'S5323242', 1, 'en'),
(16434, 'tag in', 'tag in', 0, 1, 1.2, 'T250', 1, 'en'),
(16435, 'tag in the', 'tag in the', 0, 1, 1.3333, 'T253', 1, 'en'),
(16436, 'tagging', 'tagging', 0, 0, 0.4667, 'T252', 1, 'en'),
(16437, 'tagging on', 'tagging on', 0, 1, 1.3333, 'T2525', 1, 'en'),
(16438, 'tagging on your', 'tagging on your', 0, 1, 1.5, 'T25256', 1, 'en'),
(16439, 'tags', 'tags', 0, 0, 0.2667, 'T200', 1, 'en'),
(16440, 'tags field', 'tags field', 0, 1, 1.3333, 'T2143', 1, 'en'),
(16441, 'tags field when', 'tags field when', 0, 1, 1.5, 'T21435', 1, 'en'),
(16442, 'tags which', 'tags which', 0, 1, 1.3333, 'T200', 1, 'en'),
(16443, 'tags which will', 'tags which will', 0, 1, 1.5, 'T240', 1, 'en'),
(16444, 'take', 'take', 0, 0, 0.2667, 'T200', 1, 'en'),
(16445, 'take you', 'take you', 0, 1, 1.2667, 'T200', 1, 'en'),
(16446, 'take you to', 'take you to', 0, 1, 1.3667, 'T230', 1, 'en'),
(16447, 'that module', 'that module', 0, 1, 1.3667, 'T534', 1, 'en'),
(16448, 'that module always', 'that module always', 0, 1, 1.6, 'T5342', 1, 'en');
INSERT INTO `feed_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(16449, 'that you can', 'that you can', 0, 1, 1.4, 'T250', 1, 'en'),
(16450, 'the edit', 'the edit', 0, 1, 1.2667, 'T000', 1, 'en'),
(16451, 'the edit icon', 'the edit icon', 0, 1, 1.4333, 'T250', 1, 'en'),
(16452, 'the image', 'the image', 0, 1, 1.3, 'T520', 1, 'en'),
(16453, 'the image beneath', 'the image beneath', 0, 1, 1.5667, 'T52153', 1, 'en'),
(16454, 'the image blog', 'the image blog', 0, 1, 1.4667, 'T52142', 1, 'en'),
(16455, 'the joomla extensions', 'the joomla extensions', 0, 1, 1.7, 'T254235252', 1, 'en'),
(16456, 'the menu', 'the menu', 0, 1, 1.2667, 'T500', 1, 'en'),
(16457, 'the menu this', 'the menu this', 0, 1, 1.4333, 'T532', 1, 'en'),
(16458, 'the module', 'the module', 0, 1, 1.3333, 'T534', 1, 'en'),
(16459, 'the module manager', 'the module manager', 0, 1, 1.6, 'T534526', 1, 'en'),
(16460, 'the number', 'the number', 0, 1, 1.3333, 'T516', 1, 'en'),
(16461, 'the number of', 'the number of', 0, 1, 1.4333, 'T5161', 1, 'en'),
(16462, 'the tags', 'the tags', 0, 1, 1.2667, 'T200', 1, 'en'),
(16463, 'the tags field', 'the tags field', 0, 1, 1.4667, 'T2143', 1, 'en'),
(16464, 'these', 'these', 1, 0, 0.0417, 'T200', 1, 'en'),
(16465, 'these include', 'these include', 0, 1, 1.4333, 'T25243', 1, 'en'),
(16466, 'these include image', 'these include image', 0, 1, 1.6333, 'T2524352', 1, 'en'),
(16467, 'these modules', 'these modules', 0, 1, 1.4333, 'T25342', 1, 'en'),
(16468, 'these modules has', 'these modules has', 0, 1, 1.5667, 'T25342', 1, 'en'),
(16469, 'they', 'they', 1, 0, 0.0333, 'T000', 1, 'en'),
(16470, 'they have', 'they have', 0, 1, 1.3, 'T100', 1, 'en'),
(16471, 'they have been', 'they have been', 0, 1, 1.4667, 'T150', 1, 'en'),
(16472, 'this most', 'this most', 0, 1, 1.3, 'T2523', 1, 'en'),
(16473, 'this most read', 'this most read', 0, 1, 1.4667, 'T252363', 1, 'en'),
(16474, 'times', 'times', 1, 0, 0.0417, 'T520', 1, 'en'),
(16475, 'times they', 'times they', 0, 1, 1.3333, 'T523', 1, 'en'),
(16476, 'times they have', 'times they have', 0, 1, 1.5, 'T5231', 1, 'en'),
(16477, 'to add more', 'to add more', 0, 1, 1.3667, 'T560', 1, 'en'),
(16478, 'to an', 'to an', 0, 1, 1.1667, 'T500', 1, 'en'),
(16479, 'to an edit', 'to an edit', 0, 1, 1.3333, 'T530', 1, 'en'),
(16480, 'to change the', 'to change the', 0, 1, 1.4333, 'T2523', 1, 'en'),
(16481, 'to change them', 'to change them', 0, 1, 1.4667, 'T25235', 1, 'en'),
(16482, 'to other', 'to other', 0, 1, 1.2667, 'T600', 1, 'en'),
(16483, 'to other blogs', 'to other blogs', 0, 1, 1.4667, 'T6142', 1, 'en'),
(16484, 'to read', 'to read', 0, 1, 1.2333, 'T630', 1, 'en'),
(16485, 'to read your', 'to read your', 0, 1, 1.4, 'T636', 1, 'en'),
(16486, 'to save', 'to save', 0, 1, 1.2333, 'T210', 1, 'en'),
(16487, 'to save and', 'to save and', 0, 1, 1.3667, 'T2153', 1, 'en'),
(16488, 'to update', 'to update', 0, 1, 1.3, 'T130', 1, 'en'),
(16489, 'to update this', 'to update this', 0, 1, 1.4667, 'T132', 1, 'en'),
(16490, 'two', 'two', 0, 0, 0.2, 'T000', 1, 'en'),
(16491, 'two examples', 'two examples', 0, 1, 1.4, 'T25142', 1, 'en'),
(16492, 'two examples but', 'two examples but', 0, 1, 1.5333, 'T2514213', 1, 'en'),
(16493, 'update', 'update', 0, 0, 0.4, 'U130', 1, 'en'),
(16494, 'update this', 'update this', 0, 1, 1.3667, 'U132', 1, 'en'),
(16495, 'update this most', 'update this most', 0, 1, 1.5333, 'U132523', 1, 'en'),
(16496, 'use', 'use', 1, 0, 0.025, 'U200', 1, 'en'),
(16497, 'use tagging', 'use tagging', 0, 1, 1.3667, 'U23252', 1, 'en'),
(16498, 'use tagging on', 'use tagging on', 0, 1, 1.4667, 'U232525', 1, 'en'),
(16499, 'used modules', 'used modules', 0, 1, 1.4, 'U235342', 1, 'en'),
(16500, 'used modules already', 'used modules already', 0, 1, 1.6667, 'U235342463', 1, 'en'),
(16501, 'want to add', 'want to add', 0, 1, 1.3667, 'W530', 1, 'en'),
(16502, 'want to change', 'want to change', 0, 1, 1.4667, 'W53252', 1, 'en'),
(16503, 'we''ve', 'we', 0, 0, 0.3333, 'W100', 1, 'en'),
(16504, 'we''ve put', 'we put', 0, 1, 1.3, 'W130', 1, 'en'),
(16505, 'we''ve put in', 'we put in', 0, 1, 1.4, 'W135', 1, 'en'),
(16506, 'when editing', 'when editing', 0, 1, 1.4, 'W5352', 1, 'en'),
(16507, 'when editing each', 'when editing each', 0, 1, 1.5667, 'W5352', 1, 'en'),
(16508, 'when you are', 'when you are', 0, 1, 1.4, 'W560', 1, 'en'),
(16509, 'which allows', 'which allows', 0, 1, 1.4, 'W242', 1, 'en'),
(16510, 'which allows your', 'which allows your', 0, 1, 1.5667, 'W2426', 1, 'en'),
(16511, 'which holds', 'which holds', 0, 1, 1.3667, 'W2432', 1, 'en'),
(16512, 'which holds the', 'which holds the', 0, 1, 1.5, 'W24323', 1, 'en'),
(16513, 'which lets', 'which lets', 0, 1, 1.3333, 'W2432', 1, 'en'),
(16514, 'which lets you', 'which lets you', 0, 1, 1.4667, 'W2432', 1, 'en'),
(16515, 'which lists', 'which lists', 0, 1, 1.3667, 'W24232', 1, 'en'),
(16516, 'which lists articles', 'which lists articles', 0, 1, 1.6667, 'W2423263242', 1, 'en'),
(16517, 'which lists out', 'which lists out', 0, 1, 1.5, 'W242323', 1, 'en'),
(16518, 'which will', 'which will', 0, 1, 1.3333, 'W240', 1, 'en'),
(16519, 'which will appear', 'which will appear', 0, 1, 1.5667, 'W2416', 1, 'en'),
(16520, 'which you', 'which you', 0, 1, 1.3, 'W200', 1, 'en'),
(16521, 'which you can', 'which you can', 0, 1, 1.4333, 'W250', 1, 'en'),
(16522, 'will appear', 'will appear', 0, 1, 1.3667, 'W416', 1, 'en'),
(16523, 'will appear if', 'will appear if', 0, 1, 1.4667, 'W4161', 1, 'en'),
(16524, 'will take', 'will take', 0, 1, 1.3, 'W432', 1, 'en'),
(16525, 'will take you', 'will take you', 0, 1, 1.4333, 'W432', 1, 'en'),
(16526, 'with in', 'with in', 0, 1, 1.2333, 'W350', 1, 'en'),
(16527, 'with in the', 'with in the', 0, 1, 1.3667, 'W353', 1, 'en'),
(16528, 'you are logged', 'you are logged', 0, 1, 1.4667, 'Y6423', 1, 'en'),
(16529, 'you can experiment', 'you can experiment', 0, 1, 1.6, 'Y2521653', 1, 'en'),
(16530, 'you can find', 'you can find', 0, 1, 1.4, 'Y25153', 1, 'en'),
(16531, 'you can incorporate', 'you can incorporate', 0, 1, 1.6333, 'Y2526163', 1, 'en'),
(16532, 'you develop', 'you develop', 0, 1, 1.3667, 'Y3141', 1, 'en'),
(16533, 'you develop your', 'you develop your', 0, 1, 1.5333, 'Y31416', 1, 'en'),
(16534, 'you edit', 'you edit', 0, 1, 1.2667, 'Y300', 1, 'en'),
(16535, 'you edit joomla', 'you edit joomla', 0, 1, 1.5, 'Y3254', 1, 'en'),
(16536, 'you link', 'you link', 0, 1, 1.2667, 'Y452', 1, 'en'),
(16537, 'you link to', 'you link to', 0, 1, 1.3667, 'Y4523', 1, 'en'),
(16538, 'you may want', 'you may want', 0, 1, 1.4, 'Y530', 1, 'en'),
(16539, 'you to', 'you to', 0, 1, 1.2, 'Y300', 1, 'en'),
(16540, 'you to an', 'you to an', 0, 1, 1.3, 'Y350', 1, 'en'),
(16541, 'you use', 'you use', 0, 1, 1.2333, 'Y200', 1, 'en'),
(16542, 'you use tagging', 'you use tagging', 0, 1, 1.5, 'Y23252', 1, 'en'),
(16543, 'you''ll', 'you', 0, 0, 0.4, 'Y400', 1, 'en'),
(16544, 'you''ll want', 'you want', 0, 1, 1.3667, 'Y453', 1, 'en'),
(16545, 'you''ll want to', 'you want to', 0, 1, 1.4667, 'Y453', 1, 'en'),
(16546, 'your articles', 'your articles', 0, 1, 1.4333, 'Y63242', 1, 'en'),
(16547, 'your articles just', 'your articles just', 0, 1, 1.6, 'Y632423', 1, 'en'),
(16548, 'your modules', 'your modules', 0, 1, 1.4, 'Y65342', 1, 'en'),
(16549, 'your mouse', 'your mouse', 0, 1, 1.3333, 'Y652', 1, 'en'),
(16550, 'your mouse over', 'your mouse over', 0, 1, 1.5, 'Y65216', 1, 'en'),
(16551, 'your posts', 'your posts', 0, 1, 1.3333, 'Y61232', 1, 'en'),
(16552, 'your posts in', 'your posts in', 0, 1, 1.4333, 'Y612325', 1, 'en'),
(16553, 'your readers', 'your readers', 0, 1, 1.4, 'Y6362', 1, 'en'),
(16554, 'your readers to', 'your readers to', 0, 1, 1.5, 'Y63623', 1, 'en'),
(16555, 'your site administrator', 'your site administrator', 0, 1, 1.7667, 'Y623523636', 1, 'en'),
(16556, 'your site as', 'your site as', 0, 1, 1.4, 'Y6232', 1, 'en'),
(16557, 'your site has', 'your site has', 0, 1, 1.4333, 'Y6232', 1, 'en'),
(16639, 'a front', 'a front', 0, 1, 1.2333, 'A1653', 1, 'en'),
(16640, 'a front end', 'a front end', 0, 1, 1.3667, 'A165353', 1, 'en'),
(16641, 'a logo', 'a logo', 0, 1, 1.2, 'A420', 1, 'en'),
(16642, 'a logo to', 'a logo to', 0, 1, 1.3, 'A423', 1, 'en'),
(16643, 'able to see', 'able to see', 0, 1, 1.3667, 'A1432', 1, 'en'),
(16644, 'about the', 'about the', 0, 1, 1.3, 'A130', 1, 'en'),
(16645, 'about the functions', 'about the functions', 0, 1, 1.6333, 'A13152352', 1, 'en'),
(16646, 'about working', 'about working', 0, 1, 1.4333, 'A136252', 1, 'en'),
(16647, 'about working with', 'about working with', 0, 1, 1.6, 'A1362523', 1, 'en'),
(16648, 'access', 'access', 0, 0, 0.4, 'A200', 1, 'en'),
(16649, 'access level', 'access level', 0, 1, 1.4, 'A2414', 1, 'en'),
(16650, 'access level to', 'access level to', 0, 1, 1.5, 'A24143', 1, 'en'),
(16651, 'add a', 'add a', 0, 1, 1.1667, 'A300', 1, 'en'),
(16652, 'add a logo', 'add a logo', 0, 1, 1.3333, 'A342', 1, 'en'),
(16653, 'administrator or', 'administrator or', 0, 1, 1.5333, 'A3523636', 1, 'en'),
(16654, 'administrator or back', 'administrator or back', 0, 1, 1.7, 'A352363612', 1, 'en'),
(16655, 'administrator separately', 'administrator separately', 0, 1, 1.8, 'A352363621634', 1, 'en'),
(16656, 'administrator separately using', 'administrator separately using', 0, 1, 2, 'A352363621634252', 1, 'en'),
(16657, 'administrator there', 'administrator there', 0, 1, 1.6333, 'A352363636', 1, 'en'),
(16658, 'administrator there are', 'administrator there are', 0, 1, 1.7667, 'A352363636', 1, 'en'),
(16659, 'administrator to', 'administrator to', 0, 1, 1.5333, 'A35236363', 1, 'en'),
(16660, 'administrator to totally', 'administrator to totally', 0, 1, 1.8, 'A352363634', 1, 'en'),
(16661, 'advanced', 'advanced', 0, 0, 0.5333, 'A31523', 1, 'en'),
(16662, 'advanced configuration', 'advanced configuration', 0, 1, 1.7333, 'A315232512635', 1, 'en'),
(16663, 'advanced configuration options', 'advanced configuration options', 0, 1, 2, 'A3152325126351352', 1, 'en'),
(16664, 'advanced work', 'advanced work', 0, 1, 1.4333, 'A3152362', 1, 'en'),
(16665, 'advanced work of', 'advanced work of', 0, 1, 1.5333, 'A31523621', 1, 'en'),
(16666, 'already seen', 'already seen', 0, 1, 1.4, 'A46325', 1, 'en'),
(16667, 'already seen you', 'already seen you', 0, 1, 1.5333, 'A46325', 1, 'en'),
(16668, 'also can', 'also can', 0, 1, 1.2667, 'A425', 1, 'en'),
(16669, 'also can save', 'also can save', 0, 1, 1.4333, 'A42521', 1, 'en'),
(16670, 'an administrator', 'an administrator', 0, 1, 1.5333, 'A53523636', 1, 'en'),
(16671, 'an administrator or', 'an administrator or', 0, 1, 1.6333, 'A53523636', 1, 'en'),
(16672, 'and an', 'and an', 0, 1, 1.2, 'A535', 1, 'en'),
(16673, 'and an administrator', 'and an administrator', 0, 1, 1.6667, 'A5353523636', 1, 'en'),
(16674, 'and commercial', 'and commercial', 0, 1, 1.4667, 'A5325624', 1, 'en'),
(16675, 'and commercial templates', 'and commercial templates', 0, 1, 1.8, 'A5325624351432', 1, 'en'),
(16676, 'and deciding', 'and deciding', 0, 1, 1.4, 'A532352', 1, 'en'),
(16677, 'and deciding what', 'and deciding what', 0, 1, 1.5667, 'A5323523', 1, 'en'),
(16678, 'and get', 'and get', 0, 1, 1.2333, 'A5323', 1, 'en'),
(16679, 'and get help', 'and get help', 0, 1, 1.4, 'A532341', 1, 'en'),
(16680, 'and other', 'and other', 0, 1, 1.3, 'A536', 1, 'en'),
(16681, 'and other items', 'and other items', 0, 1, 1.5, 'A536352', 1, 'en'),
(16682, 'and password', 'and password', 0, 1, 1.4, 'A531263', 1, 'en'),
(16683, 'and password that', 'and password that', 0, 1, 1.5667, 'A531263', 1, 'en'),
(16684, 'and tag', 'and tag', 0, 1, 1.2333, 'A532', 1, 'en'),
(16685, 'and tag line', 'and tag line', 0, 1, 1.4, 'A53245', 1, 'en'),
(16686, 'and then', 'and then', 0, 1, 1.2667, 'A535', 1, 'en'),
(16687, 'and then go', 'and then go', 0, 1, 1.3667, 'A5352', 1, 'en'),
(16688, 'and to', 'and to', 0, 1, 1.2, 'A530', 1, 'en'),
(16689, 'and to add', 'and to add', 0, 1, 1.3333, 'A530', 1, 'en'),
(16690, 'are help', 'are help', 0, 1, 1.2667, 'A641', 1, 'en'),
(16691, 'are help buttons', 'are help buttons', 0, 1, 1.5333, 'A641352', 1, 'en'),
(16692, 'are looking', 'are looking', 0, 1, 1.3667, 'A64252', 1, 'en'),
(16693, 'are looking at', 'are looking at', 0, 1, 1.4667, 'A642523', 1, 'en'),
(16694, 'are many', 'are many', 0, 1, 1.2667, 'A650', 1, 'en'),
(16695, 'are many free', 'are many free', 0, 1, 1.4333, 'A6516', 1, 'en'),
(16696, 'are some', 'are some', 0, 1, 1.2667, 'A625', 1, 'en'),
(16697, 'are some basic', 'are some basic', 0, 1, 1.4667, 'A62512', 1, 'en'),
(16698, 'article or', 'article or', 0, 1, 1.3333, 'A63246', 1, 'en'),
(16699, 'article or other', 'article or other', 0, 1, 1.5333, 'A6324636', 1, 'en'),
(16700, 'articles or', 'articles or', 0, 1, 1.3667, 'A632426', 1, 'en'),
(16701, 'articles or weblinks', 'articles or weblinks', 0, 1, 1.6667, 'A6324261452', 1, 'en'),
(16702, 'as published', 'as published', 0, 1, 1.4, 'A21423', 1, 'en'),
(16703, 'as published or', 'as published or', 0, 1, 1.5, 'A214236', 1, 'en'),
(16704, 'as setting', 'as setting', 0, 1, 1.3333, 'A2352', 1, 'en'),
(16705, 'as setting up', 'as setting up', 0, 1, 1.4333, 'A23521', 1, 'en'),
(16706, 'as you have', 'as you have', 0, 1, 1.3667, 'A210', 1, 'en'),
(16707, 'at now', 'at now', 0, 1, 1.2, 'A350', 1, 'en'),
(16708, 'at now and', 'at now and', 0, 1, 1.3333, 'A353', 1, 'en'),
(16709, 'available for', 'available for', 0, 1, 1.4333, 'A141416', 1, 'en'),
(16710, 'available for joomla', 'available for joomla', 0, 1, 1.6667, 'A141416254', 1, 'en'),
(16711, 'back', 'back', 0, 0, 0.2667, 'B200', 1, 'en'),
(16712, 'back end', 'back end', 0, 1, 1.2667, 'B253', 1, 'en'),
(16713, 'back end which', 'back end which', 0, 1, 1.4667, 'B2532', 1, 'en'),
(16714, 'basic', 'basic', 0, 0, 0.3333, 'B200', 1, 'en'),
(16715, 'basic tips', 'basic tips', 0, 1, 1.3333, 'B2312', 1, 'en'),
(16716, 'basic tips for', 'basic tips for', 0, 1, 1.4667, 'B231216', 1, 'en'),
(16717, 'browser', 'browser', 0, 0, 0.4667, 'B626', 1, 'en'),
(16718, 'browser title', 'browser title', 0, 1, 1.4333, 'B62634', 1, 'en'),
(16719, 'browser title default', 'browser title default', 0, 1, 1.7, 'B626343143', 1, 'en'),
(16720, 'but you', 'but you', 0, 1, 1.2333, 'B300', 1, 'en'),
(16721, 'but you will', 'but you will', 0, 1, 1.4, 'B340', 1, 'en'),
(16722, 'buttons', 'buttons', 0, 0, 0.4667, 'B352', 1, 'en'),
(16723, 'buttons on', 'buttons on', 0, 1, 1.3333, 'B3525', 1, 'en'),
(16724, 'buttons on every', 'buttons on every', 0, 1, 1.5333, 'B352516', 1, 'en'),
(16725, 'can control', 'can control', 0, 1, 1.3667, 'C525364', 1, 'en'),
(16726, 'can control who', 'can control who', 0, 1, 1.5, 'C525364', 1, 'en'),
(16727, 'can learn', 'can learn', 0, 1, 1.3, 'C5465', 1, 'en'),
(16728, 'can learn much', 'can learn much', 0, 1, 1.4667, 'C54652', 1, 'en'),
(16729, 'can save', 'can save', 0, 1, 1.2667, 'C521', 1, 'en'),
(16730, 'can save it', 'can save it', 0, 1, 1.3667, 'C5213', 1, 'en'),
(16731, 'can see', 'can see', 0, 1, 1.2333, 'C520', 1, 'en'),
(16732, 'can see different', 'can see different', 0, 1, 1.5667, 'C5231653', 1, 'en'),
(16733, 'can see them', 'can see them', 0, 1, 1.4, 'C5235', 1, 'en'),
(16734, 'change the look', 'change the look', 0, 1, 1.5, 'C52342', 1, 'en'),
(16735, 'change your', 'change your', 0, 1, 1.3667, 'C526', 1, 'en'),
(16736, 'change your site', 'change your site', 0, 1, 1.5333, 'C52623', 1, 'en'),
(16737, 'click on extensions', 'click on extensions', 0, 1, 1.6333, 'C425235252', 1, 'en'),
(16738, 'click on the', 'click on the', 0, 1, 1.4, 'C4253', 1, 'en'),
(16739, 'click site', 'click site', 0, 1, 1.3333, 'C423', 1, 'en'),
(16740, 'click site settings', 'click site settings', 0, 1, 1.6333, 'C4232352', 1, 'en'),
(16741, 'commercial', 'commercial', 0, 0, 0.6667, 'C5624', 1, 'en'),
(16742, 'commercial templates', 'commercial templates', 0, 1, 1.6667, 'C5624351432', 1, 'en'),
(16743, 'commercial templates available', 'commercial templates available', 0, 1, 2, 'C56243514321414', 1, 'en'),
(16744, 'configuration', 'configuration', 0, 0, 0.8667, 'C512635', 1, 'en'),
(16745, 'configuration options', 'configuration options', 0, 1, 1.7, 'C5126351352', 1, 'en'),
(16746, 'configuration options are', 'configuration options are', 0, 1, 1.8333, 'C51263513526', 1, 'en'),
(16747, 'content', 'content', 0, 0, 0.4667, 'C5353', 1, 'en'),
(16748, 'content you', 'content you', 0, 1, 1.3667, 'C5353', 1, 'en'),
(16749, 'content you also', 'content you also', 0, 1, 1.5333, 'C535342', 1, 'en'),
(16750, 'control who', 'control who', 0, 1, 1.3667, 'C5364', 1, 'en'),
(16751, 'control who can', 'control who can', 0, 1, 1.5, 'C536425', 1, 'en'),
(16752, 'creating', 'creating', 0, 0, 0.5333, 'C6352', 1, 'en'),
(16753, 'creating your', 'creating your', 0, 1, 1.4333, 'C63526', 1, 'en'),
(16754, 'creating your site', 'creating your site', 0, 1, 1.6, 'C6352623', 1, 'en'),
(16755, 'deciding', 'deciding', 0, 0, 0.5333, 'D2352', 1, 'en'),
(16756, 'deciding what', 'deciding what', 0, 1, 1.4333, 'D23523', 1, 'en'),
(16757, 'deciding what modules', 'deciding what modules', 0, 1, 1.7, 'D235235342', 1, 'en'),
(16758, 'default', 'default', 0, 0, 0.4667, 'D143', 1, 'en'),
(16759, 'default email', 'default email', 0, 1, 1.4333, 'D14354', 1, 'en'),
(16760, 'default email and', 'default email and', 0, 1, 1.5667, 'D1435453', 1, 'en'),
(16761, 'description browser', 'description browser', 0, 1, 1.6333, 'D261351626', 1, 'en'),
(16762, 'description browser title', 'description browser title', 0, 1, 1.8333, 'D26135162634', 1, 'en'),
(16763, 'detailed', 'detailed', 0, 0, 0.5333, 'D430', 1, 'en'),
(16764, 'detailed information', 'detailed information', 0, 1, 1.6667, 'D43516535', 1, 'en'),
(16765, 'detailed information about', 'detailed information about', 0, 1, 1.8667, 'D4351653513', 1, 'en'),
(16766, 'different', 'different', 0, 0, 0.6, 'D1653', 1, 'en'),
(16767, 'different parts', 'different parts', 0, 1, 1.5, 'D16531632', 1, 'en'),
(16768, 'different parts of', 'different parts of', 0, 1, 1.6, 'D165316321', 1, 'en'),
(16769, 'do', 'do', 0, 0, 0.1333, 'D000', 1, 'en'),
(16770, 'do is', 'do is', 0, 1, 1.1667, 'D200', 1, 'en'),
(16771, 'do is change', 'do is change', 0, 1, 1.4, 'D252', 1, 'en'),
(16772, 'do the', 'do the', 0, 1, 1.2, 'D000', 1, 'en'),
(16773, 'do the more', 'do the more', 0, 1, 1.3667, 'D560', 1, 'en'),
(16774, 'do this', 'do this', 0, 1, 1.2333, 'D200', 1, 'en'),
(16775, 'do this click', 'do this click', 0, 1, 1.4333, 'D242', 1, 'en'),
(16776, 'documentation', 'documentation', 0, 0, 0.8667, 'D2535', 1, 'en'),
(16777, 'documentation site', 'documentation site', 0, 1, 1.6, 'D253523', 1, 'en'),
(16778, 'documentation site and', 'documentation site and', 0, 1, 1.7333, 'D25352353', 1, 'en'),
(16779, 'email', 'email', 0, 0, 0.3333, 'E540', 1, 'en'),
(16780, 'email and', 'email and', 0, 1, 1.3, 'E5453', 1, 'en'),
(16781, 'email and other', 'email and other', 0, 1, 1.5, 'E54536', 1, 'en'),
(16782, 'end', 'end', 0, 0, 0.2, 'E530', 1, 'en'),
(16783, 'end that', 'end that', 0, 1, 1.2667, 'E530', 1, 'en'),
(16784, 'end that you', 'end that you', 0, 1, 1.4, 'E530', 1, 'en'),
(16785, 'end which', 'end which', 0, 1, 1.3, 'E532', 1, 'en'),
(16786, 'end which is', 'end which is', 0, 1, 1.4, 'E532', 1, 'en'),
(16787, 'every', 'every', 0, 0, 0.3333, 'E160', 1, 'en'),
(16788, 'every page', 'every page', 0, 1, 1.3333, 'E1612', 1, 'en'),
(16789, 'every page that', 'every page that', 0, 1, 1.5, 'E16123', 1, 'en'),
(16790, 'extensions manager', 'extensions manager', 0, 1, 1.6, 'E235252526', 1, 'en'),
(16791, 'extensions manager and', 'extensions manager and', 0, 1, 1.7333, 'E23525252653', 1, 'en'),
(16792, 'extensions menu', 'extensions menu', 0, 1, 1.5, 'E2352525', 1, 'en'),
(16793, 'extensions menu click', 'extensions menu click', 0, 1, 1.7, 'E2352525242', 1, 'en'),
(16794, 'first', 'first', 0, 0, 0.3333, 'F623', 1, 'en'),
(16795, 'first things', 'first things', 0, 1, 1.4, 'F62352', 1, 'en'),
(16796, 'first things you', 'first things you', 0, 1, 1.5333, 'F62352', 1, 'en'),
(16797, 'for joomla', 'for joomla', 0, 1, 1.3333, 'F6254', 1, 'en'),
(16798, 'for joomla as', 'for joomla as', 0, 1, 1.4333, 'F62542', 1, 'en'),
(16799, 'for working', 'for working', 0, 1, 1.3667, 'F6252', 1, 'en'),
(16800, 'for working on', 'for working on', 0, 1, 1.4667, 'F62525', 1, 'en'),
(16801, 'forums', 'forums', 0, 0, 0.4, 'F652', 1, 'en'),
(16802, 'forums in', 'forums in', 0, 1, 1.3, 'F6525', 1, 'en'),
(16803, 'forums in the', 'forums in the', 0, 1, 1.4333, 'F65253', 1, 'en'),
(16804, 'free', 'free', 0, 0, 0.2667, 'F600', 1, 'en'),
(16805, 'free and', 'free and', 0, 1, 1.2667, 'F653', 1, 'en'),
(16806, 'free and commercial', 'free and commercial', 0, 1, 1.6333, 'F65325624', 1, 'en'),
(16807, 'from', 'from', 1, 0, 0.0333, 'F650', 1, 'en'),
(16808, 'from other', 'from other', 0, 1, 1.3333, 'F6536', 1, 'en'),
(16809, 'from other users', 'from other users', 0, 1, 1.5333, 'F6536262', 1, 'en'),
(16810, 'from the', 'from the', 0, 1, 1.2667, 'F653', 1, 'en'),
(16811, 'from the joomla', 'from the joomla', 0, 1, 1.5, 'F653254', 1, 'en'),
(16812, 'front', 'front', 0, 0, 0.3333, 'F653', 1, 'en'),
(16813, 'front end', 'front end', 0, 1, 1.3, 'F65353', 1, 'en'),
(16814, 'front end that', 'front end that', 0, 1, 1.4667, 'F65353', 1, 'en'),
(16815, 'functions', 'functions', 0, 0, 0.6, 'F52352', 1, 'en'),
(16816, 'functions on', 'functions on', 0, 1, 1.4, 'F523525', 1, 'en'),
(16817, 'functions on that', 'functions on that', 0, 1, 1.5667, 'F5235253', 1, 'en'),
(16818, 'get', 'get', 1, 0, 0.025, 'G300', 1, 'en'),
(16819, 'get help', 'get help', 0, 1, 1.2667, 'G341', 1, 'en'),
(16820, 'get help from', 'get help from', 0, 1, 1.4333, 'G34165', 1, 'en'),
(16821, 'go to', 'go to', 0, 1, 1.1667, 'G300', 1, 'en'),
(16822, 'go to the', 'go to the', 0, 1, 1.3, 'G300', 1, 'en'),
(16823, 'has a', 'has a', 0, 1, 1.1667, 'H200', 1, 'en'),
(16824, 'has a front', 'has a front', 0, 1, 1.3667, 'H21653', 1, 'en'),
(16825, 'have already', 'have already', 0, 1, 1.4, 'H1463', 1, 'en'),
(16826, 'have already seen', 'have already seen', 0, 1, 1.5667, 'H146325', 1, 'en'),
(16827, 'help', 'help', 0, 0, 0.2667, 'H410', 1, 'en'),
(16828, 'help buttons', 'help buttons', 0, 1, 1.4, 'H41352', 1, 'en'),
(16829, 'help buttons on', 'help buttons on', 0, 1, 1.5, 'H413525', 1, 'en'),
(16830, 'help from', 'help from', 0, 1, 1.3, 'H4165', 1, 'en'),
(16831, 'help from other', 'help from other', 0, 1, 1.5, 'H416536', 1, 'en'),
(16832, 'here', 'here', 0, 0, 0.2667, 'H600', 1, 'en'),
(16833, 'here are', 'here are', 0, 1, 1.2667, 'H600', 1, 'en'),
(16834, 'here are some', 'here are some', 0, 1, 1.4333, 'H625', 1, 'en'),
(16835, 'if it', 'if it', 0, 1, 1.1667, 'I130', 1, 'en'),
(16836, 'if it is', 'if it is', 0, 1, 1.2667, 'I132', 1, 'en'),
(16837, 'in the administrator', 'in the administrator', 0, 1, 1.6667, 'I53523636', 1, 'en'),
(16838, 'in the extensions', 'in the extensions', 0, 1, 1.5667, 'I53235252', 1, 'en'),
(16839, 'in users', 'in users', 0, 1, 1.2667, 'I5262', 1, 'en'),
(16840, 'in users can', 'in users can', 0, 1, 1.4, 'I52625', 1, 'en'),
(16841, 'information about', 'information about', 0, 1, 1.5667, 'I51653513', 1, 'en'),
(16842, 'information about the', 'information about the', 0, 1, 1.7, 'I51653513', 1, 'en'),
(16843, 'install tab', 'install tab', 0, 1, 1.3667, 'I523431', 1, 'en'),
(16844, 'install tab there', 'install tab there', 0, 1, 1.5667, 'I52343136', 1, 'en'),
(16845, 'is change', 'is change', 0, 1, 1.3, 'I252', 1, 'en'),
(16846, 'is change the', 'is change the', 0, 1, 1.4333, 'I2523', 1, 'en'),
(16847, 'is unpublished', 'is unpublished', 0, 1, 1.4667, 'I251423', 1, 'en'),
(16848, 'is unpublished site', 'is unpublished site', 0, 1, 1.6333, 'I25142323', 1, 'en'),
(16849, 'is where', 'is where', 0, 1, 1.2667, 'I260', 1, 'en'),
(16850, 'is where you', 'is where you', 0, 1, 1.4, 'I260', 1, 'en'),
(16851, 'it as', 'it as', 0, 1, 1.1667, 'I320', 1, 'en'),
(16852, 'it as published', 'it as published', 0, 1, 1.5, 'I321423', 1, 'en'),
(16853, 'it but', 'it but', 0, 1, 1.2, 'I313', 1, 'en'),
(16854, 'it but you', 'it but you', 0, 1, 1.3333, 'I313', 1, 'en'),
(16855, 'it is', 'it is', 0, 1, 1.1667, 'I320', 1, 'en'),
(16856, 'it is unpublished', 'it is unpublished', 0, 1, 1.5667, 'I3251423', 1, 'en'),
(16857, 'items', 'items', 0, 0, 0.3333, 'I352', 1, 'en'),
(16858, 'items click', 'items click', 0, 1, 1.3667, 'I35242', 1, 'en'),
(16859, 'items click site', 'items click site', 0, 1, 1.5333, 'I352423', 1, 'en'),
(16860, 'joomla as', 'joomla as', 0, 1, 1.3, 'J542', 1, 'en'),
(16861, 'joomla as you', 'joomla as you', 0, 1, 1.4333, 'J542', 1, 'en'),
(16862, 'joomla documentation', 'joomla documentation', 0, 1, 1.6667, 'J5432535', 1, 'en'),
(16863, 'joomla documentation site', 'joomla documentation site', 0, 1, 1.8333, 'J543253523', 1, 'en'),
(16864, 'joomla forums', 'joomla forums', 0, 1, 1.4333, 'J541652', 1, 'en'),
(16865, 'joomla forums in', 'joomla forums in', 0, 1, 1.5333, 'J5416525', 1, 'en'),
(16866, 'joomla from', 'joomla from', 0, 1, 1.3667, 'J54165', 1, 'en'),
(16867, 'joomla from the', 'joomla from the', 0, 1, 1.5, 'J541653', 1, 'en'),
(16868, 'joomla has', 'joomla has', 0, 1, 1.3333, 'J542', 1, 'en'),
(16869, 'joomla has a', 'joomla has a', 0, 1, 1.4, 'J542', 1, 'en'),
(16870, 'kind', 'kind', 0, 0, 0.2667, 'K530', 1, 'en'),
(16871, 'kind of', 'kind of', 0, 1, 1.2333, 'K531', 1, 'en'),
(16872, 'kind of content', 'kind of content', 0, 1, 1.5, 'K53125353', 1, 'en'),
(16873, 'learn', 'learn', 0, 0, 0.3333, 'L650', 1, 'en'),
(16874, 'learn much', 'learn much', 0, 1, 1.3333, 'L652', 1, 'en'),
(16875, 'learn much more', 'learn much more', 0, 1, 1.5, 'L65256', 1, 'en'),
(16876, 'level', 'level', 0, 0, 0.3333, 'L140', 1, 'en'),
(16877, 'level to', 'level to', 0, 1, 1.2667, 'L143', 1, 'en'),
(16878, 'level to registered', 'level to registered', 0, 1, 1.6333, 'L14362363', 1, 'en'),
(16879, 'line', 'line', 0, 0, 0.2667, 'L500', 1, 'en'),
(16880, 'line and', 'line and', 0, 1, 1.2667, 'L530', 1, 'en'),
(16881, 'line and to', 'line and to', 0, 1, 1.3667, 'L530', 1, 'en'),
(16882, 'logged in users', 'logged in users', 0, 1, 1.5, 'L235262', 1, 'en'),
(16883, 'login to', 'login to', 0, 1, 1.2667, 'L253', 1, 'en'),
(16884, 'login to the', 'login to the', 0, 1, 1.4, 'L253', 1, 'en'),
(16885, 'login to this', 'login to this', 0, 1, 1.4333, 'L2532', 1, 'en'),
(16886, 'logo', 'logo', 0, 0, 0.2667, 'L200', 1, 'en'),
(16887, 'logo to', 'logo to', 0, 1, 1.2333, 'L230', 1, 'en'),
(16888, 'logo to do', 'logo to do', 0, 1, 1.3333, 'L230', 1, 'en'),
(16889, 'look of', 'look of', 0, 1, 1.2333, 'L210', 1, 'en'),
(16890, 'look of your', 'look of your', 0, 1, 1.4, 'L216', 1, 'en'),
(16891, 'looking', 'looking', 0, 0, 0.4667, 'L252', 1, 'en'),
(16892, 'looking at', 'looking at', 0, 1, 1.3333, 'L2523', 1, 'en'),
(16893, 'looking at now', 'looking at now', 0, 1, 1.4667, 'L25235', 1, 'en'),
(16894, 'manager and', 'manager and', 0, 1, 1.3667, 'M2653', 1, 'en'),
(16895, 'manager and then', 'manager and then', 0, 1, 1.5333, 'M26535', 1, 'en'),
(16896, 'many free', 'many free', 0, 1, 1.3, 'M160', 1, 'en'),
(16897, 'many free and', 'many free and', 0, 1, 1.4333, 'M1653', 1, 'en'),
(16898, 'mean', 'mean', 0, 0, 0.2667, 'M000', 1, 'en'),
(16899, 'mean that', 'mean that', 0, 1, 1.3, 'M300', 1, 'en'),
(16900, 'mean that only', 'mean that only', 0, 1, 1.4667, 'M354', 1, 'en'),
(16901, 'menu click', 'menu click', 0, 1, 1.3333, 'M242', 1, 'en'),
(16902, 'menu click on', 'menu click on', 0, 1, 1.4333, 'M2425', 1, 'en'),
(16903, 'menu to change', 'menu to change', 0, 1, 1.4667, 'M3252', 1, 'en'),
(16904, 'menus', 'menus', 0, 0, 0.3333, 'M200', 1, 'en'),
(16905, 'menus and', 'menus and', 0, 1, 1.3, 'M253', 1, 'en'),
(16906, 'menus and deciding', 'menus and deciding', 0, 1, 1.6, 'M2532352', 1, 'en'),
(16907, 'modules articles', 'modules articles', 0, 1, 1.5333, 'M34263242', 1, 'en'),
(16908, 'modules articles or', 'modules articles or', 0, 1, 1.6333, 'M342632426', 1, 'en'),
(16909, 'modules to', 'modules to', 0, 1, 1.3333, 'M3423', 1, 'en'),
(16910, 'modules to show', 'modules to show', 0, 1, 1.5, 'M34232', 1, 'en'),
(16911, 'more about', 'more about', 0, 1, 1.3333, 'M613', 1, 'en'),
(16912, 'more about working', 'more about working', 0, 1, 1.6, 'M6136252', 1, 'en'),
(16913, 'more advanced', 'more advanced', 0, 1, 1.4333, 'M631523', 1, 'en'),
(16914, 'more advanced configuration', 'more advanced configuration', 0, 1, 1.9, 'M6315232512635', 1, 'en'),
(16915, 'more advanced work', 'more advanced work', 0, 1, 1.6, 'M63152362', 1, 'en'),
(16916, 'much', 'much', 0, 0, 0.2667, 'M200', 1, 'en'),
(16917, 'much more', 'much more', 0, 1, 1.3, 'M256', 1, 'en'),
(16918, 'much more about', 'much more about', 0, 1, 1.5, 'M25613', 1, 'en'),
(16919, 'name', 'name', 0, 0, 0.2667, 'N000', 1, 'en'),
(16920, 'name and', 'name and', 0, 1, 1.2667, 'N300', 1, 'en'),
(16921, 'name and password', 'name and password', 0, 1, 1.5667, 'N31263', 1, 'en'),
(16922, 'need', 'need', 0, 0, 0.2667, 'N300', 1, 'en'),
(16923, 'need to', 'need to', 0, 1, 1.2333, 'N300', 1, 'en'),
(16924, 'need to login', 'need to login', 0, 1, 1.4333, 'N3425', 1, 'en'),
(16925, 'new article or', 'new article or', 0, 1, 1.4667, 'N63246', 1, 'en'),
(16926, 'new template in', 'new template in', 0, 1, 1.5, 'N351435', 1, 'en'),
(16927, 'not', 'not', 1, 0, 0.025, 'N300', 1, 'en'),
(16928, 'not be', 'not be', 0, 1, 1.2, 'N310', 1, 'en'),
(16929, 'not be able', 'not be able', 0, 1, 1.3667, 'N314', 1, 'en'),
(16930, 'now', 'now', 0, 0, 0.2, 'N000', 1, 'en'),
(16931, 'now and', 'now and', 0, 1, 1.2333, 'N300', 1, 'en'),
(16932, 'now and an', 'now and an', 0, 1, 1.3333, 'N350', 1, 'en'),
(16933, 'of content', 'of content', 0, 1, 1.3333, 'O125353', 1, 'en'),
(16934, 'of content you', 'of content you', 0, 1, 1.4667, 'O125353', 1, 'en'),
(16935, 'of creating', 'of creating', 0, 1, 1.3667, 'O126352', 1, 'en'),
(16936, 'of creating your', 'of creating your', 0, 1, 1.5333, 'O1263526', 1, 'en'),
(16937, 'of the first', 'of the first', 0, 1, 1.4, 'O131623', 1, 'en'),
(16938, 'of the site', 'of the site', 0, 1, 1.3667, 'O1323', 1, 'en'),
(16939, 'of you', 'of you', 0, 1, 1.2, 'O100', 1, 'en'),
(16940, 'of you site', 'of you site', 0, 1, 1.3667, 'O123', 1, 'en'),
(16941, 'of your site', 'of your site', 0, 1, 1.4, 'O1623', 1, 'en'),
(16942, 'on every', 'on every', 0, 1, 1.2667, 'O516', 1, 'en'),
(16943, 'on every page', 'on every page', 0, 1, 1.4333, 'O51612', 1, 'en'),
(16944, 'on extensions', 'on extensions', 0, 1, 1.4333, 'O5235252', 1, 'en'),
(16945, 'on extensions manager', 'on extensions manager', 0, 1, 1.7, 'O5235252526', 1, 'en'),
(16946, 'on that', 'on that', 0, 1, 1.2333, 'O530', 1, 'en'),
(16947, 'on that page', 'on that page', 0, 1, 1.4, 'O5312', 1, 'en'),
(16948, 'on the template', 'on the template', 0, 1, 1.5, 'O535143', 1, 'en'),
(16949, 'one', 'one', 0, 0, 0.2, 'O500', 1, 'en'),
(16950, 'one of', 'one of', 0, 1, 1.2, 'O510', 1, 'en'),
(16951, 'one of the', 'one of the', 0, 1, 1.3333, 'O513', 1, 'en'),
(16952, 'only', 'only', 1, 0, 0.0333, 'O540', 1, 'en'),
(16953, 'only logged', 'only logged', 0, 1, 1.3667, 'O5423', 1, 'en'),
(16954, 'only logged in', 'only logged in', 0, 1, 1.4667, 'O54235', 1, 'en'),
(16955, 'or', 'or', 1, 0, 0.0167, 'O600', 1, 'en'),
(16956, 'or back', 'or back', 0, 1, 1.2333, 'O612', 1, 'en'),
(16957, 'or back end', 'or back end', 0, 1, 1.3667, 'O61253', 1, 'en'),
(16958, 'or other', 'or other', 0, 1, 1.2667, 'O636', 1, 'en'),
(16959, 'or other kind', 'or other kind', 0, 1, 1.4333, 'O636253', 1, 'en'),
(16960, 'or unpublished', 'or unpublished', 0, 1, 1.4667, 'O651423', 1, 'en'),
(16961, 'or unpublished if', 'or unpublished if', 0, 1, 1.5667, 'O6514231', 1, 'en'),
(16962, 'or weblinks', 'or weblinks', 0, 1, 1.3667, 'O61452', 1, 'en'),
(16963, 'or weblinks setting', 'or weblinks setting', 0, 1, 1.6333, 'O61452352', 1, 'en'),
(16964, 'other items', 'other items', 0, 1, 1.3667, 'O36352', 1, 'en'),
(16965, 'other items click', 'other items click', 0, 1, 1.5667, 'O3635242', 1, 'en'),
(16966, 'other kind', 'other kind', 0, 1, 1.3333, 'O36253', 1, 'en'),
(16967, 'other kind of', 'other kind of', 0, 1, 1.4333, 'O362531', 1, 'en'),
(16968, 'other users', 'other users', 0, 1, 1.3667, 'O36262', 1, 'en'),
(16969, 'other users at', 'other users at', 0, 1, 1.4667, 'O362623', 1, 'en'),
(16970, 'page that', 'page that', 0, 1, 1.3, 'P230', 1, 'en'),
(16971, 'page that provide', 'page that provide', 0, 1, 1.5667, 'P231613', 1, 'en'),
(16972, 'page vote', 'page vote', 0, 1, 1.3, 'P213', 1, 'en'),
(16973, 'page vote on', 'page vote on', 0, 1, 1.4, 'P2135', 1, 'en'),
(16974, 'part', 'part', 0, 0, 0.2667, 'P630', 1, 'en'),
(16975, 'part of', 'part of', 0, 1, 1.2333, 'P631', 1, 'en'),
(16976, 'part of the', 'part of the', 0, 1, 1.3667, 'P6313', 1, 'en'),
(16977, 'parts', 'parts', 0, 0, 0.3333, 'P632', 1, 'en'),
(16978, 'parts of', 'parts of', 0, 1, 1.2667, 'P6321', 1, 'en'),
(16979, 'parts of you', 'parts of you', 0, 1, 1.4, 'P6321', 1, 'en'),
(16980, 'password', 'password', 0, 0, 0.5333, 'P263', 1, 'en'),
(16981, 'password that', 'password that', 0, 1, 1.4333, 'P263', 1, 'en'),
(16982, 'password that you', 'password that you', 0, 1, 1.5667, 'P263', 1, 'en'),
(16983, 'probably', 'probably', 0, 0, 0.5333, 'P614', 1, 'en'),
(16984, 'probably want', 'probably want', 0, 1, 1.4333, 'P61453', 1, 'en'),
(16985, 'probably want to', 'probably want to', 0, 1, 1.5333, 'P61453', 1, 'en'),
(16986, 'provide', 'provide', 0, 0, 0.4667, 'P613', 1, 'en'),
(16987, 'provide detailed', 'provide detailed', 0, 1, 1.5333, 'P61343', 1, 'en'),
(16988, 'provide detailed information', 'provide detailed information', 0, 1, 1.9333, 'P61343516535', 1, 'en'),
(16989, 'published', 'published', 0, 0, 0.6, 'P423', 1, 'en'),
(16990, 'published or', 'published or', 0, 1, 1.4, 'P4236', 1, 'en'),
(16991, 'published or unpublished', 'published or unpublished', 0, 1, 1.8, 'P423651423', 1, 'en'),
(16992, 'registered', 'registered', 0, 0, 0.6667, 'R2363', 1, 'en'),
(16993, 'registered will', 'registered will', 0, 1, 1.5, 'R23634', 1, 'en'),
(16994, 'registered will mean', 'registered will mean', 0, 1, 1.6667, 'R236345', 1, 'en'),
(16995, 'same', 'same', 0, 0, 0.2667, 'S500', 1, 'en'),
(16996, 'same user', 'same user', 0, 1, 1.3, 'S526', 1, 'en'),
(16997, 'same user name', 'same user name', 0, 1, 1.4667, 'S5265', 1, 'en'),
(16998, 'save it', 'save it', 0, 1, 1.2333, 'S130', 1, 'en'),
(16999, 'save it as', 'save it as', 0, 1, 1.3333, 'S132', 1, 'en'),
(17000, 'see different', 'see different', 0, 1, 1.4333, 'S31653', 1, 'en'),
(17001, 'see different parts', 'see different parts', 0, 1, 1.6333, 'S316531632', 1, 'en'),
(17002, 'see it', 'see it', 0, 1, 1.2, 'S300', 1, 'en'),
(17003, 'see it but', 'see it but', 0, 1, 1.3333, 'S313', 1, 'en'),
(17004, 'see them', 'see them', 0, 1, 1.2667, 'S350', 1, 'en'),
(17005, 'see them when', 'see them when', 0, 1, 1.4333, 'S350', 1, 'en'),
(17006, 'seen', 'seen', 0, 0, 0.2667, 'S500', 1, 'en'),
(17007, 'seen you', 'seen you', 0, 1, 1.2667, 'S500', 1, 'en'),
(17008, 'seen you can', 'seen you can', 0, 1, 1.4, 'S525', 1, 'en'),
(17009, 'separately', 'separately', 0, 0, 0.6667, 'S1634', 1, 'en'),
(17010, 'separately using', 'separately using', 0, 1, 1.5333, 'S1634252', 1, 'en'),
(17011, 'separately using the', 'separately using the', 0, 1, 1.6667, 'S16342523', 1, 'en'),
(17012, 'setting', 'setting', 0, 0, 0.4667, 'S352', 1, 'en'),
(17013, 'setting the', 'setting the', 0, 1, 1.3667, 'S3523', 1, 'en'),
(17014, 'setting the access', 'setting the access', 0, 1, 1.6, 'S35232', 1, 'en'),
(17015, 'setting up', 'setting up', 0, 1, 1.3333, 'S3521', 1, 'en'),
(17016, 'setting up the', 'setting up the', 0, 1, 1.4667, 'S35213', 1, 'en'),
(17017, 'settings more', 'settings more', 0, 1, 1.4333, 'S35256', 1, 'en'),
(17018, 'settings more advanced', 'settings more advanced', 0, 1, 1.7333, 'S3525631523', 1, 'en'),
(17019, 'show', 'show', 0, 0, 0.2667, 'S000', 1, 'en'),
(17020, 'show you', 'show you', 0, 1, 1.2667, 'S000', 1, 'en'),
(17021, 'show you need', 'show you need', 0, 1, 1.4333, 'S530', 1, 'en'),
(17022, 'site and', 'site and', 0, 1, 1.2667, 'S353', 1, 'en'),
(17023, 'site and get', 'site and get', 0, 1, 1.4, 'S35323', 1, 'en'),
(17024, 'site description browser', 'site description browser', 0, 1, 1.8, 'S3261351626', 1, 'en'),
(17025, 'site joomla', 'site joomla', 0, 1, 1.3667, 'S3254', 1, 'en'),
(17026, 'site joomla has', 'site joomla has', 0, 1, 1.5, 'S32542', 1, 'en'),
(17027, 'site one', 'site one', 0, 1, 1.2667, 'S350', 1, 'en'),
(17028, 'site one of', 'site one of', 0, 1, 1.3667, 'S351', 1, 'en'),
(17029, 'site settings', 'site settings', 0, 1, 1.4333, 'S32352', 1, 'en'),
(17030, 'site settings more', 'site settings more', 0, 1, 1.6, 'S3235256', 1, 'en'),
(17031, 'site such', 'site such', 0, 1, 1.3, 'S320', 1, 'en'),
(17032, 'site such as', 'site such as', 0, 1, 1.4, 'S320', 1, 'en'),
(17033, 'site title and', 'site title and', 0, 1, 1.4667, 'S3453', 1, 'en'),
(17034, 'site visitors', 'site visitors', 0, 1, 1.4333, 'S312362', 1, 'en'),
(17035, 'site visitors will', 'site visitors will', 0, 1, 1.6, 'S3123624', 1, 'en'),
(17036, 'site when', 'site when', 0, 1, 1.3, 'S350', 1, 'en'),
(17037, 'site when you', 'site when you', 0, 1, 1.4333, 'S350', 1, 'en'),
(17038, 'site you will', 'site you will', 0, 1, 1.4333, 'S340', 1, 'en'),
(17039, 'some basic', 'some basic', 0, 1, 1.3333, 'S512', 1, 'en'),
(17040, 'some basic tips', 'some basic tips', 0, 1, 1.5, 'S512312', 1, 'en'),
(17041, 'such', 'such', 0, 0, 0.2667, 'S000', 1, 'en'),
(17042, 'such as', 'such as', 0, 1, 1.2333, 'S000', 1, 'en'),
(17043, 'such as setting', 'such as setting', 0, 1, 1.5, 'S352', 1, 'en'),
(17044, 'tab', 'tab', 0, 0, 0.2, 'T100', 1, 'en'),
(17045, 'tab there', 'tab there', 0, 1, 1.3, 'T136', 1, 'en'),
(17046, 'tab there are', 'tab there are', 0, 1, 1.4333, 'T136', 1, 'en'),
(17047, 'tag line', 'tag line', 0, 1, 1.2667, 'T245', 1, 'en'),
(17048, 'tag line and', 'tag line and', 0, 1, 1.4, 'T2453', 1, 'en'),
(17049, 'template in', 'template in', 0, 1, 1.3667, 'T51435', 1, 'en'),
(17050, 'template in the', 'template in the', 0, 1, 1.5, 'T514353', 1, 'en'),
(17051, 'templates available', 'templates available', 0, 1, 1.6333, 'T514321414', 1, 'en'),
(17052, 'templates available for', 'templates available for', 0, 1, 1.7667, 'T51432141416', 1, 'en'),
(17053, 'that only', 'that only', 0, 1, 1.3, 'T540', 1, 'en'),
(17054, 'that only logged', 'that only logged', 0, 1, 1.5333, 'T5423', 1, 'en'),
(17055, 'that page', 'that page', 0, 1, 1.3, 'T120', 1, 'en'),
(17056, 'that page vote', 'that page vote', 0, 1, 1.4667, 'T1213', 1, 'en'),
(17057, 'that provide', 'that provide', 0, 1, 1.4, 'T1613', 1, 'en'),
(17058, 'that provide detailed', 'that provide detailed', 0, 1, 1.7, 'T161343', 1, 'en'),
(17059, 'that you are', 'that you are', 0, 1, 1.4, 'T600', 1, 'en'),
(17060, 'that you used', 'that you used', 0, 1, 1.4333, 'T230', 1, 'en'),
(17061, 'the access', 'the access', 0, 1, 1.3333, 'T200', 1, 'en'),
(17062, 'the access level', 'the access level', 0, 1, 1.5333, 'T2414', 1, 'en'),
(17063, 'the administrator', 'the administrator', 0, 1, 1.5667, 'T523636', 1, 'en'),
(17064, 'the administrator separately', 'the administrator separately', 0, 1, 1.9333, 'T52363621634', 1, 'en'),
(17065, 'the administrator there', 'the administrator there', 0, 1, 1.7667, 'T52363636', 1, 'en'),
(17066, 'the administrator to', 'the administrator to', 0, 1, 1.6667, 'T5236363', 1, 'en'),
(17067, 'the extensions', 'the extensions', 0, 1, 1.4667, 'T235252', 1, 'en'),
(17068, 'the extensions menu', 'the extensions menu', 0, 1, 1.6333, 'T2352525', 1, 'en'),
(17069, 'the first', 'the first', 0, 1, 1.3, 'T1623', 1, 'en'),
(17070, 'the first things', 'the first things', 0, 1, 1.5333, 'T162352', 1, 'en'),
(17071, 'the functions', 'the functions', 0, 1, 1.4333, 'T152352', 1, 'en'),
(17072, 'the functions on', 'the functions on', 0, 1, 1.5333, 'T1523525', 1, 'en'),
(17073, 'the install', 'the install', 0, 1, 1.3667, 'T5234', 1, 'en'),
(17074, 'the install tab', 'the install tab', 0, 1, 1.5, 'T523431', 1, 'en'),
(17075, 'the joomla documentation', 'the joomla documentation', 0, 1, 1.8, 'T25432535', 1, 'en'),
(17076, 'the joomla forums', 'the joomla forums', 0, 1, 1.5667, 'T2541652', 1, 'en'),
(17077, 'the look of', 'the look of', 0, 1, 1.3667, 'T421', 1, 'en'),
(17078, 'the menus', 'the menus', 0, 1, 1.3, 'T520', 1, 'en'),
(17079, 'the menus and', 'the menus and', 0, 1, 1.4333, 'T5253', 1, 'en'),
(17080, 'the more', 'the more', 0, 1, 1.2667, 'T560', 1, 'en'),
(17081, 'the more advanced', 'the more advanced', 0, 1, 1.5667, 'T5631523', 1, 'en'),
(17082, 'the same', 'the same', 0, 1, 1.2667, 'T250', 1, 'en'),
(17083, 'the same user', 'the same user', 0, 1, 1.4333, 'T2526', 1, 'en'),
(17084, 'the site one', 'the site one', 0, 1, 1.4, 'T235', 1, 'en'),
(17085, 'the site title', 'the site title', 0, 1, 1.4667, 'T234', 1, 'en'),
(17086, 'the template', 'the template', 0, 1, 1.4, 'T5143', 1, 'en'),
(17087, 'the template settings', 'the template settings', 0, 1, 1.7, 'T51432352', 1, 'en'),
(17088, 'then', 'then', 1, 0, 0.0333, 'T500', 1, 'en'),
(17089, 'then go', 'then go', 0, 1, 1.2333, 'T520', 1, 'en'),
(17090, 'then go to', 'then go to', 0, 1, 1.3333, 'T523', 1, 'en'),
(17091, 'there', 'there', 1, 0, 0.0417, 'T600', 1, 'en'),
(17092, 'there are', 'there are', 0, 1, 1.3, 'T600', 1, 'en'),
(17093, 'there are help', 'there are help', 0, 1, 1.4667, 'T641', 1, 'en'),
(17094, 'there are many', 'there are many', 0, 1, 1.4667, 'T650', 1, 'en'),
(17095, 'things', 'things', 0, 0, 0.4, 'T520', 1, 'en'),
(17096, 'things you', 'things you', 0, 1, 1.3333, 'T520', 1, 'en'),
(17097, 'things you will', 'things you will', 0, 1, 1.5, 'T524', 1, 'en'),
(17098, 'this click', 'this click', 0, 1, 1.3333, 'T242', 1, 'en'),
(17099, 'this click on', 'this click on', 0, 1, 1.4333, 'T2425', 1, 'en'),
(17100, 'this part', 'this part', 0, 1, 1.3, 'T2163', 1, 'en'),
(17101, 'this part of', 'this part of', 0, 1, 1.4, 'T21631', 1, 'en'),
(17102, 'tips', 'tips', 0, 0, 0.2667, 'T120', 1, 'en'),
(17103, 'tips for', 'tips for', 0, 1, 1.2667, 'T1216', 1, 'en'),
(17104, 'tips for working', 'tips for working', 0, 1, 1.5333, 'T1216252', 1, 'en'),
(17105, 'title and', 'title and', 0, 1, 1.3, 'T453', 1, 'en'),
(17106, 'title and tag', 'title and tag', 0, 1, 1.4333, 'T4532', 1, 'en'),
(17107, 'title default', 'title default', 0, 1, 1.4333, 'T43143', 1, 'en'),
(17108, 'title default email', 'title default email', 0, 1, 1.6333, 'T4314354', 1, 'en'),
(17109, 'to add a', 'to add a', 0, 1, 1.2667, 'T000', 1, 'en'),
(17110, 'to change your', 'to change your', 0, 1, 1.4667, 'T2526', 1, 'en'),
(17111, 'to do', 'to do', 0, 1, 1.1667, 'T000', 1, 'en'),
(17112, 'to do is', 'to do is', 0, 1, 1.2667, 'T200', 1, 'en'),
(17113, 'to do this', 'to do this', 0, 1, 1.3333, 'T200', 1, 'en'),
(17114, 'to install', 'to install', 0, 1, 1.3333, 'T5234', 1, 'en'),
(17115, 'to install a', 'to install a', 0, 1, 1.4, 'T5234', 1, 'en'),
(17116, 'to login', 'to login', 0, 1, 1.2667, 'T425', 1, 'en'),
(17117, 'to login to', 'to login to', 0, 1, 1.3667, 'T4253', 1, 'en'),
(17118, 'to registered', 'to registered', 0, 1, 1.4333, 'T62363', 1, 'en'),
(17119, 'to registered will', 'to registered will', 0, 1, 1.6, 'T623634', 1, 'en'),
(17120, 'to see', 'to see', 0, 1, 1.2, 'T200', 1, 'en'),
(17121, 'to see it', 'to see it', 0, 1, 1.3, 'T230', 1, 'en'),
(17122, 'to show', 'to show', 0, 1, 1.2333, 'T200', 1, 'en'),
(17123, 'to show you', 'to show you', 0, 1, 1.3667, 'T200', 1, 'en'),
(17124, 'to the administrator', 'to the administrator', 0, 1, 1.6667, 'T523636', 1, 'en'),
(17125, 'to the install', 'to the install', 0, 1, 1.4667, 'T5234', 1, 'en'),
(17126, 'to this', 'to this', 0, 1, 1.2333, 'T200', 1, 'en'),
(17127, 'to this part', 'to this part', 0, 1, 1.4, 'T2163', 1, 'en'),
(17128, 'to totally', 'to totally', 0, 1, 1.3333, 'T400', 1, 'en'),
(17129, 'to totally change', 'to totally change', 0, 1, 1.5667, 'T4252', 1, 'en'),
(17130, 'totally', 'totally', 0, 0, 0.4667, 'T400', 1, 'en'),
(17131, 'totally change', 'totally change', 0, 1, 1.4667, 'T4252', 1, 'en'),
(17132, 'totally change the', 'totally change the', 0, 1, 1.6, 'T42523', 1, 'en'),
(17133, 'unpublished', 'unpublished', 0, 0, 0.7333, 'U51423', 1, 'en'),
(17134, 'unpublished if', 'unpublished if', 0, 1, 1.4667, 'U514231', 1, 'en'),
(17135, 'unpublished if it', 'unpublished if it', 0, 1, 1.5667, 'U5142313', 1, 'en'),
(17136, 'unpublished site', 'unpublished site', 0, 1, 1.5333, 'U5142323', 1, 'en'),
(17137, 'unpublished site visitors', 'unpublished site visitors', 0, 1, 1.8333, 'U514232312362', 1, 'en'),
(17138, 'up', 'up', 1, 0, 0.0167, 'U100', 1, 'en'),
(17139, 'up the', 'up the', 0, 1, 1.2, 'U130', 1, 'en'),
(17140, 'up the menus', 'up the menus', 0, 1, 1.4, 'U1352', 1, 'en'),
(17141, 'used to', 'used to', 0, 1, 1.2333, 'U230', 1, 'en'),
(17142, 'used to login', 'used to login', 0, 1, 1.4333, 'U23425', 1, 'en'),
(17143, 'user name', 'user name', 0, 1, 1.3, 'U265', 1, 'en'),
(17144, 'user name and', 'user name and', 0, 1, 1.4333, 'U2653', 1, 'en'),
(17145, 'users', 'users', 1, 0, 0.0417, 'U262', 1, 'en'),
(17146, 'users at', 'users at', 0, 1, 1.2667, 'U2623', 1, 'en'),
(17147, 'users at the', 'users at the', 0, 1, 1.4, 'U2623', 1, 'en'),
(17148, 'users can', 'users can', 0, 1, 1.3, 'U2625', 1, 'en'),
(17149, 'users can see', 'users can see', 0, 1, 1.4333, 'U26252', 1, 'en'),
(17150, 'using the same', 'using the same', 0, 1, 1.4667, 'U252325', 1, 'en'),
(17151, 'visitors', 'visitors', 0, 0, 0.5333, 'V2362', 1, 'en'),
(17152, 'visitors will', 'visitors will', 0, 1, 1.4333, 'V23624', 1, 'en'),
(17153, 'visitors will not', 'visitors will not', 0, 1, 1.5667, 'V2362453', 1, 'en'),
(17154, 'want to do', 'want to do', 0, 1, 1.3333, 'W530', 1, 'en'),
(17155, 'want to install', 'want to install', 0, 1, 1.5, 'W535234', 1, 'en'),
(17156, 'weblinks', 'weblinks', 0, 0, 0.5333, 'W1452', 1, 'en'),
(17157, 'weblinks setting', 'weblinks setting', 0, 1, 1.5333, 'W1452352', 1, 'en'),
(17158, 'weblinks setting the', 'weblinks setting the', 0, 1, 1.6667, 'W14523523', 1, 'en'),
(17159, 'what', 'what', 1, 0, 0.0333, 'W300', 1, 'en'),
(17160, 'what modules', 'what modules', 0, 1, 1.4, 'W35342', 1, 'en'),
(17161, 'what modules to', 'what modules to', 0, 1, 1.5, 'W353423', 1, 'en'),
(17162, 'when you create', 'when you create', 0, 1, 1.5, 'W5263', 1, 'en'),
(17163, 'when you work', 'when you work', 0, 1, 1.4333, 'W562', 1, 'en'),
(17164, 'where', 'where', 1, 0, 0.0417, 'W600', 1, 'en'),
(17165, 'where you', 'where you', 0, 1, 1.3, 'W600', 1, 'en'),
(17166, 'where you do', 'where you do', 0, 1, 1.4, 'W630', 1, 'en'),
(17167, 'which is', 'which is', 0, 1, 1.2667, 'W200', 1, 'en'),
(17168, 'which is where', 'which is where', 0, 1, 1.4667, 'W260', 1, 'en'),
(17169, 'who', 'who', 1, 0, 0.025, 'W000', 1, 'en'),
(17170, 'who can', 'who can', 0, 1, 1.2333, 'W250', 1, 'en'),
(17171, 'who can see', 'who can see', 0, 1, 1.3667, 'W252', 1, 'en'),
(17172, 'will mean', 'will mean', 0, 1, 1.3, 'W450', 1, 'en'),
(17173, 'will mean that', 'will mean that', 0, 1, 1.4667, 'W453', 1, 'en'),
(17174, 'will not', 'will not', 0, 1, 1.2667, 'W453', 1, 'en'),
(17175, 'will not be', 'will not be', 0, 1, 1.3667, 'W4531', 1, 'en'),
(17176, 'will probably', 'will probably', 0, 1, 1.4333, 'W41614', 1, 'en'),
(17177, 'will probably want', 'will probably want', 0, 1, 1.6, 'W4161453', 1, 'en'),
(17178, 'will you', 'will you', 0, 1, 1.2667, 'W400', 1, 'en'),
(17179, 'will you can', 'will you can', 0, 1, 1.4, 'W425', 1, 'en'),
(17180, 'with joomla', 'with joomla', 0, 1, 1.3667, 'W3254', 1, 'en'),
(17181, 'with joomla from', 'with joomla from', 0, 1, 1.5333, 'W3254165', 1, 'en'),
(17182, 'with modules', 'with modules', 0, 1, 1.4, 'W35342', 1, 'en'),
(17183, 'with modules articles', 'with modules articles', 0, 1, 1.7, 'W3534263242', 1, 'en'),
(17184, 'work', 'work', 0, 0, 0.2667, 'W620', 1, 'en'),
(17185, 'work of', 'work of', 0, 1, 1.2333, 'W621', 1, 'en'),
(17186, 'work of creating', 'work of creating', 0, 1, 1.5333, 'W62126352', 1, 'en'),
(17187, 'work with', 'work with', 0, 1, 1.3, 'W623', 1, 'en'),
(17188, 'work with modules', 'work with modules', 0, 1, 1.5667, 'W6235342', 1, 'en'),
(17189, 'working with', 'working with', 0, 1, 1.4, 'W62523', 1, 'en'),
(17190, 'working with joomla', 'working with joomla', 0, 1, 1.6333, 'W62523254', 1, 'en'),
(17191, 'you also', 'you also', 0, 1, 1.2667, 'Y420', 1, 'en'),
(17192, 'you also can', 'you also can', 0, 1, 1.4, 'Y425', 1, 'en'),
(17193, 'you are looking', 'you are looking', 0, 1, 1.5, 'Y64252', 1, 'en'),
(17194, 'you can control', 'you can control', 0, 1, 1.5, 'Y2525364', 1, 'en'),
(17195, 'you can learn', 'you can learn', 0, 1, 1.4333, 'Y25465', 1, 'en'),
(17196, 'you create', 'you create', 0, 1, 1.3333, 'Y263', 1, 'en'),
(17197, 'you create a', 'you create a', 0, 1, 1.4, 'Y263', 1, 'en'),
(17198, 'you do', 'you do', 0, 1, 1.2, 'Y300', 1, 'en'),
(17199, 'you do the', 'you do the', 0, 1, 1.3333, 'Y300', 1, 'en'),
(17200, 'you have', 'you have', 0, 1, 1.2667, 'Y100', 1, 'en'),
(17201, 'you have already', 'you have already', 0, 1, 1.5333, 'Y1463', 1, 'en'),
(17202, 'you need', 'you need', 0, 1, 1.2667, 'Y530', 1, 'en'),
(17203, 'you need to', 'you need to', 0, 1, 1.3667, 'Y530', 1, 'en'),
(17204, 'you site', 'you site', 0, 1, 1.2667, 'Y230', 1, 'en'),
(17205, 'you site when', 'you site when', 0, 1, 1.4333, 'Y235', 1, 'en'),
(17206, 'you used', 'you used', 0, 1, 1.2667, 'Y230', 1, 'en'),
(17207, 'you used to', 'you used to', 0, 1, 1.3667, 'Y230', 1, 'en'),
(17208, 'you will probably', 'you will probably', 0, 1, 1.5667, 'Y41614', 1, 'en'),
(17209, 'you will you', 'you will you', 0, 1, 1.4, 'Y400', 1, 'en'),
(17210, 'you work', 'you work', 0, 1, 1.2667, 'Y620', 1, 'en'),
(17211, 'you work with', 'you work with', 0, 1, 1.4333, 'Y623', 1, 'en'),
(17212, 'your site description', 'your site description', 0, 1, 1.7, 'Y62326135', 1, 'en'),
(17213, 'your site joomla', 'your site joomla', 0, 1, 1.5333, 'Y623254', 1, 'en'),
(17214, 'your site such', 'your site such', 0, 1, 1.4667, 'Y6232', 1, 'en'),
(18598, 'xhtml', 'xhtml', 0, 0, 0.3333, 'X354', 2, 'en'),
(19213, 'asdfasdfasdfasd', 'asdfasdfasdfasd', 0, 0, 1, 'A23123123123', 2, 'en'),
(19214, 'asdfasdfasdfasd fasdfasdfasdfasdfasfa', 'asdfasdfasdfasd fasdfasdfasdfasdfasfa', 0, 1, 2, 'A23123123123123123123123121', 2, 'en'),
(19215, 'asdfasdfasdfasd fasdfasdfasdfasdfasfa jcomments', 'asdfasdfasdfasd fasdfasdfasdfasdfasfa jcomments', 0, 1, 2, 'A231231231231231231231231212532', 2, 'en'),
(19216, 'asfdasdfasdfasdfsadfasdfasdfasdf', 'asfdasdfasdfasdfsadfasdfasdfasdf', 0, 0, 1, 'A213231231231231231231231', 2, 'en'),
(19217, 'asfdasdfasdfasdfsadfasdfasdfasdf asdfasdfasdfasd', 'asfdasdfasdfasdfsadfasdfasdfasdf asdfasdfasdfasd', 0, 1, 2, 'A21323123123123123123123123123123123', 2, 'en'),
(19218, 'asfdasdfasdfasdfsadfasdfasdfasdf asdfasdfasdfasd fasdfasdfasdfasdfasfa', 'asfdasdfasdfasdfsadfasdfasdfasdf asdfasdfasdfasd fasdfasdfasdfasdfasfa', 0, 1, 2, 'A21323123123123123123123123123123123123123123123121', 2, 'en'),
(19219, 'dfsdf', 'dfsdf', 0, 0, 0.3333, 'D1231', 2, 'en'),
(19220, 'dfsdf asfdasdfasdfasdfsadfasdfasdfasdf', 'dfsdf asfdasdfasdfasdfsadfasdfasdfasdf', 0, 1, 2, 'D1231213231231231231231231231', 2, 'en');
INSERT INTO `feed_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(19221, 'dfsdf asfdasdfasdfasdfsadfasdfasdfasdf asdfasdfasdfasd', 'dfsdf asfdasdfasdfasdfsadfasdfasdfasdf asdfasdfasdfasd', 0, 1, 2, 'D123121323123123123123123123123123123123', 2, 'en'),
(19222, 'fasdfasdfasdfasdfasfa', 'fasdfasdfasdfasdfasfa', 0, 0, 1, 'F23123123123121', 2, 'en'),
(19223, 'fasdfasdfasdfasdfasfa jcomments', 'fasdfasdfasdfasdfasfa jcomments', 0, 1, 2, 'F231231231231212532', 2, 'en'),
(19224, 'fasdfasdfasdfasdfasfa jcomments on', 'fasdfasdfasdfasdfasfa jcomments on', 0, 1, 2, 'F2312312312312125325', 2, 'en'),
(19230, 'sdfasdfsdfasdfasdfas', 'sdfasdfsdfasdfasdfas', 0, 0, 1, 'S312312312312312', 2, 'en'),
(19231, 'sdfasdfsdfasdfasdfas dfsdf', 'sdfasdfsdfasdfasdfas dfsdf', 0, 1, 1.8667, 'S31231231231231231231', 2, 'en'),
(19232, 'sdfasdfsdfasdfasdfas dfsdf asfdasdfasdfasdfsadfasdfasdfasdf', 'sdfasdfsdfasdfasdfas dfsdf asfdasdfasdfasdfsadfasdfasdfasdf', 0, 1, 2, 'S31231231231231231231213231231231231231231231', 2, 'en'),
(19233, 'sdfasdlfkjasdf', 'sdfasdlfkjasdf', 0, 0, 0.9333, 'S312341231', 2, 'en'),
(19234, 'sdfasdlfkjasdf sdfasdfsdfasdfasdfas', 'sdfasdlfkjasdf sdfasdfsdfasdfasdfas', 0, 1, 2, 'S3123412312312312312312312', 2, 'en'),
(19235, 'sdfasdlfkjasdf sdfasdfsdfasdfasdfas dfsdf', 'sdfasdlfkjasdf sdfasdfsdfasdfasdfas dfsdf', 0, 1, 2, 'S312341231231231231231231231231', 2, 'en'),
(19236, 'xfthxgfsfsffdgf', 'xfthxgfsfsffdgf', 0, 0, 1, 'X13212121321', 2, 'en'),
(19237, 'xfthxgfsfsffdgf sdfasdlfkjasdf', 'xfthxgfsfsffdgf sdfasdlfkjasdf', 0, 1, 2, 'X132121213212312341231', 2, 'en'),
(19238, 'xfthxgfsfsffdgf sdfasdlfkjasdf sdfasdfsdfasdfasdfas', 'xfthxgfsfsffdgf sdfasdlfkjasdf sdfasdfsdfasdfasdfas', 0, 1, 2, 'X1321212132123123412312312312312312312', 2, 'en'),
(19239, 'xhtml xfthxgfsfsffdgf', 'xhtml xfthxgfsfsffdgf', 0, 1, 1.7, 'X354213212121321', 2, 'en'),
(19240, 'xhtml xfthxgfsfsffdgf sdfasdlfkjasdf', 'xhtml xfthxgfsfsffdgf sdfasdlfkjasdf', 0, 1, 2, 'X3542132121213212312341231', 2, 'en'),
(19241, '115', '115', 0, 0, 0.3, '', 1, 'en'),
(19242, '115 xhtml', '115 xhtml', 0, 1, 1.3, 'X354', 1, 'en'),
(19243, '115 xhtml xfthxgfsfsffdgf', '115 xhtml xfthxgfsfsffdgf', 0, 1, 1.8333, 'X354213212121321', 1, 'en'),
(19244, 'business', 'business', 0, 0, 0.5333, 'B252', 1, 'en'),
(19245, 'business info', 'business info', 0, 1, 1.4333, 'B25251', 1, 'en'),
(19246, 'business information', 'business information', 0, 1, 1.6667, 'B252516535', 1, 'en'),
(19247, 'business information systems', 'business information systems', 0, 1, 1.9333, 'B2525165352352', 1, 'en'),
(19248, 'information systems', 'information systems', 0, 1, 1.6333, 'I5165352352', 1, 'en'),
(19249, 'modules 115', 'modules 115', 0, 1, 1.3667, 'M342', 1, 'en'),
(19250, 'modules 115 xhtml', 'modules 115 xhtml', 0, 1, 1.5667, 'M342354', 1, 'en'),
(19251, 'systems', 'systems', 0, 0, 0.4667, 'S352', 1, 'en'),
(19256, '127', '127', 0, 0, 0.3, '', 1, 'en'),
(19257, '127 xhtml', '127 xhtml', 0, 1, 1.3, 'X354', 1, 'en'),
(19258, '127 xhtml xfthxgfsfsffdgf', '127 xhtml xfthxgfsfsffdgf', 0, 1, 1.8333, 'X354213212121321', 1, 'en'),
(19259, 'java', 'java', 0, 0, 0.2667, 'J100', 1, 'en'),
(19260, 'java programming', 'java programming', 0, 1, 1.5333, 'J162652', 1, 'en'),
(19261, 'modules 127', 'modules 127', 0, 1, 1.3667, 'M342', 1, 'en'),
(19262, 'modules 127 xhtml', 'modules 127 xhtml', 0, 1, 1.5667, 'M342354', 1, 'en'),
(19263, 'programming', 'programming', 0, 0, 0.7333, 'P62652', 1, 'en'),
(19408, 'and insights', 'and insights', 0, 1, 1.4, 'A535232', 1, 'en'),
(19409, 'course', 'course', 0, 0, 0.4, 'C620', 1, 'en'),
(19410, 'course reviews', 'course reviews', 0, 1, 1.4667, 'C62612', 1, 'en'),
(19411, 'course reviews and', 'course reviews and', 0, 1, 1.6, 'C6261253', 1, 'en'),
(19412, 'course search', 'course search', 0, 1, 1.4333, 'C6262', 1, 'en'),
(19413, 'insights', 'insights', 0, 0, 0.5333, 'I5232', 1, 'en'),
(19414, 'reviews', 'reviews', 0, 0, 0.4667, 'R120', 1, 'en'),
(19415, 'reviews and', 'reviews and', 0, 1, 1.3667, 'R1253', 1, 'en'),
(19416, 'reviews and insights', 'reviews and insights', 0, 1, 1.6667, 'R12535232', 1, 'en'),
(19417, 'search', 'search', 0, 0, 0.4, 'S620', 1, 'en'),
(19418, 'student-generated', 'student-generated', 0, 0, 1, 'S3532563', 1, 'en'),
(19419, 'student-generated course', 'student-generated course', 0, 1, 1.8, 'S3532563262', 1, 'en'),
(19420, 'student-generated course reviews', 'student-generated course reviews', 0, 1, 2, 'S3532563262612', 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `feed_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_finder_terms_common`
--

INSERT INTO `feed_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `feed_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `feed_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feed_finder_types`
--

CREATE TABLE IF NOT EXISTS `feed_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `feed_finder_types`
--

INSERT INTO `feed_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Tag', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', ''),
(6, 'Web Link', '');

-- --------------------------------------------------------

--
-- Table structure for table `feed_free_votes_domande`
--

CREATE TABLE IF NOT EXISTS `feed_free_votes_domande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `feed_free_votes_domande`
--

INSERT INTO `feed_free_votes_domande` (`id`, `nome`) VALUES
(2, 'graph view'),
(4, 'graph view 2');

-- --------------------------------------------------------

--
-- Table structure for table `feed_free_votes_risposte`
--

CREATE TABLE IF NOT EXISTS `feed_free_votes_risposte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `colore` varchar(7) NOT NULL,
  `domanda` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `feed_free_votes_risposte`
--

INSERT INTO `feed_free_votes_risposte` (`id`, `nome`, `colore`, `domanda`) VALUES
(2, 'Workload', '#276064', 2),
(4, 'Interesting', '#3d2e35', 2),
(5, 'Grade', '#6229cc', 2),
(6, 'Workload 2', '#4a971d', 4),
(7, 'Interesting 2', '#d69c1b', 4),
(8, 'Grade 2', '#378077', 4);

-- --------------------------------------------------------

--
-- Table structure for table `feed_free_votes_risposte_user`
--

CREATE TABLE IF NOT EXISTS `feed_free_votes_risposte_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `risposta` int(11) NOT NULL,
  `voto` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `feed_free_votes_risposte_user`
--

INSERT INTO `feed_free_votes_risposte_user` (`id`, `id_user`, `risposta`, `voto`) VALUES
(1, 510, 1, 3),
(2, 510, 2, 1),
(3, 510, 3, 0),
(4, 474, 3, 1),
(5, 510, 4, 2),
(6, 478, 2, 1),
(7, 478, 5, 3),
(8, 510, 5, 5),
(9, 512, 2, 5),
(10, 512, 4, 4),
(11, 512, 5, 4),
(12, 516, 2, 5),
(13, 516, 4, 2),
(14, 510, 6, 2),
(15, 510, 7, 4),
(16, 510, 8, 0),
(17, 511, 8, 4),
(18, 511, 7, 1),
(19, 511, 6, 3),
(20, 528, 5, 5),
(21, 528, 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `feed_jcomments`
--

CREATE TABLE IF NOT EXISTS `feed_jcomments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `thread_id` int(11) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `object_params` text NOT NULL,
  `lang` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isgood` smallint(5) NOT NULL DEFAULT '0',
  `ispoor` smallint(5) NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL DEFAULT '',
  `source_id` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`userid`),
  KEY `idx_source` (`source`),
  KEY `idx_email` (`email`),
  KEY `idx_lang` (`lang`),
  KEY `idx_subscribe` (`subscribe`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_object` (`object_id`,`object_group`,`published`,`date`),
  KEY `idx_path` (`path`,`level`),
  KEY `idx_thread` (`thread_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `feed_jcomments`
--

INSERT INTO `feed_jcomments` (`id`, `parent`, `thread_id`, `path`, `level`, `object_id`, `object_group`, `object_params`, `lang`, `userid`, `name`, `username`, `email`, `homepage`, `title`, `comment`, `ip`, `date`, `isgood`, `ispoor`, `published`, `deleted`, `subscribe`, `source`, `source_id`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 0, 0, '0', 0, 3, 'com_content', '', 'en-GB', 479, 'dxfsd', 'rrr', 'rrrrrrr@mailinator.com', '', '', 'this is added by me 1', '::1', '2014-11-23 17:17:03', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(2, 0, 0, '0', 0, 3, 'com_content', '', 'en-GB', 512, 'Vilian', 'vilian', 'v.z.zhekov@lse.ac.uk', '', '', 'it sucked', '81.98.199.243', '2014-12-11 20:28:00', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(3, 0, 0, '0', 0, 9, 'com_content', '', 'en-GB', 510, 'new111', 'new111', 'new111@mailinator.com', '', '', 'skdjhseklf', '5.70.211.89', '2014-12-13 15:34:14', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(4, 0, 0, '0', 0, 9, 'com_content', '', 'en-GB', 510, 'new111', 'new111', 'new111@mailinator.com', '', '', 'xfdgafdgafd', '5.70.211.89', '2014-12-13 15:56:50', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(5, 0, 0, '0', 0, 3, 'com_content', '', 'en-GB', 528, 'Dimitar', 'Nentchev', 'd.nentchev@lse.ac.uk', '', '', 'Boom! (dimitar)', '88.150.174.138', '2014-12-13 16:30:54', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `feed_jcomments_blacklist`
--

CREATE TABLE IF NOT EXISTS `feed_jcomments_blacklist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` tinytext NOT NULL,
  `notes` tinytext NOT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jcomments_custom_bbcodes`
--

CREATE TABLE IF NOT EXISTS `feed_jcomments_custom_bbcodes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `simple_pattern` varchar(255) NOT NULL DEFAULT '',
  `simple_replacement_html` text NOT NULL,
  `simple_replacement_text` text NOT NULL,
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `replacement_html` text NOT NULL,
  `replacement_text` text NOT NULL,
  `button_acl` text NOT NULL,
  `button_open_tag` varchar(16) NOT NULL DEFAULT '',
  `button_close_tag` varchar(16) NOT NULL DEFAULT '',
  `button_title` varchar(255) NOT NULL DEFAULT '',
  `button_prompt` varchar(255) NOT NULL DEFAULT '',
  `button_image` varchar(255) NOT NULL DEFAULT '',
  `button_css` varchar(255) NOT NULL DEFAULT '',
  `button_enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `feed_jcomments_custom_bbcodes`
--

INSERT INTO `feed_jcomments_custom_bbcodes` (`id`, `name`, `simple_pattern`, `simple_replacement_html`, `simple_replacement_text`, `pattern`, `replacement_html`, `replacement_text`, `button_acl`, `button_open_tag`, `button_close_tag`, `button_title`, `button_prompt`, `button_image`, `button_css`, `button_enabled`, `ordering`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 'YouTube Video', '[youtube]http://www.youtube.com/watch?v={IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\:\\/\\/www\\.youtube\\.com\\/watch\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,9', '[youtube]', '[/youtube]', 'YouTube Video', '', '', 'bbcode-youtube', 1, 1, 1, 0, '0000-00-00 00:00:00'),
(2, 'YouTube Video (short syntax)', '[youtube]{IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 2, 1, 0, '0000-00-00 00:00:00'),
(3, 'YouTube Video (alternate syntax)', '[youtube]http://www.youtube.com/watch?v={IDENTIFIER}{TEXT}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\:\\/\\/www\\.youtube\\.com\\/watch\\?v\\=([A-Za-z0-9-_]+)([\\w0-9-\\+\\=\\!\\?\\(\\)\\[\\]\\{\\}\\&\\%\\*\\#\\.,_ ]+)\\[\\/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,9', '[youtube]', '[/youtube]', 'YouTube Video', '', '', '', 0, 3, 1, 0, '0000-00-00 00:00:00'),
(4, 'YouTube Video (alternate syntax)', '[youtube]http://www.youtube.com/watch?feature=player_embedded&v={IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\://www\\.youtube\\.com/watch\\?feature\\=player_embedded&v\\=([\\w0-9-_]+)\\[/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 4, 1, 0, '0000-00-00 00:00:00'),
(5, 'YouTube Video (alternate syntax)', '[youtube]http://youtu.be/{IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\://youtu\\.be/([\\w0-9-_]+)\\[/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 5, 1, 0, '0000-00-00 00:00:00'),
(6, 'Facebook Video', '[fv]http://www.facebook.com/video/video.php?v={IDENTIFIER}[/fv]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id={IDENTIFIER}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v={IDENTIFIER}', '\\[fv\\]http\\:\\/\\/www\\.facebook\\.com\\/video\\/video\\.php\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id=${1}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v=${1}', '1,2,3,4,5,6,7,8,9', '[fv]', '[/fv]', 'Facebook Video', '', '', 'bbcode-facebook', 1, 6, 1, 0, '0000-00-00 00:00:00'),
(7, 'Facebook Video (short syntax)', '[fv]{IDENTIFIER}[/fv]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id={IDENTIFIER}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v={IDENTIFIER}', '\\[fv\\]([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id=${1}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v=${1}', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 7, 1, 0, '0000-00-00 00:00:00'),
(8, 'Facebook Video (alternate syntax)', '[fv]http://www.facebook.com/photo.php?v={IDENTIFIER}[/fv]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id={IDENTIFIER}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v={IDENTIFIER}', '\\[fv\\]http\\:\\/\\/www\\.facebook\\.com\\/photo\\.php\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id=${1}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v=${1}', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 8, 1, 0, '0000-00-00 00:00:00'),
(9, 'Instagram', '[instagram]http://instagram.com/p/{IDENTIFIER}/[/instagram]', '<iframe width="425" height="350" src="//instagram.com/p/{IDENTIFIER}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/{IDENTIFIER}/', '\\[instagram\\]http\\:\\/\\/instagram\\.com\\/p\\/([\\w0-9-_]+)\\/\\[/instagram\\]', '<iframe width="425" height="350" src="//instagram.com/p/${1}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/${1}/', '1,2,3,4,5,6,7,8,9', '[instagram]', '[/instagram]', 'Instagram Photo', '', '', 'bbcode-instagram', 1, 9, 1, 0, '0000-00-00 00:00:00'),
(10, 'Instagram (short syntax)', '[instagram]{IDENTIFIER}[/instagram]', '<iframe width="425" height="350" src="//instagram.com/p/{IDENTIFIER}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/{IDENTIFIER}/', '\\[instagram\\]([\\w0-9-_]+)\\[/instagram\\]', '<iframe width="425" height="350" src="//instagram.com/p/${1}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/${1}/', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 10, 1, 0, '0000-00-00 00:00:00'),
(11, 'Instagram (alternate syntax)', '[instagram]http://instagram.com/p/{IDENTIFIER}[/instagram]', '<iframe width="425" height="350" src="//instagram.com/p/{IDENTIFIER}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/{IDENTIFIER}/', '\\[instagram\\]http\\:\\/\\/instagram\\.com\\/p\\/([\\w0-9-_]+)\\[/instagram\\]', '<iframe width="425" height="350" src="//instagram.com/p/${1}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/${1}/', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 11, 1, 0, '0000-00-00 00:00:00'),
(12, 'Vimeo', '[vimeo]http://vimeo.com/{IDENTIFIER}/[/vimeo]', '<iframe width="425" height="239" src="//player.vimeo.com/video/{IDENTIFIER}/" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/{IDENTIFIER}/', '\\[vimeo\\]http\\:\\/\\/vimeo\\.com\\/([\\w0-9-_]+)\\[/vimeo\\]', '<iframe width="425" height="239" src="//player.vimeo.com/video/${1}" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/${1}/', '1,2,3,4,5,6,7,8,9', '[vimeo]', '[/vimeo]', 'Vimeo Video', '', '', 'bbcode-vimeo', 1, 12, 1, 0, '0000-00-00 00:00:00'),
(13, 'Vimeo (short syntax)', '[vimeo]{IDENTIFIER}[/vimeo]', '<iframe width="425" height="239" src="//player.vimeo.com/video/{IDENTIFIER}/" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/{IDENTIFIER}/', '\\[vimeo\\]([\\w0-9-_]+)\\[/vimeo\\]', '<iframe width="425" height="239" src="//player.vimeo.com/video/${1}" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/${1}/', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 13, 1, 0, '0000-00-00 00:00:00'),
(14, 'Vimeo (alternate syntax)', '[vimeo]https://vimeo.com/{IDENTIFIER}/[/vimeo]', '<iframe width="425" height="239" src="//player.vimeo.com/video/{IDENTIFIER}/" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'https://vimeo.com/{IDENTIFIER}/', '\\[vimeo\\]https\\:\\/\\/vimeo\\.com\\/([\\w0-9-_]+)\\[/vimeo\\]', '<iframe width="425" height="239" src="//player.vimeo.com/video/${1}" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'https://vimeo.com/${1}/', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 13, 1, 0, '0000-00-00 00:00:00'),
(15, 'Wiki', '[wiki]{SIMPLETEXT}[/wiki]', '<a href="http://www.wikipedia.org/wiki/{SIMPLETEXT}" title="{SIMPLETEXT}" target="_blank">{SIMPLETEXT}</a>', '{SIMPLETEXT}', '\\[wiki\\]([A-Za-z0-9\\-\\+\\.,_ ]+)\\[\\/wiki\\]', '<a href="http://www.wikipedia.org/wiki/${1}" title="${1}" target="_blank">${1}</a>', '${1}', '1,2,3,4,5,6,7,8,9', '[wiki]', '[/wiki]', 'Wikipedia', '', '', 'bbcode-wiki', 1, 14, 1, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feed_jcomments_mailq`
--

CREATE TABLE IF NOT EXISTS `feed_jcomments_mailq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) NOT NULL DEFAULT '0',
  `session_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_priority` (`priority`),
  KEY `idx_attempts` (`attempts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jcomments_objects`
--

CREATE TABLE IF NOT EXISTS `feed_jcomments_objects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `expired` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_object` (`object_id`,`object_group`,`lang`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `feed_jcomments_objects`
--

INSERT INTO `feed_jcomments_objects` (`id`, `object_id`, `object_group`, `category_id`, `lang`, `title`, `link`, `access`, `userid`, `expired`, `modified`) VALUES
(1, 3, 'com_content', 9, 'en-GB', 'Business information systems', '/joomla123/index.php/category-courses/3-business-info', 1, 474, 0, '2014-12-13 16:30:54'),
(2, 8, 'com_content', 9, 'en-GB', 'recent commments article', '/joomla123/index.php/about-courseguide/8-adca', 1, 474, 0, '2014-11-23 19:20:43'),
(3, 5, 'com_content', 9, 'en-GB', 'Your Modules', '/joomla123/index.php/about-courseguide/5-your-modules', 1, 474, 0, '2014-11-23 20:13:41'),
(4, 4, 'com_content', 9, 'en-GB', 'About your home page', '/joomla123/index.php/about-courseguide/4-about-your-home-page', 1, 474, 0, '2014-11-23 21:03:56'),
(5, 9, 'com_content', 9, 'en-GB', 'Java programming', '/joomla123/index.php/category-courses/9-java-programming', 1, 474, 0, '2014-12-13 15:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `feed_jcomments_reports`
--

CREATE TABLE IF NOT EXISTS `feed_jcomments_reports` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `commentid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` tinytext NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jcomments_settings`
--

CREATE TABLE IF NOT EXISTS `feed_jcomments_settings` (
  `component` varchar(50) NOT NULL DEFAULT '',
  `lang` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`component`,`lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_jcomments_settings`
--

INSERT INTO `feed_jcomments_settings` (`component`, `lang`, `name`, `value`) VALUES
('', '', 'author_email', '0'),
('', '', 'author_homepage', '0'),
('', '', 'author_name', '0'),
('', '', 'autolinkurls', '6,7,2,3,4,5,8'),
('', '', 'autopublish', '6,7,2,3,4,5,8'),
('', '', 'badwords', ''),
('', '', 'can_ban', '7,8'),
('', '', 'can_comment', '6,7,2,3,4,5,8'),
('', '', 'can_delete', '6,7,8'),
('', '', 'can_delete_for_my_object', ''),
('', '', 'can_delete_own', '6,7,8'),
('', '', 'can_edit', '6,7,8'),
('', '', 'can_edit_for_my_object', ''),
('', '', 'can_edit_own', '6,7,3,4,5,8'),
('', '', 'can_publish', '6,7,5,8'),
('', '', 'can_publish_for_my_object', ''),
('', '', 'can_reply', '6,7,3,4,5,8'),
('', '', 'can_report', '6,7,2,3,4,5,8'),
('', '', 'can_view_email', '6,7,8'),
('', '', 'can_view_homepage', '6,7,3,4,5,8'),
('', '', 'can_view_ip', '7,8'),
('', '', 'can_vote', '6,7,3,4,5,8'),
('', '', 'captcha_engine', 'kcaptcha'),
('', '', 'censor_replace_word', '[censored]'),
('', '', 'comments_list_order', 'ASC'),
('', '', 'comments_page_limit', '15'),
('', '', 'comments_pagination', 'both'),
('', '', 'comments_per_page', '5'),
('', '', 'comments_tree_order', '0'),
('', '', 'comment_maxlength', '1000'),
('', '', 'comment_minlength', '0'),
('', '', 'comment_title', '0'),
('', '', 'delete_mode', '0'),
('', '', 'display_author', 'name'),
('', '', 'emailprotection', ''),
('', '', 'enable_autocensor', '1,9'),
('', '', 'enable_bbcode_b', '6,7,3,4,5,8'),
('', '', 'enable_bbcode_code', '2,3,4,5,6,7,8'),
('', '', 'enable_bbcode_hide', '6,7,3,4,5,8'),
('', '', 'enable_bbcode_i', '6,7,3,4,5,8'),
('', '', 'enable_bbcode_img', '6,7,3,4,5,8'),
('', '', 'enable_bbcode_list', '6,7,3,4,5,8'),
('', '', 'enable_bbcode_quote', '6,7,3,4,5,8'),
('', '', 'enable_bbcode_s', '6,7,3,4,5,8'),
('', '', 'enable_bbcode_u', '6,7,3,4,5,8'),
('', '', 'enable_bbcode_url', '6,7,3,4,5,8'),
('', '', 'enable_blacklist', '0'),
('', '', 'enable_captcha', ''),
('', '', 'enable_categories', '9'),
('', '', 'enable_comment_length_check', '2'),
('', '', 'enable_comment_maxlength_check', ''),
('', '', 'enable_custom_bbcode', '0'),
('', '', 'enable_geshi', '0'),
('', '', 'enable_gravatar', ''),
('', '', 'enable_nested_quotes', '0'),
('', '', 'enable_notification', '0'),
('', '', 'enable_plugins', '0'),
('', '', 'enable_quick_moderation', '0'),
('', '', 'enable_reports', '1'),
('', '', 'enable_rss', '0'),
('', '', 'enable_smilies', '0'),
('', '', 'enable_subscribe', '9,6,7,3,4,5,8'),
('', '', 'enable_username_check', '1'),
('', '', 'enable_voting', '1'),
('', '', 'feed_limit', '100'),
('', '', 'floodprotection', '2,3,4'),
('', '', 'flood_time', '30'),
('', '', 'forbidden_names', 'administrator,moderator'),
('', '', 'form_position', '0'),
('', '', 'form_show', '1'),
('', '', 'link_maxlength', '50'),
('', '', 'load_cached_comments', '1'),
('', '', 'max_comments_per_object', '0'),
('', '', 'merge_time', '0'),
('', '', 'message_banned', ''),
('', '', 'message_locked', 'Comments are now closed for this entry'),
('', '', 'message_policy_post', ''),
('', '', 'message_policy_whocancomment', 'You have no rights to post comments'),
('', '', 'notification_email', ''),
('', '', 'notification_type', '1,2'),
('', '', 'reports_before_unpublish', '0'),
('', '', 'reports_per_comment', '0'),
('', '', 'report_reason_required', '1'),
('', '', 'show_commentlength', '1'),
('', '', 'show_policy', '1,2'),
('', '', 'smilies', ':D	laugh.gif\n:lol:	lol.gif\n:-)	smile.gif\n;-)	wink.gif\n8)	cool.gif\n:-|	normal.gif\n:-*	whistling.gif\n:oops:	redface.gif\n:sad:	sad.gif\n:cry:	cry.gif\n:o	surprised.gif\n:-?	confused.gif\n:-x	sick.gif\n:eek:	shocked.gif\n:zzz	sleeping.gif\n:P	tongue.gif\n:roll:	rolleyes.gif\n:sigh:	unsure.gif'),
('', '', 'smilies_path', '/components/com_jcomments/images/smilies/'),
('', '', 'template', 'default'),
('', '', 'template_view', 'list'),
('', '', 'username_maxlength', '20'),
('', '', 'word_maxlength', '50');

-- --------------------------------------------------------

--
-- Table structure for table `feed_jcomments_smilies`
--

CREATE TABLE IF NOT EXISTS `feed_jcomments_smilies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(39) NOT NULL DEFAULT '',
  `alias` varchar(39) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `feed_jcomments_smilies`
--

INSERT INTO `feed_jcomments_smilies` (`id`, `code`, `alias`, `image`, `name`, `published`, `ordering`, `checked_out`, `checked_out_time`) VALUES
(1, ':D', '', 'laugh.gif', 'Laugh', 1, 1, 0, '0000-00-00 00:00:00'),
(2, ':lol:', '', 'lol.gif', 'Lol', 1, 2, 0, '0000-00-00 00:00:00'),
(3, ':-)', '', 'smile.gif', 'Smile', 1, 3, 0, '0000-00-00 00:00:00'),
(4, ';-)', '', 'wink.gif', 'Wink', 1, 4, 0, '0000-00-00 00:00:00'),
(5, '8)', '', 'cool.gif', 'Cool', 1, 5, 0, '0000-00-00 00:00:00'),
(6, ':-|', '', 'normal.gif', 'Normal', 1, 6, 0, '0000-00-00 00:00:00'),
(7, ':-*', '', 'whistling.gif', 'Whistling', 1, 7, 0, '0000-00-00 00:00:00'),
(8, ':oops:', '', 'redface.gif', 'Redface', 1, 8, 0, '0000-00-00 00:00:00'),
(9, ':sad:', '', 'sad.gif', 'Sad', 1, 9, 0, '0000-00-00 00:00:00'),
(10, ':cry:', '', 'cry.gif', 'Cry', 1, 10, 0, '0000-00-00 00:00:00'),
(11, ':o', '', 'surprised.gif', 'Surprised', 1, 11, 0, '0000-00-00 00:00:00'),
(12, ':-?', '', 'confused.gif', 'Confused', 1, 12, 0, '0000-00-00 00:00:00'),
(13, ':-x', '', 'sick.gif', 'Sick', 1, 13, 0, '0000-00-00 00:00:00'),
(14, ':eek:', '', 'shocked.gif', 'Shocked', 1, 14, 0, '0000-00-00 00:00:00'),
(15, ':zzz', '', 'sleeping.gif', 'Sleeping', 1, 15, 0, '0000-00-00 00:00:00'),
(16, ':P', '', 'tongue.gif', 'Tongue', 1, 16, 0, '0000-00-00 00:00:00'),
(17, ':roll:', '', 'rolleyes.gif', 'Rolleyes', 1, 17, 0, '0000-00-00 00:00:00'),
(18, ':sigh:', '', 'unsure.gif', 'Unsure', 1, 18, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feed_jcomments_subscriptions`
--

CREATE TABLE IF NOT EXISTS `feed_jcomments_subscriptions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL DEFAULT '',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_object` (`object_id`,`object_group`),
  KEY `idx_lang` (`lang`),
  KEY `idx_source` (`source`),
  KEY `idx_hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jcomments_version`
--

CREATE TABLE IF NOT EXISTS `feed_jcomments_version` (
  `version` varchar(16) NOT NULL DEFAULT '',
  `previous` varchar(16) NOT NULL DEFAULT '',
  `installed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jcomments_votes`
--

CREATE TABLE IF NOT EXISTS `feed_jcomments_votes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `commentid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_comment` (`commentid`,`userid`),
  KEY `idx_user` (`userid`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jvotesystem_answers`
--

CREATE TABLE IF NOT EXISTS `feed_jvotesystem_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `box_id` int(11) DEFAULT NULL,
  `answer` text NOT NULL,
  `color` varchar(6) NOT NULL,
  `published` int(11) NOT NULL,
  `autor_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `no_spam_admin` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jvotesystem_apikeys`
--

CREATE TABLE IF NOT EXISTS `feed_jvotesystem_apikeys` (
  `key` varchar(72) NOT NULL,
  `params` text NOT NULL,
  `count` int(11) NOT NULL,
  `total_count` int(11) NOT NULL,
  `last_start` datetime NOT NULL,
  `last_access` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jvotesystem_bbcodes`
--

CREATE TABLE IF NOT EXISTS `feed_jvotesystem_bbcodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `published` int(1) NOT NULL DEFAULT '1',
  `regex` text NOT NULL,
  `replace` text NOT NULL,
  `replaceNot` text,
  `withButton` int(1) NOT NULL DEFAULT '0',
  `buttonInfo` text NOT NULL,
  `editorCode` text NOT NULL,
  `buttonImage` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `feed_jvotesystem_bbcodes`
--

INSERT INTO `feed_jvotesystem_bbcodes` (`id`, `name`, `published`, `regex`, `replace`, `replaceNot`, `withButton`, `buttonInfo`, `editorCode`, `buttonImage`) VALUES
(1, 'Bold', 1, '/\\[b\\](.*?)\\[\\/b\\]/', '<b>$1</b>', '', 1, 'Enter text', '[b]{value}[/b]', 'bold.gif'),
(2, 'Underline', 1, '/\\[u\\](.*?)\\[\\/u\\]/', '<u>$1</u>', '', 1, 'Enter text', '[u]{value}[/u]', 'underline.gif'),
(3, 'Italic', 1, '/\\[i\\](.*?)\\[\\/i\\]/', '<i>$1</i>', '', 1, 'Enter text', '[i]{value}[/i]', 'italic.gif'),
(4, 'Image', 1, '/\\[img\\](.*?)\\[\\/img\\]/', '<br /><a href="$1" target="_blank"><img src="$1" style="border:0pt;max-width:300px;max-height:300px;margin:2px;" /></a><br />', ' ', 1, 'Enter full URL to the image', '[img]{value}[/img]', 'image.gif'),
(5, 'Url', 1, '/\\[url=([^ ]+).*\\](.*)\\[\\/url\\]/', '<a href="$1" target="_blank">$2</a>', ' ', 0, '', '', ''),
(6, 'Url', 1, '/\\[url\\](.*?)\\[\\/url\\]/', '<a href="$1" target="_blank">$1</a>', ' ', 1, 'Enter full URL', '[url]{value}[/url]', 'link.gif'),
(7, 'Soundcloud', 1, '/\\[soundcloud\\](.*?)\\[\\/soundcloud\\]/', '<object height="81" width="100%"> <param name="movie" value="http://player.soundcloud.com/player.swf?url=$1"></param> <param name="allowscriptaccess" value="always"></param> <param name="wmode" value="transparent"> <embed allowscriptaccess="always" height="81" src="http://player.soundcloud.com/player.swf?url=$1" type="application/x-shockwave-flash" width="100%"></embed> </object>', ' ', 0, '', '', ''),
(8, 'Youtube', 1, '/\\[youtube\\](.*?)\\[\\/youtube\\]/', '<iframe style="width:100%;" width="100%" height="349" src="http://www.youtube.com/embed/$1?wmode=transparent" frameborder="0" allowfullscreen></iframe>', ' ', 1, 'Enter Youtube-VideoID', '[youtube]{value}[/youtube]', 'youtube.gif'),
(9, 'Smile', 1, ':)', '<img src="{bbCodeImagePath}/smiles/smile.gif" style="margin:0;padding:0;border:0 none;" alt=":)" />', ' ', 1, '', ' :) ', 'smiles/smile.gif'),
(12, 'Laugh', 1, ':D', '<img src="{bbCodeImagePath}/smiles/laugh.gif" style="margin:0;padding:0;border:0 none;" alt=":D" />', ' ', 1, '', ' :D ', 'smiles/laugh.gif'),
(13, 'Normal', 1, ':-|', '<img src="{bbCodeImagePath}/smiles/normal.gif" style="margin:0;padding:0;border:0 none;" alt=":-|" />', ' ', 1, '', ' :-| ', 'smiles/normal.gif'),
(14, 'Sad', 1, ':(', '<img src="{bbCodeImagePath}/smiles/sad.gif" style="margin:0;padding:0;border:0 none;" alt=":(" />', ' ', 1, '', ':( ', 'smiles/sad.gif'),
(15, 'Lol', 1, ':lol:', '<img src="{bbCodeImagePath}/smiles/lol.gif" style="margin:0;padding:0;border:0 none;" alt=":lol:" />', ' ', 0, '', ' :lol: ', 'smiles/lol.gif'),
(16, 'Wink', 1, ';-)', '<img src="{bbCodeImagePath}/smiles/wink.gif" style="margin:0;padding:0;border:0 none;" alt=";-)" />', ' ', 0, '', ' ;-) ', 'smiles/wink.gif'),
(17, 'Cool', 1, '8)', '<img src="{bbCodeImagePath}/smiles/cool.gif" style="margin:0;padding:0;border:0 none;" alt="8)" />', ' ', 0, '', ' 8) ', 'smiles/cool.gif'),
(18, 'Whistling', 1, ':-*', '<img src="{bbCodeImagePath}/smiles/whistling.gif" style="margin:0;padding:0;border:0 none;" alt=":-*" />', ' ', 0, '', ' :-* ', 'smiles/whistling.gif'),
(19, 'Redface', 1, ':oops:', '<img src="{bbCodeImagePath}/smiles/redface.gif" style="margin:0;padding:0;border:0 none;" alt=":oops:" />', ' ', 0, '', ' :oops: ', 'smiles/redface.gif'),
(20, 'Cry', 1, ':cry:', '<img src="{bbCodeImagePath}/smiles/cry.gif" style="margin:0;padding:0;border:0 none;" alt=":cry:" />', ' ', 0, '', ' ;cry: ', 'smiles/cry.gif'),
(21, 'Surprised', 1, ':o', '<img src="{bbCodeImagePath}/smiles/surprised.gif" style="margin:0;padding:0;border:0 none;" alt=":o" />', ' ', 0, '', ' :o ', 'smiles/surprised.gif'),
(22, 'Confused', 1, ':-?', '<img src="{bbCodeImagePath}/smiles/confused.gif" style="margin:0;padding:0;border:0 none;" alt=":-?" />', ' ', 0, '', ' :-? ', 'smiles/confused.gif'),
(23, 'Sick', 1, ':-x', '<img src="{bbCodeImagePath}/smiles/sick.gif" style="margin:0;padding:0;border:0 none;" alt=":-x" />', ' ', 0, '', ' :-x ', 'smiles/sick.gif'),
(24, 'Shocked', 1, ':eek:', '<img src="{bbCodeImagePath}/smiles/shocked.gif" style="margin:0;padding:0;border:0 none;" alt=":eek:" />', ' ', 0, '', ' :eek: ', 'smiles/shocked.gif'),
(25, 'Sleeping', 1, ':zzz', '<img src="{bbCodeImagePath}/smiles/sleeping.gif" style="margin:0;padding:0;border:0 none;" alt=":zzz" />', ' ', 0, '', ' :zzz ', 'smiles/sleeping.gif'),
(26, 'Tongue', 1, ':P', '<img src="{bbCodeImagePath}/smiles/tongue.gif" style="margin:0;padding:0;border:0 none;" alt=":P" />', ' ', 0, '', ' :P ', 'smiles/tongue.gif'),
(27, 'Rolleyes', 1, ':roll:', '<img src="{bbCodeImagePath}/smiles/rolleyes.gif" style="margin:0;padding:0;border:0 none;" alt=":roll:" />', ' ', 0, '', ' :roll: ', 'smiles/rolleyes.gif'),
(28, 'Unsure', 1, ':sigh:', '<img src="{bbCodeImagePath}/smiles/unsure.gif" style="margin:0;padding:0;border:0 none;" alt=":sigh:" />', ' ', 0, '', ' :sigh: ', 'smiles/unsure.gif');

-- --------------------------------------------------------

--
-- Table structure for table `feed_jvotesystem_boxes`
--

CREATE TABLE IF NOT EXISTS `feed_jvotesystem_boxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '1',
  `title` text NOT NULL,
  `question` text NOT NULL,
  `alias` varchar(25) NOT NULL,
  `access` text NOT NULL,
  `published` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `allowed_votes` int(11) NOT NULL,
  `add_answer` int(11) NOT NULL,
  `add_comment` int(1) NOT NULL,
  `created` datetime NOT NULL,
  `autor_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jvotesystem_categories`
--

CREATE TABLE IF NOT EXISTS `feed_jvotesystem_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL,
  `title` text NOT NULL,
  `alias` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `accesslevel` int(11) NOT NULL DEFAULT '1',
  `published` int(1) NOT NULL,
  `params` text NOT NULL,
  `access` text NOT NULL,
  `autor_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jvotesystem_comments`
--

CREATE TABLE IF NOT EXISTS `feed_jvotesystem_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `autor_id` int(11) NOT NULL,
  `published` int(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `no_spam_admin` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jvotesystem_email_tasks`
--

CREATE TABLE IF NOT EXISTS `feed_jvotesystem_email_tasks` (
  `hash` varchar(72) NOT NULL,
  `params` text NOT NULL,
  `uid` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jvotesystem_logs`
--

CREATE TABLE IF NOT EXISTS `feed_jvotesystem_logs` (
  `type` varchar(10) NOT NULL,
  `time` int(11) NOT NULL,
  `time_ms` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `jvsuid` int(11) NOT NULL,
  `message` text NOT NULL,
  `pars` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jvotesystem_sessions`
--

CREATE TABLE IF NOT EXISTS `feed_jvotesystem_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cookie` varchar(32) NOT NULL,
  `rights` int(1) NOT NULL DEFAULT '0',
  `lastVisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `jsession_id` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jvotesystem_spam_reports`
--

CREATE TABLE IF NOT EXISTS `feed_jvotesystem_spam_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `block_group` varchar(10) CHARACTER SET latin1 NOT NULL,
  `block_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `msg` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jvotesystem_tasks`
--

CREATE TABLE IF NOT EXISTS `feed_jvotesystem_tasks` (
  `group` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`group`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jvotesystem_users`
--

CREATE TABLE IF NOT EXISTS `feed_jvotesystem_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jid` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL,
  `registered_time` datetime NOT NULL,
  `blocked` int(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_jvotesystem_votes`
--

CREATE TABLE IF NOT EXISTS `feed_jvotesystem_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `votes` int(11) NOT NULL,
  `voted_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_languages`
--

CREATE TABLE IF NOT EXISTS `feed_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feed_languages`
--

INSERT INTO `feed_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feed_menu`
--

CREATE TABLE IF NOT EXISTS `feed_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=148 ;

--
-- Dumping data for table `feed_menu`
--

INSERT INTO `feed_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 137, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 5, 14, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 6, 7, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 8, 9, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 10, 11, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 12, 13, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 39, 44, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 40, 41, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 42, 43, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 45, 50, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 46, 47, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 48, 49, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 51, 56, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 52, 53, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 54, 55, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 69, 70, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 59, 60, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 61, 66, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 62, 63, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 64, 65, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 57, 58, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 67, 68, 0, '*', 1),
(101, 'mainmenu', 'Courseguide about', 'about-courseguide', '', 'about-courseguide', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 33, 38, 0, '*', 0),
(102, 'bottommenu', 'Author Login', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', 0, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"index.php?Itemid=101","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(103, 'top-menu', 'Edit profile', 'edit-profile', '', 'edit-profile', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":0,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 0, '*', 0),
(104, 'authormenu', 'Create a Post', 'create-a-post', '', 'create-a-post', 'index.php?option=com_content&view=form&layout=edit', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"enable_category":"1","catid":"9","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 16, 0, '*', 0),
(105, 'authormenu', 'Add to Blog Roll', 'add-to-blog-roll', '', 'edit-blog-roll/add-to-blog-roll', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', -2, 110, 2, 21, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 18, 19, 0, '*', 0),
(106, 'authormenu', 'Site Administrator', '2012-01-04-15-46-42', '', '2012-01-04-15-46-42', 'administrator', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 27, 28, 0, '*', 0),
(107, 'authormenu', 'Log out', 'log-out', '', 'log-out', 'index.php?option=com_users&view=login', 'component', -2, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 31, 32, 0, '*', 0),
(108, 'mainmenu', 'Courseguide search', 'search-page', '', 'search-page', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 474, '2014-12-11 06:49:14', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":0,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 4, 1, '*', 0),
(109, 'authormenu', 'Working on Your Site', 'working-on-your-site', '', 'working-on-your-site', 'index.php?option=com_content&view=article&id=2', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 26, 0, '*', 0),
(110, 'authormenu', 'Blog Roll', 'edit-blog-roll', '', 'edit-blog-roll', 'index.php?option=com_weblinks&view=category&id=8', 'component', -2, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_num_links":"","filter_field":"","show_pagination_limit":"","show_headings":"","show_link_description":"","show_link_hits":"","show_pagination":"","show_pagination_results":"","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 20, 0, '*', 0),
(111, 'menu', 'com_tags', 'com-tags', '', 'com-tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 73, 74, 0, '', 1),
(112, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 75, 76, 0, '*', 1),
(113, 'authormenu', 'Site Settings', 'site-settings', '', 'working-on-your-site/site-settings', 'index.php?option=com_config&view=config&controller=config.display.config', 'component', -2, 109, 2, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 22, 23, 0, '*', 0),
(114, 'authormenu', 'Template Settings', 'template-settings', '', 'working-on-your-site/template-settings', 'index.php?option=com_config&view=templates&controller=config.display.templates', 'component', -2, 109, 2, 23, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 24, 25, 0, '*', 0),
(115, 'mainmenu', 'Author Login', 'author-login', '', 'author-login', 'index.php?option=com_users&view=login', 'component', -2, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 78, 0, '*', 0),
(116, 'mainmenu', 'Register', 'register', '', 'search-page/register', 'index.php?option=com_users&view=registration', 'component', -2, 108, 2, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Welcome","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 2, 3, 0, '*', 0),
(117, 'mainmenu', 'Register', 'register', '', 'about-courseguide/register', 'index.php?option=com_users&view=login', 'component', -2, 101, 2, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 34, 37, 0, '*', 0),
(118, 'mainmenu', 'Registration form', 'registration-form', '', 'about-courseguide/register/registration-form', 'index.php?option=com_users&view=registration', 'component', -2, 117, 3, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 35, 36, 0, '*', 0),
(119, 'top-menu', 'Log in', 'my-login', '', 'my-login', 'index.php?option=com_users&view=login&layout=baseline:login', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 5, '', 9, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 107, 110, 0, '*', 0),
(120, 'mainmenu', 'sub_login', 'sub-login', '', 'my-login/sub-login', 'index.php?option=com_users&view=login', 'component', -2, 119, 2, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 108, 109, 0, '*', 0),
(121, 'top-menu', 'Sign up', 'registration-form', '', 'registration-form', 'index.php?option=com_users&view=registration', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 5, '', 9, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 111, 112, 0, '*', 0),
(122, 'mainmenu', 'Registered users', 'registered-users', '', 'registered-users', 'index.php?option=com_content&view=category&id=9', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
(123, 'mainmenu', 'Choose a course', 'choose-a-course', '', 'choose-a-course', '', 'separator', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 81, 82, 0, '*', 0),
(124, 'authormenu', 'Menu 1', 'menu-1', '', 'menu-1', 'index.php?option=com_content&view=categories&id=12', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevelcat":"","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_articles_cat":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"alpha","order_date":"created","show_pagination":"","show_pagination_results":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","display_num":"5","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 83, 84, 0, '*', 0),
(125, 'main', 'COM_JCOMMENTS', 'com-jcomments', '', 'com-jcomments', 'index.php?option=com_jcomments', 'component', 0, 1, 1, 703, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jcomments/assets/images/icon-16-jcomments.png', 0, '', 85, 104, 0, '', 1),
(126, 'main', 'COM_JCOMMENTS_COMMENTS', 'com-jcomments-comments', '', 'com-jcomments/com-jcomments-comments', 'index.php?option=com_jcomments&view=comments', 'component', 0, 125, 2, 703, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-comments', 0, '', 86, 87, 0, '', 1),
(127, 'main', 'COM_JCOMMENTS_SETTINGS', 'com-jcomments-settings', '', 'com-jcomments/com-jcomments-settings', 'index.php?option=com_jcomments&view=settings', 'component', 0, 125, 2, 703, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-settings', 0, '', 88, 89, 0, '', 1),
(128, 'main', 'COM_JCOMMENTS_SMILIES', 'com-jcomments-smilies', '', 'com-jcomments/com-jcomments-smilies', 'index.php?option=com_jcomments&view=smilies', 'component', 0, 125, 2, 703, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-smilies', 0, '', 90, 91, 0, '', 1),
(129, 'main', 'COM_JCOMMENTS_SUBSCRIPTIONS', 'com-jcomments-subscriptions', '', 'com-jcomments/com-jcomments-subscriptions', 'index.php?option=com_jcomments&view=subscriptions', 'component', 0, 125, 2, 703, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-subscriptions', 0, '', 92, 93, 0, '', 1),
(130, 'main', 'COM_JCOMMENTS_CUSTOM_BBCODE', 'com-jcomments-custom-bbcode', '', 'com-jcomments/com-jcomments-custom-bbcode', 'index.php?option=com_jcomments&view=custombbcodes', 'component', 0, 125, 2, 703, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-custombbcodes', 0, '', 94, 95, 0, '', 1),
(131, 'main', 'COM_JCOMMENTS_BLACKLIST', 'com-jcomments-blacklist', '', 'com-jcomments/com-jcomments-blacklist', 'index.php?option=com_jcomments&view=blacklists', 'component', 0, 125, 2, 703, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-blacklist', 0, '', 96, 97, 0, '', 1),
(132, 'main', 'COM_JCOMMENTS_MAILQ', 'com-jcomments-mailq', '', 'com-jcomments/com-jcomments-mailq', 'index.php?option=com_jcomments&view=mailq', 'component', 0, 125, 2, 703, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-mailq', 0, '', 98, 99, 0, '', 1),
(133, 'main', 'COM_JCOMMENTS_IMPORT', 'com-jcomments-import', '', 'com-jcomments/com-jcomments-import', 'index.php?option=com_jcomments&view=import', 'component', 0, 125, 2, 703, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-import', 0, '', 100, 101, 0, '', 1),
(134, 'main', 'COM_JCOMMENTS_ABOUT', 'com-jcomments-about', '', 'com-jcomments/com-jcomments-about', 'index.php?option=com_jcomments&view=about', 'component', 0, 125, 2, 703, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-about', 0, '', 102, 103, 0, '', 1),
(135, 'main', 'com_rssearch', 'com-rssearch', '', 'com-rssearch', 'index.php?option=com_rssearch', 'component', 0, 1, 1, 711, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rssearch/assets/images/rssearch.gif', 0, '', 105, 106, 0, '', 1),
(136, 'mainmenu', 'Courseguide profile', 'my-profile', '', 'my-profile', 'index.php?option=com_users&view=remind', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 9, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 113, 114, 0, '*', 0),
(137, 'main', 'COM_QUICKLOGOUT', 'com-quicklogout', '', 'com-quicklogout', 'index.php?option=com_quicklogout', 'component', 0, 1, 1, 714, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 115, 116, 0, '', 1),
(138, 'top-menu', 'Log out', 'log-out-quick', '', 'log-out-quick', 'index.php?option=com_quicklogout&view=quicklogout', 'component', 1, 1, 1, 714, 0, '0000-00-00 00:00:00', 0, 2, '', 9, '{"quick_logout_redirect":"108","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":0,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 117, 118, 0, '*', 0),
(139, 'contacts-cg', 'Courseguide contacts1', 'courseguide-contacts', '', 'courseguide-contacts', 'index.php?option=com_contact&view=featured', 'component', -2, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_pagination_limit":"1","show_headings":"0","show_position_headings":"","show_email_headings":"1","show_telephone_headings":"1","show_mobile_headings":"1","show_fax_headings":"","show_suburb_headings":"1","show_state_headings":"","show_country_headings":"1","show_pagination":"","show_pagination_results":"","presentation_style":"sliders","show_name":"1","show_position":"","show_email":"1","show_street_address":"1","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 119, 120, 0, '*', 0),
(140, 'contacts-cg', 'Contact us', 'contact-us', '', 'contact-us', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Curseguide contacts","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 121, 122, 0, '*', 0),
(141, 'main', 'Free votes', 'free-votes', '', 'free-votes', 'index.php?option=com_freevotes', 'component', 0, 1, 1, 715, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 123, 124, 0, '', 1),
(142, 'main', 'COM_ACEPOLLS', 'com-acepolls', '', 'com-acepolls', 'index.php?option=com_acepolls', 'component', 0, 1, 1, 719, 0, '0000-00-00 00:00:00', 0, 1, '../media/acepolls/images/acepolls.png', 0, '', 125, 130, 0, '', 1),
(143, 'main', 'COM_ACEPOLLS_POLLS', 'com-acepolls-polls', '', 'com-acepolls/com-acepolls-polls', 'index.php?option=com_acepolls&controller=polls', 'component', 0, 142, 2, 719, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 126, 127, 0, '', 1),
(144, 'main', 'COM_ACEPOLLS_VOTES', 'com-acepolls-votes', '', 'com-acepolls/com-acepolls-votes', 'index.php?option=com_acepolls&controller=votes', 'component', 0, 142, 2, 719, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 128, 129, 0, '', 1),
(145, 'main', 'jVoteSystem', 'jvotesystem', '', 'jvotesystem', 'index.php?option=com_jvotesystem', 'component', 0, 1, 1, 721, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jvotesystem/assets/images/icon-16-jvotesystem.png', 0, '', 131, 132, 0, '', 1),
(146, 'courses', 'Course list', 'course-list', '', 'course-list', 'index.php?option=com_content&view=category&id=2', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 133, 134, 0, '*', 0),
(147, 'courses', 'Most visited - articles hidden menu', 'category-courses', '', 'category-courses', 'index.php?option=com_content&view=category&id=9', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 9, '{"show_category_title":"0","show_description":"0","show_description_image":"","maxLevel":"0","show_empty_categories":"","show_no_articles":"","show_category_heading_title":"0","show_subcat_desc":"0","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"0","filter_field":"","show_headings":"","list_show_date":"0","date_format":"","list_show_hits":"","list_show_author":"0","orderby_pri":"","orderby_sec":"hits","order_date":"","show_pagination":"0","show_pagination_results":"0","display_num":"10","show_title":"","link_titles":"1","show_intro":"0","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_readmore":"0","show_readmore_title":"0","show_icons":"","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_noauth":"0","show_feed_link":"0","feed_summary":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":0,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 135, 136, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feed_menu_types`
--

CREATE TABLE IF NOT EXISTS `feed_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `feed_menu_types`
--

INSERT INTO `feed_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'authormenu', 'Author Menu', ''),
(3, 'bottommenu', 'Bottom Menu', ''),
(4, 'top-menu', 'Top menu', 'top-menu'),
(5, 'contacts-cg', 'Courseguide contacts', 'contacts-cg'),
(6, 'courses', 'Articles menu', 'courses');

-- --------------------------------------------------------

--
-- Table structure for table `feed_messages`
--

CREATE TABLE IF NOT EXISTS `feed_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `feed_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feed_modules`
--

CREATE TABLE IF NOT EXISTS `feed_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Dumping data for table `feed_modules`
--

INSERT INTO `feed_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 52, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 0, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 0, 'Popular Articles', '', '', 1, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(4, 0, 'Recently Added Articles', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(8, 0, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 0, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 0, 'Logged-in Users', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(12, 0, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 0, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 0, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 0, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 51, 'Login Form', '', '', 7, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"pretext":"j4hj46","posttext":"4y6464","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 64, 'Breadcrumbs', '', '', 2, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 0, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(80, 0, 'Author Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 3, 0, '{"menutype":"authormenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(81, 59, 'Your recent activity', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_weblinks', 1, 1, '{"catid":"8","count":"5","ordering":"title","direction":"asc","target":"1","follow":"follow","description":"0","hits":"0","count_clicks":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(82, 67, 'Syndication', '', '', 6, 'position-7', 474, '2014-11-23 16:26:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_syndicate', 1, 0, '{"display_text":1,"text":"My Blog","format":"rss","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(83, 102, 'Archived Articles', '', '', 1, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(84, 0, 'Most Read Posts', '', '', 5, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_popular', 1, 1, '{"catid":["9"],"count":"5","show_front":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(85, 58, 'Recent comments 1', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"0","show_front":"show","count":"6","category_filtering_type":"1","catid":["9"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.created","article_ordering_direction":"DESC","article_grouping":"none","article_grouping_direction":"krsort","month_year_format":"F Y","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(86, 0, 'Bottom Menu', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"bottommenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(87, 63, 'Search', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"0","button_pos":"right","imagebutton":"0","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"101","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 50, 'Image', '', '<p><img src="images/headers/raindrops.jpg" alt="" /></p>', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 0, 'Popular Tags', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tags_popular', 1, 1, '{"maximum":"8","timeframe":"alltime","order_value":"count","order_direction":"1","display_count":0,"no_results_text":"0","minsize":1,"maxsize":2,"layout":"_:default","moduleclass_sfx":"","owncache":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 0, 'Similar Items', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tags_similar', 1, 1, '{"maximum":"5","matchtype":"any","layout":"_:default","moduleclass_sfx":"","owncache":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 0, 'Site Information', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 6, 1, '{"serverinfo":"1","siteinfo":"1","counter":"0","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(92, 0, 'Release News', '', '', 1, 'postinstall', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/www.joomla.org\\/announcements\\/release-news.feed","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(93, 48, 'jQuery login + register', '', '', 1, 'position-1', 474, '2014-11-23 15:29:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"pretext":"Log in to have full access to the feedback and charts","posttext":"Welcome to Courseguide","login":"108","logout":"101","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 49, 'Login Register', '', '', 1, 'position-1', 474, '2014-11-23 15:21:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_loginregister', 1, 1, '{"view":"0","disablelog":"0","pretext":"","posttext":"","regpretext":"","regposttext":"","login":"108","logout":"119","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","checkbox1":"1","jqueryload":"local","tou":"1","checkbox":"checked","articleid":"1","title":"I Agree to the Terms of Use","enablecap":"0","public":"","private":"","jmtheme":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 57, 'Recent comments', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_categories', 1, 1, '{"parent":"12","show_description":"0","numitems":"0","show_children":"0","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 62, 'RSSearch! module', '', '', 3, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_rssearch', 1, 1, '{"comps":["content"],"show_submit":"no","show_loop":"yes","show_type":"1","search_limit":"5","field_width":"120","results_box_width":"120","nr_words":"80","moduleclass_sfx":"","itemid":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 65, 'Top menu', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"top-menu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 68, 'Contact us', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"contacts-cg","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 71, 'jVS - Polls', '', '', 2, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_jvs_polls', 2, 1, '{"order":"popular","time":"all-time","limit":"10","show_avatar":"1","show_title":"1","show_question":"1","show_votes":"1","show_date":"1","short":"50","bbcode":"0","cat_all":"1","sub_cats":"1","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 72, 'JA Google Chart', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jagooglechart', 1, 1, '{"chart_type":"area_chart","data_source":"googlesheet","data_input":"","data_input_url":"","chart_description":"","width":"100%","height":"600","chartArea_left":"50","chartArea_top":"50","chartArea_width":"750","chartArea_height":"500","backgroundColor":"#ffffff","stroke":"#666666","strokeWidth":"0","font":"arial","chart_titleName":"","chart_titleFont":"","chart_titleSize":"9","chart_titleColor":"#000000","legend_position":"right","legend_font":"","legend_textSize":"9","legend_textColor":"#000000","tooltip_enabled":"1","tooltip_font":"","tooltip_textSize":"9","tooltip_textColor":"#000000","axis_reverseCategories":"0","axis_lineWidth":"2","axis_pointSize":"0","hAxis_title":"","hAxis_title_font":"","hAxis_title_textSize":"11","hAxis_title_textColor":"#000000","hAxis_textPosition":"out","hAxis_text_font":"","hAxis_text_textSize":"9","hAxis_text_textColor":"#000000","hAxis_direction":"1","vAxis_title":"","vAxis_title_font":"","vAxis_title_textSize":"11","vAxis_title_textColor":"#000000","vAxis_textPosition":"out","vAxis_text_font":"","vAxis_text_textSize":"9","vAxis_text_textColor":"#000000","vAxis_direction":"1","pie_is3D":"0","pie_reverseCategories":"0","pie_pieSliceBorderColor":"#ffffff","pie_pieSliceText":"percentage","pieSlice_font":"","pieSlice_textSize":"9","pieSlice_textColor":"#000000","geo_displayMode":"regions","geo_region":"world","geo_resolution":"countries","geo_enableRegionInteractivity":"1","geo_keepAspectRatio":"1","geo_markerOpacity":"1.0","geo_colorAxis_minValue":"0","geo_colorAxis_maxValue":"","geo_colorAxis_fromColor":"#ffffff","geo_colorAxis_toColor":"#35a339","geo_datalessRegionColor":"#f5f5f5","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 74, 'EXT VK Poll', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_ext_vk_poll', 2, 1, '{"ext_id":"1","script_vk":"1","api_id":"3858251","poll_id":"103147219_13ed1052ccd20cc216","width":"300","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"0","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 76, 'freevotes - grade', '', '', 4, 'position-2', 474, '2014-11-28 15:11:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_freevotes', 2, 1, '{"domanda":"1","range_da":"0","range_a":"5","img_vuoto":"modules\\/mod_freevotes\\/images\\/vuoto.png","img_pieno":"modules\\/mod_freevotes\\/images\\/pieno.png","modifica_voti":"1","aggiungi_risposte":"1","view_graph":"1","type_graph":"pie","label":"1","legend":"1","height_modulo":"100","width_wait":"50%","moduleclass_sfx":"","cache":"0","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 77, 'freevotes - all', '', '', 6, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_freevotes', 1, 1, '{"domanda":"2","range_da":"0","range_a":"5","img_vuoto":"modules\\/mod_freevotes\\/images\\/vuoto.png","img_pieno":"modules\\/mod_freevotes\\/images\\/pieno.png","modifica_voti":"0","aggiungi_risposte":"0","view_graph":"1","type_graph":"column","label":"0","legend":"0","height_modulo":"250","width_wait":"200","moduleclass_sfx":"","cache":"0","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"Beez3-beezDivision"}', 0, '*'),
(104, 78, 'freevotes - interesting', '', '', 7, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_freevotes', 1, 1, '{"domanda":"3","range_da":"0","range_a":"5","img_vuoto":"modules\\/mod_freevotes\\/images\\/vuoto.png","img_pieno":"modules\\/mod_freevotes\\/images\\/pieno.png","modifica_voti":"0","aggiungi_risposte":"0","view_graph":"1","type_graph":"pie","label":"1","legend":"1","height_modulo":"200","width_wait":"50%","moduleclass_sfx":"","cache":"0","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(105, 79, 'Main Menu (2)', '', '', 1, 'adv3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(106, 80, 'Breadcrumbs (2)', '', '', 2, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(107, 81, 'Archived Articles (2)', '', '', 4, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(108, 82, 'Popular Tags (2)', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_tags_popular', 1, 1, '{"maximum":"8","timeframe":"alltime","order_value":"count","order_direction":"1","display_count":0,"no_results_text":"0","minsize":1,"maxsize":2,"layout":"_:default","moduleclass_sfx":"","owncache":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(109, 83, 'Similar Items (2)', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_tags_similar', 1, 1, '{"maximum":"5","matchtype":"any","layout":"_:default","moduleclass_sfx":"","owncache":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(110, 84, 'Recent comments (2)', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_categories', 1, 1, '{"parent":"12","show_description":"0","numitems":"0","show_children":"0","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(111, 85, 'Course search', '', '', 1, 'bodytop3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rssearch', 1, 0, '{"comps":["content"],"show_submit":"no","show_loop":"yes","show_type":"1","search_limit":"5","field_width":"320","results_box_width":"220","nr_words":"80","moduleclass_sfx":"","itemid":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(112, 86, 'Top menu (2)', '', '', 1, 'topmenupoz', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"top-menu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(113, 87, 'Contact us (2)', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"contacts-cg","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(114, 88, 'JA Google Chart (2)', '', '', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_jagooglechart', 1, 1, '{"chart_type":"area_chart","data_source":"googlesheet","data_input":"","data_input_url":"","chart_description":"","width":"100%","height":"600","chartArea_left":"50","chartArea_top":"50","chartArea_width":"750","chartArea_height":"500","backgroundColor":"#ffffff","stroke":"#666666","strokeWidth":"0","font":"arial","chart_titleName":"","chart_titleFont":"","chart_titleSize":"9","chart_titleColor":"#000000","legend_position":"right","legend_font":"","legend_textSize":"9","legend_textColor":"#000000","tooltip_enabled":"1","tooltip_font":"","tooltip_textSize":"9","tooltip_textColor":"#000000","axis_reverseCategories":"0","axis_lineWidth":"2","axis_pointSize":"0","hAxis_title":"","hAxis_title_font":"","hAxis_title_textSize":"11","hAxis_title_textColor":"#000000","hAxis_textPosition":"out","hAxis_text_font":"","hAxis_text_textSize":"9","hAxis_text_textColor":"#000000","hAxis_direction":"1","vAxis_title":"","vAxis_title_font":"","vAxis_title_textSize":"11","vAxis_title_textColor":"#000000","vAxis_textPosition":"out","vAxis_text_font":"","vAxis_text_textSize":"9","vAxis_text_textColor":"#000000","vAxis_direction":"1","pie_is3D":"0","pie_reverseCategories":"0","pie_pieSliceBorderColor":"#ffffff","pie_pieSliceText":"percentage","pieSlice_font":"","pieSlice_textSize":"9","pieSlice_textColor":"#000000","geo_displayMode":"regions","geo_region":"world","geo_resolution":"countries","geo_enableRegionInteractivity":"1","geo_keepAspectRatio":"1","geo_markerOpacity":"1.0","geo_colorAxis_minValue":"0","geo_colorAxis_maxValue":"","geo_colorAxis_fromColor":"#ffffff","geo_colorAxis_toColor":"#35a339","geo_datalessRegionColor":"#f5f5f5","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(115, 89, 'Vote results', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_freevotes', 1, 0, '{"domanda":"2","range_da":"0","range_a":"5","img_vuoto":"modules\\/mod_freevotes\\/images\\/vuoto.png","img_pieno":"modules\\/mod_freevotes\\/images\\/pieno.png","modifica_voti":"0","aggiungi_risposte":"0","view_graph":"1","type_graph":"pie","label":"1","legend":"0","height_modulo":"200","width_wait":"10","moduleclass_sfx":"","cache":"0","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h6","header_class":"","style":"Baseline-YJsground"}', 0, '*'),
(116, 90, 'Archived Articles (3)', '', '', 4, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(117, 91, 'Breadcrumbs (3)', '', '', 2, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(118, 92, 'Contact us (3)', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"contacts-cg","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(119, 93, 'freevotes - all (3)', '', '', 6, 'position-7', 474, '2014-11-29 15:03:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_freevotes', 1, 1, '{"domanda":"2","range_da":"0","range_a":"5","img_vuoto":"modules\\/mod_freevotes\\/images\\/vuoto.png","img_pieno":"modules\\/mod_freevotes\\/images\\/pieno.png","modifica_voti":"0","aggiungi_risposte":"0","view_graph":"1","type_graph":"column","label":"0","legend":"0","height_modulo":"250","width_wait":"200","moduleclass_sfx":"","cache":"0","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"Beez3-beezDivision"}', 0, '*'),
(120, 94, 'JA Google Chart (3)', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_jagooglechart', 1, 1, '{"chart_type":"area_chart","data_source":"googlesheet","data_input":"","data_input_url":"","chart_description":"","width":"100%","height":"600","chartArea_left":"50","chartArea_top":"50","chartArea_width":"750","chartArea_height":"500","backgroundColor":"#ffffff","stroke":"#666666","strokeWidth":"0","font":"arial","chart_titleName":"","chart_titleFont":"","chart_titleSize":"9","chart_titleColor":"#000000","legend_position":"right","legend_font":"","legend_textSize":"9","legend_textColor":"#000000","tooltip_enabled":"1","tooltip_font":"","tooltip_textSize":"9","tooltip_textColor":"#000000","axis_reverseCategories":"0","axis_lineWidth":"2","axis_pointSize":"0","hAxis_title":"","hAxis_title_font":"","hAxis_title_textSize":"11","hAxis_title_textColor":"#000000","hAxis_textPosition":"out","hAxis_text_font":"","hAxis_text_textSize":"9","hAxis_text_textColor":"#000000","hAxis_direction":"1","vAxis_title":"","vAxis_title_font":"","vAxis_title_textSize":"11","vAxis_title_textColor":"#000000","vAxis_textPosition":"out","vAxis_text_font":"","vAxis_text_textSize":"9","vAxis_text_textColor":"#000000","vAxis_direction":"1","pie_is3D":"0","pie_reverseCategories":"0","pie_pieSliceBorderColor":"#ffffff","pie_pieSliceText":"percentage","pieSlice_font":"","pieSlice_textSize":"9","pieSlice_textColor":"#000000","geo_displayMode":"regions","geo_region":"world","geo_resolution":"countries","geo_enableRegionInteractivity":"1","geo_keepAspectRatio":"1","geo_markerOpacity":"1.0","geo_colorAxis_minValue":"0","geo_colorAxis_maxValue":"","geo_colorAxis_fromColor":"#ffffff","geo_colorAxis_toColor":"#35a339","geo_datalessRegionColor":"#f5f5f5","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(121, 95, 'Main Menu (3)', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(122, 96, 'Popular Tags (3)', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_tags_popular', 1, 1, '{"maximum":"8","timeframe":"alltime","order_value":"count","order_direction":"1","display_count":0,"no_results_text":"0","minsize":1,"maxsize":2,"layout":"_:default","moduleclass_sfx":"","owncache":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(123, 97, 'Recent comments (3)', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_categories', 1, 1, '{"parent":"12","show_description":"0","numitems":"0","show_children":"0","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(124, 98, 'RSSearch! module (3)', '', '', 3, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_rssearch', 1, 1, '{"comps":["content"],"show_submit":"no","show_loop":"yes","show_type":"1","search_limit":"5","field_width":"120","results_box_width":"120","nr_words":"80","moduleclass_sfx":"","itemid":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(125, 99, 'Similar Items (3)', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_tags_similar', 1, 1, '{"maximum":"5","matchtype":"any","layout":"_:default","moduleclass_sfx":"","owncache":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(126, 100, 'Top menu (3)', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"top-menu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(127, 103, 'Vote results (2)', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_freevotes', 1, 0, '{"domanda":"4","range_da":"0","range_a":"5","img_vuoto":"modules\\/mod_freevotes\\/images\\/vuoto.png","img_pieno":"modules\\/mod_freevotes\\/images\\/pieno.png","modifica_voti":"0","aggiungi_risposte":"0","view_graph":"1","type_graph":"pie","label":"1","legend":"0","height_modulo":"200","width_wait":"10","moduleclass_sfx":"","cache":"0","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h6","header_class":"","style":"Baseline-YJsground"}', 0, '*'),
(128, 104, 'Course search (2)', '', '', 1, 'bodytop3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_rssearch', 1, 0, '{"comps":["content"],"show_submit":"no","show_loop":"yes","show_type":"1","search_limit":"5","field_width":"320","results_box_width":"220","nr_words":"80","moduleclass_sfx":"","itemid":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `feed_modules_menu`
--

CREATE TABLE IF NOT EXISTS `feed_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_modules_menu`
--

INSERT INTO `feed_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 101),
(83, 102),
(83, 103),
(83, 106),
(83, 107),
(83, 108),
(83, 113),
(83, 114),
(83, 115),
(83, 116),
(83, 117),
(83, 118),
(83, 119),
(83, 120),
(83, 121),
(83, 122),
(83, 123),
(83, 124),
(83, 136),
(83, 138),
(83, 139),
(83, 140),
(83, 147),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 119),
(93, 121),
(94, 0),
(95, 0),
(96, 101),
(96, 108),
(96, 116),
(96, 146),
(96, 147),
(97, 0),
(98, 0),
(99, 0),
(101, 108),
(102, 146),
(102, 147),
(103, 101),
(104, 101),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 108),
(111, 116),
(111, 147),
(112, 0),
(113, 0),
(114, 108),
(116, 0),
(117, 0),
(118, 0),
(119, 101),
(121, 0),
(122, 0),
(123, 0),
(124, 108),
(124, 116),
(125, 0),
(126, 0),
(128, 108),
(128, 116),
(128, 147);

-- --------------------------------------------------------

--
-- Table structure for table `feed_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `feed_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_overrider`
--

CREATE TABLE IF NOT EXISTS `feed_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `feed_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `feed_postinstall_messages`
--

INSERT INTO `feed_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feed_redirect_links`
--

CREATE TABLE IF NOT EXISTS `feed_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_schemas`
--

CREATE TABLE IF NOT EXISTS `feed_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_schemas`
--

INSERT INTO `feed_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.3.6-2014-09-30');

-- --------------------------------------------------------

--
-- Table structure for table `feed_session`
--

CREATE TABLE IF NOT EXISTS `feed_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_session`
--

INSERT INTO `feed_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('62ccf32961a8ca7933a70774d1ef20ca', 0, 0, '1418690580', '__default|a:8:{s:15:"session.counter";i:40;s:19:"session.timer.start";i:1418689747;s:18:"session.timer.last";i:1418690580;s:17:"session.timer.now";i:1418690580;s:22:"session.client.browser";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:28.0) Gecko/20100101 Firefox/28.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":1:{s:5:"users";O:8:"stdClass":1:{s:5:"login";O:8:"stdClass":1:{s:4:"form";O:8:"stdClass":2:{s:4:"data";a:0:{}s:6:"return";s:39:"index.php?option=com_users&view=profile";}}}}}s:4:"user";O:5:"JUser":27:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";s:3:"510";s:4:"name";s:6:"new111";s:8:"username";s:6:"new111";s:5:"email";s:21:"new111@mailinator.com";s:8:"password";s:60:"$2y$10$SJBSQHJnBNyoDil.IBeykeI/wro2i5CkgUprSDFsxBnc80ro4CjmK";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-11-23 15:18:10";s:13:"lastvisitDate";s:19:"2014-12-14 23:44:58";s:10:"activation";s:32:"e87123c085c8ffd7db17058fe0c5d05e";s:6:"params";s:2:"{}";s:6:"groups";a:1:{i:2;s:1:"2";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";s:1:"0";s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:2;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:7;i:4;i:8;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";}s:13:"session.token";s:32:"93497a7650fc45c16baff3672f406b2a";}', 510, 'new111');

-- --------------------------------------------------------

--
-- Table structure for table `feed_tags`
--

CREATE TABLE IF NOT EXISTS `feed_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feed_tags`
--

INSERT INTO `feed_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 474, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feed_template_styles`
--

CREATE TABLE IF NOT EXISTS `feed_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `feed_template_styles`
--

INSERT INTO `feed_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"#cc0000","templateBackgroundColor":"#f4f6f7","logoFile":"","sitetitle":"Courseguide.info","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'baseline', 0, '1', 'Baseline - Default', '{"custom_css":"2","yjsg_get_styles":"style1|ef4d40","default_font":"13px","default_font_family":"8","selectors_override":"1","selectors_override_type":"2","google_font_family":"Fjalla+One|sans-serif|normal","affected_selectors":"h1,h2,h3,h4,h5,h6,.article_title,.module_title,.pagetitle,.showtext,.trialLink a","logo_image":"images\\/small_240x105.jpg","logo_width":"240px","logo_height":"105px","turn_logo_off":"2","turn_header_block_off":"2","menuName":"top-menu","default_menu_style":"1","sub_width":"200px","yjsg_menu_offset":"95","css_widthdefined":"px","css_width":"1200","site_layout":"1","widthdefined":"%","maincolumn":"55","insetcolumn":"0","leftcolumn":"32.5","rightcolumn":"12.5","widthdefined_itmid":"%","maincolumn_itmid":"46","insetcolumn_itmid":"18","leftcolumn_itmid":"18","rightcolumn_itmid":"18","yjsg_1_width":"20|20|20|20|20|0|0|0|0|0","yjsg_header_width":"33|33|33|0|0|0","yjsg_2_width":"20|20|20|20|20|0|0|0|0|0","yjsg_3_width":"20|20|20|20|20|0|0|0|0|0","yjsg_4_width":"20|20|20|20|20|0|0|0|0|0","yjsg_bodytop_width":"33|33|33|0|0|0","yjsg_yjsgbodytbottom_width":"33|33|33|0|0|0","yjsg_5_width":"20|20|20|20|20|0|0|0|0|0","yjsg_6_width":"20|20|20|20|20|0|0|0|0|0","yjsg_7_width":"20|20|20|20|20|0|0|0|0|0","ga_switch":"1","GAcode":"UA-57587039-1","ie6notice":"0","nonscript":"0","show_tools":"1","show_fres":"1","show_rtlc":"1","text_direction":"2","turn_seo_off":"2","videojs_on":"0","videojs_vimeo_on":"0","videojs_youtube_on":"0","branding_off":"1","joomlacredit_off":"1","custom_cp":"","joomla_generator_off":"1","validators_off":"1","totop_off":"1","tpopen_text":"Open","tpclose_text":"Close","tpbtn_height":"30","tpbtn_width":"100","tptran_speed":"500","yjsg_toppanel_width":"20|20|20|20|20|0|0|0|0|0","toppanel_module_style":"YJsgxhtml","bpopen_text":"Open","bpclose_text":"Close","bpbtn_height":"30","bpbtn_width":"100","bptran_speed":"500","yjsg_botpanel_width":"20|20|20|20|20|0|0|0|0|0","botpanel_module_style":"YJsground","spbox_width":"350","spbtn_poz":"45%","sptran_speed":"500","sidepanel_module_style":"YJsground","responsive_on":"1","less_compiler_on":"1","compile_css":"1","compiler_compressed":"1","use_compiled_css":"0","ajax_front_recompile":"1","buffer_front_recompile":"0","fp_controll_switch":"2","fp_chars_limit":"3000","fp_after_text":"","jq_switch":"2","YJsg1_module_style":"YJsgxhtml","YJsgh_module_style":"YJsgxhtml","YJsg2_module_style":"YJsgxhtml","YJsg3_module_style":"YJsgxhtml","YJsg4_module_style":"YJsgxhtml","YJsgmt_module_style":"YJsgxhtml","YJsgl_module_style":"YJsgxhtml","YJsgr_module_style":"YJsgxhtml","YJsgi_module_style":"YJsgxhtml","YJsgit_module_style":"YJsgxhtml","YJsgib_module_style":"YJsgxhtml","YJsgmb_module_style":"YJsgxhtml","YJsg5_module_style":"YJsgxhtml","YJsg6_module_style":"YJsgxhtml","YJsg7_module_style":"YJsgxhtml","admin_css_time":"1418327732","yjsg_assigements":"147,103,119,121,138"}');

-- --------------------------------------------------------

--
-- Table structure for table `feed_ucm_base`
--

CREATE TABLE IF NOT EXISTS `feed_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feed_ucm_content`
--

CREATE TABLE IF NOT EXISTS `feed_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_ucm_history`
--

CREATE TABLE IF NOT EXISTS `feed_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=96 ;

--
-- Dumping data for table `feed_ucm_history`
--

INSERT INTO `feed_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 10, 6, '', '2014-11-06 22:07:36', 474, 1060, '4d50f3f9862e5ec6e59cbbc05528f2629482c7ad', '{"id":10,"asset_id":53,"parent_id":"1","lft":"17","rgt":18,"level":1,"path":null,"extension":"com_content","title":"About-publish","alias":"about-publish","note":"","description":"<p>This is CATEGORY named \\"About-publish\\"<\\/p>\\r\\n<p style=\\"line-height: 15.8079996109009px;\\">gfxgfhfsgfbsfgsf<\\/p>\\r\\n<p><span style=\\"line-height: 15.8079996109009px;\\">sdfsrfdf<\\/span><span style=\\"line-height: 15.8079996109009px;\\">gfxgfhfsgfbsfgsf<\\/span><\\/p>\\r\\n<p><span style=\\"line-height: 15.8079996109009px;\\">sdfsrfdf<\\/span><span style=\\"line-height: 15.8079996109009px;\\">gfxgfhfsgfbsfgsf<\\/span><\\/p>\\r\\n<p><span style=\\"line-height: 15.8079996109009px;\\">sdfsrfdf<\\/span>gfxgfhfsgfbsfgsf<\\/p>\\r\\n<p>sdfsrfdf<\\/p>","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"474","created_time":"2014-11-06 22:07:36","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(2, 11, 9, '', '2014-11-10 12:47:29', 474, 589, '35ce25c101247abcda85a1b1a848521c39eb35b1', '{"id":11,"asset_id":54,"parent_id":"1","lft":"19","rgt":20,"level":1,"path":null,"extension":"com_weblinks","title":"Most recent comments","alias":"most-recent-comments","note":"","description":"<p>\\\\zvxcz\\\\zv\\\\<\\/p>\\r\\n<p>czxv\\\\czx\\\\xc<\\/p>","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"474","created_time":"2014-11-10 12:47:29","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(3, 12, 6, '', '2014-11-10 12:52:34', 474, 547, '8d245c432bb197609cee98e6a1d2474a38503cee', '{"id":12,"asset_id":55,"parent_id":"1","lft":"21","rgt":22,"level":1,"path":null,"extension":"com_content","title":"Recent comments","alias":"recent-comments","note":"","description":"<p>sfvsfsf<\\/p>","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"474","created_time":"2014-11-10 12:52:34","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(4, 7, 1, '', '2014-11-10 12:53:04', 474, 1678, '7efda03755384ac810c0d54664dd2bf2c561253d', '{"id":7,"asset_id":56,"title":"My recent comment 1","alias":"my-recent-comment-1","introtext":"<p>fvzdfsvzdv<\\/p>","fulltext":"","state":1,"catid":"12","created":"2014-11-10 12:53:04","created_by":"474","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-11-10 12:53:04","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 5, 1, '', '2014-11-10 13:39:57', 474, 3050, '1e116a963e4cfef4d9cfbe4dacfa4bfdf6784e48', '{"id":5,"asset_id":"40","title":"Your Modules","alias":"your-modules","introtext":"<p>Your site has some commonly used modules already preconfigured. These include:<\\/p>\\r\\n<ul>\\r\\n<li>Image Module which holds the image beneath the menu. This is a Custom HTML module that you can edit to change the image.<\\/li>\\r\\n<li>Blog Roll. which lets you link to other blogs. We''ve put in two examples, but you''ll want to change them. When you are logged in, click on blog roll on the top menu to update this.<\\/li>\\r\\n<li>Most Read Posts which lists articles based on the number of times they have been read.<\\/li>\\r\\n<li>Older Articles which lists out articles by month.<\\/li>\\r\\n<li>Syndicate which allows your readers to read your posts in a news reader.<\\/li>\\r\\n<li>Popular Tags, which will appear if you use tagging on your articles. Just enter a tag in the Tags field when editing.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. Moving your mouse over a module and clicking on the edit icon will take you to an edit screen for that module. Always be sure to save and close any module you edit.\\u00a0<\\/p>\\r\\n<p>Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more module that you can find at the <a href=\\"http:\\/\\/extensions.joomla.org\\">Joomla Extensions Directory.<\\/a><\\/p>","fulltext":"","state":1,"catid":"9","created":"2010-12-31 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-11-10 13:39:57","modified_by":"474","checked_out":"474","checked_out_time":"2014-11-10 13:39:06","publish_up":"2010-12-31 00:00:01","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":12,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"11","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 1, 3, '', '2014-11-23 16:52:36', 474, 1791, 'd1f13f2687cd3a8d7e56bc7286eb0e764033a8d9', '{"id":1,"name":"Courseguide contacts","alias":"courseguide-contacts","con_position":"7","address":"dsfsdzfdf Address, UK","suburb":"London","state":"","country":"UK","postcode":"e2 0ah","telephone":"07895850161","fax":"07895850161","misc":"","image":"","email_to":"callus@courseguide.info","default_con":0,"published":"1","checked_out":"474","checked_out_time":"2014-11-23 16:51:45","ordering":"1","params":"{\\"show_contact_category\\":\\"hide\\",\\"show_contact_list\\":\\"0\\",\\"presentation_style\\":\\"sliders\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"1\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"1\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"474","catid":"4","access":"1","mobile":"07895850161","webpage":"http:\\/\\/courseguide.info","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-11-23 16:32:42","created_by":"474","created_by_alias":"","modified":"2014-11-23 16:52:36","modified_by":"474","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"1","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":3,"hits":"0"}', 0),
(11, 1, 3, '', '2014-11-23 16:52:54', 474, 1785, '74d94ee65b871f2ee73cce34eefa374bfff689af', '{"id":1,"name":"Courseguide contacts","alias":"courseguide-contacts","con_position":"7","address":"dsfsdzfdf Address, UK","suburb":"London","state":"","country":"UK","postcode":"e2 0ah","telephone":"07895850161","fax":"07895850161","misc":"","image":"","email_to":"callus@courseguide.info","default_con":0,"published":"1","checked_out":"474","checked_out_time":"2014-11-23 16:52:36","ordering":"1","params":"{\\"show_contact_category\\":\\"hide\\",\\"show_contact_list\\":\\"0\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"1\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"1\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"474","catid":"4","access":"1","mobile":"07895850161","webpage":"http:\\/\\/courseguide.info","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-11-23 16:32:42","created_by":"474","created_by_alias":"","modified":"2014-11-23 16:52:54","modified_by":"474","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"1","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":4,"hits":"0"}', 0),
(12, 1, 3, '', '2014-11-23 17:01:00', 474, 1785, '5b0d03e9b558cbd050c4457e54f829004597c603', '{"id":1,"name":"Courseguide contacts","alias":"courseguide-contacts","con_position":"7","address":"dsfsdzfdf Address, UK","suburb":"London","state":"","country":"UK","postcode":"E2 0AH","telephone":"07895850161","fax":"07895850161","misc":"","image":"","email_to":"callus@courseguide.info","default_con":0,"published":"1","checked_out":"474","checked_out_time":"2014-11-23 16:52:54","ordering":"1","params":"{\\"show_contact_category\\":\\"hide\\",\\"show_contact_list\\":\\"0\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"1\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"1\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"475","catid":"4","access":"1","mobile":"07895850161","webpage":"http:\\/\\/courseguide.info","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-11-23 16:32:42","created_by":"474","created_by_alias":"","modified":"2014-11-23 17:01:00","modified_by":"474","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"1","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":5,"hits":"2"}', 0),
(13, 1, 3, '', '2014-11-23 17:06:34', 474, 1785, '5d5d069d3cba6895be11e3f58b88ac3b09bbbfc7', '{"id":1,"name":"Courseguide contacts","alias":"courseguide-contacts","con_position":"7","address":"dsfsdzfdf Address, UK","suburb":"London","state":"","country":"UK","postcode":"E2 0AH","telephone":"07895850161","fax":"07895850161","misc":"","image":"","email_to":"callus@courseguide.info","default_con":0,"published":"1","checked_out":"474","checked_out_time":"2014-11-23 17:01:00","ordering":"1","params":"{\\"show_contact_category\\":\\"hide\\",\\"show_contact_list\\":\\"0\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"1\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"1\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"474","catid":"4","access":"1","mobile":"07895850161","webpage":"http:\\/\\/courseguide.info","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-11-23 16:32:42","created_by":"474","created_by_alias":"","modified":"2014-11-23 17:06:34","modified_by":"474","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"1","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":6,"hits":"2"}', 0),
(14, 1, 3, '', '2014-11-23 17:08:14', 474, 1792, '532e958d832586b790e3cbc3889638d36e97d354', '{"id":1,"name":"Courseguide contacts","alias":"courseguide-contacts","con_position":"7","address":"dsfsdzfdf Address, UK","suburb":"London","state":"","country":"UK","postcode":"E2 0AH","telephone":"07895850161","fax":"07895850161","misc":"","image":"","email_to":"callus@courseguide.info","default_con":0,"published":"1","checked_out":"474","checked_out_time":"2014-11-23 17:06:34","ordering":"1","params":"{\\"show_contact_category\\":\\"hide\\",\\"show_contact_list\\":\\"1\\",\\"presentation_style\\":\\"sliders\\",\\"show_tags\\":\\"0\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"1\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"1\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"474","catid":"4","access":"1","mobile":"07895850161","webpage":"http:\\/\\/courseguide.info","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-11-23 16:32:42","created_by":"474","created_by_alias":"","modified":"2014-11-23 17:08:14","modified_by":"474","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"1","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":7,"hits":"3"}', 0),
(15, 1, 3, '', '2014-11-23 17:08:36', 474, 1789, '91e8827d8374ed174b269febbfe7fa6bb4b222ba', '{"id":1,"name":"Courseguide contacts","alias":"courseguide-contacts","con_position":"7","address":"dsfsdzfdf Address, UK","suburb":"London","state":"","country":"UK","postcode":"E2 0AH","telephone":"07895850161","fax":"07895850161","misc":"","image":"","email_to":"callus@courseguide.info","default_con":0,"published":"1","checked_out":"474","checked_out_time":"2014-11-23 17:08:14","ordering":"1","params":"{\\"show_contact_category\\":\\"hide\\",\\"show_contact_list\\":\\"1\\",\\"presentation_style\\":\\"tabs\\",\\"show_tags\\":\\"0\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"1\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"1\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"474","catid":"4","access":"1","mobile":"07895850161","webpage":"http:\\/\\/courseguide.info","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-11-23 16:32:42","created_by":"474","created_by_alias":"","modified":"2014-11-23 17:08:36","modified_by":"474","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"1","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":8,"hits":"5"}', 0),
(16, 1, 3, '', '2014-11-23 17:08:59', 474, 1789, '6dfb652ea141b02844bca4d63ad9162524d674b4', '{"id":1,"name":"Courseguide contacts","alias":"courseguide-contacts","con_position":"7","address":"dsfsdzfdf Address, UK","suburb":"London","state":"","country":"UK","postcode":"E2 0AH","telephone":"07895850161","fax":"07895850161","misc":"","image":"","email_to":"callus@courseguide.info","default_con":0,"published":"1","checked_out":"474","checked_out_time":"2014-11-23 17:08:36","ordering":"1","params":"{\\"show_contact_category\\":\\"hide\\",\\"show_contact_list\\":\\"1\\",\\"presentation_style\\":\\"tabs\\",\\"show_tags\\":\\"1\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"1\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"1\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"474","catid":"4","access":"1","mobile":"07895850161","webpage":"http:\\/\\/courseguide.info","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-11-23 16:32:42","created_by":"474","created_by_alias":"","modified":"2014-11-23 17:08:59","modified_by":"474","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"1","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":9,"hits":"6"}', 0),
(17, 1, 3, '', '2014-11-23 17:10:30', 474, 1797, 'f588706b87469db3192045488215554c3ec747f0', '{"id":1,"name":"Courseguide contacts","alias":"courseguide-contacts","con_position":"That''s us","address":"346 Bethnal Green Rd","suburb":"London","state":"","country":"UK","postcode":"E2 0AH","telephone":"07895850161","fax":"07895850161","misc":"","image":"","email_to":"callus@courseguide.info","default_con":0,"published":"1","checked_out":"474","checked_out_time":"2014-11-23 17:08:59","ordering":"1","params":"{\\"show_contact_category\\":\\"hide\\",\\"show_contact_list\\":\\"1\\",\\"presentation_style\\":\\"tabs\\",\\"show_tags\\":\\"1\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"1\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"1\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"474","catid":"4","access":"1","mobile":"07895850161","webpage":"http:\\/\\/courseguide.info","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-11-23 16:32:42","created_by":"474","created_by_alias":"","modified":"2014-11-23 17:10:30","modified_by":"474","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"1","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":10,"hits":"7"}', 0),
(18, 1, 3, '', '2014-11-23 17:12:16', 474, 1896, '2a79bcc511ccb9d08adf8942f4fafb3f5e1b1a1a', '{"id":1,"name":"Courseguide contacts","alias":"courseguide-contacts","con_position":"That''s us","address":"346 Bethnal Green Rd","suburb":"London","state":"","country":"UK","postcode":"E2 0AH","telephone":"07895850161","fax":"07895850161","misc":"<p>This is where you can find coursera! Feel free to send us your feedback or write letters :)<\\/p>","image":"","email_to":"callus@courseguide.info","default_con":0,"published":"1","checked_out":"474","checked_out_time":"2014-11-23 17:10:30","ordering":"1","params":"{\\"show_contact_category\\":\\"hide\\",\\"show_contact_list\\":\\"1\\",\\"presentation_style\\":\\"tabs\\",\\"show_tags\\":\\"1\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"1\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"1\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"474","catid":"4","access":"1","mobile":"07895850161","webpage":"http:\\/\\/courseguide.info","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-11-23 16:32:42","created_by":"474","created_by_alias":"","modified":"2014-11-23 17:12:16","modified_by":"474","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"1","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":11,"hits":"8"}', 0),
(19, 1, 3, '', '2014-11-23 17:13:04', 474, 1797, '23757195be0ad994cae0df11ca43b26dca105ed6', '{"id":1,"name":"Courseguide contacts","alias":"courseguide-contacts","con_position":"That''s us","address":"346 Bethnal Green Rd","suburb":"London","state":"","country":"UK","postcode":"E2 0AH","telephone":"07895850161","fax":"07895850161","misc":"","image":"","email_to":"callus@courseguide.info","default_con":0,"published":"1","checked_out":"474","checked_out_time":"2014-11-23 17:12:39","ordering":"1","params":"{\\"show_contact_category\\":\\"hide\\",\\"show_contact_list\\":\\"1\\",\\"presentation_style\\":\\"tabs\\",\\"show_tags\\":\\"1\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"1\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"1\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"474","catid":"4","access":"1","mobile":"07895850161","webpage":"http:\\/\\/courseguide.info","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-11-23 16:32:42","created_by":"474","created_by_alias":"","modified":"2014-11-23 17:13:04","modified_by":"474","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":13,"hits":"9"}', 0),
(20, 8, 1, '', '2014-11-23 17:56:17', 474, 1694, '8abd20af0fcec0569f49ccc15f5908de750072f7', '{"id":8,"asset_id":70,"title":"recent commments article","alias":"adca","introtext":"<p>cfvzfzcvczvzcv<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>","state":1,"catid":"12","created":"2014-11-23 17:56:17","created_by":"474","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-11-23 17:56:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 8, 1, '', '2014-11-23 17:56:57', 474, 1731, 'd4a20d4e5557b9c66b177e11823639774f6d241f', '{"id":8,"asset_id":"70","title":"recent commments article","alias":"adca","introtext":"<p>cfvzfzcvczvzcv<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>","state":1,"catid":"9","created":"2014-11-23 17:56:17","created_by":"474","created_by_alias":"","modified":"2014-11-23 17:56:57","modified_by":"474","checked_out":"474","checked_out_time":"2014-11-23 17:56:17","publish_up":"2014-11-23 17:56:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(22, 8, 1, '', '2014-11-23 17:58:34', 474, 1734, '446c67f6a287e862ab795ecf7b243aa313ad860e', '{"id":8,"asset_id":"70","title":"recent commments article","alias":"adca","introtext":"<p>cfvzfzcvczvzcv<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>","state":1,"catid":"9","created":"2014-11-23 17:56:17","created_by":"474","created_by_alias":"","modified":"2014-11-23 17:58:34","modified_by":"474","checked_out":"474","checked_out_time":"2014-11-23 17:56:57","publish_up":"2014-11-23 17:56:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"1\\",\\"show_hits\\":\\"1\\",\\"show_noauth\\":\\"1\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(23, 8, 1, '', '2014-11-23 17:59:21', 474, 1735, 'd5b529cb78e0ea30cf26c7190fa1ea4e3e804072', '{"id":8,"asset_id":"70","title":"recent commments article","alias":"adca","introtext":"<p>cfvzfzcvczvzcv<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>","state":1,"catid":"9","created":"2014-11-23 17:56:17","created_by":"474","created_by_alias":"","modified":"2014-11-23 17:59:21","modified_by":"474","checked_out":"474","checked_out_time":"2014-11-23 17:58:34","publish_up":"2014-11-23 17:56:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"1\\",\\"show_hits\\":\\"1\\",\\"show_noauth\\":\\"1\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(24, 8, 1, '', '2014-11-23 18:00:15', 474, 1743, '407283ba12e7615eecc7263be7bcb68357f86d3d', '{"id":8,"asset_id":"70","title":"recent commments article","alias":"adca","introtext":"<p>cfvzfzcvczvzcv<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>","state":1,"catid":"9","created":"2014-11-23 17:56:17","created_by":"474","created_by_alias":"","modified":"2014-11-23 18:00:15","modified_by":"474","checked_out":"474","checked_out_time":"2014-11-23 17:59:21","publish_up":"2014-11-23 17:56:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"1\\",\\"show_hits\\":\\"1\\",\\"show_noauth\\":\\"1\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(25, 8, 1, '', '2014-11-23 18:00:43', 474, 1739, '1c536e175393f2aa3aa3ee8606d7a9a99e3b5414', '{"id":8,"asset_id":"70","title":"recent commments article","alias":"adca","introtext":"<p>cfvzfzcvczvzcv<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>","state":1,"catid":"9","created":"2014-11-23 17:56:17","created_by":"474","created_by_alias":"","modified":"2014-11-23 18:00:43","modified_by":"474","checked_out":"474","checked_out_time":"2014-11-23 18:00:15","publish_up":"2014-11-23 17:56:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"1\\",\\"show_hits\\":\\"1\\",\\"show_noauth\\":\\"1\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"7","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(26, 8, 1, '', '2014-11-23 18:01:06', 474, 1739, 'a614b0e2f191ff2f51998e13cb18ca10a614ff88', '{"id":8,"asset_id":"70","title":"recent commments article","alias":"adca","introtext":"<p>cfvzfzcvczvzcv<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>","state":1,"catid":"9","created":"2014-11-23 17:56:17","created_by":"474","created_by_alias":"","modified":"2014-11-23 18:01:06","modified_by":"474","checked_out":"474","checked_out_time":"2014-11-23 18:00:43","publish_up":"2014-11-23 17:56:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"8","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(27, 9, 6, '', '2014-11-23 18:02:20', 474, 555, 'bf606d52834828bd1ad2aacd94516d82c93d44c3', '{"id":9,"asset_id":"35","parent_id":"1","lft":"15","rgt":"16","level":"1","path":"blog","extension":"com_content","title":"Courses","alias":"blog","note":"","description":"","published":"1","checked_out":"474","checked_out_time":"2014-11-23 18:01:44","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"474","created_time":"2011-01-01 00:00:01","modified_user_id":"474","modified_time":"2014-11-23 18:02:20","hits":"0","language":"*","version":"1"}', 0),
(46, 2, 1, '', '2014-11-23 22:31:37', 474, 3580, '9e6f543fb8636864e203d048d43e35468069771e', '{"id":2,"asset_id":"37","title":"Working on Your Site","alias":"working-on-your-site","introtext":"<p>Here are some basic tips for working on your site.<\\/p>\\r\\n<ul>\\r\\n<li>Joomla! has a \\"front end\\" that you are looking at now and an \\"administrator\\" or \\"back end\\" which is where you do the more advanced work of creating your site such as setting up the menus and deciding what modules to show. You need to login to the administrator separately using the same user name and password that you used to login to this part of the site.<\\/li>\\r\\n<li>One of the first things you will probably want to do is change the site title and tag line and to add a logo. To do this click on the Template Settings link in the top menu. To change your site description, browser title, default email and other items, click Site Settings. More advanced configuration options are available in the administrator.<\\/li>\\r\\n<li>To totally change the look of your site you will probably want to install a new template. In the Extensions menu click on Extensions Manager and then go to the Install tab. There are many free and commercial templates available for Joomla.<\\/li>\\r\\n<li>As you have already seen, you can control who can see different parts of you site. When you work with modules, articles or weblinks setting the Access level to Registered will mean that only logged in users can see them<\\/li>\\r\\n<li>When you create a new article or other kind of content you also can save it as Published or Unpublished. If it is Unpublished site visitors will not be able to see it but you will.<\\/li>\\r\\n<li>You can learn much more about working with Joomla from the <a href=\\"http:\\/\\/docs.joomla.org\\">Joomla documentation site<\\/a> and get help from other users at the <a href=\\"http:\\/\\/forum.joomla.org\\">Joomla forums<\\/a>. In the administrator there are help buttons on every page that provide detailed information about the functions on that page.<\\/li>\\r\\n<\\/ul>\\r\\n<p>{vote on}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-11-23 22:31:37","modified_by":"474","checked_out":"474","checked_out_time":"2014-11-23 22:31:24","publish_up":"2012-01-04 16:48:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"3","hits":"8","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `feed_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(47, 5, 1, '', '2014-11-23 22:32:04', 474, 3089, '70ab0cd146fcb901159ad17b844f2c9da15b0406', '{"id":5,"asset_id":"40","title":"Your Modules","alias":"your-modules","introtext":"<p>Your site has some commonly used modules already preconfigured. These include:<\\/p>\\r\\n<ul>\\r\\n<li>Image Module which holds the image beneath the menu. This is a Custom HTML module that you can edit to change the image.<\\/li>\\r\\n<li>Blog Roll. which lets you link to other blogs. We''ve put in two examples, but you''ll want to change them. When you are logged in, click on blog roll on the top menu to update this.<\\/li>\\r\\n<li>Most Read Posts which lists articles based on the number of times they have been read.<\\/li>\\r\\n<li>Older Articles which lists out articles by month.<\\/li>\\r\\n<li>Syndicate which allows your readers to read your posts in a news reader.<\\/li>\\r\\n<li>Popular Tags, which will appear if you use tagging on your articles. Just enter a tag in the Tags field when editing.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. Moving your mouse over a module and clicking on the edit icon will take you to an edit screen for that module. Always be sure to save and close any module you edit.\\u00a0<\\/p>\\r\\n<p>Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more module that you can find at the <a href=\\"http:\\/\\/extensions.joomla.org\\">Joomla Extensions Directory.<\\/a><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>{vote on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2010-12-31 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-11-23 22:32:04","modified_by":"474","checked_out":"474","checked_out_time":"2014-11-23 22:31:49","publish_up":"2010-12-31 00:00:01","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":13,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"17","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(49, 12, 6, '', '2014-11-23 23:51:33', 474, 597, 'cb259442eb7d3d6874f8897f48aba90d60fa49f1', '{"id":12,"asset_id":"55","parent_id":"9","lft":"16","rgt":17,"level":2,"path":"recent-comments","extension":"com_content","title":"Recent comments","alias":"recent-comments","note":"","description":"<p>sfvsfsf<\\/p>","published":"1","checked_out":"474","checked_out_time":"2014-11-23 23:51:13","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"474","created_time":"2014-11-10 12:52:34","modified_user_id":"474","modified_time":"2014-11-23 23:51:33","hits":"0","language":"*","version":"1"}', 0),
(54, 3, 1, '', '2014-11-24 00:45:36', 474, 2423, 'f89e92c81d5b8aea47e470f673da34755d5ad1e1', '{"id":3,"asset_id":"38","title":"Business information systems","alias":"welcome-to-your-blog","introtext":"<p>This is a sample blog posting.<\\/p>\\r\\n<p>If you log in to the site (the Author Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.<\\/p>\\r\\n<p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.<\\/p>\\r\\n<p>Go ahead, you can''t break it.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\"color: #222222; font-family: ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 21.2799987792969px;\\">{loadposition freevotes-grade}\\u00a0<\\/span><\\/p>\\r\\n<p>{jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2011-01-05 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-11-24 00:45:36","modified_by":"474","checked_out":"474","checked_out_time":"2014-11-24 00:45:16","publish_up":"2012-01-05 16:55:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":34,"ordering":"2","metakey":"","metadesc":"","access":"2","hits":"104","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(55, 3, 1, '', '2014-11-24 00:47:20', 474, 2417, 'd85c96ed51c69469a95566d344c641a974027d8f', '{"id":3,"asset_id":"38","title":"Business information systems","alias":"welcome-to-your-blog","introtext":"<p>This is a sample blog posting.<\\/p>\\r\\n<p>If you log in to the site (the Author Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.<\\/p>\\r\\n<p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.<\\/p>\\r\\n<p>Go ahead, you can''t break it.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\"color: #222222; font-family: ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 21.2799987792969px;\\">{loadposition freevotes}\\u00a0<\\/span><\\/p>\\r\\n<p>{jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2011-01-05 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-11-24 00:47:20","modified_by":"474","checked_out":"474","checked_out_time":"2014-11-24 00:45:36","publish_up":"2012-01-05 16:55:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":35,"ordering":"2","metakey":"","metadesc":"","access":"2","hits":"105","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(56, 3, 1, '', '2014-11-28 15:08:06', 474, 2426, '06dafe7c308b4be678efda8290b14c44556f4d87', '{"id":3,"asset_id":"38","title":"Business information systems","alias":"welcome-to-your-blog","introtext":"<p>This is a sample blog posting.<\\/p>\\r\\n<p>If you log in to the site (the Author Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.<\\/p>\\r\\n<p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.<\\/p>\\r\\n<p>Go ahead, you can''t break it.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\"color: #222222; font-family: ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 21.2799987792969px;\\">{loadmodule\\u00a0freevotes-grade}\\u00a0<\\/span><\\/p>\\r\\n<p>{jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2011-01-05 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-11-28 15:08:06","modified_by":"474","checked_out":"474","checked_out_time":"2014-11-28 15:07:54","publish_up":"2012-01-05 16:55:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":38,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"108","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(57, 3, 1, '', '2014-12-10 23:11:51', 474, 2420, '9b38f23c757bca052ba23e73d092974c2986efd7', '{"id":3,"asset_id":"38","title":"Business information systems","alias":"welcome-to-your-blog","introtext":"<p>This is a sample blog posting.<\\/p>\\r\\n<p>If you log in to the site (the Author Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.<\\/p>\\r\\n<p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.<\\/p>\\r\\n<p>Go ahead, you can''t break it.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\"color: #222222; font-family: ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 21.2799987792969px;\\">{loadmodule\\u00a0freevotes-grade}\\u00a0<\\/span><\\/p>\\r\\n<p>{jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2011-01-05 00:00:01","created_by":"474","created_by_alias":"","modified":"2014-12-10 23:11:51","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-10 23:11:09","publish_up":"2012-01-05 16:55:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":39,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"171","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(58, 3, 1, '', '2014-12-10 23:12:51', 474, 2182, '5c2ae692c68e4f6d53e159963def3fe7d7fbabc9', '{"id":3,"asset_id":"38","title":"Business information systems","alias":"business-info","introtext":"<p>This is a sample blog posting.<\\/p>\\r\\n<p>If you log in to the site (the Author Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.<\\/p>\\r\\n<p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.<\\/p>\\r\\n<p>Go ahead, you can''t break it.<\\/p>\\r\\n<p>{jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2011-01-05 00:00:01","created_by":"474","created_by_alias":"","modified":"2014-12-10 23:12:51","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-10 23:11:51","publish_up":"2012-01-05 16:55:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":40,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"171","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(59, 9, 6, '', '2014-12-10 23:19:34', 474, 583, '78704c644e980d6d494e1e7aa09b20e03f726c21', '{"id":9,"asset_id":"35","parent_id":"1","lft":"15","rgt":"18","level":"1","path":"blog","extension":"com_content","title":"Courses","alias":"blog","note":"","description":"<p>{loadposition right}<\\/p>","published":"1","checked_out":"474","checked_out_time":"2014-12-10 23:19:12","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"474","created_time":"2011-01-01 00:00:01","modified_user_id":"474","modified_time":"2014-12-10 23:19:34","hits":"0","language":"*","version":"1"}', 0),
(60, 9, 6, '', '2014-12-10 23:19:48', 474, 555, '0614455a79835d83a13c375f30bc9e6c46571842', '{"id":9,"asset_id":"35","parent_id":"1","lft":"15","rgt":"18","level":"1","path":"blog","extension":"com_content","title":"Courses","alias":"blog","note":"","description":"","published":"1","checked_out":"474","checked_out_time":"2014-12-10 23:19:34","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"474","created_time":"2011-01-01 00:00:01","modified_user_id":"474","modified_time":"2014-12-10 23:19:48","hits":"0","language":"*","version":"1"}', 0),
(61, 9, 6, '', '2014-12-10 23:19:58', 474, 558, '2c50d408cef1cfe83892ac899cdbc0e1319ec87c', '{"id":9,"asset_id":"35","parent_id":"1","lft":"15","rgt":"18","level":"1","path":"blog","extension":"com_content","title":"Courses","alias":"courses","note":"","description":"","published":"1","checked_out":"474","checked_out_time":"2014-12-10 23:19:48","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"474","created_time":"2011-01-01 00:00:01","modified_user_id":"474","modified_time":"2014-12-10 23:19:58","hits":"0","language":"*","version":"1"}', 0),
(63, 1, 1, '', '2014-12-10 23:39:32', 474, 1685, '557fc19855ebe0badabf48b284c8faa6cde94dda', '{"id":1,"asset_id":"36","title":"Course search","alias":"about","introtext":"","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-12-10 23:39:32","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-10 23:38:10","publish_up":"2012-01-04 16:10:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"302","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(64, 4, 1, '', '2014-12-10 23:51:35', 474, 1772, '8914695472308c8f1b16995fa9ad3a686c33e0e4', '{"id":4,"asset_id":"39","title":"About courseguide.info","alias":"about-courseguide","introtext":"<p>TO BE DONE<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"9","created":"2011-01-03 00:00:01","created_by":"474","created_by_alias":"","modified":"2014-12-10 23:51:35","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-10 23:50:43","publish_up":"2012-01-03 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"18","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(65, 4, 1, '', '2014-12-10 23:52:36', 474, 1799, '4ea204d22df48269f1864d40f675ae5d9a8210f5', '{"id":4,"asset_id":"39","title":"About courseguide.info","alias":"about-courseguide","introtext":"<p>TO BE DONE<\\/p>\\r\\n<p>{jcomments off}<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"9","created":"2011-01-03 00:00:01","created_by":"474","created_by_alias":"","modified":"2014-12-10 23:52:36","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-10 23:51:35","publish_up":"2012-01-03 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"20","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(66, 4, 1, '', '2014-12-10 23:56:02', 474, 1800, '465227c0399fe8dd1ba5f9c454c628ad70bd9aed', '{"id":4,"asset_id":"39","title":"About courseguide.info","alias":"about-courseguide","introtext":"<p>TO BE DONE<\\/p>\\r\\n<p>{jcomments off}<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-03 00:00:01","created_by":"474","created_by_alias":"","modified":"2014-12-10 23:56:02","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-10 23:55:55","publish_up":"2012-01-03 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"24","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(68, 1, 1, '', '2014-12-11 01:57:09', 474, 1747, '1fb9af3073dfc6855a62cd362241c30b7d5a1365', '{"id":1,"asset_id":"36","title":"Course search","alias":"course-search","introtext":"<p>Student-generated course reviews and insights.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-12-11 01:57:09","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-11 01:55:38","publish_up":"2012-01-04 16:10:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"520","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(69, 3, 1, '', '2014-12-11 22:13:43', 474, 2183, '26cf3e0b3af9bbfc848256e2cbb3fe271095f0aa', '{"id":3,"asset_id":"38","title":"Business information systems","alias":"business-info","introtext":"<p>This is a sample blog posting.<\\/p>\\r\\n<p>If you log in to the site (the Author Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.<\\/p>\\r\\n<p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.<\\/p>\\r\\n<p>Go ahead, you can''t break it.<\\/p>\\r\\n<p>{jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2011-01-05 00:00:01","created_by":"474","created_by_alias":"","modified":"2014-12-11 22:13:43","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-11 22:13:09","publish_up":"2012-01-05 16:55:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"1\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":42,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"288","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(70, 3, 1, '', '2014-12-13 15:26:38', 474, 2217, '584ad366cd27f9a8837026a8ff55748ac6e5c966', '{"id":3,"asset_id":"38","title":"Business information systems","alias":"business-info","introtext":"<p>This is a sample blog posting.<\\/p>\\r\\n<p>If you log in to the site (the Author Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.<\\/p>\\r\\n<p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.<\\/p>\\r\\n<p>Go ahead, you can''t break it.<\\/p>\\r\\n<p>{module [115] | xhtml}<\\/p>\\r\\n<p>{jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2011-01-05 00:00:01","created_by":"474","created_by_alias":"","modified":"2014-12-13 15:26:38","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 15:26:14","publish_up":"2012-01-05 16:55:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"1\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":43,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"297","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(71, 3, 1, '', '2014-12-13 15:28:54', 474, 2215, '8d551717683489132367029b744ddfec0f5f3515', '{"id":3,"asset_id":"38","title":"Business information systems","alias":"business-info","introtext":"<p>This is a sample blog posting.<\\/p>\\r\\n<p>If you log in to the site (the Author Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.<\\/p>\\r\\n<p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.<\\/p>\\r\\n<p>Go ahead, you can''t break it.<\\/p>\\r\\n<p>{module [127] | xhtml}<\\/p>\\r\\n<p>{jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2011-01-05 00:00:01","created_by":"474","created_by_alias":"","modified":"2014-12-13 15:28:54","modified_by":"474","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2012-01-05 16:55:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"1\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":44,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"300","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(76, 9, 1, '', '2014-12-13 15:41:39', 474, 1919, 'a5453816388d479afdc6d07d59c8846bdcba7b8d', '{"id":9,"asset_id":"101","title":"Java programming","alias":"java-programming","introtext":"<table style=\\"height: 40px;\\" width=\\"969\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td width=\\"400\\">{modules [127 | xhtml]}<\\/td>\\r\\n<td width=\\"569\\">xfthxgfsfsffdgf<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0{jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2014-12-11 00:14:24","created_by":"474","created_by_alias":"","modified":"2014-12-13 15:41:39","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 15:41:24","publish_up":"2014-12-11 00:14:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"36","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(77, 9, 1, '', '2014-12-13 15:44:43', 474, 1919, '393b9fc08290cf6c80078479fd43295133a52dc7', '{"id":9,"asset_id":"101","title":"Java programming","alias":"java-programming","introtext":"<table style=\\"height: 40px;\\" width=\\"969\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td width=\\"430\\">{modules [127 | xhtml]}<\\/td>\\r\\n<td width=\\"539\\">xfthxgfsfsffdgf<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0{jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2014-12-11 00:14:24","created_by":"474","created_by_alias":"","modified":"2014-12-13 15:44:43","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 15:44:08","publish_up":"2014-12-11 00:14:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"38","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(78, 9, 1, '', '2014-12-13 15:45:17', 474, 1960, '43e95dbfb7ea33865a8ee23079b37201e54ba2b3', '{"id":9,"asset_id":"101","title":"Java programming","alias":"java-programming","introtext":"<table style=\\"height: 40px;\\" width=\\"969\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td width=\\"430\\">{modules [127 | xhtml]}<\\/td>\\r\\n<td width=\\"539\\">\\r\\n<p>xfthxgfsfsffdgf\\u00a0 <\\/p>\\r\\n<p>\\u00a0{jcomments on}<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"9","created":"2014-12-11 00:14:24","created_by":"474","created_by_alias":"","modified":"2014-12-13 15:45:17","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 15:44:43","publish_up":"2014-12-11 00:14:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"40","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(79, 9, 1, '', '2014-12-13 15:45:32', 474, 1943, 'b60f0ef34e2b7d24f4ad06cb3d5174e805da3482', '{"id":9,"asset_id":"101","title":"Java programming","alias":"java-programming","introtext":"<table style=\\"height: 40px;\\" width=\\"969\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td width=\\"430\\">{modules [127 | xhtml]}<\\/td>\\r\\n<td width=\\"539\\">\\r\\n<p>xfthxgfsfsffdgf\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0 {jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2014-12-11 00:14:24","created_by":"474","created_by_alias":"","modified":"2014-12-13 15:45:32","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 15:45:17","publish_up":"2014-12-11 00:14:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"41","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(80, 9, 1, '', '2014-12-13 15:46:34', 474, 2018, '96c4ac6a9d2a73c80808c5ac5067107b02a25681', '{"id":9,"asset_id":"101","title":"Java programming","alias":"java-programming","introtext":"<table style=\\"height: 40px;\\" width=\\"969\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td width=\\"430\\">{modules [127 | xhtml]}<\\/td>\\r\\n<td style=\\"text-align: left; vertical-align: top; padding: 0;\\" rowspan=\\"2\\" width=\\"539\\">\\r\\n<p>xfthxgfsfsffdgf\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0 {jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2014-12-11 00:14:24","created_by":"474","created_by_alias":"","modified":"2014-12-13 15:46:34","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 15:45:32","publish_up":"2014-12-11 00:14:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"42","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `feed_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(81, 9, 1, '', '2014-12-13 15:46:57', 474, 2018, 'cde77780a4c871bbd9560301d1b9481ada36a94f', '{"id":9,"asset_id":"101","title":"Java programming","alias":"java-programming","introtext":"<table style=\\"height: 40px;\\" width=\\"969\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td width=\\"430\\">{modules [127 | xhtml]}<\\/td>\\r\\n<td style=\\"text-align: left; vertical-align: top; padding: 2;\\" rowspan=\\"2\\" width=\\"539\\">\\r\\n<p>xfthxgfsfsffdgf\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0 {jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2014-12-11 00:14:24","created_by":"474","created_by_alias":"","modified":"2014-12-13 15:46:57","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 15:46:34","publish_up":"2014-12-11 00:14:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":12,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"43","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(82, 9, 1, '', '2014-12-13 15:47:51', 474, 2255, '69d54bf18ac743c0143823f5b8d87e820ec517e2', '{"id":9,"asset_id":"101","title":"Java programming","alias":"java-programming","introtext":"<table style=\\"height: 40px;\\" width=\\"969\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left; vertical-align: top; padding: 2;\\" rowspan=\\"2\\" width=\\"430\\">{modules [127 | xhtml]}<\\/td>\\r\\n<td style=\\"text-align: left; vertical-align: top; padding: 2;\\" rowspan=\\"2\\" width=\\"539\\">\\r\\n<p>xfthxgfsfsffdgf sdfasdlfkjasdf<\\/p>\\r\\n<p>sdfasdfsdfasdfasdfas<\\/p>\\r\\n<p>dfsdf<\\/p>\\r\\n<p>asfdasdfasdfasdfsadfasdfasdfasdf<\\/p>\\r\\n<p>asdfasdfasdfasd<\\/p>\\r\\n<p>fasdfasdfasdfasdfasfa<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0 {jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2014-12-11 00:14:24","created_by":"474","created_by_alias":"","modified":"2014-12-13 15:47:51","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 15:46:57","publish_up":"2014-12-11 00:14:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":13,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"44","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(83, 9, 1, '', '2014-12-13 15:48:38', 474, 2273, '70754cd415edc1c94e5af3c58cb4493a3d2762d8', '{"id":9,"asset_id":"101","title":"Java programming","alias":"java-programming","introtext":"<table style=\\"height: 50px;\\" width=\\"969\\" cellpadding=\\"2\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left; vertical-align: top; padding: 2;\\" rowspan=\\"2\\" width=\\"430\\">{modules [127 | xhtml]}<\\/td>\\r\\n<td style=\\"text-align: left; vertical-align: top; padding: 2;\\" rowspan=\\"2\\" width=\\"539\\">\\r\\n<p>xfthxgfsfsffdgf sdfasdlfkjasdf<\\/p>\\r\\n<p>sdfasdfsdfasdfasdfas<\\/p>\\r\\n<p>dfsdf<\\/p>\\r\\n<p>asfdasdfasdfasdfsadfasdfasdfasdf<\\/p>\\r\\n<p>asdfasdfasdfasd<\\/p>\\r\\n<p>fasdfasdfasdfasdfasfa<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0 {jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2014-12-11 00:14:24","created_by":"474","created_by_alias":"","modified":"2014-12-13 15:48:38","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 15:47:51","publish_up":"2014-12-11 00:14:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":14,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"45","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(84, 9, 1, '', '2014-12-13 15:48:59', 474, 2274, '97597ddfc8929b22e2e8c912d59d5cf8a9b2e302', '{"id":9,"asset_id":"101","title":"Java programming","alias":"java-programming","introtext":"<table style=\\"height: 50px;\\" width=\\"969\\" cellpadding=\\"10\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left; vertical-align: top; padding: 2;\\" rowspan=\\"2\\" width=\\"430\\">{modules [127 | xhtml]}<\\/td>\\r\\n<td style=\\"text-align: left; vertical-align: top; padding: 2;\\" rowspan=\\"2\\" width=\\"539\\">\\r\\n<p>xfthxgfsfsffdgf sdfasdlfkjasdf<\\/p>\\r\\n<p>sdfasdfsdfasdfasdfas<\\/p>\\r\\n<p>dfsdf<\\/p>\\r\\n<p>asfdasdfasdfasdfsadfasdfasdfasdf<\\/p>\\r\\n<p>asdfasdfasdfasd<\\/p>\\r\\n<p>fasdfasdfasdfasdfasfa<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0 {jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2014-12-11 00:14:24","created_by":"474","created_by_alias":"","modified":"2014-12-13 15:48:59","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 15:48:38","publish_up":"2014-12-11 00:14:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":15,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"46","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(85, 3, 1, '', '2014-12-13 15:52:27', 474, 2216, '898958d636b2f1ce783e46ff9f5f09a90e638fe5', '{"id":3,"asset_id":"38","title":"Business information systems","alias":"business-info","introtext":"<p>This is a sample blog posting.<\\/p>\\r\\n<p>If you log in to the site (the Author Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.<\\/p>\\r\\n<p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.<\\/p>\\r\\n<p>Go ahead, you can''t break it.<\\/p>\\r\\n<p>{module [115] | xhtml}<\\/p>\\r\\n<p>{jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2011-01-05 00:00:01","created_by":"474","created_by_alias":"","modified":"2014-12-13 15:52:27","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 15:52:04","publish_up":"2012-01-05 16:55:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":46,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"302","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(86, 3, 1, '', '2014-12-13 15:57:38', 474, 2276, 'dbc1ed6e74ba2453bb59dbd2a42a9c6115dfc346', '{"id":3,"asset_id":"38","title":"Business information systems","alias":"business-info","introtext":"<table style=\\"height: 50px;\\" width=\\"969\\" cellpadding=\\"10\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left; vertical-align: top; padding: 2;\\" rowspan=\\"2\\" width=\\"430\\">{modules [115 | xhtml]}<\\/td>\\r\\n<td style=\\"text-align: left; vertical-align: top; padding: 2;\\" rowspan=\\"2\\" width=\\"539\\">\\r\\n<p>xfthxgfsfsffdgf sdfasdlfkjasdf<\\/p>\\r\\n<p>sdfasdfsdfasdfasdfas<\\/p>\\r\\n<p>dfsdf<\\/p>\\r\\n<p>asfdasdfasdfasdfsadfasdfasdfasdf<\\/p>\\r\\n<p>asdfasdfasdfasd<\\/p>\\r\\n<p>fasdfasdfasdfasdfasfa<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>{jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2011-01-05 00:00:01","created_by":"474","created_by_alias":"","modified":"2014-12-13 15:57:38","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 15:57:22","publish_up":"2012-01-05 16:55:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":47,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"303","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(87, 9, 1, '', '2014-12-13 16:07:55', 474, 2274, '02dc202e3f3ae7300491e956d8332b789aa47825', '{"id":9,"asset_id":"101","title":"Java programming","alias":"java-programming","introtext":"<table style=\\"height: 50px;\\" width=\\"969\\" cellpadding=\\"10\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left; vertical-align: top; padding: 2;\\" rowspan=\\"2\\" width=\\"530\\">{modules [127 | xhtml]}<\\/td>\\r\\n<td style=\\"text-align: left; vertical-align: top; padding: 2;\\" rowspan=\\"2\\" width=\\"439\\">\\r\\n<p>xfthxgfsfsffdgf sdfasdlfkjasdf<\\/p>\\r\\n<p>sdfasdfsdfasdfasdfas<\\/p>\\r\\n<p>dfsdf<\\/p>\\r\\n<p>asfdasdfasdfasdfsadfasdfasdfasdf<\\/p>\\r\\n<p>asdfasdfasdfasd<\\/p>\\r\\n<p>fasdfasdfasdfasdfasfa<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0 {jcomments on}<\\/p>","fulltext":"","state":1,"catid":"9","created":"2014-12-11 00:14:24","created_by":"474","created_by_alias":"","modified":"2014-12-13 16:07:55","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 16:07:27","publish_up":"2014-12-11 00:14:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":17,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"55","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(88, 1, 1, '', '2014-12-13 16:19:31', 474, 1781, '5304f1c12f1e45f7f29197981b5d5c33b1d30432', '{"id":1,"asset_id":"36","title":"Course search","alias":"course-search","introtext":"<p>{module [114 | xhtml]}<\\/p>\\r\\n<p>Student-generated course reviews and insights.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-12-13 16:19:31","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 16:18:52","publish_up":"2012-01-04 16:10:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"786","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(89, 1, 1, '', '2014-12-13 16:20:02', 474, 1773, '4f2806ffa0c7eaed7b5aa9880743f96be0289aa8', '{"id":1,"asset_id":"36","title":"Course search","alias":"course-search","introtext":"<p>{module [114]}<\\/p>\\r\\n<p>Student-generated course reviews and insights.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-12-13 16:20:02","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 16:19:31","publish_up":"2012-01-04 16:10:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"789","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(90, 1, 1, '', '2014-12-13 16:20:12', 474, 1765, 'b2a064eee842aa7d8ebbde00e515c2de41445496', '{"id":1,"asset_id":"36","title":"Course search","alias":"course-search","introtext":"<p>\\u00a0<\\/p>\\r\\n<p>Student-generated course reviews and insights.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-12-13 16:20:12","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 16:20:02","publish_up":"2012-01-04 16:10:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"792","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(91, 1, 1, '', '2014-12-13 16:20:40', 474, 1775, '9b2937dcb0e546e85cd7280493257062f73f1417', '{"id":1,"asset_id":"36","title":"Course search","alias":"course-search","introtext":"<p>\\u00a0<\\/p>\\r\\n<p><em>Student-generated course reviews and insights.<\\/em><\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-12-13 16:20:40","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 16:20:12","publish_up":"2012-01-04 16:10:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"794","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(92, 1, 1, '', '2014-12-13 16:21:02', 474, 1804, '71a3efbf653a37a9d40af06b774a2bac0df1e779', '{"id":1,"asset_id":"36","title":"Course search","alias":"course-search","introtext":"<p>\\u00a0<\\/p>\\r\\n<hr \\/>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><em>Student-generated course reviews and insights.<\\/em><\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-12-13 16:21:02","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 16:20:40","publish_up":"2012-01-04 16:10:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"796","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(93, 1, 1, '', '2014-12-13 16:22:02', 474, 1834, '2f7d3ea6264609bc959045a3d86fe8f2f6d4ddf1', '{"id":1,"asset_id":"36","title":"Course search","alias":"course-search","introtext":"<p>\\u00a0<\\/p>\\r\\n<hr \\/>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><em>Student-generated course reviews and insights.<\\/em><\\/p>\\r\\n<hr \\/>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-12-13 16:22:02","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 16:21:02","publish_up":"2012-01-04 16:10:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"798","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(94, 1, 1, '', '2014-12-13 16:25:50', 474, 1835, '27f095a7c2ef39f81ac605ddae7c5337984a6682', '{"id":1,"asset_id":"36","title":"Course search","alias":"course-search","introtext":"<p>\\u00a0<\\/p>\\r\\n<hr \\/>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><em>Student-generated course reviews and insights.<\\/em><\\/p>\\r\\n<hr \\/>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-12-13 16:25:50","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 16:22:02","publish_up":"2012-01-04 16:10:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"0\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"806","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(95, 1, 1, '', '2014-12-13 16:26:57', 474, 1746, 'a3d62dad9bf4722e88b45d50e8e386e48aa846f0', '{"id":1,"asset_id":"36","title":"Course search","alias":"course-search","introtext":"<p>\\u00a0<\\/p>\\r\\n<hr \\/>\\r\\n<p><em>Student-generated course reviews and insights.<\\/em><\\/p>\\r\\n<hr \\/>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"474","created_by_alias":"Joomla","modified":"2014-12-13 16:26:57","modified_by":"474","checked_out":"474","checked_out_time":"2014-12-13 16:25:50","publish_up":"2012-01-04 16:10:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_intro\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"0\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":12,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"807","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feed_updates`
--

CREATE TABLE IF NOT EXISTS `feed_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_update_sites`
--

CREATE TABLE IF NOT EXISTS `feed_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `feed_update_sites`
--

INSERT INTO `feed_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 0, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 0, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, ''),
(5, 'flashChart Updates', 'extension', 'http://www.jschmidt-systemberatung.de/downloads/flashchart_updates.xml', 1, 0, ''),
(6, 'JComments Update Site', 'extension', 'http://www.joomlatune.ru/updates/jcomments.xml', 1, 0, ''),
(7, 'AcePolls Updates', 'extension', 'http://www.joomace.net/j16_updates.xml', 1, 0, ''),
(8, 'plg_loadmoduleinarticle', 'extension', 'http://www.pages-and-items.com/updateserver.php?ext=loadmoduleinarticle&', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `feed_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `feed_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `feed_update_sites_extensions`
--

INSERT INTO `feed_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28),
(5, 702),
(6, 703),
(7, 719),
(8, 726);

-- --------------------------------------------------------

--
-- Table structure for table `feed_usergroups`
--

CREATE TABLE IF NOT EXISTS `feed_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `feed_usergroups`
--

INSERT INTO `feed_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `feed_users`
--

CREATE TABLE IF NOT EXISTS `feed_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=529 ;

--
-- Dumping data for table `feed_users`
--

INSERT INTO `feed_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(474, 'Super User', 'admin_cg', 'admin@localhost', '$2y$10$0ZEsD9UhQQ6sZvrqZT.4KujO1SfxY4qe1nHSs8/owhsweSsRpDG2S', 0, 1, '2014-11-02 16:35:47', '2014-12-15 21:39:36', '0', '{"editor":"","timezone":"","language":"","admin_style":"","admin_language":"","helpsite":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(475, 'reg_user', 'reg_user', 'reg_user@localhost', '$2y$10$Hyo2pxY29Btxubqxj2OjJ.xb88v5dCE6v.s5pXnu3krZ2FE5v92mq', 0, 0, '2014-11-04 21:18:46', '2014-11-04 21:19:13', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(476, 'pub_user', 'pub_user', 'pub_user@localhost', '$2y$10$rEjWi1AWGgHCqduLm3lXh.4teSAcT3trn2m8/l/WoC7Il9PiaOgu.', 0, 0, '2014-11-04 21:24:39', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(477, 'new_user1', 'new_user1', 'new_user@abv.bg', '$2y$10$lO6IhUKSM5KIOXwmY0B4vuWtA0BLDdEa77pLAagpwDhnT0uWucxaS', 1, 0, '2014-11-06 21:00:32', '0000-00-00 00:00:00', '6a9ff94c4cbef9bf15ffe0efb2b65095', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(478, 'new2222', 'new2222', 'new2222@mailinator.com', '$2y$10$SJBSQHJnBNyoDil.IBeykeI/wro2i5CkgUprSDFsxBnc80ro4CjmK', 0, 1, '2014-11-06 21:18:49', '2014-11-28 15:30:15', '3034913a25e27d34531002609b4873f3', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(479, 'dxfsd', 'rrr', 'rrrrrrr@mailinator.com', '$2y$10$kQHTNRCuoOt3AgLO83vta.ueDpuEMuiNaK7G3w86lJuxowW819kNK', 0, 1, '2014-11-06 21:43:31', '2014-11-23 21:58:22', '7992b53787804402de03bea4e2cebe23', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(480, 'name1', 'name123', 'name123@mailinator.com', '$2y$10$iM0McFVV0UizTO4zvCQzGefTl7DRa5W/yV3HQlDqbjvOD.OQ9kEpy', 1, 0, '2014-11-19 20:06:22', '0000-00-00 00:00:00', '0a512e9d3d5cac78e04a003b4e76106a', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(501, '45464564', '45464564', '45464564@mailinator.com', '$2y$10$o5n/llgaDgPQRqECPZjfj.6yzbOphTKNeQowREYzYplIT8psWlQzO', 1, 0, '2014-11-19 22:42:56', '0000-00-00 00:00:00', '9a5f8badca6847d0c3a45bb41002f471', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(502, '44444', '44444', '44444@mailinator.com', '$2y$10$97l5rRR4mYUZm8mV34XDaOgAYC0pZA5ZLWdppCHVYlbXCvoLG7Okm', 1, 0, '2014-11-19 22:45:09', '0000-00-00 00:00:00', '2c2f02ec8321b33ee41c5e7757bbeb28', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(503, '555555', '4444', '555555@mailinator.com', '$2y$10$fjtNVg5AVads2MRAFu4T8.XZvZhTKABY/T8pgQjyHfW7OVAGlkY8S', 1, 0, '2014-11-19 22:54:14', '0000-00-00 00:00:00', 'ff5699099ba26ce4cfd64d4acf02621c', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(504, '55555577', '55555577', '55555577@mailinator.com', '$2y$10$AOKQ3VXEkOHjb2JYAdyrWutInZJEHaOTnMqmcMpYkO7yCxmi2ffY2', 1, 0, '2014-11-19 23:01:31', '0000-00-00 00:00:00', '0bc33c47122f675e1225f9ded52b7707', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(505, '555555771', '555555771', '555555771@mailinator.com', '$2y$10$iMDNWr6mKxQYhe7ilW/LP.epcsCxDS0wZSdsJd/GdsR8mNQlSk18.', 1, 0, '2014-11-19 23:02:31', '0000-00-00 00:00:00', '96b75adffb184077620b27cf2f9ed8ab', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(506, 'rrrrrrr@localhost', 'rrrrrrr@localhost', 'rrrrrrr@localhost', '$2y$10$aZmNJqOHfqOt.dyGeNQ1te3X2q4Z3W..YOw5S2qrHJZhNc1oEAmwS', 1, 0, '2014-11-19 23:08:50', '0000-00-00 00:00:00', '1158c044af251ca897ab162a55f12ead', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(507, 'edaesd', '4444', 'edaesd@mailinator.com', '$2y$10$qFj4IMHyBx8ZVQ9zG6lt0OoLZIbjL7A.iqg5978tQQGiyv9RUPtAy', 1, 0, '2014-11-19 23:16:20', '0000-00-00 00:00:00', '5da4bafed4e9f9456cc575657c82302c', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(508, 'edaesd1', 'edaesd1', 'edaesd1@mailinator.com', '$2y$10$HMNIWe5J9qh0ax8hTTLQBu9pd4OXjmy3UFqNcvEN.NI6XIrjYicFu', 1, 0, '2014-11-19 23:17:35', '0000-00-00 00:00:00', '51623a8d6a3d783e432c7ddc5fc0b001', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(509, 'edaesd12', '4444', 'edaesd12@mailinator.com', '$2y$10$9V5EtRgYjw.4/p8hmbkNVuhgNwMNgGEbj86SxTHWoDHlMoKcfee.q', 1, 0, '2014-11-19 23:18:13', '0000-00-00 00:00:00', '3931ee4dd170067492f0de451bee3b8f', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(510, 'new111', 'new111', 'new111@mailinator.com', '$2y$10$SJBSQHJnBNyoDil.IBeykeI/wro2i5CkgUprSDFsxBnc80ro4CjmK', 0, 1, '2014-11-23 15:18:10', '2014-12-16 00:29:15', 'e87123c085c8ffd7db17058fe0c5d05e', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(511, 'dfgfd@mailinator.com', 'dfgfd@mailinator.com', 'dfgfd@mailinator.com', '$2y$10$N72F4alDpc/ueMPhQjgRh.GSrppsYIBarEnincAjr8Eb1PVuqsD56', 0, 0, '2014-12-11 02:33:21', '2014-12-13 16:24:28', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(512, 'Vilian', 'vilian', 'v.z.zhekov@lse.ac.uk', '$2y$10$l/Kd5da2q4UV0npHFvSO0.kYaqHNSLoNpe02T0cjCCkI2ghVrBy92', 0, 0, '2014-12-11 14:41:50', '2014-12-11 19:20:07', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(513, 'rrrrr', 'rrrrr', 'rrrrr@mailinator.com', '$2y$10$WUIVW1vXvXC5v5NFFe7hauQNmDu8hPvaTLIMG/IcZ2N82yq.R6bPG', 1, 0, '2014-12-11 20:45:54', '0000-00-00 00:00:00', '0b76b13b485f982723d9e2cf2f95085b', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(514, 'rrrrr', 'rrrrrr', 'fdgdf@mailinator.com', '$2y$10$ykkuJSBDCSQ/3PvCO6FLH.Ahr0v234MZUjOrKdO89pLbrtsMM8LCa', 0, 0, '2014-12-11 20:52:45', '2014-12-11 23:50:18', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(515, 'dfgdrg', 'fgff', 'ggggggg@lse.com', '$2y$10$1Wl2jl8XJw9MEYBJ3FOuBe55sEzOKOg4neTp.QnYXv.JagKwrxIWm', 1, 0, '2014-12-11 20:55:49', '0000-00-00 00:00:00', '969309ee595445f921ad4749890e5f48', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(516, 'vik', 'vik', 'viktor.staikov@gmail.com', '$2y$10$cEXPDu4JRINwihXersfy3.7MZAjW2R2.hsvKR8DAQXXcPbKicn2hG', 0, 0, '2014-12-11 22:15:57', '2014-12-11 22:16:29', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(517, 'sfsf', 'sfs', 'sdfsdfsdf@dsfsdf.com', '$2y$10$gFXukyZAXuwNyI.yPC1v0eebErnP4Izylg0VvgrLCyOehQ/NpAsra', 1, 0, '2014-12-11 23:50:44', '0000-00-00 00:00:00', 'c873f7cc63e9f5a1bd4405f0cb8596f6', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(518, 'ffffff', 'ffffff', 'ffffff@ggggg.com', '$2y$10$Vl4qDyzlA/WEJky.gXug8OYitxOAZJFOecQq/k.K8Iv8UQaoKFsry', 1, 0, '2014-12-11 23:51:44', '0000-00-00 00:00:00', 'c38ab54618277850fdf91854bef00c16', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(519, 'sdzfsz@mailinator.com', 'sdzfsz@mailinator.com', 'sdzfsz@mailinator.com', '$2y$10$2pcmjnOme8nj49DsEuDxpOS7gRBxBqJT23puqI/DrXwd5Gx/fJq0q', 1, 0, '2014-12-11 23:53:15', '0000-00-00 00:00:00', 'f0d00a9614d23bae805ec27ba775b0fb', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(520, 'sdzfsz44@mailinator.com', 'sdzfsz44@mailinator.com', 'sdzfsz44@mailinator.com', '$2y$10$Jd65ZIladwuWvaOF.YbV/OrcppaUhVD5Fz0CTYjXRJdc717Aqr9mW', 1, 0, '2014-12-11 23:54:03', '0000-00-00 00:00:00', 'b240d18091a2653b62275a74a96b7fff', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(521, 'ttttt', 'ttttt', 'ttttt@mailinator.com', '$2y$10$XKquVGrmYPo1SWAyRzDGE.rnE/jRMGruqNAH.66ePGYujZhX5zrNK', 1, 0, '2014-12-11 23:54:44', '0000-00-00 00:00:00', 'd1cfe9e62584aae411b480f39770cd15', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(522, 'ttttt1@mailinator.com', 'ttttt1@mailinator.com', 'ttttt1@mailinator.com', '$2y$10$Nt/n4D5SB2DNSqI4OwGTVutfm0TdDeREM8VFTb0rxmpCLmmNVC3Kq', 1, 0, '2014-12-11 23:55:28', '0000-00-00 00:00:00', '4399270bdc57f878264dc2cca2e028d5', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(523, 'ttttt12@ffff.com', 'ttttt12@ffff.com', 'ttttt12@ffff.com', '$2y$10$F5wJfZSdugC8J4jtHXC1V.xOW7Ks.nbmvjNyQ0bJ1w5BtmXyh22ua', 1, 0, '2014-12-11 23:56:30', '0000-00-00 00:00:00', '3e83d5269e22501804238b5a69d1c800', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(524, 'ttttt12@ffff.com2', 'ttttt12@ffff.com2', 'ttttt12@ffff.com2', '$2y$10$mFAHvV0WgXuxLlBZ3ldFp.DJewtbWAR4pQaZopviGdXqWl7Axv8ru', 1, 0, '2014-12-11 23:57:19', '0000-00-00 00:00:00', '297de1164c29159cac5bce9b6e48ef69', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(525, 'ttttt122@ffff.com2', 'ttttt122@ffff.com2', 'ttttt122@ffff.com2', '$2y$10$sw5WPnV0vh94fZswe.6fIu3wyTSkeNrCDvrqupBVPQhXYOreU5oOu', 1, 0, '2014-12-11 23:57:59', '0000-00-00 00:00:00', '6874bbec6a9dd97a1ccb2c91a9f2164c', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(526, 'ttttt12e2@ffff.com2e', 'ttttt12e2@ffff.com2e', 'ttttt12e2@ffff.com2e', '$2y$10$nbapD3HaMj5PZQ0o3LrXieAMNHx8qYHoz6s.le0kC5HvwOEuUvXWa', 1, 0, '2014-12-11 23:58:37', '0000-00-00 00:00:00', '257c63c6394fd7c7550ebeeb7c943d90', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(527, 'ttttt12e2@ffff.com2e4', 'ttttt12e2@ffff.com2e4', 'ttttt12e2@ffff.com2e4', '$2y$10$eyWngg0z4nVCE5T0jwtGLuYNL0uEVfee6w/oX130HSSXNfN/APyOG', 1, 0, '2014-12-12 00:01:30', '0000-00-00 00:00:00', 'd79c15bf18333e8001b9fcf2f10dfed9', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(528, 'Dimitar', 'Nentchev', 'd.nentchev@lse.ac.uk', '$2y$10$13Ojx4FWA4SnMabd5ULiTelXO.d/5JwtTuHvyB.A7rsjAKOmFXAj6', 0, 0, '2014-12-13 16:25:36', '2014-12-14 23:22:43', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feed_user_keys`
--

CREATE TABLE IF NOT EXISTS `feed_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feed_user_keys`
--

INSERT INTO `feed_user_keys` (`id`, `user_id`, `token`, `series`, `invalid`, `time`, `uastring`) VALUES
(1, 'admin_cg', '$2y$10$iL7FSm9e0dJcWuK1MKew3uM5OWxrhJdKPBiOBXQZkDVbu.0eI6Vuu', 'Zv6UfL0B40xmkNE0USjh', 0, '1420130372', '231b6b2d0fa032834ab1fe4902a70464');

-- --------------------------------------------------------

--
-- Table structure for table `feed_user_notes`
--

CREATE TABLE IF NOT EXISTS `feed_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feed_user_profiles`
--

CREATE TABLE IF NOT EXISTS `feed_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `feed_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `feed_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_user_usergroup_map`
--

INSERT INTO `feed_user_usergroup_map` (`user_id`, `group_id`) VALUES
(474, 8),
(475, 2),
(476, 2),
(477, 2),
(478, 2),
(479, 2),
(480, 2),
(481, 2),
(482, 2),
(483, 2),
(484, 2),
(485, 2),
(486, 2),
(487, 2),
(488, 2),
(489, 2),
(490, 2),
(491, 2),
(492, 2),
(493, 2),
(494, 2),
(495, 2),
(496, 2),
(497, 2),
(498, 2),
(499, 2),
(500, 2),
(501, 2),
(502, 2),
(503, 2),
(504, 2),
(505, 2),
(506, 2),
(507, 2),
(508, 2),
(509, 2),
(510, 2),
(511, 2),
(512, 2),
(513, 2),
(514, 2),
(515, 2),
(516, 2),
(517, 2),
(518, 2),
(519, 2),
(520, 2),
(521, 2),
(522, 2),
(523, 2),
(524, 2),
(525, 2),
(526, 2),
(527, 2),
(528, 2);

-- --------------------------------------------------------

--
-- Table structure for table `feed_viewlevels`
--

CREATE TABLE IF NOT EXISTS `feed_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `feed_viewlevels`
--

INSERT INTO `feed_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]'),
(7, 'Student', 0, '[1]'),
(8, 'Prelogin', 0, '[1]');

-- --------------------------------------------------------

--
-- Table structure for table `feed_weblinks`
--

CREATE TABLE IF NOT EXISTS `feed_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `feed_weblinks`
--

INSERT INTO `feed_weblinks` (`id`, `catid`, `title`, `alias`, `url`, `description`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `images`) VALUES
(1, 8, 'Joomla! Community', 'joomla-community', 'http://community.joomla.org/blogs/community.html', '', 0, 1, 0, '0000-00-00 00:00:00', 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2011-01-01 00:00:01', 474, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(2, 8, 'Joomla! Leadership Blog', 'joomla-leadership-blog', 'http://community.joomla.org/blogs/leadership.html', '', 0, 1, 0, '0000-00-00 00:00:00', 2, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2011-01-01 00:00:01', 474, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
