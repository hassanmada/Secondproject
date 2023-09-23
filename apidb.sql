-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2023 at 11:11 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `Nom`, `Email`, `Password`, `created_at`, `updated_at`) VALUES
(2, 'Ali', 'admino@example.com', '$2y$10$Up0hnsdl/wEe8Eqzfb1Eve1ZHQeY0SgBnQ93dVXo7g5gwUd16I/EC', '2023-05-31 16:20:40', '2023-05-31 16:20:40'),
(3, 'Alio', 'adminho@example.com', '$2y$10$3DmRHUNXFJWekE09NXurFOQ/D78l5mpPCkm0o8PIy6xTUkcZ/z6xW', '2023-05-31 16:20:57', '2023-05-31 16:20:57'),
(4, 'hassan', 'admin@gmail.com', '$2y$10$wo0HTonfZKxrSkizPQZUuOoRXvmQe03TDeM0R8.PIPKBWskUSIVia', '2023-05-31 16:48:51', '2023-05-31 16:48:51'),
(5, 'hassan', 'admi@example.com', '$2y$10$cmWJHgymNDdBXy/F.ZXP0.C360XbKPPUqcBESsNw3ZabBwLfcbS6u', '2023-05-31 17:17:43', '2023-05-31 17:17:43'),
(6, 'hassan', 'hassan@gmail.com', '$2y$10$uIaEaDH2fW/gYwp8vq7Qn.gG1IGlffqAyoRaxTz2lZJKXv89S55Jy', '2023-05-31 17:26:53', '2023-06-01 08:30:21'),
(9, 'hassan', 'has@gmail.com', '$2y$10$q0UaAliEYI/LaprVJfRMTuuFjCr/61L0vBHUBMRcNS7qP0HhX9XHO', '2023-06-01 08:46:47', '2023-06-01 08:46:47'),
(10, 'hassan', 'hasa@gmail.com', '$2y$10$nj4eBi4Q4B6gxLfU8B8N4uKzdAIKcMVkI.sv9dpngA.wfAyj97o6.', '2023-06-01 08:56:27', '2023-06-01 08:56:27'),
(11, 'hassan', 'hasam@gmail.com', '$2y$10$dsufaLAGhsoSxQc9hwD0k.A.P4u3vUFiGUgAYD7cQ/XUMwaX83xe6', '2023-06-01 08:57:04', '2023-06-01 08:57:04'),
(12, 'hassan', 'hasamo@gmail.com', '$2y$10$d9SLLjjBqt9tpG9lxONv4OFMy//e/gBm80toJ5P4qo4WXYZlQoRVm', '2023-06-01 09:00:09', '2023-06-01 09:00:09'),
(13, 'hassan', 'hasamou@gmail.com', '$2y$10$boSUG.1MplbSFt1wQ57JRuXtssHLna4a8zmiGRlfsZYEQsaRmxSly', '2023-06-01 09:03:58', '2023-06-01 09:03:58'),
(14, 'hassan', 'hasamoun@gmail.com', '$2y$10$stPTX5fxCSwNUQRGycW3AuL7jdyJyPW89gN7YiYLgbEXiN8ZBcIwa', '2023-06-01 09:05:15', '2023-06-01 09:05:15'),
(15, 'hassan', 'hasamouna@gmail.com', '$2y$10$vtylj1I/d.rqV8TCqgScR.0l2Yv80m44Uk24ClHpv.Tr25pLdO3BC', '2023-06-01 09:05:50', '2023-06-01 09:05:50'),
(16, 'hassan', 'hasamounan@gmail.com', '$2y$10$rEYAp5sYCaCuOp0FtzxAWef7bciCp1mwxniUmj5.2wgAngsmU8Wgi', '2023-06-01 09:06:22', '2023-06-01 09:06:22'),
(17, 'hassan', 'hanan@gmail.com', '$2y$10$7uLjnjlidh05ySTaLHi3xu5LTQ6O2ShopZZ0b6boaUvUfXum2BObC', '2023-06-01 11:45:10', '2023-06-01 11:45:10');

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2023_05_22_174744_create_admins_table', 2),
(14, '2023_05_29_214042_create_services_table', 2),
(18, '2023_05_29_214737_create_rendezvous_table', 3),
(19, '2023_05_29_221633_create_rendez_vouses_table', 4),
(20, '2023_06_04_141745_create_test_table', 4);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Admin', 17, 'hassan', '0f598c244240079509a559b859d85a1b782211db90ce93ee2b9a6199537d6b1f', '[\"*\"]', NULL, NULL, '2023-06-01 11:50:15', '2023-06-01 11:50:15'),
(2, 'App\\Models\\Admin', 17, 'hassan', 'a769721313b7175dbd799343c68372d24ae8aff25123ba7512ab7f01a8bcb655', '[\"*\"]', '2023-06-01 11:56:57', NULL, '2023-06-01 11:52:05', '2023-06-01 11:56:57'),
(3, 'App\\Models\\Admin', 17, 'hassan', '6ee042e231a912091851f3cb06976126643eebf92893c01558f919a0c64a870d', '[\"*\"]', NULL, NULL, '2023-06-01 11:56:32', '2023-06-01 11:56:32'),
(4, 'App\\Models\\Admin', 17, 'hassan', '8d120918ad9b8bbc4726af2d478005b09effe203c7e0b1a1143ef7277a0ea605', '[\"*\"]', NULL, NULL, '2023-06-01 11:56:38', '2023-06-01 11:56:38'),
(5, 'App\\Models\\Admin', 17, 'hassan', '1e6a4e345ba0d5084fe928b0c333b3de00573e3c9740a567a3b932ee64211d68', '[\"*\"]', NULL, NULL, '2023-06-01 11:56:40', '2023-06-01 11:56:40'),
(6, 'App\\Models\\Admin', 17, 'hassan', '16f875a8968ab1daf3cad806e1de3bafb57fd0ced968826a2ddcc0f1b9e3540a', '[\"*\"]', NULL, NULL, '2023-06-01 11:56:44', '2023-06-01 11:56:44'),
(7, 'App\\Models\\Admin', 17, 'hassan', '4eb1d6876195e27188d44f54a93a4e951319ce99ca77aa5a3b5873bdd38ae4b0', '[\"*\"]', '2023-06-01 12:06:25', NULL, '2023-06-01 11:57:57', '2023-06-01 12:06:25'),
(8, 'App\\Models\\Admin', 17, 'hassan', '246ec453662d15cf899ecbb95d3795bc732cdc93cac8d55dcdacf4ef17b6ae7e', '[\"*\"]', '2023-06-01 16:21:34', NULL, '2023-06-01 16:13:55', '2023-06-01 16:21:34'),
(9, 'App\\Models\\Admin', 17, 'hassan', 'a58953c4a9f4762ced9d6df42251f1364f240f5b23d02fd4bbcf390cb09a37cc', '[\"*\"]', NULL, NULL, '2023-06-01 16:17:02', '2023-06-01 16:17:02'),
(10, 'App\\Models\\Admin', 17, 'hassan', 'd495ea1ff2627c87e4ec246319f7bbb530a3b67b81150d6556c838f25dba0227', '[\"*\"]', '2023-06-01 16:57:29', NULL, '2023-06-01 16:27:36', '2023-06-01 16:57:29'),
(18, 'App\\Models\\User', 2, 'Auth_token', '0aa452de36a047df05e54c566a4b731a28a1a97c8a40caa5f3db9f09bfcc54a5', '[\"*\"]', NULL, NULL, '2023-06-01 18:07:50', '2023-06-01 18:07:50'),
(23, 'App\\Models\\User', 1, 'Auth_token', '6b772133c0a8f1f7149da8339dd932df6e33721e3b23b6a1a9594989a50c8bab', '[\"*\"]', NULL, NULL, '2023-06-02 15:38:58', '2023-06-02 15:38:58'),
(24, 'App\\Models\\User', 1, 'Auth_token', '363e2fc7959d5bb331b47b80192569b6c4e817a49ad565d98a9c4a82c4f076a4', '[\"*\"]', NULL, NULL, '2023-06-02 15:39:32', '2023-06-02 15:39:32'),
(25, 'App\\Models\\User', 1, 'Auth_token', 'cddd422e50bcbe1412849c07b54ef2a81109c8961441152ad9dce902481cdb2b', '[\"*\"]', NULL, NULL, '2023-06-02 15:40:53', '2023-06-02 15:40:53'),
(26, 'App\\Models\\User', 1, 'Auth_token', '3552eee8da5cc9359741d6d7877d91496e6f8ee2c983555017c17f0a8fa8c62b', '[\"*\"]', NULL, NULL, '2023-06-02 15:41:51', '2023-06-02 15:41:51'),
(27, 'App\\Models\\User', 1, 'Auth_token', '2181af56de1933b5904453a415b32181f6504f9c496b8556dd87edc32eb1d45c', '[\"*\"]', NULL, NULL, '2023-06-02 15:42:59', '2023-06-02 15:42:59'),
(28, 'App\\Models\\User', 1, 'Auth_token', '10dbf58c19055d6d88eb29131ac96d13ff898ffab8f512bc33420cbcc6c8886d', '[\"*\"]', NULL, NULL, '2023-06-02 15:58:47', '2023-06-02 15:58:47'),
(29, 'App\\Models\\User', 1, 'Auth_token', 'feb2eb09d04409e4bc73359d756f6174f7d892b928703bc916f142cf2a6f9453', '[\"*\"]', NULL, NULL, '2023-06-02 16:03:02', '2023-06-02 16:03:02'),
(30, 'App\\Models\\User', 1, 'Auth_token', 'c01aa9eac2d86308edcb42e1cc4e619732fec18af3ff95cc7d2a14a22ca21488', '[\"*\"]', NULL, NULL, '2023-06-03 17:11:05', '2023-06-03 17:11:05'),
(31, 'App\\Models\\User', 1, 'Auth_token', 'fb1e699f4cb0fa477c88fb364906bbe2b17db8217911a4b04dec386d653f570d', '[\"*\"]', NULL, NULL, '2023-06-03 23:16:45', '2023-06-03 23:16:45'),
(32, 'App\\Models\\User', 1, 'Auth_token', '5bdb59926522e9105858b924d66ef274700f8854e92a0ea4d8167d15e0a2fe62', '[\"*\"]', NULL, NULL, '2023-06-03 23:23:56', '2023-06-03 23:23:56'),
(33, 'App\\Models\\User', 1, 'Auth_token', 'a8a500f027de3cbaea983b1d4ba0428e26472c6bcf3e2e9715b970211d4be32a', '[\"*\"]', NULL, NULL, '2023-06-03 23:26:37', '2023-06-03 23:26:37'),
(34, 'App\\Models\\User', 1, 'Auth_token', 'a3cab3438fbc73d92034d309b0bc4304d931b184c9c7f6de55130928eafb159a', '[\"*\"]', NULL, NULL, '2023-06-03 23:29:41', '2023-06-03 23:29:41'),
(35, 'App\\Models\\User', 1, 'Auth_token', 'dd9322f8dc24b98768c7169c8baac77f4da9496d38117b1dd571849f2c6bec55', '[\"*\"]', '2023-06-04 16:55:34', NULL, '2023-06-03 23:33:31', '2023-06-04 16:55:34'),
(36, 'App\\Models\\User', 1, 'Auth_token', '14720ad19a5cbea819edc45e978db72a8bf3426136066a77ab1e2def6d95ca5e', '[\"*\"]', '2023-06-03 23:51:03', NULL, '2023-06-03 23:35:07', '2023-06-03 23:51:03'),
(37, 'App\\Models\\User', 1, 'Auth_token', '932f804712b79a0600a5493392faf6be9d1fcd1195e48406c7f630ff4bd878ce', '[\"*\"]', '2023-06-04 16:58:08', NULL, '2023-06-04 14:22:11', '2023-06-04 16:58:08'),
(38, 'App\\Models\\User', 1, 'Auth_token', '2a55159eceed67bd398043b7073e06b3b42f4d9c089300cda7d6f22b8b218954', '[\"*\"]', '2023-06-04 16:59:59', NULL, '2023-06-04 16:57:45', '2023-06-04 16:59:59'),
(39, 'App\\Models\\User', 1, 'Auth_token', '4a4beb8927c956e80ad003f033078883ebbf305338baf8105b431b5c762a17e2', '[\"*\"]', '2023-06-04 17:10:14', NULL, '2023-06-04 17:00:41', '2023-06-04 17:10:14'),
(40, 'App\\Models\\User', 1, 'Auth_token', 'f59594b7205633220e7cc4ca2102091b46e7b2eba0f95cd704a0e3bc2c1363c1', '[\"*\"]', NULL, NULL, '2023-06-04 17:51:08', '2023-06-04 17:51:08'),
(41, 'App\\Models\\User', 1, 'Auth_token', '0ecdaa3660f3a6b8cba85504799159be9215ef11e689ed032590625610642af8', '[\"*\"]', NULL, NULL, '2023-06-04 19:33:31', '2023-06-04 19:33:31'),
(42, 'App\\Models\\User', 1, 'Auth_token', '900dd99b4a7c0921f9cb53991858517c04195a2fa65b3bda6abc925041cac97f', '[\"*\"]', '2023-06-04 19:52:09', NULL, '2023-06-04 19:33:34', '2023-06-04 19:52:09'),
(43, 'App\\Models\\User', 1, 'Auth_token', 'caf59aede64c1a458566f8bbf60e355fcba053271a7e186b69d9d2a57faedd19', '[\"*\"]', '2023-06-04 19:57:33', NULL, '2023-06-04 19:57:13', '2023-06-04 19:57:33'),
(44, 'App\\Models\\User', 1, 'Auth_token', 'e0ac5d16b1555686b9205160ef99dc6157fb0579ca31db8242476202492427c8', '[\"*\"]', '2023-06-04 20:04:01', NULL, '2023-06-04 20:01:56', '2023-06-04 20:04:01'),
(45, 'App\\Models\\User', 1, 'Auth_token', '85c78ead2b47f65d9d72d88f6353295589adce1484f6ba5de5b6742f0944f09f', '[\"*\"]', NULL, NULL, '2023-06-04 20:04:14', '2023-06-04 20:04:14'),
(46, 'App\\Models\\User', 1, 'Auth_token', 'e9041b0149cb16df7341174ac27e90d2acaa9af08f9e9f2683aabd967af602e8', '[\"*\"]', '2023-06-04 20:07:01', NULL, '2023-06-04 20:06:47', '2023-06-04 20:07:01'),
(47, 'App\\Models\\User', 1, 'Auth_token', '4f4f4c00852d8ee2c1c84aafe83ed8a100fce7d03c4c82ce613cd8a6be1e5681', '[\"*\"]', '2023-06-04 20:11:11', NULL, '2023-06-04 20:11:01', '2023-06-04 20:11:11'),
(48, 'App\\Models\\User', 1, 'Auth_token', 'b2d4d8518e09eecc0d7f87254c644efe3ecef20fb60ecc7dba74ab10e5d025af', '[\"*\"]', '2023-06-04 20:11:35', NULL, '2023-06-04 20:11:26', '2023-06-04 20:11:35'),
(49, 'App\\Models\\User', 1, 'Auth_token', '695c3fd679f66cb2deef16e03830c7920420c0d6ff3a2ba911269e94b1857403', '[\"*\"]', '2023-06-04 20:16:04', NULL, '2023-06-04 20:13:54', '2023-06-04 20:16:04'),
(50, 'App\\Models\\User', 1, 'Auth_token', 'b78f3910de87c43285c9ca08b1af284ff63615bb184de9936a8c40a94cef019e', '[\"*\"]', '2023-06-04 20:18:10', NULL, '2023-06-04 20:17:07', '2023-06-04 20:18:10'),
(51, 'App\\Models\\User', 1, 'Auth_token', '06f78c62348d3f43f198269dc30ecfbdb54141bdc510b19071dc7845e968474f', '[\"*\"]', NULL, NULL, '2023-06-04 20:19:59', '2023-06-04 20:19:59'),
(52, 'App\\Models\\User', 1, 'Auth_token', '37a4bedd646c856d405549359de4b9befb06a8a63f55bfdc1a5f0c6063374e14', '[\"*\"]', NULL, NULL, '2023-06-04 20:21:39', '2023-06-04 20:21:39'),
(53, 'App\\Models\\User', 1, 'Auth_token', '45431ac1487605f80fd83b0a467675c777e8f5f827409d9b644ad8a734dc5963', '[\"*\"]', '2023-06-04 22:23:59', NULL, '2023-06-04 22:22:24', '2023-06-04 22:23:59'),
(54, 'App\\Models\\User', 1, 'Auth_token', 'b273b5593b799409169a17f81dfd1821578cc7d577621d9c91b3e76b417e1352', '[\"*\"]', '2023-06-04 22:31:19', NULL, '2023-06-04 22:31:17', '2023-06-04 22:31:19'),
(55, 'App\\Models\\User', 1, 'Auth_token', '2c59aefe417b739dc20865398d785e9cf51037abd4be44d3d9d2e5ce699bc6df', '[\"*\"]', '2023-06-05 07:24:32', NULL, '2023-06-05 07:24:30', '2023-06-05 07:24:32'),
(56, 'App\\Models\\User', 1, 'Auth_token', '5fde7acd85acd9e643eb5ab13a1a9c85a27e96fb89449c1306db7576d15a31c2', '[\"*\"]', '2023-06-14 07:47:49', NULL, '2023-06-14 07:47:15', '2023-06-14 07:47:49'),
(57, 'App\\Models\\User', 1, 'Auth_token', '287c86a8a0bd7d14484c66f8537cd9e1754a1ca8607b8184732d862456de7516', '[\"*\"]', NULL, NULL, '2023-06-14 07:49:05', '2023-06-14 07:49:05'),
(58, 'App\\Models\\User', 1, 'Auth_token', 'f923a5f3ffe337c953888d1de817b646b87cde12ea9951be60a0a0001bf61c92', '[\"*\"]', NULL, NULL, '2023-06-14 07:49:07', '2023-06-14 07:49:07'),
(59, 'App\\Models\\User', 1, 'Auth_token', '5af228753b9f9487b593de12864d33eaa0a8abb8b00c1d5ecde3dd7bb77b2ae4', '[\"*\"]', '2023-06-14 07:49:32', NULL, '2023-06-14 07:49:25', '2023-06-14 07:49:32'),
(60, 'App\\Models\\User', 1, 'Auth_token', '020baf834d4423ee9b0b666a24df5cced584ec351fdd39d4d6a850529f18bf8a', '[\"*\"]', NULL, NULL, '2023-06-14 07:54:04', '2023-06-14 07:54:04'),
(61, 'App\\Models\\User', 1, 'Auth_token', '0f85f1af3c33ef3777b606d965cbd0621f61bad0f22a3565dbc74fa46ff7d3f2', '[\"*\"]', NULL, NULL, '2023-06-14 08:00:32', '2023-06-14 08:00:32'),
(62, 'App\\Models\\User', 1, 'Auth_token', 'eeee7c44b8361f650fedfa42349359050bff59a33bbba6d129124bfe4d1a8999', '[\"*\"]', NULL, NULL, '2023-06-14 08:09:21', '2023-06-14 08:09:21'),
(63, 'App\\Models\\User', 1, 'Auth_token', '10369ae25b09b7da766cb9972dba8e14d19259c3eba9fb8ccd51796e6f823c0b', '[\"*\"]', NULL, NULL, '2023-06-14 08:09:33', '2023-06-14 08:09:33'),
(64, 'App\\Models\\User', 1, 'Auth_token', 'ceb030f69d93347003364e063f2294c322dfe74d300e528e4f8892575a6bd7b2', '[\"*\"]', '2023-06-14 08:14:53', NULL, '2023-06-14 08:09:35', '2023-06-14 08:14:53'),
(65, 'App\\Models\\User', 1, 'Auth_token', '8d35efbc7695fa8143c2964969601a9a76c341d03bdb0634df1caaead10c493f', '[\"*\"]', NULL, NULL, '2023-06-14 08:20:32', '2023-06-14 08:20:32'),
(66, 'App\\Models\\User', 1, 'Auth_token', 'ec5a35faf149f4dffdd7586380e936930a490c558bf3c9c38a58e874b474f499', '[\"*\"]', NULL, NULL, '2023-06-14 08:24:26', '2023-06-14 08:24:26'),
(67, 'App\\Models\\User', 1, 'Auth_token', '774fe254ad40a7f98340de1a8d48e5f1df97094ca6dfd6aba31a5bd279ab536b', '[\"*\"]', NULL, NULL, '2023-06-14 08:25:34', '2023-06-14 08:25:34'),
(68, 'App\\Models\\User', 1, 'Auth_token', '0e850744c1c01e139d45605ea9ee1c7b0104161daee5eb7a3a901eaad30d74f4', '[\"*\"]', NULL, NULL, '2023-06-14 08:27:57', '2023-06-14 08:27:57'),
(69, 'App\\Models\\User', 1, 'Auth_token', 'a916d5c33ec5840691d70184cdb3453cdf346df6f0155c2d4ddba4e0829b71d6', '[\"*\"]', NULL, NULL, '2023-06-14 08:28:33', '2023-06-14 08:28:33'),
(70, 'App\\Models\\User', 1, 'Auth_token', '38d3f17a4718a085f8c721aabff028c1816a69bbb6d0a330dca93dab513676f6', '[\"*\"]', '2023-06-14 08:30:21', NULL, '2023-06-14 08:30:13', '2023-06-14 08:30:21'),
(71, 'App\\Models\\User', 1, 'Auth_token', 'db3cfb22d0a5bbdab6525a7a27c69ca10c60aa07e414e5ac9c02cc60d004aad0', '[\"*\"]', NULL, NULL, '2023-06-14 08:35:08', '2023-06-14 08:35:08'),
(72, 'App\\Models\\User', 1, 'Auth_token', 'afe90db5e24c6fffd15db9b321dc11c605cc7e6f7cd07d92c1dfd3700bf0456d', '[\"*\"]', '2023-06-14 08:40:22', NULL, '2023-06-14 08:38:50', '2023-06-14 08:40:22'),
(73, 'App\\Models\\User', 1, 'Auth_token', 'edc2afdcb0dcd5a9ae7d00b3aa494214c8f3c9306869a5aa4a32a84b9ef83021', '[\"*\"]', '2023-06-14 08:42:28', NULL, '2023-06-14 08:42:24', '2023-06-14 08:42:28'),
(74, 'App\\Models\\User', 1, 'Auth_token', '5ded884c1062840ba73a66c8b2b52fbb476886e45b3c2c7ae3d7a90a05c0341c', '[\"*\"]', NULL, NULL, '2023-06-14 08:43:40', '2023-06-14 08:43:40'),
(75, 'App\\Models\\User', 1, 'Auth_token', '8af0ecd6c5eb9fbe763db7552f78c2a10265232f10901d1fa7274e67d87666ec', '[\"*\"]', '2023-06-14 08:54:14', NULL, '2023-06-14 08:54:09', '2023-06-14 08:54:14'),
(76, 'App\\Models\\User', 1, 'Auth_token', '6e59e53ed5a2b40ef26b7fa23da3738406e91607c00eb67f9de404539d07a940', '[\"*\"]', NULL, NULL, '2023-06-14 08:54:53', '2023-06-14 08:54:53'),
(77, 'App\\Models\\User', 1, 'Auth_token', '8a4609406874a9039efcc3640ee127524c32cafca30cf18b03adc8d191d5cb4a', '[\"*\"]', NULL, NULL, '2023-06-14 08:59:06', '2023-06-14 08:59:06'),
(78, 'App\\Models\\User', 1, 'Auth_token', 'c487f93c85a43bd44fd935e237102494c1cd3f4bb0c9acd3b300c53b00894559', '[\"*\"]', NULL, NULL, '2023-06-14 09:00:57', '2023-06-14 09:00:57'),
(79, 'App\\Models\\User', 1, 'Auth_token', '4e617a8287efc4521ad36421856258cf4dd4d57bd82bd5896639e9349eff8eb0', '[\"*\"]', '2023-06-16 19:54:12', NULL, '2023-06-16 19:53:04', '2023-06-16 19:54:12'),
(80, 'App\\Models\\User', 1, 'Auth_token', 'd5de032a274a166875a5019ce76df7cd8fcf5226b6844b1f76b8f1f2a4f9443d', '[\"*\"]', '2023-06-16 19:55:58', NULL, '2023-06-16 19:54:47', '2023-06-16 19:55:58'),
(81, 'App\\Models\\User', 1, 'Auth_token', 'cab6e14846cfb08e92938de4181c7b0ea79ec95086fc4702ea72270fbdcc8ac6', '[\"*\"]', '2023-06-16 20:09:09', NULL, '2023-06-16 20:08:36', '2023-06-16 20:09:09'),
(82, 'App\\Models\\User', 1, 'Auth_token', '1d0fd28e8b3a4859eaf1280af5c1a9768d717f89f939c2fc0985822d3bad87ad', '[\"*\"]', '2023-06-16 20:13:53', NULL, '2023-06-16 20:13:26', '2023-06-16 20:13:53'),
(83, 'App\\Models\\User', 1, 'Auth_token', '345db4bbdf7d0df200e5f780efc54d95b1adbc9f3eee5b0636e6a85634649880', '[\"*\"]', '2023-06-16 20:20:15', NULL, '2023-06-16 20:19:47', '2023-06-16 20:20:15'),
(84, 'App\\Models\\User', 1, 'Auth_token', '93d04f4364958cd4a8b76f11aa09b00446262f358887860744281630a969f770', '[\"*\"]', '2023-06-16 20:22:15', NULL, '2023-06-16 20:22:12', '2023-06-16 20:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `rendezvous`
--

CREATE TABLE `rendezvous` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `date_derende_zvous` date NOT NULL,
  `heure_de_rendez_vous` time NOT NULL,
  `etat` varchar(255) NOT NULL DEFAULT 'nonconfirme',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rendez_vouses`
--

CREATE TABLE `rendez_vouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `date_derende_zvous` date NOT NULL,
  `heure_de_rendez_vous` time NOT NULL,
  `etat` varchar(255) NOT NULL DEFAULT 'nonconfirme',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rendez_vouses`
--

INSERT INTO `rendez_vouses` (`id`, `service_id`, `email`, `phone_number`, `date_derende_zvous`, `heure_de_rendez_vous`, `etat`, `created_at`, `updated_at`) VALUES
(8, 2, 'jamal@gmail.com', '0651111046', '2023-06-13', '14:13:56', 'Annule', NULL, '2023-06-04 17:08:36'),
(12, 3, 'nadia@gmail.com', '0653333108', '2023-06-15', '16:30:21', 'Annule', NULL, '2023-06-16 19:53:17'),
(13, 1, 'karim@gmail.com', '0654444139', '2023-06-16', '09:15:47', 'Annule', NULL, '2023-06-16 19:53:50'),
(14, 2, 'sara@gmail.com', '0655555160', '2023-06-17', '13:20:13', 'Annule', NULL, '2023-06-16 19:53:21'),
(16, 3, 'lina@gmail.com', '0657777222', '2023-06-19', '15:40:32', 'Confirme', NULL, '2023-06-16 19:53:34'),
(17, 1, 'ali@gmail.com', '0658888253', '2023-06-20', '12:25:19', 'Annule', NULL, '2023-06-16 19:53:55'),
(18, 1, 'fatima@gmail.com', '0659999284', '2023-06-21', '08:50:37', 'Confirme', NULL, '2023-06-16 20:08:57'),
(19, 2, 'youssef@gmail.com', '0651010315', '2023-06-22', '17:15:42', 'Annule', NULL, '2023-06-16 19:53:31'),
(20, 2, 'hassanmada99@gmail.com', '0684087833', '2023-06-05', '08:20:00', 'Annule', '2023-06-04 17:16:40', '2023-06-16 20:22:27'),
(21, 2, 'hassanmada99@gmail.com', '0684087833', '2023-06-14', '09:20:00', 'Non Confirme', '2023-06-04 17:18:27', '2023-06-04 17:18:27'),
(22, 2, 'hassanmada99@gmail.com', '0684087833', '2023-06-15', '10:20:00', 'Confirme', '2023-06-04 17:19:03', '2023-06-16 20:22:30'),
(23, 2, 'hassanmada99@gmail.com', '0684087833', '2023-06-15', '09:00:00', 'Non Confirme', '2023-06-04 17:47:58', '2023-06-04 17:47:58'),
(24, 2, 'hassan99@gmail.com', '0651111023', '2023-06-06', '11:40:00', 'Non Confirme', '2023-06-05 07:20:27', '2023-06-05 07:20:27'),
(25, 2, 'hassan99@gmail.com', '0651111023', '2023-06-06', '08:20:00', 'Non Confirme', '2023-06-05 07:22:25', '2023-06-05 07:22:25'),
(26, 2, 'hassan99@gmail.com', '0651111023', '2023-06-06', '09:00:00', 'Non Confirme', '2023-06-05 07:23:55', '2023-06-05 07:23:55'),
(27, 2, 'hassanmada99@gmail.com', '0684087868', '2023-06-07', '10:20:00', 'Non Confirme', '2023-06-06 10:46:02', '2023-06-06 10:46:02'),
(28, 3, 'hassanmada99@gmail.com', '0684087833', '2023-05-30', '09:40:00', 'Non Confirme', '2023-06-06 10:47:06', '2023-06-06 10:47:06'),
(29, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-07', '08:20:00', 'Non Confirme', '2023-06-13 15:44:42', '2023-06-13 15:44:42'),
(30, 3, 'khadijamada74@gmail.com', '0767744959', '2023-06-12', '08:00:00', 'Non Confirme', '2023-06-13 15:45:03', '2023-06-13 15:45:03'),
(31, 3, 'ahmed.k@gmail.com', '065121235', '2023-06-12', '10:20:00', 'Non Confirme', '2023-06-13 15:47:30', '2023-06-13 15:47:30'),
(32, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-06', '10:00:00', 'Non Confirme', '2023-06-13 15:49:54', '2023-06-13 15:49:54'),
(33, 2, 'khadijamada74@gmail.com', '0767744959', '2023-06-12', '09:40:00', 'Non Confirme', '2023-06-13 15:51:02', '2023-06-13 15:51:02'),
(34, 2, 'hassan@gmail.com', '0651111101', '2023-06-12', '10:40:00', 'Annule', '2023-06-13 15:59:01', '2023-06-16 20:22:36'),
(35, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-13', '08:20:00', 'Non Confirme', '2023-06-13 16:00:23', '2023-06-13 16:00:23'),
(36, 2, 'ahmed.k@gmail.com', '065121235', '2023-05-31', '10:20:00', 'Non Confirme', '2023-06-13 16:05:56', '2023-06-13 16:05:56'),
(37, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-12', '08:20:00', 'Non Confirme', '2023-06-13 16:09:19', '2023-06-13 16:09:19'),
(38, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-13', '08:00:00', 'Non Confirme', '2023-06-13 16:24:29', '2023-06-13 16:24:29'),
(39, 2, 'hassan99@gmail.com', '0651111023', '2023-06-06', '11:00:00', 'Non Confirme', '2023-06-13 16:24:50', '2023-06-13 16:24:50'),
(40, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-14', '08:00:00', 'Non Confirme', '2023-06-13 16:38:16', '2023-06-13 16:38:16'),
(41, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-19', '09:40:00', 'Non Confirme', '2023-06-16 19:17:52', '2023-06-16 19:17:52'),
(42, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-19', '11:00:00', 'Non Confirme', '2023-06-16 19:18:43', '2023-06-16 19:18:43'),
(43, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-19', '08:40:00', 'Non Confirme', '2023-06-16 19:20:41', '2023-06-16 19:20:41'),
(44, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-20', '10:00:00', 'Non Confirme', '2023-06-16 19:25:18', '2023-06-16 19:25:18'),
(45, 2, 'hassan@gmail.com', '0651111101', '2023-06-19', '11:40:00', 'Non Confirme', '2023-06-16 19:26:01', '2023-06-16 19:26:01'),
(46, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-19', '10:40:00', 'Non Confirme', '2023-06-16 19:29:14', '2023-06-16 19:29:14'),
(47, 2, 'khadijamada74@gmail.com', '0767744959', '2023-06-19', '11:20:00', 'Non Confirme', '2023-06-16 19:33:20', '2023-06-16 19:33:20'),
(48, 2, 'khadijamada74@gmail.com', '0767744959', '2023-06-19', '10:00:00', 'Non Confirme', '2023-06-16 19:37:19', '2023-06-16 19:37:19'),
(49, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-21', '08:00:00', 'Non Confirme', '2023-06-16 19:38:43', '2023-06-16 19:38:43'),
(50, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-27', '09:40:00', 'Non Confirme', '2023-06-16 19:40:21', '2023-06-16 19:40:21'),
(51, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-20', '10:20:00', 'Non Confirme', '2023-06-16 19:41:50', '2023-06-16 19:41:50'),
(52, 2, 'hassan@gmail.com', '0651111101', '2023-06-20', '08:20:00', 'Non Confirme', '2023-06-16 19:44:56', '2023-06-16 19:44:56'),
(53, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-21', '08:40:00', 'Non Confirme', '2023-06-16 19:45:48', '2023-06-16 19:45:48'),
(54, 2, 'ahmed.k@gmail.com', '065121235', '2023-06-22', '09:20:00', 'Non Confirme', '2023-06-16 19:47:21', '2023-06-16 19:47:21'),
(55, 3, 'hassan99@gmail.com', '0651111023', '2023-06-21', '09:20:00', 'Non Confirme', '2023-06-16 19:48:25', '2023-06-16 19:48:25'),
(56, 3, 'hassan99@gmail.com', '0651111023', '2023-06-28', '10:40:00', 'Non Confirme', '2023-06-16 19:49:08', '2023-06-16 19:49:08'),
(57, 3, 'khadijamada74@gmail.com', '0767744959', '2023-06-29', '11:40:00', 'Non Confirme', '2023-06-16 19:50:00', '2023-06-16 19:50:00'),
(58, 3, 'ahmed.k@gmail.com', '065121235', '2023-06-27', '11:00:00', 'Non Confirme', '2023-06-16 19:50:54', '2023-06-16 19:50:54'),
(59, 1, 'ahmed.k@gmail.com', '065121235', '2023-06-30', '11:40:00', 'Non Confirme', '2023-06-16 19:52:20', '2023-06-16 19:52:20'),
(60, 2, 'hassanmada99@gmail.com', '066666666', '2023-06-20', '11:40:00', 'Non Confirme', '2023-06-16 20:07:59', '2023-06-16 20:07:59'),
(61, 3, 'masood99@gmail.com', '0651111022', '2023-06-30', '09:00:00', 'Non Confirme', '2023-06-16 20:12:25', '2023-06-16 20:12:25'),
(62, 3, 'masood@gmail.com', '0690754545', '2023-06-22', '09:40:00', 'Non Confirme', '2023-06-16 20:23:44', '2023-06-16 20:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Fiscalite', 'est une service de production', NULL, NULL),
(2, 'comptabilite', 'et une service de compte', NULL, NULL),
(3, 'Etude de projet', 'est une approche plus efficace et important', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hassan', 'hassanmada99@gmail.com', NULL, '$2y$10$m0b.xKA8b8aInH1NujrBCOaJzNSvj22x48tQWyiE0zUcr3628FAH.', 'IS1kqNv2Ljl2OfF64itLxa3pTYIAzlRkywfAUYHg3PaMXUyToEmNCKqBvhOB', NULL, '2023-06-01 17:55:03'),
(2, 'hassan', 'hassanmada9@gmail.com', NULL, '$2y$10$wSnQo748eT3vJMU4sDvCwua7zWl5w8XBiIwFfIZ3CEpKW7I1e5KJG', '1waGtgNEahrvqIMAM4hGYlMHTcO3CS7nNNmq5Bqr85t0xugWrRa0Z0a5k4GH', '2023-06-01 17:52:05', '2023-06-01 17:52:05'),
(3, 'hassan', 'hassanmada90@gmail.com', NULL, '$2y$10$..XnK8Q3809qxpv1xo8ox.Gad3BVV4f631B4XilnFniT5tkGxz.0i', NULL, '2023-06-01 17:53:10', '2023-06-01 17:53:10'),
(4, 'hassan', 'hassanmada999@gmail.com', NULL, '$2y$10$YSjNFOwMEYQ.yt8KEqs1jOlpRy3u3uWhLoMhfvadefGJfTRs2yrle', 'xjAhZupmzmkv7GIfYKgxJEovAwQtauGOKHXgkkwXAzNebv5UPWwutoE16dyK', '2023-06-01 18:16:47', '2023-06-01 18:16:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`Email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rendezvous`
--
ALTER TABLE `rendezvous`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rendezvous_service_id_foreign` (`service_id`);

--
-- Indexes for table `rendez_vouses`
--
ALTER TABLE `rendez_vouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rendez_vouses_service_id_foreign` (`service_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `rendezvous`
--
ALTER TABLE `rendezvous`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rendez_vouses`
--
ALTER TABLE `rendez_vouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rendezvous`
--
ALTER TABLE `rendezvous`
  ADD CONSTRAINT `rendezvous_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rendez_vouses`
--
ALTER TABLE `rendez_vouses`
  ADD CONSTRAINT `rendez_vouses_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
