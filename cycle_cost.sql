-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 23, 2020 at 01:31 PM
-- Server version: 5.7.19
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cycle_cost`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add highlevelcomponents', 6, 'add_highlevelcomponents'),
(22, 'Can change highlevelcomponents', 6, 'change_highlevelcomponents'),
(23, 'Can delete highlevelcomponents', 6, 'delete_highlevelcomponents'),
(24, 'Can view highlevelcomponents', 6, 'view_highlevelcomponents'),
(25, 'Can add cycle', 7, 'add_cycle'),
(26, 'Can change cycle', 7, 'change_cycle'),
(27, 'Can delete cycle', 7, 'delete_cycle'),
(28, 'Can view cycle', 7, 'view_cycle'),
(29, 'Can add subcomponents', 8, 'add_subcomponents'),
(30, 'Can change subcomponents', 8, 'change_subcomponents'),
(31, 'Can delete subcomponents', 8, 'delete_subcomponents'),
(32, 'Can view subcomponents', 8, 'view_subcomponents'),
(33, 'Can add parts', 9, 'add_parts'),
(34, 'Can change parts', 9, 'change_parts'),
(35, 'Can delete parts', 9, 'delete_parts'),
(36, 'Can view parts', 9, 'view_parts'),
(37, 'Can add my user', 10, 'add_myuser'),
(38, 'Can change my user', 10, 'change_myuser'),
(39, 'Can delete my user', 10, 'delete_myuser'),
(40, 'Can view my user', 10, 'view_myuser');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(6, 'high_level_components', 'highlevelcomponents'),
(7, 'master_cycle', 'cycle'),
(8, 'sub_components', 'subcomponents'),
(9, 'parts', 'parts'),
(10, 'users', 'myuser');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-07-23 12:16:46.233999'),
(2, 'contenttypes', '0002_remove_content_type_name', '2020-07-23 12:16:46.441124'),
(3, 'auth', '0001_initial', '2020-07-23 12:16:47.400491'),
(4, 'auth', '0002_alter_permission_name_max_length', '2020-07-23 12:16:48.644126'),
(5, 'auth', '0003_alter_user_email_max_length', '2020-07-23 12:16:48.656119'),
(6, 'auth', '0004_alter_user_username_opts', '2020-07-23 12:16:48.664114'),
(7, 'auth', '0005_alter_user_last_login_null', '2020-07-23 12:16:48.672109'),
(8, 'auth', '0006_require_contenttypes_0002', '2020-07-23 12:16:48.676105'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2020-07-23 12:16:48.688629'),
(10, 'auth', '0008_alter_user_username_max_length', '2020-07-23 12:16:48.699619'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2020-07-23 12:16:48.710608'),
(12, 'auth', '0010_alter_group_name_max_length', '2020-07-23 12:16:48.790561'),
(13, 'auth', '0011_update_proxy_permissions', '2020-07-23 12:16:48.803552'),
(14, 'users', '0001_initial', '2020-07-23 12:16:49.489412'),
(15, 'admin', '0001_initial', '2020-07-23 12:16:50.989889'),
(16, 'admin', '0002_logentry_remove_auto_add', '2020-07-23 12:16:51.516075'),
(17, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-23 12:16:51.536063'),
(18, 'master_cycle', '0001_initial', '2020-07-23 12:16:51.692968'),
(19, 'high_level_components', '0001_initial', '2020-07-23 12:16:51.939815'),
(20, 'sub_components', '0001_initial', '2020-07-23 12:16:52.347578'),
(21, 'parts', '0001_initial', '2020-07-23 12:16:52.683369'),
(22, 'sessions', '0001_initial', '2020-07-23 12:16:53.167089');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `high_level_components`
--

DROP TABLE IF EXISTS `high_level_components`;
CREATE TABLE IF NOT EXISTS `high_level_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `high_level_component` varchar(200) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `cycle_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `high_level_components_cycle_id_id_346034cc` (`cycle_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `high_level_components`
--

INSERT INTO `high_level_components` (`id`, `high_level_component`, `created_at`, `updated_at`, `cycle_id_id`) VALUES
(1, 'Frame', '2020-07-23 17:49:01.000000', '2020-07-23 17:49:01.000000', 1),
(2, 'Handle bar with brakes', '2020-04-14 00:00:00.000000', '2020-04-14 00:00:00.000000', 1),
(3, 'Seating', '2020-07-23 17:50:08.000000', '2020-07-23 17:50:08.000000', 1),
(4, 'Wheels', '2020-04-14 00:00:00.000000', '2020-04-14 00:00:00.000000', 1),
(5, 'Chain Assembly', '2020-04-14 00:00:00.000000', '2020-04-14 00:00:00.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_cycle`
--

DROP TABLE IF EXISTS `m_cycle`;
CREATE TABLE IF NOT EXISTS `m_cycle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_name` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_cycle`
--

INSERT INTO `m_cycle` (`id`, `vehicle_name`, `created_at`, `updated_at`) VALUES
(1, 'hero_cycle', '2020-07-23 17:48:02.000000', '2020-07-23 17:48:02.000000');

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS `parts`;
CREATE TABLE IF NOT EXISTS `parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_name` varchar(200) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost_price` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `subcomponents_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parts_subcomponents_id_id_2531339c` (`subcomponents_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`id`, `part_name`, `start_date`, `end_date`, `cost_price`, `created_at`, `updated_at`, `subcomponents_id_id`) VALUES
(1, 'Bull Horns', '2020-07-23', '2021-02-22', 1200, '2020-07-23 17:58:15.000000', '2020-07-23 17:58:15.000000', 1),
(2, 'Flat Bars', '2020-07-23', '2020-07-23', 1550, '2020-04-14 00:00:00.000000', '2020-04-14 00:00:00.000000', 1),
(3, 'Tubeless tyre', '2020-07-02', '2021-02-23', 2100, '2020-07-23 18:00:03.000000', '2020-07-23 18:00:03.000000', 7),
(4, 'Tubeless', '2020-07-24', '2021-04-23', 1903, '2020-04-14 00:00:00.000000', '2020-04-14 00:00:00.000000', 7),
(5, 'Steal Frame', '2020-07-02', '2021-02-23', 2103, '2020-07-23 18:00:57.000000', '2020-07-23 18:00:57.000000', 1),
(6, '4 gears', '2020-07-02', '2021-02-23', 2100, '2020-07-23 18:01:28.000000', '2020-07-23 18:01:28.000000', 1),
(7, 'Bull Horns', '2018-07-23', '2019-02-22', 1000, '2020-07-23 17:58:15.000000', '2020-07-23 17:58:15.000000', 1),
(8, 'Flat Bars', '2018-07-23', '2019-07-23', 1250, '2020-04-14 00:00:00.000000', '2020-04-14 00:00:00.000000', 1),
(9, 'Tubeless tyre', '2018-07-02', '2019-02-23', 2000, '2020-07-23 18:00:03.000000', '2020-07-23 18:00:03.000000', 7),
(10, 'Tubeless', '2018-07-24', '2019-04-23', 1803, '2020-04-14 00:00:00.000000', '2020-04-14 00:00:00.000000', 7),
(11, 'Steal Frame', '2018-07-02', '2019-02-23', 2003, '2020-07-23 18:00:57.000000', '2020-07-23 18:00:57.000000', 1),
(12, '4 gears', '2018-07-02', '2019-02-23', 1900, '2020-07-23 18:01:28.000000', '2020-07-23 18:01:28.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_components`
--

DROP TABLE IF EXISTS `sub_components`;
CREATE TABLE IF NOT EXISTS `sub_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_component` varchar(200) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `high_level_components_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_components_high_level_components_id_id_ae9e2ba7` (`high_level_components_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_components`
--

INSERT INTO `sub_components` (`id`, `sub_component`, `created_at`, `updated_at`, `high_level_components_id_id`) VALUES
(1, 'Handle', '2020-07-23 17:51:35.000000', '2020-07-23 17:51:35.000000', 1),
(2, 'Gaurd', '2020-04-14 00:00:00.000000', '2020-04-14 00:00:00.000000', 1),
(3, 'Front Break', '2020-07-23 17:53:24.000000', '2020-07-23 17:53:24.000000', 2),
(4, 'Back Break', '2020-04-14 00:00:00.000000', '2020-04-14 00:00:00.000000', 2),
(5, 'Saddle', '2020-07-23 17:53:58.000000', '2020-07-23 17:53:58.000000', 3),
(6, 'Seat Clamp', '2020-04-14 00:00:00.000000', '2020-04-14 00:00:00.000000', 3),
(7, 'Spokes', '2020-07-23 17:54:46.000000', '2020-07-23 17:54:46.000000', 4),
(8, 'Rim', '2020-04-14 00:00:00.000000', '2020-04-14 00:00:00.000000', 4),
(9, 'Crank', '2020-07-23 17:55:40.000000', '2020-07-23 17:55:40.000000', 5),
(10, 'Chainstay', '2020-04-14 00:00:00.000000', '2020-04-14 00:00:00.000000', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_groups_myuser_id_group_id_5a3b4598_uniq` (`myuser_id`,`group_id`),
  KEY `users_groups_myuser_id_0cc9d283` (`myuser_id`),
  KEY `users_groups_group_id_2f3517aa` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_user_permissions`
--

DROP TABLE IF EXISTS `users_user_permissions`;
CREATE TABLE IF NOT EXISTS `users_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_permissions_myuser_id_permission_id_353eeebe_uniq` (`myuser_id`,`permission_id`),
  KEY `users_user_permissions_myuser_id_76381a64` (`myuser_id`),
  KEY `users_user_permissions_permission_id_6d08dcd2` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
