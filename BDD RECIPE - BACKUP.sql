-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour recettes
CREATE DATABASE IF NOT EXISTS `recettes` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `recettes`;

-- Listage de la structure de table recettes. category
CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Listage des données de la table recettes.category : ~3 rows (environ)
INSERT INTO `category` (`id_category`, `category_name`) VALUES
	(1, 'Plat'),
	(2, 'Dessert'),
	(3, 'Entrée');

-- Listage de la structure de table recettes. ingredient
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id_ingredient` int NOT NULL AUTO_INCREMENT,
  `ingredient_name` varchar(100) NOT NULL DEFAULT '0',
  `unity` varchar(100) NOT NULL DEFAULT '0',
  `price` float NOT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

-- Listage des données de la table recettes.ingredient : ~77 rows (environ)
INSERT INTO `ingredient` (`id_ingredient`, `ingredient_name`, `unity`, `price`) VALUES
	(1, 'Boeuf', 'g', 10),
	(2, 'Oeuf', 'unité', 10),
	(3, 'Crème', 'g', 10),
	(4, 'Gousse d\'ail', 'unité', 10),
	(5, 'Persil plat', 'g', 10),
	(6, 'Sauce Soja salé', 'g', 10),
	(7, 'Escalope de dinde', 'unité', 10),
	(8, 'Haricots verts', 'g', 10),
	(9, 'Macaroni', 'g', 10),
	(10, 'Oignon jaune', 'unité', 10),
	(11, 'Origan', 'g', 10),
	(12, 'Concombre', 'unité', 20),
	(13, 'Huile de tournesol', 'cuilliere', 10),
	(14, 'Oignon rouge', 'unité', 10),
	(15, 'Pois chiches', 'g', 10),
	(16, 'Tomate', 'unité', 10),
	(17, 'Emincés végétaux', 'g', 10),
	(18, 'Aiguillette de poulet', 'g', 10),
	(19, 'Avocat', 'unité', 10),
	(20, 'Courgette', 'unité', 10),
	(21, 'Fromage Blanc', 'g', 10),
	(22, 'Noix de cajou grillées', 'g', 10),
	(23, 'Quinoa blanc', 'g', 10),
	(24, 'Curry madras', 'g', 10),
	(25, 'Pavés de saumon', 'unité', 10),
	(26, 'Pomme de terre', 'unité', 10),
	(27, 'Echalote', 'unité', 10),
	(28, 'Citron vert', 'unité', 10),
	(29, 'Coriandre', 'g', 10),
	(30, 'Cebette', 'g', 10),
	(31, 'Lieu noir', 'unité', 10),
	(32, 'Nuoc mam', 'g', 10),
	(33, 'Piment oiseau', 'unité', 10),
	(34, 'Riz basmati', 'g', 10),
	(35, 'Gnocchi nature', 'g', 10),
	(36, 'Basilic séché', 'g', 10),
	(37, 'Carotte', 'unité', 10),
	(38, 'Fromage italien ràpé', 'g', 10),
	(39, 'Pousse d\'épinards', 'g', 10),
	(40, 'Purée de tomates', 'g', 10),
	(41, 'Brocoli', 'g', 10),
	(42, 'Concentré de tomate', 'g', 10),
	(43, 'Haricots blancs', 'g', 10),
	(44, 'Paprika fumé', 'g', 10),
	(45, 'Persil', 'g', 10),
	(46, 'Menthe', 'g', 10),
	(47, 'Steaks hachés', 'unité', 10),
	(48, 'Bulbe de fenouil', 'unité', 10),
	(49, 'Saucisses fumée', 'unité', 10),
	(50, 'Spaghetti ', 'g', 10),
	(51, 'Rhum', 'cl', 10),
	(52, 'Beurre', 'g', 10),
	(53, 'Huile d\'olive', 'cuillere', 10),
	(54, 'Sucre', 'g', 10),
	(55, 'Lait', 'cl', 10),
	(56, 'Sel', 'pincée', 10),
	(57, 'Poivre', 'pincée', 10),
	(58, 'Feuille de gelatine', 'unité', 10),
	(59, 'Poivron rouge', 'unité', 10),
	(60, 'Chèvre frais', 'g', 10),
	(61, 'Tranche de pain', 'unité', 10),
	(62, 'Crème fraiche épaisse', 'g', 10),
	(63, 'Vinaigre de xérèse', 'cuilliere', 10),
	(64, 'Bouillon de volaille', 'cl', 10),
	(65, 'Pain', 'g', 10),
	(66, 'Carré frais', 'unité', 10),
	(67, 'Carré frais au yaourt', 'unité', 10),
	(68, 'Verre d\'eau', 'unité', 10),
	(69, 'Cerfeuil', 'unité', 10),
	(70, 'Coeur de laitue', 'g', 10),
	(71, 'Feuille de brick', 'unité', 10),
	(72, 'Farine', 'g', 10),
	(73, 'Chocolat patissier', 'g', 10),
	(74, 'Bouquet basilic', 'unité', 10),
	(75, 'Lardons', 'g', 10),
	(76, 'Jaune d\'oeuf', 'unité', 10),
	(77, 'poivre blanc', ' cuillère à café', 2.5);

-- Listage de la structure de table recettes. recipe
CREATE TABLE IF NOT EXISTS `recipe` (
  `id_recipe` int NOT NULL AUTO_INCREMENT,
  `recipe_name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `preparation_time` int NOT NULL DEFAULT '0',
  `introductions` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_category` int NOT NULL,
  PRIMARY KEY (`id_recipe`),
  KEY `id_category` (`id_category`),
  CONSTRAINT `FK_recipe_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Listage des données de la table recettes.recipe : ~10 rows (environ)
INSERT INTO `recipe` (`id_recipe`, `recipe_name`, `preparation_time`, `introductions`, `id_category`) VALUES
	(1, 'Saucisse fumée, sauce tomate aux graines de fenouil et spaghettis', 30, 'Les saucisses fumées\r\n\r\nCoupez les saucisses fumées en demi-rondelles.\r\nDans une sauteuse, faites chauffer un filet d\'huile d\'olive à feu moyen à vif.\r\nFaites dorer les saucisses fumées 5 à 8 min puis réservez-les sur une assiette.\r\nEn parallèle, préparez les légumes.\r\n\r\nLes légumes\r\n\r\nÉmincez l\'oignon.\r\nPressez ou hachez l\'ail.\r\nCoupez la base et les tiges à ras du bulbe de fenouil. Retirez la partie dure au centre et émincez le reste.\r\nDans la même sauteuse, faites à nouveau chauffer un filet d\'huile d\'olive à feu moyen à vif. \r\nFaites revenir l\'oignon, l\'ail et le fenouil 10 min environ. Salez, poivrez.\r\nAu bout des 10 min, ajoutez la purée de tomates, l\'eau et les graines de fenouil. \r\nCouvrez et laissez mijoter 10 min. \r\nAstuce : ajoutez une cuillère à café de sucre pour réduire l\'acidité de la sauce tomate.\r\nPendant ce temps, faites cuire les spaghettis. \r\n\r\nLes spaghettis\r\n\r\nPortez à ébullition une casserole d’eau salée.\r\nFaites cuire les spaghettis selon les indications du paquet.\r\n\r\nA table !\r\n\r\nUne fois les légumes cuits, replacez les saucisses fumées dans la sauteuse. Mélangez bien.\r\nGoûtez et rectifiez l\'assaisonnement si nécessaire.', 1),
	(3, 'Le paprika c est la vie', 25, 'Le brocoli\r\n\r\nCoupez les bouquets de brocoli. Épluchez la tige et émincez-la.\r\nPortez à ébullition une casserole d\'eau salée.\r\nFaites cuire le brocoli 10 min environ. \r\nEn parallèle, faites cuire le riz.\r\n\r\nLe riz\r\n\r\nPortez à ébullition une seconde casserole d\'eau salée.\r\nFaites cuire le riz selon les indications du paquet.\r\nPendant ce temps, préparez les haricots blancs.\r\n\r\nLes haricots blancs\r\n\r\nCiselez (dés) l\'oignon. \r\nPressez ou hachez l\'ail.\r\nDans une sauteuse, faites chauffer un filet d\'huile de cuisson à feu moyen à vif. \r\nFaites dorer l\'oignon 5 min environ. \r\nAjoutez l\'ail, le concentré de tomates, le paprika fumé et poursuivez la cuisson 2 min. \r\nAu bout des 2 min, ajoutez les haricots blancs avec leur eau et la crème.\r\nFaites cuire à petits bouillons 5 min. Salez, poivrez.\r\nEn fin de cuisson, ajoutez le brocoli cuit et mélangez bien. \r\nGoûtez et rectifiez l\'assaisonnement si nécessaire.\r\nEffeuillez et ciselez le persil.', 1),
	(4, 'Gratin de gnocchis à la tomate et au fromage italien', 35, 'La sauce tomate\r\n\r\nPréchauffez votre four à 250°C en mode grill !\r\nPendant ce temps, émincez l\'oignon.\r\nPressez ou hachez l\'ail.\r\nÉpluchez et coupez la carotte en dés.\r\nDans une sauteuse, faites chauffer un filet d\'huile d\'olive à feu moyen à vif.\r\nFaites revenir l\'oignon, la carotte et l\'ail 10 min environ.\r\nAu bout des 10 min, ajoutez la purée de tomates, le basilic et l\'eau.\r\nSalez, poivrez. Poursuivez la cuisson 10 à 15 min jusqu\'à ce que la sauce soit réduite et la carotte cuite.\r\nAstuce : ajoutez une cuillère à café de sucre pour diminuer l\'acidité de la purée de tomates.\r\nGoûtez et rectifiez l\'assaisonnement si nécessaire.\r\nEn parallèle, faites cuire les gnocchis.\r\n\r\nLes gnocchis\r\n\r\nDans une seconde sauteuse, faites chauffer un filet d\'huile d\'olive à feu moyen à vif.\r\nFaites dorer les gnocchis 5 min. Salez, poivrez. Remuez régulièrement.\r\n\r\nLe gratin\r\n\r\nDéposez les gnocchis et la sauce tomate dans un plat à gratin. Mélangez bien. \r\nParsemez de fromage italien râpé et enfournez 2 à 3 min jusqu\'à ce que le fromage soit fondu.\r\nEn parallèle, assaisonnez les pousses d\'épinards d\'un filet d\'huile d\'olive et de vinaigre.', 1),
	(5, 'Koy pa lao de lieu noir (salade de poisson laotienne)', 30, 'Le lieu noir\r\n\r\nPortez à ébullition une casserole d\'eau salée.\r\nPendant ce temps, rincez et essuyez le lieu noir.\r\nCoupez-le en fines tranches.\r\nQuand l\'eau bout, faites cuire le lieu noir 3 min environ. \r\nAu bout des 3 min, à l\'aide d\'une écumoire, transvasez délicatement le lieu noir dans un saladier avec un peu d\'eau froide. Laissez-le tiédir.\r\nPendant ce temps, lancez la cuisson du riz et des haricots verts.\r\n\r\nLe riz et les haricots verts\r\n\r\nPortez à ébullition une casserole d\'eau salée.\r\nPendant ce temps, équeutez les haricots verts et coupez-les en morceaux.\r\nFaites cuire les haricots verts 5 min.\r\nAu bout des 5 min de cuisson, ajoutez le riz et prolongez la cuisson 10 min.\r\nUne fois cuits, égouttez-les et passez-les sous l\'eau froide pour les refroidir.\r\nPendant ce temps, préparez la salade et le condiment au concombre.\r\n\r\nLa salade\r\n\r\nDans un saladier, déposez les ingrédients suivants : \r\nCiselez (dés) l\'échalote.\r\nHachez le piment (plus ou moins selon votre sensibilité). Lavez-vous bien les mains après l\'avoir manipulé, il peut irriter la peau.\r\nA l\'aide d\'une râpe, prélevez les zestes de citron vert (uniquement l\'écorce de couleur) et pressez-le.\r\nAjoutez l\'huile de tournesol et la sauce nuoc mam. Poivrez. Mélangez bien pour obtenir une sauce. \r\nCiselez la coriandre (en entier, les tiges se consomment).\r\nRetirez la base de la cébette et émincez-la.\r\nUne fois cuits et refroidis, ajoutez le riz, les haricots verts et le poisson. Mélangez bien.\r\nGoûtez et rectifiez l\'assaisonnement si nécessaire.\r\n\r\nLe condiment au concombre\r\n\r\nÉpluchez et râpez le concombre.\r\nAssaisonnez-le d\'un filet d\'huile d\'olive et de vinaigre. Salez, poivrez.', 1),
	(6, 'Gaspacho de courgettes au Carré Frais', 30, 'Eplucher les courgettes et les débiter en petits dés.\r\n\r\nCiseler l\'oignon.\r\n\r\nFaire revenir l\'oignon dans la poêle, dans de l\'huile d\'olive chaude.\r\n\r\nQuand l\'oignon est translucide, ajouter les dés de courgette et le bouillon de volaille.\r\n\r\nPorter à ébullition.\r\n\r\nBaisser le feu et laisser mijoter 7-8 minutes environ, jusqu\'à ce que le courgettes soient tendres.\r\n\r\nRetirer du feu, réserver pour laisser refroidir à température ambiante.\r\n\r\nMettre dans le mixer la préparation de courgettes refroidie, la mie de pain légèrement mouillée, 4 cuillères à soupe d\'huile d\'olive.\r\n\r\nMixer.\r\n\r\nEcraser à la fourchette les 2 Carrés Frais au Yaourt et 1 Carré Frais classique.\r\n\r\nAjouter le fromage à la petite cuillère à la préparation avec un peu de cerfeuil.\r\n\r\nMixer jusqu\'à obtenir une velouté lisse et onctueux.\r\n\r\nAssaisonner avce le sel, le poivre et 2 cuillères à soupe de vinaigre de Xéres.\r\n\r\nGoûter et - éventuellement - rectifier l\'assaisonnement et délayer avec un peu d\'eau (un verre max.) selon la consistance souhaitée.\r\n\r\nRéserver le gaspacho 3h minimum au réfrigérateur.\r\n\r\nDresser les assiettes :\r\n\r\nEcraser les 4 Carrés Frais et assaisonner avec un peu de cerfeuil fraîchement ciselé.\r\n\r\nDéposer sur 4 tranches de pain légèrement grillé.\r\n\r\nNe pas étaler, laisser du volume et la texture du Carré Frais.\r\n\r\nVerser la soupe dans vos récipients.\r\n\r\nAjouter un filet d\'huile d\'olive (ne pas mélanger).\r\n\r\nDécorer avecune feuille de cerfeuil.\r\n\r\nSi le gaspacho est servi dans des coupes ou des petits bols, déposer la tartine de Carré Frais sur le bord du bol.\r\n\r\nSi le gaspacho est servi dans de grandes assiettes creuses, déposer délicatement la tartine sur le gaspacho dans l\'assiette.', 3),
	(7, 'Charlotte au chèvre', 30, 'Ecroutez le pain de mie et coupez les tranches en 2 pour former des triangles.\r\n\r\n\r\nFaites fondre le beurre dans une poêle et faites dorer les triangles d\'un seul côté. Egouttez sur du papier absorbant.\r\n\r\nPelez l\'ail, ciselez le basilic.\r\n\r\nMélangez au mixer le chèvre, la crème et l\'ail. Versez dan un saladier. Ajoutez 2 cuillères à soupe de basilic ciselé et 2 cuillères à soupe d\'huile d\'olive. Salez, poivrez et mélangez.\r\n\r\nFaites ramollir la gélatine dans de l\'eau froide. Essorez-la et faites-la fondre dans 5cl d\'eau bouillante. Remuez puis incorporez-la dans la préparation au chèvre et mélangez longuement. Rectifiez l\'assaisonnement.\r\n\r\nDisposez les triangles dans un moule à charlotte, côté doré à l\'extérieur. Versez la préparation dans le moule et tassez-la en tapant le fond du moule sur le plan de travail.\r\n\r\nMettez 6h au frigo. Avant de servir frais, démoulez en trempant le fond du moule quelques secondes dans de l\'eau chaude. Décorez de petits dés de poivrons et de basilic.\r\n', 3),
	(8, 'Gaufres faciles et légères', 17, 'Mettre la farine dans un saladier, y ajouter le sucre, les jaunes d\'œufs et le beurre ramolli.\r\n\r\nDélayer peu à peu le tout en y ajoutant le lait pour qu\'il n\'y ait pas de grumeaux.\r\n\r\nBattre les blancs en neige avec une pincée de sel et les ajouter au restant en remuant délicatement.\r\n\r\nCuire le tout dans un gaufrier légèrement beurré.', 2),
	(9, 'Gâteau au chocolat fondant rapide', 40, 'Préchauffez votre four à 180°C (thermostat 6). Dans une casserole, faites fondre le chocolat et le beurre coupé en morceaux à feu très doux.\r\n\r\nDans un saladier, ajoutez le sucre, les oeufs, la farine. Mélangez.\r\n\r\nAjoutez le mélange chocolat/beurre. Mélangez bien.\r\n\r\nBeurrez à l\'aide d\'une feuille de papier essuie-tout et farinez votre moule puis y versez la pâte à gâteau.\r\n\r\nFaites cuire au four environ 20 minutes.\r\n\r\nA la sortie du four le gâteau ne paraît pas assez cuit. C\'est normal, laissez-le refroidir puis démoulez- le.', 2),
	(10, 'Bowl d\'émincés végétaux méditerranéens, houmous au piment fumé et haricots verts', 20, 'Les haricots verts\r\n\r\nPortez à ébullition une casserole d\'eau salée.\r\nPendant ce temps, équeutez les haricots verts et coupez-les en tronçons.\r\nFaites-les cuire 10 min. \r\nEn parallèle, faites cuire les émincés végétaux.\r\n\r\nLes émincés végétaux méditerranéens\r\n\r\nDans une poêle, faites chauffer un filet d’huile d’olive à feu moyen à vif.\r\nFaites revenir les émincés végétaux 5 min environ. Remuez régulièrement.\r\nEn parallèle, préparez le houmous.\r\n\r\nLe houmous au piment fumé\r\n\r\nDans le bol d\'un mixeur, déposez les ingrédients suivants :\r\nPressez ou hachez l\'ail.\r\nAjoutez les pois chiches, l\'huile au piment fumé et l\'huile d\'olive. Salez.\r\nMixez jusqu\'à obtenir une texture lisse et homogène.\r\nGoûtez et rectifiez l’assaisonnement si nécessaire.\r\n\r\nLes bowl\r\n\r\nCiselez (dés) l\'oignon rouge. \r\nCoupez la tomate en dés.\r\nÉpluchez et coupez le concombre en fines demi-rondelles.\r\nDans des bols déposez en compartiments la tomate, le concombre, les haricots verts et les émincés végétaux méditerranéens.\r\nAssaisonnez d\'un filet d\'huile d\'olive et de vinaigre. Parsemez d\'oignon rouge.\r\nDéposez une cuillère de houmous au piment fumé par-dessus.', 1),
	(11, 'Pâtes à la carbonara', 20, ' Cuire les pâtes dans un grand volume d eau bouillante salée. \r\n Emincer les oignons et les faire revenir à la poêle. \r\n Dès qu ils ont bien dorés, y ajouter les lardons.\r\n Préparer dans un saladier la crème fraîche, les oeufs, le sel, le poivre et mélanger.\r\n Retirer les lardons du feu dès qu ils sont dorés et les ajouter à la crème.\r\n Une fois les pâtes cuite al dente, les égoutter et y incorporer la crème.\r\n Remettre sur le feu si le plat a refroidi.', 3);

-- Listage de la structure de table recettes. recipe_ingredients
CREATE TABLE IF NOT EXISTS `recipe_ingredients` (
  `quantity` float NOT NULL,
  `id_ingredient` int NOT NULL,
  `id_recipe` int NOT NULL,
  KEY `id_ingredient` (`id_ingredient`),
  KEY `id_recipe` (`id_recipe`),
  CONSTRAINT `FK_recipe_ingredients_ingredient` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`),
  CONSTRAINT `FK_recipe_ingredients_recipe` FOREIGN KEY (`id_recipe`) REFERENCES `recipe` (`id_recipe`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table recettes.recipe_ingredients : ~83 rows (environ)
INSERT INTO `recipe_ingredients` (`quantity`, `id_ingredient`, `id_recipe`) VALUES
	(1, 48, 1),
	(0.5, 4, 1),
	(1, 10, 1),
	(250, 40, 1),
	(2, 49, 1),
	(200, 50, 1),
	(0.5, 28, 5),
	(125, 12, 5),
	(15, 29, 5),
	(15, 30, 5),
	(200, 8, 5),
	(2, 31, 5),
	(9, 32, 5),
	(1, 33, 5),
	(150, 34, 5),
	(0.5, 27, 5),
	(250, 41, 3),
	(20, 42, 3),
	(100, 3, 3),
	(1, 4, 3),
	(240, 43, 3),
	(1, 10, 3),
	(4, 44, 3),
	(4, 45, 3),
	(150, 34, 3),
	(400, 35, 4),
	(6, 36, 4),
	(1, 37, 4),
	(20, 38, 4),
	(1, 4, 4),
	(0.5, 14, 4),
	(50, 39, 4),
	(250, 40, 4),
	(1, 56, 8),
	(20, 52, 8),
	(30, 54, 8),
	(200, 72, 8),
	(3, 2, 8),
	(25, 55, 8),
	(100, 54, 9),
	(50, 72, 9),
	(100, 52, 9),
	(200, 73, 9),
	(3, 2, 9),
	(1, 56, 6),
	(1, 57, 6),
	(1, 63, 6),
	(1, 53, 6),
	(1, 10, 6),
	(1, 20, 6),
	(50, 64, 6),
	(40, 65, 6),
	(5, 66, 6),
	(2, 67, 6),
	(1, 68, 6),
	(1, 69, 6),
	(2, 61, 6),
	(1, 56, 7),
	(1, 57, 7),
	(4, 58, 7),
	(30, 52, 7),
	(1, 53, 7),
	(1, 59, 7),
	(300, 60, 7),
	(12, 61, 7),
	(200, 62, 7),
	(1, 74, 7),
	(2, 4, 7),
	(1, 12, 10),
	(1, 4, 10),
	(200, 8, 10),
	(1, 13, 10),
	(1, 14, 10),
	(120, 15, 10),
	(1, 16, 10),
	(160, 17, 10),
	(1, 10, 11),
	(250, 75, 11),
	(1, 57, 11),
	(1, 56, 11),
	(50, 62, 11),
	(500, 50, 11),
	(3, 76, 11);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
