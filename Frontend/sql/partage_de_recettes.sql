-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 28 août 2024 à 23:06
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `partage_de_recettes`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `review` int(11) NOT NULL DEFAULT 3
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `recipe_id`, `comment`, `created_at`, `review`) VALUES
(2, 3, 1, 'Deuxième commentaire', '2021-07-06 13:56:48', 0),
(1, 1, 1, 'Premier commentaire\n', '2021-07-06 13:56:48', 1),
(3, 2, 1, 'J\'adore le cassoulet mais je préfère manger des kebabs !', '2021-07-06 13:56:48', 3),
(5, 2, 1, 'Et de 5 ! trop bien la recette :)', '2021-07-06 14:10:50', 3),
(7, 2, 1, 'Test de 5', '2021-07-06 14:14:39', 5),
(9, 1, 7, 'Un classique indémodable, parfait pour les soirées d\'hiver.', '2024-08-28 22:57:40', 5),
(10, 2, 8, 'Une recette riche en saveurs, je l\'ai adorée avec un bon vin rouge.', '2024-08-28 22:57:40', 4),
(11, 3, 9, 'Simple mais tellement réconfortant, surtout par une journée froide.', '2024-08-28 22:57:40', 5),
(12, 4, 10, 'J\'adore le contraste entre le caramel croquant et les pommes fondantes.', '2024-08-28 22:57:40', 5);

-- --------------------------------------------------------

--
-- Structure de la table `recipes`
--

CREATE TABLE `recipes` (
  `recipe_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `recipe` text NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `author` varchar(512) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `title`, `recipe`, `is_enabled`, `author`) VALUES
(1, 'Cassoulet', 'Le cassoulet est une spécialité régionale du Languedoc, à base de haricots secs, généralement blancs, et de viande. À son origine, il était à base de fèves. Le cassoulet tient son nom de la cassole en terre cuite émaillée dite caçòla1 en occitan et fabriquée à Issel.\n', 1, 'mickael.andrieu@exemple.com'),
(2, 'Couscous', 'Le couscous est d\'une part une semoule de blé dur préparée à l\'huile d\'olive (un des aliments de base traditionnel de la cuisine des pays du Maghreb) et d\'autre part, une spécialité culinaire issue de la cuisine berbère, à base de couscous, de légumes, d\'épices, d\'huile d\'olive et de viande (rouge ou de volaille) ou de poisson.', 0, 'mickael.andrieu@exemple.com'),
(4, 'Salade Romaine', 'La salade César est une recette de cuisine de salade composée de la cuisine américaine, traditionnellement préparée en salle à côté de la table, à base de laitue romaine, œuf dur, croûtons, parmesan et de « sauce César » à base de parmesan râpé, huile d\'olive, pâte d\'anchois, ail, vinaigre de vin, moutarde, jaune d\'œuf et sauce Worcestershire.', 0, 'laurene.castor@exemple.com'),
(3, 'Escalope milanaise', 'L\'escalope à la milanaise, ou escalope milanaise est une escalope panée, de viande de veau, traditionnellement prise dans le faux-filet. Historiquement, on la cuit avec du beurre. Elle est généralement servie avec salade ou frites, accompagnée de sauce mayonnaise. On peut y ajouter un filet de jus de citron.\n\nEn Italie, ce mets ne se sert pas avec des pâtes.', 1, 'mathieu.nebra@exemple.com'),
(7, 'Bœuf Bourguignon', 'Le Bœuf Bourguignon est un ragoût français traditionnel fait de bœuf braisé dans du vin rouge, généralement avec des oignons, des champignons et du lard.', 1, 'gordon@exemple.com'),
(8, 'Coq au Vin', 'Le Coq au Vin est un plat français emblématique où du poulet est mijoté dans une sauce à base de vin rouge, avec des champignons, du lard et des oignons.', 1, 'pierre@exemple.com'),
(9, 'Soupe à l\'Oignon', 'La Soupe à l\'Oignon est une soupe française traditionnelle à base d\'oignons caramélisés, souvent gratinée avec du fromage.', 1, 'mathilda-granger@exemple.com'),
(10, 'Tarte Tatin', 'La Tarte Tatin est une tarte renversée aux pommes, où les fruits sont caramélisés avant d\'être recouverts de pâte et cuits au four.', 1, 'aziz@exemple.com'),
(14, 'Salade d’Été aux Saveurs Méditerranéennes', 'Une salade fraîche et colorée, mélangeant légumes croquants, olives et feta. Parfaite pour un déjeuner léger ou en accompagnement d’un barbecue, elle vous transportera directement au bord de la Méditerranée.', 1, 'gordon@exemple.com'),
(15, 'Escalope Milanaise', 'L\'escalope à la milanaise, ou escalope milanaise est une escalope panée, de viande de veau, traditionnellement prise dans le faux-filet. Historiquement, on la cuit avec du beurre. Elle est généralement servie avec salade ou frites, accompagnée de sauce mayonnaise.', 1, 'pierre@exemple.com'),
(16, 'Pastrami', 'Laisser fumer une délicieuse viande pendant une nuit pour un goût incomparable. Idéal pour accompagner vos sandwiches.', 1, 'mathilda-granger@exemple.com'),
(17, 'Tarte au Citron Meringuée de Grand-Mère', 'Une recette transmise de génération en génération, cette tarte au citron meringuée est l\'alliance parfaite entre l\'acidité du citron et la douceur de la meringue. Parfaite pour toutes les occasions !', 1, 'aziz@exemple.com'),
(18, 'Poulet Curry-Coco Express', 'Une recette rapide et savoureuse, ce poulet au curry et lait de coco est idéal pour les soirs où vous avez peu de temps mais voulez un repas délicieux et réconfortant. Simple et efficace !', 1, 'gordon@exemple.com'),
(19, 'Tajine d\'Agneau aux Abricots', 'Un tajine riche en saveurs, où la tendreté de l\'agneau se marie avec la douceur des abricots et des épices. Une recette réconfortante qui vous emmène en voyage au cœur du Maroc.', 1, 'pierre@exemple.com'),
(20, 'Sushi Maki au Saumon et Avocat', 'Un bol de ramen chaud et réconfortant, avec du poulet tendre, des nouilles al dente, et un œuf mariné à la sauce soja. Un voyage gustatif au cœur du Japon, à savourer à la maison.', 1, 'mathilda-granger@exemple.com');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(64) NOT NULL,
  `email` varchar(512) NOT NULL,
  `password` varchar(512) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `email`, `password`, `age`) VALUES
(1, 'Mike Gordon', 'gordon@exemple.com', 'cuisine', 36),
(2, 'Pierre Proust', 'pierre@exemple.com', 'MiamMiam', 24),
(3, 'Mathilda Granger', 'mathilda-granger@exemple.com', 'mgrange28', 28),
(4, 'Aziz Zaaine', 'aziz@exemple.com', 'azerty', 38);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Index pour la table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipe_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
