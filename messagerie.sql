-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 06 déc. 2018 à 16:44
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `messagerie`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_id` int(10) UNSIGNED NOT NULL,
  `to_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_06_092344_add_message', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'JhonDoe0', 'jhon0@doe.fr', NULL, '$2y$10$MCKmsIDajrsWe0i9lJDmWuEgVAkB4Tq.0yYKEyJL3cWy9p91BsaAq', '25SwtUbf0Xh5ulSjRmDJbCmjJ798CYEtKjsSUT4wOy9bYlejm5jEsDmGY8sM', NULL, NULL),
(2, 'JhonDoe1', 'jhon1@doe.fr', NULL, '$2y$10$4sK/Gtyta.YbvaMa2LDRRuk.yc9sBPQcVcRIOf8qDdyjvZGWB.6gC', '4bfXpF4bQjpk6K21hNzAx83qn5utx713nD2FnSSq49zgrBJBEo2mIRJuTofD', NULL, NULL),
(3, 'JhonDoe2', 'jhon2@doe.fr', NULL, '$2y$10$Puns2EXd81Qsxf/r8ErIfOGuR.AgODSMqJT8iFy9v0u1VVAfmw9W.', NULL, NULL, NULL),
(4, 'JhonDoe3', 'jhon3@doe.fr', NULL, '$2y$10$ru9f2O5In4P4BeX8KXgGO.IdqJUW6SJajlt5aSUBGI1Y72Q3DD9pm', NULL, NULL, NULL),
(5, 'JhonDoe4', 'jhon4@doe.fr', NULL, '$2y$10$lfZcphJpk3sDYmD8Ttfp4uRk2OyFpYrTsnd3RKPf8MaJaTiP4AiGm', NULL, NULL, NULL),
(6, 'JhonDoe5', 'jhon5@doe.fr', NULL, '$2y$10$Se8Vdv5KK.UMWJAqV4BgSeO4jtXf4Ztx/3snnFhlxmS.6vtIeUrQS', NULL, NULL, NULL),
(7, 'JhonDoe6', 'jhon6@doe.fr', NULL, '$2y$10$fdZzOQGvO06wAxZ/A.0IROrU2XqeS/eRO8/dZ9hWXWDjxcvtUsrcK', NULL, NULL, NULL),
(8, 'JhonDoe7', 'jhon7@doe.fr', NULL, '$2y$10$hGDbmD3RK6bMSuFYVGE2.umqf16NLhTmOfnPXcokECxZGpT6D7vjq', NULL, NULL, NULL),
(9, 'JhonDoe8', 'jhon8@doe.fr', NULL, '$2y$10$saGNLFeW4QkGtGS43wTSx.o8Q7MHzqxAFpRYzerx26oyeA4hlxLPa', NULL, NULL, NULL),
(10, 'JhonDoe9', 'jhon9@doe.fr', NULL, '$2y$10$fOEtO.gDggKYqSkZiXnp/us8zKZEqnK/Y1ulPU1lT8EaY9OMk7T0i', NULL, NULL, NULL),
(11, 'Elies', 'elieskedim1@gmail.com', NULL, '$2y$10$kg.1D894DipTt5CcDMC4QurhQp4aFaf.KJsabZkyqChcqMtAl1QVG', 'PWn19z7ffEg9feLxS5GtsJcaLHYn6kfLQd1Xhi6k8DEViTBwwBhFVPH7vyHP', '2018-12-06 10:31:42', '2018-12-06 10:31:42');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from` (`from_id`),
  ADD KEY `to` (`to_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `from` FOREIGN KEY (`from_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `to` FOREIGN KEY (`to_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
