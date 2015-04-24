-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2015 at 06:34 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dentsu_digital.ml`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicants`
--

CREATE TABLE IF NOT EXISTS `tbl_applicants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `career_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(64) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `marital_status` tinyint(1) NOT NULL,
  `id_number` varchar(128) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `address` varchar(512) NOT NULL,
  `birth_date` int(11) NOT NULL,
  `birth_place` char(32) NOT NULL,
  `education_grade` varchar(128) NOT NULL,
  `education_name` varchar(128) NOT NULL,
  `education_major` varchar(128) NOT NULL,
  `education_from` varchar(11) NOT NULL,
  `education_to` varchar(11) NOT NULL,
  `employment_name` varchar(11) NOT NULL,
  `employment_position` varchar(11) NOT NULL,
  `employment_from` varchar(11) NOT NULL,
  `employment_to` varchar(11) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `cv_file` varchar(256) NOT NULL,
  `is_located` tinyint(1) NOT NULL,
  `is_related` tinyint(1) NOT NULL,
  `messages` text,
  `available_date` int(11) NOT NULL,
  `expected_salary` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_applicants`
--

INSERT INTO `tbl_applicants` (`id`, `career_id`, `user_id`, `name`, `email`, `gender`, `marital_status`, `id_number`, `phone`, `address`, `birth_date`, `birth_place`, `education_grade`, `education_name`, `education_major`, `education_from`, `education_to`, `employment_name`, `employment_position`, `employment_from`, `employment_to`, `photo`, `cv_file`, `is_located`, `is_related`, `messages`, `available_date`, `expected_salary`, `status`, `added`, `modified`) VALUES
(1, 6, 44, 'Dyarfi 20 Defrian Yarfi', 'dyarfi20@gmail.com', 1, 1, 'ASDAD12312312313', '647474747', '45745747', 4567457, '', '1', '', '', '', '', '', '', '', '', '20131013_142521a.jpg', 'AdMob Ad Specs.pdf', 0, 0, '457457457', 0, 0, 1, 0, 1425271008),
(2, 6, 45, 'Defrian Yarfi', 'defrian.yarfi@gmail.com', 1, 1, 'ASDAD12312312313', '647474747', '45745747', 4567457, '', '1', '', '', '', '', '', '', '', '', '3b394-1513781_10205610488526266_3600135193534162242_n.jpg', '976bd-export-2015-02-13_14_37_25.xls', 0, 0, '<p>\r\n	457457457</p>\r\n', 0, 0, 1, 0, 1425271011);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_captcha`
--

CREATE TABLE IF NOT EXISTS `tbl_captcha` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(11) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `word` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=513 ;

--
-- Dumping data for table `tbl_captcha`
--

INSERT INTO `tbl_captcha` (`id`, `time`, `ip_address`, `word`) VALUES
(512, 1429095634, '::1', 'ZHioj');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_careers`
--

CREATE TABLE IF NOT EXISTS `tbl_careers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `division_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `sent_to` varchar(32) DEFAULT NULL,
  `ref_no` varchar(12) DEFAULT NULL,
  `start_date` date DEFAULT '0000-00-00',
  `end_date` date DEFAULT '0000-00-00',
  `report_to` tinytext,
  `job_purpose` text,
  `responsibilities` text,
  `requirements` text,
  `location` varchar(128) DEFAULT NULL,
  `company` varchar(128) DEFAULT NULL,
  `ext_link1` varchar(324) DEFAULT NULL,
  `ext_link2` varchar(324) DEFAULT NULL,
  `allow_comment` tinyint(1) NOT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) unsigned DEFAULT NULL,
  `modified` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`ref_no`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_careers`
--

INSERT INTO `tbl_careers` (`id`, `division_id`, `name`, `subject`, `sent_to`, `ref_no`, `start_date`, `end_date`, `report_to`, `job_purpose`, `responsibilities`, `requirements`, `location`, `company`, `ext_link1`, `ext_link2`, `allow_comment`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(6, 12, 'backend-web-developer', 'Backend Web Developer', 'defrian.yarfi@gmail.com', 'wp002', '2013-07-23', '2013-07-23', 'Project Manager', '<p>\r\n	Senior Backend Web Developer</p>\r\n', '<p>\r\n	Senior Backend Web Developer</p>\r\n', '<p>\r\n	Senior Backend Web Developer</p>\r\n', 'Indonesia', 'Default', 'jobstreet.com', 'jobsdb.com', 0, 0, 0, 1, 1374560244, 1374561582),
(5, 12, 'frontend-web-developer', 'Frontend Web Developer', 'defrian.yarfi@gmail.com', 'wd001df', '2013-07-23', '2013-07-23', 'Project Manager', '<p>\r\n	Frontend Web Developer</p>\r\n', '<p>\r\n	Frontend Web Developer</p>\r\n', '<p>\r\n	Frontend Web Developer</p>\r\n', 'Jakarta', 'Default', 'jobstreet.com', 'jobstreet.com', 0, 0, 0, 1, 1374517350, 1374561700),
(4, 17, 'art-director', 'Art Director', 'defrian.yarfi@gmail.com', 'wd001df', '2013-07-23', '2013-07-23', 'Project Manager', '<p>\r\n	Art Director</p>\r\n', '<p>\r\n	Art Director</p>\r\n', '<p>\r\n	Art Director</p>\r\n', 'Jakarta', 'Default', 'jobstreet.com', 'jobstreet.com', 0, 0, 0, 1, 1374517303, 1374561707),
(7, 17, 'creative-director', 'Creative Director', 'defrian.yarfi@gmail.com', NULL, NULL, NULL, 'Project manager', '<p>\r\n	Creative Director</p>\r\n', '<p>\r\n	Creative Director</p>\r\n', '<p>\r\n	Creative Director</p>\r\n', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL),
(8, 17, 'social-media-executive', 'Social Media Executive', 'defrian.yarfi@gmail.com', NULL, NULL, NULL, 'Project Manager', '<p>\r\n	Social Media Executive</p>\r\n', '<p>\r\n	Social Media Executive</p>\r\n', '<p>\r\n	Social Media Executive</p>\r\n', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL),
(9, 17, 'digital-media-implementer', 'Digital Media Implementer', 'defrian.yarfi@gmail.com', NULL, NULL, NULL, 'Project Manager', '<p>\r\n	Digital Media Implementer</p>\r\n', '<p>\r\n	Digital Media Implementer</p>\r\n', '<p>\r\n	Digital Media Implementer</p>\r\n', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL),
(10, 17, 'copywriter', 'Copywriter', 'defrian.yarfi@gmail.com', NULL, NULL, NULL, 'Project Manager', '<p>\r\n	Copywriter</p>\r\n', '<p>\r\n	Copywriter</p>\r\n', '<p>\r\n	Copywriter</p>\r\n', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ci_sessions`
--

CREATE TABLE IF NOT EXISTS `tbl_ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ci_sessions`
--

INSERT INTO `tbl_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('46d9659ee0a4dff4e052cde3ad714fcd', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0', 1429871635, 'a:6:{s:9:"user_data";s:0:"";s:8:"curr_url";s:32:"admin-panel/page/detail/edit/1/1";s:8:"prev_url";s:32:"admin-panel/page/detail/edit/1/1";s:11:"module_list";s:915:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs"},"Module":{"modulelist{{slash}}/index":"Modules"},"Career":{"career{{slash}}/index":"Careers","division{{slash}}/index":"Divisions","applicant{{slash}}/index":"Applicants","employee{{slash}}/index":"Employees"},"Color":{"color{{slash}}/index":"Color Data","colorcontent{{slash}}/index":"Color Content","colorpersonal{{slash}}/index":"Color Personal","colorscanner{{slash}}/index":"Color Scanner"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus"},"Qrcode":{"qrcode{{slash}}/index":"QR Codes","qrcodescanner{{slash}}/index":"QR Code Scanner"},"Questionnaire":{"questionnaire{{slash}}/index":"Questionnaires","question{{slash}}/index":"Questions"}}";s:20:"module_function_list";s:7465:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs","dashboard{{slash}}/add":"Add New Dashboard","dashboard{{slash}}/view":"View Dashboard","dashboard{{slash}}/edit":"Edit Dashboard","dashboard{{slash}}/delete":"Delete Dashboard","dashboard{{slash}}/change":"Change Dashboard Status","user{{slash}}/add":"Add User","user{{slash}}/view":"View User","user{{slash}}/edit":"Edit User","user{{slash}}/delete":"Delete User","user{{slash}}/change":"Change User Status","user{{slash}}/image":"Change User Image","user{{slash}}/upload":"Upload User Image","usergroup{{slash}}/add":"Add User Group","usergroup{{slash}}/view":"View User Group","usergroup{{slash}}/edit":"Edit User Group","usergroup{{slash}}/delete":"Delete User Group","usergroup{{slash}}/change":"Change User Group Status","language{{slash}}/add":"Add Language","language{{slash}}/view":"View Language","language{{slash}}/edit":"Edit Language","language{{slash}}/delete":"Delete Language","language{{slash}}/change":"Change Language Status","setting{{slash}}/add":"Add Setting","setting{{slash}}/view":"View Setting","setting{{slash}}/edit":"Edit Setting","setting{{slash}}/delete":"Delete Setting","setting{{slash}}/change":"Change Setting Status","serverlog{{slash}}/view":"View Server Log","serverlog{{slash}}/edit":"Edit Server Log","serverlog{{slash}}/delete":"Delete Server Log","serverlog{{slash}}/trash":"Trash Server Log"},"Module":{"modulelist{{slash}}/edit":"Edit Module","modulelist{{slash}}/trash":"Delete User Permission"},"Career":{"career{{slash}}/index":"Careers","division{{slash}}/index":"Divisions","applicant{{slash}}/index":"Applicants","employee{{slash}}/index":"Employees","career{{slash}}/index{{slash}}/add":"Add Career","career{{slash}}/index{{slash}}/view":"View Career","career{{slash}}/index{{slash}}/edit":"Edit Career","career{{slash}}/index{{slash}}/delete":"Delete Career","career{{slash}}/index{{slash}}/change":"Change Career Status","career{{slash}}/index{{slash}}/export":"Export Career","career{{slash}}/index{{slash}}/print":"Print Career","division{{slash}}/index{{slash}}/add":"Add Division","division{{slash}}/index{{slash}}/view":"View Division","division{{slash}}/index{{slash}}/edit":"Edit Division","division{{slash}}/index{{slash}}/delete":"Delete Division","division{{slash}}/index{{slash}}/change":"Change Division Status","division{{slash}}/index{{slash}}/export":"Export Division","division{{slash}}/index{{slash}}/print":"Print Division","applicant{{slash}}/index{{slash}}/add":"Add Applicant","applicant{{slash}}/index{{slash}}/view":"View Applicant","applicant{{slash}}/index{{slash}}/edit":"Edit Applicant","applicant{{slash}}/index{{slash}}/delete":"Delete Applicant","applicant{{slash}}/index{{slash}}/change":"Change Applicant","applicant{{slash}}/index{{slash}}/export":"Export Applicant","applicant{{slash}}/index{{slash}}/print":"Print Applicant","employee{{slash}}/index{{slash}}/add":"Add Employee","employee{{slash}}/index{{slash}}/view":"View Employee","employee{{slash}}/index{{slash}}/edit":"Edit Employee","employee{{slash}}/index{{slash}}/delete":"Delete Employee","employee{{slash}}/set":"Set to Employee","employee{{slash}}/index{{slash}}/change":"Change Employee","employee{{slash}}/index{{slash}}/export":"Export Employee","employee{{slash}}/index{{slash}}/print":"Print Employee"},"Color":{"color{{slash}}/index":"Color Data","colorcontent{{slash}}/index":"Color Content","colorpersonal{{slash}}/index":"Color Personal","colorscanner{{slash}}/index":"Color Scanner","color{{slash}}/index{{slash}}/add":"Add Color Recognizer","color{{slash}}/index{{slash}}/view":"View Color Recognizer","color{{slash}}/index{{slash}}/edit":"Edit Color Recognizer","color{{slash}}/index{{slash}}/delete":"Delete Color Recognizer","color{{slash}}/index{{slash}}/change":"Change Color Recognizer Status","color{{slash}}/index{{slash}}/export":"Export Color Recognizer","color{{slash}}/index{{slash}}/print":"Print Color Recognizer","colorcontent{{slash}}/index{{slash}}/add":"Add Color Content","colorcontent{{slash}}/index{{slash}}/view":"View Color Content","colorcontent{{slash}}/index{{slash}}/edit":"Edit Color Content","colorcontent{{slash}}/index{{slash}}/delete":"Delete Color Content","colorcontent{{slash}}/index{{slash}}/change":"Change Color Content Status","colorcontent{{slash}}/index{{slash}}/export":"Export Color Content","colorcontent{{slash}}/index{{slash}}/print":"Print Color Content","colorpersonal{{slash}}/index{{slash}}/add":"Add Color Personal","colorpersonal{{slash}}/index{{slash}}/view":"View Color Personal","colorpersonal{{slash}}/index{{slash}}/edit":"Edit Color Personal","colorpersonal{{slash}}/index{{slash}}/delete":"Delete Color Personal","colorpersonal{{slash}}/index{{slash}}/change":"Change Color Personal Status","colorpersonal{{slash}}/index{{slash}}/export":"Export Color Personal","colorpersonal{{slash}}/index{{slash}}/print":"Print Color Personal"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus","page{{slash}}/index{{slash}}/add":"Add Page","page{{slash}}/index{{slash}}/view":"View Page","page{{slash}}/index{{slash}}/edit":"Edit Page","page{{slash}}/index{{slash}}/delete":"Delete Page","page{{slash}}/detail":"Detail Page","page{{slash}}/index{{slash}}/change":"Change Page Status","page{{slash}}/index{{slash}}/export":"Export Page","page{{slash}}/index{{slash}}/print":"Print Page","pagemenu{{slash}}/index{{slash}}/add":"Add Page Menu","pagemenu{{slash}}/index{{slash}}/view":"View Page Menu","pagemenu{{slash}}/index{{slash}}/edit":"Edit Page Menu","pagemenu{{slash}}/index{{slash}}/delete":"Delete Page Menu","pagemenu{{slash}}/index{{slash}}/change":"Change Page Menu Status","pagemenu{{slash}}/index{{slash}}/export":"Export Page Menu","pagemenu{{slash}}/index{{slash}}/print":"Print Page Menu"},"Qrcode":{"qrcode{{slash}}/index":"QR Codes","qrcodescanner{{slash}}/index":"QR Code Scanner","qrcode{{slash}}/index{{slash}}/add":"Add QR Code","qrcode{{slash}}/index{{slash}}/view":"View QR Code","qrcode{{slash}}/index{{slash}}/edit":"Edit QR Code","qrcode{{slash}}/index{{slash}}/delete":"Delete QR Code","qrcode{{slash}}/index{{slash}}/change":"Change QR Code Status","qrcode{{slash}}/index{{slash}}/export":"Export QR Code","qrcode{{slash}}/index{{slash}}/print":"Print QR Code"},"Questionnaire":{"questionnaire{{slash}}/index":"Questionnaires","question{{slash}}/index":"Questions","questionnaire{{slash}}/index{{slash}}/add":"Add Questionnaire","questionnaire{{slash}}/index{{slash}}/view":"View Questionnaire","questionnaire{{slash}}/index{{slash}}/edit":"Edit Questionnaire","questionnaire{{slash}}/index{{slash}}/delete":"Delete Questionnaire","questionnaire{{slash}}/index{{slash}}/change":"Change Questionnaire Status","questionnaire{{slash}}/index{{slash}}/export":"Export Questionnaire","questionnaire{{slash}}/index{{slash}}/print":"Print Questionnaire","question{{slash}}/index{{slash}}/add":"Add Question","question{{slash}}/index{{slash}}/view":"View Question","question{{slash}}/index{{slash}}/edit":"Edit Question","question{{slash}}/index{{slash}}/delete":"Delete Question","question{{slash}}/index{{slash}}/change":"Change Question Status","question{{slash}}/index{{slash}}/export":"Export Question","question{{slash}}/index{{slash}}/print":"Print Question"}}";s:12:"user_session";O:8:"stdClass":8:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@admin.com";s:8:"group_id";s:1:"1";s:6:"status";s:1:"1";s:10:"last_login";s:10:"1429869928";s:9:"logged_in";b:1;s:4:"name";s:21:"Administrator Website";}}'),
('e06081bf07405f6825edff4e3bc2ef0c', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0', 1429873395, 'a:2:{s:9:"user_data";s:0:"";s:8:"curr_url";s:30:"admin-panel/authenticate/login";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_colors`
--

CREATE TABLE IF NOT EXISTS `tbl_colors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `serial` text,
  `file_name` varchar(512) DEFAULT NULL,
  `color_url` varchar(512) DEFAULT NULL,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color_contents`
--

CREATE TABLE IF NOT EXISTS `tbl_color_contents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `color_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `serial` text,
  `file_name` varchar(512) DEFAULT NULL,
  `colorcontent_url` varchar(512) DEFAULT NULL,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color_personals`
--

CREATE TABLE IF NOT EXISTS `tbl_color_personals` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) DEFAULT NULL,
  `colorcontent_id` int(11) DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configurations`
--

CREATE TABLE IF NOT EXISTS `tbl_configurations` (
  `parameter` varchar(150) NOT NULL DEFAULT '',
  `value` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`parameter`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_configurations`
--

INSERT INTO `tbl_configurations` (`parameter`, `value`) VALUES
('environment', '0'),
('install', '0'),
('maintenance', '0'),
('theme', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_divisions`
--

CREATE TABLE IF NOT EXISTS `tbl_divisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tbl_divisions`
--

INSERT INTO `tbl_divisions` (`id`, `name`, `subject`, `description`, `is_system`, `status`, `added`, `modified`) VALUES
(12, 'developer', 'Developer', '<p>\r\n	Web Developer Division</p>\r\n', 1, 1, 1364610224, 1364610224),
(13, 'director', 'Director', '<p>\r\n	Director</p>\r\n', 1, 1, 1364610224, 1368369595),
(14, 'account', 'Account', '<p>\r\n	Account</p>\r\n', 1, 1, 0, 0),
(15, 'manager', 'Manager', '<p>\r\n	Manager</p>\r\n', 1, 1, 0, 0),
(16, 'strategist', 'Strategist', '<p>\r\n	Strategist</p>\r\n', 1, 1, 0, 0),
(17, 'creative', 'Creative', '<p>\r\n	Creative</p>\r\n', 1, 1, 0, 0),
(18, 'finance', 'Finance', '<p>\r\n	Finance</p>\r\n', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_division_files`
--

CREATE TABLE IF NOT EXISTS `tbl_division_files` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `division_id` int(11) unsigned DEFAULT NULL,
  `field_name` varchar(96) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `file_type` varchar(16) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_id` (`division_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_division_files`
--

INSERT INTO `tbl_division_files` (`id`, `division_id`, `field_name`, `file_name`, `file_type`, `caption`) VALUES
(1, 13, 'image_1', 'd0020c5505cc68f55446c109c352930d.jpg', 'image/jpeg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_permissions`
--

CREATE TABLE IF NOT EXISTS `tbl_group_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `value` smallint(1) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1097 ;

--
-- Dumping data for table `tbl_group_permissions`
--

INSERT INTO `tbl_group_permissions` (`id`, `permission_id`, `group_id`, `value`, `added`, `modified`) VALUES
(1, 1, 1, 1, 1429869935, 0),
(2, 2, 1, 1, 1429869935, 0),
(3, 3, 1, 1, 1429869935, 0),
(4, 4, 1, 1, 1429869935, 0),
(5, 5, 1, 1, 1429869935, 0),
(6, 6, 1, 1, 1429869935, 0),
(7, 38, 1, 1, 1429869935, 0),
(8, 39, 1, 1, 1429869935, 0),
(9, 40, 1, 1, 1429869935, 0),
(10, 41, 1, 1, 1429869935, 0),
(11, 71, 1, 1, 1429869935, 0),
(12, 72, 1, 1, 1429869935, 0),
(13, 73, 1, 1, 1429869935, 0),
(14, 74, 1, 1, 1429869935, 0),
(15, 96, 1, 1, 1429869935, 0),
(16, 97, 1, 1, 1429869935, 0),
(17, 113, 1, 1, 1429869935, 0),
(18, 114, 1, 1, 1429869935, 0),
(19, 122, 1, 1, 1429869935, 0),
(20, 123, 1, 1, 1429869935, 0),
(21, 7, 1, 1, 1429869935, 0),
(22, 8, 1, 1, 1429869935, 0),
(23, 9, 1, 1, 1429869935, 0),
(24, 10, 1, 1, 1429869935, 0),
(25, 11, 1, 1, 1429869935, 0),
(26, 12, 1, 1, 1429869935, 0),
(27, 13, 1, 1, 1429869935, 0),
(28, 14, 1, 1, 1429869935, 0),
(29, 15, 1, 1, 1429869935, 0),
(30, 16, 1, 1, 1429869935, 0),
(31, 17, 1, 1, 1429869935, 0),
(32, 18, 1, 1, 1429869935, 0),
(33, 19, 1, 1, 1429869935, 0),
(34, 20, 1, 1, 1429869935, 0),
(35, 21, 1, 1, 1429869935, 0),
(36, 22, 1, 1, 1429869935, 0),
(37, 23, 1, 1, 1429869935, 0),
(38, 24, 1, 1, 1429869935, 0),
(39, 25, 1, 1, 1429869935, 0),
(40, 26, 1, 1, 1429869935, 0),
(41, 27, 1, 1, 1429869935, 0),
(42, 28, 1, 1, 1429869935, 0),
(43, 29, 1, 1, 1429869935, 0),
(44, 30, 1, 1, 1429869935, 0),
(45, 31, 1, 1, 1429869935, 0),
(46, 32, 1, 1, 1429869935, 0),
(47, 33, 1, 1, 1429869935, 0),
(48, 34, 1, 1, 1429869935, 0),
(49, 35, 1, 1, 1429869935, 0),
(50, 36, 1, 1, 1429869935, 0),
(51, 37, 1, 1, 1429869935, 0),
(52, 42, 1, 1, 1429869935, 0),
(53, 43, 1, 1, 1429869935, 0),
(54, 44, 1, 1, 1429869935, 0),
(55, 45, 1, 1, 1429869935, 0),
(56, 46, 1, 1, 1429869935, 0),
(57, 47, 1, 1, 1429869935, 0),
(58, 48, 1, 1, 1429869935, 0),
(59, 49, 1, 1, 1429869935, 0),
(60, 50, 1, 1, 1429869935, 0),
(61, 51, 1, 1, 1429869935, 0),
(62, 52, 1, 1, 1429869935, 0),
(63, 53, 1, 1, 1429869935, 0),
(64, 54, 1, 1, 1429869935, 0),
(65, 55, 1, 1, 1429869935, 0),
(66, 56, 1, 1, 1429869935, 0),
(67, 57, 1, 1, 1429869935, 0),
(68, 58, 1, 1, 1429869935, 0),
(69, 59, 1, 1, 1429869935, 0),
(70, 60, 1, 1, 1429869935, 0),
(71, 61, 1, 1, 1429869935, 0),
(72, 62, 1, 1, 1429869935, 0),
(73, 63, 1, 1, 1429869935, 0),
(74, 64, 1, 1, 1429869935, 0),
(75, 65, 1, 1, 1429869935, 0),
(76, 66, 1, 1, 1429869935, 0),
(77, 67, 1, 1, 1429869935, 0),
(78, 68, 1, 1, 1429869935, 0),
(79, 69, 1, 1, 1429869935, 0),
(80, 70, 1, 1, 1429869935, 0),
(81, 75, 1, 1, 1429869935, 0),
(82, 76, 1, 1, 1429869935, 0),
(83, 77, 1, 1, 1429869935, 0),
(84, 78, 1, 1, 1429869935, 0),
(85, 79, 1, 1, 1429869935, 0),
(86, 80, 1, 1, 1429869935, 0),
(87, 81, 1, 1, 1429869935, 0),
(88, 82, 1, 1, 1429869935, 0),
(89, 83, 1, 1, 1429869935, 0),
(90, 84, 1, 1, 1429869935, 0),
(91, 85, 1, 1, 1429869935, 0),
(92, 86, 1, 1, 1429869935, 0),
(93, 87, 1, 1, 1429869935, 0),
(94, 88, 1, 1, 1429869935, 0),
(95, 89, 1, 1, 1429869935, 0),
(96, 90, 1, 1, 1429869935, 0),
(97, 91, 1, 1, 1429869935, 0),
(98, 92, 1, 1, 1429869935, 0),
(99, 93, 1, 1, 1429869935, 0),
(100, 94, 1, 1, 1429869935, 0),
(101, 95, 1, 1, 1429869935, 0),
(102, 98, 1, 1, 1429869935, 0),
(103, 99, 1, 1, 1429869935, 0),
(104, 100, 1, 1, 1429869935, 0),
(105, 101, 1, 1, 1429869935, 0),
(106, 102, 1, 1, 1429869935, 0),
(107, 103, 1, 1, 1429869935, 0),
(108, 104, 1, 1, 1429869935, 0),
(109, 105, 1, 1, 1429869935, 0),
(110, 106, 1, 1, 1429869935, 0),
(111, 107, 1, 1, 1429869935, 0),
(112, 108, 1, 1, 1429869935, 0),
(113, 109, 1, 1, 1429869935, 0),
(114, 110, 1, 1, 1429869935, 0),
(115, 111, 1, 1, 1429869935, 0),
(116, 112, 1, 1, 1429869935, 0),
(117, 115, 1, 1, 1429869935, 0),
(118, 116, 1, 1, 1429869935, 0),
(119, 117, 1, 1, 1429869935, 0),
(120, 118, 1, 1, 1429869935, 0),
(121, 119, 1, 1, 1429869935, 0),
(122, 120, 1, 1, 1429869935, 0),
(123, 121, 1, 1, 1429869935, 0),
(124, 124, 1, 1, 1429869935, 0),
(125, 125, 1, 1, 1429869935, 0),
(126, 126, 1, 1, 1429869935, 0),
(127, 127, 1, 1, 1429869935, 0),
(128, 128, 1, 1, 1429869935, 0),
(129, 129, 1, 1, 1429869935, 0),
(130, 130, 1, 1, 1429869935, 0),
(131, 131, 1, 1, 1429869935, 0),
(132, 132, 1, 1, 1429869935, 0),
(133, 133, 1, 1, 1429869935, 0),
(134, 134, 1, 1, 1429869935, 0),
(135, 135, 1, 1, 1429869935, 0),
(136, 136, 1, 1, 1429869935, 0),
(137, 137, 1, 1, 1429869935, 0),
(138, 1, 2, 1, 1429869935, 0),
(139, 2, 2, 1, 1429869935, 0),
(140, 3, 2, 1, 1429869935, 0),
(141, 4, 2, 1, 1429869935, 0),
(142, 5, 2, 1, 1429869935, 0),
(143, 6, 2, 1, 1429869935, 0),
(144, 38, 2, 1, 1429869935, 0),
(145, 39, 2, 1, 1429869935, 0),
(146, 40, 2, 1, 1429869935, 0),
(147, 41, 2, 1, 1429869935, 0),
(148, 71, 2, 1, 1429869935, 0),
(149, 72, 2, 1, 1429869935, 0),
(150, 73, 2, 1, 1429869935, 0),
(151, 74, 2, 1, 1429869935, 0),
(152, 96, 2, 1, 1429869935, 0),
(153, 97, 2, 1, 1429869935, 0),
(154, 113, 2, 1, 1429869935, 0),
(155, 114, 2, 1, 1429869935, 0),
(156, 122, 2, 1, 1429869935, 0),
(157, 123, 2, 1, 1429869935, 0),
(158, 7, 2, 1, 1429869935, 0),
(159, 8, 2, 1, 1429869935, 0),
(160, 9, 2, 1, 1429869935, 0),
(161, 10, 2, 1, 1429869935, 0),
(162, 11, 2, 1, 1429869935, 0),
(163, 12, 2, 1, 1429869935, 0),
(164, 13, 2, 1, 1429869935, 0),
(165, 14, 2, 1, 1429869935, 0),
(166, 15, 2, 1, 1429869935, 0),
(167, 16, 2, 1, 1429869935, 0),
(168, 17, 2, 1, 1429869935, 0),
(169, 18, 2, 1, 1429869935, 0),
(170, 19, 2, 1, 1429869935, 0),
(171, 20, 2, 1, 1429869935, 0),
(172, 21, 2, 1, 1429869935, 0),
(173, 22, 2, 1, 1429869935, 0),
(174, 23, 2, 1, 1429869935, 0),
(175, 24, 2, 1, 1429869935, 0),
(176, 25, 2, 1, 1429869935, 0),
(177, 26, 2, 1, 1429869935, 0),
(178, 27, 2, 1, 1429869935, 0),
(179, 28, 2, 1, 1429869935, 0),
(180, 29, 2, 1, 1429869935, 0),
(181, 30, 2, 1, 1429869935, 0),
(182, 31, 2, 1, 1429869935, 0),
(183, 32, 2, 1, 1429869935, 0),
(184, 33, 2, 1, 1429869935, 0),
(185, 34, 2, 1, 1429869935, 0),
(186, 35, 2, 1, 1429869935, 0),
(187, 36, 2, 1, 1429869935, 0),
(188, 37, 2, 1, 1429869935, 0),
(189, 42, 2, 1, 1429869935, 0),
(190, 43, 2, 1, 1429869935, 0),
(191, 44, 2, 1, 1429869935, 0),
(192, 45, 2, 1, 1429869935, 0),
(193, 46, 2, 1, 1429869935, 0),
(194, 47, 2, 1, 1429869935, 0),
(195, 48, 2, 1, 1429869935, 0),
(196, 49, 2, 1, 1429869935, 0),
(197, 50, 2, 1, 1429869935, 0),
(198, 51, 2, 1, 1429869935, 0),
(199, 52, 2, 1, 1429869935, 0),
(200, 53, 2, 1, 1429869935, 0),
(201, 54, 2, 1, 1429869935, 0),
(202, 55, 2, 1, 1429869935, 0),
(203, 56, 2, 1, 1429869935, 0),
(204, 57, 2, 1, 1429869935, 0),
(205, 58, 2, 1, 1429869935, 0),
(206, 59, 2, 1, 1429869935, 0),
(207, 60, 2, 1, 1429869935, 0),
(208, 61, 2, 1, 1429869935, 0),
(209, 62, 2, 1, 1429869935, 0),
(210, 63, 2, 1, 1429869935, 0),
(211, 64, 2, 1, 1429869935, 0),
(212, 65, 2, 1, 1429869935, 0),
(213, 66, 2, 1, 1429869935, 0),
(214, 67, 2, 1, 1429869935, 0),
(215, 68, 2, 1, 1429869935, 0),
(216, 69, 2, 1, 1429869935, 0),
(217, 70, 2, 1, 1429869935, 0),
(218, 75, 2, 1, 1429869935, 0),
(219, 76, 2, 1, 1429869935, 0),
(220, 77, 2, 1, 1429869935, 0),
(221, 78, 2, 1, 1429869935, 0),
(222, 79, 2, 1, 1429869935, 0),
(223, 80, 2, 1, 1429869935, 0),
(224, 81, 2, 1, 1429869935, 0),
(225, 82, 2, 1, 1429869935, 0),
(226, 83, 2, 1, 1429869935, 0),
(227, 84, 2, 1, 1429869935, 0),
(228, 85, 2, 1, 1429869935, 0),
(229, 86, 2, 1, 1429869935, 0),
(230, 87, 2, 1, 1429869935, 0),
(231, 88, 2, 1, 1429869935, 0),
(232, 89, 2, 1, 1429869935, 0),
(233, 90, 2, 1, 1429869935, 0),
(234, 91, 2, 1, 1429869935, 0),
(235, 92, 2, 1, 1429869935, 0),
(236, 93, 2, 1, 1429869935, 0),
(237, 94, 2, 1, 1429869935, 0),
(238, 95, 2, 1, 1429869935, 0),
(239, 98, 2, 1, 1429869935, 0),
(240, 99, 2, 1, 1429869935, 0),
(241, 100, 2, 1, 1429869935, 0),
(242, 101, 2, 1, 1429869935, 0),
(243, 102, 2, 1, 1429869935, 0),
(244, 103, 2, 1, 1429869935, 0),
(245, 104, 2, 1, 1429869935, 0),
(246, 105, 2, 1, 1429869935, 0),
(247, 106, 2, 1, 1429869935, 0),
(248, 107, 2, 1, 1429869935, 0),
(249, 108, 2, 1, 1429869935, 0),
(250, 109, 2, 1, 1429869935, 0),
(251, 110, 2, 1, 1429869935, 0),
(252, 111, 2, 1, 1429869935, 0),
(253, 112, 2, 1, 1429869935, 0),
(254, 115, 2, 1, 1429869935, 0),
(255, 116, 2, 1, 1429869935, 0),
(256, 117, 2, 1, 1429869935, 0),
(257, 118, 2, 1, 1429869935, 0),
(258, 119, 2, 1, 1429869935, 0),
(259, 120, 2, 1, 1429869935, 0),
(260, 121, 2, 1, 1429869935, 0),
(261, 124, 2, 1, 1429869935, 0),
(262, 125, 2, 1, 1429869935, 0),
(263, 126, 2, 1, 1429869935, 0),
(264, 127, 2, 1, 1429869935, 0),
(265, 128, 2, 1, 1429869935, 0),
(266, 129, 2, 1, 1429869935, 0),
(267, 130, 2, 1, 1429869935, 0),
(268, 131, 2, 1, 1429869935, 0),
(269, 132, 2, 1, 1429869935, 0),
(270, 133, 2, 1, 1429869935, 0),
(271, 134, 2, 1, 1429869935, 0),
(272, 135, 2, 1, 1429869935, 0),
(273, 136, 2, 1, 1429869935, 0),
(274, 137, 2, 1, 1429869935, 0),
(275, 1, 99, 0, 1429869935, 0),
(276, 2, 99, 0, 1429869935, 0),
(277, 3, 99, 0, 1429869935, 0),
(278, 4, 99, 0, 1429869935, 0),
(279, 5, 99, 0, 1429869935, 0),
(280, 6, 99, 0, 1429869935, 0),
(281, 38, 99, 0, 1429869935, 0),
(282, 39, 99, 0, 1429869935, 0),
(283, 40, 99, 0, 1429869935, 0),
(284, 41, 99, 0, 1429869935, 0),
(285, 71, 99, 0, 1429869935, 0),
(286, 72, 99, 0, 1429869935, 0),
(287, 73, 99, 0, 1429869935, 0),
(288, 74, 99, 0, 1429869935, 0),
(289, 96, 99, 0, 1429869935, 0),
(290, 97, 99, 0, 1429869935, 0),
(291, 113, 99, 0, 1429869935, 0),
(292, 114, 99, 0, 1429869935, 0),
(293, 122, 99, 0, 1429869935, 0),
(294, 123, 99, 0, 1429869935, 0),
(295, 7, 99, 0, 1429869935, 0),
(296, 8, 99, 0, 1429869935, 0),
(297, 9, 99, 0, 1429869935, 0),
(298, 10, 99, 0, 1429869935, 0),
(299, 11, 99, 0, 1429869935, 0),
(300, 12, 99, 0, 1429869935, 0),
(301, 13, 99, 0, 1429869935, 0),
(302, 14, 99, 0, 1429869935, 0),
(303, 15, 99, 0, 1429869935, 0),
(304, 16, 99, 0, 1429869935, 0),
(305, 17, 99, 0, 1429869935, 0),
(306, 18, 99, 0, 1429869935, 0),
(307, 19, 99, 0, 1429869935, 0),
(308, 20, 99, 0, 1429869935, 0),
(309, 21, 99, 0, 1429869935, 0),
(310, 22, 99, 0, 1429869935, 0),
(311, 23, 99, 0, 1429869935, 0),
(312, 24, 99, 0, 1429869935, 0),
(313, 25, 99, 0, 1429869935, 0),
(314, 26, 99, 0, 1429869935, 0),
(315, 27, 99, 0, 1429869935, 0),
(316, 28, 99, 0, 1429869935, 0),
(317, 29, 99, 0, 1429869935, 0),
(318, 30, 99, 0, 1429869935, 0),
(319, 31, 99, 0, 1429869935, 0),
(320, 32, 99, 0, 1429869935, 0),
(321, 33, 99, 0, 1429869935, 0),
(322, 34, 99, 0, 1429869935, 0),
(323, 35, 99, 0, 1429869935, 0),
(324, 36, 99, 0, 1429869935, 0),
(325, 37, 99, 0, 1429869935, 0),
(326, 42, 99, 0, 1429869935, 0),
(327, 43, 99, 0, 1429869935, 0),
(328, 44, 99, 0, 1429869935, 0),
(329, 45, 99, 0, 1429869935, 0),
(330, 46, 99, 0, 1429869935, 0),
(331, 47, 99, 0, 1429869935, 0),
(332, 48, 99, 0, 1429869935, 0),
(333, 49, 99, 0, 1429869935, 0),
(334, 50, 99, 0, 1429869935, 0),
(335, 51, 99, 0, 1429869935, 0),
(336, 52, 99, 0, 1429869935, 0),
(337, 53, 99, 0, 1429869935, 0),
(338, 54, 99, 0, 1429869935, 0),
(339, 55, 99, 0, 1429869935, 0),
(340, 56, 99, 0, 1429869935, 0),
(341, 57, 99, 0, 1429869935, 0),
(342, 58, 99, 0, 1429869935, 0),
(343, 59, 99, 0, 1429869935, 0),
(344, 60, 99, 0, 1429869935, 0),
(345, 61, 99, 0, 1429869935, 0),
(346, 62, 99, 0, 1429869935, 0),
(347, 63, 99, 0, 1429869935, 0),
(348, 64, 99, 0, 1429869935, 0),
(349, 65, 99, 0, 1429869935, 0),
(350, 66, 99, 0, 1429869935, 0),
(351, 67, 99, 0, 1429869935, 0),
(352, 68, 99, 0, 1429869935, 0),
(353, 69, 99, 0, 1429869935, 0),
(354, 70, 99, 0, 1429869935, 0),
(355, 75, 99, 0, 1429869935, 0),
(356, 76, 99, 0, 1429869935, 0),
(357, 77, 99, 0, 1429869935, 0),
(358, 78, 99, 0, 1429869935, 0),
(359, 79, 99, 0, 1429869935, 0),
(360, 80, 99, 0, 1429869935, 0),
(361, 81, 99, 0, 1429869935, 0),
(362, 82, 99, 0, 1429869935, 0),
(363, 83, 99, 0, 1429869935, 0),
(364, 84, 99, 0, 1429869935, 0),
(365, 85, 99, 0, 1429869935, 0),
(366, 86, 99, 0, 1429869935, 0),
(367, 87, 99, 0, 1429869935, 0),
(368, 88, 99, 0, 1429869935, 0),
(369, 89, 99, 0, 1429869935, 0),
(370, 90, 99, 0, 1429869935, 0),
(371, 91, 99, 0, 1429869935, 0),
(372, 92, 99, 0, 1429869935, 0),
(373, 93, 99, 0, 1429869935, 0),
(374, 94, 99, 0, 1429869935, 0),
(375, 95, 99, 0, 1429869935, 0),
(376, 98, 99, 0, 1429869935, 0),
(377, 99, 99, 0, 1429869935, 0),
(378, 100, 99, 0, 1429869935, 0),
(379, 101, 99, 0, 1429869935, 0),
(380, 102, 99, 0, 1429869935, 0),
(381, 103, 99, 0, 1429869935, 0),
(382, 104, 99, 0, 1429869935, 0),
(383, 105, 99, 0, 1429869935, 0),
(384, 106, 99, 0, 1429869935, 0),
(385, 107, 99, 0, 1429869935, 0),
(386, 108, 99, 0, 1429869935, 0),
(387, 109, 99, 0, 1429869935, 0),
(388, 110, 99, 0, 1429869935, 0),
(389, 111, 99, 0, 1429869935, 0),
(390, 112, 99, 0, 1429869935, 0),
(391, 115, 99, 0, 1429869935, 0),
(392, 116, 99, 0, 1429869935, 0),
(393, 117, 99, 0, 1429869935, 0),
(394, 118, 99, 0, 1429869935, 0),
(395, 119, 99, 0, 1429869935, 0),
(396, 120, 99, 0, 1429869935, 0),
(397, 121, 99, 0, 1429869935, 0),
(398, 124, 99, 0, 1429869935, 0),
(399, 125, 99, 0, 1429869935, 0),
(400, 126, 99, 0, 1429869935, 0),
(401, 127, 99, 0, 1429869935, 0),
(402, 128, 99, 0, 1429869935, 0),
(403, 129, 99, 0, 1429869935, 0),
(404, 130, 99, 0, 1429869935, 0),
(405, 131, 99, 0, 1429869935, 0),
(406, 132, 99, 0, 1429869935, 0),
(407, 133, 99, 0, 1429869935, 0),
(408, 134, 99, 0, 1429869935, 0),
(409, 135, 99, 0, 1429869935, 0),
(410, 136, 99, 0, 1429869935, 0),
(411, 137, 99, 0, 1429869935, 0),
(412, 1, 112, 0, 1429869935, 0),
(413, 2, 112, 0, 1429869935, 0),
(414, 3, 112, 0, 1429869935, 0),
(415, 4, 112, 0, 1429869935, 0),
(416, 5, 112, 0, 1429869935, 0),
(417, 6, 112, 0, 1429869935, 0),
(418, 38, 112, 0, 1429869935, 0),
(419, 39, 112, 0, 1429869935, 0),
(420, 40, 112, 0, 1429869935, 0),
(421, 41, 112, 0, 1429869935, 0),
(422, 71, 112, 0, 1429869935, 0),
(423, 72, 112, 0, 1429869935, 0),
(424, 73, 112, 0, 1429869935, 0),
(425, 74, 112, 0, 1429869935, 0),
(426, 96, 112, 0, 1429869935, 0),
(427, 97, 112, 0, 1429869935, 0),
(428, 113, 112, 0, 1429869935, 0),
(429, 114, 112, 0, 1429869935, 0),
(430, 122, 112, 0, 1429869935, 0),
(431, 123, 112, 0, 1429869935, 0),
(432, 7, 112, 0, 1429869935, 0),
(433, 8, 112, 0, 1429869935, 0),
(434, 9, 112, 0, 1429869935, 0),
(435, 10, 112, 0, 1429869935, 0),
(436, 11, 112, 0, 1429869935, 0),
(437, 12, 112, 0, 1429869935, 0),
(438, 13, 112, 0, 1429869935, 0),
(439, 14, 112, 0, 1429869935, 0),
(440, 15, 112, 0, 1429869935, 0),
(441, 16, 112, 0, 1429869935, 0),
(442, 17, 112, 0, 1429869935, 0),
(443, 18, 112, 0, 1429869935, 0),
(444, 19, 112, 0, 1429869935, 0),
(445, 20, 112, 0, 1429869935, 0),
(446, 21, 112, 0, 1429869935, 0),
(447, 22, 112, 0, 1429869935, 0),
(448, 23, 112, 0, 1429869935, 0),
(449, 24, 112, 0, 1429869935, 0),
(450, 25, 112, 0, 1429869935, 0),
(451, 26, 112, 0, 1429869935, 0),
(452, 27, 112, 0, 1429869935, 0),
(453, 28, 112, 0, 1429869935, 0),
(454, 29, 112, 0, 1429869935, 0),
(455, 30, 112, 0, 1429869935, 0),
(456, 31, 112, 0, 1429869935, 0),
(457, 32, 112, 0, 1429869935, 0),
(458, 33, 112, 0, 1429869935, 0),
(459, 34, 112, 0, 1429869935, 0),
(460, 35, 112, 0, 1429869935, 0),
(461, 36, 112, 0, 1429869935, 0),
(462, 37, 112, 0, 1429869935, 0),
(463, 42, 112, 0, 1429869935, 0),
(464, 43, 112, 0, 1429869935, 0),
(465, 44, 112, 0, 1429869935, 0),
(466, 45, 112, 0, 1429869935, 0),
(467, 46, 112, 0, 1429869935, 0),
(468, 47, 112, 0, 1429869935, 0),
(469, 48, 112, 0, 1429869935, 0),
(470, 49, 112, 0, 1429869935, 0),
(471, 50, 112, 0, 1429869935, 0),
(472, 51, 112, 0, 1429869935, 0),
(473, 52, 112, 0, 1429869935, 0),
(474, 53, 112, 0, 1429869935, 0),
(475, 54, 112, 0, 1429869935, 0),
(476, 55, 112, 0, 1429869935, 0),
(477, 56, 112, 0, 1429869935, 0),
(478, 57, 112, 0, 1429869935, 0),
(479, 58, 112, 0, 1429869935, 0),
(480, 59, 112, 0, 1429869935, 0),
(481, 60, 112, 0, 1429869935, 0),
(482, 61, 112, 0, 1429869935, 0),
(483, 62, 112, 0, 1429869935, 0),
(484, 63, 112, 0, 1429869935, 0),
(485, 64, 112, 0, 1429869935, 0),
(486, 65, 112, 0, 1429869935, 0),
(487, 66, 112, 0, 1429869935, 0),
(488, 67, 112, 0, 1429869935, 0),
(489, 68, 112, 0, 1429869935, 0),
(490, 69, 112, 0, 1429869935, 0),
(491, 70, 112, 0, 1429869935, 0),
(492, 75, 112, 0, 1429869935, 0),
(493, 76, 112, 0, 1429869935, 0),
(494, 77, 112, 0, 1429869935, 0),
(495, 78, 112, 0, 1429869935, 0),
(496, 79, 112, 0, 1429869935, 0),
(497, 80, 112, 0, 1429869935, 0),
(498, 81, 112, 0, 1429869935, 0),
(499, 82, 112, 0, 1429869935, 0),
(500, 83, 112, 0, 1429869935, 0),
(501, 84, 112, 0, 1429869935, 0),
(502, 85, 112, 0, 1429869935, 0),
(503, 86, 112, 0, 1429869935, 0),
(504, 87, 112, 0, 1429869935, 0),
(505, 88, 112, 0, 1429869935, 0),
(506, 89, 112, 0, 1429869935, 0),
(507, 90, 112, 0, 1429869935, 0),
(508, 91, 112, 0, 1429869935, 0),
(509, 92, 112, 0, 1429869935, 0),
(510, 93, 112, 0, 1429869935, 0),
(511, 94, 112, 0, 1429869935, 0),
(512, 95, 112, 0, 1429869935, 0),
(513, 98, 112, 0, 1429869935, 0),
(514, 99, 112, 0, 1429869935, 0),
(515, 100, 112, 0, 1429869935, 0),
(516, 101, 112, 0, 1429869935, 0),
(517, 102, 112, 0, 1429869935, 0),
(518, 103, 112, 0, 1429869935, 0),
(519, 104, 112, 0, 1429869935, 0),
(520, 105, 112, 0, 1429869935, 0),
(521, 106, 112, 0, 1429869935, 0),
(522, 107, 112, 0, 1429869935, 0),
(523, 108, 112, 0, 1429869935, 0),
(524, 109, 112, 0, 1429869935, 0),
(525, 110, 112, 0, 1429869935, 0),
(526, 111, 112, 0, 1429869935, 0),
(527, 112, 112, 0, 1429869935, 0),
(528, 115, 112, 0, 1429869935, 0),
(529, 116, 112, 0, 1429869935, 0),
(530, 117, 112, 0, 1429869935, 0),
(531, 118, 112, 0, 1429869935, 0),
(532, 119, 112, 0, 1429869935, 0),
(533, 120, 112, 0, 1429869935, 0),
(534, 121, 112, 0, 1429869935, 0),
(535, 124, 112, 0, 1429869935, 0),
(536, 125, 112, 0, 1429869935, 0),
(537, 126, 112, 0, 1429869935, 0),
(538, 127, 112, 0, 1429869935, 0),
(539, 128, 112, 0, 1429869935, 0),
(540, 129, 112, 0, 1429869935, 0),
(541, 130, 112, 0, 1429869935, 0),
(542, 131, 112, 0, 1429869935, 0),
(543, 132, 112, 0, 1429869935, 0),
(544, 133, 112, 0, 1429869935, 0),
(545, 134, 112, 0, 1429869935, 0),
(546, 135, 112, 0, 1429869935, 0),
(547, 136, 112, 0, 1429869935, 0),
(548, 137, 112, 0, 1429869935, 0),
(549, 1, 113, 0, 1429869935, 0),
(550, 2, 113, 0, 1429869935, 0),
(551, 3, 113, 0, 1429869935, 0),
(552, 4, 113, 0, 1429869935, 0),
(553, 5, 113, 0, 1429869935, 0),
(554, 6, 113, 0, 1429869935, 0),
(555, 38, 113, 0, 1429869935, 0),
(556, 39, 113, 0, 1429869935, 0),
(557, 40, 113, 0, 1429869935, 0),
(558, 41, 113, 0, 1429869935, 0),
(559, 71, 113, 0, 1429869935, 0),
(560, 72, 113, 0, 1429869935, 0),
(561, 73, 113, 0, 1429869935, 0),
(562, 74, 113, 0, 1429869935, 0),
(563, 96, 113, 0, 1429869935, 0),
(564, 97, 113, 0, 1429869935, 0),
(565, 113, 113, 0, 1429869935, 0),
(566, 114, 113, 0, 1429869935, 0),
(567, 122, 113, 0, 1429869935, 0),
(568, 123, 113, 0, 1429869935, 0),
(569, 7, 113, 0, 1429869935, 0),
(570, 8, 113, 0, 1429869935, 0),
(571, 9, 113, 0, 1429869935, 0),
(572, 10, 113, 0, 1429869935, 0),
(573, 11, 113, 0, 1429869935, 0),
(574, 12, 113, 0, 1429869935, 0),
(575, 13, 113, 0, 1429869935, 0),
(576, 14, 113, 0, 1429869935, 0),
(577, 15, 113, 0, 1429869935, 0),
(578, 16, 113, 0, 1429869935, 0),
(579, 17, 113, 0, 1429869935, 0),
(580, 18, 113, 0, 1429869935, 0),
(581, 19, 113, 0, 1429869935, 0),
(582, 20, 113, 0, 1429869935, 0),
(583, 21, 113, 0, 1429869935, 0),
(584, 22, 113, 0, 1429869935, 0),
(585, 23, 113, 0, 1429869935, 0),
(586, 24, 113, 0, 1429869935, 0),
(587, 25, 113, 0, 1429869935, 0),
(588, 26, 113, 0, 1429869935, 0),
(589, 27, 113, 0, 1429869935, 0),
(590, 28, 113, 0, 1429869935, 0),
(591, 29, 113, 0, 1429869935, 0),
(592, 30, 113, 0, 1429869935, 0),
(593, 31, 113, 0, 1429869935, 0),
(594, 32, 113, 0, 1429869935, 0),
(595, 33, 113, 0, 1429869935, 0),
(596, 34, 113, 0, 1429869935, 0),
(597, 35, 113, 0, 1429869935, 0),
(598, 36, 113, 0, 1429869935, 0),
(599, 37, 113, 0, 1429869935, 0),
(600, 42, 113, 0, 1429869935, 0),
(601, 43, 113, 0, 1429869935, 0),
(602, 44, 113, 0, 1429869935, 0),
(603, 45, 113, 0, 1429869935, 0),
(604, 46, 113, 0, 1429869935, 0),
(605, 47, 113, 0, 1429869935, 0),
(606, 48, 113, 0, 1429869935, 0),
(607, 49, 113, 0, 1429869935, 0),
(608, 50, 113, 0, 1429869935, 0),
(609, 51, 113, 0, 1429869935, 0),
(610, 52, 113, 0, 1429869935, 0),
(611, 53, 113, 0, 1429869935, 0),
(612, 54, 113, 0, 1429869935, 0),
(613, 55, 113, 0, 1429869935, 0),
(614, 56, 113, 0, 1429869935, 0),
(615, 57, 113, 0, 1429869935, 0),
(616, 58, 113, 0, 1429869935, 0),
(617, 59, 113, 0, 1429869935, 0),
(618, 60, 113, 0, 1429869935, 0),
(619, 61, 113, 0, 1429869935, 0),
(620, 62, 113, 0, 1429869935, 0),
(621, 63, 113, 0, 1429869935, 0),
(622, 64, 113, 0, 1429869935, 0),
(623, 65, 113, 0, 1429869935, 0),
(624, 66, 113, 0, 1429869935, 0),
(625, 67, 113, 0, 1429869935, 0),
(626, 68, 113, 0, 1429869935, 0),
(627, 69, 113, 0, 1429869935, 0),
(628, 70, 113, 0, 1429869935, 0),
(629, 75, 113, 0, 1429869935, 0),
(630, 76, 113, 0, 1429869935, 0),
(631, 77, 113, 0, 1429869935, 0),
(632, 78, 113, 0, 1429869935, 0),
(633, 79, 113, 0, 1429869935, 0),
(634, 80, 113, 0, 1429869935, 0),
(635, 81, 113, 0, 1429869935, 0),
(636, 82, 113, 0, 1429869935, 0),
(637, 83, 113, 0, 1429869935, 0),
(638, 84, 113, 0, 1429869935, 0),
(639, 85, 113, 0, 1429869935, 0),
(640, 86, 113, 0, 1429869935, 0),
(641, 87, 113, 0, 1429869935, 0),
(642, 88, 113, 0, 1429869935, 0),
(643, 89, 113, 0, 1429869935, 0),
(644, 90, 113, 0, 1429869935, 0),
(645, 91, 113, 0, 1429869935, 0),
(646, 92, 113, 0, 1429869935, 0),
(647, 93, 113, 0, 1429869935, 0),
(648, 94, 113, 0, 1429869935, 0),
(649, 95, 113, 0, 1429869935, 0),
(650, 98, 113, 0, 1429869935, 0),
(651, 99, 113, 0, 1429869935, 0),
(652, 100, 113, 0, 1429869935, 0),
(653, 101, 113, 0, 1429869935, 0),
(654, 102, 113, 0, 1429869935, 0),
(655, 103, 113, 0, 1429869935, 0),
(656, 104, 113, 0, 1429869935, 0),
(657, 105, 113, 0, 1429869935, 0),
(658, 106, 113, 0, 1429869935, 0),
(659, 107, 113, 0, 1429869935, 0),
(660, 108, 113, 0, 1429869935, 0),
(661, 109, 113, 0, 1429869935, 0),
(662, 110, 113, 0, 1429869935, 0),
(663, 111, 113, 0, 1429869935, 0),
(664, 112, 113, 0, 1429869935, 0),
(665, 115, 113, 0, 1429869935, 0),
(666, 116, 113, 0, 1429869935, 0),
(667, 117, 113, 0, 1429869935, 0),
(668, 118, 113, 0, 1429869935, 0),
(669, 119, 113, 0, 1429869935, 0),
(670, 120, 113, 0, 1429869935, 0),
(671, 121, 113, 0, 1429869935, 0),
(672, 124, 113, 0, 1429869935, 0),
(673, 125, 113, 0, 1429869935, 0),
(674, 126, 113, 0, 1429869935, 0),
(675, 127, 113, 0, 1429869935, 0),
(676, 128, 113, 0, 1429869935, 0),
(677, 129, 113, 0, 1429869935, 0),
(678, 130, 113, 0, 1429869935, 0),
(679, 131, 113, 0, 1429869935, 0),
(680, 132, 113, 0, 1429869935, 0),
(681, 133, 113, 0, 1429869935, 0),
(682, 134, 113, 0, 1429869935, 0),
(683, 135, 113, 0, 1429869935, 0),
(684, 136, 113, 0, 1429869935, 0),
(685, 137, 113, 0, 1429869935, 0),
(686, 1, 114, 0, 1429869935, 0),
(687, 2, 114, 0, 1429869935, 0),
(688, 3, 114, 0, 1429869935, 0),
(689, 4, 114, 0, 1429869935, 0),
(690, 5, 114, 0, 1429869935, 0),
(691, 6, 114, 0, 1429869935, 0),
(692, 38, 114, 0, 1429869935, 0),
(693, 39, 114, 0, 1429869935, 0),
(694, 40, 114, 0, 1429869935, 0),
(695, 41, 114, 0, 1429869935, 0),
(696, 71, 114, 0, 1429869935, 0),
(697, 72, 114, 0, 1429869935, 0),
(698, 73, 114, 0, 1429869935, 0),
(699, 74, 114, 0, 1429869935, 0),
(700, 96, 114, 0, 1429869935, 0),
(701, 97, 114, 0, 1429869935, 0),
(702, 113, 114, 0, 1429869935, 0),
(703, 114, 114, 0, 1429869935, 0),
(704, 122, 114, 0, 1429869935, 0),
(705, 123, 114, 0, 1429869935, 0),
(706, 7, 114, 0, 1429869935, 0),
(707, 8, 114, 0, 1429869935, 0),
(708, 9, 114, 0, 1429869935, 0),
(709, 10, 114, 0, 1429869935, 0),
(710, 11, 114, 0, 1429869935, 0),
(711, 12, 114, 0, 1429869935, 0),
(712, 13, 114, 0, 1429869935, 0),
(713, 14, 114, 0, 1429869935, 0),
(714, 15, 114, 0, 1429869935, 0),
(715, 16, 114, 0, 1429869935, 0),
(716, 17, 114, 0, 1429869935, 0),
(717, 18, 114, 0, 1429869935, 0),
(718, 19, 114, 0, 1429869935, 0),
(719, 20, 114, 0, 1429869935, 0),
(720, 21, 114, 0, 1429869935, 0),
(721, 22, 114, 0, 1429869935, 0),
(722, 23, 114, 0, 1429869935, 0),
(723, 24, 114, 0, 1429869935, 0),
(724, 25, 114, 0, 1429869935, 0),
(725, 26, 114, 0, 1429869935, 0),
(726, 27, 114, 0, 1429869935, 0),
(727, 28, 114, 0, 1429869935, 0),
(728, 29, 114, 0, 1429869935, 0),
(729, 30, 114, 0, 1429869935, 0),
(730, 31, 114, 0, 1429869935, 0),
(731, 32, 114, 0, 1429869935, 0),
(732, 33, 114, 0, 1429869935, 0),
(733, 34, 114, 0, 1429869935, 0),
(734, 35, 114, 0, 1429869935, 0),
(735, 36, 114, 0, 1429869935, 0),
(736, 37, 114, 0, 1429869935, 0),
(737, 42, 114, 0, 1429869935, 0),
(738, 43, 114, 0, 1429869935, 0),
(739, 44, 114, 0, 1429869935, 0),
(740, 45, 114, 0, 1429869935, 0),
(741, 46, 114, 0, 1429869935, 0),
(742, 47, 114, 0, 1429869935, 0),
(743, 48, 114, 0, 1429869935, 0),
(744, 49, 114, 0, 1429869935, 0),
(745, 50, 114, 0, 1429869935, 0),
(746, 51, 114, 0, 1429869935, 0),
(747, 52, 114, 0, 1429869935, 0),
(748, 53, 114, 0, 1429869935, 0),
(749, 54, 114, 0, 1429869935, 0),
(750, 55, 114, 0, 1429869935, 0),
(751, 56, 114, 0, 1429869935, 0),
(752, 57, 114, 0, 1429869935, 0),
(753, 58, 114, 0, 1429869935, 0),
(754, 59, 114, 0, 1429869935, 0),
(755, 60, 114, 0, 1429869935, 0),
(756, 61, 114, 0, 1429869935, 0),
(757, 62, 114, 0, 1429869935, 0),
(758, 63, 114, 0, 1429869935, 0),
(759, 64, 114, 0, 1429869935, 0),
(760, 65, 114, 0, 1429869935, 0),
(761, 66, 114, 0, 1429869935, 0),
(762, 67, 114, 0, 1429869935, 0),
(763, 68, 114, 0, 1429869935, 0),
(764, 69, 114, 0, 1429869935, 0),
(765, 70, 114, 0, 1429869935, 0),
(766, 75, 114, 0, 1429869935, 0),
(767, 76, 114, 0, 1429869935, 0),
(768, 77, 114, 0, 1429869935, 0),
(769, 78, 114, 0, 1429869935, 0),
(770, 79, 114, 0, 1429869935, 0),
(771, 80, 114, 0, 1429869935, 0),
(772, 81, 114, 0, 1429869935, 0),
(773, 82, 114, 0, 1429869935, 0),
(774, 83, 114, 0, 1429869935, 0),
(775, 84, 114, 0, 1429869935, 0),
(776, 85, 114, 0, 1429869935, 0),
(777, 86, 114, 0, 1429869935, 0),
(778, 87, 114, 0, 1429869935, 0),
(779, 88, 114, 0, 1429869935, 0),
(780, 89, 114, 0, 1429869935, 0),
(781, 90, 114, 0, 1429869935, 0),
(782, 91, 114, 0, 1429869935, 0),
(783, 92, 114, 0, 1429869935, 0),
(784, 93, 114, 0, 1429869935, 0),
(785, 94, 114, 0, 1429869935, 0),
(786, 95, 114, 0, 1429869935, 0),
(787, 98, 114, 0, 1429869935, 0),
(788, 99, 114, 0, 1429869935, 0),
(789, 100, 114, 0, 1429869935, 0),
(790, 101, 114, 0, 1429869935, 0),
(791, 102, 114, 0, 1429869935, 0),
(792, 103, 114, 0, 1429869935, 0),
(793, 104, 114, 0, 1429869935, 0),
(794, 105, 114, 0, 1429869935, 0),
(795, 106, 114, 0, 1429869935, 0),
(796, 107, 114, 0, 1429869935, 0),
(797, 108, 114, 0, 1429869935, 0),
(798, 109, 114, 0, 1429869935, 0),
(799, 110, 114, 0, 1429869935, 0),
(800, 111, 114, 0, 1429869935, 0),
(801, 112, 114, 0, 1429869935, 0),
(802, 115, 114, 0, 1429869935, 0),
(803, 116, 114, 0, 1429869935, 0),
(804, 117, 114, 0, 1429869935, 0),
(805, 118, 114, 0, 1429869935, 0),
(806, 119, 114, 0, 1429869935, 0),
(807, 120, 114, 0, 1429869935, 0),
(808, 121, 114, 0, 1429869935, 0),
(809, 124, 114, 0, 1429869935, 0),
(810, 125, 114, 0, 1429869935, 0),
(811, 126, 114, 0, 1429869935, 0),
(812, 127, 114, 0, 1429869935, 0),
(813, 128, 114, 0, 1429869935, 0),
(814, 129, 114, 0, 1429869935, 0),
(815, 130, 114, 0, 1429869935, 0),
(816, 131, 114, 0, 1429869935, 0),
(817, 132, 114, 0, 1429869935, 0),
(818, 133, 114, 0, 1429869935, 0),
(819, 134, 114, 0, 1429869935, 0),
(820, 135, 114, 0, 1429869935, 0),
(821, 136, 114, 0, 1429869935, 0),
(822, 137, 114, 0, 1429869935, 0),
(823, 1, 116, 0, 1429869935, 0),
(824, 2, 116, 0, 1429869935, 0),
(825, 3, 116, 0, 1429869935, 0),
(826, 4, 116, 0, 1429869935, 0),
(827, 5, 116, 0, 1429869935, 0),
(828, 6, 116, 0, 1429869935, 0),
(829, 38, 116, 0, 1429869935, 0),
(830, 39, 116, 0, 1429869935, 0),
(831, 40, 116, 0, 1429869935, 0),
(832, 41, 116, 0, 1429869935, 0),
(833, 71, 116, 0, 1429869935, 0),
(834, 72, 116, 0, 1429869935, 0),
(835, 73, 116, 0, 1429869935, 0),
(836, 74, 116, 0, 1429869935, 0),
(837, 96, 116, 0, 1429869935, 0),
(838, 97, 116, 0, 1429869935, 0),
(839, 113, 116, 0, 1429869935, 0),
(840, 114, 116, 0, 1429869935, 0),
(841, 122, 116, 0, 1429869935, 0),
(842, 123, 116, 0, 1429869935, 0),
(843, 7, 116, 0, 1429869935, 0),
(844, 8, 116, 0, 1429869935, 0),
(845, 9, 116, 0, 1429869935, 0),
(846, 10, 116, 0, 1429869935, 0),
(847, 11, 116, 0, 1429869935, 0),
(848, 12, 116, 0, 1429869935, 0),
(849, 13, 116, 0, 1429869935, 0),
(850, 14, 116, 0, 1429869935, 0),
(851, 15, 116, 0, 1429869935, 0),
(852, 16, 116, 0, 1429869935, 0),
(853, 17, 116, 0, 1429869935, 0),
(854, 18, 116, 0, 1429869935, 0),
(855, 19, 116, 0, 1429869935, 0),
(856, 20, 116, 0, 1429869935, 0),
(857, 21, 116, 0, 1429869935, 0),
(858, 22, 116, 0, 1429869935, 0),
(859, 23, 116, 0, 1429869935, 0),
(860, 24, 116, 0, 1429869935, 0),
(861, 25, 116, 0, 1429869935, 0),
(862, 26, 116, 0, 1429869935, 0),
(863, 27, 116, 0, 1429869935, 0),
(864, 28, 116, 0, 1429869935, 0),
(865, 29, 116, 0, 1429869935, 0),
(866, 30, 116, 0, 1429869935, 0),
(867, 31, 116, 0, 1429869935, 0),
(868, 32, 116, 0, 1429869935, 0),
(869, 33, 116, 0, 1429869935, 0),
(870, 34, 116, 0, 1429869935, 0),
(871, 35, 116, 0, 1429869935, 0),
(872, 36, 116, 0, 1429869935, 0),
(873, 37, 116, 0, 1429869935, 0),
(874, 42, 116, 0, 1429869935, 0),
(875, 43, 116, 0, 1429869935, 0),
(876, 44, 116, 0, 1429869935, 0),
(877, 45, 116, 0, 1429869935, 0),
(878, 46, 116, 0, 1429869935, 0),
(879, 47, 116, 0, 1429869935, 0),
(880, 48, 116, 0, 1429869935, 0),
(881, 49, 116, 0, 1429869935, 0),
(882, 50, 116, 0, 1429869935, 0),
(883, 51, 116, 0, 1429869935, 0),
(884, 52, 116, 0, 1429869935, 0),
(885, 53, 116, 0, 1429869935, 0),
(886, 54, 116, 0, 1429869935, 0),
(887, 55, 116, 0, 1429869935, 0),
(888, 56, 116, 0, 1429869935, 0),
(889, 57, 116, 0, 1429869935, 0),
(890, 58, 116, 0, 1429869935, 0),
(891, 59, 116, 0, 1429869935, 0),
(892, 60, 116, 0, 1429869935, 0),
(893, 61, 116, 0, 1429869935, 0),
(894, 62, 116, 0, 1429869935, 0),
(895, 63, 116, 0, 1429869935, 0),
(896, 64, 116, 0, 1429869935, 0),
(897, 65, 116, 0, 1429869935, 0),
(898, 66, 116, 0, 1429869935, 0),
(899, 67, 116, 0, 1429869935, 0),
(900, 68, 116, 0, 1429869935, 0),
(901, 69, 116, 0, 1429869935, 0),
(902, 70, 116, 0, 1429869935, 0),
(903, 75, 116, 0, 1429869935, 0),
(904, 76, 116, 0, 1429869935, 0),
(905, 77, 116, 0, 1429869935, 0),
(906, 78, 116, 0, 1429869935, 0),
(907, 79, 116, 0, 1429869935, 0),
(908, 80, 116, 0, 1429869935, 0),
(909, 81, 116, 0, 1429869935, 0),
(910, 82, 116, 0, 1429869935, 0),
(911, 83, 116, 0, 1429869935, 0),
(912, 84, 116, 0, 1429869935, 0),
(913, 85, 116, 0, 1429869935, 0),
(914, 86, 116, 0, 1429869935, 0),
(915, 87, 116, 0, 1429869935, 0),
(916, 88, 116, 0, 1429869935, 0),
(917, 89, 116, 0, 1429869935, 0),
(918, 90, 116, 0, 1429869935, 0),
(919, 91, 116, 0, 1429869935, 0),
(920, 92, 116, 0, 1429869935, 0),
(921, 93, 116, 0, 1429869935, 0),
(922, 94, 116, 0, 1429869935, 0),
(923, 95, 116, 0, 1429869935, 0),
(924, 98, 116, 0, 1429869935, 0),
(925, 99, 116, 0, 1429869935, 0),
(926, 100, 116, 0, 1429869935, 0),
(927, 101, 116, 0, 1429869935, 0),
(928, 102, 116, 0, 1429869935, 0),
(929, 103, 116, 0, 1429869935, 0),
(930, 104, 116, 0, 1429869935, 0),
(931, 105, 116, 0, 1429869935, 0),
(932, 106, 116, 0, 1429869935, 0),
(933, 107, 116, 0, 1429869935, 0),
(934, 108, 116, 0, 1429869935, 0),
(935, 109, 116, 0, 1429869935, 0),
(936, 110, 116, 0, 1429869935, 0),
(937, 111, 116, 0, 1429869935, 0),
(938, 112, 116, 0, 1429869935, 0),
(939, 115, 116, 0, 1429869935, 0),
(940, 116, 116, 0, 1429869935, 0),
(941, 117, 116, 0, 1429869935, 0),
(942, 118, 116, 0, 1429869935, 0),
(943, 119, 116, 0, 1429869935, 0),
(944, 120, 116, 0, 1429869935, 0),
(945, 121, 116, 0, 1429869935, 0),
(946, 124, 116, 0, 1429869935, 0),
(947, 125, 116, 0, 1429869935, 0),
(948, 126, 116, 0, 1429869935, 0),
(949, 127, 116, 0, 1429869935, 0),
(950, 128, 116, 0, 1429869935, 0),
(951, 129, 116, 0, 1429869935, 0),
(952, 130, 116, 0, 1429869935, 0),
(953, 131, 116, 0, 1429869935, 0),
(954, 132, 116, 0, 1429869935, 0),
(955, 133, 116, 0, 1429869935, 0),
(956, 134, 116, 0, 1429869935, 0),
(957, 135, 116, 0, 1429869935, 0),
(958, 136, 116, 0, 1429869935, 0),
(959, 137, 116, 0, 1429869935, 0),
(960, 1, 100, 0, 1429869935, 0),
(961, 2, 100, 0, 1429869935, 0),
(962, 3, 100, 0, 1429869935, 0),
(963, 4, 100, 0, 1429869935, 0),
(964, 5, 100, 0, 1429869935, 0),
(965, 6, 100, 0, 1429869935, 0),
(966, 38, 100, 0, 1429869935, 0),
(967, 39, 100, 0, 1429869935, 0),
(968, 40, 100, 0, 1429869935, 0),
(969, 41, 100, 0, 1429869935, 0),
(970, 71, 100, 0, 1429869935, 0),
(971, 72, 100, 0, 1429869935, 0),
(972, 73, 100, 0, 1429869935, 0),
(973, 74, 100, 0, 1429869935, 0),
(974, 96, 100, 0, 1429869935, 0),
(975, 97, 100, 0, 1429869935, 0),
(976, 113, 100, 0, 1429869935, 0),
(977, 114, 100, 0, 1429869935, 0),
(978, 122, 100, 0, 1429869935, 0),
(979, 123, 100, 0, 1429869935, 0),
(980, 7, 100, 0, 1429869935, 0),
(981, 8, 100, 0, 1429869935, 0),
(982, 9, 100, 0, 1429869935, 0),
(983, 10, 100, 0, 1429869935, 0),
(984, 11, 100, 0, 1429869935, 0),
(985, 12, 100, 0, 1429869935, 0),
(986, 13, 100, 0, 1429869935, 0),
(987, 14, 100, 0, 1429869935, 0),
(988, 15, 100, 0, 1429869935, 0),
(989, 16, 100, 0, 1429869935, 0),
(990, 17, 100, 0, 1429869935, 0),
(991, 18, 100, 0, 1429869935, 0),
(992, 19, 100, 0, 1429869935, 0),
(993, 20, 100, 0, 1429869935, 0),
(994, 21, 100, 0, 1429869935, 0),
(995, 22, 100, 0, 1429869935, 0),
(996, 23, 100, 0, 1429869935, 0),
(997, 24, 100, 0, 1429869935, 0),
(998, 25, 100, 0, 1429869935, 0),
(999, 26, 100, 0, 1429869935, 0),
(1000, 27, 100, 0, 1429869935, 0),
(1001, 28, 100, 0, 1429869935, 0),
(1002, 29, 100, 0, 1429869935, 0),
(1003, 30, 100, 0, 1429869935, 0),
(1004, 31, 100, 0, 1429869935, 0),
(1005, 32, 100, 0, 1429869935, 0),
(1006, 33, 100, 0, 1429869935, 0),
(1007, 34, 100, 0, 1429869935, 0),
(1008, 35, 100, 0, 1429869935, 0),
(1009, 36, 100, 0, 1429869935, 0),
(1010, 37, 100, 0, 1429869935, 0),
(1011, 42, 100, 0, 1429869935, 0),
(1012, 43, 100, 0, 1429869935, 0),
(1013, 44, 100, 0, 1429869935, 0),
(1014, 45, 100, 0, 1429869935, 0),
(1015, 46, 100, 0, 1429869935, 0),
(1016, 47, 100, 0, 1429869935, 0),
(1017, 48, 100, 0, 1429869935, 0),
(1018, 49, 100, 0, 1429869935, 0),
(1019, 50, 100, 0, 1429869935, 0),
(1020, 51, 100, 0, 1429869935, 0),
(1021, 52, 100, 0, 1429869935, 0),
(1022, 53, 100, 0, 1429869935, 0),
(1023, 54, 100, 0, 1429869935, 0),
(1024, 55, 100, 0, 1429869935, 0),
(1025, 56, 100, 0, 1429869935, 0),
(1026, 57, 100, 0, 1429869935, 0),
(1027, 58, 100, 0, 1429869935, 0),
(1028, 59, 100, 0, 1429869935, 0),
(1029, 60, 100, 0, 1429869935, 0),
(1030, 61, 100, 0, 1429869935, 0),
(1031, 62, 100, 0, 1429869935, 0),
(1032, 63, 100, 0, 1429869935, 0),
(1033, 64, 100, 0, 1429869935, 0),
(1034, 65, 100, 0, 1429869935, 0),
(1035, 66, 100, 0, 1429869935, 0),
(1036, 67, 100, 0, 1429869935, 0),
(1037, 68, 100, 0, 1429869935, 0),
(1038, 69, 100, 0, 1429869935, 0),
(1039, 70, 100, 0, 1429869935, 0),
(1040, 75, 100, 0, 1429869935, 0),
(1041, 76, 100, 0, 1429869935, 0),
(1042, 77, 100, 0, 1429869935, 0),
(1043, 78, 100, 0, 1429869935, 0),
(1044, 79, 100, 0, 1429869935, 0),
(1045, 80, 100, 0, 1429869935, 0),
(1046, 81, 100, 0, 1429869935, 0),
(1047, 82, 100, 0, 1429869935, 0),
(1048, 83, 100, 0, 1429869935, 0),
(1049, 84, 100, 0, 1429869935, 0),
(1050, 85, 100, 0, 1429869935, 0),
(1051, 86, 100, 0, 1429869935, 0),
(1052, 87, 100, 0, 1429869935, 0),
(1053, 88, 100, 0, 1429869935, 0),
(1054, 89, 100, 0, 1429869935, 0),
(1055, 90, 100, 0, 1429869935, 0),
(1056, 91, 100, 0, 1429869935, 0),
(1057, 92, 100, 0, 1429869935, 0),
(1058, 93, 100, 0, 1429869935, 0),
(1059, 94, 100, 0, 1429869935, 0),
(1060, 95, 100, 0, 1429869935, 0),
(1061, 98, 100, 0, 1429869935, 0),
(1062, 99, 100, 0, 1429869935, 0),
(1063, 100, 100, 0, 1429869935, 0),
(1064, 101, 100, 0, 1429869935, 0),
(1065, 102, 100, 0, 1429869935, 0),
(1066, 103, 100, 0, 1429869935, 0),
(1067, 104, 100, 0, 1429869935, 0),
(1068, 105, 100, 0, 1429869935, 0),
(1069, 106, 100, 0, 1429869935, 0),
(1070, 107, 100, 0, 1429869935, 0),
(1071, 108, 100, 0, 1429869935, 0),
(1072, 109, 100, 0, 1429869935, 0),
(1073, 110, 100, 0, 1429869935, 0),
(1074, 111, 100, 0, 1429869935, 0),
(1075, 112, 100, 0, 1429869935, 0),
(1076, 115, 100, 0, 1429869935, 0),
(1077, 116, 100, 0, 1429869935, 0),
(1078, 117, 100, 0, 1429869935, 0),
(1079, 118, 100, 0, 1429869935, 0),
(1080, 119, 100, 0, 1429869935, 0),
(1081, 120, 100, 0, 1429869935, 0),
(1082, 121, 100, 0, 1429869935, 0),
(1083, 124, 100, 0, 1429869935, 0),
(1084, 125, 100, 0, 1429869935, 0),
(1085, 126, 100, 0, 1429869935, 0),
(1086, 127, 100, 0, 1429869935, 0),
(1087, 128, 100, 0, 1429869935, 0),
(1088, 129, 100, 0, 1429869935, 0),
(1089, 130, 100, 0, 1429869935, 0),
(1090, 131, 100, 0, 1429869935, 0),
(1091, 132, 100, 0, 1429869935, 0),
(1092, 133, 100, 0, 1429869935, 0),
(1093, 134, 100, 0, 1429869935, 0),
(1094, 135, 100, 0, 1429869935, 0),
(1095, 136, 100, 0, 1429869935, 0),
(1096, 137, 100, 0, 1429869935, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_languages`
--

CREATE TABLE IF NOT EXISTS `tbl_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `prefix` varchar(8) DEFAULT NULL,
  `default` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_languages`
--

INSERT INTO `tbl_languages` (`id`, `name`, `prefix`, `default`, `status`, `is_system`, `added`, `modified`) VALUES
(1, 'Indonesia', 'id', 0, 1, 0, 1425357221, 1429684869),
(2, 'English', 'england', 1, 1, 1, 1425357221, 1429601522),
(3, 'Saudi Arabia', 'sa', 0, 1, 0, 1425357221, 1429684869);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_model_lists`
--

CREATE TABLE IF NOT EXISTS `tbl_model_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tbl_model_lists`
--

INSERT INTO `tbl_model_lists` (`id`, `module_id`, `model`) VALUES
(1, 1, 'admin/Users'),
(2, 1, 'admin/UserProfiles'),
(3, 1, 'admin/UserHistories'),
(4, 1, 'admin/ModulePermissions'),
(5, 1, 'admin/UserGroupPermissions'),
(6, 1, 'admin/Languages'),
(7, 1, 'admin/Settings'),
(8, 1, 'admin/ServerLogs'),
(9, 1, 'admin/Sessions'),
(10, 8, 'career/Careers'),
(11, 8, 'career/Divisions'),
(12, 8, 'career/Applicants'),
(13, 13, 'color/Colors'),
(14, 13, 'color/Colorcontents'),
(15, 13, 'color/Colorpersonals'),
(16, 18, 'page/Pages'),
(17, 18, 'page/PageMenus'),
(18, 21, 'qrcode/Qrcodes'),
(19, 24, 'questionnaire/Questionnaires'),
(20, 24, 'questionnaire/Questions'),
(21, 24, 'questionnaire/Useranswers'),
(22, 24, 'questionnaire/Questionnairecompleted');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_lists`
--

CREATE TABLE IF NOT EXISTS `tbl_module_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_link` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tbl_module_lists`
--

INSERT INTO `tbl_module_lists` (`id`, `parent_id`, `module_name`, `module_link`, `order`) VALUES
(1, 0, 'admin', '#', 0),
(2, 1, 'Dashboard Panel', 'dashboard/index', 0),
(3, 1, 'Users', 'user/index', 1),
(4, 1, 'User Groups', 'usergroup/index', 2),
(5, 1, 'Languages', 'language/index', 3),
(6, 1, 'Settings', 'setting/index', 4),
(7, 1, 'Server Logs', 'serverlog/index', 5),
(8, 0, 'career', '#', 1),
(9, 8, 'Careers', 'career/index', 0),
(10, 8, 'Divisions', 'division/index', 1),
(11, 8, 'Applicants', 'applicant/index', 2),
(12, 8, 'Employees', 'employee/index', 3),
(13, 0, 'color', '#', 2),
(14, 13, 'Color Data', 'color/index', 0),
(15, 13, 'Color Content', 'colorcontent/index', 1),
(16, 13, 'Color Personal', 'colorpersonal/index', 2),
(17, 13, 'Color Scanner', 'colorscanner/index', 3),
(18, 0, 'page', '#', 3),
(19, 18, 'Pages', 'page/index', 0),
(20, 18, 'Page Menus', 'pagemenu/index', 1),
(21, 0, 'qrcode', '#', 4),
(22, 21, 'QR Codes', 'qrcode/index', 0),
(23, 21, 'QR Code Scanner', 'qrcodescanner/index', 1),
(24, 0, 'questionnaire', '#', 5),
(25, 24, 'Questionnaires', 'questionnaire/index', 0),
(26, 24, 'Questions', 'question/index', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_permissions`
--

CREATE TABLE IF NOT EXISTS `tbl_module_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_link` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=138 ;

--
-- Dumping data for table `tbl_module_permissions`
--

INSERT INTO `tbl_module_permissions` (`id`, `module_id`, `module_name`, `module_link`, `order`) VALUES
(1, 1, 'Dashboard Panel', 'dashboard/index', 0),
(2, 1, 'Users', 'user/index', 1),
(3, 1, 'User Groups', 'usergroup/index', 2),
(4, 1, 'Languages', 'language/index', 3),
(5, 1, 'Settings', 'setting/index', 4),
(6, 1, 'Server Logs', 'serverlog/index', 5),
(7, 1, 'Add New Dashboard', 'dashboard/add', 6),
(8, 1, 'View Dashboard', 'dashboard/view', 7),
(9, 1, 'Edit Dashboard', 'dashboard/edit', 8),
(10, 1, 'Delete Dashboard', 'dashboard/delete', 9),
(11, 1, 'Change Dashboard Status', 'dashboard/change', 10),
(12, 1, 'Add User', 'user/add', 11),
(13, 1, 'View User', 'user/view', 12),
(14, 1, 'Edit User', 'user/edit', 13),
(15, 1, 'Delete User', 'user/delete', 14),
(16, 1, 'Change User Status', 'user/change', 15),
(17, 1, 'Change User Image', 'user/image', 16),
(18, 1, 'Upload User Image', 'user/upload', 17),
(19, 1, 'Add User Group', 'usergroup/add', 18),
(20, 1, 'View User Group', 'usergroup/view', 19),
(21, 1, 'Edit User Group', 'usergroup/edit', 20),
(22, 1, 'Delete User Group', 'usergroup/delete', 21),
(23, 1, 'Change User Group Status', 'usergroup/change', 22),
(24, 1, 'Add Language', 'language/add', 23),
(25, 1, 'View Language', 'language/view', 24),
(26, 1, 'Edit Language', 'language/edit', 25),
(27, 1, 'Delete Language', 'language/delete', 26),
(28, 1, 'Change Language Status', 'language/change', 27),
(29, 1, 'Add Setting', 'setting/add', 28),
(30, 1, 'View Setting', 'setting/view', 29),
(31, 1, 'Edit Setting', 'setting/edit', 30),
(32, 1, 'Delete Setting', 'setting/delete', 31),
(33, 1, 'Change Setting Status', 'setting/change', 32),
(34, 1, 'View Server Log', 'serverlog/view', 33),
(35, 1, 'Edit Server Log', 'serverlog/edit', 34),
(36, 1, 'Delete Server Log', 'serverlog/delete', 35),
(37, 1, 'Trash Server Log', 'serverlog/trash', 36),
(38, 8, 'Careers', 'career/index', 0),
(39, 8, 'Divisions', 'division/index', 1),
(40, 8, 'Applicants', 'applicant/index', 2),
(41, 8, 'Employees', 'employee/index', 3),
(42, 8, 'Add Career', 'career/index/add', 4),
(43, 8, 'View Career', 'career/index/view', 5),
(44, 8, 'Edit Career', 'career/index/edit', 6),
(45, 8, 'Delete Career', 'career/index/delete', 7),
(46, 8, 'Change Career Status', 'career/index/change', 8),
(47, 8, 'Export Career', 'career/index/export', 9),
(48, 8, 'Print Career', 'career/index/print', 10),
(49, 8, 'Add Division', 'division/index/add', 11),
(50, 8, 'View Division', 'division/index/view', 12),
(51, 8, 'Edit Division', 'division/index/edit', 13),
(52, 8, 'Delete Division', 'division/index/delete', 14),
(53, 8, 'Change Division Status', 'division/index/change', 15),
(54, 8, 'Export Division', 'division/index/export', 16),
(55, 8, 'Print Division', 'division/index/print', 17),
(56, 8, 'Add Applicant', 'applicant/index/add', 18),
(57, 8, 'View Applicant', 'applicant/index/view', 19),
(58, 8, 'Edit Applicant', 'applicant/index/edit', 20),
(59, 8, 'Delete Applicant', 'applicant/index/delete', 21),
(60, 8, 'Change Applicant', 'applicant/index/change', 22),
(61, 8, 'Export Applicant', 'applicant/index/export', 23),
(62, 8, 'Print Applicant', 'applicant/index/print', 24),
(63, 8, 'Add Employee', 'employee/index/add', 25),
(64, 8, 'View Employee', 'employee/index/view', 26),
(65, 8, 'Edit Employee', 'employee/index/edit', 27),
(66, 8, 'Delete Employee', 'employee/index/delete', 28),
(67, 8, 'Set to Employee', 'employee/set', 29),
(68, 8, 'Change Employee', 'employee/index/change', 30),
(69, 8, 'Export Employee', 'employee/index/export', 31),
(70, 8, 'Print Employee', 'employee/index/print', 32),
(71, 13, 'Color Data', 'color/index', 0),
(72, 13, 'Color Content', 'colorcontent/index', 1),
(73, 13, 'Color Personal', 'colorpersonal/index', 2),
(74, 13, 'Color Scanner', 'colorscanner/index', 3),
(75, 13, 'Add Color Recognizer', 'color/index/add', 4),
(76, 13, 'View Color Recognizer', 'color/index/view', 5),
(77, 13, 'Edit Color Recognizer', 'color/index/edit', 6),
(78, 13, 'Delete Color Recognizer', 'color/index/delete', 7),
(79, 13, 'Change Color Recognizer Status', 'color/index/change', 8),
(80, 13, 'Export Color Recognizer', 'color/index/export', 9),
(81, 13, 'Print Color Recognizer', 'color/index/print', 10),
(82, 13, 'Add Color Content', 'colorcontent/index/add', 11),
(83, 13, 'View Color Content', 'colorcontent/index/view', 12),
(84, 13, 'Edit Color Content', 'colorcontent/index/edit', 13),
(85, 13, 'Delete Color Content', 'colorcontent/index/delete', 14),
(86, 13, 'Change Color Content Status', 'colorcontent/index/change', 15),
(87, 13, 'Export Color Content', 'colorcontent/index/export', 16),
(88, 13, 'Print Color Content', 'colorcontent/index/print', 17),
(89, 13, 'Add Color Personal', 'colorpersonal/index/add', 18),
(90, 13, 'View Color Personal', 'colorpersonal/index/view', 19),
(91, 13, 'Edit Color Personal', 'colorpersonal/index/edit', 20),
(92, 13, 'Delete Color Personal', 'colorpersonal/index/delete', 21),
(93, 13, 'Change Color Personal Status', 'colorpersonal/index/change', 22),
(94, 13, 'Export Color Personal', 'colorpersonal/index/export', 23),
(95, 13, 'Print Color Personal', 'colorpersonal/index/print', 24),
(96, 18, 'Pages', 'page/index', 0),
(97, 18, 'Page Menus', 'pagemenu/index', 1),
(98, 18, 'Add Page', 'page/index/add', 2),
(99, 18, 'View Page', 'page/index/view', 3),
(100, 18, 'Edit Page', 'page/index/edit', 4),
(101, 18, 'Delete Page', 'page/index/delete', 5),
(102, 18, 'Detail Page', 'page/detail', 6),
(103, 18, 'Change Page Status', 'page/index/change', 7),
(104, 18, 'Export Page', 'page/index/export', 8),
(105, 18, 'Print Page', 'page/index/print', 9),
(106, 18, 'Add Page Menu', 'pagemenu/index/add', 10),
(107, 18, 'View Page Menu', 'pagemenu/index/view', 11),
(108, 18, 'Edit Page Menu', 'pagemenu/index/edit', 12),
(109, 18, 'Delete Page Menu', 'pagemenu/index/delete', 13),
(110, 18, 'Change Page Menu Status', 'pagemenu/index/change', 14),
(111, 18, 'Export Page Menu', 'pagemenu/index/export', 15),
(112, 18, 'Print Page Menu', 'pagemenu/index/print', 16),
(113, 21, 'QR Codes', 'qrcode/index', 0),
(114, 21, 'QR Code Scanner', 'qrcodescanner/index', 1),
(115, 21, 'Add QR Code', 'qrcode/index/add', 2),
(116, 21, 'View QR Code', 'qrcode/index/view', 3),
(117, 21, 'Edit QR Code', 'qrcode/index/edit', 4),
(118, 21, 'Delete QR Code', 'qrcode/index/delete', 5),
(119, 21, 'Change QR Code Status', 'qrcode/index/change', 6),
(120, 21, 'Export QR Code', 'qrcode/index/export', 7),
(121, 21, 'Print QR Code', 'qrcode/index/print', 8),
(122, 24, 'Questionnaires', 'questionnaire/index', 0),
(123, 24, 'Questions', 'question/index', 1),
(124, 24, 'Add Questionnaire', 'questionnaire/index/add', 2),
(125, 24, 'View Questionnaire', 'questionnaire/index/view', 3),
(126, 24, 'Edit Questionnaire', 'questionnaire/index/edit', 4),
(127, 24, 'Delete Questionnaire', 'questionnaire/index/delete', 5),
(128, 24, 'Change Questionnaire Status', 'questionnaire/index/change', 6),
(129, 24, 'Export Questionnaire', 'questionnaire/index/export', 7),
(130, 24, 'Print Questionnaire', 'questionnaire/index/print', 8),
(131, 24, 'Add Question', 'question/index/add', 9),
(132, 24, 'View Question', 'question/index/view', 10),
(133, 24, 'Edit Question', 'question/index/edit', 11),
(134, 24, 'Delete Question', 'question/index/delete', 12),
(135, 24, 'Change Question Status', 'question/index/change', 13),
(136, 24, 'Export Question', 'question/index/export', 14),
(137, 24, 'Print Question', 'question/index/print', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE IF NOT EXISTS `tbl_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `synopsis` text,
  `text` text,
  `attribute` text,
  `publish_date` date DEFAULT NULL,
  `unpublish_date` date DEFAULT NULL,
  `allow_comment` tinyint(1) DEFAULT NULL,
  `tags` text,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`menu_id`,`name`,`publish_date`,`unpublish_date`,`allow_comment`,`order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `menu_id`, `name`, `subject`, `synopsis`, `text`, `attribute`, `publish_date`, `unpublish_date`, `allow_comment`, `tags`, `order`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 1, 'our-history', 'Our History', '<p>\r\n	Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History</p>\r\n', '<p>\r\n	<strong>Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History</strong></p>\r\n', NULL, '2015-02-13', '2015-02-28', 1, NULL, NULL, NULL, NULL, 'publish', NULL, 1428661972),
(2, 1, 'vision', 'Vision', '<p>\r\n	Vision Synopsis</p>\r\n', '<p>\r\n	Vision Text Description</p>\r\n', NULL, '2015-02-28', '2015-02-28', 1, NULL, NULL, NULL, NULL, 'publish', NULL, 1428662026),
(3, 2, 'test-three-page', 'Test three', '<p>\r\n	Test three</p>\r\n', '<p>\r\n	Test three</p>\r\n', NULL, '2015-02-28', '2015-03-31', 1, NULL, NULL, NULL, NULL, 'publish', NULL, 1424087137),
(4, 2, 'test-four-test', 'Test Four TEst', '<p>\r\n	Test Four TEst</p>\r\n', '<p>\r\n	Test Four TEst</p>\r\n', NULL, '2015-02-01', '2015-03-28', NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1424087155),
(5, 2, 'test-five-page-miss', 'Test Five Page', '<p>\r\n	Test Five Page</p>\r\n', '<p>\r\n	Test Five</p>\r\n', NULL, '2015-02-16', '2015-02-28', NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1424087170),
(6, 1, 'test-one-two-three-four-five-six-seven', 'Test one two three four five six seven', '<p>\r\n	Test one two three four five six seven</p>\r\n', '<p>\r\n	Test one two three four five six seven</p>\r\n', NULL, '2015-02-28', '2015-02-28', NULL, NULL, NULL, NULL, NULL, 'publish', 1424071240, 1424087187),
(7, 2, 'Test Page with Added', 'Test Page with Added', '<p>\r\n	Test Page with Added</p>\r\n', '<p>\r\n	Test Page with Added</p>\r\n', NULL, '2015-02-16', '2015-02-28', NULL, NULL, NULL, NULL, NULL, 'publish', 1424087227, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_languages`
--

CREATE TABLE IF NOT EXISTS `tbl_page_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned DEFAULT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `synopsis` text,
  `text` text,
  `attribute` text,
  `publish_date` date DEFAULT NULL,
  `unpublish_date` date DEFAULT NULL,
  `allow_comment` tinyint(1) DEFAULT NULL,
  `tags` text,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`page_id`,`name`,`publish_date`,`unpublish_date`,`allow_comment`,`order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_page_languages`
--

INSERT INTO `tbl_page_languages` (`id`, `page_id`, `lang_id`, `name`, `subject`, `synopsis`, `text`, `attribute`, `publish_date`, `unpublish_date`, `allow_comment`, `tags`, `order`, `user_id`, `count`) VALUES
(1, 1, 0, 'our-history', 'Our History', '<p>\r\n	Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History</p>\r\n', '<p>\r\n	<strong>Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History</strong></p>\r\n', NULL, '2015-02-13', '2015-02-28', 1, NULL, NULL, NULL, NULL),
(2, 1, 0, 'vision', 'Vision', '<p>\r\n	Vision Synopsis</p>\r\n', '<p>\r\n	Vision Text Description</p>\r\n', NULL, '2015-02-28', '2015-02-28', 1, NULL, NULL, NULL, NULL),
(3, 2, 0, 'test-three-page', 'Test three', '<p>\r\n	Test three</p>\r\n', '<p>\r\n	Test three</p>\r\n', NULL, '2015-02-28', '2015-03-31', 1, NULL, NULL, NULL, NULL),
(4, 2, 0, 'test-four-test', 'Test Four TEst', '<p>\r\n	Test Four TEst</p>\r\n', '<p>\r\n	Test Four TEst</p>\r\n', NULL, '2015-02-01', '2015-03-28', NULL, NULL, NULL, NULL, NULL),
(5, 2, 0, 'test-five-page-miss', 'Test Five Page', '<p>\r\n	Test Five Page</p>\r\n', '<p>\r\n	Test Five</p>\r\n', NULL, '2015-02-16', '2015-02-28', NULL, NULL, NULL, NULL, NULL),
(6, 1, 0, 'test-one-two-three-four-five-six-seven', 'Test one two three four five six seven', '<p>\r\n	Test one two three four five six seven</p>\r\n', '<p>\r\n	Test one two three four five six seven</p>\r\n', NULL, '2015-02-28', '2015-02-28', NULL, NULL, NULL, NULL, NULL),
(7, 2, 0, 'Test Page with Added', 'Test Page with Added', '<p>\r\n	Test Page with Added</p>\r\n', '<p>\r\n	Test Page with Added</p>\r\n', NULL, '2015-02-16', '2015-02-28', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_menus`
--

CREATE TABLE IF NOT EXISTS `tbl_page_menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `url` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `sub_level` tinyint(3) DEFAULT NULL,
  `order` tinyint(3) DEFAULT NULL,
  `is_system` tinyint(3) DEFAULT NULL,
  `has_child` tinyint(3) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`,`name`,`sub_level`,`order`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_page_menus`
--

INSERT INTO `tbl_page_menus` (`id`, `parent_id`, `name`, `title`, `description`, `url`, `media`, `position`, `sub_level`, `order`, `is_system`, `has_child`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, NULL, 'About Us', 'about-us', '<p>\r\n	About Us Page Description</p>\r\n', 'about-us', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, NULL),
(2, NULL, 'Company', 'company', '<p>\r\n	Company Pages Description</p>\r\n', 'company', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_menu_languages`
--

CREATE TABLE IF NOT EXISTS `tbl_page_menu_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `url` varchar(255) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`menu_id`,`name`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_page_menu_languages`
--

INSERT INTO `tbl_page_menu_languages` (`id`, `menu_id`, `name`, `title`, `description`, `url`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, NULL, 'About Us', 'about-us', '<p>\r\n	About Us Page Description</p>\r\n', 'about-us', NULL, NULL, 'publish', NULL, NULL),
(2, NULL, 'Company', 'company', '<p>\r\n	Company Pages Description</p>\r\n', 'company', NULL, NULL, 'publish', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qrcodes`
--

CREATE TABLE IF NOT EXISTS `tbl_qrcodes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `serial` text,
  `file_name` varchar(512) DEFAULT NULL,
  `qrcode_url` varchar(512) DEFAULT NULL,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_qrcodes`
--

INSERT INTO `tbl_qrcodes` (`id`, `name`, `text`, `serial`, `file_name`, `qrcode_url`, `order`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 'QR-MIvRwWPAgXhMXyYy', 'qr-MIvRwWPAgXhMXyYy', 'qr-MIvRwWPAgXhMXyYy', 'https://chart.googleapis.com/chart?cht=qr&chs=300x300&chl=qr-MIvRwWPAgXhMXyYy&choe=UTF-8&chld=L|4', NULL, NULL, NULL, NULL, 1, 1427782777, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questionnaires`
--

CREATE TABLE IF NOT EXISTS `tbl_questionnaires` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `questionnaire_text` text,
  `file_name` varchar(512) DEFAULT NULL,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_questionnaires`
--

INSERT INTO `tbl_questionnaires` (`id`, `name`, `questionnaire_text`, `file_name`, `order`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 'Test', '<p>\r\n	Test ?</p>\r\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(2, 'setsSets?', '<p>\r\n	Sets?</p>\r\n', NULL, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questionnaire_completed`
--

CREATE TABLE IF NOT EXISTS `tbl_questionnaire_completed` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `questionnaire_id` int(11) DEFAULT NULL,
  `date_completed` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE IF NOT EXISTS `tbl_questions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `questionnaire_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `question_text` text,
  `file_name` varchar(512) DEFAULT NULL,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`id`, `questionnaire_id`, `name`, `question_text`, `file_name`, `order`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 1, 'Hest', '<p>\r\n	Hest</p>\r\n', NULL, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_server_logs`
--

CREATE TABLE IF NOT EXISTS `tbl_server_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(64) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `http_code` int(11) unsigned NOT NULL,
  `status_code` varchar(160) DEFAULT NULL,
  `bytes_served` int(11) unsigned DEFAULT NULL,
  `total_time` varchar(160) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT '0',
  `referrer` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `is_mobile` int(11) DEFAULT NULL,
  `status` int(1) unsigned NOT NULL,
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=254 ;

--
-- Dumping data for table `tbl_server_logs`
--

INSERT INTO `tbl_server_logs` (`id`, `session_id`, `url`, `user_id`, `http_code`, `status_code`, `bytes_served`, `total_time`, `ip_address`, `referrer`, `user_agent`, `is_mobile`, `status`, `added`, `modified`) VALUES
(1, 'b51c6db498c1fcd1018a9d212f7248df', 'http://localhost/dentsu.digital/home/menu', NULL, 200, 'OK', NULL, '0.68937200 1429252025', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252026, 0),
(2, 'b51c6db498c1fcd1018a9d212f7248df', 'http://localhost/dentsu.digital/home', NULL, 200, 'OK', NULL, '0.41274400 1429252029', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252029, 0),
(3, 'b51c6db498c1fcd1018a9d212f7248df', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.73427600 1429252034', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252034, 0),
(4, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.33932300 1429252915', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252915, 0),
(5, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.59844900 1429252936', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252936, 0),
(6, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.32752200 1429252937', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252937, 0),
(7, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.57854700 1429252937', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252937, 0),
(8, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.86397500 1429252951', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252951, 0),
(9, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.31112000 1429253003', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253003, 0),
(10, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.87017500 1429253003', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253003, 0),
(11, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.05119400 1429253004', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253004, 0),
(12, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.41683000 1429253020', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253020, 0),
(13, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.67745600 1429253026', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253026, 0),
(14, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.06279400 1429253090', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253090, 0),
(15, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.67095400 1429253121', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253121, 0),
(16, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.43093000 1429253131', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253131, 0),
(17, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.80276700 1429253149', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253149, 0),
(18, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.06399300 1429253152', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253152, 0),
(19, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.48403500 1429253172', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253172, 0),
(20, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.37812500 1429253173', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253173, 0),
(21, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.62514900 1429253173', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253173, 0),
(22, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.84117100 1429253173', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253173, 0),
(23, '1f3070a252200c4a83876223275d229b', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.31191700 1429253261', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253261, 0),
(24, '1f3070a252200c4a83876223275d229b', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.67705400 1429253262', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253262, 0),
(25, '1f3070a252200c4a83876223275d229b', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.44863000 1429253288', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253288, 0),
(106, 'e11de059f1f8d86c6bc467bc29c7febb', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.44487700 1429260431', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.90 Safari\\/537.36","platform":"Unknown Windows OS","browser":"Chrome"}', 0, 1, 1429260432, 0),
(107, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.06122100 1429262235', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262235, 0),
(108, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.32824800 1429262245', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262245, 0),
(109, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.03571800 1429262250', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262250, 0),
(110, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.76849100 1429262277', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262277, 0),
(111, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.89560400 1429262278', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262279, 0),
(112, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.22163700 1429262279', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262279, 0),
(113, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.49566400 1429262279', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262279, 0),
(114, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.66768100 1429262279', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262279, 0),
(115, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.84699900 1429262292', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262292, 0),
(116, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.66308100 1429262293', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262293, 0),
(117, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.05011900 1429262294', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262294, 0),
(118, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.31614600 1429262294', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262294, 0),
(119, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.65007900 1429262313', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262313, 0),
(120, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.77619200 1429262314', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262314, 0),
(121, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.10422400 1429262335', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262335, 0),
(122, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.96341000 1429262346', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262347, 0),
(123, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.41065500 1429262349', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262349, 0),
(124, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.20473400 1429262350', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262350, 0),
(125, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.85279900 1429262350', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262350, 0),
(126, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.31284500 1429262351', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262351, 0),
(127, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.61087500 1429262351', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262351, 0),
(128, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.78689200 1429262351', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262351, 0),
(129, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.97091100 1429262351', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262352, 0),
(130, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.19193300 1429262352', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262352, 0),
(131, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.42395600 1429262352', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262352, 0),
(132, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.09002300 1429262353', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262353, 0),
(133, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.79509300 1429262353', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262353, 0),
(134, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.83319700 1429262354', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262354, 0),
(135, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.30134300 1429262386', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262386, 0),
(136, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.18553200 1429262388', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262388, 0),
(137, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.95970900 1429262389', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262390, 0),
(138, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.38795200 1429262392', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262392, 0),
(139, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.56677000 1429262410', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262410, 0),
(140, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.34994800 1429262422', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262422, 0),
(141, '64d70d40610a17751bf6aee010681583', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.06454800 1429262913', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262913, 0),
(142, '64d70d40610a17751bf6aee010681583', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.60054800 1429262918', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262918, 0),
(143, '64d70d40610a17751bf6aee010681583', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.44254800 1429262999', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262999, 0),
(144, '64d70d40610a17751bf6aee010681583', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.94254800 1429263004', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263005, 0),
(145, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.41754800 1429263012', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263012, 0),
(146, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.94054800 1429263013', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263014, 0),
(147, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.28654800 1429263015', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263015, 0),
(148, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.99354800 1429263015', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263016, 0),
(149, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.92354800 1429263037', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263038, 0),
(150, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.21854800 1429263039', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263039, 0),
(151, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.38554800 1429263046', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263046, 0),
(152, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.46654800 1429263064', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263064, 0),
(153, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.73554800 1429263065', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263065, 0),
(154, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.58254800 1429263066', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263066, 0),
(155, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.29454800 1429263107', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263107, 0),
(156, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.51954800 1429263108', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263108, 0),
(157, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.38154800 1429263134', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263134, 0),
(158, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.49454800 1429263135', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263135, 0),
(159, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.10754800 1429263136', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263136, 0),
(160, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.00454800 1429263152', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263152, 0),
(161, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.04654800 1429263158', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263158, 0),
(162, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.74854800 1429263162', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263162, 0),
(163, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.92654800 1429263166', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263167, 0),
(164, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.65854800 1429263170', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263170, 0),
(165, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.53554800 1429263178', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263178, 0),
(166, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.07354800 1429263180', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263180, 0),
(167, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.48654800 1429263180', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263180, 0),
(168, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.67454800 1429263180', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263180, 0),
(169, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.83454800 1429263180', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263181, 0),
(170, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.01054800 1429263181', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263181, 0),
(171, '252e06454b1392e11a5ce5e38bccfaba', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.13825400 1429267901', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429267908, 0),
(172, '252e06454b1392e11a5ce5e38bccfaba', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.95121600 1429267915', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429267916, 0),
(173, '252e06454b1392e11a5ce5e38bccfaba', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.71866800 1429267950', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429267951, 0),
(174, '252e06454b1392e11a5ce5e38bccfaba', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.13235000 1429267979', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429267979, 0),
(175, '252e06454b1392e11a5ce5e38bccfaba', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.22656300 1429268115', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268122, 0),
(176, '252e06454b1392e11a5ce5e38bccfaba', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.12404200 1429268140', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268140, 0),
(177, 'a27a2f5764915cabadb35468ab16535c', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.85618400 1429268235', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268236, 0),
(178, 'a27a2f5764915cabadb35468ab16535c', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.69785200 1429268246', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268246, 0),
(179, 'a27a2f5764915cabadb35468ab16535c', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.36187700 1429268449', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268452, 0),
(180, 'a27a2f5764915cabadb35468ab16535c', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.19784200 1429268504', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268504, 0),
(181, 'a27a2f5764915cabadb35468ab16535c', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.81456500 1429268517', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268517, 0),
(182, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.00080000 1429268574', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268574, 0),
(183, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.27565500 1429268578', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268578, 0),
(184, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.50210000 1429268585', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268585, 0),
(185, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.50349900 1429268607', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268607, 0),
(186, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.70253800 1429268622', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268622, 0),
(187, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.68893500 1429268634', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268634, 0),
(188, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.15862900 1429268638', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268638, 0),
(189, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.90007500 1429268687', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268688, 0),
(190, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.67542900 1429268714', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268714, 0),
(191, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.67432600 1429268786', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268786, 0),
(192, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.17712600 1429268788', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268788, 0),
(193, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.46748400 1429268797', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268797, 0),
(194, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.10021100 1429268801', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268801, 0),
(195, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.38176700 1429268806', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268806, 0),
(196, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.04029800 1429268819', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268819, 0),
(197, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.23543300 1429268922', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268922, 0),
(198, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.63871300 1429268923', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268923, 0),
(199, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.07760100 1429268928', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268928, 0),
(200, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.73143100 1429268954', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268954, 0),
(201, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.77003800 1429268957', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268957, 0),
(202, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.45008000 1429268968', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268968, 0),
(203, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.05805700 1429269016', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269016, 0),
(204, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.30560700 1429269028', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269028, 0),
(205, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.43927900 1429269037', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269037, 0),
(206, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.81790300 1429269051', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269051, 0),
(207, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.70582500 1429269054', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269055, 0),
(208, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.07005200 1429269061', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269061, 0),
(209, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.11414300 1429269078', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269078, 0),
(210, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.77111100 1429269100', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269100, 0),
(211, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.69532600 1429269104', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269104, 0),
(212, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.70172400 1429269107', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269107, 0),
(213, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.75821200 1429269117', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269117, 0),
(214, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.89378400 1429269144', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269145, 0),
(215, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.00436000 1429269187', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269187, 0),
(216, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.26890700 1429269189', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269190, 0),
(217, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.56704700 1429269198', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269198, 0),
(218, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.02235600 1429269202', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269202, 0),
(219, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.49466000 1429269255', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269255, 0),
(220, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.95463100 1429269285', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269286, 0),
(221, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.24263100 1429269342', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269342, 0),
(222, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.72463100 1429269343', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269343, 0),
(223, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.00063100 1429269344', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269344, 0),
(224, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.23413100 1429269344', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269344, 0),
(225, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.47013100 1429269362', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269362, 0),
(226, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.09913100 1429269377', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269377, 0),
(227, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.81363100 1429269380', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269380, 0),
(228, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.12913100 1429269399', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269399, 0),
(229, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.28013100 1429269407', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269407, 0),
(230, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.26363100 1429269440', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269440, 0),
(231, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.67563100 1429269534', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269537, 0),
(232, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.16813100 1429269556', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269556, 0),
(233, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.18663100 1429269559', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269559, 0),
(234, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.58663100 1429269566', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269566, 0),
(235, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.13763100 1429269583', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269583, 0),
(236, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.25163100 1429269584', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269584, 0),
(237, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.31913100 1429269605', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269605, 0),
(238, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.37363100 1429269606', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269606, 0);
INSERT INTO `tbl_server_logs` (`id`, `session_id`, `url`, `user_id`, `http_code`, `status_code`, `bytes_served`, `total_time`, `ip_address`, `referrer`, `user_agent`, `is_mobile`, `status`, `added`, `modified`) VALUES
(239, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.49163100 1429269621', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269621, 0),
(240, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.22163100 1429269636', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269636, 0),
(241, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.52963100 1429269646', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269646, 0),
(242, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.94463100 1429269702', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269703, 0),
(243, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.58413100 1429269741', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269741, 0),
(244, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.79163100 1429269742', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269742, 0),
(245, '5cbe9d1bf209701e8114f6a2563a451e', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.06348400 1429499606', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.90 Safari\\/537.36","platform":"Unknown Windows OS","browser":"Chrome"}', 0, 1, 1429499625, 0),
(246, '62312461f1016a2e1834a4b99add4498', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.94892300 1429500167', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429500206, 0),
(247, '97f42a0d0eca2d362891f0a7d16523b2', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.95829200 1429592294', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.90 Safari\\/537.36","platform":"Unknown Windows OS","browser":"Chrome"}', 0, 1, 1429592321, 0),
(248, '3e9d15fa0926d3f3177479d127a2dcb7', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.48193300 1429613388', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.90 Safari\\/537.36","platform":"Unknown Windows OS","browser":"Chrome"}', 0, 1, 1429613403, 0),
(249, 'f099a90a3461185e996ce58d76d2a29b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.86900400 1429624567', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.90 Safari\\/537.36","platform":"Unknown Windows OS","browser":"Chrome"}', 0, 1, 1429624580, 0),
(250, 'd49c32d077d3039019d28b0e47327922', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.99084600 1429677653', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.90 Safari\\/537.36","platform":"Unknown Windows OS","browser":"Chrome"}', 0, 1, 1429677666, 0),
(251, '492284f5dba5c922185b5534d21b8572', 'http://localhost/dentsu.digital/home', NULL, 200, 'OK', NULL, '0.61240800 1429854899', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429854899, 0),
(252, '492284f5dba5c922185b5534d21b8572', 'http://localhost/dentsu.digital/home', NULL, 200, 'OK', NULL, '0.30940800 1429854906', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429854906, 0),
(253, '492284f5dba5c922185b5534d21b8572', 'http://localhost/dentsu.digital/home/sdfgsdfgsdfgsdfg', NULL, 200, 'OK', NULL, '0.18640800 1429854910', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429854910, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parameter` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT '1',
  `input_type` enum('input','textarea','radio','dropdown','timezones') DEFAULT NULL,
  `input_size` enum('large','medium','small') DEFAULT NULL,
  `show_editor` enum('0','1') DEFAULT NULL,
  `is_numeric` enum('0','1') DEFAULT NULL,
  `help_text` varchar(512) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`parameter`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `parameter`, `alias`, `value`, `is_system`, `input_type`, `input_size`, `show_editor`, `is_numeric`, `help_text`, `status`, `added`, `modified`) VALUES
(1, 'email_marketing', 'Email Marketing', 'marketing@', 1, 'input', 'small', '0', '0', '', 1, 1334835773, NULL),
(2, 'email_administrator', 'Email Administrator', 'administrator@', 1, 'input', 'small', '0', '0', '', 1, 1334835773, 1336122482),
(3, 'email_hrd', 'Email HRD', 'hrd@', 1, 'input', 'small', '0', '0', '', 1, 1334835773, NULL),
(4, 'email_info', 'Email Info', 'info@d3.dentsu.co.id', 1, 'input', 'small', '0', '0', '', 1, 1334835773, NULL),
(5, 'email_template', 'Email Template', 'Dear {user}, This email is sent to you by automaticly, Please not reply this email, Thank you.<br><br><blockquote><blockquote><blockquote><img src="http://www.codeigniter.com/assets/images/ci-logo-big.png" alt=""><br><br></blockquote></blockquote></blockquote>{company}<br>', 1, 'input', 'large', '1', '0', 'This is email template for your contact', 1, 1334835773, 1429097217),
(6, 'maintenance_template', 'Maintenance Mode Template', '<h2>The site is off for <span><h1>MAINTENANCE</h1></span></h2>', 1, 'input', 'large', '1', '0', '', 1, 1334835773, NULL),
(7, 'contactus_address', 'Contact Address', '22nd Floor, Mandiri Tower Plaza Bapindo <br/>\nJl. Jend. Sudirman Kav. 54-55 <br/>\nJakarta 12190, Indonesia', 1, 'input', 'small', '0', '0', '', 1, 1334835773, NULL),
(8, 'contactus_gmap', 'GMaps Location', 'http://maps.google.com/maps?q=-6.217668,106.812992&num=1&t=m&z=18', 1, 'input', 'large', '0', '0', '', 1, 1334835773, NULL),
(9, 'no_phone', 'Number Phone', '(021) 299-501-10 / (021) 526-0286', 1, 'input', 'small', '0', '0', '', 1, 1334835773, NULL),
(10, 'no_fax', 'Number Fax', '(021) 522.3718', 1, 'input', 'small', '0', '0', '', 1, 1334835773, NULL),
(11, 'title_default', 'Website Title Default', 'Connecting you to your consumer', 1, 'input', 'medium', '0', '0', '', 1, NULL, NULL),
(12, 'title_name', 'Company Title Name', 'PT. Default (Web Agency in Jakarta)', 1, 'input', 'medium', '0', '0', '', 1, NULL, 1336118568),
(13, 'language', 'Default Site Language', 'en', 1, 'input', 'small', '0', '0', 'Default language set', 1, NULL, 1429598740),
(14, 'counter', 'Site Counter', '123', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(15, 'copyright', 'Copyright', '© 2012 COMPANY NAME COPYRIGHT. All Rights Reserved.', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(16, 'site_name', 'Site Name', ' Default <br/> PT. Default (Web Agency in Jakarta).', 1, 'input', 'medium', '0', '0', '', 1, NULL, 1336118568),
(17, 'site_quote', 'Quote', 'We provide solution for your Websites', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(18, 'site_description', 'Website Description', 'We provide solution for your Company Website ', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(19, 'socmed_facebook', 'Facebook', 'http://facebook.com', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(20, 'socmed_twitter', 'Twitter', 'http://twitter.com', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(21, 'socmed_gplus', 'Google Plus', 'http://plus.google.com', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(22, 'socmed_linkedin', 'LinkedIn', 'http://linkedin.com', 1, 'input', 'large', '0', '0', '', 1, NULL, 1424754067),
(23, 'socmed_pinterest', 'Pinterest', 'http://pinterest.com', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(24, 'registered_mark', 'Registered', 'We provide solution for your Websites', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(25, 'google_analytics', 'Analytics', 'Code Snippet', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(26, 'ext_link', 'Ext Link', 'http://www.apb-career.net', 1, 'input', 'large', '0', '0', '', 1, NULL, 1423732944);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` char(64) CHARACTER SET latin1 NOT NULL,
  `email` varchar(64) CHARACTER SET latin1 NOT NULL,
  `password` char(124) CHARACTER SET latin1 NOT NULL,
  `group_id` tinyint(1) unsigned NOT NULL,
  `last_login` int(11) NOT NULL,
  `logged_in` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `session_id` varchar(160) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `email`, `password`, `group_id`, `last_login`, `logged_in`, `status`, `session_id`, `added`, `modified`) VALUES
(1, 'admin', 'admin@admin.com', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 1, 1429869928, 1, 1, '4ad3892c452d0872987d529019f08032', 0, 0),
(2, 'joni', 'admin1@admin.com', '9003d1df22eb4d3820015070385194c8', 2, 1417003004, 0, 0, '', 0, 1429262613),
(3, 'qc9080', 'asdf@asdf.com', 'fb00378895cf135de3b135f385c0012f3823e4fb', 116, 1417001008, 0, 1, '', 1425031512, 1424689343),
(29, 'dyarfi', 'dyarfi20@gmail.com', '647dc5d75f6ce3c6a859eb3b91fa6ccaab05b245', 116, 0, 0, 1, '', 1417065898, 0),
(7, 'gmp1234', 'defrian.yarfi@gmail.com', '4d60cf3ac1381a533090412a84466000437eee1f', 116, 1417003001, 0, 1, '', 1425031542, 0),
(42, 'dyarfi20@gmail.com', 'dyarfi20@gmail.com', '8f956a5c8346e1909dce9a2aea8839d6f05e8ce1', 100, 0, 0, 1, '', 1425270772, 0),
(43, 'defrian.yarfi@gmail.com', 'defrian.yarfi@gmail.com', 'a49c1b8e9e2b8d49e78194b07fcaa045204647d3', 100, 0, 0, 1, '', 1425270783, 0),
(45, 'defrian.yarfi@gmail.com', 'defrian.yarfi@gmail.com', 'a49c1b8e9e2b8d49e78194b07fcaa045204647d3', 100, 0, 0, 1, '', 1425271011, 0),
(44, 'dyarfi20@gmail.com', 'dyarfi20@gmail.com', '8f956a5c8346e1909dce9a2aea8839d6f05e8ce1', 100, 0, 0, 1, '', 1425271008, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_answers`
--

CREATE TABLE IF NOT EXISTS `tbl_user_answers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `user_questionnaire_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_groups`
--

CREATE TABLE IF NOT EXISTS `tbl_user_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `backend_access` tinyint(1) DEFAULT NULL,
  `full_backend_access` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `tbl_user_groups`
--

INSERT INTO `tbl_user_groups` (`id`, `name`, `backend_access`, `full_backend_access`, `status`, `is_system`, `added`, `modified`) VALUES
(1, 'Super Administrator', 1, 1, 1, 1, 1416499923, 0),
(2, 'Administrator', 1, 1, 1, 1, 1416499923, 0),
(99, 'User', 0, 0, 1, 1, 1416499923, 0),
(111, 'Manager', 1, 1, 0, 0, 0, 1425371383),
(112, 'Executive', 0, 0, 1, 0, 0, 0),
(113, 'Director', 0, 0, 1, 0, 0, 0),
(114, 'General', 0, 0, 1, 0, 0, 1424689329),
(116, 'Publisher', 1, 1, 1, 0, 0, 0),
(100, 'Employee', 1, NULL, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_histories`
--

CREATE TABLE IF NOT EXISTS `tbl_user_histories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(24) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `controller` varchar(160) NOT NULL,
  `action` char(20) DEFAULT NULL,
  `time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`module`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_user_histories`
--

INSERT INTO `tbl_user_histories` (`id`, `module`, `user_id`, `controller`, `action`, `time`) VALUES
(1, 'user', 1, 'history', 'index', 1416281220),
(2, 'user', 1, 'history', 'index', 1416281220);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_profiles`
--

CREATE TABLE IF NOT EXISTS `tbl_user_profiles` (
  `user_id` int(11) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `about` text,
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `division` varchar(64) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `address` text,
  `postal_code` varchar(8) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `mobile_phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `file_type` varchar(64) DEFAULT NULL,
  `file_name` varchar(48) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  KEY `user_id` (`user_id`,`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_profiles`
--

INSERT INTO `tbl_user_profiles` (`user_id`, `gender`, `about`, `first_name`, `last_name`, `division`, `country`, `state`, `city`, `address`, `postal_code`, `birthday`, `phone`, `mobile_phone`, `fax`, `website`, `file_type`, `file_name`, `status`, `added`, `modified`) VALUES
(1, 1, 'Top Administrator of this website and portal', 'Administrator', 'Website', 'Web Programmer', 'DKI Jakarta', 'Jakarta', 'Jl. Gading Putih 1 F2 No. 4', '14240', '', '2010-09-06', '1234', '081807244697', '0', 'http://google.com', 'image/jpeg', 'Muhammed-Ali-Career-In-Pictures.jpg', 1, 1283760138, 1428304456),
(2, 1, 'Administrator of this Website', '', '', 'Web Designer', 'DKI Jakarta', 'Jakarta', 'Jl. Gading Putih 1 F2 No. 4', '14240', '', '2010-09-06', '1234', '081807244697', '0', '', 'image/jpeg', '78d57b4b5a0c6048b75bb0c9d91a8392.jpg', 0, 1283760138, 1429262613),
(3, 1, 'User of this Website', 'Administrator', 'Viewers', 'Jakarta', '', '', 'Jl. Pulomas Barat 1 No. 31', '', '', '2012-02-12', '1234', NULL, NULL, NULL, 'image/jpeg', 'a8a484572c007e1e17648ae2c7ad629c.jpg', 1, 1425031512, 1424689343),
(28, 1, 'Test', 'Public', 'Viewers', 'Web Programmer', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '909090090', '909090090', NULL, NULL, NULL, NULL, 1, 1424854403, 1424689343),
(29, 1, 'Web Programmer not a full stack', 'Defrian', 'Yarfi', 'Web Programmer', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '081807244697', '081807244697', NULL, NULL, NULL, NULL, 1, 1417065898, 0),
(44, 1, NULL, 'Dyarfi 20 Defrian Yarfi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '647474747', NULL, NULL, NULL, NULL, '20131013_142521a.jpg', 1, 1425271008, 0),
(45, 1, NULL, 'Defrian Yarfi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '647474747', NULL, NULL, NULL, NULL, '3b394-1513781_10205610488526266_3600135193534162', 1, 1425271011, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
