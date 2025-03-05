-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2024 at 01:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_name_ban` varchar(255) DEFAULT NULL,
  `admin_mobile` varchar(255) NOT NULL,
  `designation_list_id` varchar(255) DEFAULT NULL,
  `admin_sign` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `nid_number` varchar(255) DEFAULT NULL,
  `nid_image` text DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `admin_image` text DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `admin_email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_name`, `admin_name_ban`, `admin_mobile`, `designation_list_id`, `admin_sign`, `address`, `nid_number`, `nid_image`, `present_address`, `admin_image`, `email`, `admin_email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'super admin1', 'super admin ban', '123456789', '1', NULL, NULL, NULL, NULL, NULL, 'public/uploads/1714371684202404292024-26-0417141156753614081457.png', 'resnovaltd@gmail.com', NULL, '$2y$10$/L7pd0x8rcV3XWjfUwvhmOylsnWXTlh8sEN05f.Ptj4yKHk9.JiHW', NULL, '2024-04-28 23:11:45', '2024-10-12 05:03:16'),
(5, 'মো: আমিনুল হক (শামিম)', NULL, '11111111111', 'সভাপতি', NULL, 'Bonani', '1111111111111', 'public/uploads/adminImage/2024-17-1017291522733493463433.jpg', 'Bonani', 'public/uploads/adminImage/2024-17-1017291522732068610721.jpg', 'admin@gmail.com', NULL, '$2y$10$NiMSs0eVNQnLSu/Ysvstge0KskGe1bKgPMk6mshMXpit.4.4X1cGS', NULL, '2024-07-22 11:10:02', '2024-10-18 22:53:47'),
(7, 'এনামুল হক মনি', NULL, '11111111111', 'প্রকাশক', NULL, 'বনানী ,ঢাকা', '121212121212121', 'public/uploads/adminImage/2024-19-1017293137039969378334.jpg', 'বনানী ,ঢাকা', 'public/uploads/adminImage/2024-19-1017293137038942086214.jpg', 'adminone@gmail.com', NULL, '$2y$10$feTK67YInlzk/fq3rghScunT4KIDJA.9cLi68Jr9B0/.Ue/Ogz.qy', NULL, '2024-10-18 22:55:03', '2024-10-18 22:55:03'),
(8, 'মঈন আব্দুল্লাহ', NULL, '11111111111', 'ভারপ্রাপ্ত সম্পাদক', NULL, 'বনানী ,ঢাকা', '121212121212121', 'public/uploads/adminImage/2024-19-1017293137885265483754.jpg', 'বনানী ,ঢাকা', 'public/uploads/adminImage/2024-19-1017293137883293041553.jpg', 'admintwo@gmail.com', NULL, '$2y$10$/wqGyUzoXxnBK0kJ0rmgf.csNYHPsC6a4OJ6DIgF1B2NpuqNqSq66', NULL, '2024-10-18 22:56:28', '2024-10-18 22:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `web_image` text DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `eng_name` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `image`, `priority`, `web_image`, `category_name`, `eng_name`, `category_slug`, `status`, `created_at`, `updated_at`) VALUES
(4, 'public/uploads/categoryImage/2024-19-0517160979459100032290.jpg', 1, 'public/uploads/categoryImage/2024-19-0517160979469202225802.png', 'বাংলাদেশ', 'Bangladesh', 'banglades', '1', '2024-05-18 23:52:26', '2024-10-17 23:24:31'),
(6, 'public/uploads/categoryImage/2024-19-0517160979902667885936.png', 2, 'public/uploads/categoryImage/2024-19-0517160979904949928449.png', 'আন্তর্জাতিক', 'International', 'antrjatik', '1', '2024-05-18 23:53:10', '2024-10-17 23:24:57'),
(7, 'public/uploads/categoryImage/2024-19-0517160980454967486376.png', 3, 'public/uploads/categoryImage/2024-19-0517160980465498787443.png', 'রাজনীতি', 'Politics', 'rajneeti', '1', '2024-05-18 23:54:06', '2024-10-17 23:26:01'),
(8, 'public/uploads/categoryImage/2024-19-0517160981339042882949.png', 4, 'public/uploads/categoryImage/2024-19-0517160981331187429872.png', 'খেলা', 'Sports', 'khela', '1', '2024-05-18 23:55:33', '2024-10-17 23:26:27'),
(9, NULL, 5, NULL, 'সারাদেশ', 'Country', 'sarades', '1', '2024-10-17 02:58:45', '2024-10-17 23:27:22'),
(10, NULL, 6, NULL, 'অর্থনীতি', 'Economy', 'orthneeti', '1', '2024-10-17 03:13:06', '2024-10-17 23:27:48'),
(11, NULL, 7, NULL, 'বিনোদন', 'Entertainment', 'binodn', '1', '2024-10-17 03:13:15', '2024-10-17 23:28:18'),
(12, NULL, 8, NULL, 'বিজ্ঞান ও প্রযুক্তি', 'Science and Technology', 'bijngan-oo-przukti', '1', '2024-10-17 03:13:34', '2024-10-17 23:28:42'),
(13, NULL, 9, NULL, 'শিক্ষাঙ্গন', 'Education', 'sikshangon', '1', '2024-10-17 03:13:44', '2024-10-17 23:29:16'),
(14, NULL, 10, NULL, 'অপরাধ ও বিচার', 'Crime and Justice', 'opradh-oo-bicar', '1', '2024-10-17 03:14:05', '2024-10-17 23:29:39'),
(15, NULL, 11, NULL, 'স্বাস্থ্য', 'Health', 'swasthz', '1', '2024-10-17 03:14:13', '2024-10-17 23:29:54'),
(16, NULL, 12, NULL, 'ফিচার', 'Feature', 'ficar', '1', '2024-10-17 03:14:24', '2024-10-17 23:30:09'),
(17, NULL, 13, NULL, 'অন্যান্য', 'Other', 'onzanz', '1', '2024-10-17 03:15:52', '2024-10-17 23:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `reward_point` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `admin_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone_number`, `email`, `address`, `type`, `reward_point`, `image`, `status`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'ewewqe', '11111111111', 'dg@gmail.com', 'বনানী ,ঢাকা', 'Regular', 'No', NULL, '1', '1', '2024-05-21 03:44:43', '2024-05-21 03:44:43'),
(2, 'customer One', '11111111111', 'dg@gmail.com', 'বনানী ,ঢাকা', 'Regular', 'No', NULL, '1', '1', '2024-05-21 03:45:07', '2024-05-21 03:45:07'),
(3, 'test1', '1', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-10 17:53:45', '2024-08-10 17:53:45'),
(4, 'Enayet_Test', '007', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-12 11:04:56', '2024-08-12 11:04:56'),
(5, 'asdas', '123456489', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-22 07:13:38', '2024-08-22 07:13:38'),
(6, 'Walking Customer', '01', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-22 13:24:34', '2024-08-22 13:24:34'),
(7, 'Walking Customer', '01', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-22 13:41:49', '2024-08-22 13:41:49'),
(8, 'Walking Customer', '03', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-22 13:52:40', '2024-08-22 13:52:40'),
(9, 'Walking Customer', '05', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-22 14:40:58', '2024-08-22 14:40:58'),
(10, 'Walking Customer', '01', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-23 08:46:41', '2024-08-23 08:46:41'),
(11, 'Walking Customer', '01', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-23 10:19:28', '2024-08-23 10:19:28'),
(12, 'Walking Customer', '05', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-23 10:36:19', '2024-08-23 10:36:19'),
(13, 'Walking Customer', '01', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-23 11:01:32', '2024-08-23 11:01:32'),
(14, 'Walking Customer', '01', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-23 15:06:05', '2024-08-23 15:06:05'),
(15, 'Walking Customer', '01', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-23 15:40:43', '2024-08-23 15:40:43'),
(16, 'Walking Customer', '01', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-24 13:25:45', '2024-08-24 13:25:45'),
(17, 'Walking Customer', '01', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-24 13:45:32', '2024-08-24 13:45:32'),
(18, 'Walking Customer', '02', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-24 15:37:28', '2024-08-24 15:37:28'),
(19, 'Walking Customer', '01', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-24 15:45:25', '2024-08-24 15:45:25'),
(20, 'Walking Customer', '01', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-25 19:20:40', '2024-08-25 19:20:40'),
(21, 'Walking Customer', '01', '0', NULL, 'Walk In Customer', NULL, NULL, '1', '2', '2024-08-25 20:31:38', '2024-08-25 20:31:38');

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
-- Table structure for table `image_links`
--

CREATE TABLE `image_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  `image_folder` varchar(255) DEFAULT NULL,
  `admin_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_links`
--

INSERT INTO `image_links` (`id`, `image_title`, `image_folder`, `admin_id`, `created_at`, `updated_at`) VALUES
(2, NULL, 'public/uploads/extraImage/2024-18-1017292683472585715569.jpg', '1', '2024-10-18 10:19:07', '2024-10-18 10:19:07'),
(3, NULL, 'public/uploads/extraImage/2024-19-1017293158458070461044.jpg', '1', '2024-10-18 23:30:45', '2024-10-18 23:30:45'),
(4, NULL, 'public/uploads/extraImage/2024-19-1017293158543976260480.jpg', '1', '2024-10-18 23:30:54', '2024-10-18 23:30:54'),
(5, NULL, 'public/uploads/extraImage/2024-19-1017293158623222497470.jpg', '1', '2024-10-18 23:31:02', '2024-10-18 23:31:02');

-- --------------------------------------------------------

--
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `ip_or_mac` varchar(255) NOT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `admin_id` varchar(255) DEFAULT NULL,
  `activity_time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_activities`
--

INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(4486, 'view dashboard', 'http://localhost/2024projectjuly/ShopManagement/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:19:03 am', '2024-10-04 17:19:03', '2024-10-04 17:19:03'),
(4487, 'vendor delete ', 'http://localhost/2024projectjuly/ShopManagement/admin/vendor/3', 'DELETE', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:19:08 am', '2024-10-04 17:19:09', '2024-10-04 17:19:09'),
(4488, 'view dashboard', 'http://localhost/2024projectjuly/ShopManagement/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:19:11 am', '2024-10-04 17:19:12', '2024-10-04 17:19:12'),
(4489, 'view dashboard', 'http://localhost/2024projectjuly/ShopManagement/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:20:08 am', '2024-10-04 17:20:09', '2024-10-04 17:20:09'),
(4490, 'view dashboard', 'http://localhost/2024projectjuly/ShopManagement/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:23:07 am', '2024-10-04 17:23:08', '2024-10-04 17:23:08'),
(4491, 'view dashboard', 'http://localhost/2024projectjuly/ShopManagement/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:24:13 am', '2024-10-04 17:24:13', '2024-10-04 17:24:13'),
(4492, 'vendor delete ', 'http://localhost/2024projectjuly/ShopManagement/admin/vendor/2', 'DELETE', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:24:42 am', '2024-10-04 17:24:43', '2024-10-04 17:24:43'),
(4493, 'view dashboard', 'http://localhost/2024projectjuly/ShopManagement/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:24:45 am', '2024-10-04 17:24:45', '2024-10-04 17:24:45'),
(4494, 'vendor delete ', 'http://localhost/2024projectjuly/ShopManagement/admin/vendor/1', 'DELETE', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:24:54 am', '2024-10-04 17:24:54', '2024-10-04 17:24:54'),
(4495, 'view dashboard', 'http://localhost/2024projectjuly/ShopManagement/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:26:26 am', '2024-10-04 17:26:26', '2024-10-04 17:26:26'),
(4496, 'Product Add', 'http://localhost/2024projectjuly/ShopManagement/admin/productList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:38:12 am', '2024-10-04 17:38:12', '2024-10-04 17:38:12'),
(4497, 'Product Add', 'http://localhost/2024projectjuly/ShopManagement/admin/productList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:43:09 am', '2024-10-04 17:43:09', '2024-10-04 17:43:09'),
(4498, 'Product Add', 'http://localhost/2024projectjuly/ShopManagement/admin/productList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:43:56 am', '2024-10-04 17:43:57', '2024-10-04 17:43:57'),
(4499, 'Product Add', 'http://localhost/2024projectjuly/ShopManagement/admin/productList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:44:09 am', '2024-10-04 17:44:09', '2024-10-04 17:44:09'),
(4500, 'Product Add', 'http://localhost/2024projectjuly/ShopManagement/admin/productList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:44:23 am', '2024-10-04 17:44:23', '2024-10-04 17:44:23'),
(4501, 'Product Add', 'http://localhost/2024projectjuly/ShopManagement/admin/productList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:44:36 am', '2024-10-04 17:44:36', '2024-10-04 17:44:36'),
(4502, 'Product Add', 'http://localhost/2024projectjuly/ShopManagement/admin/productList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:47:04 am', '2024-10-04 17:47:04', '2024-10-04 17:47:04'),
(4503, 'Product Add', 'http://localhost/2024projectjuly/ShopManagement/admin/productList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:47:36 am', '2024-10-04 17:47:37', '2024-10-04 17:47:37'),
(4504, 'Product View', 'http://localhost/2024projectjuly/ShopManagement/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:48:00 am', '2024-10-04 17:48:00', '2024-10-04 17:48:00'),
(4505, 'Product View', 'http://localhost/2024projectjuly/ShopManagement/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:59:33 am', '2024-10-04 17:59:34', '2024-10-04 17:59:34'),
(4506, 'Product View', 'http://localhost/2024projectjuly/ShopManagement/admin/productList/155/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:59:49 am', '2024-10-04 17:59:50', '2024-10-04 17:59:50'),
(4507, 'Product View', 'http://localhost/2024projectjuly/ShopManagement/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:00:01 am', '2024-10-04 18:00:01', '2024-10-04 18:00:01'),
(4508, 'Product View', 'http://localhost/2024projectjuly/ShopManagement/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:00:28 am', '2024-10-04 18:00:28', '2024-10-04 18:00:28'),
(4509, 'Product View', 'http://localhost/2024projectjuly/ShopManagement/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:01:32 am', '2024-10-04 18:01:33', '2024-10-04 18:01:33'),
(4510, 'Product Add', 'http://localhost/2024projectjuly/ShopManagement/admin/productList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:01:37 am', '2024-10-04 18:01:38', '2024-10-04 18:01:38'),
(4511, 'Product View', 'http://localhost/2024projectjuly/ShopManagement/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:03:28 am', '2024-10-04 18:03:28', '2024-10-04 18:03:28'),
(4512, 'Product View', 'http://localhost/2024projectjuly/ShopManagement/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:04:34 am', '2024-10-04 18:04:35', '2024-10-04 18:04:35'),
(4513, 'inventory list ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:06:21 am', '2024-10-04 18:06:22', '2024-10-04 18:06:22'),
(4514, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:06:36 am', '2024-10-04 18:06:36', '2024-10-04 18:06:36'),
(4515, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:10:39 am', '2024-10-04 18:10:40', '2024-10-04 18:10:40'),
(4516, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:11:08 am', '2024-10-04 18:11:09', '2024-10-04 18:11:09'),
(4517, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:11:20 am', '2024-10-04 18:11:21', '2024-10-04 18:11:21'),
(4518, 'view dashboard', 'http://localhost/2024projectjuly/ShopManagement/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:11:41 am', '2024-10-04 18:11:41', '2024-10-04 18:11:41'),
(4519, 'View System Information.', 'http://localhost/2024projectjuly/ShopManagement/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:11:50 am', '2024-10-04 18:11:51', '2024-10-04 18:11:51'),
(4520, 'System  Info Update.', 'http://localhost/2024projectjuly/ShopManagement/admin/systemInformation/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:12:16 am', '2024-10-04 18:12:17', '2024-10-04 18:12:17'),
(4521, 'View System Information.', 'http://localhost/2024projectjuly/ShopManagement/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:12:17 am', '2024-10-04 18:12:18', '2024-10-04 18:12:18'),
(4522, 'View System Information.', 'http://localhost/2024projectjuly/ShopManagement/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:13:09 am', '2024-10-04 18:13:09', '2024-10-04 18:13:09'),
(4523, 'View System Information.', 'http://localhost/2024projectjuly/ShopManagement/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:13:59 am', '2024-10-04 18:13:59', '2024-10-04 18:13:59'),
(4524, 'Unit list ', 'http://localhost/2024projectjuly/ShopManagement/admin/unit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:15:49 am', '2024-10-04 18:15:49', '2024-10-04 18:15:49'),
(4525, 'Unit update ', 'http://localhost/2024projectjuly/ShopManagement/admin/unit/3', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:16:16 am', '2024-10-04 18:16:17', '2024-10-04 18:16:17'),
(4526, 'Unit list ', 'http://localhost/2024projectjuly/ShopManagement/admin/unit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:16:17 am', '2024-10-04 18:16:18', '2024-10-04 18:16:18'),
(4527, 'Unit update ', 'http://localhost/2024projectjuly/ShopManagement/admin/unit/2', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:16:33 am', '2024-10-04 18:16:33', '2024-10-04 18:16:33'),
(4528, 'Unit list ', 'http://localhost/2024projectjuly/ShopManagement/admin/unit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:16:33 am', '2024-10-04 18:16:34', '2024-10-04 18:16:34'),
(4529, 'Unit update ', 'http://localhost/2024projectjuly/ShopManagement/admin/unit/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:16:53 am', '2024-10-04 18:16:53', '2024-10-04 18:16:53'),
(4530, 'Unit list ', 'http://localhost/2024projectjuly/ShopManagement/admin/unit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:16:53 am', '2024-10-04 18:16:54', '2024-10-04 18:16:54'),
(4531, 'inventory list ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:17:38 am', '2024-10-04 18:17:39', '2024-10-04 18:17:39'),
(4532, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:17:48 am', '2024-10-04 18:17:48', '2024-10-04 18:17:48'),
(4533, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:32:10 am', '2024-10-04 18:32:11', '2024-10-04 18:32:11'),
(4534, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:33:05 am', '2024-10-04 18:33:06', '2024-10-04 18:33:06'),
(4535, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:39:37 am', '2024-10-04 18:39:37', '2024-10-04 18:39:37'),
(4536, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:40:11 am', '2024-10-04 18:40:12', '2024-10-04 18:40:12'),
(4537, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:40:57 am', '2024-10-04 18:40:57', '2024-10-04 18:40:57'),
(4538, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:46:32 am', '2024-10-04 18:46:32', '2024-10-04 18:46:32'),
(4539, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:47:03 am', '2024-10-04 18:47:03', '2024-10-04 18:47:03'),
(4540, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:47:20 am', '2024-10-04 18:47:21', '2024-10-04 18:47:21'),
(4541, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:51:00 am', '2024-10-04 18:51:01', '2024-10-04 18:51:01'),
(4542, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:54:44 am', '2024-10-04 18:54:45', '2024-10-04 18:54:45'),
(4543, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:55:57 am', '2024-10-04 18:55:58', '2024-10-04 18:55:58'),
(4544, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:56:34 am', '2024-10-04 18:56:34', '2024-10-04 18:56:34'),
(4545, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:01:30 am', '2024-10-04 19:01:31', '2024-10-04 19:01:31'),
(4546, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:02:03 am', '2024-10-04 19:02:03', '2024-10-04 19:02:03'),
(4547, 'inventory Add ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:02:25 am', '2024-10-04 19:02:25', '2024-10-04 19:02:25'),
(4548, 'inventory list ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:10:05 am', '2024-10-04 19:10:06', '2024-10-04 19:10:06'),
(4549, 'Unit list ', 'http://localhost/2024projectjuly/ShopManagement/admin/unit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:14:45 am', '2024-10-04 19:14:46', '2024-10-04 19:14:46'),
(4550, 'Unit list ', 'http://localhost/2024projectjuly/ShopManagement/admin/unit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:15:22 am', '2024-10-04 19:15:22', '2024-10-04 19:15:22'),
(4551, 'inventory list ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:15:28 am', '2024-10-04 19:15:29', '2024-10-04 19:15:29'),
(4552, 'inventory list ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:17:28 am', '2024-10-04 19:17:29', '2024-10-04 19:17:29'),
(4553, 'inventory list ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:18:01 am', '2024-10-04 19:18:02', '2024-10-04 19:18:02'),
(4554, 'inventory list ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:24:06 am', '2024-10-04 19:24:07', '2024-10-04 19:24:07'),
(4555, 'inventory list ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:24:53 am', '2024-10-04 19:24:54', '2024-10-04 19:24:54'),
(4556, 'inventory list ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:25:51 am', '2024-10-04 19:25:52', '2024-10-04 19:25:52'),
(4557, 'inventory list ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:26:22 am', '2024-10-04 19:26:22', '2024-10-04 19:26:22'),
(4558, 'inventory Update', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/3/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:26:44 am', '2024-10-04 19:26:45', '2024-10-04 19:26:45'),
(4559, 'inventory list ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:28:13 am', '2024-10-04 19:28:14', '2024-10-04 19:28:14'),
(4560, 'inventory Update', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/3/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:28:24 am', '2024-10-04 19:28:24', '2024-10-04 19:28:24'),
(4561, 'inventory Update', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/3/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:32:45 am', '2024-10-04 19:32:45', '2024-10-04 19:32:45'),
(4562, 'inventory Update', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory/3/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:44:58 am', '2024-10-04 19:44:59', '2024-10-04 19:44:59'),
(4563, 'inventory list ', 'http://localhost/2024projectjuly/ShopManagement/admin/inventory', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '07:45:08 am', '2024-10-04 19:45:09', '2024-10-04 19:45:09'),
(4564, 'Logged In.', 'http://localhost:8081/shopmanagement/admin/login', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:07:55 pm', '2024-10-09 04:07:55', '2024-10-09 04:07:55'),
(4565, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:07:56 pm', '2024-10-09 04:07:57', '2024-10-09 04:07:57'),
(4566, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:15:16 pm', '2024-10-09 04:15:16', '2024-10-09 04:15:16'),
(4567, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:17:33 pm', '2024-10-09 04:17:34', '2024-10-09 04:17:34'),
(4568, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:17:43 pm', '2024-10-09 04:17:44', '2024-10-09 04:17:44'),
(4569, 'inventory Add ', 'http://localhost:8081/shopmanagement/admin/inventory/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:31:30 pm', '2024-10-09 04:31:30', '2024-10-09 04:31:30'),
(4570, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:50:30 pm', '2024-10-09 04:50:30', '2024-10-09 04:50:30'),
(4571, 'inventory Update', 'http://localhost:8081/shopmanagement/admin/inventory/3/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:51:12 pm', '2024-10-09 04:51:12', '2024-10-09 04:51:12'),
(4572, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:42:15 pm', '2024-10-10 00:42:16', '2024-10-10 00:42:16'),
(4573, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:45:28 pm', '2024-10-10 00:45:28', '2024-10-10 00:45:28'),
(4574, 'inventory Add ', 'http://localhost:8081/shopmanagement/admin/inventory/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:46:09 pm', '2024-10-10 00:46:10', '2024-10-10 00:46:10'),
(4575, 'Product Add', 'http://localhost:8081/shopmanagement/admin/productList/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:46:37 pm', '2024-10-10 00:46:37', '2024-10-10 00:46:37'),
(4576, 'Product View', 'http://localhost:8081/shopmanagement/admin/productList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:46:41 pm', '2024-10-10 00:46:42', '2024-10-10 00:46:42'),
(4577, 'Product View', 'http://localhost:8081/shopmanagement/admin/productList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:50:27 pm', '2024-10-10 00:50:27', '2024-10-10 00:50:27'),
(4578, 'Product View', 'http://localhost:8081/shopmanagement/admin/productList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:50:54 pm', '2024-10-10 00:50:55', '2024-10-10 00:50:55'),
(4579, 'Product View', 'http://localhost:8081/shopmanagement/admin/productList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:54:23 pm', '2024-10-10 00:54:23', '2024-10-10 00:54:23'),
(4580, 'Product View', 'http://localhost:8081/shopmanagement/admin/productList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:54:41 pm', '2024-10-10 00:54:41', '2024-10-10 00:54:41'),
(4581, 'Product View', 'http://localhost:8081/shopmanagement/admin/productList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:55:01 pm', '2024-10-10 00:55:02', '2024-10-10 00:55:02'),
(4582, 'Product Add', 'http://localhost:8081/shopmanagement/admin/productList/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:55:05 pm', '2024-10-10 00:55:06', '2024-10-10 00:55:06'),
(4583, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:55:14 pm', '2024-10-10 00:55:15', '2024-10-10 00:55:15'),
(4584, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:55:18 pm', '2024-10-10 00:55:19', '2024-10-10 00:55:19'),
(4585, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:55:29 pm', '2024-10-10 00:55:29', '2024-10-10 00:55:29'),
(4586, 'inventory Add ', 'http://localhost:8081/shopmanagement/admin/inventory/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:55:42 pm', '2024-10-10 00:55:43', '2024-10-10 00:55:43'),
(4587, 'Product View', 'http://localhost:8081/shopmanagement/admin/productList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:00:01 pm', '2024-10-10 01:00:01', '2024-10-10 01:00:01'),
(4588, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:00:08 pm', '2024-10-10 01:00:09', '2024-10-10 01:00:09'),
(4589, 'product delete ', 'http://localhost:8081/shopmanagement/admin/inventory/5', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:01:51 pm', '2024-10-10 01:01:51', '2024-10-10 01:01:51'),
(4590, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:01:52 pm', '2024-10-10 01:01:52', '2024-10-10 01:01:52'),
(4591, 'product delete ', 'http://localhost:8081/shopmanagement/admin/inventory/3', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:01:57 pm', '2024-10-10 01:01:57', '2024-10-10 01:01:57'),
(4592, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:01:58 pm', '2024-10-10 01:01:58', '2024-10-10 01:01:58'),
(4593, 'inventory Add ', 'http://localhost:8081/shopmanagement/admin/inventory/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:02:03 pm', '2024-10-10 01:02:04', '2024-10-10 01:02:04'),
(4594, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:07:15 pm', '2024-10-10 01:07:15', '2024-10-10 01:07:15'),
(4595, 'Product View', 'http://localhost:8081/shopmanagement/admin/productList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:07:28 pm', '2024-10-10 01:07:29', '2024-10-10 01:07:29'),
(4596, 'Product Add', 'http://localhost:8081/shopmanagement/admin/productList/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:07:32 pm', '2024-10-10 01:07:32', '2024-10-10 01:07:32'),
(4597, 'Product View', 'http://localhost:8081/shopmanagement/admin/productList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:08:33 pm', '2024-10-10 01:08:33', '2024-10-10 01:08:33'),
(4598, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:08:42 pm', '2024-10-10 01:08:42', '2024-10-10 01:08:42'),
(4599, 'inventory Add ', 'http://localhost:8081/shopmanagement/admin/inventory/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:09:20 pm', '2024-10-10 01:09:21', '2024-10-10 01:09:21'),
(4600, 'inventory Add ', 'http://localhost:8081/shopmanagement/admin/inventory/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:09:32 pm', '2024-10-10 01:09:33', '2024-10-10 01:09:33'),
(4601, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:09:47 pm', '2024-10-10 01:09:47', '2024-10-10 01:09:47'),
(4602, 'inventory Add ', 'http://localhost:8081/shopmanagement/admin/inventory/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:09:53 pm', '2024-10-10 01:09:53', '2024-10-10 01:09:53'),
(4603, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:10:04 pm', '2024-10-10 01:10:04', '2024-10-10 01:10:04'),
(4604, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:10:50 pm', '2024-10-10 01:10:50', '2024-10-10 01:10:50'),
(4605, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:12:07 pm', '2024-10-10 01:12:07', '2024-10-10 01:12:07'),
(4606, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:18:16 pm', '2024-10-10 01:18:16', '2024-10-10 01:18:16'),
(4607, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:18:35 pm', '2024-10-10 01:18:35', '2024-10-10 01:18:35'),
(4608, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:20:40 pm', '2024-10-10 01:20:41', '2024-10-10 01:20:41'),
(4609, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:38:11 pm', '2024-10-10 01:38:12', '2024-10-10 01:38:12'),
(4610, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:38:35 pm', '2024-10-10 01:38:35', '2024-10-10 01:38:35'),
(4611, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:44:22 pm', '2024-10-10 01:44:22', '2024-10-10 01:44:22'),
(4612, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:44:36 pm', '2024-10-10 01:44:36', '2024-10-10 01:44:36'),
(4613, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:44:59 pm', '2024-10-10 01:44:59', '2024-10-10 01:44:59'),
(4614, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:45:14 pm', '2024-10-10 01:45:14', '2024-10-10 01:45:14'),
(4615, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:47:00 pm', '2024-10-10 01:47:01', '2024-10-10 01:47:01'),
(4616, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:56:17 pm', '2024-10-10 01:56:18', '2024-10-10 01:56:18'),
(4617, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:56:42 pm', '2024-10-10 01:56:43', '2024-10-10 01:56:43'),
(4618, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:57:38 pm', '2024-10-10 01:57:39', '2024-10-10 01:57:39'),
(4619, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:57:57 pm', '2024-10-10 01:57:58', '2024-10-10 01:57:58'),
(4620, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:58:44 pm', '2024-10-10 01:58:44', '2024-10-10 01:58:44'),
(4621, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:00:21 pm', '2024-10-10 02:00:21', '2024-10-10 02:00:21'),
(4622, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:00:40 pm', '2024-10-10 02:00:41', '2024-10-10 02:00:41'),
(4623, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:01:01 pm', '2024-10-10 02:01:01', '2024-10-10 02:01:01'),
(4624, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:19:59 pm', '2024-10-10 02:20:00', '2024-10-10 02:20:00'),
(4625, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:20:22 pm', '2024-10-10 02:20:22', '2024-10-10 02:20:22'),
(4626, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:21:19 pm', '2024-10-10 02:21:20', '2024-10-10 02:21:20'),
(4627, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:27:33 pm', '2024-10-10 02:27:34', '2024-10-10 02:27:34'),
(4628, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:29:43 pm', '2024-10-10 02:29:43', '2024-10-10 02:29:43'),
(4629, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:35:38 pm', '2024-10-10 02:35:38', '2024-10-10 02:35:38'),
(4630, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:36:24 pm', '2024-10-10 02:36:25', '2024-10-10 02:36:25'),
(4631, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:36:43 pm', '2024-10-10 02:36:44', '2024-10-10 02:36:44'),
(4632, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:58:50 pm', '2024-10-10 02:58:51', '2024-10-10 02:58:51'),
(4633, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:59:27 pm', '2024-10-10 02:59:27', '2024-10-10 02:59:27'),
(4634, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:59:54 pm', '2024-10-10 02:59:54', '2024-10-10 02:59:54'),
(4635, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:00:17 pm', '2024-10-10 03:00:17', '2024-10-10 03:00:17'),
(4636, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:00:36 pm', '2024-10-10 03:00:36', '2024-10-10 03:00:36'),
(4637, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:01:18 pm', '2024-10-10 03:01:18', '2024-10-10 03:01:18'),
(4638, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:01:38 pm', '2024-10-10 03:01:38', '2024-10-10 03:01:38'),
(4639, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:07:54 pm', '2024-10-10 03:07:54', '2024-10-10 03:07:54'),
(4640, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:09:49 pm', '2024-10-10 03:09:50', '2024-10-10 03:09:50'),
(4641, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:09:55 pm', '2024-10-10 03:09:56', '2024-10-10 03:09:56'),
(4642, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:35:16 pm', '2024-10-10 03:35:16', '2024-10-10 03:35:16');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(4643, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:46:05 pm', '2024-10-10 03:46:06', '2024-10-10 03:46:06'),
(4644, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:46:56 pm', '2024-10-10 03:46:56', '2024-10-10 03:46:56'),
(4645, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:06:33 pm', '2024-10-10 04:06:33', '2024-10-10 04:06:33'),
(4646, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:07:22 pm', '2024-10-10 04:07:22', '2024-10-10 04:07:22'),
(4647, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:07:48 pm', '2024-10-10 04:07:48', '2024-10-10 04:07:48'),
(4648, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:08:00 pm', '2024-10-10 04:08:01', '2024-10-10 04:08:01'),
(4649, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:09:01 pm', '2024-10-10 04:09:01', '2024-10-10 04:09:01'),
(4650, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:09:34 pm', '2024-10-10 04:09:34', '2024-10-10 04:09:34'),
(4651, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:09:48 pm', '2024-10-10 04:09:48', '2024-10-10 04:09:48'),
(4652, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:11:18 pm', '2024-10-10 04:11:19', '2024-10-10 04:11:19'),
(4653, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:14:00 pm', '2024-10-10 04:14:01', '2024-10-10 04:14:01'),
(4654, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/225/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:22:00 pm', '2024-10-10 04:22:01', '2024-10-10 04:22:01'),
(4655, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/225/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:25:24 pm', '2024-10-10 04:25:25', '2024-10-10 04:25:25'),
(4656, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/225/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:26:24 pm', '2024-10-10 04:26:24', '2024-10-10 04:26:24'),
(4657, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/225/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:26:43 pm', '2024-10-10 04:26:44', '2024-10-10 04:26:44'),
(4658, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:01:11 pm', '2024-10-10 05:01:12', '2024-10-10 05:01:12'),
(4659, 'Logged Out.', 'http://localhost:8081/shopmanagement/admin/logout/submit', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:09:32 pm', '2024-10-10 05:09:33', '2024-10-10 05:09:33'),
(4660, 'Logged In.', 'http://localhost:8081/shopmanagement/admin/login', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:37:13 am', '2024-10-11 23:37:16', '2024-10-11 23:37:16'),
(4661, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:37:18 am', '2024-10-11 23:37:19', '2024-10-11 23:37:19'),
(4662, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:38:07 am', '2024-10-11 23:38:07', '2024-10-11 23:38:07'),
(4663, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:45:13 am', '2024-10-11 23:45:13', '2024-10-11 23:45:13'),
(4664, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:50:56 am', '2024-10-11 23:50:56', '2024-10-11 23:50:56'),
(4665, 'Logged In.', 'http://localhost:8081/shopmanagement/admin/login', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:02:09 pm', '2024-10-12 00:02:10', '2024-10-12 00:02:10'),
(4666, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:02:11 pm', '2024-10-12 00:02:11', '2024-10-12 00:02:11'),
(4667, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:02:34 pm', '2024-10-12 00:02:34', '2024-10-12 00:02:34'),
(4668, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:04:26 pm', '2024-10-12 00:04:26', '2024-10-12 00:04:26'),
(4669, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:04:52 pm', '2024-10-12 00:04:53', '2024-10-12 00:04:53'),
(4670, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:04:56 pm', '2024-10-12 00:04:57', '2024-10-12 00:04:57'),
(4671, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:04:57 pm', '2024-10-12 00:04:58', '2024-10-12 00:04:58'),
(4672, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:05:09 pm', '2024-10-12 00:05:10', '2024-10-12 00:05:10'),
(4673, 'inventory Add ', 'http://localhost:8081/shopmanagement/admin/inventory/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:05:12 pm', '2024-10-12 00:05:12', '2024-10-12 00:05:12'),
(4674, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:16:06 pm', '2024-10-12 00:16:07', '2024-10-12 00:16:07'),
(4675, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:16:22 pm', '2024-10-12 00:16:22', '2024-10-12 00:16:22'),
(4676, 'inventory Update', 'http://localhost:8081/shopmanagement/admin/inventory/8/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:16:30 pm', '2024-10-12 00:16:31', '2024-10-12 00:16:31'),
(4677, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:16:34 pm', '2024-10-12 00:16:34', '2024-10-12 00:16:34'),
(4678, 'inventory Update', 'http://localhost:8081/shopmanagement/admin/inventory/7/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:16:41 pm', '2024-10-12 00:16:41', '2024-10-12 00:16:41'),
(4679, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:16:44 pm', '2024-10-12 00:16:45', '2024-10-12 00:16:45'),
(4680, 'inventory Update', 'http://localhost:8081/shopmanagement/admin/inventory/6/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:16:48 pm', '2024-10-12 00:16:49', '2024-10-12 00:16:49'),
(4681, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:16:52 pm', '2024-10-12 00:16:52', '2024-10-12 00:16:52'),
(4682, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:17:01 pm', '2024-10-12 00:17:01', '2024-10-12 00:17:01'),
(4683, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:35:14 pm', '2024-10-12 00:35:14', '2024-10-12 00:35:14'),
(4684, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:35:17 pm', '2024-10-12 00:35:17', '2024-10-12 00:35:17'),
(4685, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:01:19 pm', '2024-10-12 02:01:20', '2024-10-12 02:01:20'),
(4686, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:01:56 pm', '2024-10-12 02:01:56', '2024-10-12 02:01:56'),
(4687, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:02:38 pm', '2024-10-12 02:02:39', '2024-10-12 02:02:39'),
(4688, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:06:25 pm', '2024-10-12 02:06:25', '2024-10-12 02:06:25'),
(4689, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:08:38 pm', '2024-10-12 02:08:38', '2024-10-12 02:08:38'),
(4690, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:09:10 pm', '2024-10-12 02:09:10', '2024-10-12 02:09:10'),
(4691, 'Logged Out.', 'http://localhost:8081/shopmanagement/admin/logout/submit', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:09:19 pm', '2024-10-12 02:09:19', '2024-10-12 02:09:19'),
(4692, 'Logged In.', 'http://localhost:8081/shopmanagement/admin/login', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:13:59 pm', '2024-10-12 02:14:00', '2024-10-12 02:14:00'),
(4693, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:14:00 pm', '2024-10-12 02:14:01', '2024-10-12 02:14:01'),
(4694, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:14:10 pm', '2024-10-12 02:14:10', '2024-10-12 02:14:10'),
(4695, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:14:11 pm', '2024-10-12 02:14:11', '2024-10-12 02:14:11'),
(4696, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:14:18 pm', '2024-10-12 02:14:19', '2024-10-12 02:14:19'),
(4697, 'Logged In.', 'http://localhost:8081/shopmanagement/admin/login', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:01:56 pm', '2024-10-12 03:01:57', '2024-10-12 03:01:57'),
(4698, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:01:58 pm', '2024-10-12 03:01:59', '2024-10-12 03:01:59'),
(4699, 'Logged Out.', 'http://localhost:8081/shopmanagement/admin/logout/submit', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:02:33 pm', '2024-10-12 03:02:33', '2024-10-12 03:02:33'),
(4700, 'Logged In.', 'http://localhost:8081/shopmanagement/admin/login', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:04:24 pm', '2024-10-12 03:04:25', '2024-10-12 03:04:25'),
(4701, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:04:25 pm', '2024-10-12 03:04:26', '2024-10-12 03:04:26'),
(4702, 'Product View', 'http://localhost:8081/shopmanagement/admin/productList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:11:01 pm', '2024-10-12 03:11:01', '2024-10-12 03:11:01'),
(4703, 'Product View', 'http://localhost:8081/shopmanagement/admin/productList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:11:43 pm', '2024-10-12 03:11:43', '2024-10-12 03:11:43'),
(4704, 'Product Add', 'http://localhost:8081/shopmanagement/admin/productList/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:11:47 pm', '2024-10-12 03:11:47', '2024-10-12 03:11:47'),
(4705, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:12:36 pm', '2024-10-12 03:12:36', '2024-10-12 03:12:36'),
(4706, 'Unit store ', 'http://localhost:8081/shopmanagement/admin/unit', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:12:53 pm', '2024-10-12 03:12:54', '2024-10-12 03:12:54'),
(4707, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:12:54 pm', '2024-10-12 03:12:55', '2024-10-12 03:12:55'),
(4708, 'Unit store ', 'http://localhost:8081/shopmanagement/admin/unit', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:13:04 pm', '2024-10-12 03:13:04', '2024-10-12 03:13:04'),
(4709, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:13:05 pm', '2024-10-12 03:13:05', '2024-10-12 03:13:05'),
(4710, 'Unit update ', 'http://localhost:8081/shopmanagement/admin/unit/5', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:13:39 pm', '2024-10-12 03:13:39', '2024-10-12 03:13:39'),
(4711, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:13:39 pm', '2024-10-12 03:13:40', '2024-10-12 03:13:40'),
(4712, 'Unit update ', 'http://localhost:8081/shopmanagement/admin/unit/4', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:13:50 pm', '2024-10-12 03:13:50', '2024-10-12 03:13:50'),
(4713, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:13:50 pm', '2024-10-12 03:13:50', '2024-10-12 03:13:50'),
(4714, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:14:16 pm', '2024-10-12 03:14:16', '2024-10-12 03:14:16'),
(4715, 'inventory Add ', 'http://localhost:8081/shopmanagement/admin/inventory/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:14:23 pm', '2024-10-12 03:14:23', '2024-10-12 03:14:23'),
(4716, 'inventory Add ', 'http://localhost:8081/shopmanagement/admin/inventory/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:14:43 pm', '2024-10-12 03:14:44', '2024-10-12 03:14:44'),
(4717, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:16:18 pm', '2024-10-12 03:16:18', '2024-10-12 03:16:18'),
(4718, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:16:51 pm', '2024-10-12 03:16:51', '2024-10-12 03:16:51'),
(4719, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:17:00 pm', '2024-10-12 03:17:01', '2024-10-12 03:17:01'),
(4720, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:21:58 pm', '2024-10-12 03:21:58', '2024-10-12 03:21:58'),
(4721, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:23:21 pm', '2024-10-12 03:23:21', '2024-10-12 03:23:21'),
(4722, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:23:25 pm', '2024-10-12 03:23:25', '2024-10-12 03:23:25'),
(4723, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:25:22 pm', '2024-10-12 03:25:23', '2024-10-12 03:25:23'),
(4724, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:29:39 pm', '2024-10-12 03:29:40', '2024-10-12 03:29:40'),
(4725, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:29:51 pm', '2024-10-12 03:29:52', '2024-10-12 03:29:52'),
(4726, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:30:34 pm', '2024-10-12 03:30:34', '2024-10-12 03:30:34'),
(4727, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:30:59 pm', '2024-10-12 03:30:59', '2024-10-12 03:30:59'),
(4728, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:31:34 pm', '2024-10-12 03:31:35', '2024-10-12 03:31:35'),
(4729, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:32:11 pm', '2024-10-12 03:32:11', '2024-10-12 03:32:11'),
(4730, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:33:26 pm', '2024-10-12 03:33:27', '2024-10-12 03:33:27'),
(4731, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:33:51 pm', '2024-10-12 03:33:52', '2024-10-12 03:33:52'),
(4732, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:38:10 pm', '2024-10-12 03:38:10', '2024-10-12 03:38:10'),
(4733, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:38:53 pm', '2024-10-12 03:38:53', '2024-10-12 03:38:53'),
(4734, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:41:16 pm', '2024-10-12 03:41:16', '2024-10-12 03:41:16'),
(4735, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:42:07 pm', '2024-10-12 03:42:08', '2024-10-12 03:42:08'),
(4736, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:42:24 pm', '2024-10-12 03:42:24', '2024-10-12 03:42:24'),
(4737, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:42:39 pm', '2024-10-12 03:42:39', '2024-10-12 03:42:39'),
(4738, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:55:38 pm', '2024-10-12 03:55:39', '2024-10-12 03:55:39'),
(4739, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:55:51 pm', '2024-10-12 03:55:52', '2024-10-12 03:55:52'),
(4740, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:57:12 pm', '2024-10-12 03:57:12', '2024-10-12 03:57:12'),
(4741, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:57:41 pm', '2024-10-12 03:57:42', '2024-10-12 03:57:42'),
(4742, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:57:59 pm', '2024-10-12 03:57:59', '2024-10-12 03:57:59'),
(4743, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:04:33 pm', '2024-10-12 04:04:33', '2024-10-12 04:04:33'),
(4744, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:05:24 pm', '2024-10-12 04:05:25', '2024-10-12 04:05:25'),
(4745, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:06:09 pm', '2024-10-12 04:06:09', '2024-10-12 04:06:09'),
(4746, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:06:20 pm', '2024-10-12 04:06:21', '2024-10-12 04:06:21'),
(4747, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:08:30 pm', '2024-10-12 04:08:30', '2024-10-12 04:08:30'),
(4748, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:08:55 pm', '2024-10-12 04:08:56', '2024-10-12 04:08:56'),
(4749, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:09:54 pm', '2024-10-12 04:09:54', '2024-10-12 04:09:54'),
(4750, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:13:52 pm', '2024-10-12 04:13:53', '2024-10-12 04:13:53'),
(4751, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:14:19 pm', '2024-10-12 04:14:19', '2024-10-12 04:14:19'),
(4752, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:14:45 pm', '2024-10-12 04:14:46', '2024-10-12 04:14:46'),
(4753, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:19:56 pm', '2024-10-12 04:19:57', '2024-10-12 04:19:57'),
(4754, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:20:49 pm', '2024-10-12 04:20:50', '2024-10-12 04:20:50'),
(4755, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:21:36 pm', '2024-10-12 04:21:36', '2024-10-12 04:21:36'),
(4756, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:22:05 pm', '2024-10-12 04:22:06', '2024-10-12 04:22:06'),
(4757, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/226/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:22:45 pm', '2024-10-12 04:22:46', '2024-10-12 04:22:46'),
(4758, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/226/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:23:46 pm', '2024-10-12 04:23:46', '2024-10-12 04:23:46'),
(4759, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/226/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:24:02 pm', '2024-10-12 04:24:02', '2024-10-12 04:24:02'),
(4760, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/226/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:24:17 pm', '2024-10-12 04:24:17', '2024-10-12 04:24:17'),
(4761, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/226/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:25:58 pm', '2024-10-12 04:25:58', '2024-10-12 04:25:58'),
(4762, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/226/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:26:42 pm', '2024-10-12 04:26:42', '2024-10-12 04:26:42'),
(4763, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/226/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:31:16 pm', '2024-10-12 04:31:17', '2024-10-12 04:31:17'),
(4764, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/226/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:31:36 pm', '2024-10-12 04:31:36', '2024-10-12 04:31:36'),
(4765, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/226/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:31:42 pm', '2024-10-12 04:31:43', '2024-10-12 04:31:43'),
(4766, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/226/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:34:05 pm', '2024-10-12 04:34:06', '2024-10-12 04:34:06'),
(4767, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/226/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:37:40 pm', '2024-10-12 04:37:41', '2024-10-12 04:37:41'),
(4768, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/226/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:38:55 pm', '2024-10-12 04:38:56', '2024-10-12 04:38:56'),
(4769, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/226/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:40:43 pm', '2024-10-12 04:40:44', '2024-10-12 04:40:44'),
(4770, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell/226/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:46:11 pm', '2024-10-12 04:46:12', '2024-10-12 04:46:12'),
(4771, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:46:25 pm', '2024-10-12 04:46:26', '2024-10-12 04:46:26'),
(4772, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:46:35 pm', '2024-10-12 04:46:36', '2024-10-12 04:46:36'),
(4773, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:49:38 pm', '2024-10-12 04:49:39', '2024-10-12 04:49:39'),
(4774, 'Unit delete ', 'http://localhost:8081/shopmanagement/admin/unit/4', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:49:43 pm', '2024-10-12 04:49:44', '2024-10-12 04:49:44'),
(4775, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:49:44 pm', '2024-10-12 04:49:44', '2024-10-12 04:49:44'),
(4776, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:51:11 pm', '2024-10-12 04:51:11', '2024-10-12 04:51:11'),
(4777, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:52:28 pm', '2024-10-12 04:52:29', '2024-10-12 04:52:29'),
(4778, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:52:40 pm', '2024-10-12 04:52:41', '2024-10-12 04:52:41'),
(4779, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:53:13 pm', '2024-10-12 04:53:13', '2024-10-12 04:53:13'),
(4780, 'Unit delete ', 'http://localhost:8081/shopmanagement/admin/unit/5', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:53:18 pm', '2024-10-12 04:53:19', '2024-10-12 04:53:19'),
(4781, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:53:19 pm', '2024-10-12 04:53:19', '2024-10-12 04:53:19'),
(4782, 'Product View', 'http://localhost:8081/shopmanagement/admin/productList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:53:37 pm', '2024-10-12 04:53:37', '2024-10-12 04:53:37'),
(4783, 'Product Add', 'http://localhost:8081/shopmanagement/admin/productList/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:53:40 pm', '2024-10-12 04:53:40', '2024-10-12 04:53:40'),
(4784, 'Product Add', 'http://localhost:8081/shopmanagement/admin/productList/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:54:54 pm', '2024-10-12 04:54:55', '2024-10-12 04:54:55'),
(4785, 'Product Add', 'http://localhost:8081/shopmanagement/admin/productList/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:55:01 pm', '2024-10-12 04:55:01', '2024-10-12 04:55:01'),
(4786, 'Product Add', 'http://localhost:8081/shopmanagement/admin/productList/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:55:32 pm', '2024-10-12 04:55:33', '2024-10-12 04:55:33'),
(4787, 'Qr Code list', 'http://localhost:8081/shopmanagement/admin/sell', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:58:19 pm', '2024-10-12 04:58:19', '2024-10-12 04:58:19'),
(4788, 'Unit list ', 'http://localhost:8081/shopmanagement/admin/unit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:58:23 pm', '2024-10-12 04:58:24', '2024-10-12 04:58:24'),
(4789, 'inventory list ', 'http://localhost:8081/shopmanagement/admin/inventory', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:58:30 pm', '2024-10-12 04:58:31', '2024-10-12 04:58:31'),
(4790, 'inventory Add ', 'http://localhost:8081/shopmanagement/admin/inventory/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:59:51 pm', '2024-10-12 04:59:52', '2024-10-12 04:59:52'),
(4791, 'Logged Out.', 'http://localhost:8081/shopmanagement/admin/passwordUpdate', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:01:43 pm', '2024-10-12 05:01:43', '2024-10-12 05:01:43'),
(4792, 'Logged In.', 'http://localhost:8081/shopmanagement/admin/login', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:02:08 pm', '2024-10-12 05:02:08', '2024-10-12 05:02:08'),
(4793, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:02:09 pm', '2024-10-12 05:02:09', '2024-10-12 05:02:09'),
(4794, 'view profile.', 'http://localhost:8081/shopmanagement/admin/profile', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:02:19 pm', '2024-10-12 05:02:20', '2024-10-12 05:02:20'),
(4795, 'Profile Update.', 'http://localhost:8081/shopmanagement/admin/setting', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:03:15 pm', '2024-10-12 05:03:16', '2024-10-12 05:03:16'),
(4796, 'Logged Out.', 'http://localhost:8081/shopmanagement/admin/logout/submit', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:03:27 pm', '2024-10-12 05:03:27', '2024-10-12 05:03:27'),
(4797, 'Logged In.', 'http://localhost:8081/shopmanagement/admin/login', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:03:57 pm', '2024-10-12 05:03:57', '2024-10-12 05:03:57'),
(4798, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:03:58 pm', '2024-10-12 05:03:58', '2024-10-12 05:03:58'),
(4799, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:05:44 pm', '2024-10-12 05:05:45', '2024-10-12 05:05:45'),
(4800, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:05:59 pm', '2024-10-12 05:05:59', '2024-10-12 05:05:59'),
(4801, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:06:34 pm', '2024-10-12 05:06:34', '2024-10-12 05:06:34'),
(4802, 'Logged Out.', 'http://localhost:8081/shopmanagement/admin/logout/submit', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:09:25 pm', '2024-10-12 05:09:26', '2024-10-12 05:09:26'),
(4803, 'Logged In.', 'http://localhost:8081/shopmanagement/admin/login', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:22:04 pm', '2024-10-12 05:22:04', '2024-10-12 05:22:04'),
(4804, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:22:05 pm', '2024-10-12 05:22:05', '2024-10-12 05:22:05');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(4805, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:30:49 pm', '2024-10-12 05:30:49', '2024-10-12 05:30:49'),
(4806, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:31:27 pm', '2024-10-12 05:31:27', '2024-10-12 05:31:27'),
(4807, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:32:13 pm', '2024-10-12 05:32:14', '2024-10-12 05:32:14'),
(4808, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:32:25 pm', '2024-10-12 05:32:25', '2024-10-12 05:32:25'),
(4809, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:34:23 pm', '2024-10-12 05:34:24', '2024-10-12 05:34:24'),
(4810, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:38:58 pm', '2024-10-12 05:38:59', '2024-10-12 05:38:59'),
(4811, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:40:04 pm', '2024-10-12 05:40:04', '2024-10-12 05:40:04'),
(4812, 'view dashboard', 'http://localhost:8081/shopmanagement/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:43:29 pm', '2024-10-12 05:43:29', '2024-10-12 05:43:29'),
(4813, 'Logged Out.', 'http://localhost:8081/shopmanagement/admin/logout/submit', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:44:15 pm', '2024-10-12 05:44:16', '2024-10-12 05:44:16'),
(4814, 'Logged In.', 'http://localhost:8081/doinikbanglaNewsportal/admin/login', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:51:28 am', '2024-10-16 22:51:29', '2024-10-16 22:51:29'),
(4815, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:51:30 am', '2024-10-16 22:51:30', '2024-10-16 22:51:30'),
(4816, 'Logged Out.', 'http://localhost:8081/doinikbanglaNewsportal/admin/logout/submit', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:52:00 am', '2024-10-16 22:52:00', '2024-10-16 22:52:00'),
(4817, 'forgetPassword', 'http://localhost:8081/doinikbanglaNewsportal/admin/forgetPassword', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:57:37 am', '2024-10-16 22:57:37', '2024-10-16 22:57:37'),
(4818, 'forgetPassword', 'http://localhost:8081/doinikbanglaNewsportal/admin/forgetPassword', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:15:15 am', '2024-10-16 23:15:15', '2024-10-16 23:15:15'),
(4819, 'forgetPassword', 'http://localhost:8081/doinikbanglaNewsportal/admin/forgetPassword', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:16:06 am', '2024-10-16 23:16:06', '2024-10-16 23:16:06'),
(4820, 'forgetPassword', 'http://localhost:8081/doinikbanglaNewsportal/admin/forgetPassword', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:17:44 am', '2024-10-16 23:17:45', '2024-10-16 23:17:45'),
(4821, 'Logged In.', 'http://localhost:8081/doinikbanglaNewsportal/admin/login', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:41:25 am', '2024-10-16 23:41:25', '2024-10-16 23:41:25'),
(4822, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:41:26 am', '2024-10-16 23:41:26', '2024-10-16 23:41:26'),
(4823, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:44:09 am', '2024-10-16 23:44:09', '2024-10-16 23:44:09'),
(4824, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:45:38 am', '2024-10-16 23:45:38', '2024-10-16 23:45:38'),
(4825, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:46:00 am', '2024-10-16 23:46:01', '2024-10-16 23:46:01'),
(4826, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:48:11 am', '2024-10-16 23:48:12', '2024-10-16 23:48:12'),
(4827, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:48:49 am', '2024-10-16 23:48:50', '2024-10-16 23:48:50'),
(4828, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:51:16 am', '2024-10-16 23:51:17', '2024-10-16 23:51:17'),
(4829, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:52:40 am', '2024-10-16 23:52:41', '2024-10-16 23:52:41'),
(4830, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:52:48 am', '2024-10-16 23:52:48', '2024-10-16 23:52:48'),
(4831, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:53:31 am', '2024-10-16 23:53:32', '2024-10-16 23:53:32'),
(4832, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:54:17 am', '2024-10-16 23:54:17', '2024-10-16 23:54:17'),
(4833, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:55:30 am', '2024-10-16 23:55:31', '2024-10-16 23:55:31'),
(4834, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:55:59 am', '2024-10-16 23:55:59', '2024-10-16 23:55:59'),
(4835, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:56:21 am', '2024-10-16 23:56:22', '2024-10-16 23:56:22'),
(4836, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:57:14 am', '2024-10-16 23:57:14', '2024-10-16 23:57:14'),
(4837, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:57:28 am', '2024-10-16 23:57:28', '2024-10-16 23:57:28'),
(4838, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:00:02 pm', '2024-10-17 00:00:02', '2024-10-17 00:00:02'),
(4839, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:00:17 pm', '2024-10-17 00:00:18', '2024-10-17 00:00:18'),
(4840, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:00:45 pm', '2024-10-17 00:00:45', '2024-10-17 00:00:45'),
(4841, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:00:50 pm', '2024-10-17 00:00:51', '2024-10-17 00:00:51'),
(4842, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:01:11 pm', '2024-10-17 00:01:11', '2024-10-17 00:01:11'),
(4843, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:01:18 pm', '2024-10-17 00:01:18', '2024-10-17 00:01:18'),
(4844, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:02:52 pm', '2024-10-17 00:02:53', '2024-10-17 00:02:53'),
(4845, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:04:48 pm', '2024-10-17 00:04:48', '2024-10-17 00:04:48'),
(4846, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:05:19 pm', '2024-10-17 00:05:19', '2024-10-17 00:05:19'),
(4847, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:06:22 pm', '2024-10-17 00:06:23', '2024-10-17 00:06:23'),
(4848, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:06:39 pm', '2024-10-17 00:06:40', '2024-10-17 00:06:40'),
(4849, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:06:49 pm', '2024-10-17 00:06:49', '2024-10-17 00:06:49'),
(4850, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:06:57 pm', '2024-10-17 00:06:57', '2024-10-17 00:06:57'),
(4851, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:07:04 pm', '2024-10-17 00:07:05', '2024-10-17 00:07:05'),
(4852, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:07:14 pm', '2024-10-17 00:07:14', '2024-10-17 00:07:14'),
(4853, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:11:56 pm', '2024-10-17 00:11:56', '2024-10-17 00:11:56'),
(4854, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:12:07 pm', '2024-10-17 00:12:08', '2024-10-17 00:12:08'),
(4855, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:12:17 pm', '2024-10-17 00:12:17', '2024-10-17 00:12:17'),
(4856, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:12:52 pm', '2024-10-17 00:12:52', '2024-10-17 00:12:52'),
(4857, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:13:24 pm', '2024-10-17 00:13:24', '2024-10-17 00:13:24'),
(4858, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:13:42 pm', '2024-10-17 00:13:42', '2024-10-17 00:13:42'),
(4859, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:14:17 pm', '2024-10-17 00:14:17', '2024-10-17 00:14:17'),
(4860, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:14:20 pm', '2024-10-17 00:14:21', '2024-10-17 00:14:21'),
(4861, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:14:23 pm', '2024-10-17 00:14:23', '2024-10-17 00:14:23'),
(4862, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:20:10 pm', '2024-10-17 00:20:11', '2024-10-17 00:20:11'),
(4863, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:20:53 pm', '2024-10-17 00:20:54', '2024-10-17 00:20:54'),
(4864, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:22:36 pm', '2024-10-17 00:22:36', '2024-10-17 00:22:36'),
(4865, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:25:50 pm', '2024-10-17 00:25:51', '2024-10-17 00:25:51'),
(4866, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:26:49 pm', '2024-10-17 00:26:49', '2024-10-17 00:26:49'),
(4867, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:28:03 pm', '2024-10-17 00:28:03', '2024-10-17 00:28:03'),
(4868, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Linux; Android) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.109 Safari/537.36 CrKey/1.54.248666', '1', '12:29:49 pm', '2024-10-17 00:29:49', '2024-10-17 00:29:49'),
(4869, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Linux; Android) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.109 Safari/537.36 CrKey/1.54.248666', '1', '12:30:39 pm', '2024-10-17 00:30:39', '2024-10-17 00:30:39'),
(4870, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:31:15 pm', '2024-10-17 00:31:15', '2024-10-17 00:31:15'),
(4871, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Linux; Android) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.109 Safari/537.36 CrKey/1.54.248666', '1', '12:32:57 pm', '2024-10-17 00:32:58', '2024-10-17 00:32:58'),
(4872, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Linux; Android) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.109 Safari/537.36 CrKey/1.54.248666', '1', '12:33:54 pm', '2024-10-17 00:33:54', '2024-10-17 00:33:54'),
(4873, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Linux; Android) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.109 Safari/537.36 CrKey/1.54.248666', '1', '12:34:27 pm', '2024-10-17 00:34:27', '2024-10-17 00:34:27'),
(4874, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:35:01 pm', '2024-10-17 00:35:02', '2024-10-17 00:35:02'),
(4875, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:35:14 pm', '2024-10-17 00:35:15', '2024-10-17 00:35:15'),
(4876, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:35:44 pm', '2024-10-17 00:35:45', '2024-10-17 00:35:45'),
(4877, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:36:17 pm', '2024-10-17 00:36:17', '2024-10-17 00:36:17'),
(4878, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:36:33 pm', '2024-10-17 00:36:33', '2024-10-17 00:36:33'),
(4879, 'System  Info Update.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation/1', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:38:40 pm', '2024-10-17 00:38:41', '2024-10-17 00:38:41'),
(4880, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:38:42 pm', '2024-10-17 00:38:42', '2024-10-17 00:38:42'),
(4881, 'System  Info Update.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation/1', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:43:32 pm', '2024-10-17 00:43:33', '2024-10-17 00:43:33'),
(4882, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:43:33 pm', '2024-10-17 00:43:33', '2024-10-17 00:43:33'),
(4883, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:43:45 pm', '2024-10-17 00:43:45', '2024-10-17 00:43:45'),
(4884, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Linux; Android) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.109 Safari/537.36 CrKey/1.54.248666', '1', '12:44:28 pm', '2024-10-17 00:44:29', '2024-10-17 00:44:29'),
(4885, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:44:35 pm', '2024-10-17 00:44:35', '2024-10-17 00:44:35'),
(4886, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:44:42 pm', '2024-10-17 00:44:43', '2024-10-17 00:44:43'),
(4887, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:48:21 pm', '2024-10-17 00:48:22', '2024-10-17 00:48:22'),
(4888, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:48:28 pm', '2024-10-17 00:48:28', '2024-10-17 00:48:28'),
(4889, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:49:01 pm', '2024-10-17 00:49:01', '2024-10-17 00:49:01'),
(4890, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:49:43 pm', '2024-10-17 00:49:43', '2024-10-17 00:49:43'),
(4891, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:49:52 pm', '2024-10-17 00:49:52', '2024-10-17 00:49:52'),
(4892, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:50:24 pm', '2024-10-17 00:50:24', '2024-10-17 00:50:24'),
(4893, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:51:53 pm', '2024-10-17 00:51:53', '2024-10-17 00:51:53'),
(4894, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:52:06 pm', '2024-10-17 00:52:06', '2024-10-17 00:52:06'),
(4895, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:52:14 pm', '2024-10-17 00:52:14', '2024-10-17 00:52:14'),
(4896, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:52:34 pm', '2024-10-17 00:52:34', '2024-10-17 00:52:34'),
(4897, 'Create Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:53:06 pm', '2024-10-17 00:53:07', '2024-10-17 00:53:07'),
(4898, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:53:16 pm', '2024-10-17 00:53:17', '2024-10-17 00:53:17'),
(4899, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:53:33 pm', '2024-10-17 00:53:34', '2024-10-17 00:53:34'),
(4900, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:53:53 pm', '2024-10-17 00:53:53', '2024-10-17 00:53:53'),
(4901, 'View System Information.', 'http://localhost:8081/doinikbanglaNewsportal/admin/systemInformation', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:54:14 pm', '2024-10-17 00:54:14', '2024-10-17 00:54:14'),
(4902, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:54:18 pm', '2024-10-17 00:54:19', '2024-10-17 00:54:19'),
(4903, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:54:56 pm', '2024-10-17 00:54:56', '2024-10-17 00:54:56'),
(4904, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:55:19 pm', '2024-10-17 00:55:20', '2024-10-17 00:55:20'),
(4905, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:55:34 pm', '2024-10-17 00:55:34', '2024-10-17 00:55:34'),
(4906, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:55:57 pm', '2024-10-17 00:55:57', '2024-10-17 00:55:57'),
(4907, 'Create Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:57:44 pm', '2024-10-17 00:57:44', '2024-10-17 00:57:44'),
(4908, 'Create Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Linux; Android) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.109 Safari/537.36 CrKey/1.54.248666', '1', '12:59:14 pm', '2024-10-17 00:59:14', '2024-10-17 00:59:14'),
(4909, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:00:38 pm', '2024-10-17 01:00:38', '2024-10-17 01:00:38'),
(4910, 'Create Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:00:44 pm', '2024-10-17 01:00:44', '2024-10-17 01:00:44'),
(4911, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:02:54 pm', '2024-10-17 01:02:56', '2024-10-17 01:02:56'),
(4912, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:04:01 pm', '2024-10-17 01:04:01', '2024-10-17 01:04:01'),
(4913, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:07:39 pm', '2024-10-17 01:07:39', '2024-10-17 01:07:39'),
(4914, ' update permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/branch', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:09:48 pm', '2024-10-17 01:09:48', '2024-10-17 01:09:48'),
(4915, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:10:12 pm', '2024-10-17 01:10:13', '2024-10-17 01:10:13'),
(4916, ' update permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/branch', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:10:58 pm', '2024-10-17 01:10:59', '2024-10-17 01:10:59'),
(4917, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:10:59 pm', '2024-10-17 01:10:59', '2024-10-17 01:10:59'),
(4918, ' update permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/branch', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:11:27 pm', '2024-10-17 01:11:28', '2024-10-17 01:11:28'),
(4919, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:11:28 pm', '2024-10-17 01:11:28', '2024-10-17 01:11:28'),
(4920, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:11:51 pm', '2024-10-17 01:11:51', '2024-10-17 01:11:51'),
(4921, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Linux; Android) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.109 Safari/537.36 CrKey/1.54.248666', '1', '01:14:08 pm', '2024-10-17 01:14:09', '2024-10-17 01:14:09'),
(4922, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Linux; Android) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.109 Safari/537.36 CrKey/1.54.248666', '1', '01:15:49 pm', '2024-10-17 01:15:50', '2024-10-17 01:15:50'),
(4923, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:17:23 pm', '2024-10-17 01:17:23', '2024-10-17 01:17:23'),
(4924, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:19:59 pm', '2024-10-17 01:20:00', '2024-10-17 01:20:00'),
(4925, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:20:11 pm', '2024-10-17 01:20:12', '2024-10-17 01:20:12'),
(4926, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:20:14 pm', '2024-10-17 01:20:14', '2024-10-17 01:20:14'),
(4927, 'Create Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:20:18 pm', '2024-10-17 01:20:18', '2024-10-17 01:20:18'),
(4928, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:20:32 pm', '2024-10-17 01:20:32', '2024-10-17 01:20:32'),
(4929, ' update permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/branch', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:25:36 pm', '2024-10-17 01:25:36', '2024-10-17 01:25:36'),
(4930, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:25:37 pm', '2024-10-17 01:25:37', '2024-10-17 01:25:37'),
(4931, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:25:44 pm', '2024-10-17 01:25:45', '2024-10-17 01:25:45'),
(4932, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:25:54 pm', '2024-10-17 01:25:54', '2024-10-17 01:25:54'),
(4933, ' create permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:04 pm', '2024-10-17 01:26:04', '2024-10-17 01:26:04'),
(4934, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:04 pm', '2024-10-17 01:26:04', '2024-10-17 01:26:04'),
(4935, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:05 pm', '2024-10-17 01:26:05', '2024-10-17 01:26:05'),
(4936, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/133', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:11 pm', '2024-10-17 01:26:11', '2024-10-17 01:26:11'),
(4937, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:11 pm', '2024-10-17 01:26:11', '2024-10-17 01:26:11'),
(4938, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/128', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:15 pm', '2024-10-17 01:26:15', '2024-10-17 01:26:15'),
(4939, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:16 pm', '2024-10-17 01:26:16', '2024-10-17 01:26:16'),
(4940, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/33', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:25 pm', '2024-10-17 01:26:26', '2024-10-17 01:26:26'),
(4941, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:26 pm', '2024-10-17 01:26:26', '2024-10-17 01:26:26'),
(4942, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/15', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:40 pm', '2024-10-17 01:26:40', '2024-10-17 01:26:40'),
(4943, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:40 pm', '2024-10-17 01:26:41', '2024-10-17 01:26:41'),
(4944, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/112', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:48 pm', '2024-10-17 01:26:48', '2024-10-17 01:26:48'),
(4945, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:48 pm', '2024-10-17 01:26:48', '2024-10-17 01:26:48'),
(4946, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/103', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:52 pm', '2024-10-17 01:26:53', '2024-10-17 01:26:53'),
(4947, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:53 pm', '2024-10-17 01:26:53', '2024-10-17 01:26:53'),
(4948, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/95', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:58 pm', '2024-10-17 01:26:58', '2024-10-17 01:26:58'),
(4949, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:26:59 pm', '2024-10-17 01:26:59', '2024-10-17 01:26:59'),
(4950, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/99', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:03 pm', '2024-10-17 01:27:03', '2024-10-17 01:27:03'),
(4951, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:03 pm', '2024-10-17 01:27:03', '2024-10-17 01:27:03'),
(4952, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/85', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:07 pm', '2024-10-17 01:27:08', '2024-10-17 01:27:08'),
(4953, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:08 pm', '2024-10-17 01:27:08', '2024-10-17 01:27:08'),
(4954, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/73', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:12 pm', '2024-10-17 01:27:12', '2024-10-17 01:27:12'),
(4955, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:12 pm', '2024-10-17 01:27:13', '2024-10-17 01:27:13'),
(4956, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/69', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:20 pm', '2024-10-17 01:27:20', '2024-10-17 01:27:20'),
(4957, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:21 pm', '2024-10-17 01:27:21', '2024-10-17 01:27:21'),
(4958, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/77', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:30 pm', '2024-10-17 01:27:30', '2024-10-17 01:27:30'),
(4959, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:31 pm', '2024-10-17 01:27:31', '2024-10-17 01:27:31');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(4960, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/65', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:38 pm', '2024-10-17 01:27:38', '2024-10-17 01:27:38'),
(4961, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:39 pm', '2024-10-17 01:27:39', '2024-10-17 01:27:39'),
(4962, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/61', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:44 pm', '2024-10-17 01:27:45', '2024-10-17 01:27:45'),
(4963, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:45 pm', '2024-10-17 01:27:45', '2024-10-17 01:27:45'),
(4964, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/45', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:54 pm', '2024-10-17 01:27:54', '2024-10-17 01:27:54'),
(4965, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:56 pm', '2024-10-17 01:27:56', '2024-10-17 01:27:56'),
(4966, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/107', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:28:08 pm', '2024-10-17 01:28:08', '2024-10-17 01:28:08'),
(4967, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:28:09 pm', '2024-10-17 01:28:09', '2024-10-17 01:28:09'),
(4968, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/87', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:28:18 pm', '2024-10-17 01:28:18', '2024-10-17 01:28:18'),
(4969, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:28:18 pm', '2024-10-17 01:28:19', '2024-10-17 01:28:19'),
(4970, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/111', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:28:25 pm', '2024-10-17 01:28:25', '2024-10-17 01:28:25'),
(4971, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:28:26 pm', '2024-10-17 01:28:26', '2024-10-17 01:28:26'),
(4972, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/91', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:28:35 pm', '2024-10-17 01:28:36', '2024-10-17 01:28:36'),
(4973, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:28:36 pm', '2024-10-17 01:28:36', '2024-10-17 01:28:36'),
(4974, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/86', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:28:44 pm', '2024-10-17 01:28:45', '2024-10-17 01:28:45'),
(4975, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:28:45 pm', '2024-10-17 01:28:45', '2024-10-17 01:28:45'),
(4976, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/116', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:28:52 pm', '2024-10-17 01:28:52', '2024-10-17 01:28:52'),
(4977, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:28:53 pm', '2024-10-17 01:28:53', '2024-10-17 01:28:53'),
(4978, ' create permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:29:36 pm', '2024-10-17 01:29:36', '2024-10-17 01:29:36'),
(4979, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:29:37 pm', '2024-10-17 01:29:37', '2024-10-17 01:29:37'),
(4980, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:29:37 pm', '2024-10-17 01:29:38', '2024-10-17 01:29:38'),
(4981, ' create permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:30:26 pm', '2024-10-17 01:30:26', '2024-10-17 01:30:26'),
(4982, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:30:27 pm', '2024-10-17 01:30:27', '2024-10-17 01:30:27'),
(4983, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:30:27 pm', '2024-10-17 01:30:27', '2024-10-17 01:30:27'),
(4984, ' create permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:31:01 pm', '2024-10-17 01:31:01', '2024-10-17 01:31:01'),
(4985, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:31:02 pm', '2024-10-17 01:31:02', '2024-10-17 01:31:02'),
(4986, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:31:02 pm', '2024-10-17 01:31:02', '2024-10-17 01:31:02'),
(4987, ' create permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:33:27 pm', '2024-10-17 01:33:27', '2024-10-17 01:33:27'),
(4988, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:33:28 pm', '2024-10-17 01:33:28', '2024-10-17 01:33:28'),
(4989, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:33:28 pm', '2024-10-17 01:33:29', '2024-10-17 01:33:29'),
(4990, ' create permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:33:58 pm', '2024-10-17 01:33:58', '2024-10-17 01:33:58'),
(4991, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:33:58 pm', '2024-10-17 01:33:59', '2024-10-17 01:33:59'),
(4992, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:33:59 pm', '2024-10-17 01:33:59', '2024-10-17 01:33:59'),
(4993, ' create permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:34:56 pm', '2024-10-17 01:34:56', '2024-10-17 01:34:56'),
(4994, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:34:56 pm', '2024-10-17 01:34:56', '2024-10-17 01:34:56'),
(4995, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:34:57 pm', '2024-10-17 01:34:57', '2024-10-17 01:34:57'),
(4996, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:35:08 pm', '2024-10-17 01:35:09', '2024-10-17 01:35:09'),
(4997, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:35:14 pm', '2024-10-17 01:35:14', '2024-10-17 01:35:14'),
(4998, 'View Role Edit Page.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/1/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:35:20 pm', '2024-10-17 01:35:21', '2024-10-17 01:35:21'),
(4999, 'Delete Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/5', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:35:38 pm', '2024-10-17 01:35:38', '2024-10-17 01:35:38'),
(5000, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:35:39 pm', '2024-10-17 01:35:39', '2024-10-17 01:35:39'),
(5001, 'Delete Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/4', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:35:42 pm', '2024-10-17 01:35:42', '2024-10-17 01:35:42'),
(5002, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:35:43 pm', '2024-10-17 01:35:43', '2024-10-17 01:35:43'),
(5003, 'Delete Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/3', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:35:47 pm', '2024-10-17 01:35:47', '2024-10-17 01:35:47'),
(5004, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:35:47 pm', '2024-10-17 01:35:48', '2024-10-17 01:35:48'),
(5005, 'Delete Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/2', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:35:51 pm', '2024-10-17 01:35:51', '2024-10-17 01:35:51'),
(5006, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:35:51 pm', '2024-10-17 01:35:52', '2024-10-17 01:35:52'),
(5007, 'View Role Edit Page.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/1/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:35:56 pm', '2024-10-17 01:35:56', '2024-10-17 01:35:56'),
(5008, 'Update Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/1', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:36:02 pm', '2024-10-17 01:36:02', '2024-10-17 01:36:02'),
(5009, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:36:05 pm', '2024-10-17 01:36:05', '2024-10-17 01:36:05'),
(5010, 'Create Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:36:44 pm', '2024-10-17 01:36:44', '2024-10-17 01:36:44'),
(5011, 'Store Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:36:58 pm', '2024-10-17 01:36:58', '2024-10-17 01:36:58'),
(5012, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:37:02 pm', '2024-10-17 01:37:02', '2024-10-17 01:37:02'),
(5013, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:44:46 pm', '2024-10-17 01:44:47', '2024-10-17 01:44:47'),
(5014, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:45:28 pm', '2024-10-17 01:45:28', '2024-10-17 01:45:28'),
(5015, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:45:46 pm', '2024-10-17 01:45:46', '2024-10-17 01:45:46'),
(5016, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:46:33 pm', '2024-10-17 01:46:34', '2024-10-17 01:46:34'),
(5017, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:46:36 pm', '2024-10-17 01:46:37', '2024-10-17 01:46:37'),
(5018, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:46:41 pm', '2024-10-17 01:46:41', '2024-10-17 01:46:41'),
(5019, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:46:53 pm', '2024-10-17 01:46:53', '2024-10-17 01:46:53'),
(5020, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:48:57 pm', '2024-10-17 01:48:57', '2024-10-17 01:48:57'),
(5021, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:49:00 pm', '2024-10-17 01:49:01', '2024-10-17 01:49:01'),
(5022, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:49:52 pm', '2024-10-17 01:49:53', '2024-10-17 01:49:53'),
(5023, 'create employee ', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:50:02 pm', '2024-10-17 01:50:02', '2024-10-17 01:50:02'),
(5024, 'create employee ', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:51:09 pm', '2024-10-17 01:51:10', '2024-10-17 01:51:10'),
(5025, 'create employee ', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:51:44 pm', '2024-10-17 01:51:45', '2024-10-17 01:51:45'),
(5026, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:52:05 pm', '2024-10-17 01:52:06', '2024-10-17 01:52:06'),
(5027, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:52:18 pm', '2024-10-17 01:52:18', '2024-10-17 01:52:18'),
(5028, 'create employee ', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:52:44 pm', '2024-10-17 01:52:44', '2024-10-17 01:52:44'),
(5029, 'create employee ', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:54:22 pm', '2024-10-17 01:54:23', '2024-10-17 01:54:23'),
(5030, 'create employee ', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:54:45 pm', '2024-10-17 01:54:45', '2024-10-17 01:54:45'),
(5031, 'create employee ', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:55:25 pm', '2024-10-17 01:55:26', '2024-10-17 01:55:26'),
(5032, 'create employee ', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:56:17 pm', '2024-10-17 01:56:17', '2024-10-17 01:56:17'),
(5033, 'create employee ', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:58:27 pm', '2024-10-17 01:58:28', '2024-10-17 01:58:28'),
(5034, 'create employee ', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:58:54 pm', '2024-10-17 01:58:55', '2024-10-17 01:58:55'),
(5035, 'create employee ', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:59:11 pm', '2024-10-17 01:59:12', '2024-10-17 01:59:12'),
(5036, 'create employee ', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:59:18 pm', '2024-10-17 01:59:19', '2024-10-17 01:59:19'),
(5037, 'create employee ', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:00:18 pm', '2024-10-17 02:00:18', '2024-10-17 02:00:18'),
(5038, 'create employee ', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:00:40 pm', '2024-10-17 02:00:40', '2024-10-17 02:00:40'),
(5039, 'edit employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/5/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:02:08 pm', '2024-10-17 02:02:08', '2024-10-17 02:02:08'),
(5040, 'edit employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/5/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:03:45 pm', '2024-10-17 02:03:46', '2024-10-17 02:03:46'),
(5041, 'update employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/5', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:04:32 pm', '2024-10-17 02:04:33', '2024-10-17 02:04:33'),
(5042, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:04:33 pm', '2024-10-17 02:04:34', '2024-10-17 02:04:34'),
(5043, 'edit employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/4/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:04:40 pm', '2024-10-17 02:04:41', '2024-10-17 02:04:41'),
(5044, 'delete employee from list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/4', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:04:48 pm', '2024-10-17 02:04:49', '2024-10-17 02:04:49'),
(5045, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:04:49 pm', '2024-10-17 02:04:49', '2024-10-17 02:04:49'),
(5046, 'delete employee from list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/3', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:04:59 pm', '2024-10-17 02:04:59', '2024-10-17 02:04:59'),
(5047, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:05:00 pm', '2024-10-17 02:05:00', '2024-10-17 02:05:00'),
(5048, 'delete employee from list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user/2', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:05:07 pm', '2024-10-17 02:05:07', '2024-10-17 02:05:07'),
(5049, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:05:08 pm', '2024-10-17 02:05:08', '2024-10-17 02:05:08'),
(5050, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:05:41 pm', '2024-10-17 02:05:42', '2024-10-17 02:05:42'),
(5051, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:05:48 pm', '2024-10-17 02:05:49', '2024-10-17 02:05:49'),
(5052, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:06:36 pm', '2024-10-17 02:06:37', '2024-10-17 02:06:37'),
(5053, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:07:45 pm', '2024-10-17 02:07:45', '2024-10-17 02:07:45'),
(5054, 'view profile.', 'http://localhost:8081/doinikbanglaNewsportal/admin/profile', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:08:09 pm', '2024-10-17 02:08:10', '2024-10-17 02:08:10'),
(5055, 'view profile.', 'http://localhost:8081/doinikbanglaNewsportal/admin/profile', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:08:55 pm', '2024-10-17 02:08:56', '2024-10-17 02:08:56'),
(5056, 'view profile.', 'http://localhost:8081/doinikbanglaNewsportal/admin/profile', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:10:16 pm', '2024-10-17 02:10:17', '2024-10-17 02:10:17'),
(5057, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:11:50 pm', '2024-10-17 02:11:50', '2024-10-17 02:11:50'),
(5058, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:16:05 pm', '2024-10-17 02:16:05', '2024-10-17 02:16:05'),
(5059, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:16:10 pm', '2024-10-17 02:16:11', '2024-10-17 02:16:11'),
(5060, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:16:17 pm', '2024-10-17 02:16:18', '2024-10-17 02:16:18'),
(5061, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:33:30 pm', '2024-10-17 02:33:31', '2024-10-17 02:33:31'),
(5062, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:34:03 pm', '2024-10-17 02:34:04', '2024-10-17 02:34:04'),
(5063, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:35:25 pm', '2024-10-17 02:35:26', '2024-10-17 02:35:26'),
(5064, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:36:38 pm', '2024-10-17 02:36:39', '2024-10-17 02:36:39'),
(5065, 'category Edit ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList/4/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:39:44 pm', '2024-10-17 02:39:45', '2024-10-17 02:39:45'),
(5066, 'category Edit ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList/4/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:40:17 pm', '2024-10-17 02:40:18', '2024-10-17 02:40:18'),
(5068, 'category Edit ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList/4/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:50:05 pm', '2024-10-17 02:50:05', '2024-10-17 02:50:05'),
(5070, 'category Edit ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList/4/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:53:12 pm', '2024-10-17 02:53:13', '2024-10-17 02:53:13'),
(5071, 'category Edit ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList/4/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:53:30 pm', '2024-10-17 02:53:31', '2024-10-17 02:53:31'),
(5072, 'category update', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList/4', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:55:33 pm', '2024-10-17 02:55:34', '2024-10-17 02:55:34'),
(5073, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:55:34 pm', '2024-10-17 02:55:34', '2024-10-17 02:55:34'),
(5074, 'category Edit ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList/6/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:56:00 pm', '2024-10-17 02:56:00', '2024-10-17 02:56:00'),
(5075, 'category update', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList/6', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:56:13 pm', '2024-10-17 02:56:13', '2024-10-17 02:56:13'),
(5076, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:56:14 pm', '2024-10-17 02:56:14', '2024-10-17 02:56:14'),
(5077, 'category Edit ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList/7/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:56:23 pm', '2024-10-17 02:56:24', '2024-10-17 02:56:24'),
(5078, 'category update', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList/7', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:56:28 pm', '2024-10-17 02:56:28', '2024-10-17 02:56:28'),
(5079, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:56:29 pm', '2024-10-17 02:56:29', '2024-10-17 02:56:29'),
(5080, 'category Edit ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList/8/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:56:49 pm', '2024-10-17 02:56:49', '2024-10-17 02:56:49'),
(5081, 'category update', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList/8', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:56:54 pm', '2024-10-17 02:56:54', '2024-10-17 02:56:54'),
(5082, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:56:54 pm', '2024-10-17 02:56:55', '2024-10-17 02:56:55'),
(5083, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:57:18 pm', '2024-10-17 02:57:18', '2024-10-17 02:57:18'),
(5085, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:58:02 pm', '2024-10-17 02:58:02', '2024-10-17 02:58:02'),
(5086, 'Category store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:58:45 pm', '2024-10-17 02:58:45', '2024-10-17 02:58:45'),
(5087, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:58:46 pm', '2024-10-17 02:58:46', '2024-10-17 02:58:46'),
(5088, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:01:17 pm', '2024-10-17 03:01:18', '2024-10-17 03:01:18'),
(5089, 'category Edit ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList/4/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:01:24 pm', '2024-10-17 03:01:24', '2024-10-17 03:01:24'),
(5090, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:01:31 pm', '2024-10-17 03:01:31', '2024-10-17 03:01:31'),
(5091, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:01:37 pm', '2024-10-17 03:01:37', '2024-10-17 03:01:37'),
(5092, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:02:24 pm', '2024-10-17 03:02:24', '2024-10-17 03:02:24'),
(5093, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:03:00 pm', '2024-10-17 03:03:01', '2024-10-17 03:03:01'),
(5094, 'subcategory delete ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList/1', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:03:08 pm', '2024-10-17 03:03:08', '2024-10-17 03:03:08'),
(5095, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:03:08 pm', '2024-10-17 03:03:09', '2024-10-17 03:03:09'),
(5096, 'subcategory delete ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList/2', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:03:12 pm', '2024-10-17 03:03:12', '2024-10-17 03:03:12'),
(5097, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:03:13 pm', '2024-10-17 03:03:13', '2024-10-17 03:03:13'),
(5098, 'SubCategory store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:03:56 pm', '2024-10-17 03:03:57', '2024-10-17 03:03:57'),
(5099, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:03:57 pm', '2024-10-17 03:03:57', '2024-10-17 03:03:57'),
(5100, 'SubCategory store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:04:16 pm', '2024-10-17 03:04:16', '2024-10-17 03:04:16'),
(5101, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:04:16 pm', '2024-10-17 03:04:17', '2024-10-17 03:04:17'),
(5102, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:04:24 pm', '2024-10-17 03:04:24', '2024-10-17 03:04:24'),
(5103, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList/4/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:04:59 pm', '2024-10-17 03:05:00', '2024-10-17 03:05:00'),
(5104, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:05:04 pm', '2024-10-17 03:05:04', '2024-10-17 03:05:04'),
(5105, 'SubCategory Update', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList/4', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:05:26 pm', '2024-10-17 03:05:27', '2024-10-17 03:05:27'),
(5106, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:05:27 pm', '2024-10-17 03:05:27', '2024-10-17 03:05:27'),
(5107, 'view dashboard', 'http://localhost:8081/doinikbanglaNewsportal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:05:42 pm', '2024-10-17 03:05:42', '2024-10-17 03:05:42'),
(5108, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:05:51 pm', '2024-10-17 03:05:52', '2024-10-17 03:05:52'),
(5109, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:07:03 pm', '2024-10-17 03:07:03', '2024-10-17 03:07:03'),
(5110, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList/4/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:07:13 pm', '2024-10-17 03:07:13', '2024-10-17 03:07:13'),
(5111, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:07:19 pm', '2024-10-17 03:07:19', '2024-10-17 03:07:19'),
(5112, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:07:22 pm', '2024-10-17 03:07:22', '2024-10-17 03:07:22'),
(5113, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList/4/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:08:16 pm', '2024-10-17 03:08:17', '2024-10-17 03:08:17'),
(5114, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:08:48 pm', '2024-10-17 03:08:48', '2024-10-17 03:08:48'),
(5115, ' delete permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission/81', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:09:09 pm', '2024-10-17 03:09:10', '2024-10-17 03:09:10'),
(5116, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:09:10 pm', '2024-10-17 03:09:10', '2024-10-17 03:09:10'),
(5117, ' create permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:09:57 pm', '2024-10-17 03:09:57', '2024-10-17 03:09:57');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(5118, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:09:58 pm', '2024-10-17 03:09:58', '2024-10-17 03:09:58'),
(5119, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:09:59 pm', '2024-10-17 03:09:59', '2024-10-17 03:09:59'),
(5120, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:10:07 pm', '2024-10-17 03:10:08', '2024-10-17 03:10:08'),
(5121, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:10:11 pm', '2024-10-17 03:10:12', '2024-10-17 03:10:12'),
(5122, 'View Role Edit Page.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/1/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:10:14 pm', '2024-10-17 03:10:15', '2024-10-17 03:10:15'),
(5123, 'Update Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/1', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:10:21 pm', '2024-10-17 03:10:21', '2024-10-17 03:10:21'),
(5124, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:10:24 pm', '2024-10-17 03:10:24', '2024-10-17 03:10:24'),
(5125, 'View Role Edit Page.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/6/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:10:27 pm', '2024-10-17 03:10:28', '2024-10-17 03:10:28'),
(5126, 'Update Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/6', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:10:34 pm', '2024-10-17 03:10:34', '2024-10-17 03:10:34'),
(5127, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:10:38 pm', '2024-10-17 03:10:39', '2024-10-17 03:10:39'),
(5128, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:10:55 pm', '2024-10-17 03:10:55', '2024-10-17 03:10:55'),
(5129, 'SubCategory store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:11:25 pm', '2024-10-17 03:11:25', '2024-10-17 03:11:25'),
(5130, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:11:26 pm', '2024-10-17 03:11:26', '2024-10-17 03:11:26'),
(5131, 'SubCategory store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:11:39 pm', '2024-10-17 03:11:39', '2024-10-17 03:11:39'),
(5132, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:11:39 pm', '2024-10-17 03:11:39', '2024-10-17 03:11:39'),
(5133, 'SubCategory store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:11:49 pm', '2024-10-17 03:11:49', '2024-10-17 03:11:49'),
(5134, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:11:49 pm', '2024-10-17 03:11:50', '2024-10-17 03:11:50'),
(5135, 'SubCategory store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:12:03 pm', '2024-10-17 03:12:04', '2024-10-17 03:12:04'),
(5136, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:12:04 pm', '2024-10-17 03:12:04', '2024-10-17 03:12:04'),
(5137, 'SubCategory store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:12:28 pm', '2024-10-17 03:12:29', '2024-10-17 03:12:29'),
(5138, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:12:29 pm', '2024-10-17 03:12:29', '2024-10-17 03:12:29'),
(5139, 'SubCategory store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:12:41 pm', '2024-10-17 03:12:41', '2024-10-17 03:12:41'),
(5140, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:12:42 pm', '2024-10-17 03:12:42', '2024-10-17 03:12:42'),
(5141, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:12:48 pm', '2024-10-17 03:12:48', '2024-10-17 03:12:48'),
(5142, 'Category store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:13:05 pm', '2024-10-17 03:13:06', '2024-10-17 03:13:06'),
(5143, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:13:06 pm', '2024-10-17 03:13:06', '2024-10-17 03:13:06'),
(5144, 'Category store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:13:14 pm', '2024-10-17 03:13:15', '2024-10-17 03:13:15'),
(5145, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:13:15 pm', '2024-10-17 03:13:16', '2024-10-17 03:13:16'),
(5146, 'Category store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:13:33 pm', '2024-10-17 03:13:34', '2024-10-17 03:13:34'),
(5147, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:13:34 pm', '2024-10-17 03:13:35', '2024-10-17 03:13:35'),
(5148, 'Category store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:13:44 pm', '2024-10-17 03:13:44', '2024-10-17 03:13:44'),
(5149, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:13:45 pm', '2024-10-17 03:13:45', '2024-10-17 03:13:45'),
(5150, 'Category store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:14:05 pm', '2024-10-17 03:14:05', '2024-10-17 03:14:05'),
(5151, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:14:05 pm', '2024-10-17 03:14:05', '2024-10-17 03:14:05'),
(5152, 'Category store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:14:13 pm', '2024-10-17 03:14:13', '2024-10-17 03:14:13'),
(5153, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:14:13 pm', '2024-10-17 03:14:14', '2024-10-17 03:14:14'),
(5154, 'Category store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:14:24 pm', '2024-10-17 03:14:24', '2024-10-17 03:14:24'),
(5155, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:14:24 pm', '2024-10-17 03:14:24', '2024-10-17 03:14:24'),
(5156, 'Category store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:15:52 pm', '2024-10-17 03:15:52', '2024-10-17 03:15:52'),
(5157, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:15:52 pm', '2024-10-17 03:15:53', '2024-10-17 03:15:53'),
(5158, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:15:55 pm', '2024-10-17 03:15:55', '2024-10-17 03:15:55'),
(5159, 'SubCategory store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:16:11 pm', '2024-10-17 03:16:12', '2024-10-17 03:16:12'),
(5160, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:16:12 pm', '2024-10-17 03:16:13', '2024-10-17 03:16:13'),
(5161, 'SubCategory store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:16:21 pm', '2024-10-17 03:16:21', '2024-10-17 03:16:21'),
(5162, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:16:21 pm', '2024-10-17 03:16:22', '2024-10-17 03:16:22'),
(5163, 'SubCategory store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:16:33 pm', '2024-10-17 03:16:34', '2024-10-17 03:16:34'),
(5164, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:16:34 pm', '2024-10-17 03:16:35', '2024-10-17 03:16:35'),
(5165, 'SubCategory store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:16:49 pm', '2024-10-17 03:16:50', '2024-10-17 03:16:50'),
(5166, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:16:50 pm', '2024-10-17 03:16:50', '2024-10-17 03:16:50'),
(5167, 'SubCategory store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:17:16 pm', '2024-10-17 03:17:17', '2024-10-17 03:17:17'),
(5168, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:17:17 pm', '2024-10-17 03:17:17', '2024-10-17 03:17:17'),
(5169, 'SubCategory store ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:17:31 pm', '2024-10-17 03:17:31', '2024-10-17 03:17:31'),
(5170, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:17:31 pm', '2024-10-17 03:17:32', '2024-10-17 03:17:32'),
(5171, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:18:13 pm', '2024-10-17 03:18:13', '2024-10-17 03:18:13'),
(5172, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:19:12 pm', '2024-10-17 03:19:12', '2024-10-17 03:19:12'),
(5173, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:19:35 pm', '2024-10-17 03:19:35', '2024-10-17 03:19:35'),
(5174, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:19:55 pm', '2024-10-17 03:19:55', '2024-10-17 03:19:55'),
(5175, 'subcategory list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/subcategoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:20:19 pm', '2024-10-17 03:20:19', '2024-10-17 03:20:19'),
(5176, 'category list ', 'http://localhost:8081/doinikbanglaNewsportal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:20:24 pm', '2024-10-17 03:20:24', '2024-10-17 03:20:24'),
(5177, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:21:15 pm', '2024-10-17 03:21:15', '2024-10-17 03:21:15'),
(5178, ' create permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:21:58 pm', '2024-10-17 03:21:58', '2024-10-17 03:21:58'),
(5179, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:21:59 pm', '2024-10-17 03:21:59', '2024-10-17 03:21:59'),
(5180, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:22:00 pm', '2024-10-17 03:22:00', '2024-10-17 03:22:00'),
(5181, ' create permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:22:38 pm', '2024-10-17 03:22:38', '2024-10-17 03:22:38'),
(5182, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:22:38 pm', '2024-10-17 03:22:39', '2024-10-17 03:22:39'),
(5183, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:22:39 pm', '2024-10-17 03:22:39', '2024-10-17 03:22:39'),
(5184, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:22:43 pm', '2024-10-17 03:22:44', '2024-10-17 03:22:44'),
(5185, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:22:47 pm', '2024-10-17 03:22:47', '2024-10-17 03:22:47'),
(5186, 'View Role Edit Page.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/1/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:22:50 pm', '2024-10-17 03:22:50', '2024-10-17 03:22:50'),
(5187, 'Update Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/1', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:23:02 pm', '2024-10-17 03:23:02', '2024-10-17 03:23:02'),
(5188, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:23:05 pm', '2024-10-17 03:23:06', '2024-10-17 03:23:06'),
(5189, 'View Role Edit Page.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/6/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:23:10 pm', '2024-10-17 03:23:10', '2024-10-17 03:23:10'),
(5190, 'Update Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/6', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:23:16 pm', '2024-10-17 03:23:16', '2024-10-17 03:23:16'),
(5191, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:23:20 pm', '2024-10-17 03:23:20', '2024-10-17 03:23:20'),
(5192, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:34:19 pm', '2024-10-17 03:34:20', '2024-10-17 03:34:20'),
(5193, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:34:56 pm', '2024-10-17 03:34:56', '2024-10-17 03:34:56'),
(5194, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:35:18 pm', '2024-10-17 03:35:18', '2024-10-17 03:35:18'),
(5195, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:41:13 pm', '2024-10-17 03:41:13', '2024-10-17 03:41:13'),
(5196, ' create permission ', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:42:07 pm', '2024-10-17 03:42:07', '2024-10-17 03:42:07'),
(5197, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:42:07 pm', '2024-10-17 03:42:08', '2024-10-17 03:42:08'),
(5198, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:42:08 pm', '2024-10-17 03:42:08', '2024-10-17 03:42:08'),
(5199, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:42:16 pm', '2024-10-17 03:42:17', '2024-10-17 03:42:17'),
(5200, 'permission list', 'http://localhost:8081/doinikbanglaNewsportal/admin/permission', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:49:08 pm', '2024-10-17 03:49:09', '2024-10-17 03:49:09'),
(5201, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:49:28 pm', '2024-10-17 03:49:29', '2024-10-17 03:49:29'),
(5202, 'View Role Edit Page.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/1/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:49:32 pm', '2024-10-17 03:49:33', '2024-10-17 03:49:33'),
(5203, 'Update Role.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role/1', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:49:38 pm', '2024-10-17 03:49:40', '2024-10-17 03:49:40'),
(5204, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:49:43 pm', '2024-10-17 03:49:43', '2024-10-17 03:49:43'),
(5205, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:49:59 pm', '2024-10-17 03:49:59', '2024-10-17 03:49:59'),
(5206, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:02:54 pm', '2024-10-17 04:02:54', '2024-10-17 04:02:54'),
(5207, 'Role List.', 'http://localhost:8081/doinikbanglaNewsportal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:07:33 pm', '2024-10-17 04:07:33', '2024-10-17 04:07:33'),
(5208, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:12:47 pm', '2024-10-17 04:12:47', '2024-10-17 04:12:47'),
(5209, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:21:42 pm', '2024-10-17 04:21:43', '2024-10-17 04:21:43'),
(5210, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:23:57 pm', '2024-10-17 04:23:58', '2024-10-17 04:23:58'),
(5211, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:24:23 pm', '2024-10-17 04:24:24', '2024-10-17 04:24:24'),
(5212, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:25:40 pm', '2024-10-17 04:25:41', '2024-10-17 04:25:41'),
(5213, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:27:02 pm', '2024-10-17 04:27:03', '2024-10-17 04:27:03'),
(5214, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:27:16 pm', '2024-10-17 04:27:17', '2024-10-17 04:27:17'),
(5215, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:28:33 pm', '2024-10-17 04:28:33', '2024-10-17 04:28:33'),
(5216, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:28:57 pm', '2024-10-17 04:28:58', '2024-10-17 04:28:58'),
(5217, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:29:10 pm', '2024-10-17 04:29:10', '2024-10-17 04:29:10'),
(5218, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:30:12 pm', '2024-10-17 04:30:13', '2024-10-17 04:30:13'),
(5219, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:30:59 pm', '2024-10-17 04:30:59', '2024-10-17 04:30:59'),
(5220, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:31:23 pm', '2024-10-17 04:31:23', '2024-10-17 04:31:23'),
(5221, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:33:52 pm', '2024-10-17 04:33:52', '2024-10-17 04:33:52'),
(5222, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:34:54 pm', '2024-10-17 04:34:54', '2024-10-17 04:34:54'),
(5223, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:35:54 pm', '2024-10-17 04:35:55', '2024-10-17 04:35:55'),
(5224, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:37:32 pm', '2024-10-17 04:37:33', '2024-10-17 04:37:33'),
(5225, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:41:18 pm', '2024-10-17 04:41:19', '2024-10-17 04:41:19'),
(5226, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:43:00 pm', '2024-10-17 04:43:00', '2024-10-17 04:43:00'),
(5227, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:50:38 pm', '2024-10-17 04:50:39', '2024-10-17 04:50:39'),
(5228, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:58:29 pm', '2024-10-17 04:58:29', '2024-10-17 04:58:29'),
(5229, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:58:58 pm', '2024-10-17 04:58:58', '2024-10-17 04:58:58'),
(5230, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:59:24 pm', '2024-10-17 04:59:25', '2024-10-17 04:59:25'),
(5231, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:16:18 pm', '2024-10-17 05:16:18', '2024-10-17 05:16:18'),
(5232, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:26:22 pm', '2024-10-17 05:26:23', '2024-10-17 05:26:23'),
(5233, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:27:24 pm', '2024-10-17 05:27:24', '2024-10-17 05:27:24'),
(5234, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:29:27 pm', '2024-10-17 05:29:27', '2024-10-17 05:29:27'),
(5235, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:29:53 pm', '2024-10-17 05:29:54', '2024-10-17 05:29:54'),
(5236, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:30:46 pm', '2024-10-17 05:30:47', '2024-10-17 05:30:47'),
(5237, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:31:05 pm', '2024-10-17 05:31:05', '2024-10-17 05:31:05'),
(5238, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:32:09 pm', '2024-10-17 05:32:10', '2024-10-17 05:32:10'),
(5239, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:35:40 pm', '2024-10-17 05:35:41', '2024-10-17 05:35:41'),
(5240, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:40:03 pm', '2024-10-17 05:40:03', '2024-10-17 05:40:03'),
(5241, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:40:32 pm', '2024-10-17 05:40:32', '2024-10-17 05:40:32'),
(5242, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:41:12 pm', '2024-10-17 05:41:12', '2024-10-17 05:41:12'),
(5243, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:41:48 pm', '2024-10-17 05:41:48', '2024-10-17 05:41:48'),
(5244, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:42:42 pm', '2024-10-17 05:42:43', '2024-10-17 05:42:43'),
(5245, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:43:02 pm', '2024-10-17 05:43:03', '2024-10-17 05:43:03'),
(5246, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:43:50 pm', '2024-10-17 05:43:50', '2024-10-17 05:43:50'),
(5247, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:44:52 pm', '2024-10-17 05:44:53', '2024-10-17 05:44:53'),
(5248, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:55:02 pm', '2024-10-17 05:55:02', '2024-10-17 05:55:02'),
(5249, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:55:46 pm', '2024-10-17 05:55:47', '2024-10-17 05:55:47'),
(5250, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:55:54 pm', '2024-10-17 05:55:55', '2024-10-17 05:55:55'),
(5251, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:55:59 pm', '2024-10-17 05:56:00', '2024-10-17 05:56:00'),
(5252, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:58:09 pm', '2024-10-17 05:58:10', '2024-10-17 05:58:10'),
(5253, 'view employee list', 'http://localhost:8081/doinikbanglaNewsportal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:00:34 pm', '2024-10-17 06:00:34', '2024-10-17 06:00:34'),
(5254, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:00:38 pm', '2024-10-17 06:00:38', '2024-10-17 06:00:38'),
(5255, 'News delete ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news/1', 'DELETE', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:01:48 pm', '2024-10-17 06:01:48', '2024-10-17 06:01:48'),
(5256, 'news add ', 'http://localhost:8081/doinikbanglaNewsportal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '06:01:48 pm', '2024-10-17 06:01:49', '2024-10-17 06:01:49'),
(5257, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:03:12 am', '2024-10-17 22:03:15', '2024-10-17 22:03:15'),
(5258, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:04:17 am', '2024-10-17 22:04:18', '2024-10-17 22:04:18'),
(5259, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:04:32 am', '2024-10-17 22:04:33', '2024-10-17 22:04:33'),
(5260, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:04:44 am', '2024-10-17 22:04:45', '2024-10-17 22:04:45'),
(5261, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:05:29 am', '2024-10-17 22:05:29', '2024-10-17 22:05:29'),
(5262, 'view employee list', 'http://localhost/doinikdinkal/admin/user', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:05:41 am', '2024-10-17 22:05:41', '2024-10-17 22:05:41'),
(5263, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:05:52 am', '2024-10-17 22:05:52', '2024-10-17 22:05:52'),
(5264, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:14:36 am', '2024-10-17 23:14:40', '2024-10-17 23:14:40'),
(5265, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:23:05 am', '2024-10-17 23:23:06', '2024-10-17 23:23:06'),
(5266, 'category Edit ', 'http://localhost/doinikdinkal/admin/categoryList/4/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:24:15 am', '2024-10-17 23:24:16', '2024-10-17 23:24:16'),
(5267, 'category update', 'http://localhost/doinikdinkal/admin/categoryList/4', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:24:31 am', '2024-10-17 23:24:31', '2024-10-17 23:24:31'),
(5268, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:24:32 am', '2024-10-17 23:24:32', '2024-10-17 23:24:32'),
(5269, 'category Edit ', 'http://localhost/doinikdinkal/admin/categoryList/6/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:24:41 am', '2024-10-17 23:24:41', '2024-10-17 23:24:41'),
(5270, 'category update', 'http://localhost/doinikdinkal/admin/categoryList/6', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:24:57 am', '2024-10-17 23:24:57', '2024-10-17 23:24:57'),
(5271, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:24:58 am', '2024-10-17 23:24:58', '2024-10-17 23:24:58'),
(5272, 'category Edit ', 'http://localhost/doinikdinkal/admin/categoryList/7/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:25:52 am', '2024-10-17 23:25:52', '2024-10-17 23:25:52'),
(5273, 'category update', 'http://localhost/doinikdinkal/admin/categoryList/7', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:26:01 am', '2024-10-17 23:26:01', '2024-10-17 23:26:01'),
(5274, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:26:02 am', '2024-10-17 23:26:02', '2024-10-17 23:26:02');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(5275, 'category Edit ', 'http://localhost/doinikdinkal/admin/categoryList/8/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:26:18 am', '2024-10-17 23:26:18', '2024-10-17 23:26:18'),
(5276, 'category update', 'http://localhost/doinikdinkal/admin/categoryList/8', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:26:27 am', '2024-10-17 23:26:27', '2024-10-17 23:26:27'),
(5277, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:26:28 am', '2024-10-17 23:26:28', '2024-10-17 23:26:28'),
(5278, 'category Edit ', 'http://localhost/doinikdinkal/admin/categoryList/9/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:26:59 am', '2024-10-17 23:26:59', '2024-10-17 23:26:59'),
(5279, 'category update', 'http://localhost/doinikdinkal/admin/categoryList/9', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:27:21 am', '2024-10-17 23:27:22', '2024-10-17 23:27:22'),
(5280, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:27:22 am', '2024-10-17 23:27:22', '2024-10-17 23:27:22'),
(5281, 'category Edit ', 'http://localhost/doinikdinkal/admin/categoryList/10/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:27:40 am', '2024-10-17 23:27:40', '2024-10-17 23:27:40'),
(5282, 'category update', 'http://localhost/doinikdinkal/admin/categoryList/10', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:27:48 am', '2024-10-17 23:27:48', '2024-10-17 23:27:48'),
(5283, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:27:49 am', '2024-10-17 23:27:49', '2024-10-17 23:27:49'),
(5284, 'category Edit ', 'http://localhost/doinikdinkal/admin/categoryList/11/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:28:09 am', '2024-10-17 23:28:09', '2024-10-17 23:28:09'),
(5285, 'category update', 'http://localhost/doinikdinkal/admin/categoryList/11', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:28:18 am', '2024-10-17 23:28:18', '2024-10-17 23:28:18'),
(5286, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:28:19 am', '2024-10-17 23:28:19', '2024-10-17 23:28:19'),
(5287, 'category Edit ', 'http://localhost/doinikdinkal/admin/categoryList/12/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:28:37 am', '2024-10-17 23:28:37', '2024-10-17 23:28:37'),
(5288, 'category update', 'http://localhost/doinikdinkal/admin/categoryList/12', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:28:42 am', '2024-10-17 23:28:42', '2024-10-17 23:28:42'),
(5289, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:28:43 am', '2024-10-17 23:28:43', '2024-10-17 23:28:43'),
(5290, 'category Edit ', 'http://localhost/doinikdinkal/admin/categoryList/13/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:29:07 am', '2024-10-17 23:29:07', '2024-10-17 23:29:07'),
(5291, 'category update', 'http://localhost/doinikdinkal/admin/categoryList/13', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:29:15 am', '2024-10-17 23:29:16', '2024-10-17 23:29:16'),
(5292, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:29:16 am', '2024-10-17 23:29:17', '2024-10-17 23:29:17'),
(5293, 'category Edit ', 'http://localhost/doinikdinkal/admin/categoryList/14/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:29:34 am', '2024-10-17 23:29:34', '2024-10-17 23:29:34'),
(5294, 'category update', 'http://localhost/doinikdinkal/admin/categoryList/14', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:29:39 am', '2024-10-17 23:29:39', '2024-10-17 23:29:39'),
(5295, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:29:40 am', '2024-10-17 23:29:40', '2024-10-17 23:29:40'),
(5296, 'category Edit ', 'http://localhost/doinikdinkal/admin/categoryList/15/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:29:45 am', '2024-10-17 23:29:45', '2024-10-17 23:29:45'),
(5297, 'category update', 'http://localhost/doinikdinkal/admin/categoryList/15', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:29:53 am', '2024-10-17 23:29:54', '2024-10-17 23:29:54'),
(5298, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:29:54 am', '2024-10-17 23:29:55', '2024-10-17 23:29:55'),
(5299, 'category Edit ', 'http://localhost/doinikdinkal/admin/categoryList/16/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:29:59 am', '2024-10-17 23:30:00', '2024-10-17 23:30:00'),
(5300, 'category update', 'http://localhost/doinikdinkal/admin/categoryList/16', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:30:09 am', '2024-10-17 23:30:09', '2024-10-17 23:30:09'),
(5301, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:30:10 am', '2024-10-17 23:30:10', '2024-10-17 23:30:10'),
(5302, 'category Edit ', 'http://localhost/doinikdinkal/admin/categoryList/17/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:30:15 am', '2024-10-17 23:30:15', '2024-10-17 23:30:15'),
(5303, 'category update', 'http://localhost/doinikdinkal/admin/categoryList/17', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:30:22 am', '2024-10-17 23:30:22', '2024-10-17 23:30:22'),
(5304, 'category list ', 'http://localhost/doinikdinkal/admin/categoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:30:22 am', '2024-10-17 23:30:23', '2024-10-17 23:30:23'),
(5305, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:30:34 am', '2024-10-17 23:30:34', '2024-10-17 23:30:34'),
(5306, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:58:46 am', '2024-10-17 23:58:47', '2024-10-17 23:58:47'),
(5307, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/4/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:58:57 am', '2024-10-17 23:58:57', '2024-10-17 23:58:57'),
(5308, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/4', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:59:07 am', '2024-10-17 23:59:07', '2024-10-17 23:59:07'),
(5309, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:59:08 am', '2024-10-17 23:59:08', '2024-10-17 23:59:08'),
(5310, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/4/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:00:16 pm', '2024-10-18 00:00:17', '2024-10-18 00:00:17'),
(5311, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/4', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:00:28 pm', '2024-10-18 00:00:28', '2024-10-18 00:00:28'),
(5312, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:00:28 pm', '2024-10-18 00:00:29', '2024-10-18 00:00:29'),
(5313, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/5/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:00:49 pm', '2024-10-18 00:00:49', '2024-10-18 00:00:49'),
(5314, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/5', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:00:55 pm', '2024-10-18 00:00:55', '2024-10-18 00:00:55'),
(5315, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:00:55 pm', '2024-10-18 00:00:56', '2024-10-18 00:00:56'),
(5316, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/6/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:01:13 pm', '2024-10-18 00:01:13', '2024-10-18 00:01:13'),
(5317, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/6', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:01:19 pm', '2024-10-18 00:01:19', '2024-10-18 00:01:19'),
(5318, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:01:20 pm', '2024-10-18 00:01:20', '2024-10-18 00:01:20'),
(5319, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/7/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:01:34 pm', '2024-10-18 00:01:34', '2024-10-18 00:01:34'),
(5320, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/7', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:01:39 pm', '2024-10-18 00:01:40', '2024-10-18 00:01:40'),
(5321, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:01:40 pm', '2024-10-18 00:01:41', '2024-10-18 00:01:41'),
(5322, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/8/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:02:13 pm', '2024-10-18 00:02:14', '2024-10-18 00:02:14'),
(5323, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/8', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:02:19 pm', '2024-10-18 00:02:20', '2024-10-18 00:02:20'),
(5324, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:02:20 pm', '2024-10-18 00:02:21', '2024-10-18 00:02:21'),
(5325, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/9/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:03:03 pm', '2024-10-18 00:03:04', '2024-10-18 00:03:04'),
(5326, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/9', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:03:09 pm', '2024-10-18 00:03:09', '2024-10-18 00:03:09'),
(5327, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:03:10 pm', '2024-10-18 00:03:10', '2024-10-18 00:03:10'),
(5328, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/10/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:03:26 pm', '2024-10-18 00:03:27', '2024-10-18 00:03:27'),
(5329, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/10', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:03:32 pm', '2024-10-18 00:03:32', '2024-10-18 00:03:32'),
(5330, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:03:32 pm', '2024-10-18 00:03:33', '2024-10-18 00:03:33'),
(5331, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/11/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:03:52 pm', '2024-10-18 00:03:52', '2024-10-18 00:03:52'),
(5332, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/11', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:03:57 pm', '2024-10-18 00:03:57', '2024-10-18 00:03:57'),
(5333, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:03:58 pm', '2024-10-18 00:03:58', '2024-10-18 00:03:58'),
(5334, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/12/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:04:37 pm', '2024-10-18 00:04:37', '2024-10-18 00:04:37'),
(5335, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/12', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:04:46 pm', '2024-10-18 00:04:46', '2024-10-18 00:04:46'),
(5336, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:04:47 pm', '2024-10-18 00:04:47', '2024-10-18 00:04:47'),
(5337, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/13/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:05:08 pm', '2024-10-18 00:05:08', '2024-10-18 00:05:08'),
(5338, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/13', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:05:18 pm', '2024-10-18 00:05:18', '2024-10-18 00:05:18'),
(5339, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:05:19 pm', '2024-10-18 00:05:19', '2024-10-18 00:05:19'),
(5340, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/14/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:06:09 pm', '2024-10-18 00:06:09', '2024-10-18 00:06:09'),
(5341, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/14', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:06:20 pm', '2024-10-18 00:06:20', '2024-10-18 00:06:20'),
(5342, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:06:20 pm', '2024-10-18 00:06:21', '2024-10-18 00:06:21'),
(5343, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/15/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:06:27 pm', '2024-10-18 00:06:28', '2024-10-18 00:06:28'),
(5344, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/15', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:06:35 pm', '2024-10-18 00:06:35', '2024-10-18 00:06:35'),
(5345, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:06:36 pm', '2024-10-18 00:06:36', '2024-10-18 00:06:36'),
(5346, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/16/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:06:47 pm', '2024-10-18 00:06:48', '2024-10-18 00:06:48'),
(5347, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/16', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:07:13 pm', '2024-10-18 00:07:13', '2024-10-18 00:07:13'),
(5348, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:07:14 pm', '2024-10-18 00:07:14', '2024-10-18 00:07:14'),
(5349, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/17/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:07:36 pm', '2024-10-18 00:07:36', '2024-10-18 00:07:36'),
(5350, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList/17/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:07:42 pm', '2024-10-18 00:07:43', '2024-10-18 00:07:43'),
(5351, 'SubCategory Update', 'http://localhost/doinikdinkal/admin/subcategoryList/17', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:07:49 pm', '2024-10-18 00:07:50', '2024-10-18 00:07:50'),
(5352, 'subcategory list ', 'http://localhost/doinikdinkal/admin/subcategoryList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:07:50 pm', '2024-10-18 00:07:50', '2024-10-18 00:07:50'),
(5353, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:08:25 pm', '2024-10-18 00:08:26', '2024-10-18 00:08:26'),
(5354, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:31:40 pm', '2024-10-18 00:31:40', '2024-10-18 00:31:40'),
(5355, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:34:26 pm', '2024-10-18 00:34:26', '2024-10-18 00:34:26'),
(5356, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:35:07 pm', '2024-10-18 00:35:07', '2024-10-18 00:35:07'),
(5357, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:35:43 pm', '2024-10-18 00:35:43', '2024-10-18 00:35:43'),
(5358, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:39:05 pm', '2024-10-18 00:39:05', '2024-10-18 00:39:05'),
(5359, 'news Update ', 'http://localhost/doinikdinkal/admin/news/3/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:39:11 pm', '2024-10-18 00:39:11', '2024-10-18 00:39:11'),
(5360, 'news add ', 'http://localhost/doinikdinkal/admin/news/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:39:59 pm', '2024-10-18 00:39:59', '2024-10-18 00:39:59'),
(5361, 'news add ', 'http://localhost/doinikdinkal/admin/news/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:40:22 pm', '2024-10-18 00:40:22', '2024-10-18 00:40:22'),
(5362, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:40:26 pm', '2024-10-18 00:40:27', '2024-10-18 00:40:27'),
(5363, 'news Update ', 'http://localhost/doinikdinkal/admin/news/3/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:40:30 pm', '2024-10-18 00:40:31', '2024-10-18 00:40:31'),
(5364, 'news Update ', 'http://localhost/doinikdinkal/admin/news/3/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:42:49 pm', '2024-10-18 00:42:50', '2024-10-18 00:42:50'),
(5365, 'news Update ', 'http://localhost/doinikdinkal/admin/news/3/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:43:23 pm', '2024-10-18 00:43:24', '2024-10-18 00:43:24'),
(5366, 'news Update ', 'http://localhost/doinikdinkal/admin/news/3/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:46:15 pm', '2024-10-18 00:46:15', '2024-10-18 00:46:15'),
(5367, 'news Update ', 'http://localhost/doinikdinkal/admin/news/3/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:54:31 pm', '2024-10-18 00:54:31', '2024-10-18 00:54:31'),
(5368, 'news Update ', 'http://localhost/doinikdinkal/admin/news/3/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:54:56 pm', '2024-10-18 00:54:57', '2024-10-18 00:54:57'),
(5369, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:55:01 pm', '2024-10-18 00:55:01', '2024-10-18 00:55:01'),
(5370, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:05:55 pm', '2024-10-18 02:05:56', '2024-10-18 02:05:56'),
(5371, 'news Update ', 'http://localhost/doinikdinkal/admin/news/3', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:12:07 pm', '2024-10-18 02:12:07', '2024-10-18 02:12:07'),
(5372, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:17:30 pm', '2024-10-18 02:17:31', '2024-10-18 02:17:31'),
(5373, 'news Update ', 'http://localhost/doinikdinkal/admin/news/Mw==', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:36:17 pm', '2024-10-18 02:36:18', '2024-10-18 02:36:18'),
(5374, 'news Update ', 'http://localhost/doinikdinkal/admin/news/Mw==', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:37:21 pm', '2024-10-18 02:37:22', '2024-10-18 02:37:22'),
(5375, 'news Update ', 'http://localhost/doinikdinkal/admin/news/Mw==', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:39:05 pm', '2024-10-18 02:39:06', '2024-10-18 02:39:06'),
(5376, 'news Update ', 'http://localhost/doinikdinkal/admin/news/Mw==', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:39:53 pm', '2024-10-18 02:39:53', '2024-10-18 02:39:53'),
(5377, 'news Update ', 'http://localhost/doinikdinkal/admin/news/Mw==', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:42:08 pm', '2024-10-18 02:42:08', '2024-10-18 02:42:08'),
(5378, 'news Update ', 'http://localhost/doinikdinkal/admin/news/Mg==', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:42:14 pm', '2024-10-18 02:42:15', '2024-10-18 02:42:15'),
(5379, 'news Update ', 'http://localhost/doinikdinkal/admin/news/Mg==', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:44:26 pm', '2024-10-18 02:44:27', '2024-10-18 02:44:27'),
(5380, 'news Update ', 'http://localhost/doinikdinkal/admin/news/Mg==', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:45:12 pm', '2024-10-18 02:45:12', '2024-10-18 02:45:12'),
(5381, 'news Update ', 'http://localhost/doinikdinkal/admin/news/Mw==', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:45:17 pm', '2024-10-18 02:45:17', '2024-10-18 02:45:17'),
(5382, 'news add ', 'http://localhost/doinikdinkal/admin/news/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:46:32 pm', '2024-10-18 02:46:33', '2024-10-18 02:46:33'),
(5383, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:47:36 pm', '2024-10-18 02:47:36', '2024-10-18 02:47:36'),
(5384, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:56:14 pm', '2024-10-18 02:56:14', '2024-10-18 02:56:14'),
(5385, ' update permission ', 'http://localhost/doinikdinkal/admin/permission/news', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:57:54 pm', '2024-10-18 02:57:55', '2024-10-18 02:57:55'),
(5386, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:57:56 pm', '2024-10-18 02:57:57', '2024-10-18 02:57:57'),
(5387, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:57:57 pm', '2024-10-18 02:57:58', '2024-10-18 02:57:58'),
(5388, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:58:10 pm', '2024-10-18 02:58:11', '2024-10-18 02:58:11'),
(5389, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:58:16 pm', '2024-10-18 02:58:17', '2024-10-18 02:58:17'),
(5390, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:58:24 pm', '2024-10-18 02:58:24', '2024-10-18 02:58:24'),
(5391, 'Update Role.', 'http://localhost/doinikdinkal/admin/role/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:58:36 pm', '2024-10-18 02:58:36', '2024-10-18 02:58:36'),
(5392, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:58:45 pm', '2024-10-18 02:58:45', '2024-10-18 02:58:45'),
(5393, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/6/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:58:49 pm', '2024-10-18 02:58:50', '2024-10-18 02:58:50'),
(5394, 'Update Role.', 'http://localhost/doinikdinkal/admin/role/6', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:59:13 pm', '2024-10-18 02:59:13', '2024-10-18 02:59:13'),
(5395, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '02:59:22 pm', '2024-10-18 02:59:22', '2024-10-18 02:59:22'),
(5396, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:04:55 pm', '2024-10-18 03:04:56', '2024-10-18 03:04:56'),
(5397, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:41:15 pm', '2024-10-18 03:41:15', '2024-10-18 03:41:15'),
(5398, 'news Update ', 'http://localhost/doinikdinkal/admin/news/NA==/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:41:25 pm', '2024-10-18 03:41:25', '2024-10-18 03:41:25'),
(5399, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:57:45 pm', '2024-10-18 03:57:46', '2024-10-18 03:57:46'),
(5400, 'News delete ', 'http://localhost/doinikdinkal/admin/news/3', 'DELETE', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:57:51 pm', '2024-10-18 03:57:51', '2024-10-18 03:57:51'),
(5401, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '03:57:51 pm', '2024-10-18 03:57:52', '2024-10-18 03:57:52'),
(5402, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:13:20 pm', '2024-10-18 04:13:20', '2024-10-18 04:13:20'),
(5403, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:26:13 pm', '2024-10-18 04:26:14', '2024-10-18 04:26:14'),
(5404, ' update permission ', 'http://localhost/doinikdinkal/admin/permission/news', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:26:28 pm', '2024-10-18 04:26:29', '2024-10-18 04:26:29'),
(5405, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:26:31 pm', '2024-10-18 04:26:32', '2024-10-18 04:26:32'),
(5406, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:26:34 pm', '2024-10-18 04:26:34', '2024-10-18 04:26:34'),
(5407, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:26:41 pm', '2024-10-18 04:26:42', '2024-10-18 04:26:42'),
(5408, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:27:57 pm', '2024-10-18 04:27:58', '2024-10-18 04:27:58'),
(5409, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:28:40 pm', '2024-10-18 04:28:41', '2024-10-18 04:28:41'),
(5410, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:28:49 pm', '2024-10-18 04:28:49', '2024-10-18 04:28:49'),
(5411, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:28:55 pm', '2024-10-18 04:28:56', '2024-10-18 04:28:56'),
(5412, 'Update Role.', 'http://localhost/doinikdinkal/admin/role/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:29:04 pm', '2024-10-18 04:29:05', '2024-10-18 04:29:05'),
(5413, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:29:14 pm', '2024-10-18 04:29:15', '2024-10-18 04:29:15'),
(5414, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:30:39 pm', '2024-10-18 04:30:40', '2024-10-18 04:30:40'),
(5415, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:36:43 pm', '2024-10-18 04:36:44', '2024-10-18 04:36:44'),
(5416, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/6/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:36:49 pm', '2024-10-18 04:36:49', '2024-10-18 04:36:49'),
(5417, 'Update Role.', 'http://localhost/doinikdinkal/admin/role/6', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:36:57 pm', '2024-10-18 04:36:58', '2024-10-18 04:36:58'),
(5418, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:37:05 pm', '2024-10-18 04:37:06', '2024-10-18 04:37:06'),
(5419, 'Create Role.', 'http://localhost/doinikdinkal/admin/role/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:37:12 pm', '2024-10-18 04:37:13', '2024-10-18 04:37:13'),
(5420, 'Store Role.', 'http://localhost/doinikdinkal/admin/role', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:39:35 pm', '2024-10-18 04:39:36', '2024-10-18 04:39:36'),
(5421, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:39:43 pm', '2024-10-18 04:39:44', '2024-10-18 04:39:44'),
(5422, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:40:47 pm', '2024-10-18 04:40:48', '2024-10-18 04:40:48'),
(5423, ' update permission ', 'http://localhost/doinikdinkal/admin/permission/news', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:41:23 pm', '2024-10-18 04:41:23', '2024-10-18 04:41:23'),
(5424, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:41:26 pm', '2024-10-18 04:41:27', '2024-10-18 04:41:27'),
(5425, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:41:28 pm', '2024-10-18 04:41:28', '2024-10-18 04:41:28'),
(5426, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:41:43 pm', '2024-10-18 04:41:44', '2024-10-18 04:41:44'),
(5427, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:41:52 pm', '2024-10-18 04:41:53', '2024-10-18 04:41:53'),
(5428, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:41:58 pm', '2024-10-18 04:41:59', '2024-10-18 04:41:59'),
(5429, 'Update Role.', 'http://localhost/doinikdinkal/admin/role/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:42:16 pm', '2024-10-18 04:42:17', '2024-10-18 04:42:17'),
(5430, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:42:27 pm', '2024-10-18 04:42:28', '2024-10-18 04:42:28'),
(5431, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/6/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:42:34 pm', '2024-10-18 04:42:35', '2024-10-18 04:42:35'),
(5432, 'Update Role.', 'http://localhost/doinikdinkal/admin/role/6', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:42:43 pm', '2024-10-18 04:42:44', '2024-10-18 04:42:44'),
(5433, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:42:54 pm', '2024-10-18 04:42:56', '2024-10-18 04:42:56'),
(5434, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/7/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:43:01 pm', '2024-10-18 04:43:02', '2024-10-18 04:43:02'),
(5435, 'Update Role.', 'http://localhost/doinikdinkal/admin/role/7', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:43:43 pm', '2024-10-18 04:43:44', '2024-10-18 04:43:44'),
(5436, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:43:51 pm', '2024-10-18 04:43:51', '2024-10-18 04:43:51');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(5437, 'view employee list', 'http://localhost/doinikdinkal/admin/user', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:44:26 pm', '2024-10-18 04:44:27', '2024-10-18 04:44:27'),
(5438, 'create employee ', 'http://localhost/doinikdinkal/admin/user/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:44:32 pm', '2024-10-18 04:44:33', '2024-10-18 04:44:33'),
(5439, 'create employee ', 'http://localhost/doinikdinkal/admin/user/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:45:49 pm', '2024-10-18 04:45:49', '2024-10-18 04:45:49'),
(5440, ' employee store', 'http://localhost/doinikdinkal/admin/user', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:47:11 pm', '2024-10-18 04:47:11', '2024-10-18 04:47:11'),
(5441, 'view employee list', 'http://localhost/doinikdinkal/admin/user', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:47:14 pm', '2024-10-18 04:47:15', '2024-10-18 04:47:15'),
(5442, 'Logged Out.', 'http://localhost/doinikdinkal/admin/logout/submit', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:47:33 pm', '2024-10-18 04:47:34', '2024-10-18 04:47:34'),
(5443, 'Logged In.', 'http://localhost/doinikdinkal/admin/login', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '6', '04:47:51 pm', '2024-10-18 04:47:51', '2024-10-18 04:47:51'),
(5444, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '6', '04:47:53 pm', '2024-10-18 04:47:54', '2024-10-18 04:47:54'),
(5445, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '6', '04:48:25 pm', '2024-10-18 04:48:25', '2024-10-18 04:48:25'),
(5446, 'news add ', 'http://localhost/doinikdinkal/admin/news/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '6', '04:48:29 pm', '2024-10-18 04:48:30', '2024-10-18 04:48:30'),
(5447, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '6', '04:49:24 pm', '2024-10-18 04:49:25', '2024-10-18 04:49:25'),
(5448, 'Logged Out.', 'http://localhost/doinikdinkal/admin/logout/submit', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '6', '04:51:52 pm', '2024-10-18 04:51:52', '2024-10-18 04:51:52'),
(5449, 'Logged In.', 'http://localhost/doinikdinkal/admin/login', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:53:05 pm', '2024-10-18 04:53:06', '2024-10-18 04:53:06'),
(5450, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:53:07 pm', '2024-10-18 04:53:08', '2024-10-18 04:53:08'),
(5451, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:06:03 pm', '2024-10-18 05:06:04', '2024-10-18 05:06:04'),
(5452, 'view employee list', 'http://localhost/doinikdinkal/admin/user', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:07:07 pm', '2024-10-18 05:07:07', '2024-10-18 05:07:07'),
(5453, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:16:46 pm', '2024-10-18 05:16:47', '2024-10-18 05:16:47'),
(5454, 'View System Information.', 'http://localhost/doinikdinkal/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '05:24:30 pm', '2024-10-18 05:24:30', '2024-10-18 05:24:30'),
(5455, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '09:37:36 pm', '2024-10-18 09:37:37', '2024-10-18 09:37:37'),
(5456, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '09:38:10 pm', '2024-10-18 09:38:10', '2024-10-18 09:38:10'),
(5457, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '09:50:41 pm', '2024-10-18 09:50:42', '2024-10-18 09:50:42'),
(5458, 'menu delete ', 'http://localhost/doinikdinkal/admin/imageLink/1', 'DELETE', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:18:57 pm', '2024-10-18 10:18:57', '2024-10-18 10:18:57'),
(5459, 'view employee list', 'http://localhost/doinikdinkal/admin/user', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:52:28 pm', '2024-10-18 10:52:28', '2024-10-18 10:52:28'),
(5460, 'news add ', 'http://localhost/doinikdinkal/admin/uploadImageNews', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:27:31 pm', '2024-10-18 11:27:31', '2024-10-18 11:27:31'),
(5461, 'news add ', 'http://localhost/doinikdinkal/admin/uploadImageNews', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:28:58 pm', '2024-10-18 11:28:58', '2024-10-18 11:28:58'),
(5462, 'news add ', 'http://localhost/doinikdinkal/admin/uploadImageNews', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:29:57 pm', '2024-10-18 11:29:58', '2024-10-18 11:29:58'),
(5463, 'news add ', 'http://localhost/doinikdinkal/admin/uploadImageNews', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:30:37 pm', '2024-10-18 11:30:37', '2024-10-18 11:30:37'),
(5464, 'news add ', 'http://localhost/doinikdinkal/admin/uploadImageNews', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:32:08 pm', '2024-10-18 11:32:08', '2024-10-18 11:32:08'),
(5465, 'news add ', 'http://localhost/doinikdinkal/admin/uploadImageNews', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:33:54 pm', '2024-10-18 11:33:54', '2024-10-18 11:33:54'),
(5466, 'news add ', 'http://localhost/doinikdinkal/admin/uploadImageNews', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:34:16 pm', '2024-10-18 11:34:16', '2024-10-18 11:34:16'),
(5467, 'news add ', 'http://localhost/doinikdinkal/admin/uploadImageNews', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:34:49 pm', '2024-10-18 11:34:49', '2024-10-18 11:34:49'),
(5468, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:40:27 pm', '2024-10-18 11:40:28', '2024-10-18 11:40:28'),
(5469, 'news Update ', 'http://localhost/doinikdinkal/admin/news/NQ==/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:40:31 pm', '2024-10-18 11:40:32', '2024-10-18 11:40:32'),
(5470, 'news add ', 'http://localhost/doinikdinkal/admin/uploadVideoNews', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:46:32 pm', '2024-10-18 11:46:33', '2024-10-18 11:46:33'),
(5471, 'news add ', 'http://localhost/doinikdinkal/admin/uploadVideoNews', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:48:43 pm', '2024-10-18 11:48:43', '2024-10-18 11:48:43'),
(5472, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:49:48 pm', '2024-10-18 11:49:49', '2024-10-18 11:49:49'),
(5473, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:52:26 pm', '2024-10-18 11:52:27', '2024-10-18 11:52:27'),
(5474, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:52:51 pm', '2024-10-18 11:52:52', '2024-10-18 11:52:52'),
(5475, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:54:15 pm', '2024-10-18 11:54:16', '2024-10-18 11:54:16'),
(5476, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:22:41 am', '2024-10-18 12:22:41', '2024-10-18 12:22:41'),
(5477, ' update permission ', 'http://localhost/doinikdinkal/admin/permission/englishNews', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:26:18 am', '2024-10-18 12:26:18', '2024-10-18 12:26:18'),
(5478, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:26:21 am', '2024-10-18 12:26:21', '2024-10-18 12:26:21'),
(5479, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:26:22 am', '2024-10-18 12:26:22', '2024-10-18 12:26:22'),
(5480, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:26:30 am', '2024-10-18 12:26:30', '2024-10-18 12:26:30'),
(5481, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:26:35 am', '2024-10-18 12:26:35', '2024-10-18 12:26:35'),
(5482, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:26:39 am', '2024-10-18 12:26:39', '2024-10-18 12:26:39'),
(5483, 'Update Role.', 'http://localhost/doinikdinkal/admin/role/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:26:47 am', '2024-10-18 12:26:47', '2024-10-18 12:26:47'),
(5484, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:26:56 am', '2024-10-18 12:26:56', '2024-10-18 12:26:56'),
(5485, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/6/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:27:02 am', '2024-10-18 12:27:02', '2024-10-18 12:27:02'),
(5486, 'Update Role.', 'http://localhost/doinikdinkal/admin/role/6', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:27:09 am', '2024-10-18 12:27:09', '2024-10-18 12:27:09'),
(5487, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:27:19 am', '2024-10-18 12:27:19', '2024-10-18 12:27:19'),
(5488, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/7/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:27:23 am', '2024-10-18 12:27:24', '2024-10-18 12:27:24'),
(5489, 'Update Role.', 'http://localhost/doinikdinkal/admin/role/7', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:28:04 am', '2024-10-18 12:28:04', '2024-10-18 12:28:04'),
(5490, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:28:09 am', '2024-10-18 12:28:09', '2024-10-18 12:28:09'),
(5491, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:28:16 am', '2024-10-18 12:28:16', '2024-10-18 12:28:16'),
(5492, ' create permission ', 'http://localhost/doinikdinkal/admin/permission', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:29:56 am', '2024-10-18 12:29:56', '2024-10-18 12:29:56'),
(5493, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:29:57 am', '2024-10-18 12:29:58', '2024-10-18 12:29:58'),
(5494, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:29:58 am', '2024-10-18 12:29:59', '2024-10-18 12:29:59'),
(5495, ' create permission ', 'http://localhost/doinikdinkal/admin/permission', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:30:49 am', '2024-10-18 12:30:49', '2024-10-18 12:30:49'),
(5496, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:30:50 am', '2024-10-18 12:30:50', '2024-10-18 12:30:50'),
(5497, 'permission list', 'http://localhost/doinikdinkal/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:30:51 am', '2024-10-18 12:30:51', '2024-10-18 12:30:51'),
(5498, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:30:58 am', '2024-10-18 12:30:59', '2024-10-18 12:30:59'),
(5499, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:31:02 am', '2024-10-18 12:31:03', '2024-10-18 12:31:03'),
(5500, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:31:09 am', '2024-10-18 12:31:10', '2024-10-18 12:31:10'),
(5501, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:31:14 am', '2024-10-18 12:31:14', '2024-10-18 12:31:14'),
(5502, 'Update Role.', 'http://localhost/doinikdinkal/admin/role/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:31:23 am', '2024-10-18 12:31:23', '2024-10-18 12:31:23'),
(5503, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:31:33 am', '2024-10-18 12:31:33', '2024-10-18 12:31:33'),
(5504, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/6/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:31:39 am', '2024-10-18 12:31:39', '2024-10-18 12:31:39'),
(5505, 'Update Role.', 'http://localhost/doinikdinkal/admin/role/6', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:31:47 am', '2024-10-18 12:31:47', '2024-10-18 12:31:47'),
(5506, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:31:56 am', '2024-10-18 12:31:57', '2024-10-18 12:31:57'),
(5507, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/7/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:32:02 am', '2024-10-18 12:32:02', '2024-10-18 12:32:02'),
(5508, 'Update Role.', 'http://localhost/doinikdinkal/admin/role/7', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:32:31 am', '2024-10-18 12:32:32', '2024-10-18 12:32:32'),
(5509, 'Role List.', 'http://localhost/doinikdinkal/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:32:38 am', '2024-10-18 12:32:38', '2024-10-18 12:32:38'),
(5510, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:37:44 am', '2024-10-18 12:37:45', '2024-10-18 12:37:45'),
(5511, 'View Role Edit Page.', 'http://localhost/doinikdinkal/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:42:11 am', '2024-10-18 12:42:11', '2024-10-18 12:42:11'),
(5512, 'englishNews add ', 'http://localhost/doinikdinkal/admin/englishNews', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:09:32 am', '2024-10-18 13:09:33', '2024-10-18 13:09:33'),
(5513, 'englishNews add ', 'http://localhost/doinikdinkal/admin/englishUploadImageNews', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:09:43 am', '2024-10-18 13:09:43', '2024-10-18 13:09:43'),
(5514, 'englishNews add ', 'http://localhost/doinikdinkal/admin/englishNews/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:10:01 am', '2024-10-18 13:10:02', '2024-10-18 13:10:02'),
(5515, 'englishNews add ', 'http://localhost/doinikdinkal/admin/englishNews', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:10:51 am', '2024-10-18 13:10:51', '2024-10-18 13:10:51'),
(5516, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:15:13 am', '2024-10-18 13:15:14', '2024-10-18 13:15:14'),
(5517, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:25:30 am', '2024-10-18 13:25:30', '2024-10-18 13:25:30'),
(5518, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:27:25 am', '2024-10-18 13:27:25', '2024-10-18 13:27:25'),
(5519, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:28:46 am', '2024-10-18 13:28:46', '2024-10-18 13:28:46'),
(5520, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:29:40 am', '2024-10-18 13:29:41', '2024-10-18 13:29:41'),
(5521, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:30:00 am', '2024-10-18 13:30:01', '2024-10-18 13:30:01'),
(5522, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Linux; Android) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.109 Safari/537.36 CrKey/1.54.248666', '1', '01:30:59 am', '2024-10-18 13:30:59', '2024-10-18 13:30:59'),
(5523, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:31:57 am', '2024-10-18 13:31:57', '2024-10-18 13:31:57'),
(5524, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:32:28 am', '2024-10-18 13:32:28', '2024-10-18 13:32:28'),
(5525, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:33:01 am', '2024-10-18 13:33:01', '2024-10-18 13:33:01'),
(5526, 'View System Information.', 'http://localhost/doinikdinkal/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:39:53 am', '2024-10-18 13:39:53', '2024-10-18 13:39:53'),
(5527, 'View System Information.', 'http://localhost/doinikdinkal/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:46:51 am', '2024-10-18 13:46:51', '2024-10-18 13:46:51'),
(5528, 'System  Info Update.', 'http://localhost/doinikdinkal/admin/systemInformation/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:48:33 am', '2024-10-18 13:48:34', '2024-10-18 13:48:34'),
(5529, 'View System Information.', 'http://localhost/doinikdinkal/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:48:35 am', '2024-10-18 13:48:35', '2024-10-18 13:48:35'),
(5530, 'View System Information.', 'http://localhost/doinikdinkal/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:49:15 am', '2024-10-18 13:49:15', '2024-10-18 13:49:15'),
(5531, 'Logged Out.', 'http://localhost/doinikdinkal/admin/logout/submit', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:49:23 am', '2024-10-18 13:49:24', '2024-10-18 13:49:24'),
(5532, 'Logged In.', 'http://localhost/doinikdinkal/admin/login', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:50:13 am', '2024-10-18 13:50:13', '2024-10-18 13:50:13'),
(5533, 'view dashboard', 'http://localhost/doinikdinkal/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:50:15 am', '2024-10-18 13:50:15', '2024-10-18 13:50:15'),
(5534, 'news add ', 'http://localhost/doinikdinkal/admin/news', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:50:28 am', '2024-10-18 13:50:28', '2024-10-18 13:50:28'),
(5535, 'Logged Out.', 'http://localhost/doinikdinkal/admin/logout/submit', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '01:50:43 am', '2024-10-18 13:50:43', '2024-10-18 13:50:43'),
(5536, 'Logged In.', 'http://localhost:8081/doinikdinkal/admin/login', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:52:46 am', '2024-10-18 22:52:47', '2024-10-18 22:52:47'),
(5537, 'view dashboard', 'http://localhost:8081/doinikdinkal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:52:48 am', '2024-10-18 22:52:49', '2024-10-18 22:52:49'),
(5538, 'view employee list', 'http://localhost:8081/doinikdinkal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:53:01 am', '2024-10-18 22:53:02', '2024-10-18 22:53:02'),
(5539, 'edit employee list', 'http://localhost:8081/doinikdinkal/admin/user/5/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:53:14 am', '2024-10-18 22:53:15', '2024-10-18 22:53:15'),
(5540, 'update employee list', 'http://localhost:8081/doinikdinkal/admin/user/5', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:53:47 am', '2024-10-18 22:53:47', '2024-10-18 22:53:47'),
(5541, 'view employee list', 'http://localhost:8081/doinikdinkal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:53:48 am', '2024-10-18 22:53:48', '2024-10-18 22:53:48'),
(5542, 'create employee ', 'http://localhost:8081/doinikdinkal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:53:57 am', '2024-10-18 22:53:57', '2024-10-18 22:53:57'),
(5543, ' employee store', 'http://localhost:8081/doinikdinkal/admin/user', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:55:02 am', '2024-10-18 22:55:02', '2024-10-18 22:55:02'),
(5544, 'view employee list', 'http://localhost:8081/doinikdinkal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:55:03 am', '2024-10-18 22:55:04', '2024-10-18 22:55:04'),
(5545, 'create employee ', 'http://localhost:8081/doinikdinkal/admin/user/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:55:36 am', '2024-10-18 22:55:37', '2024-10-18 22:55:37'),
(5546, ' employee store', 'http://localhost:8081/doinikdinkal/admin/user', 'POST', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:56:28 am', '2024-10-18 22:56:28', '2024-10-18 22:56:28'),
(5547, 'view employee list', 'http://localhost:8081/doinikdinkal/admin/user', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '10:56:28 am', '2024-10-18 22:56:29', '2024-10-18 22:56:29'),
(5548, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:02:12 am', '2024-10-18 23:02:12', '2024-10-18 23:02:12'),
(5549, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:02:44 am', '2024-10-18 23:02:45', '2024-10-18 23:02:45'),
(5550, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:05:31 am', '2024-10-18 23:05:32', '2024-10-18 23:05:32'),
(5551, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:07:05 am', '2024-10-18 23:07:06', '2024-10-18 23:07:06'),
(5552, 'news Update ', 'http://localhost:8081/doinikdinkal/admin/news/OA==/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:09:31 am', '2024-10-18 23:09:32', '2024-10-18 23:09:32'),
(5553, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:09:49 am', '2024-10-18 23:09:50', '2024-10-18 23:09:50'),
(5554, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:11:46 am', '2024-10-18 23:11:47', '2024-10-18 23:11:47'),
(5555, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:13:07 am', '2024-10-18 23:13:07', '2024-10-18 23:13:07'),
(5556, 'category list ', 'http://localhost:8081/doinikdinkal/admin/categoryList', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:14:04 am', '2024-10-18 23:14:05', '2024-10-18 23:14:05'),
(5557, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:15:05 am', '2024-10-18 23:15:06', '2024-10-18 23:15:06'),
(5558, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:15:50 am', '2024-10-18 23:15:51', '2024-10-18 23:15:51'),
(5559, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:17:01 am', '2024-10-18 23:17:01', '2024-10-18 23:17:01'),
(5560, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:18:17 am', '2024-10-18 23:18:17', '2024-10-18 23:18:17'),
(5561, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:20:36 am', '2024-10-18 23:20:36', '2024-10-18 23:20:36'),
(5562, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:21:38 am', '2024-10-18 23:21:39', '2024-10-18 23:21:39'),
(5563, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:22:10 am', '2024-10-18 23:22:10', '2024-10-18 23:22:10'),
(5564, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:24:01 am', '2024-10-18 23:24:01', '2024-10-18 23:24:01'),
(5565, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:25:45 am', '2024-10-18 23:25:46', '2024-10-18 23:25:46'),
(5566, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:26:45 am', '2024-10-18 23:26:45', '2024-10-18 23:26:45'),
(5567, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:27:42 am', '2024-10-18 23:27:42', '2024-10-18 23:27:42'),
(5568, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:28:23 am', '2024-10-18 23:28:23', '2024-10-18 23:28:23'),
(5569, 'news add ', 'http://localhost:8081/doinikdinkal/admin/uploadImageNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:31:40 am', '2024-10-18 23:31:41', '2024-10-18 23:31:41'),
(5570, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:33:09 am', '2024-10-18 23:33:09', '2024-10-18 23:33:09'),
(5571, 'news add ', 'http://localhost:8081/doinikdinkal/admin/uploadVideoNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:34:40 am', '2024-10-18 23:34:41', '2024-10-18 23:34:41'),
(5572, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:36:33 am', '2024-10-18 23:36:34', '2024-10-18 23:36:34'),
(5573, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:37:35 am', '2024-10-18 23:37:36', '2024-10-18 23:37:36'),
(5574, 'news add ', 'http://localhost:8081/doinikdinkal/admin/uploadImageNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:37:41 am', '2024-10-18 23:37:41', '2024-10-18 23:37:41'),
(5575, 'news add ', 'http://localhost:8081/doinikdinkal/admin/uploadImageNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:37:49 am', '2024-10-18 23:37:49', '2024-10-18 23:37:49'),
(5576, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:38:33 am', '2024-10-18 23:38:33', '2024-10-18 23:38:33'),
(5577, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:39:21 am', '2024-10-18 23:39:22', '2024-10-18 23:39:22'),
(5578, 'news Update ', 'http://localhost:8081/doinikdinkal/admin/news/MTc=', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:41:31 am', '2024-10-18 23:41:32', '2024-10-18 23:41:32'),
(5579, 'news Update ', 'http://localhost:8081/doinikdinkal/admin/news/MTc=', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:41:45 am', '2024-10-18 23:41:45', '2024-10-18 23:41:45'),
(5580, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:42:15 am', '2024-10-18 23:42:16', '2024-10-18 23:42:16'),
(5581, 'news Update ', 'http://localhost:8081/doinikdinkal/admin/news/MTc=', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:42:21 am', '2024-10-18 23:42:22', '2024-10-18 23:42:22'),
(5582, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:42:40 am', '2024-10-18 23:42:40', '2024-10-18 23:42:40'),
(5583, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:44:29 am', '2024-10-18 23:44:29', '2024-10-18 23:44:29'),
(5584, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:45:57 am', '2024-10-18 23:45:58', '2024-10-18 23:45:58'),
(5585, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:46:06 am', '2024-10-18 23:46:06', '2024-10-18 23:46:06'),
(5586, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:47:00 am', '2024-10-18 23:47:00', '2024-10-18 23:47:00'),
(5587, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:47:40 am', '2024-10-18 23:47:40', '2024-10-18 23:47:40'),
(5588, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:48:18 am', '2024-10-18 23:48:18', '2024-10-18 23:48:18'),
(5589, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:49:16 am', '2024-10-18 23:49:17', '2024-10-18 23:49:17'),
(5590, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:50:00 am', '2024-10-18 23:50:01', '2024-10-18 23:50:01'),
(5591, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:50:43 am', '2024-10-18 23:50:43', '2024-10-18 23:50:43'),
(5592, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:51:17 am', '2024-10-18 23:51:17', '2024-10-18 23:51:17'),
(5593, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:51:44 am', '2024-10-18 23:51:44', '2024-10-18 23:51:44'),
(5594, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:52:34 am', '2024-10-18 23:52:34', '2024-10-18 23:52:34'),
(5595, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:53:49 am', '2024-10-18 23:53:50', '2024-10-18 23:53:50'),
(5596, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:54:35 am', '2024-10-18 23:54:35', '2024-10-18 23:54:35'),
(5597, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:54:56 am', '2024-10-18 23:54:56', '2024-10-18 23:54:56'),
(5598, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:55:47 am', '2024-10-18 23:55:47', '2024-10-18 23:55:47'),
(5599, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishUploadImageNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:56:34 am', '2024-10-18 23:56:34', '2024-10-18 23:56:34');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(5600, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:57:45 am', '2024-10-18 23:57:45', '2024-10-18 23:57:45'),
(5601, 'news add ', 'http://localhost:8081/doinikdinkal/admin/uploadVideoNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:58:30 am', '2024-10-18 23:58:30', '2024-10-18 23:58:30'),
(5602, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:58:32 am', '2024-10-18 23:58:32', '2024-10-18 23:58:32'),
(5603, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:58:34 am', '2024-10-18 23:58:35', '2024-10-18 23:58:35'),
(5604, 'news Update ', 'http://localhost:8081/doinikdinkal/admin/news/MTc=/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:58:48 am', '2024-10-18 23:58:49', '2024-10-18 23:58:49'),
(5605, 'view dashboard', 'http://localhost:8081/doinikdinkal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:58:50 am', '2024-10-18 23:58:50', '2024-10-18 23:58:50'),
(5606, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishUploadVideoNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:59:14 am', '2024-10-18 23:59:15', '2024-10-18 23:59:15'),
(5607, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:59:49 am', '2024-10-18 23:59:49', '2024-10-18 23:59:49'),
(5608, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '11:59:57 am', '2024-10-18 23:59:57', '2024-10-18 23:59:57'),
(5609, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:01:12 pm', '2024-10-19 00:01:13', '2024-10-19 00:01:13'),
(5610, 'englishNews add ', 'http://localhost:8081/doinikdinkal/admin/englishNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:10:43 pm', '2024-10-19 00:10:44', '2024-10-19 00:10:44'),
(5611, 'Role List.', 'http://localhost:8081/doinikdinkal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:10:55 pm', '2024-10-19 00:10:55', '2024-10-19 00:10:55'),
(5612, 'View Role Edit Page.', 'http://localhost:8081/doinikdinkal/admin/role/6/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:11:01 pm', '2024-10-19 00:11:02', '2024-10-19 00:11:02'),
(5613, 'Update Role.', 'http://localhost:8081/doinikdinkal/admin/role/6', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:11:18 pm', '2024-10-19 00:11:19', '2024-10-19 00:11:19'),
(5614, 'Role List.', 'http://localhost:8081/doinikdinkal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:11:23 pm', '2024-10-19 00:11:23', '2024-10-19 00:11:23'),
(5615, 'View Role Edit Page.', 'http://localhost:8081/doinikdinkal/admin/role/6/edit', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:12:55 pm', '2024-10-19 00:12:55', '2024-10-19 00:12:55'),
(5616, 'Update Role.', 'http://localhost:8081/doinikdinkal/admin/role/6', 'PUT', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:17:38 pm', '2024-10-19 00:17:38', '2024-10-19 00:17:38'),
(5617, 'Role List.', 'http://localhost:8081/doinikdinkal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:17:42 pm', '2024-10-19 00:17:42', '2024-10-19 00:17:42'),
(5618, 'Role List.', 'http://localhost:8081/doinikdinkal/admin/role', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:26:53 pm', '2024-10-19 00:26:54', '2024-10-19 00:26:54'),
(5619, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news/create', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:27:00 pm', '2024-10-19 00:27:01', '2024-10-19 00:27:01'),
(5620, 'news add ', 'http://localhost:8081/doinikdinkal/admin/uploadImageNews', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:27:03 pm', '2024-10-19 00:27:03', '2024-10-19 00:27:03'),
(5621, 'news add ', 'http://localhost:8081/doinikdinkal/admin/news', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '12:27:06 pm', '2024-10-19 00:27:06', '2024-10-19 00:27:06'),
(5622, 'view dashboard', 'http://localhost:8081/doinikdinkal/admin', 'GET', '40-8D-5C-33-76-77   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '1', '04:10:39 pm', '2024-10-19 04:10:40', '2024-10-19 04:10:40');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_05_080336_create_permission_tables', 1),
(7, '2023_05_06_060503_create_system_information_table', 1),
(8, '2023_07_15_072135_create_branches_table', 1),
(9, '2023_07_15_072327_create_designation_lists_table', 1),
(10, '2023_07_15_073752_create_designation_steps_table', 1),
(11, '2023_07_15_074320_create_admins_table', 1),
(12, '2023_08_01_054043_create_job_histories_table', 1),
(13, '2023_08_22_112242_create_admin_designation_histories_table', 1),
(14, '2023_10_08_080431_create_log_activities_table', 1),
(15, '2024_03_31_051411_create_tables_table', 1),
(16, '2024_03_31_051501_create_qr_codes_table', 1),
(17, '2024_03_31_070120_create_categories_table', 1),
(18, '2024_03_31_070143_create_food_table', 1),
(19, '2024_03_31_073954_create_food_ingredients_table', 1),
(20, '2024_03_31_075247_create_units_table', 1),
(21, '2024_04_02_084200_create_expense_categories_table', 1),
(22, '2024_04_02_084305_create_leave_types_table', 1),
(23, '2024_04_02_084453_create_suppliers_table', 1),
(24, '2024_04_26_063952_create_customers_table', 1),
(26, '2024_04_26_081839_create_sub_categories_table', 2),
(27, '2024_04_29_161255_create_product_add_ons_table', 3),
(28, '2024_04_29_161341_create_product_attributes_table', 3),
(29, '2024_04_29_173457_create_products_table', 4),
(30, '2024_04_29_173620_create_product_variations_table', 4),
(31, '2024_04_29_173659_create_product_variation_lists_table', 4),
(32, '2024_04_29_181006_create_menus_table', 5),
(33, '2024_05_01_024540_create_orders_table', 6),
(34, '2024_05_01_024605_create_ship_addresses_table', 6),
(35, '2024_05_21_051921_create_order_details_table', 6),
(36, '2024_06_07_052419_create_vendors_table', 7),
(37, '2024_06_07_053120_create_inventory_names_table', 8),
(38, '2024_06_07_053146_create_inventories_table', 8),
(39, '2024_06_07_053658_create_inventory_quantities_table', 8),
(40, '2024_06_13_052425_create_food_types_table', 9),
(41, '2024_06_16_165903_create_assaign_quantiys_table', 10),
(42, '2024_07_21_080013_create_discounts_table', 11),
(43, '2024_10_09_105548_create_stocks_table', 12),
(44, '2024_10_17_094344_create_image_links_table', 13),
(45, '2024_10_17_095115_create_news_table', 13),
(46, '2024_10_18_162348_create_social_links_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(6, 'App\\Models\\Admin', 5),
(7, 'App\\Models\\Admin', 6),
(7, 'App\\Models\\Admin', 7),
(7, 'App\\Models\\Admin', 8);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_slug` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `des` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_caption` longtext DEFAULT NULL,
  `headline_type` varchar(255) DEFAULT NULL,
  `home_page_position` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `publish_site` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `trash_status` varchar(255) DEFAULT NULL,
  `approve_status` varchar(11) DEFAULT NULL,
  `video_news` varchar(200) DEFAULT NULL,
  `image_news` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `admin_id`, `title`, `title_slug`, `subtitle`, `des`, `image`, `image_caption`, `headline_type`, `home_page_position`, `category`, `sub_category`, `publish_site`, `status`, `create_date`, `create_time`, `trash_status`, `approve_status`, `video_news`, `image_news`, `created_at`, `updated_at`) VALUES
(8, '1', 'বিচারপতি অপসারণের পথ উন্মুক্ত হচ্ছে', 'bicarpti-opsarner-pth-unmukt-hcche', NULL, '<p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif, Vrinda, SolaimanLipi;\">সংবিধান বিশেষজ্ঞ ড. শাহদীন মালিক বলেন, রিভিউ পিটিশন প্রত্যাহার করে নিলে সুপ্রিম জুডিসিয়াল কাউন্সিল পদ্ধতি পুনরুজ্জীবিত হবে। যখন ওই পদ্ধতি পুনরুজ্জীবিত হবে এখন প্রধান বিচারপতির নেতৃত্বে তিন সদস্যের কাউন্সিল গঠন করতে কোন বাধা থাকবে না।</p><p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif, Vrinda, SolaimanLipi;\">প্রসঙ্গত, ১৯৭২ সালে প্রণীত মূল সংবিধানে উচ্চ আদালতে বিচারপতি অপসারণ সংক্রান্ত ক্ষমতা জাতীয় সংসদের হাতে ছিলো। ১৯৭৫ সালে রাষ্ট্রপতি শাসিত সরকারব্যবস্থা চালুর পর এই ক্ষমতা সংসদের কাছ থেকে সরিয়ে চতুর্থ সংশোধনীর মাধ্যমে আনা হয় রাষ্ট্রপতির হাতে। কিন্তু পরবর্তীতে রাষ্ট্রপতি জিয়াউর রহমানের শাসনকালে পঞ্চম সংশোধনীর মাধ্যমে সংবিধানে যুক্ত করা হয় সুপ্রিম জুডিসিয়াল কাউন্সিল পদ্ধতি। এ পদ্ধতির মাধ্যমে উচ্চ আদালতের বিচারপতিদের দুর্নীতি ও গুরুতর অসদাচরণের অভিযোগের তদন্ত করে ব্যবস্থা নেওয়া হত। দীর্ঘদিন ধরে চলা ওই পদ্ধতি সংবিধানের ষোড়শ সংশোধনীর মাধ্যমে বাতিল করে বিচারপতি অপসারণ ক্ষমতা ২০১৪ সালে আবারো জাতীয় সংসদের হাতে ফিরিয়ে নেয় তত্কালীন আওয়ামী লীগ সরকার। তখন বিএনপিসহ বিরোধী বাজনৈতিক দলগুলো এই সংশোধনীর তীব্র বিরোধিতা করে। বিরোধী রাজনৈতিক দলগুলোর অভিযোগ ছিলো, এই সংশোধনীর মাধ্যমে বিচার বিভাগের উপর আওয়ামী লীগ সরকার নিজের কর্তৃত্ব প্রতিষ্ঠা করতে চাইছে।</p>', 'public/uploads/newCoverPhoto/2024-19-1017293145899445711780.webp', 'বিচারপতি অপসারণের পথ উন্মুক্ত হচ্ছে', 'yes', 'first', '4', NULL, '1', '1', '2024-10-19', '11:05:32am', '0', '1', NULL, NULL, '2024-10-18 23:07:05', '2024-10-18 23:09:49'),
(9, '1', 'সাংবাদিকদের বিচার ট্রাইব্যুনালে হবে’ এ কথা আমি বলিনি', 'sangbadikder-bicar-traibzunale-hbe-e-ktha-ami-blini', NULL, '<p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">সাংবাদিকদের বিরুদ্ধে অভিযোগ এবং বিচার নিয়ে মতিউর রহমান চৌধুরীর প্রশ্নের জবাবে আইন উপদেষ্টা বলেন, এটা নিয়ে একটা চরম মিসইন্টারপ্রেটিশন (ভুল ব্যাখ্যা) হয়েছে।</p><p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">তিনি বলেন, আমি সেদিন বলি নাই যে সাংবাদিকদের এই ট্রাইব্যুনালে বিচার করা হবে। আপনারা ফুটেজটা দেখলেই বুঝতে পারবেন। যখন বক্তব্য শেষ হয়েছে, হঠাৎ করে এক সাংবাদিক প্রশ্ন করলেন যে, আচ্ছা এখানে তো অনেক সাংবাদিকের বিরুদ্ধেও অনেক হত্যার অভিযোগ উঠছে, তো সাংবাদিকদের বিচারও কী এই ট্রাইব্যুনালে হবে নাকি?</p><p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">জবাবে আমি বললাম, ট্রাইব্যুনালে কাদের কী বিচার হবে- সেটা তো আমি বলার কেউ না। এখানে প্রসিকিউটর সাহেব আছেন, তিনিই বলতে পারবেন।</p><p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">এরপরই আমি সাংবাদিকদের বলি, আমি আপনাকে একটা জিনিস বলতে পারি, সেটা হলো- এখানে বিচার নয়, সুবিচার হবে।&nbsp;</p><p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">এ সময় তিনি অভিযোগ তুলে বলেন, এটা আমি অভারঅল বললাম। তবে কেমনে-কিভাবে জোড়া লাগিয়ে বলা হলো যে, ট্রাইব্যুনালে সাংবাদিকদের বিচার হবে!&nbsp;</p><p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">আসিফ নজরুল এ সময় জোর দিয়ে বলেন, সাংবাদিকদের বিচার ট্রাইব্যুনালে হবে- এ ধরণের কোনো কথা আমি কখনও বলিও নাই, এমনকি সেদিন সাংবাদিকদের প্রশ্নের উত্তরেও আমি এ কথা বলি নাই।&nbsp;</p><p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">‘এমনকি এই ট্রাইব্যুনালে সাংবাদিকদের বিরুদ্ধে কোনো অভিযোগ আছে কিনা- এটাও আমি জানি না’, জোর দিয়ে বলেন ‍আইন উপদেষ্টা।&nbsp;</p>', 'public/uploads/newCoverPhoto/2024-19-1017293147865065195766.jpg', 'সাংবাদিকদের বিচার ট্রাইব্যুনালে হবে’ এ কথা আমি বলিনি', 'yes', 'second', '4', NULL, '1', '1', '2024-10-19', '11:11:47am', '0', '1', NULL, NULL, '2024-10-18 23:13:07', '2024-10-18 23:13:07'),
(10, '1', 'নির্বাচন নিয়ে আসিফ নজরুল ও সেনা প্রধানের বক্তব্য সরকারের নয়: ধর্ম উপদেষ্টা', 'nirwacn-niye-asif-njrul-oo-sena-prdhaner-bktbz-srkarer-ny-dhrm-updeshta', NULL, '<p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">শুক্রবার (১৮ অক্টোবর) বিকেলে কক্সবাজার সফর শেষে সার্কিট হাউসে সাংবাদিকদের সঙ্গে মতবিনিময়কালে তিনি এসব কথা বলেন।</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">এসময় ধর্ম উপদেষ্টা বলেন, আমরা ভোটিং কালচার নিশ্চিত করতে চাই। এখন রাষ্ট্র সংস্কারের পাশাপাশি আইন-শৃঙ্খলা পরিস্থিতির উন্নতি, রাজনৈতিক দলগুলোর লেভেল প্লেয়িং ফিল্ড তৈরি এবং ভোটার হালনাগাদ কাজ করবে সরকার। তার পরই আমরা নির্বাচন দেব, যাতে দেশের সব রাজনৈতিক দল নির্বাচনে অংশ নিতে পারে। নাজুক একটি পরিস্থিতিতে সরকার কাজ শুরু করেছে। প্রতিনিয়ত বিভিন্ন বিষয় নিয়ে কাজ করা হচ্ছে। দেশের ভোটিং কালচার নষ্ট করে ফেলা হয়েছে। আমরা ভোটিং কালচার নিশ্চিত করতে চাই।</p>', 'public/uploads/newCoverPhoto/2024-19-1017293149504898952182.webp', 'নির্বাচন নিয়ে আসিফ নজরুল ও সেনা প্রধানের বক্তব্য সরকারের নয়: ধর্ম উপদেষ্টা', 'yes', 'second', '4', NULL, '1', '1', '2024-10-19', '11:15:06am', '0', '1', NULL, NULL, '2024-10-18 23:15:50', '2024-10-18 23:15:50'),
(11, '1', 'মতিয়া চৌধুরীকে নিয়ে সংবাদের সমালোচনা, প্রধান উপদেষ্টার প্রেস সচিবের স্ট্যাটাস', 'mtiya-coudhureeke-niye-sngbader-smalocna-prdhan-updeshtar-pres-sciber-stzatas', NULL, '<span style=\"color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi; font-size: 20px; text-align: justify;\">শুক্রবার (১৮ অক্টোবর) নিজের ভেরিফায়েড ফেসবুক পেইজে তিনি লিখেছেন, মতিয়া চৌধুরীর দীর্ঘ ও ঘটনাবহুল রাজনৈতিক জীবনের গুরুত্বপূর্ণ ঘটনাবলি তুলে ধরে বাংলাদেশের শীর্ষস্থানীয় সংবাদপত্রগুলো তার প্রতি গভীর শ্রদ্ধা নিবেদন করেছে। কিন্তু নির্মোহ শোক সংবাদের পরিবর্তে সেগুলোতে মূলত ছিল সাধারণ প্রশংসা, যেন একজন মুরিদ তার পীর সম্বন্ধে লিখছেন। এটা পরিষ্কার যে আমরা ছোট থেকে অনেক সুফি তাজকিরা, বিশেষ করে তাজকিরাতুল আউলিয়া এবং তাজকিরাতুল আম্বিয়া পড়ে বড় হয়েছি।</span>', 'public/uploads/newCoverPhoto/2024-19-1017293150979421692192.jpg', 'মতিয়া চৌধুরীকে নিয়ে সংবাদের সমালোচনা, প্রধান উপদেষ্টার প্রেস সচিবের স্ট্যাটাস', 'yes', 'third', '7', NULL, '1', '1', '2024-10-19', '11:17:01am', '0', '1', NULL, NULL, '2024-10-18 23:18:17', '2024-10-18 23:18:17'),
(12, '1', 'আওয়ামী আমলের সিন্ডিকেট এখনো ভাঙতে পারেনি সরকার: জামায়াত আমির', 'awamee-amler-sindiket-ekhno-vangte-pareni-srkar-jamayat-amir', NULL, '<p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">শফিকুর রহমান বলেন, কীভাবে একটি দেশের শাসক নিজের গদি টিকিয়ে রাখতে গুলি চালানোর নির্দেশ দেয়! গুলি চালালেই গদি রক্ষা হয় না। তারা মনে করেছে আমরাই সব। যেভাবে ফেরাউন বলেছিল ‘আমিই তোমাদের রব’। তারা ধরাকে সরা জ্ঞান করেছিল। তারা শুধু আইনশৃঙ্খলা বাহিনীকে লেলিয়ে দেয়নি বরং হেলমেট বাহিনীকেও ব্যবহার করেছিল। আমরা আর একটি সন্তানও হারাতে চাই না। ষড়যন্ত্রের মাধ্যমে দেশের সূর্য সন্তানদের হত্যা করা হয়েছে। ফাঁসিতে ঝুলানো হয়েছে। আমরা এমন হত্যাকাণ্ড আর চাই না। আমাদের আর পেছনে তাকানোর সময় নেই।</p><p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">যে চেতনার ভিত্তিতে বিপ্লব এসেছে তার বেশিরভাগ অপূর্ণ রয়ে গেছে উল্লেখ করে জামায়াত আমির বলেন, যারা দেশের দায়িত্বে আছেন তাদের দেশের জনগণ ঐক্যমত্যের ভিত্তিতে এই দায়িত্ব দিয়েছে। আমরা তাদেরকে বলব ১৮ কোটি মানুষকে আপনাদের সম্মান করতে হবে। এই বিপ্লবের চেতনাকে ধারণ করে সমস্ত জঞ্জালকে পরিষ্কার করার জন্য জনগণকে সঙ্গে নিয়ে সাহসিকতার সঙ্গে আপনাদের এগিয়ে যেতে হবে। এর কোনো বেশকম জনগণ দেখতে চায় না।</p>', 'public/uploads/newCoverPhoto/2024-19-1017293152985258952803.webp', 'আওয়ামী আমলের সিন্ডিকেট এখনো ভাঙতে পারেনি সরকার: জামায়াত আমির', 'yes', 'third', '7', NULL, '1', '1', '2024-10-19', '11:20:37am', '0', '1', NULL, NULL, '2024-10-18 23:21:38', '2024-10-18 23:21:38'),
(13, '1', 'শেখ হাসিনার বিরুদ্ধে গণহত্যার অভিযোগ কল্পনাপ্রসূত: আওয়ামী লীগ', 'sekh-hasinar-biruddhe-gnhtzar-ovizog-klpnaprsuut-awamee-leeg', NULL, '<p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">১৯৭৩ সালে জাতির পিতা বঙ্গবন্ধুর সরকারের সময় প্রণীত আইনের আওতায় প্রধানমন্ত্রী শেখ হাসিনার সরকারের উদ্যোগে যুদ্ধাপরাধ ও মানবতা বিরোধী অপরাধের সাথে যুক্ত ব্যক্তিবর্গের বিচারের জন্য যে ট্রাইবুনাল গঠন করা হয়েছিল, সেই ট্রাইব্যুনালে যুদ্ধাপরাধীদের আইনজীবীকে প্রহসনমূলকভাবে চিফ প্রসিকিউটার নিয়োগ দেয়া হয়। এটি জাতির সাথে এক জঘন্য মশকরা।&nbsp;</p><p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">গণহত্যা আন্তর্জাতিক আইনের অধীন সংজ্ঞায়িত একটি বিশেষ আন্তর্জাতিক অপরাধ। জাতিসংঘ ঘোষিত ১৯৪৮ সালের গণহত্যা কনভেনশনের (Convention on the Prevention and Punishment of the Crime of Genocide) বিধান অনুযায়ী গণহত্যার বিচার হয়ে থাকে। ঐ কনভেনশনে গণহত্যার সুনির্দিষ্ট আইনি সংজ্ঞা দেয়া হয়েছে। এই কনভেনশন অনুযায়ী গণহত্যা হলো হত্যাকান্ড সহ এমন ক্ষতিকারক কাজ যার মূল লক্ষ্য হচ্ছে, সম্পূর্ণ বা আংশিকভাবে, কোন জাতি, গোষ্ঠী, সম্প্রদায় কিংবা ধর্মীয় গোষ্ঠীকে ধ্বংস করা। জুলাই- আগস্টে বাংলাদেশে কোটাবিরোধী আন্দোলনের নামে যে সন্ত্রাস ও নৈরাজ্য চালানো হয়েছিল, সেটি সারা বিশ্ব দেখেছে। সন্ত্রাসীরা পুলিশ সহ আওয়ামী লীগের নেতাকর্মী ও সমর্থকদের কীভাবে হত্যা করেছে সেটি আমরা সকলে দেখেছি। বরং দেশব্যাপী পুলিশ এবং আওয়ামী লীগের নেতাকর্মীদের টার্গেট করে যে হত্যাযজ্ঞ চালানো হচ্ছে, পাশাপাশি হিন্দু-বৌদ্ধ-খ্রিস্টান ধর্মাবলম্বীসহ &nbsp; অন্যান্য জাতি গোষ্ঠীর মানুষকে হত্যাসহ যে অকথ্য নির্যাতন চালানো হচ্ছে, সেটিই গণহত্যার পর্যায়ে পড়ে। গণহত্যা কনভেনশনে গণহত্যার সংজ্ঞায় যে শর্তগুলো আছে, এই হত্যাকান্ড ও সন্ত্রাস সে সকল শর্ত পূরণ করে।&nbsp;</p>', 'public/uploads/newCoverPhoto/2024-19-1017293154401673868783.jpg', 'শেখ হাসিনার বিরুদ্ধে গণহত্যার অভিযোগ কল্পনাপ্রসূত: আওয়ামী লীগ', 'yes', 'third', '7', NULL, '1', '1', '2024-10-19', '11:22:10am', '0', '1', NULL, NULL, '2024-10-18 23:24:00', '2024-10-18 23:24:00'),
(14, '1', 'বৃষ্টি বাধা উপেক্ষা করেই তাসকিনদের অনুশীলন', 'brrishti-badha-upeksha-krei-taskinder-onuseeln', NULL, '<p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">গতকাল মিরপুরে বাংলাদেশের অনুশীলন ছিল দুপুর ২টা থেকে। এর আগে দক্ষিণ আফ্রিকা অনুশীলন করেছে। সফরকারীরা নির্বিঘ্নে নিজেদের ঝালিয়ে নেওয়ার কাজটি সারলেও বাংলাদেশ পড়েছে বিপদে। যখনই ইনডোরের আউটারে মূল অনুশীলন শুরু হবে তখনই বৃষ্টি ঝরা শুরু হয়েছে। উপায়ন্তর না পেয়ে তাসকিন, মেহেদী হাসান মিরাজ, মাহমুদুল হাসান জয়, জাকির হাসনরা বৃষ্টির মধ্যেই চেষ্টা চালিয়েছেন।</p><p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">মিরপুরের সবুজ ঘাসে দৌড়ে তারা নিজেদের মতো করে গা গরম করেছেন। অন্যদিকে প্রথম বারের মতো বাংলাদেশের অনুশীলনে যোগ দিয়েছেন ফিল সিমন্স। তাকে মাঠে দেখে বিসিবির ফটোগ্রাফার দ্রুত কিছু ছবি তুলে নিয়েছেন। সিমন্সের সঙ্গে ছিলেন বাংলাদেশের ব্যাটিং কোচ ডেভিড হেম্প। বাংলাদেশের কন্ডিশন সম্পর্কে তেমন বেশি জানেন না ফিল সিমন্স। প্রধান কোচ হিসেবে গতকালই অভিষেক হয়েছে। এর আগে ঢাকায় পা রেখে একবার টু মেরেছিলেন মিরপুরে। গতকাল হয়েছে তার আনুষ্ঠানিকতা। তবে বৃষ্টির কারণে শিষ্যদের নিয়ে খোলা আকাশের নিচে তেমন কার্যক্রম চালাতে পারেননি। এই টেস্টে টাইগারদের মধ্যে বিশেষ নজর রয়েছে মিরাজের ওপরে। ঘরের মাটিতে কার্যকর বোলার হিসেবে তার সুখ্যাতি রয়েছে। ২৬-এর নিচে গড়ে বল করেন মিরাজ। মিরপুরে সেটি আরো কম। তাই দক্ষিণ আফ্রিকার মাথাব্যথার কারণ হতে পারেন তিনি।</p>', 'public/uploads/newCoverPhoto/2024-19-1017293156057550881389.webp', 'বৃষ্টি বাধা উপেক্ষা করেই তাসকিনদের অনুশীলন', 'no', 'fourth', '8', NULL, '1', '1', '2024-10-19', '11:25:46am', '0', '1', NULL, NULL, '2024-10-18 23:26:45', '2024-10-18 23:26:45'),
(15, '1', 'বরখাস্ত হয়ে গণমাধ্যমে বিবৃতিতে যা বললেন হাথুরু', 'brkhast-hye-gnmadhzme-bibrritite-za-bllen-hathuru', NULL, '<p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">গণমাধ্যমে পাঠানো এক বিবৃতিতে একাধিক অভিযোগের বিপরীতে নিজের অবস্থান তুলে ধরেন হাথুরুসিংহে। জাতীয় দলের স্পিনার নাসুম আহমেদকে চড় মারার প্রসঙ্গে তিনি বলেন, ‘প্রথমত, অভিযুক্ত ঘটনাটি খেলোয়াড়দের ডাগআউট বা ড্রেসিংরুমে ঘটেছিল, যেখানে বিশ্বকাপের ম্যাচ চলাকালে সার্বক্ষণিক নজরদারি থাকে। খেলার প্রতিটি মুহূর্ত সঙ্গে সঙ্গে ধারণ করে ৪০ থেকে ৫০টিরও বেশি ক্যামেরা। আমি অভিযোগকারীকে যাচাই করার সুযোগ পাইনি বা কোনো সাক্ষীও পাইনি, আদৌ যদি থেকে থাকে।’</p><p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">এরপর কয়েক মাস পরে কেন ইউটিউবে সেই অভিযোগ তোলা হলো পাল্টা প্রশ্ন ছুঁড়ে দেন সাবেক টাইগার কোচ, ‘ঘটনাটি যতটা গুরুতর হিসেবে দাবি করা হয়েছে, আশ্চর্যের ব্যাপার যে সংশ্লিষ্ট খেলোয়াড় ওই ইভেন্টের (ওয়ানডে বিশ্বকাপ) পরে দ্রুততম সময়ে টিম ম্যানেজার বা কোনো কর্তৃপক্ষকে ঘটনাটি জানায়নি। যদি অভিযোগ করাও হয়, আমি বিস্মিত যে কেন আমাকে প্রশ্ন করা হয়নি কিংবা আমার কাছ থেকে কিছু জানতে চায়নি। প্রশ্ন উঠছে, কেন এটি কয়েক মাস পরে ইউটিউবে একজন ব্যক্তির মাধ্যমে প্রকাশিত হলো?</p>', 'public/uploads/newCoverPhoto/2024-19-1017293157027688746054.jpg', 'বরখাস্ত হয়ে গণমাধ্যমে বিবৃতিতে যা বললেন হাথুরু', 'yes', 'fourth', '8', NULL, '1', '1', '2024-10-19', '11:27:42am', '0', '1', NULL, NULL, '2024-10-18 23:28:22', '2024-10-18 23:28:22'),
(16, '1', 'কামরাঙ্গীরচরে শহীদ মুগ্ধ সেতু', 'kamrangoeercre-sheed-mugdh-setu', NULL, '<p><img src=\"http://localhost:8081/doinikdinkal /public/uploads/extraImage/2024-19-1017293158623222497470.jpg\" style=\"width: 300px;\"></p><p><img src=\"http://localhost:8081/doinikdinkal /public/uploads/extraImage/2024-19-1017293158623222497470.jpg\" style=\"width: 300px;\">                        </p>', 'public/uploads/newCoverPhoto/2024-19-1017293159894274488475.jpg', 'কামরাঙ্গীরচরে শহীদ মুগ্ধ সেতু', 'no', 'other', '17', '15', '1', '1', '2024-10-19', '11:31:41am', '0', '1', NULL, '1', '2024-10-18 23:33:09', '2024-10-18 23:33:09'),
(17, '1', 'সংখ্যানুপাতিক নির্বাচন ব্যবস্থা চায় না বিএনপি', 'sngkhzanupatik-nirwacn-bzbstha-cay-na-bienpi', NULL, '<h1 itemprop=\"headline\" class=\"title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; line-height: 50px;\"><font color=\"#212121\" face=\"SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen, Ubuntu, Cantarell, Open Sans, Helvetica Neue, sans-serif, Vrinda, SolaimanLipi\"><span style=\"font-size: 40px;\">সংখ্যানুপাতিক নির্বাচন ব্যবস্থা চায় না বিএনপি</span></font><br></h1>', NULL, 'https://www.youtube.com/embed/h8mWZiJm0os?si=3gB96TYRU1_1Xj8W', 'no', 'other', '17', '16', '1', '1', '2024-10-19', '11:34:41am', '0', '1', '1', NULL, '2024-10-18 23:36:33', '2024-10-18 23:36:33'),
(18, '1', 'হামাসপ্রধানের মাথায় চালানো হয় গুলি, কেটে নেওয়া হয় আঙুল', 'hamasprdhaner-mathay-calano-hy-guli-kete-newa-hy-angul', NULL, '<p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">সিনওয়ারের লাশের ময়নাতদন্তকারী ইসরায়েলের প্রধান প্যাথলজিস্ট চেন কুগেল বলেছেন, হামাস নেতা মাথায় গুলির আঘাতে নিহত হয়েছেন। সিনওয়ারের মৃত্যুর সার্টিফিকেটে স্বাক্ষরকারী চেন কুগেল সিএনএনকে এক সাক্ষাৎকারে জানান, মাথায় গুলিবিদ্ধ ছাড়াও হামাসের এই নেতা মস্তিষ্কে গুরুতর আঘাত পেয়েছিলেন।&nbsp;</p><p class=\"alignfull\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: SolaimanLipi, Vrinda, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif, Vrinda, SolaimanLipi;\">বর্তমানে সিনওয়ারের লাশ ইসরায়েলের কাছে আছে বলে জানিয়েছে সিএনএন। সূত্রের বরাত দিয়ে প্রতিবেদনে বলা হয়েছে, গাজায় বন্দি ইসরায়েলি জিম্মিদের মুক্তির বিনিময়ে এখন সিনওয়ারের মৃতদেহ দর কষাকষি হিসেবে ব্যবহার হতে পারে। স্থানীয় এক মিডিয়ার খবরে বলা হয়েছে, ইসরায়েলে গোপন স্থানে সিনওয়ারের লাশ রাখা হয়েছে।&nbsp;</p>', 'public/uploads/newCoverPhoto/2024-19-1017293163615422060942.jpg', 'হামাসপ্রধানের মাথায় চালানো হয় গুলি, কেটে নেওয়া হয় আঙুল', 'yes', 'other', '6', NULL, '1', '1', '2024-10-19', '11:38:33am', '0', '1', NULL, NULL, '2024-10-18 23:39:21', '2024-10-18 23:39:21'),
(19, '1', 'Israeli attack ‘killed’ dozens in Gaza', 'israeli-attack-killed-dozens-in-gaza', NULL, '<p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">According to a statement from Gaza\'s Hamas-run government media office, Friday\'s air strike also injured more than 85 people, some seriously, as homes belonging to three families in the camp were hit.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">The final death toll could reach 50, it added, as people were buried under the rubble of buildings.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">The report could not be verified independently. Local sources indicate that northern Gaza is effectively isolated, with telecommunications and internet services severed in the region.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">A video circulating on social media - which the BBC has not verifed - appears to show bodies wrapped in white shrouds laid out in the courtyard of al-Awda Hospital.</p>', 'public/uploads/newCoverPhoto/2024-19-1017293167571849667377.webp', 'Israeli attack ‘killed’ dozens in Gaza', 'yes', 'first', '6', NULL, '0', '1', '2024-10-19', '11:44:29am', '0', '1', NULL, NULL, '2024-10-18 23:45:57', '2024-10-18 23:45:57'),
(20, '1', 'G7 defence summit convenes during \'historic moment\'', 'g7-defence-summit-convenes-during-historic-moment', NULL, '<p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">Besides the escalating Middle East conflict -- which Crosetto said would be accorded \"ample space\" during the one-day summit -- the agenda includes the war in Ukraine, development in Africa and security in the Asia-Pacific.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">The meeting comes two days after Israel announced the killing of Hamas chief Yahya Sinwar, mastermind of the October 7, 2023 attack on Israel that triggered the war in Gaza.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">Israeli Prime Minister Benjamin Netanyahu has said Sinwar\'s death in the Palestinian territory signalled \"the beginning of the end\" of the war against Hamas.</p>', 'public/uploads/newCoverPhoto/2024-19-1017293168193401895079.webp', 'G7 defence summit convenes during \'historic moment\'', 'yes', 'second', '6', NULL, '0', '1', '2024-10-19', '11:46:06am', '0', '1', NULL, NULL, '2024-10-18 23:46:59', '2024-10-18 23:46:59'),
(21, '1', 'Lebanon truce possible, ending Gaza war harder: Biden', 'lebanon-truce-possible-ending-gaza-war-harder-biden', NULL, '<p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">Asked by reporters if he has an understanding of how and when Israel would respond to the missile attacks by Iran, Biden replied yes, but he didn\'t elaborate further.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">As a reminder, Iran launched almost 200 ballistic missiles towards Israel on 1 October. Most of the projectiles were intercepted, according to Israel\'s military.</p>', 'public/uploads/newCoverPhoto/2024-19-1017293168975973981155.webp', 'Lebanon truce possible, ending Gaza war harder: Biden', 'yes', 'second', '6', NULL, '0', '1', '2024-10-19', '11:47:41am', '0', '1', NULL, NULL, '2024-10-18 23:48:17', '2024-10-18 23:48:17'),
(22, '1', 'Warrant issued for Hasina’s arrest', 'warrant-issued-for-hasinas-arrest', NULL, '<h1 itemprop=\"headline\" class=\"title mb10\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; outline-style: initial; outline-width: 0px; color: rgb(33, 33, 33); font-size: 40px; line-height: 44px; font-family: Merriweather, serif;\"><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0);\">The tribunal ordered that Sheikh Hasina must appear before the court by November 18.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0);\">Earlier reports suggested that the prosecution would seek arrest warrants against 50 people, including Sheikh Hasina, in connection with the atrocities that took place during the July-August period.</p></h1>', 'public/uploads/newCoverPhoto/2024-19-1017293170009300425560.webp', 'Warrant issued for Hasina’s arrest', 'yes', 'third', '7', NULL, '0', '1', '2024-10-19', '11:49:17am', '0', '1', NULL, NULL, '2024-10-18 23:50:00', '2024-10-18 23:50:00'),
(23, '1', 'Interim govt urged for earliest polls roadmap', 'interim-govt-urged-for-earliest-polls-roadmap', NULL, '<p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">\"BNP does not want power from you (the interim government). We just want to ensure the people\'s rights to vote. In the last 16 years, we wanted to ensure that people can cast their votes properly,\" he said, reports BSS.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">Dudu was addressing a discussion titled \' Agami Nirbachan, Nagorik Prottasha\' at Jatiya Press Club (JPC) as the chief guest.</p>', 'public/uploads/newCoverPhoto/2024-19-1017293170764695614438.webp', 'Interim govt urged for earliest polls roadmap', 'yes', 'third', '7', NULL, '0', '1', '2024-10-19', '11:50:43am', '0', '1', NULL, NULL, '2024-10-18 23:51:17', '2024-10-18 23:51:17'),
(24, '1', 'Repatriate Hasina for trial: Rizvi', 'repatriate-hasina-for-trial-rizvi', NULL, '<p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">Stating Bangladesh has signed the extradition treaty with India, the BNP leader said the interim government can take steps to bring Hasina back home through diplomatic efforts since a warrant for her arrest has been issued by a court.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">“Such a matter can be resolved through diplomatic discussions for her extradition. If not, the top terrorists in Bangladesh will find opportunities to take shelter in India and other countries,” he said.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">On the occasion of the Ziaur Rahman Foundation\'s silver jubilee, Rizvi, together with members of the organisation, paid homage to BNP founder Ziaur Rahman by placing a wreath at his grave.</p>', 'public/uploads/newCoverPhoto/2024-19-1017293171547693898491.webp', 'Repatriate Hasina for trial: Rizvi', 'yes', 'third', '7', NULL, '0', '1', '2024-10-19', '11:51:44am', '0', '1', NULL, NULL, '2024-10-18 23:52:34', '2024-10-18 23:52:34'),
(25, '1', 'Shakib cancels Dhaka return for security concerns', 'shakib-cancels-dhaka-return-for-security-concerns', NULL, '<p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">Amidst concerns over facing possible public anger for his role in the student-led protests that ousted Bangladesh’s Prime Minister Sheikh Hasina, Bangladesh cricketer Shakib Al Hasan said he is not coming home to play a Test match in Dhaka, which he said his last match in the format.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">This made the last Test of the series between India and Bangladesh in Kanpur the last Test of Shakib’s career, reports UNB.</p>', 'public/uploads/newCoverPhoto/2024-19-1017293172757381268855.webp', 'Shakib cancels Dhaka return for security concerns', 'yes', 'fourth', '8', NULL, '0', '1', '2024-10-19', '11:53:50am', '0', '1', NULL, NULL, '2024-10-18 23:54:35', '2024-10-18 23:54:35'),
(26, '1', 'Bangladesh gears up for title defence in Nepal', 'bangladesh-gears-up-for-title-defence-in-nepal', NULL, '<p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">Bangladesh National Women’s Football team, now in Kathmandu to compete in the SAFF Women\'s Championship 2024, made their first training session at ANFA ground from 8 am to 9:30 am on Wednesday.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">The seven- nation women\'s regional soccer meet will be held at the Dashrath Rangasala (Stadium) in Nepalese capital Kathmandu from October 17-30 with two arch-rival India and Pakistan playing each other in the inaugural match on Thursday (Oct 17), reports UNB.</p>', 'public/uploads/newCoverPhoto/2024-19-1017293173476208318833.webp', 'Bangladesh gears up for title defence in Nepal', 'yes', 'fourth', '8', NULL, '0', '1', '2024-10-19', '11:54:57am', '0', '1', NULL, NULL, '2024-10-18 23:55:47', '2024-10-18 23:55:47'),
(27, '1', 'Bangladesh crash to heavy defeat against India', 'bangladesh-crash-to-heavy-defeat-against-india', NULL, '<p><img src=\"  http://localhost:8081/doinikdinkal /public/uploads/extraImage/2024-19-1017293158543976260480.jpg\" style=\"width: 300px;\"><img src=\"  http://localhost:8081/doinikdinkal /public/uploads/extraImage/2024-19-1017293158458070461044.jpg\" style=\"width: 300px;\">                        </p>', 'public/uploads/newCoverPhoto/2024-19-1017293174649668528330.webp', 'Bangladesh crash to heavy defeat against India', 'no', 'other', '17', '15', '0', '1', '2024-10-19', '11:56:34am', '0', '1', NULL, '1', '2024-10-18 23:57:44', '2024-10-18 23:57:44'),
(28, '1', 'Miss Bangladesh 2024 selects top ten to represent Bangladesh globally', 'miss-bangladesh-2024-selects-top-ten-to-represent-bangladesh-globally', NULL, '<h1 itemprop=\"headline\" class=\"title mb10\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; outline-style: initial; outline-width: 0px; color: rgb(33, 33, 33); font-size: 40px; line-height: 44px; font-family: Merriweather, serif;\">Miss Bangladesh 2024 selects top ten to represent Bangladesh globally</h1>', NULL, 'https://www.youtube.com/embed/h8mWZiJm0os?si=3gB96TYRU1_1Xj8W', 'no', 'other', '17', '16', '0', '1', '2024-10-19', '11:59:15am', '0', '1', '1', NULL, '2024-10-18 23:59:49', '2024-10-18 23:59:49'),
(29, '1', 'Don’t hike essentials’ price irrationally: Speakers', 'dont-hike-essentials-price-irrationally-speakers', NULL, '<p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">There is no alternative to bring commodity prices within purchasing capacity for everyone, they also said.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; outline-style: initial; outline-width: 0px; overflow: hidden; font-size: 18px; line-height: 24px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Merriweather, serif;\">They made the comments while addressing a views exchange meeting on controlling the prices of all essentials held at the conference room of the deputy commissioner (DC) here on Thursday.</p>', 'public/uploads/newCoverPhoto/2024-19-1017293176724679218215.webp', 'Don’t hike essentials’ price irrationally: Speakers', 'yes', 'other', '4', NULL, '0', '1', '2024-10-19', '11:59:58am', '0', '1', NULL, NULL, '2024-10-19 00:01:12', '2024-10-19 00:01:12');

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `group_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.view', 'dashboard', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(2, 'dashboard.edit', 'dashboard', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(3, 'systemInformationAdd', 'systemInformation', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(4, 'systemInformationView', 'systemInformation', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(5, 'systemInformationDelete', 'systemInformation', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(6, 'systemInformationUpdate', 'systemInformation', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(11, 'designationAdd', 'designation', 'admin', '2024-04-28 23:11:43', '2024-04-28 23:11:43'),
(12, 'designationView', 'designation', 'admin', '2024-04-28 23:11:43', '2024-04-28 23:11:43'),
(13, 'designationDelete', 'designation', 'admin', '2024-04-28 23:11:43', '2024-04-28 23:11:43'),
(14, 'designationUpdate', 'designation', 'admin', '2024-04-28 23:11:43', '2024-04-28 23:11:43'),
(19, 'userAdd', 'user', 'admin', '2024-04-28 23:11:43', '2024-04-28 23:11:43'),
(20, 'userView', 'user', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(21, 'userDelete', 'user', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(22, 'userUpdate', 'user', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(23, 'roleAdd', 'role', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(24, 'roleView', 'role', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(25, 'roleDelete', 'role', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(26, 'roleUpdate', 'role', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(27, 'permissionAdd', 'permission', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(28, 'permissionView', 'permission', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(29, 'permissionDelete', 'permission', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(30, 'permissionUpdate', 'permission', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(31, 'profile.view', 'profile', 'admin', '2024-04-28 23:11:45', '2024-04-28 23:11:45'),
(32, 'profile.edit', 'profile', 'admin', '2024-04-28 23:11:45', '2024-04-28 23:11:45'),
(37, 'categoryAdd', 'category', 'admin', NULL, NULL),
(38, 'categoryView', 'category', 'admin', NULL, NULL),
(39, 'categoryDelete', 'category', 'admin', NULL, NULL),
(40, 'categoryUpdate', 'category', 'admin', NULL, NULL),
(120, 'subcategoryAdd', 'SubCategory', 'admin', NULL, NULL),
(121, 'subcategoryView', 'SubCategory', 'admin', NULL, NULL),
(122, 'subcategoryDelete', 'SubCategory', 'admin', NULL, NULL),
(134, 'teamAdd', 'Team', 'admin', NULL, NULL),
(135, 'teamView', 'Team', 'admin', NULL, NULL),
(136, 'teamDelete', 'Team', 'admin', NULL, NULL),
(137, 'teamUpdate', 'Team', 'admin', NULL, NULL),
(138, 'draftAdd', 'draft', 'admin', NULL, NULL),
(139, 'draftView', 'draft', 'admin', NULL, NULL),
(140, 'draftDelete', 'draft', 'admin', NULL, NULL),
(141, 'draftUpdate', 'draft', 'admin', NULL, NULL),
(142, 'linkAdd', 'link', 'admin', NULL, NULL),
(143, 'linkView', 'link', 'admin', NULL, NULL),
(144, 'linkDelete', 'link', 'admin', NULL, NULL),
(145, 'linkUpdate', 'link', 'admin', NULL, NULL),
(146, 'videoAdd', 'Video', 'admin', NULL, NULL),
(147, 'videoView', 'Video', 'admin', NULL, NULL),
(148, 'videoDelete', 'Video', 'admin', NULL, NULL),
(149, 'videoUpdate', 'Video', 'admin', NULL, NULL),
(150, 'imageAdd', 'image', 'admin', NULL, NULL),
(151, 'imageView', 'image', 'admin', NULL, NULL),
(152, 'imageDelete', 'image', 'admin', NULL, NULL),
(153, 'imageUpdate', 'image', 'admin', NULL, NULL),
(154, 'reportAdd', 'report', 'admin', NULL, NULL),
(155, 'reportView', 'report', 'admin', NULL, NULL),
(156, 'reportDelete', 'report', 'admin', NULL, NULL),
(157, 'reportUpdate', 'report', 'admin', NULL, NULL),
(166, 'englishDraftAdd', 'englishDraft', 'admin', NULL, NULL),
(167, 'englishDraftView', 'englishDraft', 'admin', NULL, NULL),
(168, 'englishDraftDelete', 'englishDraft', 'admin', NULL, NULL),
(169, 'englishDraftUpdate', 'englishDraft', 'admin', NULL, NULL),
(170, 'imagelinkAdd', 'imagelink', 'admin', NULL, NULL),
(171, 'imagelinkView', 'imagelink', 'admin', NULL, NULL),
(172, 'imagelinkDelete', 'imagelink', 'admin', NULL, NULL),
(173, 'imagelinkUpdate', 'imagelink', 'admin', NULL, NULL),
(191, 'newsAdd', 'news', 'admin', NULL, NULL),
(192, 'newsView', 'news', 'admin', NULL, NULL),
(193, 'newsDelete', 'news', 'admin', NULL, NULL),
(194, 'newsUpdate', 'news', 'admin', NULL, NULL),
(195, 'draftnews', 'news', 'admin', NULL, NULL),
(196, 'recyclenews', 'news', 'admin', NULL, NULL),
(197, 'imagenews', 'news', 'admin', NULL, NULL),
(198, 'videonews', 'news', 'admin', NULL, NULL),
(199, 'pendingnews', 'news', 'admin', NULL, NULL),
(200, 'approvenews', 'news', 'admin', NULL, NULL),
(201, 'englishNewsAdd', 'englishNews', 'admin', NULL, NULL),
(202, 'englishNewsView', 'englishNews', 'admin', NULL, NULL),
(203, 'englishNewsDelete', 'englishNews', 'admin', NULL, NULL),
(204, 'englishNewsUpdate', 'englishNews', 'admin', NULL, NULL),
(205, 'draftenglishnews', 'englishNews', 'admin', NULL, NULL),
(206, 'recycleenglishnews', 'englishNews', 'admin', NULL, NULL),
(207, 'imageenglishnews', 'englishNews', 'admin', NULL, NULL),
(208, 'videoenglishnews', 'englishNews', 'admin', NULL, NULL),
(209, 'pendingenglishnews', 'englishNews', 'admin', NULL, NULL),
(210, 'approveenglishnews', 'englishNews', 'admin', NULL, NULL),
(211, 'imageEnglishAdd', 'imageEnglish', 'admin', NULL, NULL),
(212, 'imageEnglishView', 'imageEnglish', 'admin', NULL, NULL),
(213, 'imageEnglishDelete', 'imageEnglish', 'admin', NULL, NULL),
(214, 'imageEnglishUpdate', 'imageEnglish', 'admin', NULL, NULL),
(215, 'videoEnglishAdd', 'videoEnglish', 'admin', NULL, NULL),
(216, 'videoEnglishView', 'videoEnglish', 'admin', NULL, NULL),
(217, 'videoEnglishDelete', 'videoEnglish', 'admin', NULL, NULL),
(218, 'videoEnglishUpdate', 'videoEnglish', 'admin', NULL, NULL);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qr_codes`
--

CREATE TABLE `qr_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_id` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'admin', '2024-04-28 23:11:41', '2024-04-28 23:11:41'),
(6, 'admin', 'admin', '2024-10-17 01:36:59', '2024-10-17 01:36:59'),
(7, 'journalist', 'admin', '2024-10-18 04:39:38', '2024-10-18 04:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 6),
(1, 7),
(2, 1),
(2, 6),
(2, 7),
(3, 1),
(3, 6),
(4, 1),
(4, 6),
(5, 1),
(5, 6),
(6, 1),
(6, 6),
(11, 1),
(11, 6),
(12, 1),
(12, 6),
(13, 1),
(13, 6),
(14, 1),
(14, 6),
(19, 1),
(19, 6),
(20, 1),
(20, 6),
(21, 1),
(21, 6),
(22, 1),
(22, 6),
(23, 1),
(23, 6),
(24, 1),
(24, 6),
(25, 1),
(25, 6),
(26, 1),
(26, 6),
(27, 1),
(27, 6),
(28, 1),
(28, 6),
(29, 1),
(29, 6),
(30, 1),
(30, 6),
(31, 1),
(31, 6),
(31, 7),
(32, 1),
(32, 6),
(32, 7),
(37, 1),
(37, 6),
(38, 1),
(38, 6),
(39, 1),
(40, 1),
(40, 6),
(120, 1),
(120, 6),
(121, 1),
(121, 6),
(122, 1),
(134, 1),
(134, 6),
(135, 1),
(135, 6),
(136, 1),
(136, 6),
(137, 1),
(137, 6),
(138, 1),
(138, 6),
(138, 7),
(139, 1),
(139, 6),
(139, 7),
(140, 1),
(140, 6),
(140, 7),
(141, 1),
(141, 6),
(141, 7),
(142, 1),
(142, 6),
(143, 1),
(143, 6),
(144, 1),
(144, 6),
(145, 1),
(145, 6),
(146, 1),
(146, 6),
(146, 7),
(147, 1),
(147, 6),
(147, 7),
(148, 1),
(148, 6),
(148, 7),
(149, 1),
(149, 6),
(149, 7),
(150, 1),
(150, 6),
(150, 7),
(151, 1),
(151, 6),
(151, 7),
(152, 1),
(152, 6),
(152, 7),
(153, 1),
(153, 6),
(153, 7),
(154, 1),
(154, 6),
(155, 1),
(155, 6),
(156, 1),
(156, 6),
(157, 1),
(157, 6),
(166, 1),
(166, 6),
(166, 7),
(167, 1),
(167, 6),
(167, 7),
(168, 1),
(168, 6),
(168, 7),
(169, 1),
(169, 6),
(169, 7),
(170, 1),
(170, 6),
(170, 7),
(171, 1),
(171, 6),
(171, 7),
(172, 1),
(172, 6),
(172, 7),
(173, 1),
(173, 6),
(173, 7),
(191, 1),
(191, 6),
(191, 7),
(192, 1),
(192, 6),
(192, 7),
(193, 1),
(193, 6),
(193, 7),
(194, 1),
(194, 6),
(194, 7),
(195, 1),
(195, 6),
(195, 7),
(196, 1),
(196, 6),
(196, 7),
(197, 1),
(197, 6),
(197, 7),
(198, 1),
(198, 6),
(198, 7),
(199, 1),
(199, 6),
(199, 7),
(200, 1),
(200, 6),
(201, 1),
(201, 6),
(201, 7),
(202, 1),
(202, 6),
(202, 7),
(203, 1),
(203, 6),
(203, 7),
(204, 1),
(204, 6),
(204, 7),
(205, 1),
(205, 6),
(205, 7),
(206, 1),
(206, 6),
(206, 7),
(207, 1),
(207, 6),
(207, 7),
(208, 1),
(208, 6),
(208, 7),
(209, 1),
(209, 6),
(209, 7),
(210, 1),
(210, 6),
(211, 1),
(211, 6),
(211, 7),
(212, 1),
(212, 6),
(212, 7),
(213, 1),
(213, 6),
(213, 7),
(214, 1),
(214, 6),
(214, 7),
(215, 1),
(215, 6),
(215, 7),
(216, 1),
(216, 6),
(216, 7),
(217, 1),
(217, 6),
(217, 7),
(218, 1),
(218, 6),
(218, 7);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `title`, `link`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'https://www.youtube.com/', '2024-10-18 10:51:58', '2024-10-18 10:51:58'),
(2, 'youtube', 'https://www.youtube.com/', '2024-10-18 10:52:06', '2024-10-18 10:52:06'),
(3, 'x', 'https://www.youtube.com/', '2024-10-18 10:52:17', '2024-10-18 10:52:17'),
(4, 'instagram', 'https://www.youtube.com/', '2024-10-18 10:52:25', '2024-10-18 10:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `eng_name` varchar(255) DEFAULT NULL,
  `subcategory_slug` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `eng_name`, `subcategory_slug`, `status`, `created_at`, `updated_at`) VALUES
(4, '9', 'ঢাকা', 'Dhaka', 'dhaka', NULL, '2024-10-17 03:03:57', '2024-10-18 00:00:28'),
(5, '9', 'চট্টগ্রাম', 'Chittagong', 'cttgram', NULL, '2024-10-17 03:04:16', '2024-10-18 00:00:55'),
(6, '9', 'রাজশাহী', 'Rajshahi', 'rajsahee', NULL, '2024-10-17 03:11:26', '2024-10-18 00:01:19'),
(7, '9', 'খুলনা', 'Khulna', 'khulna', NULL, '2024-10-17 03:11:39', '2024-10-18 00:01:40'),
(8, '9', 'সিলেট', 'Sylhet', 'silet', NULL, '2024-10-17 03:11:49', '2024-10-18 00:02:20'),
(9, '9', 'বরিশাল', 'Barisal', 'brisal', NULL, '2024-10-17 03:12:04', '2024-10-18 00:03:09'),
(10, '9', 'রংপুর', 'Rangpur', 'rngpur', NULL, '2024-10-17 03:12:29', '2024-10-18 00:03:32'),
(11, '9', 'ময়মনসিংহ', 'Mymensingh', 'mzmnsingh', NULL, '2024-10-17 03:12:41', '2024-10-18 00:03:57'),
(12, '17', 'সম্পাদকীয়', 'Editorial', 'smpadkeey', NULL, '2024-10-17 03:16:12', '2024-10-18 00:04:46'),
(13, '17', 'মতামত', 'Opinion', 'mtamt', NULL, '2024-10-17 03:16:21', '2024-10-18 00:05:18'),
(14, '17', 'প্রবাস', 'Immigrant', 'prbas', NULL, '2024-10-17 03:16:34', '2024-10-18 00:06:20'),
(15, '17', 'ছবি', 'Photo', 'chbi', NULL, '2024-10-17 03:16:50', '2024-10-18 00:06:35'),
(16, '17', 'ভিডিও', 'Video', 'vidioo', NULL, '2024-10-17 03:17:17', '2024-10-18 00:07:13'),
(17, '17', 'আর্কাইভস', 'Archives', 'arkaivs', NULL, '2024-10-17 03:17:31', '2024-10-18 00:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `system_information`
--

CREATE TABLE `system_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_charge` varchar(100) DEFAULT NULL,
  `tax` varchar(200) DEFAULT NULL,
  `system_name` varchar(255) NOT NULL,
  `system_phone` varchar(255) NOT NULL,
  `system_email` varchar(255) NOT NULL,
  `system_address` text NOT NULL,
  `system_url` text NOT NULL,
  `system_admin_url` text DEFAULT NULL,
  `system_logo` varchar(255) NOT NULL,
  `system_icon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_link` text DEFAULT NULL,
  `english_link` text DEFAULT NULL,
  `bangla_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_information`
--

INSERT INTO `system_information` (`id`, `service_charge`, `tax`, `system_name`, `system_phone`, `system_email`, `system_address`, `system_url`, `system_admin_url`, `system_logo`, `system_icon`, `created_at`, `updated_at`, `admin_link`, `english_link`, `bangla_link`) VALUES
(1, '10', '0', 'The Daily Bangla Barta', '৮৮-০২-২২২২৫৯৮০, +৮৮-০২-২২২২২৫৯৮৪', 'dg@gmail.com', 'হাসান হোল্ডিংস (১৫ তলা) ৫২/১ নিউ ইস্কাটন রোড, ঢাকা-১০০', '#', '#', 'public/uploads/172914712120241017doinik_logo-01.jpg', 'public/uploads/172914741320241017icon.png', '2024-04-29 00:07:10', '2024-10-18 13:48:34', 'http://localhost:8081/doinikdinkal/', 'http://localhost:8081/doinikeng/', 'http://localhost:8081/doinikbangla/');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `phone`, `address`, `email`, `contact_name`, `logo`, `created_at`, `updated_at`) VALUES
(4, 'Company Name', '11111111111', NULL, NULL, 'Contact Person Name', 'public/uploads/company_image/2024-04-1017280843466542997527.png', '2024-10-04 17:25:46', '2024-10-04 17:25:46'),
(5, 'Company Two', '11111111111', NULL, NULL, 'Contact Person Name Two', NULL, '2024-10-04 17:26:13', '2024-10-04 17:26:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `image_links`
--
ALTER TABLE `image_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `qr_codes`
--
ALTER TABLE `qr_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_information`
--
ALTER TABLE `system_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_links`
--
ALTER TABLE `image_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5623;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qr_codes`
--
ALTER TABLE `qr_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `system_information`
--
ALTER TABLE `system_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
