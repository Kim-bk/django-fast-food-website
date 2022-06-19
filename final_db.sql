-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 02:59 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_tbaccount`
--

CREATE TABLE `accounts_tbaccount` (
  `id_account` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add tb ac count', 7, 'add_tbaccount'),
(26, 'Can change tb ac count', 7, 'change_tbaccount'),
(27, 'Can delete tb ac count', 7, 'delete_tbaccount'),
(28, 'Can view tb ac count', 7, 'view_tbaccount'),
(29, 'Can add food', 8, 'add_food'),
(30, 'Can change food', 8, 'change_food'),
(31, 'Can delete food', 8, 'delete_food'),
(32, 'Can view food', 8, 'view_food'),
(33, 'Can add role', 9, 'add_role'),
(34, 'Can change role', 9, 'change_role'),
(35, 'Can delete role', 9, 'delete_role'),
(36, 'Can view role', 9, 'view_role'),
(37, 'Can add tb food', 10, 'add_tbfood'),
(38, 'Can change tb food', 10, 'change_tbfood'),
(39, 'Can delete tb food', 10, 'delete_tbfood'),
(40, 'Can view tb food', 10, 'view_tbfood'),
(41, 'Can add tb order', 11, 'add_tborder'),
(42, 'Can change tb order', 11, 'change_tborder'),
(43, 'Can delete tb order', 11, 'delete_tborder'),
(44, 'Can view tb order', 11, 'view_tborder'),
(45, 'Can add tb order detail', 12, 'add_tborderdetail'),
(46, 'Can change tb order detail', 12, 'change_tborderdetail'),
(47, 'Can delete tb order detail', 12, 'delete_tborderdetail'),
(48, 'Can view tb order detail', 12, 'view_tborderdetail'),
(49, 'Can add tb shipping address', 13, 'add_tbshippingaddress'),
(50, 'Can change tb shipping address', 13, 'change_tbshippingaddress'),
(51, 'Can delete tb shipping address', 13, 'delete_tbshippingaddress'),
(52, 'Can view tb shipping address', 13, 'view_tbshippingaddress'),
(53, 'Can add tb customer', 14, 'add_tbcustomer'),
(54, 'Can change tb customer', 14, 'change_tbcustomer'),
(55, 'Can delete tb customer', 14, 'delete_tbcustomer'),
(56, 'Can view tb customer', 14, 'view_tbcustomer'),
(57, 'Can add tb order', 15, 'add_tborder'),
(58, 'Can change tb order', 15, 'change_tborder'),
(59, 'Can delete tb order', 15, 'delete_tborder'),
(60, 'Can view tb order', 15, 'view_tborder'),
(61, 'Can add tb order detail', 16, 'add_tborderdetail'),
(62, 'Can change tb order detail', 16, 'change_tborderdetail'),
(63, 'Can delete tb order detail', 16, 'delete_tborderdetail'),
(64, 'Can view tb order detail', 16, 'view_tborderdetail');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$4pVKGt2MyeFA1I4j5UmgLY$W04YXMOfim97ZRJEp7aA/UuA2JmoBNTee/BUGLIbEtE=', '2022-06-19 12:38:13.049937', 1, 'kim', 'Kim', 'Nguyễn Hoàng', 'my-gmail@gmail.com', 1, 1, '2022-06-16 09:03:50.511287'),
(2, 'pbkdf2_sha256$320000$WYBocBBX1XkBOPy9LozZi5$iBbvipntgiZkgVbkrX3O0urNgdH+A47PxRChBe4nJu0=', '2022-06-19 12:02:13.518747', 0, 'trex', 'Kim', 'Nguyễn', 'nguyenhoangkim120201@gmail.com', 0, 1, '2022-06-19 11:32:22.146331'),
(3, 'pbkdf2_sha256$320000$JhNOR9cOlbjubLHjtmBH9j$ipkBU5L9u/OGc1NN/Fm3cxp5bkzY5fh14pb8h7lf5yw=', '2022-06-19 12:38:32.347628', 0, 'chung', 'Chung', 'Hà Tiến', 'chung@gmail.com', 0, 1, '2022-06-19 11:57:37.452173');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-06-18 23:50:25.671929', '1', '1', 1, '[{\"added\": {}}]', 11, 1),
(2, '2022-06-18 23:50:44.931611', '1', 'tbOrderDetail object (1)', 1, '[{\"added\": {}}]', 12, 1),
(3, '2022-06-18 23:51:14.900071', '1', '30 truong chinh', 1, '[{\"added\": {}}]', 13, 1),
(4, '2022-06-18 23:52:36.118630', '2', 'tbOrderDetail object (2)', 1, '[{\"added\": {}}]', 12, 1),
(5, '2022-06-18 23:53:16.913947', '2', '2', 1, '[{\"added\": {}}]', 11, 1),
(6, '2022-06-19 00:30:25.204720', '1', 'Nguyen Hoang Kim', 1, '[{\"added\": {}}]', 14, 1),
(7, '2022-06-19 00:32:35.886362', '1', 'Nguyen Hoang Kim', 1, '[{\"added\": {}}]', 11, 1),
(8, '2022-06-19 00:35:23.088297', '1', 'tbOrderDetail object (1)', 1, '[{\"added\": {}}]', 12, 1),
(9, '2022-06-19 00:35:42.019927', '2', 'tbOrderDetail object (2)', 1, '[{\"added\": {}}]', 12, 1),
(10, '2022-06-19 03:17:50.118689', '1', 'Nguyen Hoang Kim', 1, '[{\"added\": {}}]', 14, 1),
(11, '2022-06-19 03:17:59.896252', '1', '1', 1, '[{\"added\": {}}]', 11, 1),
(12, '2022-06-19 03:18:09.736034', '1', 'tbOrderDetail object (1)', 1, '[{\"added\": {}}]', 12, 1),
(13, '2022-06-19 03:18:17.655556', '2', 'tbOrderDetail object (2)', 1, '[{\"added\": {}}]', 12, 1),
(14, '2022-06-19 03:18:42.732781', '1', '1', 3, '', 11, 1),
(15, '2022-06-19 03:18:58.370096', '1', '1', 1, '[{\"added\": {}}]', 11, 1),
(16, '2022-06-19 03:43:31.971535', '2', 'tbOrderDetail object (2)', 2, '[{\"changed\": {\"fields\": [\"Order\"]}}]', 12, 1),
(17, '2022-06-19 03:43:37.869248', '1', 'tbOrderDetail object (1)', 2, '[{\"changed\": {\"fields\": [\"Order\"]}}]', 12, 1),
(18, '2022-06-19 03:43:40.802171', '1', 'tbOrderDetail object (1)', 2, '[]', 12, 1),
(19, '2022-06-19 03:43:43.460633', '2', 'tbOrderDetail object (2)', 2, '[]', 12, 1),
(20, '2022-06-19 03:47:17.178436', '1', 'tbOrderDetail object (1)', 2, '[{\"changed\": {\"fields\": [\"Food\"]}}]', 12, 1),
(21, '2022-06-19 04:22:18.989258', '26', 'tbFood object (26)', 2, '[]', 10, 1),
(22, '2022-06-19 04:23:56.151581', '1', 'tbFood object (1)', 2, '[{\"changed\": {\"fields\": [\"Price\", \"Old Price\"]}}]', 10, 1),
(23, '2022-06-19 04:24:06.089437', '2', 'tbFood object (2)', 2, '[{\"changed\": {\"fields\": [\"Price\", \"Old Price\"]}}]', 10, 1),
(24, '2022-06-19 04:24:58.122813', '8', 'tbFood object (8)', 2, '[{\"changed\": {\"fields\": [\"Price\", \"Old Price\"]}}]', 10, 1),
(25, '2022-06-19 04:25:20.851805', '1', 'tbFood object (1)', 2, '[{\"changed\": {\"fields\": [\"Old Price\"]}}]', 10, 1),
(26, '2022-06-19 04:25:28.694484', '1', 'tbFood object (1)', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 10, 1),
(27, '2022-06-19 04:31:11.650723', '2', 'tbFood object (2)', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 10, 1),
(28, '2022-06-19 09:33:01.119231', '1', 'Nguyen Hoang Kim', 1, '[{\"added\": {}}]', 14, 1),
(29, '2022-06-19 09:50:04.131633', '1', 'tbFood object (1)', 2, '[{\"changed\": {\"fields\": [\"Price\", \"Old Price\"]}}]', 10, 1),
(30, '2022-06-19 09:50:12.633506', '2', 'tbFood object (2)', 2, '[{\"changed\": {\"fields\": [\"Price\", \"Old Price\"]}}]', 10, 1),
(31, '2022-06-19 09:54:48.387570', '1', '1', 1, '[{\"added\": {}}]', 11, 1),
(32, '2022-06-19 09:55:37.139791', '1', 'tbOrderDetail object (1)', 1, '[{\"added\": {}}]', 12, 1),
(33, '2022-06-19 10:28:50.226580', '1', 'Nguyen Hoang Kim', 1, '[{\"added\": {}}]', 14, 1),
(34, '2022-06-19 10:31:09.679997', '1', 'K223 / 30 Truong Chinh', 2, '[]', 13, 1),
(35, '2022-06-19 12:37:26.607369', '6', '9 Thanh Khe', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 13, 1),
(36, '2022-06-19 12:37:40.089468', '6', '9 Thanh Khe', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 13, 1),
(37, '2022-06-19 12:38:20.055406', '6', '9 Thanh Khe', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'accounts', 'tbaccount'),
(15, 'accounts', 'tborder'),
(16, 'accounts', 'tborderdetail'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'loadimg', 'food'),
(9, 'loadimg', 'role'),
(14, 'loadimg', 'tbcustomer'),
(10, 'loadimg', 'tbfood'),
(11, 'loadimg', 'tborder'),
(12, 'loadimg', 'tborderdetail'),
(13, 'loadimg', 'tbshippingaddress'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2022-06-14 11:19:47.435635'),
(2, 'contenttypes', '0001_initial', '2022-06-14 11:19:47.546635'),
(3, 'auth', '0001_initial', '2022-06-14 11:19:48.133538'),
(4, 'admin', '0001_initial', '2022-06-14 11:19:48.292763'),
(5, 'admin', '0002_logentry_remove_auto_add', '2022-06-14 11:19:48.307801'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-14 11:19:48.325765'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-06-14 11:19:48.385771'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-06-14 11:19:48.452768'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-06-14 11:19:48.485765'),
(10, 'auth', '0004_alter_user_username_opts', '2022-06-14 11:19:48.500762'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-06-14 11:19:48.556783'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-06-14 11:19:48.564767'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-06-14 11:19:48.579764'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-06-14 11:19:48.609767'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-06-14 11:19:48.634763'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-06-14 11:19:48.713769'),
(17, 'auth', '0011_update_proxy_permissions', '2022-06-14 11:19:48.732770'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-06-14 11:19:48.825769'),
(19, 'loadimg', '0001_initial', '2022-06-14 11:19:48.891765'),
(20, 'loadimg', '0002_alter_food_image', '2022-06-14 11:19:48.953767'),
(21, 'sessions', '0001_initial', '2022-06-14 11:19:49.017768'),
(22, 'loadimg', '0003_initial', '2022-06-18 09:52:34.271812'),
(23, 'loadimg', '0004_initial', '2022-06-19 00:26:49.354556'),
(24, 'loadimg', '0005_initial', '2022-06-19 03:16:06.814054'),
(25, 'loadimg', '0006_alter_tbfood_old_price_alter_tbfood_price_and_more', '2022-06-19 03:52:25.739935'),
(26, 'loadimg', '0007_alter_tbfood_old_price_alter_tbfood_price_and_more', '2022-06-19 04:21:58.410883'),
(27, 'loadimg', '0008_alter_tborderdetail_quantity', '2022-06-19 04:30:12.469542'),
(28, 'loadimg', '0009_alter_tborderdetail_quantity', '2022-06-19 04:31:54.349628'),
(29, 'loadimg', '00011_initial', '2022-06-19 09:31:21.083958'),
(30, 'loadimg', '00012_initial', '2022-06-19 10:25:46.939433');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('rm0keo8jisziuq2wzk8ain2d0wz35cz3', '.eJxVjMsOwiAQRf-FtSFQRh4u3fcbyMAMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJE4mLMOL0uyXMD247oDu22yzz3NZlSnJX5EG7HGfi5_Vw_w4q9vqtUyGyxbEawAWFHgKEAMpRPhcVlEcDpN3gwRJ61qloNlkFZz2UZJDF-wPb3De5:1o2uCG:wMDPUT5BC_Zh7R10SoNJDVVC03BDM9B97JPdQhqcYXA', '2022-07-03 12:38:32.352636');

-- --------------------------------------------------------

--
-- Table structure for table `loadimg_tbcategory`
--

CREATE TABLE `loadimg_tbcategory` (
  `id_category` int(11) NOT NULL,
  `category_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loadimg_tbcategory`
--

INSERT INTO `loadimg_tbcategory` (`id_category`, `category_name`) VALUES
(1, 'Combo 1 Người'),
(2, 'Combo Nhóm'),
(3, 'Menu Ưu Đãi');

-- --------------------------------------------------------

--
-- Table structure for table `loadimg_tbfood`
--

CREATE TABLE `loadimg_tbfood` (
  `Id_Food` int(11) NOT NULL,
  `Id_Category` int(11) NOT NULL,
  `Food_Name` longtext NOT NULL,
  `Description` longtext NOT NULL,
  `Price` double NOT NULL,
  `Old_Price` double NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loadimg_tbfood`
--

INSERT INTO `loadimg_tbfood` (`Id_Food`, `Id_Category`, `Food_Name`, `Description`, `Price`, `Old_Price`, `Image`, `Quantity`) VALUES
(1, 1, 'COMBO GÀ RÁN A', '2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống\r\n1 Pepsi Lon', 77, 79, 'img/comboA.png', 100),
(2, 1, 'COMBO GÀ RÁN B', '1 Phần Hot Wings 3 Miếng/ 1 Khoai Tây Chiên (Lớn)/ 1 Pepsi Lon', 77, 79, 'img/comboB.jpg', 100),
(3, 1, 'COMBO GÀ RÁN C', '1 Miếng Gà Giòn Cay / 1 Miếng Gà Giòn Không Cay / 1 Miếng Gà Truyền Thống\r\n1 Burger Tôm\r\n1 Pepsi Lon', 83, 85, 'img/comboC.jpg', 100),
(4, 1, 'COMBO GÀ RÁN D', '1 Miếng Gà Giòn Cay / 1 Miếng Gà Giòn Không Cay / 1 Miếng Gà Truyền Thống\r\n1 Burger Gà Quay Flava / 1 Burger Zinger\r\n1 Pepsi Lon', 87, 89, 'img/comboD.jpg', 100),
(5, 1, 'COMBO CƠM B', '1 Cơm Gà Giòn Cay / 1 Cơm Gà Giòn Không Cay / 1 Cơm Gà Truyền Thống / 1 Cơm Phi-lê Gà Quay Flava / 1 Cơm Phi-lê Gà Quay Tiêu / 1 Cơm Phi-lê Gà Giòn / 1 Cơm Gà Xiên Que\r\n1 Miếng Gà Giòn Cay / 1 Miếng Gà Truyền Thống / 1 Miếng Gà Giòn Không Cay\r\n1 Pepsi Lon', 87, 89, 'img/combo_comB.jpg', 100),
(6, 1, 'COMBO CƠM C', '1 Cơm Gà Giòn Cay / 1 Cơm Gà Giòn Không Cay / 1 Cơm Gà Truyền Thống / 1 Cơm Phi-lê Gà Quay Flava / 1 Cơm Phi-lê Gà Quay Tiêu / 1 Cơm Phi-lê Gà Giòn / 1 Cơm Gà Xiên Que\r\n1 Burger Gà Quay Flava / 1 Burger Zinger\r\n1 Pepsi Lon', 92, 95, 'img/combo_comC.jpg', 100),
(7, 2, 'COMBO NHÓM A', '2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống\r\n1 Burger Tôm\r\n2 Pepsi Lon', 125, 129, 'img/combo_nA.jpg', 100),
(8, 2, 'COMBO NHÓM B', '3 Miếng Gà Giòn Cay / 3 Miếng Gà Giòn Không Cay / 3 Miếng Gà Truyền Thống\r\n1 Khoai Tây Chiên (Lớn)\r\n2 Pepsi Lon', 145, 149, 'img/combo_nB.jpg', 100),
(9, 2, 'COMBO NHÓM C', '4 Miếng Gà Giòn Cay / 4 Miếng Gà Giòn Không Cay / 4 Miếng Gà Truyền thống\r\n1 Khoai Tây Chiên (Lớn)\r\n2 Pepsi Lon', 180, 185, 'img/combo_nC.jpg', 100),
(10, 2, 'COMBO NHÓM D', '2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống\r\n1 Miếng Gà Quay Giấy Bạc / 1 Miếng Gà Quay Tiêu\r\n1 Khoai Tây Chiên (Lớn)\r\n2 Pepsi Lon', 180, 185, 'img/combo_nD.jpg', 100),
(11, 2, 'COMBO NHÓM E', '3 Miếng Gà Giòn Cay / 3 Miếng Gà Giòn Không Cay / 3 Miếng Gà Truyền Thống\r\n1 Burger Gà Quay Flava / 1 Burger Zinger\r\n1 Khoai Tây Chiên (Lớn)\r\n2 Pepsi Lon', 194, 199, 'img/combo_nE.jpg', 100),
(12, 2, 'COMBO NHÓM F', '3 Miếng Gà Giòn Cay / 3 Miếng Gà Giòn Không Cay / 3 Miếng Gà Truyền Thống\r\n1 Popcorn (Lớn)\r\n1 Khoai Tây Chiên (Lớn)\r\n2 Pepsi Lon', 199, 205, 'img/combo_nF.jpg', 100),
(13, 2, 'COMBO GIA ĐÌNH A', '8 Miếng Gà Giòn Cay / 8 Miếng Gà Giòn Không Cay / 8 Miếng Gà Truyền Thống\r\n2 Khoai Tây Chiên (Lớn)\r\n4 Pepsi Lon', 349, 359, 'img/combo_gdA.jpg', 100),
(14, 2, 'COMBO GIA ĐÌNH B', '5 Miếng Gà Giòn Cay / 5 Miếng Gà Giòn Không Cay / 5 Miếng Gà Truyền Thống\r\n2 Burger Gà Quay Flava / 2 Burger Zinger\r\n2 Khoai Tây Chiên (Lớn)\r\n3 Pepsi Lon', 349, 359, 'img/combo_gdB.jpg', 100),
(15, 3, 'Gà Rán(3 Miếng)', '3 Miếng Gà Truyền Thống / 3 Miếng Gà Giòn Không Cay / 3 Miếng Gà Giòn Cay', 66, 108, 'img/Ga_ran3.png', 100),
(16, 3, 'Gà Rán(4 Miếng)', '4 Miếng Gà Truyền Thống / 4 Miếng Gà Giòn Không Cay / 4 Miếng Gà Giòn Cay', 84, 144, 'img/Ga_ran4.png', 100),
(17, 3, 'XIÊN GÀ TENDERODS', '2 Xiên Gà Tenderods', 35, 36, 'img/xien_ga.jpg', 100),
(18, 3, 'COMBO TENDERODS HDA', '1 Cơm Xiên Gà Tenderods\r\n1 Pepsi Lon', 57, 59, 'img/combo_HDA.jpg', 100),
(19, 3, 'COMBO TENDERODS HDB', '2 Xiên Gà Tenderods\r\n1 Burger Tôm\r\n1 Pepsi Lon', 83, 85, 'img/combo_HDB.jpg', 100),
(20, 3, 'COMBO TENDERODS HDC', '2 Xiên Gà Tenderods\r\n2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay', 87, 89, 'img/combo_HDC.jpg', 100),
(21, 3, 'COMBO TENDERODS HDD', '3 Xiên Gà Tenderods\r\n4 Miếng Gà Giòn Cay / 4 Miếng Gà Giòn Không Cay', 155, 159, 'img/combo_HDD.jpg', 100),
(22, 3, 'COMBO ỔI HẠT CHIA HD', '1 Mocktail Ổi Hạt Chia\r\n2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống\r\n1 Khoai Tây Chiên (Vừa)', 87, 89, 'img/combo_HD.jpg', 100),
(23, 3, 'MOCKTAIL ỔI HẠT CHIA', '1 Mocktail Ổi Hạt Chia', 28, 29, 'img/mocktail_oi.jpg', 100),
(24, 3, 'COMBO THANH BÍ PHÔ-MAI HDA', '2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống\r\n2 Thanh Bí Phô-mai\r\n1 Pepsi Lon', 91, 94, 'img/combo_pmHDA.png', 100),
(25, 3, 'COMBO THANH BÍ PHÔ-MAI HDB', '2 Thanh Bí Phô-mai\r\n1 Pepsi Lon\r\n1 Burger Gà Quay Flava / 1 Burger Zinger / 1 Burger Tôm\r\n', 72, 79, 'img/combo_pmHDB.jpg', 100),
(26, 3, 'COMBO THANH BÍ PHÔ-MAI HDC', '4 Thanh Bí Phô-mai\r\n4 Miếng Gà Giòn Cay / 4 Miếng Gà Truyền thống / 4 Miếng Gà Giòn Không Cay\r\n2 Pepsi Lon', 184, 189, 'img/combo_pmHDC.jpg', 100);

-- --------------------------------------------------------

--
-- Table structure for table `loadimg_tborder`
--

CREATE TABLE `loadimg_tborder` (
  `id_order` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `date_ordered` datetime(6) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loadimg_tborder`
--

INSERT INTO `loadimg_tborder` (`id_order`, `id_customer`, `date_ordered`, `complete`, `transaction_id`) VALUES
(18, 3, '2022-06-19 12:33:15.491787', 1, '1655642195.093037'),
(19, 3, '2022-06-19 12:36:35.126041', 0, NULL),
(20, 1, '2022-06-19 12:37:47.824125', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loadimg_tborderdetail`
--

CREATE TABLE `loadimg_tborderdetail` (
  `id` bigint(20) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `food_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loadimg_tborderdetail`
--

INSERT INTO `loadimg_tborderdetail` (`id`, `date_added`, `quantity`, `food_id`, `order_id`) VALUES
(32, '2022-06-19 12:33:36.619650', 1, 8, 18),
(33, '2022-06-19 12:33:41.734841', 1, 20, 18),
(34, '2022-06-19 12:33:49.150787', 1, 6, 18);

-- --------------------------------------------------------

--
-- Table structure for table `loadimg_tbshippingaddress`
--

CREATE TABLE `loadimg_tbshippingaddress` (
  `id` bigint(20) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `phone_number` longtext DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `total` double DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loadimg_tbshippingaddress`
--

INSERT INTO `loadimg_tbshippingaddress` (`id`, `id_customer`, `address`, `city`, `status`, `date_added`, `phone_number`, `name`, `total`, `order_id`) VALUES
(6, 3, '9 Thanh Khe', 'Thành phố Đà Nẵng', 'Đã giao', '2022-06-19 12:36:35.118041', '+84935740126', 'Nguyen Hoang Kim', 324, 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_tbaccount`
--
ALTER TABLE `accounts_tbaccount`
  ADD PRIMARY KEY (`id_account`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `loadimg_tbcategory`
--
ALTER TABLE `loadimg_tbcategory`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `loadimg_tbfood`
--
ALTER TABLE `loadimg_tbfood`
  ADD PRIMARY KEY (`Id_Food`);

--
-- Indexes for table `loadimg_tborder`
--
ALTER TABLE `loadimg_tborder`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `loadimg_tborderdetail`
--
ALTER TABLE `loadimg_tborderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loadimg_tborderdetail_food_id_722abdeb_fk_loadimg_tbfood_Id_Food` (`food_id`),
  ADD KEY `loadimg_tborderdetai_order_id_6ac39326_fk_loadimg_t` (`order_id`);

--
-- Indexes for table `loadimg_tbshippingaddress`
--
ALTER TABLE `loadimg_tbshippingaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loadimg_tbshippingad_order_id_2bcd48e2_fk_loadimg_t` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_tbaccount`
--
ALTER TABLE `accounts_tbaccount`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `loadimg_tborder`
--
ALTER TABLE `loadimg_tborder`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `loadimg_tborderdetail`
--
ALTER TABLE `loadimg_tborderdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `loadimg_tbshippingaddress`
--
ALTER TABLE `loadimg_tbshippingaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `loadimg_tborderdetail`
--
ALTER TABLE `loadimg_tborderdetail`
  ADD CONSTRAINT `loadimg_tborderdetai_order_id_6ac39326_fk_loadimg_t` FOREIGN KEY (`order_id`) REFERENCES `loadimg_tborder` (`id_order`),
  ADD CONSTRAINT `loadimg_tborderdetail_food_id_722abdeb_fk_loadimg_tbfood_Id_Food` FOREIGN KEY (`food_id`) REFERENCES `loadimg_tbfood` (`Id_Food`);

--
-- Constraints for table `loadimg_tbshippingaddress`
--
ALTER TABLE `loadimg_tbshippingaddress`
  ADD CONSTRAINT `loadimg_tbshippingad_order_id_2bcd48e2_fk_loadimg_t` FOREIGN KEY (`order_id`) REFERENCES `loadimg_tborder` (`id_order`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
