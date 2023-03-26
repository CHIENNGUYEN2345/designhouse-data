-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2023 at 10:44 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apiecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_orders`
--

CREATE TABLE `cart_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `delivery_address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `delivery_charge` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_time` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_orders`
--

INSERT INTO `cart_orders` (`id`, `invoice_no`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `email`, `name`, `payment_method`, `delivery_address`, `city`, `delivery_charge`, `order_date`, `order_time`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 'easyshop1677000501164', 'OPPO Reno8T 5G 1', '56581101', 'Size: 3', 'Color: Aqua blue', '4', '2900', '11600', 'chien@mail.com', 'Rose', 'Cash On Delivery', 'Korea', 'Dhaka', '00', '22-02-2023', '12:28:21am', 'Pending...', NULL, NULL),
(2, 'easyshop1677000501164', 'OPPO Reno8T 5G 1', '56581101', 'Size: 3', 'Color: Aqua blue', '3', '2900', '8700', 'chien@mail.com', 'Rose', 'Cash On Delivery', 'Korea', 'Dhaka', '00', '22-02-2023', '12:28:21am', 'Pending...', NULL, NULL),
(3, 'easyshop1677000501164', 'OPPO Reno8T 5G 1', '56581101', 'Size: 5', 'Color: Midnight', '1', '2900', '2900', 'chien@mail.com', 'Rose', 'Cash On Delivery', 'Korea', 'Dhaka', '00', '22-02-2023', '12:28:21am', 'Pending...', NULL, NULL),
(4, 'easyshop1677038141841', 'iPhone 14 Pro (Purple, 128 GB)', '11925000', 'Size: 6.1', 'Color: Blue', '01', '9999', '9999', 'chien@mail.com', 'chi', 'Cash On Delivery', 'binh duong', 'Dhaka', '00', '22-02-2023', '10:55:42am', 'Pending...', NULL, NULL),
(5, 'easyshop1679675713810', 'REDMI 10 (Caribbean Green, 64 GB)', '7740216', 'Size: 6.58 inch', 'Color: Green', '2', '189', '378', 'chien@mail.com', 'Bin', 'Cash On Delivery', 'District 1', 'HoChiMinhCITY', '00', '24-03-2023', '11:35:14pm', 'Pending...', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Mobiles', 'http://127.0.0.1:8000/upload/category/1759000313201798.png', NULL, '2023-02-27 08:57:01'),
(2, 'Computer', 'http://127.0.0.1:8000/upload/category/1758986678904744.png', NULL, '2023-02-27 05:20:18'),
(3, 'Electronics', 'http://127.0.0.1:8000/upload/category/1758986709230926.png', NULL, '2023-02-27 05:20:47'),
(4, 'TV & Appliances', 'http://127.0.0.1:8000/upload/category/1758986693856267.png', NULL, '2023-02-27 05:20:32'),
(5, 'Fashion', 'http://127.0.0.1:8000/upload/category/1758986507020771.png', NULL, '2023-02-27 05:17:34'),
(6, 'Baby & kids', 'http://127.0.0.1:8000/upload/category/1758986495155700.png', NULL, '2023-02-27 05:17:23'),
(7, 'Home & Funiture', 'http://127.0.0.1:8000/upload/category/1758986480706108.png', NULL, '2023-02-27 05:17:09'),
(8, 'Sports & Books', 'http://127.0.0.1:8000/upload/category/1758986563250546.png', NULL, '2023-02-27 05:18:28'),
(9, 'Motorbike', 'http://127.0.0.1:8000/upload/category/1758986577705211.png', NULL, '2023-02-27 05:18:42'),
(10, 'Hot topic', 'http://127.0.0.1:8000/upload/category/1759000243759059.png', NULL, '2023-02-27 08:55:55'),
(11, 'Trend', 'http://127.0.0.1:8000/upload/category/1759000299688465.png', NULL, '2023-02-27 08:56:48'),
(13, 'True', 'http://127.0.0.1:8000/upload/category/1759006335081055.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `contact_date` varchar(255) NOT NULL,
  `contact_time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `contact_date`, `contact_time`, `created_at`, `updated_at`) VALUES
(1, 'CHIEN', 'chien@mail.com', 'my test message', '13-02-2023', '04:42:34pm', NULL, NULL),
(2, 'mani', 'mani@mail.com', 'ddddddd', '13-02-2023', '05:17:18pm', NULL, NULL),
(3, 'udemy', 'udemy@mail.com', 'ssss', '13-02-2023', '05:22:51pm', NULL, NULL),
(4, 'ata', 'ata@mail.com', 'ffffffff', '13-02-2023', '05:26:51pm', NULL, NULL),
(5, 'ata', 'ata@mail.com', 'ffffffff', '13-02-2023', '05:27:34pm', NULL, NULL),
(6, 'hitabaru', 'hitabaru@mail.com', 'message', '13-02-2023', '05:42:17pm', NULL, NULL),
(7, 'chiyu', 'chiyu@mail.com', 'new mess', '14-02-2023', '05:25:37pm', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `product_name`, `image`, `product_code`, `email`, `created_at`, `updated_at`) VALUES
(6, 'Infinix Hot 12 (Polar Black)', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/v/9/3/-original-imagh4bbs7q2gabh.jpeg?q=70', '14481520', 'chien@mail.com', NULL, NULL),
(7, 'Iphone 13 Gold', 'https://rukminim1.flixcart.com/image/416/416/kg8avm80/mobile/g/n/w/apple-iphone-12-pro-max-dummyapplefsn-original-imafwgcyauknkgwh.jpeg?q=70', '46865390', 'chien@mail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 'http://localhost:8000/storage/slider1.jpg', NULL, NULL),
(2, 'http://localhost:8000/storage/slider2.jpg', NULL, NULL),
(3, 'http://localhost:8000/storage/slider3.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_03_094546_create_sessions_table', 1),
(7, '2023_02_03_163332_create_visitors_table', 2),
(8, '2023_02_03_184427_create_categories_table', 3),
(9, '2023_02_03_184700_create_subcategories_table', 4),
(10, '2023_02_03_184944_create_subcategories_table', 5),
(11, '2023_02_06_150700_create_product_lists_table', 6),
(12, '2023_02_06_152501_add_star_to_product_lists_table', 7),
(13, '2023_02_08_083814_create_home_sliders_table', 8),
(14, '2023_02_08_182228_create_product_details_table', 9),
(15, '2023_02_08_182748_create_product_details_table', 10),
(16, '2023_02_13_092754_create_contacts_table', 11),
(17, '2023_02_14_185442_create_site_infos_table', 12),
(18, '2023_02_15_084042_create_notifications_table', 13),
(19, '2016_06_01_000001_create_oauth_auth_codes_table', 14),
(20, '2016_06_01_000002_create_oauth_access_tokens_table', 14),
(21, '2016_06_01_000003_create_oauth_refresh_tokens_table', 14),
(22, '2016_06_01_000004_create_oauth_clients_table', 14),
(23, '2016_06_01_000005_create_oauth_personal_access_clients_table', 14),
(24, '2023_02_17_104722_create_product_reviews_table', 15),
(25, '2023_02_17_132242_create_product_carts_table', 16),
(26, '2023_02_19_163325_create_favourites_table', 17),
(27, '2023_02_21_150248_create_cart_orders_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Message 1', 'Message 1 - Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '11/05/2021', NULL, NULL),
(2, 'Message 2', 'Message 2 - Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '11/06/2022', NULL, NULL),
(3, 'Message 3', 'Message 3 - Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '11/07/2023', NULL, NULL),
(4, 'Message 4', 'Message 4 - Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '10/05/2020', NULL, NULL),
(5, 'Message 5', 'Message 5 - Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '11/11/2022', NULL, NULL),
(6, 'Message 6', 'Message 6 - Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '11/02/2019', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0fc4d67fba9f2ecc7e98fd0171ff3d92db0bf8f8e0b7b614979aa511413793782d3914a9396c083d', 1, 1, 'app', '[]', 0, '2023-02-27 08:47:43', '2023-02-27 08:47:43', '2024-02-27 15:47:43'),
('16320dca3fadd61baa395a50fc98c04d8ec5e39f0ef6ea6174c60b06411bf6399be016ccda3a92ea', 2, 1, 'app', '[]', 0, '2023-02-16 02:53:03', '2023-02-16 02:53:03', '2024-02-16 09:53:03'),
('16cd12262a7999a9e7fa4a95a90fcad2dd80b8cb0a78113b452b378e5491453e1d627d4c5372fd94', 2, 1, 'app', '[]', 0, '2023-02-16 01:43:46', '2023-02-16 01:43:46', '2024-02-16 08:43:46'),
('18613e1cf406f66c08d2291f2b7e0f126a3a2089209d6d60de2b08e62b1d65547b8000cf179bdb4d', 2, 1, 'app', '[]', 0, '2023-02-23 08:57:26', '2023-02-23 08:57:26', '2024-02-23 15:57:26'),
('26161f986e020c780fdef27ee877081a2b2d7d6a0b984dbfe275ff2e5244243625ce1d2ee811b33a', 3, 1, 'app', '[]', 0, '2023-02-15 21:27:37', '2023-02-15 21:27:37', '2024-02-16 04:27:37'),
('2a63a05bec707f854a3ab6b298effd392dbf11689d4602597855a0a720927611021bfb20ebb62b51', 1, 1, 'app', '[]', 0, '2023-02-15 20:41:02', '2023-02-15 20:41:02', '2024-02-16 03:41:02'),
('2ddebc3f03e8cdc8299d111cec8ccee514c0a2626b98889a39919e2524f713b0f2c8ecb7a0ea963d', 5, 1, 'app', '[]', 0, '2023-02-16 02:52:34', '2023-02-16 02:52:34', '2024-02-16 09:52:34'),
('3046fd20cb8dba00a61850f14f8bbb0f46649d26189078309db8c448594d62d2a1d17556fc80a03b', 1, 1, 'app', '[]', 0, '2023-02-21 10:59:14', '2023-02-21 10:59:14', '2024-02-21 17:59:14'),
('54b23fb9771cced86c575cd15625ee1a791ddb2a53b3dab2b2192b017cea88e492ea41ec18f8bb09', 3, 1, 'app', '[]', 0, '2023-02-15 21:45:39', '2023-02-15 21:45:39', '2024-02-16 04:45:39'),
('5afb1516d0ced93537ab15948070f8e62979f8aaa3b1c9073008cbdbb913fdf7ca2256898469fab0', 1, 1, 'app', '[]', 0, '2023-02-24 09:48:21', '2023-02-24 09:48:21', '2024-02-24 16:48:21'),
('6418665de8a0199a9d4bcb170fc601dca9e5a3b0608768d5731d76d3957d083303d367c9768e0369', 2, 1, 'app', '[]', 0, '2023-02-15 20:45:42', '2023-02-15 20:45:42', '2024-02-16 03:45:42'),
('6db16cbed0b674b6bc4bd34d16274b698b9c350ad6f8872d28f5136feaf496c604c899878a4cae0f', 1, 1, 'app', '[]', 0, '2023-02-15 23:57:11', '2023-02-15 23:57:11', '2024-02-16 06:57:11'),
('760e682f47c9b6518d81513fb95d7b120a0d76739b8b9a45f23ac145e0320bf009e7141035dbfaa8', 3, 1, 'app', '[]', 0, '2023-02-15 20:47:06', '2023-02-15 20:47:06', '2024-02-16 03:47:06'),
('78fe2aa0cbeceb1d6fc0253e6e92e6c4da72d513001b3eef367099c9d50864081719ca6340c5553d', 1, 1, 'app', '[]', 0, '2023-02-18 08:23:04', '2023-02-18 08:23:04', '2024-02-18 15:23:04'),
('82234f21a2bde71c5c06724b9f1b223305f9ed9081d46a672f404a082ed34d676e78adcaa4f7c1f7', 4, 1, 'app', '[]', 0, '2023-02-16 09:51:56', '2023-02-16 09:51:56', '2024-02-16 16:51:56'),
('8a032795e78a7d68a3fe34320600327b4d946984b013044e67f436d421417dbebdb7ab100d8dab82', 4, 1, 'app', '[]', 0, '2023-02-16 00:45:47', '2023-02-16 00:45:47', '2024-02-16 07:45:47'),
('8ab1ec6f3e0418bfa0adb51baf5448b314724a532e2c683bb4f6e65f73ad4b2b64c47a6a0fecaf16', 2, 1, 'app', '[]', 0, '2023-02-16 00:20:56', '2023-02-16 00:20:56', '2024-02-16 07:20:56'),
('8d71f04c122d422d8ad94b53b323d790fdfb7c7aa4c2853cb6a83610c09af142731b19c58227df48', 1, 1, 'app', '[]', 0, '2023-02-16 00:21:33', '2023-02-16 00:21:33', '2024-02-16 07:21:33'),
('8f8c898d7f45505cbcbc6eb54b70bddada7035a5e18e17294196f84d0426497ac653943b04e5fc82', 1, 1, 'app', '[]', 0, '2023-02-16 00:04:35', '2023-02-16 00:04:35', '2024-02-16 07:04:35'),
('9f472bd9cc1aa88eb2359c5dea6326aadc1dbc75d0cc3b6c7dbd34b94f32534c6406bfde3f903f50', 1, 1, 'app', '[]', 0, '2023-02-15 22:07:32', '2023-02-15 22:07:32', '2024-02-16 05:07:32'),
('a539585a278444ad6c9f558cfabb55dd607b3a0ee7e3f2a15c5146b5c9ae60060b2c99b7a867ee73', 2, 1, 'app', '[]', 0, '2023-02-16 00:59:32', '2023-02-16 00:59:32', '2024-02-16 07:59:32'),
('aa6418d5ec07b85221aef3543175235543465682fbf1568a955c2b3e1525701e3354f0719e2056df', 1, 1, 'app', '[]', 0, '2023-02-15 22:14:40', '2023-02-15 22:14:40', '2024-02-16 05:14:40'),
('b303002b214c69936ba3f093e122e49de52c502b4ce215d41a8620f82920d1eb0f0b2068cfc23365', 5, 1, 'app', '[]', 0, '2023-02-16 01:13:19', '2023-02-16 01:13:19', '2024-02-16 08:13:19'),
('b5849ea6ff3827a3a78312ca162a7821836bca52b5b8d84ef2f88b0e8c8bb5b3294b8555b35926cf', 1, 1, 'app', '[]', 0, '2023-02-18 10:24:35', '2023-02-18 10:24:35', '2024-02-18 17:24:35'),
('c4a2a712d16394ea2293fdbff50061abafbcf8e4af8c41ac69852e99dff8477ade477444d7fcd647', 2, 1, 'app', '[]', 0, '2023-02-27 08:46:56', '2023-02-27 08:46:56', '2024-02-27 15:46:56'),
('ce1445dd21015a8d0312c1316aa1491507b5006740f61d4743655b4f2b2e3c5ab83bc40a730d0844', 1, 1, 'app', '[]', 0, '2023-02-16 09:49:45', '2023-02-16 09:49:45', '2024-02-16 16:49:45'),
('d84e7de3a34c44a80ff0163d37f2fa65f73391aa8addfe7dd7d85d38c329715d5cde7b63ffd28499', 1, 1, 'app', '[]', 0, '2023-02-23 08:55:55', '2023-02-23 08:55:55', '2024-02-23 15:55:55'),
('e096b9ca56c6a6f82f2f30024fc7de93cdad17d149d865617ca497f8b9632399b4f699d78cd04130', 4, 1, 'app', '[]', 0, '2023-02-16 00:44:29', '2023-02-16 00:44:29', '2024-02-16 07:44:29'),
('e3a362d16b4190c5119727dde262b4af4160987d984a0f96eff16f3ecb0b03a5b10d966b86eb8d80', 1, 1, 'app', '[]', 0, '2023-02-19 11:15:15', '2023-02-19 11:15:15', '2024-02-19 18:15:15'),
('eabcc3cecaea086230881751c35b6b17358be1ceedea8e535232378de1a518e38d0bb9e3c462b358', 5, 1, 'app', '[]', 0, '2023-02-16 02:59:23', '2023-02-16 02:59:23', '2024-02-16 09:59:23'),
('f30541147c0f73ad2dd5130d2a7df65d837b44022f49000f5d30f42c341122f4dc96f0f3f231dee9', 1, 1, 'app', '[]', 0, '2023-02-23 02:02:25', '2023-02-23 02:02:25', '2024-02-23 09:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '2jtCmXI7NUYYwijUe0AOGCT58HeELdttmbOi5jDs', NULL, 'http://localhost', 1, 0, 0, '2023-02-15 09:28:40', '2023-02-15 09:28:40'),
(2, NULL, 'Laravel Password Grant Client', 'dgURyj2vVyp1s4xnelAfRr3688tSE3YNu5gGjWYH', 'users', 'http://localhost', 0, 1, 0, '2023-02-15 09:28:40', '2023-02-15 09:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-02-15 09:28:40', '2023-02-15 09:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(5, 'feb@mail.com', '18729', NULL),
(6, 'feb@mail.com', '12138', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` varchar(255) NOT NULL,
  `image_two` varchar(255) NOT NULL,
  `image_three` varchar(255) NOT NULL,
  `image_four` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `long_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `image_one`, `image_two`, `image_three`, `image_four`, `short_description`, `color`, `size`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 2, 'https://rukminim1.flixcart.com/image/416/416/l44hyfk0/mobile/3/q/4/-original-imagf2xb8aag2neb.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l45xea80/mobile/6/d/f/-original-imagf4fmxnwrq4tw.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l44hyfk0/mobile/t/t/n/-original-imagf2xbzumvpgpp.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/o/w/c/-original-imagg3znhfqchfuh.jpeg?q=70', 'In the first place we have granted to God, and by this our present charter confirmed for us and our heirs forever that the English Church shall be free, and shall have her rights entire, and her liberties inviolate; and we will that it be thus observed; w', 'Ocean,Midnight', '5', 'In the first place we have granted to God, and by this our present charter confirmed for us and our heirs forever that the English Church shall be free, and shall have her rights entire, and her liberties inviolate; and we will that it be thus observed; which is apparent from this that the freedom of elections, which is reckoned most important and very essential to the English Church, we, of our pure and unconstrained will, did grant, and did by our charter confirm and did obtain the ratification of the same from our lord, Pope Innocent III, before the quarrel arose between us and our barons: and this we will observe, and our will is that it be observed in good faith by our heirs forever. We have also granted to all freemen of our kingdom, for us and our heirs forever, all the underwritten liberties, to be had and held by them and their heirs, of us and our heirs forever.\r\n\r\nFog everywhere. Fog up the river, where it flows among green aits and meadows; fog down the river, where it rolls deified among the tiers of shipping and the waterside pollutions of a great (and dirty) city. Fog on the Essex marshes, fog on the Kentish heights. Fog creeping into the cabooses of collier-brigs; fog lying out on the yards and hovering in the rigging of great ships; fog drooping on the gunwales of barges and small boats. Fog in the eyes and throats of ancient Greenwich pensioners, wheezing by the firesides of their wards; fog in the stem and bowl of the afternoon pipe of the wrathful skipper, down in his close cabin; fog cruelly pinching the toes and fingers of his shivering little apprentice boy on deck. Chance people on the bridges peeping over the parapets into a nether sky of fog, with fog all round them, as if they were up in a balloon and hanging in the misty clouds.', NULL, NULL),
(2, 14, 'https://rukminim1.flixcart.com/image/416/416/l0vbukw0/mobile/w/9/t/galaxy-s21-fe-5g-sm-g990elgiinu-samsung-original-imagck5vs7k3ag5t.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l0vbukw0/mobile/n/b/s/galaxy-s21-fe-5g-sm-g990elgiinu-samsung-original-imagck5vtt5hejbw.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kzpw2vk0/mobile/h/n/5/galaxy-s21-fe-5g-lavender-8gb-128gb-storage-sm-g990elviinu-original-imagbnbdj2hmrbyq.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kz7bcsw0/screen-guard/front-and-back-screen-guard/o/p/j/rr44-twenteesky-original-imagb9dh2hm4fzhw.jpeg?q=70', 'In the first place we have granted to God, and by this our present charter confirmed for us and our heirs forever that the English Church shall be free, and shall have her rights entire, and her liberties inviolate; and we will that it be thus observed; w', 'Olive', '4', 'In the first place we have granted to God, and by this our present charter confirmed for us and our heirs forever that the English Church shall be free, and shall have her rights entire, and her liberties inviolate; and we will that it be thus observed; which is apparent from this that the freedom of elections, which is reckoned most important and very essential to the English Church, we, of our pure and unconstrained will, did grant, and did by our charter confirm and did obtain the ratification of the same from our lord, Pope Innocent III, before the quarrel arose between us and our barons: and this we will observe, and our will is that it be observed in good faith by our heirs forever. We have also granted to all freemen of our kingdom, for us and our heirs forever, all the underwritten liberties, to be had and held by them and their heirs, of us and our heirs forever.\r\n\r\nFog everywhere. Fog up the river, where it flows among green aits and meadows; fog down the river, where it rolls deified among the tiers of shipping and the waterside pollutions of a great (and dirty) city. Fog on the Essex marshes, fog on the Kentish heights. Fog creeping into the cabooses of collier-brigs; fog lying out on the yards and hovering in the rigging of great ships; fog drooping on the gunwales of barges and small boats. Fog in the eyes and throats of ancient Greenwich pensioners, wheezing by the firesides of their wards; fog in the stem and bowl of the afternoon pipe of the wrathful skipper, down in his close cabin; fog cruelly pinching the toes and fingers of his shivering little apprentice boy on deck. Chance people on the bridges peeping over the parapets into a nether sky of fog, with fog all round them, as if they were up in a balloon and hanging in the misty clouds.', NULL, NULL),
(3, 12, 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/o/x/k/-original-imaghuf9ybdrhhsy.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/o/x/k/-original-imaghuf9ybdrhhsy.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/b/7/8/-original-imaghuf9udupqpgt.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/z/r/d/-original-imaghuf9ebsgyggk.jpeg?q=70', 'In the first place we have granted to God, and by this our present charter confirmed for us and our heirs forever that the English Church shall be free, and shall have her rights entire, and her liberties inviolate; and we will that it be thus observed; w', 'Aqua blue', '3', 'In the first place we have granted to God, and by this our present charter confirmed for us and our heirs forever that the English Church shall be free, and shall have her rights entire, and her liberties inviolate; and we will that it be thus observed; which is apparent from this that the freedom of elections, which is reckoned most important and very essential to the English Church, we, of our pure and unconstrained will, did grant, and did by our charter confirm and did obtain the ratification of the same from our lord, Pope Innocent III, before the quarrel arose between us and our barons: and this we will observe, and our will is that it be observed in good faith by our heirs forever. We have also granted to all freemen of our kingdom, for us and our heirs forever, all the underwritten liberties, to be had and held by them and their heirs, of us and our heirs forever.\r\n\r\nFog everywhere. Fog up the river, where it flows among green aits and meadows; fog down the river, where it rolls deified among the tiers of shipping and the waterside pollutions of a great (and dirty) city. Fog on the Essex marshes, fog on the Kentish heights. Fog creeping into the cabooses of collier-brigs; fog lying out on the yards and hovering in the rigging of great ships; fog drooping on the gunwales of barges and small boats. Fog in the eyes and throats of ancient Greenwich pensioners, wheezing by the firesides of their wards; fog in the stem and bowl of the afternoon pipe of the wrathful skipper, down in his close cabin; fog cruelly pinching the toes and fingers of his shivering little apprentice boy on deck. Chance people on the bridges peeping over the parapets into a nether sky of fog, with fog all round them, as if they were up in a balloon and hanging in the misty clouds.In the first place we have granted to God, and by this our present charter confirmed for us and our heirs forever that the English Church shall be free, and shall have her rights entire, and her liberties inviolate; and we will that it be thus observed; which is apparent from this that the freedom of elections, which is reckoned most important and very essential to the English Church, we, of our pure and unconstrained will, did grant, and did by our charter confirm and did obtain the ratification of the same from our lord, Pope Innocent III, before the quarrel arose between us and our barons: and this we will observe, and our will is that it be observed in good faith by our heirs forever. We have also granted to all freemen of our kingdom, for us and our heirs forever, all the underwritten liberties, to be had and held by them and their heirs, of us and our heirs forever.\r\n\r\nFog everywhere. Fog up the river, where it flows among green aits and meadows; fog down the river, where it rolls deified among the tiers of shipping and the waterside pollutions of a great (and dirty) city. Fog on the Essex marshes, fog on the Kentish heights. Fog creeping into the cabooses of collier-brigs; fog lying out on the yards and hovering in the rigging of great ships; fog drooping on the gunwales of barges and small boats. Fog in the eyes and throats of ancient Greenwich pensioners, wheezing by the firesides of their wards; fog in the stem and bowl of the afternoon pipe of the wrathful skipper, down in his close cabin; fog cruelly pinching the toes and fingers of his shivering little apprentice boy on deck. Chance people on the bridges peeping over the parapets into a nether sky of fog, with fog all round them, as if they were up in a balloon and hanging in the misty clouds.', NULL, NULL),
(4, 1, 'https://rukminim1.flixcart.com/image/416/416/ktketu80/mobile/z/h/v/iphone-13-pro-mlvq3hn-a-apple-original-imag6vpc6mx3zwhz.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/ktketu80/mobile/i/r/z/iphone-13-pro-mlvq3hn-a-apple-original-imag6vpcyjkhpt4e.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/ktketu80/mobile/7/8/w/iphone-13-pro-mlvq3hn-a-apple-original-imag6vpcsbbtfu6e.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/ktketu80/mobile/y/j/m/iphone-13-pro-mlvq3hn-a-apple-original-imag6vpcamxyhxmq.jpeg?q=70', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, co', 'Gold, White', '6.1', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL),
(5, 9, 'https://rukminim1.flixcart.com/image/416/416/l4d2ljk0/mobile/z/i/s/-original-imagf9wt7v5pugmy.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l44hyfk0/mobile/t/t/n/-original-imagf2xbzumvpgpp.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l44hyfk0/mobile/t/n/h/-original-imagf2xb6zz2byke.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/k/e/b/-original-imagg3znfecea57y.jpeg?q=70', 'Oppo has already confirmed that it will launch the Oppo K10 5G in India this week. The Chinese smartphone maker will launch the Oppo K10 5G in India on June 8. The company has scheduled the online launch event for 12 pm on June 8.', 'Midnight Black', '6.56', 'Oppo has already confirmed that it will launch the Oppo K10 5G in India this week. The Chinese smartphone maker will launch the Oppo K10 5G in India on June 8. The company has scheduled the online launch event for 12 pm on June 8.\r\nOppo has already confirmed that it will launch the Oppo K10 5G in India this week. The Chinese smartphone maker will launch the Oppo K10 5G in India on June 8. The company has scheduled the online launch event for 12 pm on June 8.\r\nOppo has already confirmed that it will launch the Oppo K10 5G in India this week. The Chinese smartphone maker will launch the Oppo K10 5G in India on June 8. The company has scheduled the online launch event for 12 pm on June 8.', NULL, NULL),
(6, 11, 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/l/8/r/-original-imaghxemnnnkd8bg.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/n/h/w/-original-imaghxejc7btkj6s.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/a/d/t/-original-imaghxembperu9hb.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/j/h/o/-original-imaghxem7jhkwkyb.jpeg?q=70', 'With the date of Apple\'s next event finally set for 7th September, rumours and leaks about the iPhone 14 are reaching their inevitable zenith. Alleged dummy units have just given us our first \'real world\' glimpse of the iPhone 14 Pro, which tends to come ', 'Deep Purple, Blue', '6.1', 'We\'ve already heard tell that Apple is planning to go big on purple this year, with both the iPhone 14 and iPhone Pro said to be adopting the colour. But not only does it appear to be a far darker purple than the pastel shade of the iPhone 12, but it also seems to be replacing some other popular colours. (Don\'t fancy waiting? Check out the best iPhone 13 deals available now.) \r\nVarious Apple leakers have taken to Twitter to share images of the so-called dummy units. While a bunch of already familiar colours are present and correct, including white, space grey and gold, it\'s the purple that\'s getting the most attention. But rather than a bold shade, it appears to be a subtle, inky colour that only actually looks purple when it catches the light. In other words, it isn\'t much fun. \r\n\r\nAnd the purple isn\'t proving popular on Twitter. \"Impossible that Apple would release a colour that ugly,\" one user comments on leaker @duanrui1205\'s images, while another adds, \"I\'d like the purple colour to be a lot lighter, it looks like it was dipped in ink.\"\r\nAlso surprising is the colours this purple appears to be replacing. For the Pro model, it\'s Sierra Blue that\'s on the way out. But more unexpected is the loss of the pink iPhone 14. Users have been clamouring for a hot pink iPhone for years, and although hardly \'hot\', the pastel pink iPhone 13 was the closest we\'ve got since the iPhone 5C. It was a hugely popular shade – so why is Apple planning to ditch it so soon? ', NULL, NULL),
(7, 13, 'https://rukminim1.flixcart.com/image/416/416/kzpw2vk0/mobile/u/o/q/galaxy-s21-fe-5g-lavender-8gb-128gb-storage-sm-g990elviinu-original-imagbnbdaj3tygup.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kzpw2vk0/mobile/j/w/f/galaxy-s21-fe-5g-lavender-8gb-128gb-storage-sm-g990elviinu-original-imagbnbdgwngwzme.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kzpw2vk0/mobile/a/h/e/galaxy-s21-fe-5g-lavender-8gb-128gb-storage-sm-g990elviinu-original-imagbnbdnwcjuz6z.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kzpw2vk0/mobile/u/2/o/galaxy-s21-fe-5g-lavender-8gb-128gb-storage-sm-g990elviinu-original-imagbnbdagsvg8qu.jpeg?q=70', 'SAMSUNG Galaxy S21 owners should seriously think about selling their phones this week as the trade-in value of last year\'s flagship handset could be about to take a serious hit ahead of the S22 launch.\r\n', 'Lavender, Purple', '6.4', 'Anyone with a Galaxy S21 tucked in their pocket might want to consider heading to a trade-in website as soon as possible. These current Samsung flagships are about to be superseded by the all-new Galaxy S22 and that means their second-hand value will plummet.\r\nThe next generation of Samsung Galaxy S handsets will be unveiled to the world on February 9, with rumours suggesting that a total of three new phones will be revealed including a super premium Ultra model that could feature the return of the S Pen stylus. That\'s an accessory we haven\'t seen since Samsung ditched its Note range of phones back in 2020.\r\nA faster processor, improved cameras and longer battery life also seem likely along with a refreshed design and much faster charging. With big upgrades on their way, the S21 will soon look more than a little outdated and that will almost certainly hit its re-sale price.\r\n\r\nRight now, you can get around £350 for a Galaxy S21 on sites such as MusicMagpie but don\'t expect things to stay that high for much longer.\r\n\r\nIf this phone follows its predecessors then things could fall fast. At this point last year, a Galaxy S20 was fetching around £350 on trade-in sites but now you\'ll only get around £230 when handing it over.', NULL, NULL),
(8, 24, 'https://rukminim1.flixcart.com/image/416/416/l1zc6fk0/mobile/o/0/k/f21-pro-5g-cph2341-oppo-original-imagdf4ghefkddgm.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l1xwqkw0/mobile/y/w/o/f21-pro-5g-cph2341-oppo-original-imagded4v3awgha6.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l1zc6fk0/mobile/7/z/w/f21-pro-5g-cph2341-oppo-original-imagdf4gnjyayyvs.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l1xwqkw0/mobile/2/g/m/f21-pro-5g-cph2341-oppo-original-imagded8fys55zwh.jpeg?q=70', 'Oppo F21 Pro 5G can be purchased with a massive discount on Amazon. Buy this smartphone worth Rs. 31999 for just Rs. 8290.', 'Cosmic Black, Rainbow Spectrum', '6.43', 'The wait is finally over. The most awaited OPPO F21 Pro 5G is officially available to purchase online and in stores nationwide.\r\n\r\nWith fans swooning over its incredible design and fastest internet connection due to 5G enabled, 6nm processor, and camera capabilities, the OPPO F21 Pro 5G has been very well received since its launch. With its exquisite style and unique Mega lens & Mega portrait feature, the phone has witnessed huge anticipation across the stores on its first sales day.\r\nPowered by Qualcomm® Snapdragon™ 695 5G Mobile Platform built on a 6nm process, slim and sleek design along with good battery life, OPPO F21 Pro 5G ensures an exceptional user experience. The phone has a powerful 4500mAh battery that comes with 33W SUPERVOOC Flash-charging technology. With 128GB of ROM and 8GB RAM, which can be extended by 5GB from OPPO’s RAM expansion, promising great power efficiency.\r\n\r\nIt comes in two stunning colors including Cosmic Black and the unique Rainbow Spectrum. It is available to purchase in stores and at ‘Daraz’ for a retail price of PKR 69,999/-.\r\nWith an aim to enhance the quality of calls and fast connection through VoNR technology and VoLTE, the phone is equipped with such features through which users can experience enhanced 4G+ performance with 5G as well if it is available in their respective location.\r\n\r\nThe new OPPO F21 Pro 5G handles data privacy and information security at levels that exceed industry standards. Smart Notification Hiding helps protect your privacy when using your phone in public areas.\r\n\r\nThe powerful camera system by OPPO is going to change the reel dynamics. The features include Bokeh Flare Portrait, Selfie HDR, AI Scene Enhancement, and AI Color Portrait. It features a 64MP High-Res Main Camera, a 2MP Macro Camera, a 2MP Depth Camera, and a 16MP Front Camera.\r\n\r\nMoreover, browsing and consuming information has never been easier thanks to smart AI sensing algorithms and intelligent translation on OPPO F21 Pro 5G.\r\n\r\nWith the Air Gestures on ColorOS 12, you can mute a call with a swipe-up gesture or scroll up and down on pages within apps like YouTube, Facebook, Instagram, and TikTok without touching the device.\r\n\r\nOver the years, the OPPO F series has made significant advancements, including the introduction of VOOC charging, improved camera capabilities, innovative design, and unique color options. \r\n\r\nWith an incredible design, this new device combines cutting-edge technology with a vibrant style and chic design. The phone is available for purchase at and in stores nationwide. \r\n\r\nAbout OPPO\r\n\r\nOPPO is a leading global smart device brand. Since the launch of its first mobile phone – “Smiley Face” – in 2008, OPPO has been in relentless pursuit of the perfect synergy of aesthetic satisfaction and innovative technology. Today, OPPO provides a wide range of smart devices spearheaded by the Find and Reno series. Beyond devices, OPPO provides its users with the ColorOS operating system and internet services like OPPO Cloud and OPPO+. OPPO operates in more than 50 countries and regions with more than 40,000 of OPPO’s employees dedicated to creating a better life for customers around the world.\r\n\r\nAbout ColorOS\r\n\r\nColorOS is a highly customized, efficient, intelligent, and richly designed Android-based mobile OS from OPPO. With over 350 million global users, ColorOS supports more than 80 languages, including English, Hindi, Bahasa, and Thai.', NULL, NULL),
(9, 25, 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/y/9/z/-original-imagh4bbndqmytqg.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/v/q/d/-original-imagh4bbvnrhc754.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/b/u/y/-original-imagh4bbgfwzafcm.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/0/v/c/-original-imagh4bbtgkz4xxg.jpeg?q=70', 'Infinix Hot 12 Smartphone Review- The Infinix phones usually deal with the budget segment smartphone, but they have done their work properly in delivering great value to the users. Recently, the smartphone makers release the Infinix Hot 12 in April 2022 a', 'Puple, Blue, Black, Turquoise Cyan', '6.82', 'Infinix Hot 12 Smartphone Review- The Infinix phones usually deal with the budget segment smartphone, but they have done their work properly in delivering great value to the users. Recently, the smartphone makers release the Infinix Hot 12 in April 2022 and the phone is the successor of the Inifinix Hot 11. It offers a better hardware configuration that is precisely aligned with the heavily customized interface.\r\n\r\nAlthough, you might not at a clean UI experience, still, the phone is providing various personalized features for the users. On the other hand, the performance department will easily handle your multitasking work without much hassle, while the camera end delivers great results in daily light. With this, you will also attain ample battery life support and screen time to watch your favorite content. Overall, the first impression of this phone is good. But, let’s head toward the Infinix Hot 12 review to get more insights.\r\nDesign and Display\r\nThe Infinix phone designs are fun and versatile as you can choose anything from the diverse range of shade options. However, there’s no denying that the company doesn’t have any serious move to change the camera module design layout. But anyway, we are getting an impressive sleek glass-like design even though it is just a plastic body. Besides this, you can purchase this phone in four fabulous shade variants.\r\n\r\nYou can choose from Racing Black, Legend White, Origin Blue, or Lucky Green according to your taste without any hassle. Moreover, you will attain a pretty slim body with a massive battery capacity support inside the phone, while it doesn’t affect the overall phone weight is 195 grams, which is not a big deal. But the built quality is something that makes the phone stands out.\r\nHowever, there’s no denying that HD resolutions 6.82-inches IPS LCD panel might not able to push the limits when it comes to watching content online or streaming. But still, there’s one good thing that happened to this device. With this device, you will receive a 90Hz refresh rate, which will further enhance the fluid user experience. Although, the classic corning gorilla glass protection is missing here.\r\n\r\nMemory and Internal\r\nThe hardware section might not have something exceptional performance or robust gaming-centric processing power. Despite this, the Infiinix Hot 12 is equipped with the 12nm Mediatek Helio G85 chipset. It’s not that bad for daily usage, while at the same time, you can play some advanced games without any lags. Overall, it’s a decent pick and provides a casual gaming experience.\r\n\r\nOn the other hand, you will get the best resolution and graphic support from this phone. Though, the software layering makes the whole user experience pretty exciting and appealing as you are getting the Android 12 out of the box with the latest XOS 10.6 custom skin. However, the customization factors are something that shines out in the interface, while the 90Hz refresh rate improves the scrolling experience.\r\n\r\nMoving to the internal storage section, you will obtain 4GB to 6GB of RAM support accompanied by 128GB of space. With this combination, you won’t face any trouble in your day-to-day usage, and the internal storage is sufficient to store your various media files without any hunch. Besides this, you will also obtain a dedicated SD card slot that will further help in increasing the storage limits.\r\n\r\nCamera\r\nThe camera quality utilizes in the Infinix Hot 12 is slightly disappointing as you are getting a pretty average 13MP primary lens. Though, the image processing algorithms perform pretty well on the proper daylights. But at the same time, you won’t receive finely detailed photos in the dark room. However, it doesn’t mean that other features are that bad.\r\n\r\nHopefully, you will get decent portrait images from the 2MP secondary lens. Besides this, the camera module also has a QVGA lens that helps in image processing and provides better photo results to the users. Although, the phone doesn’t have proper AI software support, still, the native camera app provides several tweaks to boost the picture quality.\r\nBut on the other hand, you will notice grains while taking photos in the low lights. Anyway, let’s talk about the 8MP selfie camera that will render impressive colors and filter options to take selfies. As far as video recording is concerned, the camera app provides a dedicated short video format option from which you can create reels, shorts, and TikToks easily, while the video export quality goes up to 1080p.\r\n\r\nBattery and Others\r\nUnder the hood, the phone arrives with a huge Li-Ion 5000 mAh battery life that can effortlessly provide 6+ hours of screen time. With that much, you can watch your favorite content without being overwhelmed by long-lasting battery life. In terms of the charging speed, you will receive an 18W fast charging speed that will make sure the Infinix Hot 12 is less than an hour and a half.\r\n\r\nIt’s a mid-range phone so expecting something out of the box would be meaningless. But the comms and sensor are top-notch according to the standard and won’t cause any issue in the long run. You can purchase the Infinix Hot 12 at $153 (Rs. 12,190 in India) approx, which is quite a decent deal overall.', NULL, NULL),
(10, 26, 'http://127.0.0.1:8000/upload/productdetails/1759248817982235.jpg', 'http://127.0.0.1:8000/upload/productdetails/1759248818163214.jpg', 'http://127.0.0.1:8000/upload/productdetails/1759248818301048.jpg', 'http://127.0.0.1:8000/upload/productdetails/1759248818426468.jpg', 'Thiết kế sang trọng tinh tế nâng tầm không gian nội thất. Độ phân giải 4K hiển thị hình ảnh sắc nét đến từng chi tiết', 'Black,Blue', '43 inch', '<p><span style=\"color: #191919; font-family: Roboto, sans-serif; font-size: 16px; text-align: center; background-color: #ffffff;\">Smart Tivi Samsung 4K 43 inch UA43TU8100KXXV với độ ph&acirc;n giải 4K sở hữu gấp 4 lần điểm ảnh so với Tivi FHD th&ocirc;ng thường mang đến khung h&igrave;nh sắc n&eacute;t cho bạn trải nghiệm xem sống động v&agrave; ch&acirc;n thật nhất.&nbsp;Độ tương phản tăng cường c&ugrave;ng dải m&agrave;u sắc vượt trội từ c&ocirc;ng nghệ HDR10+&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-size: 16px; box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto, sans-serif; vertical-align: baseline; color: #191919; text-align: center; background-color: #ffffff;\"><a style=\"margin: 0px; padding: 0px; font: inherit; box-sizing: border-box; border: 0px; vertical-align: baseline; text-decoration-line: none; color: #ed3324 !important; transition: all 0.2s ease 0s !important;\" href=\"https://www.nguyenkim.com/tivi-lcd-samsung/\" target=\"_blank\" rel=\"noopener noreferrer\">tivi Samsung</a></span><span style=\"color: #191919; font-family: Roboto, sans-serif; font-size: 16px; text-align: center; background-color: #ffffff;\"> sẽ&nbsp;cho bạn đắm ch&igrave;m v&agrave;o từng ph&acirc;n cảnh sống động như thật v&agrave; mang đến những khung h&igrave;nh đen huyền s&acirc;u thẳm v&agrave; trắng s&aacute;ng rực rỡ với độ sắc n&eacute;t đến từng chi tiết.</span></p>', NULL, NULL),
(11, 27, 'http://127.0.0.1:8000/upload/productdetails/1759249465781435.jpg', 'http://127.0.0.1:8000/upload/productdetails/1759249466018931.jpg', 'http://127.0.0.1:8000/upload/productdetails/1759249466278644.jpg', 'http://127.0.0.1:8000/upload/productdetails/1759249466566461.jpg', 'Kích thước màn hình tivi 43 inch, lựa chọn lý tưởng cho các căn phòng khách, phòng ngủ, phòng làm việc có diện tích nhỏ và vừa.', 'White,Blue', '43 inch', '<p><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><a style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: #155ec1;\" title=\"Google Tivi Toshiba 4K 43 inch 43C350LP\" href=\"https://www.dienmayxanh.com/tivi/google-tivi-toshiba-4k-43-inch-43c350lp\" target=\"_blank\" rel=\"noopener\">Google Tivi Toshiba 4K 43 inch 43C350LP</a> thiết kế tr&agrave;n viền sang trọng, t&aacute;i hiện khung h&igrave;nh 4K sắc n&eacute;t, bộ xử l&yacute; Regza Engine 4K hiệu suất cao, c&ocirc;ng nghệ&nbsp;Dolby Vision v&agrave;&nbsp;Dolby Atmos mang đến trải nghiệm nghe nh&igrave;n chuẩn điện ảnh, c&ocirc;ng nghệ Ultra Essential PQ cung cấp h&igrave;nh ảnh sống động, tuyệt đẹp,&nbsp;hệ điều h&agrave;nh Google TV th&acirc;n thiện, kho ứng dụng phong ph&uacute;.</span></span></p>', NULL, NULL),
(12, 28, 'http://127.0.0.1:8000/upload/productdetails/1759250431519802.jpg', 'http://127.0.0.1:8000/upload/productdetails/1759250431672797.jpg', 'http://127.0.0.1:8000/upload/productdetails/1759250431792658.jpg', 'http://127.0.0.1:8000/upload/productdetails/1759250431980019.jpg', 'Xiaomi Redmi 10 5G nổi bật trong phân khúc giá rẻ với nhiều tính năng ưu việt.', 'Green,Gray,Black', '6.58 inch', '<p><span style=\"color: #333333; font-family: Arial; font-size: 14px; text-align: justify; background-color: #ffffff;\">Xiaomi Redmi 10 5G l&agrave; smartphone gi&aacute; rẻ hiếm hoi tr&ecirc;n thị trường hiện nay hỗ trợ 5G. Ngo&agrave;i ra, m&aacute;y c&ograve;n đi k&egrave;m m&agrave;n h&igrave;nh rộng, tần số qu&eacute;t cao 90Hz, vi xử l&yacute; mạnh mẽ xử l&yacute; tốt mọi t&aacute;c vụ v&agrave; đặc biệt pin 5.000 mAh kh&ocirc;ng lo hết pin. Đ&acirc;y l&agrave; lựa chọn tuyệt vời cho c&aacute;c bạn thu nhập thấp, học sinh, sinh vi&ecirc;n.</span></p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_lists`
--

CREATE TABLE `product_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `special_price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lists`
--

INSERT INTO `product_lists` (`id`, `title`, `price`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `product_code`, `created_at`, `updated_at`, `star`) VALUES
(1, 'Iphone 13 Gold', '10899', 'na', 'https://rukminim1.flixcart.com/image/416/416/kg8avm80/mobile/g/n/w/apple-iphone-12-pro-max-dummyapplefsn-original-imafwgcyauknkgwh.jpeg?q=70', 'Mobiles', 'Apple', 'FEATURED', 'Apple', '46865390', NULL, NULL, '4'),
(2, 'OPPO Reno8T 5G 1', '3000', '2900', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/x/r/n/-original-imagmgy5jk8ytxnw.jpeg?q=70', 'Mobiles', 'Oppo', 'NEW', 'Oppo Coporation', '56581101', NULL, NULL, '5'),
(3, 'Men Regular Fit Solid Casual Shirt', '2000', '999', 'https://rukminim1.flixcart.com/image/832/832/xif0q/shirt/d/t/f/s-lstr-peacock-p-v-creations-original-imag9jggzzehk99f-bb.jpeg?q=70', 'Fashion', 'Mens top wear', 'COLLECTION', 'VTEXX', '776667777', NULL, NULL, '5'),
(4, 'Men Slim Fit Solid Spread Collar Casual Shirt', '1999', '799', 'https://rukminim1.flixcart.com/image/832/832/xif0q/shirt/j/v/z/m-az301-skyblue-dennis-lingo-original-imaf7588mxx5ger7.jpeg?q=70', 'Fashion', 'Mens top wear', 'COLLECTION', 'BLIVE', '69990000', NULL, NULL, '4'),
(5, 'Solid Georgette Stitched A-line Gown', '2399', '1099', 'https://rukminim1.flixcart.com/image/612/612/xif0q/gown/i/0/w/na-m-short-sleeve-stitched-gown-femvy-na-original-imag3hyesubkhaxw.jpeg?q=70', 'Fashion', 'Womens top wear', 'COLLECTION', 'Femvy', '1699999', NULL, NULL, '5'),
(6, 'Men Slim Fit Printed Cut Away Collar Casual Shirt', '799', '599', 'https://rukminim1.flixcart.com/image/612/612/xif0q/shirt/z/p/v/l-hlsh013887-highlander-original-imaggkzwggyzquta.jpeg?q=70', 'Fashion', 'Mens top wear', 'COLLECTION', 'FABROT', '34500007', NULL, NULL, '3'),
(7, 'Solid Georgette Stitched A-line Gown', '2399', '1099', 'https://rukminim1.flixcart.com/image/612/612/xif0q/gown/i/0/w/na-m-short-sleeve-stitched-gown-femvy-na-original-imag3hyesubkhaxw.jpeg?q=70', 'Fashion', 'Womens top wear', 'COLLECTION', 'Femvy', '1699999', NULL, NULL, '5'),
(8, 'Men Regular Fit Solid Spread Collar Casual Shirt', '799', '599', 'https://rukminim1.flixcart.com/image/832/832/l41n2q80/shirt/0/d/w/l-fmsht0457-flying-machine-original-imagffhjuymqfspq.jpeg?q=70', 'Fashion', 'Mens top wear', 'COLLECTION', 'FABROT', '34500007', NULL, NULL, '4'),
(9, 'OPPO K10 5G (Black, 128 GB)', '7999', '4999', 'https://rukminim1.flixcart.com/image/416/416/l4d2ljk0/mobile/z/i/s/-original-imagf9wt7v5pugmy.jpeg?q=70', 'Mobiles', 'Oppo', 'FEATURED', 'Oppo Corporation', '2317641904', NULL, NULL, '4'),
(10, 'realme C33 (Night Sea, 32 GB) 2', '3699', '1599', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/e/n/j/-original-imaghuf9vphhbnkc.jpeg?q=70', 'Mobiles', 'Samsung', 'NEW', 'Realme and Samsung', '3333333', NULL, NULL, '5'),
(11, 'iPhone 14 Pro (Purple, 128 GB)', '13899', '9999', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/l/8/r/-original-imaghxemnnnkd8bg.jpeg?q=70', 'Mobiles', 'Iphone', 'FEATURED', 'Apple', '11925000', NULL, NULL, '5'),
(12, 'realme C33 (Aqua Blue, 32 GB) 3', '3999', '2999', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/9/z/o/-original-imaghuf9guqmb65z.jpeg?q=70', 'Mobiles', 'Oppo', 'NEW', 'Realme Coporation', '56581101', NULL, NULL, '5'),
(13, 'Galaxy S21 FE 5G (Lavender)', '16999', '12999', 'https://rukminim1.flixcart.com/image/416/416/kzpw2vk0/mobile/u/o/q/galaxy-s21-fe-5g-lavender-8gb-128gb-storage-sm-g990elviinu-original-imagbnbdaj3tygup.jpeg?q=70', 'Mobiles', 'Samsung', 'FEATURED', 'Samsung Corporation', '321111776', NULL, NULL, '4'),
(14, 'Galaxy S21 FE 5G (Olive) 4', '15699', 'na', 'https://rukminim1.flixcart.com/image/416/416/kz7bcsw0/screen-guard/front-and-back-screen-guard/o/p/j/rr44-twenteesky-original-imagb9dh2hm4fzhw.jpeg?q=70', 'Mobiles', 'Samsung', 'NEW', 'Samsung', '5577777', NULL, NULL, '5'),
(15, 'Men Regular Fit Solid Casual Shirt', '2000', '999', 'https://rukminim1.flixcart.com/image/832/832/xif0q/shirt/d/t/f/s-lstr-peacock-p-v-creations-original-imag9jggzzehk99f-bb.jpeg?q=70', 'Fashion', 'Mens top wear', 'COLLECTION', 'VTEXX', '776667777', NULL, NULL, '5'),
(16, 'Men Slim Fit Solid Spread Collar Casual Shirt', '1999', '799', 'https://rukminim1.flixcart.com/image/832/832/xif0q/shirt/j/v/z/m-az301-skyblue-dennis-lingo-original-imaf7588mxx5ger7.jpeg?q=70', 'Fashion', 'Mens top wear', 'COLLECTION', 'BLIVE', '69990000', NULL, NULL, '4'),
(17, 'Solid Georgette Stitched A-line Gown', '2399', '1099', 'https://rukminim1.flixcart.com/image/612/612/xif0q/gown/i/0/w/na-m-short-sleeve-stitched-gown-femvy-na-original-imag3hyesubkhaxw.jpeg?q=70', 'Fashion', 'Womens top wear', 'COLLECTION', 'Femvy', '1699999', NULL, NULL, '5'),
(18, 'Men Slim Fit Printed Cut Away Collar Casual Shirt', '799', '599', 'https://rukminim1.flixcart.com/image/612/612/xif0q/shirt/z/p/v/l-hlsh013887-highlander-original-imaggkzwggyzquta.jpeg?q=70', 'Fashion', 'Mens top wear', 'COLLECTION', 'FABROT', '34500007', NULL, NULL, '3'),
(19, 'Solid Georgette Stitched A-line Gown', '2399', '1099', 'https://rukminim1.flixcart.com/image/612/612/xif0q/gown/i/0/w/na-m-short-sleeve-stitched-gown-femvy-na-original-imag3hyesubkhaxw.jpeg?q=70', 'Fashion', 'Womens top wear', 'COLLECTION', 'Femvy', '1699999', NULL, NULL, '5'),
(20, 'realme C33 (Night Sea, 32 GB) 5', '3699', '1599', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/e/n/j/-original-imaghuf9vphhbnkc.jpeg?q=70', 'Mobiles', 'Samsung', 'NEW', 'Realme and Samsung', '3333333', NULL, NULL, '5'),
(21, 'Galaxy S21 FE 5G (Olive) 6', '15699', 'na', 'https://rukminim1.flixcart.com/image/416/416/kz7bcsw0/screen-guard/front-and-back-screen-guard/o/p/j/rr44-twenteesky-original-imagb9dh2hm4fzhw.jpeg?q=70', 'Mobiles', 'Samsung', 'NEW', 'Samsung', '5577777', NULL, NULL, '5'),
(22, 'realme C33 (Aqua Blue, 32 GB) 7', '3999', '2999', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/9/z/o/-original-imaghuf9guqmb65z.jpeg?q=70', 'Mobiles', 'Oppo', 'NEW', 'Realme Coporation', '56581101', NULL, NULL, '5'),
(23, 'realme C33 (Night Sea, 32 GB) 8', '3699', '1599', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/e/n/j/-original-imaghuf9vphhbnkc.jpeg?q=70', 'Mobiles', 'Samsung', 'NEW', 'Realme and Samsung', '3333333', NULL, NULL, '5'),
(24, 'OPPO F21 Pro (128 GB)', '10299', '8999', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/i/g/y/-original-imaggm3zczfkgxea.jpeg?q=70', 'Mobiles', 'Oppo', 'FEATURED', 'Oppo Corporation', '34481500', NULL, NULL, '5'),
(25, 'Infinix Hot 12 (Polar Black)', '10599', '7999', 'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/v/9/3/-original-imagh4bbs7q2gabh.jpeg?q=70', 'Mobiles', 'Samsung', 'FEATURED', 'Infinix and Samsung', '14481520', NULL, NULL, '5'),
(26, 'Smart tivi Samsung 4K 43 inch UA43TU8100', '300', '255', 'C:\\xampp\\tmp\\php86EC.tmp', 'TV & Appliances', 'Smart TV', 'COLLECTION', 'Realme and Samsung', '9024175503', NULL, NULL, NULL),
(27, 'Google Tivi Toshiba 4K 43 inch 43C350LP', '367', '310', 'http://127.0.0.1:8000/upload/product/1759249465632056.jpg', 'TV & Appliances', 'Smart TV', 'COLLECTION', 'Realme Coporation', '22108799', NULL, NULL, NULL),
(28, 'REDMI 10 (Caribbean Green, 64 GB)', '200', '189', 'http://127.0.0.1:8000/upload/product/1759250431331679.jpg', 'Mobiles', 'OPPO', 'FEATURED', 'Oppo Coporation', '7740216', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `reviewer_name` varchar(255) NOT NULL,
  `reviewer_photo` varchar(255) DEFAULT NULL,
  `reviewer_rating` varchar(255) NOT NULL,
  `reviewer_comments` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_code`, `product_name`, `reviewer_name`, `reviewer_photo`, `reviewer_rating`, `reviewer_comments`, `created_at`, `updated_at`) VALUES
(5, '11925000', NULL, 'CHIENCHIEN', NULL, '5', 'This is good, thank you!', NULL, NULL),
(6, '11925000', 'iPhone 14 Pro (Purple, 128 GB)', 'Leonel Messi', NULL, '5', 'Thank God for your phone, this is my favourite.', NULL, NULL),
(7, '56581101', 'OPPO Reno8T 5G 1', 'Ani', NULL, '5', 'I like it! Keep it up.', NULL, NULL),
(8, '11925000', 'iPhone 14 Pro (Purple, 128 GB)', 'Chienchien', NULL, '5', 'Just bought it', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6IurhAeykOUs67c2ZcQ80UKSnx5h3b89ORm3Xj4T', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibUVnTlRZM3ZSQWlsQkdvZHNkdHFsM2d3MjNLeVdMMzhXQ20wSzhCbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWN0L2FkZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkR0VSODRhOUM5M0toM1NFWlVIVFIwT3F3azlHRFZGVEpHTG5aZ01HT3ZKRTJocGZjblFjaXEiO30=', 1677733409),
('cgdc7399nEqB5IYWbL6GdtONEj8SbbvHBH5laXWh', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZWxibldrdElUVmpjMnJOcEd5cnR3dGExanBoY1pja0F2ZGVGQVlhVSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvcHJvZHVjdC9lZGl0LzI2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkR0VSODRhOUM5M0toM1NFWlVIVFIwT3F3azlHRFZGVEpHTG5aZ01HT3ZKRTJocGZjblFjaXEiO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1677753855),
('iYo6Dat5FPSUZSF0RNHfv9lvNK4HUsZZui4ZV42n', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUTNoa2dTdk05UWhKV2NjcThSdkI5NXp0TjAyMXVNMnJGOXB2NU5kZiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvcHJvZHVjdC9hbGwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEdFUjg0YTlDOTNLaDNTRVpVSFRSME9xd2s5R0RWRlRKR0xuWmdNR092SkUyaHBmY25RY2lxIjt9', 1677523327),
('sITdZozjVk52houhRciFXEZV92RCYQaBPIFhyqml', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidTZUSE5MUmxSNmF0WDc4RzJGZ2lhMGdRSGN2SG1UZHJhY2czWlE3MCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvcHJvZHVjdC9hZGQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEdFUjg0YTlDOTNLaDNTRVpVSFRSME9xd2s5R0RWRlRKR0xuWmdNR092SkUyaHBmY25RY2lxIjt9', 1677560966),
('Vuv4XC3GqqSR2doDSDmvIpKg2gVi9eBjbbEyO8w3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNE9SWXZQQjhhdWxxUFhZNkhQQTFzUVF4MjE3dzdyWmFXbHVqbWRlWSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1677732870);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text NOT NULL,
  `refund` text NOT NULL,
  `purchase_guide` text NOT NULL,
  `privacy` text NOT NULL,
  `address` text NOT NULL,
  `android_app_link` varchar(255) NOT NULL,
  `ios_app_link` varchar(255) NOT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `copyright_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `about`, `refund`, `purchase_guide`, `privacy`, `address`, `android_app_link`, `ios_app_link`, `facebook_link`, `twitter_link`, `instagram_link`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, '<p>Many experts and consumers believe that traditional shopping is now dominated by the e-commerce industry largely due to the rise in popularity of online shopping platforms. Most consumers are no stranger to electronic devices and the advantages that these online platforms provide. In addition to the more well-known shopping sites such as Lazada, Thegioididong, Sendo, Shopee, and Tiki, Vietnamese consumers also undertake retail therapy via social networks such as Facebook and Zalo. This form of shopping allows everyone to be the seller, and even though sales segment is extremely small, the size of the market is quite large and has low overhead costs. The low costs of the &lsquo;sales via social network&rsquo; method leads to low product prices, and is popular amongst those who regularly use online shopping platforms. On the flipside, well-known websites that have heavily invested in human resources and operating systems are facing numerous difficulties from ongoing cost burdens. A marketing budget plays a key role in any e-commerce set-up. As noted, the budget for marketing plan in the first two years of e-commerce fluctuates around $US 2 million, and a company&rsquo;s &quot;survival&quot; will be determined after this period of time. Brands such as Beyeu, Deca and Foodpanda all failed within two years of launching, with other companies quietly withdrawing from the market. Although it is considered to be fertile, the e-commerce market doesn&rsquo;t always offer ease of business, with many brands in this field still attempting to find their footing within the sector.</p>\r\n', '<h4>Refund Page</h4>\r\n\r\n<p>Many experts and consumers believe that traditional shopping is now dominated by the e-commerce industry largely due to the rise in popularity of online shopping platforms. Most consumers are no stranger to electronic devices and the advantages that these online platforms provide. In addition to the more well-known shopping sites such as Lazada, Thegioididong, Sendo, Shopee, and Tiki, Vietnamese consumers also undertake retail therapy via social networks such as Facebook and Zalo. This form of shopping allows everyone to be the seller, and even though sales segment is extremely small, the size of the market is quite large and has low overhead costs. The low costs of the &lsquo;sales via social network&rsquo; method leads to low product prices, and is popular amongst those who regularly use online shopping platforms. On the flipside, well-known websites that have heavily invested in human resources and operating systems are facing numerous difficulties from ongoing cost burdens. A marketing budget plays a key role in any e-commerce set-up. As noted, the budget for marketing plan in the first two years of e-commerce fluctuates around $US 2 million, and a company&rsquo;s &quot;survival&quot; will be determined after this period of time. Brands such as Beyeu, Deca and Foodpanda all failed within two years of launching, with other companies quietly withdrawing from the market. Although it is considered to be fertile, the e-commerce market doesn&rsquo;t always offer ease of business, with many brands in this field still attempting to find their footing within the sector.</p>\r\n\r\n<p>Thousands of T-Mobile customers in the United States&nbsp;<a href=\"https://www.reddit.com/r/tmobile/comments/111sscz/megathread_tmobile_outage_21323/?utm_source=share&amp;utm_medium=ios_app&amp;utm_name=iossmf\">reported significant network problems</a>&nbsp;on Monday night, with many unable to place calls or carry out other basic functions. Issues were reported across the country, with users from California to New York saying that service was up and down or completely unavailable for extended periods.</p>\r\n\r\n<p>DownDetector spiked and&nbsp;<a href=\"https://downdetector.com/status/t-mobile/\">showed over 80,000 reports of problems</a>. Owners of Apple&rsquo;s iPhone 14 phones said their signal status showed no cellular connection whatsoever &mdash; instead defaulting to the emergency SOS satellite indicator.</p>\r\n\r\n<p>By late evening, the carrier seemed to be getting&nbsp;<a href=\"https://twitter.com/NevilleRay/status/1625370762793349120?cxt=HHwWgMDTiZyGvY4tAAAA\">a handle on things</a>, but customers weren&rsquo;t pleased with the disruption.</p>\r\n\r\n<p>Responding to complaints on social media, T-Mobile said it was &ldquo;aware of and rapidly working to resolve an issue that has created intermittent impacts to our voice, messaging, and data service in several areas for a short period of time this evening.&rdquo;</p>\r\n\r\n<p>In a bizarre coincidence, the outage struck on the same day that T-Mobile network chief Neville Ray announced his upcoming retirement from the company. In a tweet Monday night, Ray blamed the service problems on a &ldquo;third-party fiber interruption.&rdquo;</p>\r\n', '<h4>Purchase Page</h4>\r\n\r\n<p>Many experts and consumers believe that traditional shopping is now dominated by the e-commerce industry largely due to the rise in popularity of online shopping platforms. Most consumers are no stranger to electronic devices and the advantages that these online platforms provide. In addition to the more well-known shopping sites such as Lazada, Thegioididong, Sendo, Shopee, and Tiki, Vietnamese consumers also undertake retail therapy via social networks such as Facebook and Zalo. This form of shopping allows everyone to be the seller, and even though sales segment is extremely small, the size of the market is quite large and has low overhead costs. The low costs of the &lsquo;sales via social network&rsquo; method leads to low product prices, and is popular amongst those who regularly use online shopping platforms. On the flipside, well-known websites that have heavily invested in human resources and operating systems are facing numerous difficulties from ongoing cost burdens. A marketing budget plays a key role in any e-commerce set-up. As noted, the budget for marketing plan in the first two years of e-commerce fluctuates around $US 2 million, and a company&rsquo;s &quot;survival&quot; will be determined after this period of time. Brands such as Beyeu, Deca and Foodpanda all failed within two years of launching, with other companies quietly withdrawing from the market. Although it is considered to be fertile, the e-commerce market doesn&rsquo;t always offer ease of business, with many brands in this field still attempting to find their footing within the sector.</p>\r\n\r\n<p>Samsung is back with a brand-new batch of flagship smartphones in the&nbsp;<a href=\"https://www.xda-developers.com/samsung-galaxy-s23-vs-s23-plus-vs-s23-ultra/\">Galaxy S23 series</a>, with the Galaxy S23 Ultra leading the pack. This is the first non-folding Samsung phone I&rsquo;ve used since the Galaxy S10, but ever since the first Galaxy Ultra phone came out with its crazy Space Zoom camera feature, I&rsquo;ve been itching to try one out for myself. The wait has been totally worth it.</p>\r\n\r\n<p>For those who don&rsquo;t closely follow the design trends of smartphones, you probably wouldn&rsquo;t be able to point out the differences between the current model and last year&rsquo;s if you put them side by side. However, the Galaxy S23 Ultra has a more balanced boxy shape that&#39;s easy to hold, and the reduced curve of the display is very much welcome.</p>\r\n\r\n<p>Inside the phone is the latest Qualcomm Snapdragon 8 Gen 2 but customized for Samsung. Throughout our testing, it&#39;s been an absolute beast in performance and getting the most from the 5,000mAh battery for excellent battery life. The upgraded cameras, including a 200MP sensor, are incredible, and Samsung&rsquo;s tweaks to the processing are wonderful. It&#39;s too early to say if the S Pen-wielding Samsung Galaxy S23 Ultra will be this year&#39;s best Android or just fade away. Here&#39;s a hint: It&rsquo;s definitely coming for the crown.</p>\r\n', '<h4>Purchase Page</h4>\r\n\r\n<p>Many experts and consumers believe that traditional shopping is now dominated by the e-commerce industry largely due to the rise in popularity of online shopping platforms. Most consumers are no stranger to electronic devices and the advantages that these online platforms provide. In addition to the more well-known shopping sites such as Lazada, Thegioididong, Sendo, Shopee, and Tiki, Vietnamese consumers also undertake retail therapy via social networks such as Facebook and Zalo. This form of shopping allows everyone to be the seller, and even though sales segment is extremely small, the size of the market is quite large and has low overhead costs. The low costs of the &lsquo;sales via social network&rsquo; method leads to low product prices, and is popular amongst those who regularly use online shopping platforms. On the flipside, well-known websites that have heavily invested in human resources and operating systems are facing numerous difficulties from ongoing cost burdens. A marketing budget plays a key role in any e-commerce set-up. As noted, the budget for marketing plan in the first two years of e-commerce fluctuates around $US 2 million, and a company&rsquo;s &quot;survival&quot; will be determined after this period of time. Brands such as Beyeu, Deca and Foodpanda all failed within two years of launching, with other companies quietly withdrawing from the market. Although it is considered to be fertile, the e-commerce market doesn&rsquo;t always offer ease of business, with many brands in this field still attempting to find their footing within the sector.</p>\r\n\r\n<p>After more than two years under some of the world&rsquo;s tightest border controls, Japan is once again open for business. Tourist spots are packed. Hotels are booked out well in advance. And it&rsquo;s getting harder to get a seat at many of the country&rsquo;s best restaurants.</p>\r\n\r\n<p>While that hasn&rsquo;t been ideal for the many people who flocked to Japan in late 2022 hoping to experience its famous hospitality, it has been pretty good for Japanese businesses.</p>\r\n\r\n<p>The country&rsquo;s economy, the world&rsquo;s third largest after the United States and China, grew at an annualized rate of 0.6 percent from October to December, government data showed on Tuesday. The modest increase, driven by a recovery in private consumption and spending by visitors to Japan, lagged expectations that growth could reach 2 percent.</p>\r\n\r\n<p>The uptick followed a surprise contraction during the third quarter of last year, when inflation and a weak yen drove import prices up and suppressed spending.</p>\r\n', '<h4>106/1/2/3/4/5 Street, Abcdefghij District, Hanoi city.<br />\r\nEmail: huuchien.np@gmail.com</h4>\r\n', 'http://localhost:3000/android', 'http://localhost:3000/ios', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.instagram.com/', '© Copyright 2023 by ChienNguyen Easy Shop, All Right Reserved', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_name`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 'Mobiles', 'Iphone', NULL, NULL),
(2, 'Mobiles', 'Samsung', NULL, NULL),
(3, 'Mobiles', 'OPPO', NULL, NULL),
(4, 'Computer', 'Laptop', NULL, NULL),
(5, 'Computer', 'Desktop', NULL, NULL),
(6, 'Electronics', 'Smart TV', NULL, NULL),
(7, 'Electronics', 'Camera', NULL, NULL),
(8, 'Electronics', 'Vacuum cleaner', NULL, NULL),
(9, 'TV & Appliances', 'Washing machine', NULL, NULL),
(10, 'TV & Appliances', 'Air condition', NULL, NULL),
(11, 'Fashion', 'Mens top wear', NULL, NULL),
(12, 'Fashion', 'Womens top wear', NULL, NULL),
(13, 'Baby & kids', 'Baby care', NULL, NULL),
(14, 'Baby & kids', 'Kids clothing', NULL, NULL),
(15, 'Baby & kids', 'Toys', NULL, NULL),
(16, 'Home & Funiture', 'Home decor', NULL, NULL),
(17, 'Home & Funiture', 'Living room funiture', NULL, NULL),
(18, 'Home & Funiture', 'Kitchen funiture', NULL, NULL),
(19, 'Sports & Books', 'Health & nutrition', NULL, NULL),
(20, 'Sports & Books', 'Books', NULL, NULL),
(22, 'Motorbike', 'Electric motorbike', NULL, NULL),
(23, 'Hot topic', 'Today\'s trend', NULL, NULL),
(24, 'Trend', 'Sale off', NULL, NULL),
(27, 'True', 'Alone here', NULL, '2023-02-27 11:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'ChienChien', 'chien@mail.com', NULL, '$2y$10$GER84a9C93Kh3SEZUHTR0Oqwk9GDVFTJGLnZgMGOvJE2hpfcnQciq', NULL, NULL, NULL, NULL, NULL, '202302260959avatar-1.png', '2023-02-03 02:50:18', '2023-02-26 03:42:52'),
(2, 'Feb', 'feb@mail.com', NULL, '$2y$10$6HS9bQfd/nNSmAijETLkwuUMLxtjmzYdXfQYzZL9EjE5N4n6axZv2', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-15 20:45:42', '2023-02-15 20:45:42'),
(3, 'Cat', 'cat@mail.com', NULL, '$2y$10$P7LkqfB.mPdq0qeD/tRB1eZ4p4Yto64o4/LzK654wrujTyZ9dWOPS', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-15 20:47:06', '2023-02-15 20:47:06'),
(4, 'Aba', 'aba@mail.com', NULL, '$2y$10$uAYODp2vG0RXacqvTPNAGu6c3z8ZKoqsvY62jLV1aHrZHza9soTSy', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-16 00:44:29', '2023-02-16 00:44:29'),
(5, 'John', 'john@mail.com', NULL, '$2y$10$m.NOBEnCV6Gx/EJHLKUk9e0llRc8n99A89blRuFUZwhlk6hrkK5yC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-16 01:13:19', '2023-02-16 01:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `visit_time` varchar(255) NOT NULL,
  `visit_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(7, '127.0.0.1', '12:35:04am', '04-02-2023', NULL, NULL),
(8, '127.0.0.1', '12:57:08am', '04-02-2023', NULL, NULL),
(9, '127.0.0.1', '12:57:12am', '04-02-2023', NULL, NULL),
(10, '127.0.0.1', '01:43:07am', '04-02-2023', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_orders`
--
ALTER TABLE `cart_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_orders`
--
ALTER TABLE `cart_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
