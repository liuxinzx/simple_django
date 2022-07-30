-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.29 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 demo_django 的数据库结构
CREATE DATABASE IF NOT EXISTS `demo_django` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `demo_django`;

-- 导出  表 demo_django.auth_group 结构
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  demo_django.auth_group 的数据：~0 rows (大约)

-- 导出  表 demo_django.auth_group_permissions 结构
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  demo_django.auth_group_permissions 的数据：~0 rows (大约)

-- 导出  表 demo_django.auth_permission 结构
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  demo_django.auth_permission 的数据：~28 rows (大约)
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add student', 1, 'add_student'),
	(2, 'Can change student', 1, 'change_student'),
	(3, 'Can delete student', 1, 'delete_student'),
	(4, 'Can view student', 1, 'view_student'),
	(5, 'Can add log entry', 2, 'add_logentry'),
	(6, 'Can change log entry', 2, 'change_logentry'),
	(7, 'Can delete log entry', 2, 'delete_logentry'),
	(8, 'Can view log entry', 2, 'view_logentry'),
	(9, 'Can add permission', 3, 'add_permission'),
	(10, 'Can change permission', 3, 'change_permission'),
	(11, 'Can delete permission', 3, 'delete_permission'),
	(12, 'Can view permission', 3, 'view_permission'),
	(13, 'Can add group', 4, 'add_group'),
	(14, 'Can change group', 4, 'change_group'),
	(15, 'Can delete group', 4, 'delete_group'),
	(16, 'Can view group', 4, 'view_group'),
	(17, 'Can add user', 5, 'add_user'),
	(18, 'Can change user', 5, 'change_user'),
	(19, 'Can delete user', 5, 'delete_user'),
	(20, 'Can view user', 5, 'view_user'),
	(21, 'Can add content type', 6, 'add_contenttype'),
	(22, 'Can change content type', 6, 'change_contenttype'),
	(23, 'Can delete content type', 6, 'delete_contenttype'),
	(24, 'Can view content type', 6, 'view_contenttype'),
	(25, 'Can add session', 7, 'add_session'),
	(26, 'Can change session', 7, 'change_session'),
	(27, 'Can delete session', 7, 'delete_session'),
	(28, 'Can view session', 7, 'view_session');

-- 导出  表 demo_django.auth_user 结构
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  demo_django.auth_user 的数据：~0 rows (大约)
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$320000$6fT6pWAPicAttRHwDuDV7W$2isr8OyRajGKLLtxH9IbGvSlU77nvAP6fHiwwrc3Dwc=', '2022-07-30 01:27:59.929599', 1, 'admin', '', '', '', 1, 1, '2022-07-30 01:09:15.830836'),
	(2, 'pbkdf2_sha256$320000$BlmBCMe67sFzPUPj0jj6NS$InWeQ+uK3SyoIuJHz7matksomgySNV0PUVBCL8xLtqU=', '2022-07-30 01:19:53.275934', 0, 'demo', '', '', '', 1, 1, '2022-07-30 01:17:00.000000');

-- 导出  表 demo_django.auth_user_groups 结构
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  demo_django.auth_user_groups 的数据：~0 rows (大约)

-- 导出  表 demo_django.auth_user_user_permissions 结构
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  demo_django.auth_user_user_permissions 的数据：~0 rows (大约)
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
	(1, 2, 4);

-- 导出  表 demo_django.django_admin_log 结构
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  demo_django.django_admin_log 的数据：~0 rows (大约)
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2022-07-30 01:11:39.398932', '1', 'Student object (1)', 1, '[{"added": {}}]', 1, 1),
	(2, '2022-07-30 01:12:22.780184', '1', 'Student object (1)', 2, '[]', 1, 1),
	(3, '2022-07-30 01:17:16.476362', '2', 'demo', 1, '[{"added": {}}]', 5, 1),
	(4, '2022-07-30 01:19:21.330011', '2', 'demo', 2, '[{"changed": {"fields": ["Staff status", "User permissions"]}}]', 5, 1),
	(5, '2022-07-30 01:28:30.144436', '1', '123-辉就拉', 2, '[{"changed": {"fields": ["\\u59d3\\u540d"]}}]', 1, 1);

-- 导出  表 demo_django.django_content_type 结构
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  demo_django.django_content_type 的数据：~7 rows (大约)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(2, 'admin', 'logentry'),
	(4, 'auth', 'group'),
	(3, 'auth', 'permission'),
	(5, 'auth', 'user'),
	(6, 'contenttypes', 'contenttype'),
	(7, 'sessions', 'session'),
	(1, 'student', 'student');

-- 导出  表 demo_django.django_migrations 结构
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  demo_django.django_migrations 的数据：~19 rows (大约)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2022-07-30 01:07:03.982743'),
	(2, 'auth', '0001_initial', '2022-07-30 01:07:04.287749'),
	(3, 'admin', '0001_initial', '2022-07-30 01:07:04.366098'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2022-07-30 01:07:04.373103'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-07-30 01:07:04.379104'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2022-07-30 01:07:04.425347'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2022-07-30 01:07:04.459860'),
	(8, 'auth', '0003_alter_user_email_max_length', '2022-07-30 01:07:04.498443'),
	(9, 'auth', '0004_alter_user_username_opts', '2022-07-30 01:07:04.504443'),
	(10, 'auth', '0005_alter_user_last_login_null', '2022-07-30 01:07:04.536859'),
	(11, 'auth', '0006_require_contenttypes_0002', '2022-07-30 01:07:04.545097'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2022-07-30 01:07:04.554100'),
	(13, 'auth', '0008_alter_user_username_max_length', '2022-07-30 01:07:04.607843'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2022-07-30 01:07:04.644679'),
	(15, 'auth', '0010_alter_group_name_max_length', '2022-07-30 01:07:04.679962'),
	(16, 'auth', '0011_update_proxy_permissions', '2022-07-30 01:07:04.685964'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2022-07-30 01:07:04.721880'),
	(18, 'sessions', '0001_initial', '2022-07-30 01:07:04.744287'),
	(19, 'student', '0001_initial', '2022-07-30 01:07:04.759201'),
	(20, 'student', '0002_alter_student_table', '2022-07-30 01:23:31.246628');

-- 导出  表 demo_django.django_session 结构
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  demo_django.django_session 的数据：~0 rows (大约)
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('j2885hy3s5kwwds27sixqr7ptct4dg42', '.eJxVjMEOwiAQRP-FsyHAAtt49O43kAW2UjWQlPZk_Hcl6UGPM-_NvESgfSth77yGJYuz0OL020VKD64D5DvVW5Op1W1dohyKPGiX15b5eTncv4NCvXzXPiHArJ13yihCrwEiamRmq20mBDLJAOSIbM2kXELlZ5owuxERxPsDt502ow:1oHbGp:gBsJRFwwBEKXTrtpFJWejJAzQkaWy8p7eUAQxgE51is', '2022-08-13 01:27:59.932599');

-- 导出  表 demo_django.students 结构
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `number` varchar(20) NOT NULL,
  `name` varchar(35) NOT NULL,
  `age` int NOT NULL,
  `chi` double NOT NULL,
  `math` double NOT NULL,
  `enf` double NOT NULL,
  `describe` longtext NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  demo_django.students 的数据：~0 rows (大约)
INSERT INTO `students` (`id`, `number`, `name`, `age`, `chi`, `math`, `enf`, `describe`, `date`) VALUES
	(1, '123', '辉就拉', 18, 85, 98, 95, 'good', '2022-07-30');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
