-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2023 at 10:33 AM
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
-- Database: `designhouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `created_at`, `updated_at`) VALUES
(1, '2023-03-13 21:00:57', '2023-03-14 03:12:30'),
(2, '2023-03-13 21:20:25', '2023-03-14 03:19:49'),
(3, '2023-03-13 21:24:37', '2023-03-13 21:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `commentable_type` varchar(255) NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `body`, `commentable_type`, `commentable_id`, `created_at`, `updated_at`) VALUES
(2, 3, 'I love this design.', 'App\\Models\\Design', 29, '2023-03-08 02:29:46', '2023-03-08 02:29:46'),
(3, 3, 'I love this design.', 'App\\Models\\Design', 29, '2023-03-08 02:30:33', '2023-03-08 02:30:33'),
(4, 3, 'I love this design.', 'App\\Models\\Design', 31, '2023-03-08 02:30:57', '2023-03-08 02:30:57'),
(5, 3, 'I love this design.', 'App\\Models\\Design', 31, '2023-03-08 02:33:45', '2023-03-08 02:33:45'),
(6, 3, 'I love this design.', 'App\\Models\\Design', 31, '2023-03-08 02:38:52', '2023-03-08 02:38:52'),
(7, 3, 'I love this design.', 'App\\Models\\Design', 31, '2023-03-08 02:40:38', '2023-03-08 02:40:38'),
(8, 3, 'I love this design.', 'App\\Models\\Design', 31, '2023-03-08 02:42:39', '2023-03-08 02:42:39'),
(9, 3, 'Love this!', 'App\\Models\\Design', 31, '2023-03-08 02:43:30', '2023-03-08 02:43:30'),
(10, 3, 'Beautiful!', 'App\\Models\\Design', 29, '2023-03-08 03:04:13', '2023-03-08 03:04:13'),
(11, 1, 'Edited 2. This is my favourite!', 'App\\Models\\Design', 29, '2023-03-08 03:33:30', '2023-03-08 03:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `designs`
--

CREATE TABLE `designs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_live` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `upload_successful` tinyint(1) NOT NULL DEFAULT 0,
  `disk` varchar(255) NOT NULL DEFAULT 'public',
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designs`
--

INSERT INTO `designs` (`id`, `user_id`, `image`, `title`, `description`, `slug`, `is_live`, `created_at`, `updated_at`, `upload_successful`, `disk`, `team_id`) VALUES
(18, 3, '1677868018_phongkhach1.jpg', 'This is my image, edited', 'This is my descriptionm, edited', 'this-is-my-image-edited', 0, '2023-03-03 11:26:58', '2023-03-06 20:48:37', 0, 'public', NULL),
(20, 3, '1677898992_phongkhach1.jpg', 'My room, edited', 'My description, edited', 'my-room-edited', 0, '2023-03-03 20:03:12', '2023-03-06 21:26:54', 0, 'public', NULL),
(21, 3, '1677899014_phongkhach1.jpg', NULL, NULL, NULL, 0, '2023-03-03 20:03:34', '2023-03-03 20:03:34', 0, 'public', NULL),
(22, 3, '1677899033_phongkhach1.jpg', NULL, NULL, NULL, 0, '2023-03-03 20:03:53', '2023-03-03 20:03:53', 1, 'public', NULL),
(24, 3, '1677900104_decor2.jpg', NULL, NULL, NULL, 0, '2023-03-03 20:21:44', '2023-03-03 20:21:44', 1, 'public', NULL),
(25, 3, '1678129016_decor3.jpeg', NULL, NULL, NULL, 0, '2023-03-06 11:56:57', '2023-03-06 11:56:57', 0, 's3', NULL),
(27, 3, '1678158176_decor3.jpg', 'My room 2, edited', 'My description 2, edited', 'my-room-2-edited', 1, '2023-03-06 20:02:56', '2023-03-06 21:32:34', 1, 's3', NULL),
(28, 3, '1678179975_nhung-nguyen-tac-trang-tri-ngoi-nha-dep.jpg', 'Decor my house - kitchen , updated', 'This is my kitchen asdasdasdasdasdasdasd', 'decor-my-house-kitchen-updated', 1, '2023-03-07 02:06:15', '2023-03-12 19:35:25', 1, 's3', 2),
(29, 3, '1678180330_nhung-nguyen-tac-trang-tri-ngoi-nha-dep.jpg', 'Trang tri ngoi nha dep nam 2023, edited', 'Cach trang tri ngoi nha dep xu huong nam 2023, edited', 'trang-tri-ngoi-nha-dep-nam-2023-edited', 1, '2023-03-07 02:12:10', '2023-03-07 11:23:19', 1, 's3', NULL),
(30, 3, '1678180344_room.jpg', NULL, NULL, NULL, 0, '2023-03-07 02:12:24', '2023-03-07 02:12:32', 1, 's3', NULL),
(31, 1, '1678245057_ban-cong-dep.jpg', 'Garden Corner, edited', 'Garden corner, edited', 'garden-corner-edited', 1, '2023-03-07 20:10:57', '2023-03-07 20:13:57', 1, 's3', NULL),
(33, 1, '1678357329_phong-ngu-cho-be-2.jpg', 'Play play 2', 'This is my bedroom asdasdasdasdasdasdasd', 'play-play-2', 1, '2023-03-09 03:22:09', '2023-03-09 03:23:12', 1, 's3', NULL),
(34, 7, '1679417384_phong-ngu-cho-be-2.jpg', NULL, NULL, NULL, 0, '2023-03-21 09:49:44', '2023-03-24 03:30:27', 1, 's3', NULL),
(35, 7, '1679418698_child_river_dreams_127495_1920x1080.jpg', NULL, NULL, NULL, 0, '2023-03-21 10:11:38', '2023-03-24 03:30:29', 1, 's3', NULL),
(38, 7, '1679423140_cartoonroom.jpg', 'Cartoon room 22302322', 'This is my cartoonroom 2302392', 'cartoon-room-22302322', 0, '2023-03-21 11:25:40', '2023-03-24 03:30:30', 1, 's3', 1),
(44, 7, '1679459135_digital-digital-art-artwork-fantasy-art-drawing-hd-wallpaper-preview.jpg', 'forest 2023', 'This is my image 702321', 'forest-2023', 1, '2023-03-21 21:25:35', '2023-03-24 03:30:31', 1, 's3', 2),
(51, 8, '1679654001_sunrise-nature-lake-flowers-landscape-cottage-digital-art-uhdpaper.com-hd-6.1241.jpg', 'The lake', 'This is my image 443129', 'the-lake', 1, '2023-03-24 03:33:21', '2023-03-24 09:16:17', 1, 's3', 2),
(52, 8, '1679674892_child_river_dreams_127495_1920x1080.jpg', 'Loving', 'This is my image 376905', 'loving', 1, '2023-03-24 09:21:32', '2023-03-24 09:23:32', 1, 's3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\UploadImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadImage\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\UploadImage\\\":9:{s:9:\\\"\\u0000*\\u0000design\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Design\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Design]. in C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:479\nStack trace:\n#0 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\UploadImage->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\UploadImage->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\UploadImage->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:20:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#18 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(1021): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(275): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(149): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\designhouse\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', '2023-03-24 03:30:29'),
(2, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\UploadImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadImage\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\UploadImage\\\":9:{s:9:\\\"\\u0000*\\u0000design\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Design\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Design]. in C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:479\nStack trace:\n#0 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\UploadImage->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\UploadImage->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\UploadImage->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:20:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#18 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(1021): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(275): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(149): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\designhouse\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', '2023-03-24 03:30:29'),
(3, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\UploadImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadImage\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\UploadImage\\\":9:{s:9:\\\"\\u0000*\\u0000design\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Design\\\";s:2:\\\"id\\\";i:39;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Design]. in C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:479\nStack trace:\n#0 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\UploadImage->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\UploadImage->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\UploadImage->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:20:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#18 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(1021): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(275): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(149): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\designhouse\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', '2023-03-24 03:30:31'),
(4, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\UploadImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadImage\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\UploadImage\\\":9:{s:9:\\\"\\u0000*\\u0000design\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Design\\\";s:2:\\\"id\\\";i:40;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Design]. in C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:479\nStack trace:\n#0 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\UploadImage->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\UploadImage->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\UploadImage->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:20:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#18 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(1021): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(275): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(149): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\designhouse\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', '2023-03-24 03:30:31'),
(5, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\UploadImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadImage\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\UploadImage\\\":9:{s:9:\\\"\\u0000*\\u0000design\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Design\\\";s:2:\\\"id\\\";i:41;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Design]. in C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:479\nStack trace:\n#0 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\UploadImage->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\UploadImage->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\UploadImage->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:20:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#18 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(1021): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(275): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(149): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\designhouse\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', '2023-03-24 03:30:31'),
(6, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\UploadImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadImage\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\UploadImage\\\":9:{s:9:\\\"\\u0000*\\u0000design\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Design\\\";s:2:\\\"id\\\";i:42;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Design]. in C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:479\nStack trace:\n#0 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\UploadImage->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\UploadImage->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\UploadImage->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:20:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#18 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(1021): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(275): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(149): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\designhouse\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', '2023-03-24 03:30:31'),
(7, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\UploadImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadImage\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\UploadImage\\\":9:{s:9:\\\"\\u0000*\\u0000design\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Design\\\";s:2:\\\"id\\\";i:43;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Design]. in C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:479\nStack trace:\n#0 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\UploadImage->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\UploadImage->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\UploadImage->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:20:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#18 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(1021): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(275): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(149): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\designhouse\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', '2023-03-24 03:30:31');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(8, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\UploadImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadImage\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\UploadImage\\\":9:{s:9:\\\"\\u0000*\\u0000design\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Design\\\";s:2:\\\"id\\\";i:45;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Design]. in C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:479\nStack trace:\n#0 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\UploadImage->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\UploadImage->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\UploadImage->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:20:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#18 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(1021): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(275): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(149): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\designhouse\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', '2023-03-24 03:30:31'),
(9, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\UploadImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadImage\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\UploadImage\\\":9:{s:9:\\\"\\u0000*\\u0000design\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Design\\\";s:2:\\\"id\\\";i:46;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Design]. in C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:479\nStack trace:\n#0 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\UploadImage->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\UploadImage->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\UploadImage->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:20:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#18 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(1021): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(275): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(149): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\designhouse\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', '2023-03-24 03:30:31'),
(10, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\UploadImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadImage\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\UploadImage\\\":9:{s:9:\\\"\\u0000*\\u0000design\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Design\\\";s:2:\\\"id\\\";i:47;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Design]. in C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:479\nStack trace:\n#0 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\UploadImage->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\UploadImage->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\UploadImage->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:20:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#18 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(1021): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(275): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(149): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\designhouse\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', '2023-03-24 03:30:31'),
(11, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\UploadImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadImage\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\UploadImage\\\":9:{s:9:\\\"\\u0000*\\u0000design\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Design\\\";s:2:\\\"id\\\";i:48;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Design]. in C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:479\nStack trace:\n#0 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\UploadImage->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\UploadImage->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\UploadImage->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:20:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#18 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(1021): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(275): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(149): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\designhouse\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', '2023-03-24 03:30:31'),
(12, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\UploadImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadImage\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\UploadImage\\\":9:{s:9:\\\"\\u0000*\\u0000design\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Design\\\";s:2:\\\"id\\\";i:49;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Design]. in C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:479\nStack trace:\n#0 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\UploadImage->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\UploadImage->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\UploadImage->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:20:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#18 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(1021): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(275): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(149): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\designhouse\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', '2023-03-24 03:30:32'),
(13, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\UploadImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadImage\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\UploadImage\\\":9:{s:9:\\\"\\u0000*\\u0000design\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Design\\\";s:2:\\\"id\\\";i:50;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Design]. in C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:479\nStack trace:\n#0 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\UploadImage->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\UploadImage->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\UploadImage->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:20:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#18 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(1021): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(275): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\designhouse\\vendor\\symfony\\console\\Application.php(149): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\designhouse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\designhouse\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', '2023-03-24 03:30:32');

-- --------------------------------------------------------

--
-- Table structure for table `invitations`
--

CREATE TABLE `invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `recipient_email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invitations`
--

INSERT INTO `invitations` (`id`, `team_id`, `sender_id`, `recipient_email`, `token`, `created_at`, `updated_at`) VALUES
(4, 5, 7, 'chien@mail.com', '2e7c8d6b74e0d0902dafba3d5fcc8eed', '2023-03-21 20:18:54', '2023-03-21 20:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `likeable_type` varchar(255) NOT NULL,
  `likeable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `likeable_type`, `likeable_id`, `created_at`, `updated_at`) VALUES
(6, 1, 'App\\Models\\Design', 31, '2023-03-10 09:59:51', '2023-03-10 09:59:51'),
(8, 7, 'App\\Models\\Design', 29, '2023-03-24 02:51:28', '2023-03-24 02:51:28'),
(9, 8, 'App\\Models\\Design', 51, '2023-03-24 09:18:20', '2023-03-24 09:18:20'),
(10, 8, 'App\\Models\\Design', 44, '2023-03-24 09:18:34', '2023-03-24 09:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `last_read` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `chat_id`, `body`, `last_read`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Hi! I want to buy your design.', '2023-03-14 10:00:48', '2023-03-14 03:12:30', '2023-03-13 21:00:57', '2023-03-14 03:12:30'),
(2, 3, 2, 'Are you there?', NULL, '2023-03-14 09:05:57', '2023-03-13 21:20:25', '2023-03-13 21:20:25'),
(3, 3, 2, 'Yes', '2023-03-14 10:02:35', '2023-03-14 03:13:17', '2023-03-13 21:23:09', '2023-03-14 03:13:17'),
(4, 3, 3, 'Hello D.', '2023-03-14 10:02:14', NULL, '2023-03-13 21:24:37', '2023-03-14 03:02:14'),
(5, 3, 2, 'Hello chien.', NULL, NULL, '2023-03-14 03:19:49', '2023-03-14 03:19:49');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_03_01_085723_create_designs_table', 2),
(5, '2023_03_01_091820_add_fields_to_designs_table', 3),
(6, '2023_03_07_025612_create_jobs_table', 4),
(8, '2023_03_07_085937_create_taggable_table', 5),
(9, '2023_03_08_083128_create_comments_table', 6),
(10, '2023_03_09_191042_create_likes_table', 7),
(11, '2023_03_09_191651_create_likes_table', 8),
(12, '2023_03_10_095041_create_teams_table', 9),
(13, '2023_03_10_171925_create_teams_table', 10),
(14, '2023_03_11_074538_add_team_id_to_designs', 11),
(15, '2023_03_13_024539_create_invitations_table', 12),
(16, '2023_03_14_020245_create_messages_table', 13),
(17, '2023_03_14_021247_create_chats_table', 13),
(18, '2023_03_14_030001_create_chats_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`chat_id`, `user_id`) VALUES
(1, 1),
(2, 3),
(2, 1),
(3, 3),
(3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggable_taggables`
--

CREATE TABLE `taggable_taggables` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggable_taggables`
--

INSERT INTO `taggable_taggables` (`tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(2, 29, 'App\\Models\\Design', '2023-03-07 11:23:19', '2023-03-07 11:23:19'),
(3, 29, 'App\\Models\\Design', '2023-03-07 11:23:19', '2023-03-07 11:23:19'),
(4, 29, 'App\\Models\\Design', '2023-03-07 11:23:19', '2023-03-07 11:23:19'),
(5, 29, 'App\\Models\\Design', '2023-03-07 11:23:19', '2023-03-07 11:23:19'),
(6, 31, 'App\\Models\\Design', '2023-03-07 20:13:57', '2023-03-07 20:13:57'),
(7, 31, 'App\\Models\\Design', '2023-03-07 20:13:57', '2023-03-07 20:13:57'),
(8, 28, 'App\\Models\\Design', '2023-03-12 19:35:25', '2023-03-12 19:35:25'),
(8, 31, 'App\\Models\\Design', '2023-03-07 20:13:57', '2023-03-07 20:13:57'),
(8, 33, 'App\\Models\\Design', '2023-03-09 03:23:12', '2023-03-09 03:23:12'),
(9, 33, 'App\\Models\\Design', '2023-03-09 03:23:12', '2023-03-09 03:23:12'),
(10, 38, 'App\\Models\\Design', '2023-03-21 19:43:06', '2023-03-21 19:43:06'),
(11, 44, 'App\\Models\\Design', '2023-03-22 02:07:24', '2023-03-22 02:07:24'),
(11, 51, 'App\\Models\\Design', '2023-03-24 09:16:17', '2023-03-24 09:16:17'),
(11, 52, 'App\\Models\\Design', '2023-03-24 09:23:32', '2023-03-24 09:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `taggable_tags`
--

CREATE TABLE `taggable_tags` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `normalized` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggable_tags`
--

INSERT INTO `taggable_tags` (`tag_id`, `name`, `normalized`, `created_at`, `updated_at`) VALUES
(1, 'photoshop', 'photoshop', '2023-03-07 02:24:14', '2023-03-07 02:24:14'),
(2, 'room', 'room', '2023-03-07 02:24:14', '2023-03-07 02:24:14'),
(3, 'beautiful', 'beautiful', '2023-03-07 02:24:14', '2023-03-07 02:24:14'),
(4, 'Adobe Illustrator', 'adobe-illustrator', '2023-03-07 02:24:14', '2023-03-07 02:24:14'),
(5, 'My house', 'my-house', '2023-03-07 02:24:53', '2023-03-07 02:24:53'),
(6, 'Garden', 'garden', '2023-03-07 20:13:57', '2023-03-07 20:13:57'),
(7, 'flowers', 'flowers', '2023-03-07 20:13:57', '2023-03-07 20:13:57'),
(8, 'Design and Decoration', 'design-and-decoration', '2023-03-07 20:13:57', '2023-03-07 20:13:57'),
(9, 'kids', 'kids', '2023-03-09 03:20:46', '2023-03-09 03:20:46'),
(10, 'Cartoon', 'cartoon', '2023-03-21 11:34:37', '2023-03-21 11:34:37'),
(11, 'image', 'image', '2023-03-21 21:38:58', '2023-03-21 21:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `slug`, `owner_id`, `created_at`, `updated_at`) VALUES
(1, 'Love my house FC', 'love-my-house-fc', 1, '2023-03-10 10:22:11', '2023-03-10 10:22:11'),
(2, 'Design my room FC', 'design-my-room-fc', 3, '2023-03-10 10:23:51', '2023-03-10 10:23:51'),
(3, 'Beautiful House FC 2', 'beautiful-house-fc-2', 3, '2023-03-11 00:07:00', '2023-03-11 00:08:09'),
(4, 'Beautiful House FC 3', 'beautiful-house-fc-3', 3, '2023-03-13 02:02:36', '2023-03-13 02:08:59'),
(5, 'Circle FC', 'circle-fc', 7, '2023-03-21 11:42:16', '2023-03-21 11:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_user`
--

INSERT INTO `team_user` (`team_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-03-10 10:22:12', '2023-03-10 10:22:12'),
(2, 3, '2023-03-10 10:23:51', '2023-03-10 10:23:51'),
(3, 3, '2023-03-11 00:07:00', '2023-03-11 00:07:00'),
(4, 3, '2023-03-13 02:02:36', '2023-03-13 02:02:36'),
(4, 1, '2023-03-13 03:32:49', '2023-03-13 03:32:49'),
(5, 7, '2023-03-21 11:42:16', '2023-03-21 11:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `location` point NOT NULL,
  `formatted_address` varchar(255) DEFAULT NULL,
  `available_to_hire` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `tagline`, `about`, `location`, `formatted_address`, `available_to_hire`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Chien', 'chienchien', 'chien@mail.com', '2023-02-21 00:12:58', 'I am chien', 'i am vietnamese, i am from vietnam.', 0x, 'viet nam', 1, '$2y$10$W13ORZjJ1CEtnWyWxKlcZunXqxT40uRYkGa6grGStbWaQOZxv70ZG', NULL, '2023-02-21 00:12:22', '2023-03-15 02:35:20'),
(3, 'adminhere', 'chien', 'adminhere@mail.com', '2023-02-21 00:32:21', 'I am chien', 'i live in tokyo now.', 0x, 'Tokyo, japan', 1, '$2y$10$jFQivHK8o5517InPbxBoce7lXrLXBvqp1Mm.JZ9OB/i7oKD190WNG', 't0Ai4fEvuN7Iso10mf8Zc7f21T03Ynjn0FfYpUABXai5PN6fWpNVjga9fBzx', '2023-02-21 00:30:43', '2023-03-14 21:21:50'),
(5, 'Dongdmoon', 'dongdaemoon', 'd@mail.com', '2023-03-13 03:13:14', 'I am d', 'i am korean, i am from korea.', 0x0000000001010000008693347f4c073540f390291f82735a40, 'south korea', 1, '$2y$10$pzfrAd69J.y5FjgkV0ne9OaKZXTqAwFE7nqCtQ69yMF21GZl4a6dG', NULL, '2023-03-13 03:06:05', '2023-03-15 01:03:48'),
(6, 'sss', 'sss', 'a@a.com', NULL, NULL, NULL, 0x, NULL, 0, '$2y$10$h1K9Ipne7vI.xxj3lG5R5uup3ZXfpCQulB6a/4gERtgaSHDRdTPJW', NULL, '2023-03-18 22:22:31', '2023-03-18 22:22:31'),
(7, 'johny', 'Johny', 'johny@mail.com', '2023-03-19 03:35:24', NULL, NULL, 0x, NULL, 0, '$2y$10$QDAprrC6vrgsBChEwRWDbugeGEqG.eRnvxfa3NdqUQ3xo7iodb2Wa', NULL, '2023-03-19 00:33:08', '2023-03-19 03:35:24'),
(8, 'daisy', 'Daisy', 'daisy@mail.com', '2023-03-19 03:29:20', NULL, NULL, 0x, NULL, 0, '$2y$10$D44WFQYp1vALYd1PFHtmO.zDodXDBuE9rpmPxmZtEcWppqJfwUtyC', NULL, '2023-03-19 00:34:38', '2023-03-19 03:29:20'),
(9, 'tam', 'Tam', 'tam@mail.com', '2023-03-19 20:08:32', NULL, NULL, 0x, NULL, 0, '$2y$10$2G0bT/bmmoU13h9lldxNUOhfW/4.hx25/GV2Ws/yi0jsLkANXL5yS', NULL, '2023-03-19 20:07:50', '2023-03-19 20:08:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  ADD KEY `comments_user_id_index` (`user_id`);

--
-- Indexes for table `designs`
--
ALTER TABLE `designs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designs_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invitations_team_id_foreign` (`team_id`),
  ADD KEY `invitations_sender_id_foreign` (`sender_id`),
  ADD KEY `invitations_recipient_email_index` (`recipient_email`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_likeable_type_likeable_id_index` (`likeable_type`,`likeable_id`),
  ADD KEY `likes_user_id_index` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD KEY `participants_user_id_foreign` (`user_id`),
  ADD KEY `participants_chat_id_foreign` (`chat_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `taggable_taggables`
--
ALTER TABLE `taggable_taggables`
  ADD UNIQUE KEY `taggable_taggables_tag_id_taggable_id_taggable_type_unique` (`tag_id`,`taggable_id`,`taggable_type`),
  ADD KEY `i_taggable_fwd` (`tag_id`,`taggable_id`),
  ADD KEY `i_taggable_rev` (`taggable_id`,`tag_id`),
  ADD KEY `i_taggable_type` (`taggable_type`);

--
-- Indexes for table `taggable_tags`
--
ALTER TABLE `taggable_tags`
  ADD PRIMARY KEY (`tag_id`),
  ADD UNIQUE KEY `taggable_tags_normalized_unique` (`normalized`),
  ADD KEY `taggable_tags_normalized_index` (`normalized`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teams_slug_unique` (`slug`),
  ADD KEY `teams_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD KEY `team_user_team_id_foreign` (`team_id`),
  ADD KEY `team_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `designs`
--
ALTER TABLE `designs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `taggable_tags`
--
ALTER TABLE `taggable_tags`
  MODIFY `tag_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `designs`
--
ALTER TABLE `designs`
  ADD CONSTRAINT `designs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `invitations`
--
ALTER TABLE `invitations`
  ADD CONSTRAINT `invitations_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_chat_id_foreign` FOREIGN KEY (`chat_id`) REFERENCES `chats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `participants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `team_user`
--
ALTER TABLE `team_user`
  ADD CONSTRAINT `team_user_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
