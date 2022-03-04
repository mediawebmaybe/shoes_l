-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 04 2022 г., 11:12
-- Версия сервера: 5.7.33
-- Версия PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shoes_l`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Женская обувь', NULL, NULL),
(2, 'Мужская обувь', NULL, NULL),
(3, 'Подростковая обувь', NULL, NULL),
(4, 'Детская обувь', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_03_01_100333_create_sessions_table', 1),
(7, '2022_03_02_201315_create_shoes_table', 2),
(11, '2022_03_02_201945_create_products_table', 3),
(12, '2022_03_03_131632_create_categories_table', 4),
(14, '2022_03_03_132140_create_carts_table', 5),
(15, '2022_03_03_161523_create_orders_table', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) NOT NULL DEFAULT '',
  `user_phone` varchar(255) NOT NULL DEFAULT '',
  `user_comment` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `products` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `products`, `created_at`, `updated_at`) VALUES
(1, '1111111111111111111111', '22222222222222', '333333333333', 0, '{\"19\":1}', '2022-03-03 14:55:46', '2022-03-03 14:55:46'),
(17, '1111111111111111111111', '22222222222222', '333333333333', 0, '{\"19\":1}', '2022-03-03 15:37:45', '2022-03-03 15:37:45'),
(18, '1111111111111111111111', '22222222222222', '333333333333', 0, '{\"19\":1}', '2022-03-03 15:38:04', '2022-03-03 15:38:04'),
(19, '1111111111111111111111', '22222222222222', '333333333333', 0, '{\"18\":1,\"19\":1,\"21\":1,\"10\":2}', '2022-03-03 16:04:05', '2022-03-03 16:04:05'),
(20, '1111111111111111111111', '22222222222222', '333333333333', 0, '{\"18\":1,\"19\":1,\"21\":1,\"10\":2}', '2022-03-03 16:04:51', '2022-03-03 16:04:51'),
(21, '1111111111111111111111', '22222222222222', '333333333333', 0, '{\"10\":1}', '2022-03-03 16:08:20', '2022-03-03 16:08:20'),
(22, '1111111111111111111111', '22222222222222', '333333333333', 0, '{\"10\":1}', '2022-03-03 16:11:15', '2022-03-03 16:11:15');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `material` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `price`, `category_id`, `brand`, `color`, `material`, `country`, `size`, `description`, `created_at`, `updated_at`) VALUES
(9, 'Shoes #1', 100000, 3500, 1, 'Nike', 'голубой', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:08:59', '2022-03-03 05:08:59'),
(10, 'Shoes #2', 100001, 4500, 2, 'Adidas', 'чёрный', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:13:12', '2022-03-03 05:13:12'),
(11, 'Shoes #3', 100002, 5000, 3, 'Nike', 'голубой', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:24:50', '2022-03-03 05:24:50'),
(12, 'Shoes #4', 100005, 5200, 3, 'Adidas', 'голубой', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:25:44', '2022-03-03 05:25:44'),
(13, 'Shoes #5', 100004, 2300, 4, 'Puma', 'фиолетовый', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:38:34', '2022-03-03 05:38:34'),
(14, 'Shoes #6', 100006, 4000, 1, 'Puma', 'фиолетовый', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:39:10', '2022-03-03 05:39:10'),
(15, 'Shoes #7', 100016, 2600, 3, 'Nike', 'розовый', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:39:48', '2022-03-03 05:39:48'),
(16, 'Shoes #8', 100007, 4300, 4, 'Puma', 'розовый', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:40:25', '2022-03-03 05:40:25'),
(17, 'Shoes #9', 100023, 4300, 1, 'Demix', 'чёрный', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:41:01', '2022-03-03 05:41:01'),
(18, 'Shoes #10', 100033, 3800, 2, 'Demix', 'голубой', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:42:10', '2022-03-03 05:42:10'),
(19, 'Shoes #11', 100034, 3300, 2, 'Nike', 'фиолетовый', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:42:40', '2022-03-03 05:42:40'),
(20, 'Shoes #12', 100035, 3800, 3, 'Demix', 'синий', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:43:17', '2022-03-03 05:43:17'),
(21, 'Shoes #13', 100036, 3800, 1, 'Demix', 'голубой', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:43:40', '2022-03-03 05:43:40'),
(22, 'Shoes #14', 100037, 2800, 4, 'Adidas', 'чёрный', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:44:15', '2022-03-03 05:44:15'),
(23, 'Shoes #15', 100038, 4500, 1, 'Adidas', 'розовый', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:44:46', '2022-03-03 05:44:46'),
(24, 'Shoes #16', 100003, 3700, 3, 'Nike', 'чёрный', 'синтетика', 'Китай', 38, 'Качественные брендовые модели по невысокой цене', '2022-03-03 05:45:19', '2022-03-03 05:45:19');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ErrVSsSsIlEdsbxUQRjO82ffESEuyP8ierUmBYxV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicmxiVEdMUmtoZVFmYWkyRzNiUHdxaWxVNHdVb2tjY25IM3pWMklJayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9zaG9lcy1sL2NhcnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjg6InByb2R1Y3RzIjthOjE6e3M6ODoicHJvZHVjdHMiO2E6MTp7aToxODtpOjE7fX19', 1646333041),
('WlVbF8F27SVpwi0gn1SWhiezguByvN071RtwKYWI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6IkpBUXZ6ZXRkaEFOSFhQSFZmV3psMUExckY2TVpCRFd5VzBwSHpLMDciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjE5OiJodHRwOi8vc2hvZXMtbC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319aTowO047aToxO047aToyO047aTozO047aTo0O047aTo1O047czo4OiJwcm9kdWN0cyI7YTowOnt9fQ==', 1646334679);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
