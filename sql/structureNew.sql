-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 26 Mars 2019 à 11:36
-- Version du serveur :  10.1.26-MariaDB-0+deb9u1
-- Version de PHP :  7.0.33-0+deb9u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `alejandra_acevedo`
--

-- --------------------------------------------------------

--
-- Structure de la table `AJOUTER`
--

CREATE TABLE `AJOUTER` (
  `IDQ` bigint(20) NOT NULL,
  `ID_QUEST` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `APPARIER`
--

CREATE TABLE `APPARIER` (
  `REP_ID_REPONSE` bigint(20) NOT NULL,
  `ID_REPONSE` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `APPARTENIR`
--

CREATE TABLE `APPARTENIR` (
  `IDRC` bigint(20) NOT NULL,
  `ID_REPONSE` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `PARTICIPER`
--

CREATE TABLE `PARTICIPER` (
  `ID` bigint(20) NOT NULL,
  `IDQ` bigint(20) NOT NULL,
  `DATE_PARTICIPATION` date NOT NULL,
  `CLASSEMENT` int(11) NOT NULL,
  `SCORE` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `QUESTION`
--

CREATE TABLE `QUESTION` (
  `INTITULE` varchar(200) NOT NULL,
  `ID_QUEST` bigint(20) NOT NULL,
  `TYPEQ` varchar(20) NOT NULL,
  `TEMPS_MAXIMAL` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `QUESTIONNAIRE`
--

CREATE TABLE `QUESTIONNAIRE` (
  `IDQ` bigint(20) NOT NULL,
  `ID` bigint(20) NOT NULL,
  `TITRE` varchar(200) NOT NULL,
  `ID_REGLES_QUEST` bigint(20) NOT NULL,
  `DESCRIPTION` char(255) DEFAULT NULL,
  `ETAT` char(255) NOT NULL,
  `DATE_OUVERTURE` date NOT NULL,
  `DATE_FERMETURE` date NOT NULL,
  `MODE_ACCES` char(200) DEFAULT NULL,
  `LIEN_HTTP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `REGLES_GENERATION`
--

CREATE TABLE `REGLES_GENERATION` (
  `REGLE` varchar(200) NOT NULL,
  `ID_REGLE` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `REGLES_QUESTIONNAIRE`
--

CREATE TABLE `REGLES_QUESTIONNAIRE` (
  `TEMPS_TOTALE` smallint(6) DEFAULT NULL,
  `REVENIR_ARRIERE` tinyint(1) NOT NULL,
  `ID_REGLES_QUEST` bigint(20) NOT NULL,
  `PLUS` int(11) NOT NULL,
  `MOINS` int(11) DEFAULT NULL,
  `NEUTRE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `REPONSES_POSSIBLES`
--

CREATE TABLE `REPONSES_POSSIBLES` (
  `ID_REPONSE` bigint(20) NOT NULL,
  `ID_QUEST` bigint(20) NOT NULL,
  `ENONCE` varchar(200) NOT NULL,
  `CORRECT` tinyint(1) NOT NULL,
  `COLONNE1OU2` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `REPONSE_CHOISIE`
--

CREATE TABLE `REPONSE_CHOISIE` (
  `ID_QUEST` bigint(20) NOT NULL,
  `IDRC` bigint(20) NOT NULL,
  `ID` bigint(20) NOT NULL,
  `OKPASOK` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `SPECIFIER`
--

CREATE TABLE `SPECIFIER` (
  `IDQ` bigint(20) NOT NULL,
  `ID_REGLE` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `TAG`
--

CREATE TABLE `TAG` (
  `TAG` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `TAGGER`
--

CREATE TABLE `TAGGER` (
  `ID_QUEST` bigint(20) NOT NULL,
  `TAG` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `TYPE`
--

CREATE TABLE `TYPE` (
  `TYPEQ` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `UTILISATEUR`
--

CREATE TABLE `UTILISATEUR` (
  `NOM` char(100) NOT NULL,
  `PRENOM` char(100) NOT NULL,
  `TYPE_UTILISATEUR` char(100) NOT NULL,
  `ID` bigint(20) NOT NULL,
  `MATRICULE` char(255) DEFAULT NULL,
  `STATUT` varchar(200) DEFAULT NULL,
  `MAIL_ENSEIGNANT` char(200) DEFAULT NULL,
  `PROMO` char(100) DEFAULT NULL,
  `ANNEE_DE_SORTIE` smallint(6) DEFAULT NULL,
  `MAIL_ETUDIANT` char(200) DEFAULT NULL,
  `MDP` varchar(200) DEFAULT NULL,
  `LOGIN` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `AJOUTER`
--
ALTER TABLE `AJOUTER`
  ADD PRIMARY KEY (`IDQ`,`ID_QUEST`),
  ADD KEY `FK_AJOUTER2` (`ID_QUEST`);

--
-- Index pour la table `APPARIER`
--
ALTER TABLE `APPARIER`
  ADD PRIMARY KEY (`REP_ID_REPONSE`,`ID_REPONSE`),
  ADD KEY `FK_APPARIER2` (`ID_REPONSE`);

--
-- Index pour la table `APPARTENIR`
--
ALTER TABLE `APPARTENIR`
  ADD PRIMARY KEY (`IDRC`,`ID_REPONSE`),
  ADD KEY `FK_APPARTENIR2` (`ID_REPONSE`);

--
-- Index pour la table `PARTICIPER`
--
ALTER TABLE `PARTICIPER`
  ADD PRIMARY KEY (`ID`,`IDQ`),
  ADD KEY `FK_PARTICIPER2` (`IDQ`);

--
-- Index pour la table `QUESTION`
--
ALTER TABLE `QUESTION`
  ADD PRIMARY KEY (`ID_QUEST`),
  ADD KEY `FK_TYPER` (`TYPEQ`);

--
-- Index pour la table `QUESTIONNAIRE`
--
ALTER TABLE `QUESTIONNAIRE`
  ADD PRIMARY KEY (`IDQ`),
  ADD KEY `FK_CREER_GERER` (`ID`),
  ADD KEY `FK_REGLER_Q` (`ID_REGLES_QUEST`);

--
-- Index pour la table `REGLES_GENERATION`
--
ALTER TABLE `REGLES_GENERATION`
  ADD PRIMARY KEY (`ID_REGLE`);

--
-- Index pour la table `REGLES_QUESTIONNAIRE`
--
ALTER TABLE `REGLES_QUESTIONNAIRE`
  ADD PRIMARY KEY (`ID_REGLES_QUEST`);

--
-- Index pour la table `REPONSES_POSSIBLES`
--
ALTER TABLE `REPONSES_POSSIBLES`
  ADD PRIMARY KEY (`ID_REPONSE`),
  ADD KEY `FK_ASSOCIER` (`ID_QUEST`);

--
-- Index pour la table `REPONSE_CHOISIE`
--
ALTER TABLE `REPONSE_CHOISIE`
  ADD PRIMARY KEY (`IDRC`),
  ADD KEY `FK_CHOISIR` (`ID`),
  ADD KEY `FK_PAR` (`ID_QUEST`);

--
-- Index pour la table `SPECIFIER`
--
ALTER TABLE `SPECIFIER`
  ADD PRIMARY KEY (`IDQ`,`ID_REGLE`),
  ADD KEY `FK_SPECIFIER2` (`ID_REGLE`);

--
-- Index pour la table `TAG`
--
ALTER TABLE `TAG`
  ADD PRIMARY KEY (`TAG`);

--
-- Index pour la table `TAGGER`
--
ALTER TABLE `TAGGER`
  ADD PRIMARY KEY (`ID_QUEST`,`TAG`),
  ADD KEY `FK_TAGGER2` (`TAG`);

--
-- Index pour la table `TYPE`
--
ALTER TABLE `TYPE`
  ADD PRIMARY KEY (`TYPEQ`);

--
-- Index pour la table `UTILISATEUR`
--
ALTER TABLE `UTILISATEUR`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NOM_PRENOM` (`NOM`,`PRENOM`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `QUESTION`
--
ALTER TABLE `QUESTION`
  MODIFY `ID_QUEST` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `QUESTIONNAIRE`
--
ALTER TABLE `QUESTIONNAIRE`
  MODIFY `IDQ` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `REGLES_GENERATION`
--
ALTER TABLE `REGLES_GENERATION`
  MODIFY `ID_REGLE` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `REGLES_QUESTIONNAIRE`
--
ALTER TABLE `REGLES_QUESTIONNAIRE`
  MODIFY `ID_REGLES_QUEST` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `REPONSES_POSSIBLES`
--
ALTER TABLE `REPONSES_POSSIBLES`
  MODIFY `ID_REPONSE` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `REPONSE_CHOISIE`
--
ALTER TABLE `REPONSE_CHOISIE`
  MODIFY `IDRC` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `UTILISATEUR`
--
ALTER TABLE `UTILISATEUR`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `AJOUTER`
--
ALTER TABLE `AJOUTER`
  ADD CONSTRAINT `FK_AJOUTER` FOREIGN KEY (`IDQ`) REFERENCES `QUESTIONNAIRE` (`IDQ`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_AJOUTER2` FOREIGN KEY (`ID_QUEST`) REFERENCES `QUESTION` (`ID_QUEST`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `APPARIER`
--
ALTER TABLE `APPARIER`
  ADD CONSTRAINT `FK_APPARIER` FOREIGN KEY (`REP_ID_REPONSE`) REFERENCES `REPONSES_POSSIBLES` (`ID_REPONSE`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_APPARIER2` FOREIGN KEY (`ID_REPONSE`) REFERENCES `REPONSES_POSSIBLES` (`ID_REPONSE`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `APPARTENIR`
--
ALTER TABLE `APPARTENIR`
  ADD CONSTRAINT `FK_APPARTENIR` FOREIGN KEY (`IDRC`) REFERENCES `REPONSE_CHOISIE` (`IDRC`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_APPARTENIR2` FOREIGN KEY (`ID_REPONSE`) REFERENCES `REPONSES_POSSIBLES` (`ID_REPONSE`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `PARTICIPER`
--
ALTER TABLE `PARTICIPER`
  ADD CONSTRAINT `FK_PARTICIPER` FOREIGN KEY (`ID`) REFERENCES `UTILISATEUR` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PARTICIPER2` FOREIGN KEY (`IDQ`) REFERENCES `QUESTIONNAIRE` (`IDQ`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `QUESTION`
--
ALTER TABLE `QUESTION`
  ADD CONSTRAINT `FK_TYPER` FOREIGN KEY (`TYPEQ`) REFERENCES `TYPE` (`TYPEQ`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `QUESTIONNAIRE`
--
ALTER TABLE `QUESTIONNAIRE`
  ADD CONSTRAINT `FK_CREER_GERER` FOREIGN KEY (`ID`) REFERENCES `UTILISATEUR` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REGLER_Q` FOREIGN KEY (`ID_REGLES_QUEST`) REFERENCES `REGLES_QUESTIONNAIRE` (`ID_REGLES_QUEST`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `REPONSES_POSSIBLES`
--
ALTER TABLE `REPONSES_POSSIBLES`
  ADD CONSTRAINT `FK_ASSOCIER` FOREIGN KEY (`ID_QUEST`) REFERENCES `QUESTION` (`ID_QUEST`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `REPONSE_CHOISIE`
--
ALTER TABLE `REPONSE_CHOISIE`
  ADD CONSTRAINT `FK_CHOISIR` FOREIGN KEY (`ID`) REFERENCES `UTILISATEUR` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PAR` FOREIGN KEY (`ID_QUEST`) REFERENCES `QUESTION` (`ID_QUEST`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `SPECIFIER`
--
ALTER TABLE `SPECIFIER`
  ADD CONSTRAINT `FK_SPECIFIER` FOREIGN KEY (`IDQ`) REFERENCES `QUESTIONNAIRE` (`IDQ`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SPECIFIER2` FOREIGN KEY (`ID_REGLE`) REFERENCES `REGLES_GENERATION` (`ID_REGLE`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `TAGGER`
--
ALTER TABLE `TAGGER`
  ADD CONSTRAINT `FK_TAGGER` FOREIGN KEY (`ID_QUEST`) REFERENCES `QUESTION` (`ID_QUEST`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAGGER2` FOREIGN KEY (`TAG`) REFERENCES `TAG` (`TAG`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
