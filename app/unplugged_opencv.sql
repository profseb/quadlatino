/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='SYSTEM' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


DROP DATABASE IF EXISTS `unplugged_opencv`;
CREATE DATABASE `unplugged_opencv` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `unplugged_opencv`;

/*!40101 SET NAMES utf8 */;
CREATE TABLE `atividades` (
  `id_atividade` int(11) NOT NULL auto_increment,
  `atividade` varchar(100) default NULL,
  PRIMARY KEY  (`id_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

INSERT INTO `atividades` VALUES (1,'UNPLUGGED (ABELHA)');
INSERT INTO `atividades` VALUES (2,'COMPUTADOR (ANGRY BIRDS)');
INSERT INTO `atividades` VALUES (3,'UNPLUGGED (ANGRY BIRDS)');
INSERT INTO `atividades` VALUES (4,'COMPUTADOR (ABELHA)');
INSERT INTO `atividades` VALUES (5,'ABELHA (UNPLUGGED)');
INSERT INTO `atividades` VALUES (6,'ANGRY BIRDS (COMPUTADOR)');
INSERT INTO `atividades` VALUES (7,'ABELHA (COMPUTADOR)');
INSERT INTO `atividades` VALUES (8,'ANGRY BIRDS (UNPLUGGED)');
CREATE TABLE `atividades_participantes` (
  `id_ativ_part` int(11) NOT NULL auto_increment,
  `id_sess_ativ` int(11) default NULL,
  `id_participante` int(11) default NULL,
  PRIMARY KEY  (`id_ativ_part`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

CREATE TABLE `experimentos` (
  `id_experimento` int(11) NOT NULL auto_increment,
  `descricao` varchar(100) default NULL,
  `local` varchar(50) default NULL,
  PRIMARY KEY  (`id_experimento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `grupos` (
  `id_grupo` int(11) NOT NULL auto_increment,
  `grupo` varchar(100) default NULL,
  PRIMARY KEY  (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

CREATE TABLE `participantes` (
  `id_participante` int(11) NOT NULL auto_increment,
  `id_grupo` varchar(30) default NULL,
  `participante` varchar(100) default NULL,
  `sorteado` int(11) default '0',
  PRIMARY KEY  (`id_participante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

CREATE TABLE `quadrados_arranjos` (
  `id_quad_arranjo` int(11) NOT NULL auto_increment,
  `id_sessao1` int(11) default NULL,
  `id_sessao2` int(11) default NULL,
  `descricao` varchar(100) default NULL,
  PRIMARY KEY  (`id_quad_arranjo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `quadrados_arranjos` VALUES (1,1,2,'UNPLUGGED (abelha)/COMPUTADOR (angry birds) - COMPUTADOR (angry birds)/UNPLUGGED (abelha)');
INSERT INTO `quadrados_arranjos` VALUES (2,3,4,'COMPUTADOR (abelha)/UNPLUGGED (angry birds) - UNPLUGGED (angry birds)/COMPUTADOR (abelha)');
CREATE TABLE `quadrados_replicas` (
  `id_quad_replica` int(11) NOT NULL auto_increment,
  `id_quad_arranjo` int(11) default NULL,
  `ativ_part1` int(11) default NULL,
  `ativ_part2` int(11) default NULL,
  `ativ_part3` int(11) default NULL,
  `ativ_part4` int(11) default NULL,
  PRIMARY KEY  (`id_quad_replica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sessoes` (
  `id_sessao` int(11) NOT NULL auto_increment,
  `id_atividade1` int(11) default NULL,
  `id_atividade2` int(11) default NULL,
  `id_experimento` int(11) default NULL,
  PRIMARY KEY  (`id_sessao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

CREATE TABLE `sessoes_atividades` (
  `id_sess_ativ` int(11) NOT NULL auto_increment,
  `id_sessao` int(11) default NULL,
  `id_atividade` int(11) default NULL,
  `data_realizacao` datetime default NULL,
  `local` varchar(50) default NULL,
  PRIMARY KEY  (`id_sess_ativ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;


/*!40101 SET NAMES latin1 */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
