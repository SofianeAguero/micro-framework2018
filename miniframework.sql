-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 04 nov. 2018 à 23:49
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `miniframework`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) DEFAULT NULL,
  `contenu` longtext,
  `date` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `date`, `slug`) VALUES
(1, 'Hello World', '\r\nRed Dead Redemption, premier du nom, est déjà aujourd\'hui un classique de la génération précédente, effaçant d\'ailleurs totalement son prédécesseur Red Dead Revolver. Héros charismatique, monde ouvert ultra détaillé, quête de rédemption dans un Ouest sauvage et violent, où les bandits et le sable règnent en maîtres, ambiance cinématographique inspirée des meilleurs films de John Ford et Sergio Leone, le titre a marqué par bien des aspects les joueurs. Huit ans après, voici sa suite, Red Dead Redemption 2. Qui veut tout faire mieux, plus fort, plus grandiose, mais est-ce forcément mieux ?', '1995-01-08 00:00:00', 'red-dead'),
(2, 'Salut le monde', 'Les anciennes aventures de l\'Agent 47 pourraient bien faire leur retour si nous en croyons le système de classification européen.\r\nÀ l\'approche de la sortie d\'Hitman 2 le 14 novembre prochain, tous les regards sont évidemment tournés vers cette prochaine aventure de l\'Agent 47. Et pourtant, ce n\'est pas cet épisode qui nous intéresse cette fois. En effet, deux petites informations sont passées inaperçues en septembre dernier et concernent d\'anciens volets qui pourraient refaire surface prochainement.', '1999-09-27 00:00:00', 'hitman');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
