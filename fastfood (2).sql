-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 19, 2022 lúc 12:08 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fastfood`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts_tborder`
--

CREATE TABLE `accounts_tborder` (
  `Id_Order` int(11) NOT NULL,
  `Id_Account` longtext NOT NULL,
  `Total_Bill` int(11) NOT NULL,
  `Order_Date` date NOT NULL,
  `Phone_Number` longtext NOT NULL,
  `Address` longtext NOT NULL,
  `Status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `accounts_tborder`
--

INSERT INTO `accounts_tborder` (`Id_Order`, `Id_Account`, `Total_Bill`, `Order_Date`, `Phone_Number`, `Address`, `Status`) VALUES
(1, '01', 500000, '2022-06-18', '0775587882', '56 Nguyễn Lương Bằng', 'Đã Giao'),
(2, '02', 330000, '2022-06-16', '1212121212', '30 Bế Văn Đàn', 'Đang Giao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts_tborderdetail`
--

CREATE TABLE `accounts_tborderdetail` (
  `Id_Order` int(11) NOT NULL,
  `Id_Food` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
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
(25, 'Can add food', 7, 'add_food'),
(26, 'Can change food', 7, 'change_food'),
(27, 'Can delete food', 7, 'delete_food'),
(28, 'Can view food', 7, 'view_food'),
(29, 'Can add role', 8, 'add_role'),
(30, 'Can change role', 8, 'change_role'),
(31, 'Can delete role', 8, 'delete_role'),
(32, 'Can view role', 8, 'view_role'),
(33, 'Can add tb food', 9, 'add_tbfood'),
(34, 'Can change tb food', 9, 'change_tbfood'),
(35, 'Can delete tb food', 9, 'delete_tbfood'),
(36, 'Can view tb food', 9, 'view_tbfood'),
(37, 'Can add tb order', 10, 'add_tborder'),
(38, 'Can change tb order', 10, 'change_tborder'),
(39, 'Can delete tb order', 10, 'delete_tborder'),
(40, 'Can view tb order', 10, 'view_tborder'),
(41, 'Can add tb order detail', 11, 'add_tborderdetail'),
(42, 'Can change tb order detail', 11, 'change_tborderdetail'),
(43, 'Can delete tb order detail', 11, 'delete_tborderdetail'),
(44, 'Can view tb order detail', 11, 'view_tborderdetail'),
(45, 'Can add tb order', 12, 'add_tborder'),
(46, 'Can change tb order', 12, 'change_tborder'),
(47, 'Can delete tb order', 12, 'delete_tborder'),
(48, 'Can view tb order', 12, 'view_tborder'),
(49, 'Can add tb shipping address', 13, 'add_tbshippingaddress'),
(50, 'Can change tb shipping address', 13, 'change_tbshippingaddress'),
(51, 'Can delete tb shipping address', 13, 'delete_tbshippingaddress'),
(52, 'Can view tb shipping address', 13, 'view_tbshippingaddress'),
(53, 'Can add tb order detail', 14, 'add_tborderdetail'),
(54, 'Can change tb order detail', 14, 'change_tborderdetail'),
(55, 'Can delete tb order detail', 14, 'delete_tborderdetail'),
(56, 'Can view tb order detail', 14, 'view_tborderdetail'),
(57, 'Can add tb customer', 15, 'add_tbcustomer'),
(58, 'Can change tb customer', 15, 'change_tbcustomer'),
(59, 'Can delete tb customer', 15, 'delete_tbcustomer'),
(60, 'Can view tb customer', 15, 'view_tbcustomer');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user`
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
-- Đang đổ dữ liệu cho bảng `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$wzqcbHOqYtdvbJmvXsboCh$CVW2ujdo7PJyPl53TQ+SwCJD3ugTzB2OaplYj14ldfk=', '2022-06-17 18:10:27.194732', 0, 'dat', 'Đinh', 'Đạt', 'datd789@gmail.com', 0, 1, '2022-06-17 15:36:21.355700'),
(2, 'pbkdf2_sha256$320000$EhP5pYeC0oQJHlqjwd2CeT$D3K1A4iIFweDZ017JTNLERCJATDRcXNeJluzBKbNQmM=', '2022-06-18 02:09:56.191353', 1, 'dat123', '', '', 'dat789@gmail.com', 1, 1, '2022-06-17 18:17:00.604728');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
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
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-06-17 18:55:22.512186', '2', 'tbOrder object (2)', 2, '[{\"changed\": {\"fields\": [\"Static\"]}}]', 10, 2),
(2, '2022-06-17 19:04:02.533476', '2', 'tbOrder object (2)', 2, '[{\"changed\": {\"fields\": [\"Static\"]}}]', 10, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(10, 'accounts', 'tborder'),
(11, 'accounts', 'tborderdetail'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'loadimg', 'food'),
(8, 'loadimg', 'role'),
(15, 'loadimg', 'tbcustomer'),
(9, 'loadimg', 'tbfood'),
(12, 'loadimg', 'tborder'),
(14, 'loadimg', 'tborderdetail'),
(13, 'loadimg', 'tbshippingaddress'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-06-15 02:27:31.865081'),
(2, 'auth', '0001_initial', '2022-06-15 02:27:42.277679'),
(3, 'admin', '0001_initial', '2022-06-15 02:27:44.232024'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-15 02:27:44.305979'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-15 02:27:44.352947'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-06-15 02:27:45.461744'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-06-15 02:27:46.172541'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-06-15 02:27:46.294140'),
(9, 'auth', '0004_alter_user_username_opts', '2022-06-15 02:27:46.341000'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-06-15 02:27:46.994284'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-06-15 02:27:47.072359'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-06-15 02:27:47.118369'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-06-15 02:27:47.283140'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-06-15 02:27:47.405748'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-06-15 02:27:47.537714'),
(16, 'auth', '0011_update_proxy_permissions', '2022-06-15 02:27:47.591714'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-06-15 02:27:47.723104'),
(18, 'loadimg', '0001_initial', '2022-06-15 02:27:48.195659'),
(19, 'loadimg', '0002_alter_food_image', '2022-06-15 02:27:49.558227'),
(20, 'sessions', '0001_initial', '2022-06-15 02:27:50.153360'),
(21, 'accounts', '0001_initial', '2022-06-17 18:33:44.044999'),
(22, 'accounts', '0002_alter_tborder_order_date_alter_tborder_total_bill', '2022-06-17 19:01:13.890566'),
(23, 'accounts', '0003_rename_static_tborder_status', '2022-06-18 09:37:00.921062');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('mtamdx8bls37pgau2wwncfa27bzsajt9', '.eJxVjEEOwiAQRe_C2hAoFqYu3fcMzcwwSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmqO6qE6dfjdCfkjZQbxjuVXNtazLTHpX9EGbHmuU5_Vw_w4ytvytvbMQQ0jcOQJEIRCLZFKfemO8Y3YOAgw-WhuJwZshEMrZBAYhA069P-zvOAI:1o2NuO:_-ytD5Yy-7g1QX_eqmO16hyZJlPeLPJPsYfskBcjG5I', '2022-07-02 02:09:56.815806');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loadimg_tbfood`
--

CREATE TABLE `loadimg_tbfood` (
  `Id_Food` int(11) NOT NULL,
  `Id_Category` int(11) NOT NULL,
  `Food_Name` longtext NOT NULL,
  `Description` longtext NOT NULL,
  `Price` float NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Old_Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loadimg_tbfood`
--

INSERT INTO `loadimg_tbfood` (`Id_Food`, `Id_Category`, `Food_Name`, `Description`, `Price`, `Image`, `Quantity`, `Old_Price`) VALUES
(1, 1, 'COMBO GÀ RÁN A', '2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống\r\n1 Pepsi Lon', 77, 'img/comboA.png', 100, 79),
(2, 1, 'COMBO GÀ RÁN B', '1 Phần Hot Wings 3 Miếng/ 1 Khoai Tây Chiên (Lớn)/ 1 Pepsi Lon', 77, 'img/comboB.jpg', 100, 79),
(3, 1, 'COMBO GÀ RÁN C', '1 Miếng Gà Giòn Cay / 1 Miếng Gà Giòn Không Cay / 1 Miếng Gà Truyền Thống\r\n1 Burger Tôm\r\n1 Pepsi Lon', 83, 'img/comboC.jpg', 100, 85),
(4, 1, 'COMBO GÀ RÁN D', '1 Miếng Gà Giòn Cay / 1 Miếng Gà Giòn Không Cay / 1 Miếng Gà Truyền Thống\r\n1 Burger Gà Quay Flava / 1 Burger Zinger\r\n1 Pepsi Lon', 87, 'img/comboD.jpg', 100, 89),
(5, 1, 'COMBO CƠM B', '1 Cơm Gà Giòn Cay / 1 Cơm Gà Giòn Không Cay / 1 Cơm Gà Truyền Thống / 1 Cơm Phi-lê Gà Quay Flava / 1 Cơm Phi-lê Gà Quay Tiêu / 1 Cơm Phi-lê Gà Giòn / 1 Cơm Gà Xiên Que\r\n1 Miếng Gà Giòn Cay / 1 Miếng Gà Truyền Thống / 1 Miếng Gà Giòn Không Cay\r\n1 Pepsi Lon', 87, 'img/combo_comB.jpg', 100, 89),
(6, 1, 'COMBO CƠM C', '1 Cơm Gà Giòn Cay / 1 Cơm Gà Giòn Không Cay / 1 Cơm Gà Truyền Thống / 1 Cơm Phi-lê Gà Quay Flava / 1 Cơm Phi-lê Gà Quay Tiêu / 1 Cơm Phi-lê Gà Giòn / 1 Cơm Gà Xiên Que\r\n1 Burger Gà Quay Flava / 1 Burger Zinger\r\n1 Pepsi Lon', 92, 'img/combo_comC.jpg', 100, 95),
(7, 2, 'COMBO NHÓM A', '2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống\r\n1 Burger Tôm\r\n2 Pepsi Lon', 125, 'img/combo_nA.jpg', 100, 129),
(8, 2, 'COMBO NHÓM B', '3 Miếng Gà Giòn Cay / 3 Miếng Gà Giòn Không Cay / 3 Miếng Gà Truyền Thống\r\n1 Khoai Tây Chiên (Lớn)\r\n2 Pepsi Lon', 145, 'img/combo_nB.jpg', 100, 149),
(9, 2, 'COMBO NHÓM C', '4 Miếng Gà Giòn Cay / 4 Miếng Gà Giòn Không Cay / 4 Miếng Gà Truyền thống\r\n1 Khoai Tây Chiên (Lớn)\r\n2 Pepsi Lon', 180, 'img/combo_nC.jpg', 100, 185),
(10, 2, 'COMBO NHÓM D', '2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống\r\n1 Miếng Gà Quay Giấy Bạc / 1 Miếng Gà Quay Tiêu\r\n1 Khoai Tây Chiên (Lớn)\r\n2 Pepsi Lon', 180, 'img/combo_nD.jpg', 100, 185),
(11, 2, 'COMBO NHÓM E', '3 Miếng Gà Giòn Cay / 3 Miếng Gà Giòn Không Cay / 3 Miếng Gà Truyền Thống\r\n1 Burger Gà Quay Flava / 1 Burger Zinger\r\n1 Khoai Tây Chiên (Lớn)\r\n2 Pepsi Lon', 194, 'img/combo_nE.jpg', 100, 199),
(12, 2, 'COMBO NHÓM F', '3 Miếng Gà Giòn Cay / 3 Miếng Gà Giòn Không Cay / 3 Miếng Gà Truyền Thống\r\n1 Popcorn (Lớn)\r\n1 Khoai Tây Chiên (Lớn)\r\n2 Pepsi Lon', 199, 'img/combo_nF.jpg', 100, 205),
(13, 2, 'COMBO GIA ĐÌNH A', '8 Miếng Gà Giòn Cay / 8 Miếng Gà Giòn Không Cay / 8 Miếng Gà Truyền Thống\r\n2 Khoai Tây Chiên (Lớn)\r\n4 Pepsi Lon', 349, 'img/combo_gdA.jpg', 100, 359),
(14, 2, 'COMBO GIA ĐÌNH B', '5 Miếng Gà Giòn Cay / 5 Miếng Gà Giòn Không Cay / 5 Miếng Gà Truyền Thống\r\n2 Burger Gà Quay Flava / 2 Burger Zinger\r\n2 Khoai Tây Chiên (Lớn)\r\n3 Pepsi Lon', 349, 'img/combo_gdB.jpg', 100, 359),
(15, 3, 'Gà Rán(3 Miếng)', '3 Miếng Gà Truyền Thống / 3 Miếng Gà Giòn Không Cay / 3 Miếng Gà Giòn Cay', 66, 'img/Ga_ran3.png', 100, 108),
(16, 3, 'Gà Rán(4 Miếng)', '4 Miếng Gà Truyền Thống / 4 Miếng Gà Giòn Không Cay / 4 Miếng Gà Giòn Cay', 84, 'img/Ga_ran4.png', 100, 144),
(17, 3, 'XIÊN GÀ TENDERODS', '2 Xiên Gà Tenderods', 35, 'img/xien_ga.jpg', 100, 36),
(18, 3, 'COMBO TENDERODS HDA', '1 Cơm Xiên Gà Tenderods\r\n1 Pepsi Lon', 57, 'img/combo_HDA.jpg', 100, 59),
(19, 3, 'COMBO TENDERODS HDB', '2 Xiên Gà Tenderods\r\n1 Burger Tôm\r\n1 Pepsi Lon', 83, 'img/combo_HDB.jpg', 100, 85),
(20, 3, 'COMBO TENDERODS HDC', '2 Xiên Gà Tenderods\r\n2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay', 87, 'img/combo_HDC.jpg', 100, 89),
(21, 3, 'COMBO TENDERODS HDD', '3 Xiên Gà Tenderods\r\n4 Miếng Gà Giòn Cay / 4 Miếng Gà Giòn Không Cay', 155, 'img/combo_HDD.jpg', 100, 159),
(22, 3, 'COMBO ỔI HẠT CHIA HD', '1 Mocktail Ổi Hạt Chia\r\n2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống\r\n1 Khoai Tây Chiên (Vừa)', 87, 'img/combo_HD.jpg', 100, 89),
(23, 3, 'MOCKTAIL ỔI HẠT CHIA', '1 Mocktail Ổi Hạt Chia', 28, 'img/mocktail_oi.jpg', 100, 29),
(24, 3, 'COMBO THANH BÍ PHÔ-MAI HDA', '2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống\r\n2 Thanh Bí Phô-mai\r\n1 Pepsi Lon', 91, 'img/combo_pmHDA.png', 100, 94),
(25, 3, 'COMBO THANH BÍ PHÔ-MAI HDB', '2 Thanh Bí Phô-mai\r\n1 Pepsi Lon\r\n1 Burger Gà Quay Flava / 1 Burger Zinger / 1 Burger Tôm\r\n', 72, 'img/combo_pmHDB.jpg', 100, 79),
(26, 3, 'COMBO THANH BÍ PHÔ-MAI HDC', '4 Thanh Bí Phô-mai\r\n4 Miếng Gà Giòn Cay / 4 Miếng Gà Truyền thống / 4 Miếng Gà Giòn Không Cay\r\n2 Pepsi Lon', 184000, 'img/combo_pmHDC.jpg', 100, 189000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts_tborder`
--
ALTER TABLE `accounts_tborder`
  ADD PRIMARY KEY (`Id_Order`);

--
-- Chỉ mục cho bảng `accounts_tborderdetail`
--
ALTER TABLE `accounts_tborderdetail`
  ADD PRIMARY KEY (`Id_Order`);

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `loadimg_tbfood`
--
ALTER TABLE `loadimg_tbfood`
  ADD PRIMARY KEY (`Id_Food`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
