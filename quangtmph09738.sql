-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2021 at 11:55 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quangtmph09738`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_01_074430_create_products_table', 1),
(5, '2021_07_01_075500_create_categories_table', 1),
(6, '2021_07_01_082441_update_products_table_add_fk', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `quantity`, `description`, `category_id`, `created_at`, `updated_at`, `img`) VALUES
(11, 'Joan Steuber', 2, 6, 'Est eaque debitis magnam adipisci unde. Aut asperiores minima odit. Eligendi minima dolor voluptas sunt et.', 2, NULL, NULL, 'Natus adipisci rerum illum ea quis quia. Ratione et nobis autem veniam aspernatur. Adipisci praesentium commodi earum provident explicabo non.'),
(12, 'Nathaniel Rowe', 9, 2, 'Quia et quo omnis est quia porro qui. Voluptatem dolore perspiciatis inventore similique itaque reprehenderit. Qui est ea iure vitae. Animi omnis atque harum iusto ut exercitationem fugiat.', 5, NULL, NULL, 'Modi quia facere dolorum quia dolor molestiae veniam eius. Officia at necessitatibus earum amet sequi quis quo adipisci. Et ut magni ipsam est vel mollitia.'),
(13, 'Valentin Nolan', 2, 6, 'Sit earum molestiae repellat id non omnis dolores. Sunt asperiores rerum ab. Aspernatur animi vel et corporis qui non labore qui.', 9, NULL, NULL, 'Unde ab dolor accusamus et ab magnam eos. Quos aperiam possimus aut accusamus dignissimos voluptate. Odio consequatur est odit ad. Fugit explicabo accusantium inventore magnam dolorem totam quia.'),
(14, 'Lauriane Schuppe', 2, 7, 'Ratione eveniet sed totam reiciendis rerum enim beatae. Voluptatem qui qui enim est molestiae iure laudantium. Aliquid reprehenderit fugiat atque fugit cupiditate et itaque perspiciatis.', 6, NULL, NULL, 'Labore eius vel nobis similique eligendi incidunt soluta. Quis eum ea beatae harum earum commodi.'),
(15, 'Lucius Feest', 3, 2, 'Beatae ea assumenda voluptatum ducimus. Tempore minima deleniti veritatis pariatur rerum. Assumenda at rerum molestiae repudiandae quia. Quidem nulla provident vero esse est recusandae consequatur.', 1, NULL, NULL, 'Est blanditiis et blanditiis voluptate et dicta aspernatur. Quae est hic fugiat quam ad. Soluta consequatur harum voluptas excepturi architecto quas.'),
(16, 'Selmer Schmidt', 6, 2, 'Aut aut saepe assumenda quia quam eum. Officiis qui est praesentium unde. Aut consequatur atque asperiores quidem dolores quo.', 3, NULL, NULL, 'Autem harum quaerat nisi quo voluptatibus natus autem. Blanditiis ut non quasi molestias. Ut et non temporibus et ut autem perferendis.'),
(17, 'Pinkie Pfeffer', 4, 1, 'Quia perspiciatis minus aut fugiat dolor. Rerum eos explicabo dolorem dolores aut sequi repellat.', 3, NULL, NULL, 'Recusandae impedit omnis ad excepturi. Dolor consequuntur nesciunt explicabo aliquam nostrum explicabo voluptate cum. Est praesentium ea et.'),
(18, 'Destany Pagac', 1, 8, 'Voluptatibus eius aut tempora quaerat veniam ab quia. Et eligendi quibusdam laudantium sed. Quam nisi velit quia consectetur.', 6, NULL, NULL, 'Dolor vero cupiditate distinctio rerum voluptas itaque ut. Et qui ea est non quam sapiente facere fugit. Vitae iure unde illum sunt numquam. Sit itaque qui est. Quibusdam quia ea quod amet.'),
(19, 'Stephan Schinner', 3, 4, 'Repellat ad nostrum dolorum nobis error nostrum. Eum et quisquam enim placeat totam asperiores similique modi. Eveniet eum nisi eum similique.', 7, NULL, NULL, 'Vero dicta doloremque soluta nesciunt. Ut dolores libero qui excepturi. Velit dolor mollitia eligendi dignissimos aut sed culpa.'),
(20, 'Ms. Zelma Funk V', 2, 8, 'In officia omnis recusandae aut. Ad esse labore harum iste. Et voluptatum quod molestias sed voluptas aut ut. Sunt nostrum architecto impedit et quo quam.', 5, NULL, NULL, 'Quis id ut soluta sed. Rerum sint dolores expedita quis porro totam et.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL DEFAULT 1,
  `role` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `gender`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marcia Konopelski IV', 'arely.rodriguez@hotmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '566 Little Stravenue Apt. 292\nLake Alexandriaberg, KS 98184', 1, 1, NULL, NULL, NULL),
(2, 'Prof. Gerardo Bernier', 'goodwin.turner@yahoo.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5194 Paris Inlet\nFavianmouth, AZ 58270', 1, 1, NULL, NULL, NULL),
(3, 'Mr. Keyshawn Davis Sr.', 'hettinger.hilario@crooks.net', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '168 Wiegand Square Apt. 007\nPort Erynbury, VA 73914', 1, 1, NULL, NULL, NULL),
(4, 'Liam Carter', 'mohammad.littel@gmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '73651 Lindgren Mills\nMcCulloughberg, AL 60140-6467', 1, 1, NULL, NULL, NULL),
(5, 'Prof. Adonis Kovacek III', 'davis.maritza@gmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2801 Schinner Underpass Apt. 624\nBarrettstad, TN 25980', 1, 1, NULL, NULL, NULL),
(6, 'Rudolph Brekke DVM', 'smitham.kianna@gmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6587 Lindgren Parks\nKeanuborough, TX 13740', 1, 1, NULL, NULL, NULL),
(7, 'Narciso Keeling', 'jzboncak@torphy.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '87245 Susie Hollow Suite 838\nEast Josianemouth, IA 25572', 1, 1, NULL, NULL, NULL),
(8, 'May Corwin', 'mmcglynn@yahoo.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '33283 Pagac Junctions\nLake Harrison, LA 85635-7509', 1, 1, NULL, NULL, NULL),
(9, 'Mr. Randi Koepp Sr.', 'kassulke.emanuel@gmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '57571 Tad Hills Suite 894\nEast Adolfo, CA 16856', 1, 1, NULL, NULL, NULL),
(10, 'Floy Lesch Sr.', 'hermann.cole@yahoo.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1451 Magnus Summit Suite 611\nEast Elinor, OH 82876', 1, 1, NULL, NULL, NULL),
(11, 'Mrs. Mollie Ebert V', 'rippin.jose@yahoo.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9505 Daniel Mountains\nNew Dedrickshire, KS 59186-7513', 1, 1, NULL, NULL, NULL),
(12, 'Tremayne Gorczany', 'elna72@hotmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '76173 Alexa Drive\nJoannieborough, RI 09941', 1, 1, NULL, NULL, NULL),
(13, 'Prof. Kacey Miller', 'pbergstrom@gmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '457 Schimmel Streets Suite 903\nNew Jadynstad, KY 96724-2447', 1, 1, NULL, NULL, NULL),
(14, 'Kurtis Wolff', 'johann.king@hotmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8556 Doyle Lake Apt. 820\nFeeneyborough, OR 47164', 1, 1, NULL, NULL, NULL),
(15, 'Delmer Lemke', 'robyn23@gmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7744 Simonis Freeway\nNew Jaylinland, NE 96776', 1, 1, NULL, NULL, NULL),
(16, 'Prof. Leann Kirlin MD', 'paucek.emmanuel@hotmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '55502 Heathcote Mission Apt. 023\nHartmannside, NV 82343', 1, 1, NULL, NULL, NULL),
(17, 'Jenifer Hamill', 'kenna.johnson@rohan.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2047 Wisoky Way\nTreutelland, OR 91913', 1, 1, NULL, NULL, NULL),
(18, 'Emerald Johnston', 'gottlieb.june@yahoo.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '82932 Kassulke Manor Apt. 733\nWest Weldonhaven, SC 87610-1300', 1, 1, NULL, NULL, NULL),
(19, 'Ivory Haag', 'abotsford@nader.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '940 June Plains Suite 730\nNew Monicabury, DC 79238-2271', 1, 1, NULL, NULL, NULL),
(20, 'Abraham Koss', 'sherwood97@farrell.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7655 Adams Motorway\nNorth Genevieve, MS 92638-9908', 1, 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
