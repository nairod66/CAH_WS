-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 11 Mai 2017 à 21:50
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cardsagainsthumanity`
--

-- --------------------------------------------------------

--
-- Structure de la table `cartes_blanches`
--

CREATE TABLE `cartes_blanches` (
  `ID` int(11) NOT NULL,
  `Texte` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cartes_blanches`
--

INSERT INTO `cartes_blanches` (`ID`, `Texte`) VALUES
(1, '55 gallons de lubrifiant.'),
(2, '72 vierges.'),
(3, 'À l\'infini.'),
(4, 'Acheter des vêtements virtuels pour une famille de Sims plutôt que de vrais vêtements pour une vraie famille.'),
(5, 'Acheter les bons pantalons pour être cool.'),
(6, 'Agripper son sabre, saisir la corde et s\'écrier: «À l\'abordage!»'),
(7, 'Aller à l\'église.'),
(8, 'Appeler le Clan Panneton.'),
(9, 'Apprendre à un robot à d\'aimer'),
(10, 'Arnold Schwarzenegger.'),
(11, 'Assez d\'héroïne pour tuer un éléphant.'),
(12, 'Atteindre rapidement l\'orgasme.'),
(13, 'Attendre jusqu\'au mariage.'),
(14, 'Auschwitz.'),
(15, 'Avoir des relations sexuelles sur une pizza.'),
(16, 'Avoir les couilles bénites.'),
(17, 'Avoir tes règles pour la première fois.'),
(18, 'Barack Obama.'),
(19, 'BATMAN!!!'),
(20, 'Battre tes femmes.'),
(21, 'Beaucoup de bruit pour rien.'),
(22, 'Bob l\'éponge.'),
(23, 'Boire comme un trou.'),
(24, 'Boire dix boissons énergisantes pour avoir cinquante heures d\'énergie en continu.'),
(25, 'Boire tout seul.'),
(26, 'Bond. James Bond.'),
(27, 'Branler un peu les fesses en signe de détresse.'),
(28, 'Britney Spears à 55 ans.'),
(29, 'Brûler en enfer.'),
(30, 'Buzz Lightyear.'),
(31, 'Cacher une érection.'),
(32, '«Caller» l\'orignal.'),
(33, 'Cambrioler un zoo pour voler un singe.'),
(34, 'Casse-Noisette.'),
(35, 'Ce cul.'),
(36, 'Ces moments où vous avez du sable dans le vagin.'),
(37, 'Cet endroit chaud et invitant entre l\'anus et la poche.'),
(38, 'Cliquer frénétiquement sur des photos de chats sur Internet.'),
(39, 'Couler un bronze.'),
(40, 'Courir nu dans un centre d\'achat en pissant et chiant partout.'),
(41, 'Crier à la télévision parce que ça se passe différemment dans le livre .'),
(42, 'Crier comme un fou.'),
(43, 'Cruiser les filles à la clinique d\'avortement.'),
(44, 'Cruiser.'),
(45, 'CTRL-ALT-DEL.'),
(46, 'Dark Vador.'),
(47, 'De la marde jusqu\'au cou.'),
(48, 'De la sauce Tabasco dans l\'urètre.'),
(49, 'De la soupe beaucoup trop chaude.'),
(50, 'De la viande de cheval.'),
(51, 'De mauvais choix de vie.'),
(52, 'De multiples coups de couteau.'),
(53, 'Déflorer la princesse.'),
(54, 'Dépenser beaucoup d\'argent.'),
(55, 'Des «flashbacks» du Vietnam.'),
(56, 'Des abdominaux spectaculaires.'),
(57, 'Des abeilles?'),
(58, 'Des accidents de chasse.'),
(59, 'Des adultes se frappant l\'un l\'autre avec des épées rembourrées.'),
(60, 'Des amphétamines.'),
(61, 'Des amputations à froid.'),
(62, 'Des amputés.'),
(63, 'Des armes de destructions massives.'),
(64, 'Des Asiatiques nuls en maths.'),
(65, 'Des avortements au cintre.'),
(66, 'Des batailles d\'oreiller émoustillantes.'),
(67, 'Des beaux pétards.'),
(68, 'Des bébés chiens!'),
(69, 'Des bébés morts.'),
(70, 'Des biscuits et des chatons.'),
(71, 'Des bobettes mangeables.'),
(72, 'Des boules anales.'),
(73, 'Des bouttes ben durs.'),
(74, 'Des camps de bûcherons.'),
(75, 'Des castors volants qui fourrent'),
(76, 'Des catapultes.'),
(77, 'Des ceintures de chasteté.'),
(78, 'Des cellules souches.'),
(79, 'Des centaures.'),
(80, 'Des chèvres qui mangent des sacs de poubelles.'),
(81, 'Des chnolles.'),
(82, 'Des cicatrices purulentes d\'épilation au laser.'),
(83, 'Des concours de beauté pour enfants.'),
(84, 'Des couches pleines de marde.'),
(85, 'Des couvertures avec la variole.'),
(86, 'Des crevettes à volonté pour 4,99$.'),
(87, 'Des crottes de nez.'),
(88, 'Des cuisses musclées.'),
(89, 'Des déchets nucléaires.'),
(90, 'Des dommages collatéraux.'),
(91, 'Des échantillons gratuits.'),
(92, 'Des embuscades de velociraptors.'),
(93, 'Des émissions nocturnes.'),
(94, 'Des enfants de chienne.'),
(95, 'Des enfants qui ont le cancer du cul.'),
(96, 'Des enfants tenus en laisse.'),
(97, 'Des explosions.'),
(98, 'Des fantômes.'),
(99, 'Des gobelins.'),
(100, 'Des gratteux.'),
(101, 'Des histoires érotiques avec Harry Potter.'),
(102, 'Des implants cybernétiques.'),
(103, 'Des injections d\'hormones.'),
(104, 'Des jokes d\'Holocauste au moment inopportun.'),
(105, 'Des Jos Louis.'),
(106, 'Des jumelles siamoises sexy.'),
(107, 'Des loups-garous.'),
(108, 'Des mangas pornos avec tentacules.'),
(109, 'Des mines antipersonnelles.'),
(110, 'Des morceaux de prostituée en décomposition.'),
(111, 'Des Nazis.'),
(112, 'Des nones cochonnes.'),
(113, 'Des objets qui brillent.'),
(114, 'Des ?ufs de ptérodactyle.'),
(115, 'Des oies.'),
(116, 'Des orphelins qui te réchauffent le c?ur.'),
(117, 'Des palourdes.'),
(118, 'Des pancakes.'),
(119, 'Des pandas qui copulent allègrement.'),
(120, 'Des pantalons crissement serrés.'),
(121, 'Des pantalons de cowboy qui laissent les fesses à l\'air.'),
(122, 'Des parents morts.'),
(123, 'Des pédophiles.'),
(124, 'Des pensées suicidaires.'),
(125, 'Des petites culottes usagées.'),
(126, 'Des pets de sang.'),
(127, 'Des photos de seins.'),
(128, 'Des pilotes kamikazes.'),
(129, 'Des Pizza Pochettes.'),
(130, 'Des Post-il passif-agressifs.'),
(131, 'Des pouces opposables.'),
(132, 'Des préados.'),
(133, 'Des préliminaires botchées.'),
(134, 'Des problèmes intimes'),
(135, 'Des questions d\'examen racistes.'),
(136, 'Des rires en canne.'),
(137, 'Des robots volants qui tuent des gens.'),
(138, 'Des sacrifices humains.'),
(139, 'Des saunas gais.'),
(140, 'Des scies à chaînes comme mains.'),
(141, 'Des sécrétions vaginales.'),
(142, 'Des seins refaits tout croche.'),
(143, 'Des sels de bain.'),
(144, 'Des solos de saxophone.'),
(145, 'Des solutions synergétiques de gestion.'),
(146, 'Des sous-entendus discriminatoires.'),
(147, 'Des porn-stars.'),
(148, 'Des Stromtroopers.'),
(149, 'Des sucettes géantes.'),
(150, 'Des toilettes mixtes.'),
(151, 'Des travestis assez jolis merci.'),
(152, 'Des victimes civiles.'),
(153, 'Des vieux Japonais.'),
(154, 'Des yogourts en tubes.'),
(155, 'Détruire les pièces à conviction.'),
(156, 'Deux nains qui chient dans un sceau.'),
(157, 'Deux steamés, une patate frite.'),
(158, 'Dieu.'),
(159, 'Doigter.'),
(160, 'Don Cherry.'),
(161, 'Donner son 110%.'),
(162, 'Douce, douce vengeance?'),
(163, 'Du bling.'),
(164, 'Du crastillon.'),
(165, 'Du crystal meth.'),
(166, 'Du déodorant AXE.'),
(167, 'Du fromage cottage.'),
(168, 'Du fromage fondu.'),
(169, 'Du gâteau aux fruits.'),
(170, 'Du sexe surprise!'),
(171, 'Du sperme d\'elfe.'),
(172, 'Du sperme de baleine'),
(173, 'Du velcro.'),
(174, 'Du Viagra.'),
(175, 'Échanger des plaisanteries.'),
(176, 'Éc?urer des enfants.'),
(177, 'Éditer Wikipedia pour prouver un argument.'),
(178, 'Éjecter un bébé aux neuf mois.'),
(179, 'Enlever son chandail.'),
(180, 'Envoyer des sextos.'),
(181, 'Essayer de manger comme un être humain tout en portant un corset.'),
(182, 'Être «unfriendé» sur Facebook'),
(183, 'Être bon au sexe.'),
(184, 'Être en feu.'),
(185, 'Être excité par légumes phalliques.'),
(186, 'Être extraordinaire.'),
(187, 'Être fabuleux.'),
(188, 'Être marginalisé.'),
(189, 'Être riche.'),
(190, 'Être second dans concours de fellation.'),
(191, 'Être seulement un peu enceinte.'),
(192, 'Être un dinosaure.'),
(193, 'Être un sorcier, tabarnak!'),
(194, 'Être violée par un orignal.'),
(195, 'Exactement ce qui devait arriver.'),
(196, 'Exister.'),
(197, 'Fabriquer des statistiques.'),
(198, 'Faire ce qu\'y a à faire.'),
(199, 'Faire des clins d\'?il à des vieux.'),
(200, 'Faire l\'amour à un mouton très sexy.'),
(201, 'Faire l\'amour tout en regardant «La liste de Schindler».'),
(202, 'Faire la moue.'),
(203, 'Faire le bon choix.'),
(204, 'Faire le zouave.'),
(205, 'Faire semblant d\'être intéressé.'),
(206, 'Faire un p\'tit pipi.'),
(207, 'Fantasmer sur les bûcherons.'),
(208, 'Fister.'),
(209, 'Foncer dans l\'tas.'),
(210, 'Fuck you.'),
(211, 'Fumer un gros bat.'),
(212, 'Galoper vers le soleil couchant.'),
(213, 'Gambader.'),
(214, 'Gandalf.'),
(215, 'Gandhi.'),
(216, 'Genghis Khan.'),
(217, 'Gifler une vieille dame raciste.'),
(218, 'Godzilla.'),
(219, 'Gonfler Jeff Fillion à l\'hélium et le regarder flotter vers l\'horizon.'),
(220, 'Grand-maman.'),
(221, 'Guérir l\'homosexualité par la prière.'),
(222, 'Guillaume Lemay-Thivierge.'),
(223, 'Hara-kiri.'),
(224, 'Hubert Reeves.'),
(225, 'Hulk Hogan.'),
(226, 'Internet dans son ensemble.'),
(227, 'Jacques Cartier.'),
(228, 'Jean «Là-Là» Tremblay.'),
(229, 'Jean Charest.'),
(230, 'Jean Chréatien.'),
(231, 'Jesus.'),
(232, 'Jouer à des jeux vidéo avec les fenêtres ouvertes, parce que c\'est une belle journée.'),
(233, 'Jouer au Quidditch, pour de vrai.'),
(234, 'Jouer de la ruine-babines en fourrant une grosse truie dans la boîte d\'un pickup.'),
(235, 'Justin Bieber.'),
(236, 'Kanye West.'),
(237, 'Karine Vanasse.'),
(238, 'Kim-Jong-il.'),
(239, 'L\'abeille des Cheerios au miel et aux noix.'),
(240, 'L\'abstinence.'),
(241, 'L\'accent du lac Saint-Jean.'),
(242, 'L\'agriculture.'),
(243, 'L\'Alberta.'),
(244, 'L\'alcoolisme.'),
(245, 'L\'amour inconditionnel.'),
(246, 'L\'amour intense de Nikola Tesla pour un pigeon.'),
(247, 'L\'Apocalypse.'),
(248, 'L\'Association des scouts du Canada.'),
(249, 'L\'attitude.'),
(250, 'L\'autocannibalisme.'),
(251, 'L\'autoflagellation.'),
(252, 'L\'économie.'),
(253, 'L\'écoute thérapeutique.'),
(254, 'L\'électricité.'),
(255, 'L\'envie de pénis.'),
(256, 'L\'épisode de Noël.'),
(257, 'L\'équipe chinoise de gymnastique.'),
(258, 'L\'esclavage.'),
(259, 'L\'espoir.'),
(260, 'L\'évolution.'),
(261, 'L\'herpès buccal.'),
(262, 'L\'Immaculée Conception.'),
(263, 'L\'impuissance.'),
(264, 'L\'inceste.'),
(265, 'L\'inévitable mort thermique de l\'univers.'),
(266, 'L\'obésité.'),
(267, 'L\'odeur des vieux.'),
(268, 'L\'?strogène.'),
(269, 'L\'offre et la demande.'),
(270, 'L\'orgasme féminin.'),
(271, 'L\'ouragan Katrina.'),
(272, 'La bactérie mangeuse de chair.'),
(273, 'La bataille des plaines d\'Abraham.'),
(274, 'La Bible.'),
(275, 'La brutalité policière.'),
(276, 'La cheerleader girl qui sauva le monde.'),
(277, 'La combustion spontanée.'),
(278, 'La combustion spontanée.'),
(279, 'La cuisine mexicaine authentique.'),
(280, 'La danse des canards.'),
(281, 'La décence humaine.'),
(282, 'La déportation des Acadiens.'),
(283, 'La destruction mutuelle assurée.'),
(284, 'La destruction systématique de tout un peuple et de leur mode de vie.'),
(285, 'La douche revanche.'),
(286, 'La drogue du viol.'),
(287, 'La famine.'),
(288, 'La folie des hommes.'),
(289, 'La folle au travail.'),
(290, 'La fondation Rêve d\'Enfant.'),
(291, 'La Force.'),
(292, 'La friction.'),
(293, 'La Gendarmerie royale du Canada.'),
(294, 'La lactation.'),
(295, 'La lèpre.'),
(296, 'La Macarena.'),
(297, 'La masturbation.'),
(298, 'La ménopause.'),
(299, 'La merveilleuse épopée de l\'accouchement.'),
(300, 'La méthode scientifique.'),
(301, 'La minorité visible.'),
(302, 'La misère des riches.'),
(303, 'La musique New Age.'),
(304, 'La nécrophilie.'),
(305, 'La paix dans le monde.'),
(306, 'La peinture à numéros.'),
(307, 'La peluche «Elmo chatouille-moi».'),
(308, 'La poitrine légendaire de Mitsou.'),
(309, 'La porno sado-maso allemande.'),
(310, 'La preuve irréfutable de la vie sur Mars.'),
(311, 'La prostate.'),
(312, 'La psychologie du développement.'),
(313, 'La puberté.'),
(314, 'La raison.'),
(315, 'La réhabilitation.'),
(316, 'La répression.'),
(317, 'La révolte des Métis.'),
(318, 'La scène après le générique.'),
(319, 'La science.'),
(320, 'La Scientologie.'),
(321, 'La section des commentaires.'),
(322, 'La séduction.'),
(323, 'La sélection naturelle.'),
(324, 'La stupidité la plus abjecte.'),
(325, 'La tension sexuelle.'),
(326, 'La tuerie de Polytechnique.'),
(327, 'La vélocité d\'une hirondelle égarée.'),
(328, 'La violation des droits humains fondamentaux.'),
(329, 'La violation du droit fondamental à la vie.'),
(330, 'La violence faite aux enfants.'),
(331, 'Laissant tomber tout le monde.'),
(332, 'Laisser un message embarrassant sur le répondeur.'),
(333, 'Lancer comme une fille.'),
(334, 'Lancer une vierge dans un volcan.'),
(335, 'Le Big Bang.'),
(336, 'Le caca qui brûle.'),
(337, 'Le caporal Lortie.'),
(338, 'Le charisme.'),
(339, 'Le cheval est une surprise.'),
(340, 'Le Ch?ur de l\'Armée Rouge.'),
(341, 'Le clitoris.'),
(342, 'Le corps nu et huilé du Doc Mailloux.'),
(343, 'Le dégoût de soi.'),
(344, 'Le devoir conjugal.'),
(345, 'Le Diable en personne.'),
(346, 'Le droit de vote des femmes.'),
(347, 'Le faire dans les fesses.'),
(348, 'Le Front de Libération du Québec.'),
(349, 'Le fruit défendu.'),
(350, 'Le gouffre humide et demandant de sa bouche.'),
(351, 'Le Ku Klux Klan.'),
(352, 'Le laitier.'),
(353, 'Le lancer de nain sur une cible en velcro.'),
(354, 'Le mariage, les enfants, le chalet, la retraite, la mort.'),
(355, 'Le Pape.'),
(356, 'Le petit Jérémy.'),
(357, 'Le ping-pong de caca cul à cul.'),
(358, 'Le placenta.'),
(359, 'Le racisme.'),
(360, 'Le rêve américain.'),
(361, 'Le révérend Dr. Martin Luther King Jr.'),
(362, 'Le Royaume du chocolat.'),
(363, 'Le sang du Christ.'),
(364, 'Le sexe oral non réciproque.'),
(365, 'Le SIDA.'),
(366, 'Le silence.'),
(367, 'Le smegma.'),
(368, 'Le soleil qui brille et les arcs-en-ciel.'),
(369, 'Le solo de «My Heart Will Go On» au piccolo.'),
(370, 'Le Stade olympique'),
(371, 'Le Surhomme.'),
(372, 'Le syndrome du bébé secoué.'),
(373, 'Le syndrome prémenstruel.'),
(374, 'Le système métrique.'),
(375, 'Le talent d\'actrice de Caroline Néron.'),
(376, 'Le Télétubbie le plus gay des quatre.'),
(377, 'Le testicule manquant de Lance Armstrong.'),
(378, 'Le tétanos.'),
(379, 'Le thon en conserve avec dauphin en plus.'),
(380, 'Le truc qui électrocute les abdominaux.'),
(381, 'Le vagin de Whoopi Goldberg.'),
(382, 'Le vigilantisme.'),
(383, 'Lécher de la bouffe pour que personne ne la prenne.'),
(384, 'Les 10 mots inuits pour sperme.'),
(385, 'Les Amérindiens.'),
(386, 'Les Amish.'),
(387, 'Les bélugas.'),
(388, 'Les Blancs.'),
(389, 'Les boulettes de viande du Ikea.'),
(390, 'Les cendres de grand-papa.'),
(391, 'Les chaînes de restaurant de banlieue.'),
(392, 'Les chapeaux à hélices.'),
(393, 'Les Conservateurs.'),
(394, 'Les critiques Amazon du balai vibrateur Nimbus 2000 d\'Harry Potter'),
(395, 'Les écologistes qui vivent dans les arbres.'),
(396, 'Les émotions.'),
(397, 'Les exercices pour stimuler l\'esprit d\'équipe en entreprise.'),
(398, 'Les féministes avec des poils faciaux.'),
(399, 'Les femmes dans les pubs de yogourt.'),
(400, 'Les filles qui textent toujours.'),
(401, 'Les Français.'),
(402, 'Les gais.'),
(403, 'Les gars qui ne rappellent jamais.'),
(404, 'Les gentils Cubains.'),
(405, 'Les golden showers'),
(406, 'Les hommes.'),
(407, 'Les joueurs de djembé amateurs.'),
(408, 'Les Juifs.'),
(409, 'Les licornes.'),
(410, 'Les nanotechnologies.'),
(411, 'Les Noirs.'),
(412, 'Les p\'tits Éthiopiens.'),
(413, 'Les pauvres.'),
(414, 'Les petits chanteurs du Mont-Royal'),
(415, 'Les producteurs de poulet de Bosnie.'),
(416, 'Les représentants du service à la clientèle.'),
(417, 'Les Résidences Soleil.'),
(418, 'Les roux.'),
(419, 'Les sans-abri.'),
(420, 'Les témoins de Jéhovah.'),
(421, 'Les terroristes.'),
(422, 'Les tétraplégiques.'),
(423, 'Les Vickings.'),
(424, 'Liberté et justice pour tous.'),
(425, 'Littéralement manger de la merde.'),
(426, 'Lui torcher le cul.'),
(427, 'Ma collection de vibrateurs hi-tech.'),
(428, 'Ma machette.'),
(429, 'Ma vie sexuelle.'),
(430, 'Mahomet (Gloire à Lui).'),
(431, 'Manger la moustache de Tom Selleck pour gagner ses pouvoirs.'),
(432, 'Manger le dernier Bison connu.'),
(433, 'Manger les meilleurs bonbons avant l\'Halloween.'),
(434, 'Manger un bébé phoque.'),
(435, 'Manger un bonhomme de neige au complet.'),
(436, 'Marcher sur un Lego.'),
(437, 'MéchaHitler.'),
(438, 'Mes démons intérieurs.'),
(439, 'Mes parties génitales.'),
(440, 'Michael Jackson.'),
(441, 'Michèle Richard.'),
(442, 'Mon âme.'),
(443, 'Mon statut marital.'),
(444, 'Mon vagin.'),
(445, 'Monsieur Net, juste derrière toi.'),
(446, 'Mourir de la dysenterie.'),
(447, 'Mourir seul dans la douleur.'),
(448, 'Mourir.'),
(449, 'Ne pas avoir de sexe.'),
(450, 'Nathalie Simard qui pleure en mangeant un p\'tit pouding Laura Secord.'),
(451, 'Ne pas contribuer à la société d\'une manière significative.'),
(452, 'Ne pas porter de pantalons.'),
(453, 'Ne pas utiliser suffisamment de lubrifiant.'),
(454, 'Ne plus être capable de regarder son chien dans les yeux.'),
(455, 'Nicolas Cage.'),
(456, 'Nourrir Ginette Reno.'),
(457, 'Oublier de manger et en mourir.'),
(458, 'Pam-Man qui cale du sperme sans retenue.'),
(459, 'Pas les abeilles! Pas les abeilles!'),
(460, 'Passe-Carreau.'),
(461, 'Passer le doigt.'),
(462, 'Passer une pierre aux reins.'),
(463, 'Penser aux Hutus et aux Tutsis et trouver ça drôle.'),
(464, 'Penser roter et vomir par terre.'),
(465, 'Personne ne sait.'),
(466, 'Péter des yeuses en sang.'),
(467, 'Péter et s\'en aller.'),
(468, 'Piller des tombes.'),
(469, 'Plein de chats.'),
(470, 'Plusieurs paires de lunettes.'),
(471, 'Porter des bobettes à l\'envers pour ne pas faire de lavage.'),
(472, 'Quelque chose qui peut tenir sur un «floppy disk» de 3.5?'),
(473, 'Remplir tous les orifices avec du pouding au caramel.'),
(474, 'Rémy Girard.'),
(475, 'Rendre ça bizarre.'),
(476, 'René Angélil.'),
(477, 'Renifler avec vigueur.'),
(478, 'Rien.'),
(479, 'Rire des orphelins.'),
(480, 'Robert Downey Jr.'),
(481, 'Robocop.'),
(482, 'Ryan Gosling sur un cheval blanc.'),
(483, 'S\'asseoir pour faire pipi.'),
(484, 'S\'éloignant d\'une explosion sans regarder en arrière.'),
(485, 'S\'excuser.'),
(486, 'Sa Majesté la reine Elizabeth II'),
(487, 'Salut!'),
(488, 'Scalper.'),
(489, 'Se crisser du Tiers-Monde.'),
(490, 'Se décrasser le dessous des bourrelets.'),
(491, 'Se faire brouter la touffe.'),
(492, 'Se faire des câlins.'),
(493, 'Se faire pogner les culottes baissées, pour vrai.'),
(494, 'Se frotter subtilement sur quelqu\'un.'),
(495, 'Se mettre à chanter et à danser.'),
(496, 'Se mettre en colère juste pour passer le temps.'),
(497, 'Se mettre tellement en colère que ça en donne une érection.'),
(498, 'Se mettre tout nu et regarder Télétoon.'),
(499, 'Se pavaner.'),
(500, 'Se piquer avec des seringues sales.'),
(501, 'Se promener les fesses à l\'air.'),
(502, 'Se retirer.'),
(503, 'Se réveiller tout nu dans le stationnement d\'un Valentine.'),
(504, 'Se saouler au rince-bouche.'),
(505, 'Sean Connery.'),
(506, 'Séparer les eaux de la mer Rouge.'),
(507, 'Sexter accidentellement ta mère.'),
(508, 'Simple Plan.'),
(509, 'Sniffer de la coke su\' l\'cul d\'une pute.'),
(510, 'Sniffer de la colle.'),
(511, 'Sortir sa graine avec enthousiasme.'),
(512, 'Souhaiter que des gobelins enlèvent votre petit frère.'),
(513, 'Souper avec votre ex.'),
(514, 'Staline.'),
(515, 'Stephen Harper.'),
(516, 'Stephen Hawking qui chuchote des obscénités.'),
(517, 'Stephen Hawking qui dit des cochonneries.'),
(518, 'Sucer des mecs dans une ruelle.'),
(519, 'Supposer que toutes les personnes handicapées sont retardées.'),
(520, 'Ta face.'),
(521, 'Ta mère qui me demande en ami sur Facebook.'),
(522, 'Tom Cruise.'),
(523, 'Touiller la salade.'),
(524, 'Toujours prendre des décisions niaiseuses.'),
(525, 'Tous mes amis en train de mourir.'),
(526, 'Tousser dans un vagin.'),
(527, 'Tricher aux Jeux olympiques spéciaux.'),
(528, 'Tripoter une plotte.'),
(529, 'Trois bébés et demi.'),
(530, 'Trois mois dans le trou.'),
(531, 'Trouver Charlie.'),
(532, 'Un «douche» avec une guitare acoustique.'),
(533, 'Un abonnement à Sentier Chasse et Pêche'),
(534, 'Un AK-47.'),
(535, 'Un amant Latino passionné.'),
(536, 'Un anneau pour les gouverner tous.'),
(537, 'Un anus blanchi.'),
(538, 'Un autre osti de film de vampire.'),
(539, 'Un avortement raté.'),
(540, 'Un Calinours qui explique le sexe aux enfants.'),
(541, 'Un chapeau vraiment très cool.'),
(542, 'Un cheval avec une érection.'),
(543, 'Un cinquantenaire en patins à roulettes.'),
(544, 'Un c?ur d\'enfant.'),
(545, 'Un complexe d\'?dipe.'),
(546, 'Un condom percé.'),
(547, 'Un condom troué.'),
(548, 'Un crayon bien aiguisé.'),
(549, 'Un criss de stool.'),
(550, 'Un cul-de-jatte qui fait une crise d\'épilepsie.'),
(551, 'Un décolleté élégant.'),
(552, 'Un démon avec un coeur en or.'),
(553, 'Un dentiste sadique.'),
(554, 'Un dojo rival.'),
(555, 'Un environnement familial toxique.'),
(556, 'Un faucon de chasse.'),
(557, 'Un f?tus.'),
(558, 'Un fusil à eau rempli de pisse de chat.'),
(559, 'Un gars qui se liche les lèvres en te regardant.'),
(560, 'Un gif animé d\'éjaculation faciale.'),
(561, 'Un hasard fou.'),
(562, 'Un hold-up dans une banque de sperme.'),
(563, 'Un lion qui fait la baboune.'),
(564, 'Un livre ancien, plein de prophétie, à propos de toi.'),
(565, 'Un meurtre crapuleux.'),
(566, 'Un micropénis.'),
(567, 'Un milliard de dollars.'),
(568, 'Un mime qui fait un AVC.'),
(569, 'Un montage de volleyball homoérotique.'),
(570, 'Un motel miteux.'),
(571, 'Un moulin à vent rempli de cadavres.'),
(572, 'Un nain charmant.'),
(573, 'Un nettoyage ethnique.'),
(574, 'Un ninja aillant la diarrhée.'),
(575, 'Un Noël de paix et d\'amour.'),
(576, 'Un oncle raciste.'),
(577, 'Un onguent chinois 100% naturel.'),
(578, 'Un paquet de Mentos et une bouteille de Coke Diète de deux litres.'),
(579, 'Un paradoxe temporel.'),
(580, 'Un party de saucisses.'),
(581, 'Un perçage génital.'),
(582, 'Un pet vaginal.'),
(583, 'Un pet sauce.'),
(584, 'Un petit cheval.'),
(585, 'Un petit déjeuner équilibré.'),
(586, 'Un peu de temps juste pour moi.'),
(587, 'Une piñata pleine de scorpions.'),
(588, 'Un poil pubien abandonné.'),
(589, 'Un policier honnête qui n\'a plus rien à perdre.'),
(590, 'Un prépuce.'),
(591, 'Un pub irlandais.'),
(592, 'Un régime de bananes.'),
(593, 'Un sac de fèves magiques.'),
(594, 'Un singe qui fume le cigare.'),
(595, 'Un spectacle de marionnettes.'),
(596, 'Un Tamagotchi négligé.'),
(597, 'Un Taser.'),
(598, 'Un tout petit cochon qui porte de toutes petites bottes de pluie.'),
(599, 'Un trisomique très costaud.'),
(600, 'Un trombone rouillé.'),
(601, 'Un uppercut.'),
(602, 'Un vagin qui mène à une autre dimension.'),
(603, 'Un viol collectif.'),
(604, 'Une ado enceinte.'),
(605, 'Une antilope flatulente.'),
(606, 'Une autre année de merde.'),
(607, 'Une Bar-Mitzvah.'),
(608, 'Une barre Mars frite et un verre de beurre fondu.'),
(609, 'Une belle grosse graine.'),
(610, 'Une belle personnalité.'),
(611, 'Une bonne claque su\'a yeule.'),
(612, 'Une branlette tristement exécutée.'),
(613, 'Une chaudière de têtes de poisson.'),
(614, 'Une circoncision ratée.'),
(615, 'Une couverture médiatique.'),
(616, 'Une critique nuancée.'),
(617, 'Une crotte qui sort et qui rentre.'),
(618, 'Une danse à 10.'),
(619, 'Une décharge électrique aux mamelons.'),
(620, 'Une dette accablante.'),
(621, 'Une douce caresse de l\'entrejambe.'),
(622, 'Une énorme femme scandinave.'),
(623, 'Une érection qui dure plus que quatre heures.'),
(624, 'Une explosion de jus dans ma bouche.'),
(625, 'Une explosion thermonucléaire.'),
(626, 'Une face à fesser d\'dans.'),
(627, 'Une fellation au volant.'),
(628, 'Une fête d\'anniversaire ratée.'),
(629, 'Une feuille dans le vent.'),
(630, 'Une fille à papa.'),
(631, 'Une gigue endiablée.'),
(632, 'Une glacière pleine d\'organes.'),
(633, 'Une grosse quille de Wildcat tablette.'),
(634, 'Une jeune noire plutôt coquine.'),
(635, 'Une lobotomie au pic à glace.'),
(636, 'Une malédiction gitane.'),
(637, 'Une maudite tête de cochon.'),
(638, 'Une occasion d\'apprendre.'),
(639, 'Une orgie de penguin.'),
(640, 'Une parade nuptiale.'),
(641, 'Une pelletée de slotche.'),
(642, 'Une pile de corps se tortillant.'),
(643, 'Une piñata pleine de scorpions.'),
(644, 'Une pitoune paquetée.'),
(645, 'Une possession démoniaque.'),
(646, 'Une présentation PowerPoint.'),
(647, 'Une production 100% nain de Richard III de Shakespeare.'),
(648, 'Une pyramide de têtes coupées.'),
(649, 'Une quantité surprenante de cheveux.'),
(650, 'Une queue plus grande, plus noire.'),
(651, 'Une scène de cul dans Lance et compte.'),
(652, 'Une solitude indescriptible.'),
(653, 'Une surprise salée.'),
(654, 'Une torsion testiculaire.'),
(655, 'Une tortue vicieuse qui te mord la bite.'),
(656, 'Une tribu de femmes guerrières.'),
(657, 'Une tumeur au cerveau.'),
(658, 'Une vague imparable de fourmis de feu.'),
(659, 'Une vie pleine de tristesse.'),
(660, 'Venir dans une flaque de larmes d\'enfants.'),
(661, 'Violer les femmes et voler les chevaux.'),
(662, 'Violer, puis piller.'),
(663, 'Vivre son homosexualité.'),
(664, 'Voler des bébés.'),
(665, 'Volts divisés par Ampère.'),
(666, 'Vomir mi-fellation.'),
(667, 'Wikipedia.'),
(668, 'World of Warcraft.'),
(669, 'Xavier Dolan.'),
(670, 'Yodler quand c\'est pas le temps.'),
(671, 'Youppi!');

-- --------------------------------------------------------

--
-- Structure de la table `cartes_noires`
--

CREATE TABLE `cartes_noires` (
  `ID` int(11) NOT NULL,
  `Texte` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Piger` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cartes_noires`
--

INSERT INTO `cartes_noires` (`ID`, `Texte`, `Piger`) VALUES
(1, '______ a appelé. Il veut ravoir ______.', 2),
(2, '______ est le nouveau ______.', 2),
(3, '______, tout de même une histoire d\'amour mieux que Twilight.', 1),
(4, '______: bon jusqu\'à la dernière goutte.', 1),
(5, '______: c\'est tellement emo!', 1),
(6, '______: Testé par les enfants, approuvé par les mamans.', 1),
(7, '______. C\'est comme ça que je veux mourir.', 1),
(8, '______. C\'est un piège!', 1),
(9, '______. Génial en théorie, pas fameux en la pratique.', 1),
(10, '______. High five, le gros.', 1),
(11, '______. Impossible de s\'en passer!', 1),
(12, '______. Parce que je le mérite bien.', 1),
(13, 'À l\'antenne de RDS, vous écoutez la Finale internationale de ______.', 1),
(14, 'À la Place des Arts ce mois-ci, la comédie musicale ______.', 1),
(15, 'A Rome , il y a des rumeurs que le Vatican a une chambre secrète consacrée à ______.', 1),
(16, 'À sa crise de la quarantaine, mon père s\'est vraiment investi dans ______.', 1),
(17, 'Agenouillez-vous devant ______.', 1),
(18, 'Alors que les États-Unis et l\'URSS s\'affrontaient dans la course à l\'espace, le Mexique dépensait des millions de pesos dans la recherche sur ______.', 1),
(19, 'Après avoir perdu connaissance au jour de l\'an, j\'ai été réveillé par______', 1),
(20, 'Après le tremblement de terre, Céline Dion a donné ______ aux habitants d\'Haïti.', 1),
(21, 'C\'est une sorcière! Elle m\'a transformé en ______!', 1),
(22, 'C\'est bien dommage de voir les enfants d\'aujourd\'hui avoir à dealer avec ______.', 1),
(23, 'C\'est pas fa-ci-le / Quand ______ te laisse tomber!', 1),
(24, 'C\'est quoi ce son?', 1),
(25, 'C\'est quoi cette nouvelle diète miracle?', 1),
(26, 'Celui qui contrôle ______ contrôle le monde.', 1),
(27, 'Chaque Noël, mon oncle se saoule et raconte l\'histoire de ______.', 1),
(28, 'Chère Louise Deschâtelets, j\'ai de la misère avec ______, pouvez-vous m\'aider?', 1),
(29, 'Comment ai-je perdu ma virginité?', 1),
(30, 'Dans 1000 ans, l\'argent papier ne sera qu\'un vague souvenir, nous paierons les choses avec ______.', 1),
(31, 'Dans la ferme à Mathurin / Hi aïe hi aïe ho! / Y\'a ______. / Hi aïe hi aïe ho!', 1),
(32, 'Dans le 24e siècle , tous les vaisseaux spatiaux seront équipés de ______.', 1),
(33, 'Dans le septième cercle de l\'enfer, les pécheurs doivent supporter ______ pour l\'éternité .', 1),
(34, 'Dans un avenir lointain, les historiens seront d\'accord que ______ a marqué le début du déclin de l\'Amérique.', 1),
(35, 'Des ethnographes ont récemment découvert une tribu aborigène vouant un culte à ______.', 1),
(36, 'Désormais, le Père Noël n\'apportera plus du charbon aux vilains enfants, mais ______.', 1),
(37, 'Deux choses sont certaines dans la vie: la mort et ______.', 1),
(38, 'Devant le Pharaon impassible, Moïse provoqua la onzième plaie: ______.', 1),
(39, 'Enfin, un service qui livre ______ directement à la porte.', 1),
(40, 'Internet est pour ______.', 1),
(41, 'J\'ai rempli mon disque dur de photos de ______.', 1),
(42, 'J\'ignore avec quelles armes se fera la Troisième Guerre mondiale, mais la Quatrième se fera avec ______.', 1),
(43, 'Je bois pour oublier ______.', 1),
(44, 'Je m\'excuse madame, je n\'ai pas pu terminer mon devoir à cause de ______.', 1),
(45, 'Je n\'ai pas pardonné à George R. R. Martin depuis ______.', 1),
(46, 'Je n\'arrive pas à croire qu\'ils ont approuvé ma thèse de doctorat sur ______.', 1),
(47, 'Je n\'avais aucune idée que la chasse démon impliquerait autant de ______.', 1),
(48, 'Je n\'en peux plus d\'avoir à expliquer ______.', 1),
(49, 'Je ne suis peut-être pas bon dans les sports, mais je suis incroyable à ______.', 1),
(50, 'Je pensais avoir tout vu, jusqu\'à ce que les extraterrestres nous montrent ______.', 1),
(51, 'Jésus est ______.', 1),
(52, 'La «blind date» se déroulait horriblement jusqu\'à ce que nous découvrions notre intérêt commun pour______', 1),
(53, 'La capacité de détruire une planète est insignifiante à côté de ______.', 1),
(54, 'La dernière chose à laquelle pensa Michael Jackson avant de mourir fut ______.', 1),
(55, 'La guerre! Qu\'est-ce que ça a de positif?', 1),
(56, 'La Ligue nationale de hockey a banni ______ à cause des avantages injustes que ça procure.', 1),
(57, 'La médecine reconnaît enfant les pouvoirs thérapeutiques de ______.', 1),
(58, 'La meilleure chose à propos d\'un nouvel ordinateur est ______.', 1),
(59, 'La meilleure/pire chose sur Tumblr est ______.', 1),
(60, 'La nouvelle téléréalité de TVA, c\'est huit vedettes vieillissantes qui vivent avec ______.', 1),
(61, 'La règle 34 est toujours valide, sans exception, pas même pour ______.', 1),
(62, 'La science ne pourra jamais expliquer l\'origine de ______.', 1),
(63, 'la sortie scolaire a été totalement gâchée par ______.', 1),
(64, 'La vie des Amérindiens fut changée à jamais lorsque l\'Homme blanc lui apporta ______.', 1),
(65, 'La vie était dure pour les hommes des cavernes avant ______.', 1),
(66, 'Le Biodôme présentera demain une nouvelle aire interactive portant sur ______.', 1),
(67, 'Le gouvernement socialiste de Scandinavie a déclaré que l\'accès à ______est un droit humain fondamental.', 1),
(68, 'Le meilleur ami des filles, c\'est ______.', 1),
(69, 'Le processus de guérison a commencé lorsque j\'ai rejoint un groupe de soutien pour les victimes de ______.', 1),
(70, 'Le prochain livre de J. K. Rowling: Harry Potter contre ______.', 1),
(71, 'Les blancs aiment bien ______.', 1),
(72, 'Les derniers mots du capitaine furent: ______.', 1),
(73, 'Les extraterrestres ont refusé d\'envahir la Terre pendant des années à cause de ______.', 1),
(74, 'Les membres de l\'élite paient des milliers de dollars juste pour expérimenter ______.', 1),
(75, 'Les vieux, ça sent quoi?', 1),
(76, 'Les votes sont terminés, et la nouvelle mascotte de l\'école est ______.', 1),
(77, 'Lors de relations sexuelles, j\'aime penser à ______.', 1),
(78, 'Ma mère a paniqué quand elle a regardé mon historique de navigation et trouvé ______.com.', 1),
(79, 'Mais avant de vous tuer, M. Bond, je dois vous montrer ______.', 1),
(80, 'Mais qu\'est-ce que ça sent?', 1),
(81, 'Mon prochain projet sera un modèle réduit de ______.', 1),
(82, 'Mon prof de gymnastique a été congédié pour avoir ajouté ______à la course à obstacles.', 1),
(83, 'Nerds solitaires: Ne soyez plus solitaire, grâce à ______!', 1),
(84, 'Papa, pourquoi maman elle pleure?', 1),
(85, 'Pendant le carême, de quoi vais-je me priver?', 1),
(86, 'Pendant son enfance, Dalí a créé des centaines de tableaux représentant ______.', 1),
(87, 'Personne ne croit que je suis vraiment allergique à ______.', 1),
(88, 'Peut-être qu\'elle est née avec. Peut-être que c\'est ______.', 1),
(89, 'Plus jamais de charades, depuis que ma mère a dû mimer ______.', 1),
(90, 'Pourquoi ai-je des flatulences incontrôlables?', 1),
(91, 'Pourquoi est-ce que j\'ai mal partout?', 1),
(92, 'Pourquoi suis-je tout collant?', 1),
(93, 'Pourquoi toutes ces carottes? Pourquoi les lapins ont besoin de cette bonne vision de toute manière?', 1),
(94, 'Qu\'est-ce qu\'on brûle, hormis des sorcières?', 1),
(95, 'Qu\'est-ce qu\'on trouve par milliers au paradis?', 1),
(96, 'Qu\'est-ce que grand-maman trouve d\'abord perturbant, puis étrangement plaisant?', 1),
(97, 'Qu\'est-ce que j\'ai rapporté du Mexique?', 1),
(98, 'Qu\'est-ce que je ramène dans le passé pour convaincre tout le monde que je suis un sorcier puissant?', 1),
(99, 'Qu\'est-ce que la Fondation du Dr Julien utilise pour aider les enfants pauvres à réussir?', 1),
(100, 'Qu\'est-ce que le ministère des Transports interdit dorénavant sur tous les avions?', 1),
(101, 'Qu\'est-ce que les États-Unis ont parachuté aux enfants afghans?', 1),
(102, 'Qu\'est-ce que mes parents me cachent?', 1),
(103, 'Qu\'est-ce que Pauline Marois adore?', 1),
(104, 'Qu\'est-ce que Vin Diesel mange pour souper?', 1),
(105, 'Qu\'est-ce que vous n\'aimeriez pas trouver dans votre repas vietnamien?', 1),
(106, 'Qu\'est-ce qui a détruit ma dernière relation amoureuse?', 1),
(107, 'Qu\'est-ce qui a laissé cette tache sur mon divan?', 1),
(108, 'Qu\'est-ce qui a mis fin à l\'orgie?', 1),
(109, 'Qu\'est-ce qui a rendu la vie difficile à la colonie de nudistes?', 1),
(110, 'Qu\'est-ce qui aide Barack Obama à se changer les idées?', 1),
(111, 'Qu\'est-ce qui aide Harper à relaxer?', 1),
(112, 'Qu\'est-ce qui est le plus gay?', 1),
(113, 'Qu\'est-ce qui est le plus hardcore?', 1),
(114, 'Qu\'est-ce qui fait toujours lever le party?', 1),
(115, 'Qu\'est-ce qui m\'empêche de dormir?', 1),
(116, 'Qu\'est-ce qui me permet de ne plus toucher à la drogue?', 1),
(117, 'Qu\'est-ce qui me tient chaud pendant le long et froid hiver?', 1),
(118, 'Qu\'est-ce qui s\'améliore avec le temps?', 1),
(119, 'Qu\'est-ce qui vous permet de coucher avec qui vous voulez?', 1),
(120, 'Qu\'y a-t-il dans la boîte?', 1),
(121, 'Quand j\'ai fait caca, qu\'est-ce qui est sorti de mes fesses?', 1),
(122, 'Quand j\'étais petit, j\'adorais ______.', 1),
(123, 'Quand j\'irai en prison, je cacherai ______ dans mes fesses pour en faire la contrebande.', 1),
(124, 'Quand je serai Premier Ministre, je créerai le ministère de ______.', 1),
(125, 'Quand je serai riche, je ferai ériger une statue de 15 mètres pour commémorer.', 1),
(126, 'Quand tout le reste échoue,, je peux toujours me masturber en pensant à______', 1),
(127, 'Quel est le nouveau régime à la mode?', 1),
(128, 'Quel est le plaisir coupable de Batman?', 1),
(129, 'Quel est mon super-pouvoir secret?', 1),
(130, 'Quel est ta quête?', 1),
(131, 'Quel sera le prochain jouet dans les Happy Meal®?', 1),
(132, 'Résistance est ______.', 1),
(133, 'Tu dois être vraiment désespéré pour demander à ______ de l\'aide.', 1),
(134, 'Un entretien d\'embauche réussi commence par une poignée de main ferme et se termine par ______.', 1),
(135, 'Un romantique dîner aux chandelles ne serait pas une réussite sans ______.', 1),
(136, 'Une étude démontre que des rats de laboratoire se déplacent deux fois plus vite après avoir été exposés à ______.', 1),
(137, 'Voici la recette de ma vie amoureuse: ______.', 1),
(138, 'What is your quest?', 1),
(139, 'Qu\'est-ce que tu obtiens en multipliant six par neuf?', 1),
(140, 'À Toronto, il est maintenant illégal de ______.', 1),
(141, 'Je vis ma vie selon les enseignements de ______.', 1),
(142, 'Quelle est la seule façon que je peux atteindre l\'orgasme?', 1),
(143, '______, ça mène toujours à ______.', 2),
(144, 'Au clair de la lune / Mon ami Pierrot / Prête-moi ______ / Pour ______.', 2),
(145, 'Avant ______, tout ce que nous avions, c\'était ______.', 2),
(146, 'Avec assez de temps et d\'énergie, ______va se transformer en ______.', 2),
(147, 'C\'est vrai, j\'ai tué ______. Avec ______.', 2),
(148, 'Dans le nouveau film de Xavier Dolan, Roy Dupuis découvre que ______ était en fait ______ depuis le début.', 2),
(149, 'Dans un monde ravagé par ______, noter seul espoir est ______.', 2),
(150, 'Des problèmes avec ______? Essayez ______!', 2),
(151, 'En un mot, ______ peut être un substitut approprié pour ______.', 2),
(152, 'Et l\'Oscar pour ______ est remis à ______.', 2),
(153, 'Étape 1: ______. Étape 2: ______. Étape 3: Profits.', 2),
(154, 'Je n\'ai jamais compris ______ jusqu\'à ce que je connaisse ______.', 2),
(155, 'La rumeur court que Vladimir Poutine adore manger ______ fourré avec ______.', 2),
(156, 'Le Canal Vie présente ______, la tragique histoire de ______.', 2),
(157, 'Ma vie est régie par un cycle vicieux de ______ et ______.', 2),
(158, 'Pour mon prochain numéro, je vais faire sortir ______ de ______.', 2),
(159, 'Quand j\'étais sous acide, ______ se transformait en ______.', 2),
(160, 'Quel est le prochain duo de superhéros / acolyte?', 1),
(161, 'Si Dieu ne voulait pas nous permettre d\'apprécier ______il ne nous aurait pas donné ______.', 2),
(162, 'Un tribunal international a trouvé ______ coupable de ______.', 2),
(163, 'Vous n\'avez pas vraiment vécu jusqu\'à ce que vous expérimentiez ______et ______ en même temps.', 2),
(164, 'Vous seriez surpris de réaliser combien il y a de chevauchement dans un diagramme de Venn de ______ et ______.', 2),
(165, '______ + ______ = ______.', 3),
(166, 'Faites un haïku.', 3);

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `ID` int(11) NOT NULL,
  `pseudonyme` varchar(25) NOT NULL,
  `mot_de_passe` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `uniqueID` varchar(40) DEFAULT NULL,
  `score` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `membres`
--

INSERT INTO `membres` (`ID`, `pseudonyme`, `mot_de_passe`, `email`, `uniqueID`, `score`) VALUES
(1, 'Dodo', 'Odod', 'soixante6dollars@gmail.com', 'e4ac3d56-1175-492f-9de0-467eb6f44e84', 33),
(2, 'Toto', 'Toto', '', NULL, 20),
(3, 'Jycy', 'Jycy', 'jcf.860@gmail.com', NULL, 10),
(4, 'Zozo', 'Zozo', 'd.bourcet@gmail.com', NULL, 5),
(5, 'Test', 'Test', 'test@test.com', NULL, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cartes_blanches`
--
ALTER TABLE `cartes_blanches`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `cartes_noires`
--
ALTER TABLE `cartes_noires`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `pseudonyme` (`pseudonyme`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cartes_blanches`
--
ALTER TABLE `cartes_blanches`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=672;
--
-- AUTO_INCREMENT pour la table `cartes_noires`
--
ALTER TABLE `cartes_noires`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
