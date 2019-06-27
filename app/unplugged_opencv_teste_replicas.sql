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

INSERT INTO `experimentos` VALUES (1,'Quadrado Latino - INFO 20','IFMA - Campus SRM');
CREATE TABLE `grupos` (
  `id_grupo` int(11) NOT NULL auto_increment,
  `grupo` varchar(100) default NULL,
  PRIMARY KEY  (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

INSERT INTO `grupos` VALUES (1,'INFO 20');
CREATE TABLE `participantes` (
  `id_participante` int(11) NOT NULL auto_increment,
  `id_grupo` varchar(30) default NULL,
  `participante` varchar(100) default NULL,
  `sorteado` int(11) default '0',
  PRIMARY KEY  (`id_participante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

INSERT INTO `participantes` VALUES (1,'1','JOAO CASTRO / TASSIA RODRIGUES',0);
INSERT INTO `participantes` VALUES (2,'1','MARIA SOUSA / MARIA LIMA',0);
INSERT INTO `participantes` VALUES (3,'1','KAYSSON NASCIMENTO / INGRED SOUSA',0);
INSERT INTO `participantes` VALUES (4,'1','CARLOS CARREIRO / GUILHERME SILVA',0);
INSERT INTO `participantes` VALUES (5,'1','SABRINA BRITO / DANIARA NASCIMENTO',0);
INSERT INTO `participantes` VALUES (6,'1','ALVARO SOUSA / BEATRIZ ROCHA',0);
INSERT INTO `participantes` VALUES (7,'1','KAUANI SANTOS / PEDRO MOREIRA',0);
INSERT INTO `participantes` VALUES (8,'1','EDIJON FILHO / ISMAEL SILVA',0);
INSERT INTO `participantes` VALUES (9,'1','EMERSON SANTOS / ANDRE OLIVEIRA',0);
INSERT INTO `participantes` VALUES (10,'1','MAIZA SOUSA / MARCOS PEREIRA',0);
INSERT INTO `participantes` VALUES (11,'1','MARINA SILVA / FRANKLYN DEUS',0);
INSERT INTO `participantes` VALUES (12,'1','THALYTA PINTO / GABRIEL NOGUEIRA',0);
INSERT INTO `participantes` VALUES (13,'1','LUIS SILVA / MYCHELE BRITO',0);
INSERT INTO `participantes` VALUES (14,'1','KAROLANY AUZIER / JHONNATA COELHO',0);
INSERT INTO `participantes` VALUES (15,'1','JOYCE SOUSA / ISABELA SILVA',0);
INSERT INTO `participantes` VALUES (16,'1','JOSE LEITE / GENIEL ROCHA',0);
INSERT INTO `participantes` VALUES (17,'1','KAIRON ARAUJO / DANILO ALVES',0);
INSERT INTO `participantes` VALUES (18,'1','VITORIA SILVA / DIEGO GAMA',0);
INSERT INTO `participantes` VALUES (19,'1','EMMILE SOLINO / VICTOR BARROS',0);
INSERT INTO `participantes` VALUES (20,'1','JAMES JUNIOR / ARIANA COSTA',0);
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

INSERT INTO `sessoes` VALUES (1,1,2,1);
INSERT INTO `sessoes` VALUES (2,2,1,1);
INSERT INTO `sessoes` VALUES (3,3,4,1);
INSERT INTO `sessoes` VALUES (4,4,3,1);
CREATE TABLE `sessoes_atividades` (
  `id_sess_ativ` int(11) NOT NULL auto_increment,
  `id_sessao` int(11) default NULL,
  `id_atividade` int(11) default NULL,
  `data_realizacao` datetime default NULL,
  `local` varchar(50) default NULL,
  PRIMARY KEY  (`id_sess_ativ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

INSERT INTO `sessoes_atividades` VALUES (1,1,1,'0000-00-00 00:00:00','');
INSERT INTO `sessoes_atividades` VALUES (2,1,2,'0000-00-00 00:00:00','');
INSERT INTO `sessoes_atividades` VALUES (3,2,2,'0000-00-00 00:00:00','');
INSERT INTO `sessoes_atividades` VALUES (4,2,1,'0000-00-00 00:00:00','');
INSERT INTO `sessoes_atividades` VALUES (5,3,3,'0000-00-00 00:00:00','');
INSERT INTO `sessoes_atividades` VALUES (6,3,4,'0000-00-00 00:00:00','');
INSERT INTO `sessoes_atividades` VALUES (7,4,4,'0000-00-00 00:00:00','');
INSERT INTO `sessoes_atividades` VALUES (8,4,3,'0000-00-00 00:00:00','');

/*!40101 SET NAMES latin1 */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
