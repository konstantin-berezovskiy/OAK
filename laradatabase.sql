-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gostitelj: 127.0.0.1
-- Čas nastanka: 21. nov 2023 ob 14.36
-- Različica strežnika: 10.4.28-MariaDB
-- Različica PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Zbirka podatkov: `laradatabase`
--

-- --------------------------------------------------------

--
-- Struktura tabele `failed_jobs`
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
-- Struktura tabele `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Odloži podatke za tabelo `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_19_165741_create_listings_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabele `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `personal_access_tokens`
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
-- Struktura tabele `users`
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
-- Odloži podatke za tabelo `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Frida Gibson DVM', 'swest@example.com', '2023-11-19 18:53:34', '$2y$12$PTcEnDsIBGScPNCaKZ./8OQIRKZhN6arpWSLyGdikaNln3kz3h8I.', 'IaBwCtDOZd', '2023-11-19 18:53:34', '2023-11-19 18:53:34'),
(2, 'Lottie Harber', 'vdurgan@example.net', '2023-11-19 18:53:34', '$2y$12$PTcEnDsIBGScPNCaKZ./8OQIRKZhN6arpWSLyGdikaNln3kz3h8I.', 'zdyssJ0gbe', '2023-11-19 18:53:34', '2023-11-19 18:53:34'),
(3, 'Evie O\'Reilly', 'brody03@example.com', '2023-11-19 18:53:34', '$2y$12$PTcEnDsIBGScPNCaKZ./8OQIRKZhN6arpWSLyGdikaNln3kz3h8I.', '46nXnmKoye', '2023-11-19 18:53:34', '2023-11-19 18:53:34'),
(4, 'Dr. Patience Murphy', 'lee.herzog@example.net', '2023-11-19 18:53:34', '$2y$12$PTcEnDsIBGScPNCaKZ./8OQIRKZhN6arpWSLyGdikaNln3kz3h8I.', 'PPl626jswR', '2023-11-19 18:53:34', '2023-11-19 18:53:34'),
(5, 'Walker Schoen IV', 'ogislason@example.org', '2023-11-19 18:53:34', '$2y$12$PTcEnDsIBGScPNCaKZ./8OQIRKZhN6arpWSLyGdikaNln3kz3h8I.', 'lg1ELGv58V', '2023-11-19 18:53:34', '2023-11-19 18:53:34'),
(6, 'Cheyenne Crist', 'peggie06@example.net', '2023-11-19 18:53:34', '$2y$12$PTcEnDsIBGScPNCaKZ./8OQIRKZhN6arpWSLyGdikaNln3kz3h8I.', 'GowCZAznS7', '2023-11-19 18:53:34', '2023-11-19 18:53:34'),
(7, 'Lydia Nicolas', 'kayleigh74@example.com', '2023-11-19 18:53:34', '$2y$12$PTcEnDsIBGScPNCaKZ./8OQIRKZhN6arpWSLyGdikaNln3kz3h8I.', 'ZZGEAJZGcB', '2023-11-19 18:53:34', '2023-11-19 18:53:34'),
(8, 'Mrs. Eve Maggio PhD', 'pokuneva@example.net', '2023-11-19 18:53:34', '$2y$12$PTcEnDsIBGScPNCaKZ./8OQIRKZhN6arpWSLyGdikaNln3kz3h8I.', 'Eu0nLPMXu1', '2023-11-19 18:53:34', '2023-11-19 18:53:34'),
(9, 'Yasmine Hettinger', 'alexane76@example.org', '2023-11-19 18:53:34', '$2y$12$PTcEnDsIBGScPNCaKZ./8OQIRKZhN6arpWSLyGdikaNln3kz3h8I.', '4hktXL85GW', '2023-11-19 18:53:34', '2023-11-19 18:53:34'),
(10, 'Alford Padberg', 'gstamm@example.org', '2023-11-19 18:53:34', '$2y$12$PTcEnDsIBGScPNCaKZ./8OQIRKZhN6arpWSLyGdikaNln3kz3h8I.', 'A9U7oyNsel', '2023-11-19 18:53:34', '2023-11-19 18:53:34');

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksi tabele `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indeksi tabele `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksi tabele `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeksi tabele `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeksi tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabele `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabele `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT tabele `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
