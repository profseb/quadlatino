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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

CREATE TABLE `atividades_respostas` (
  `id_resposta` int(11) NOT NULL auto_increment,
  `id_ativ_part` int(11) default NULL,
  `game` varchar(20) default NULL,
  `level` int(11) default NULL,
  `image` varchar(100) default NULL,
  `solution_text` varchar(50) default NULL,
  `proved` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_resposta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

CREATE TABLE `experimentos` (
  `id_experimento` int(11) NOT NULL auto_increment,
  `descricao` varchar(100) default NULL,
  `local` varchar(50) default NULL,
  PRIMARY KEY  (`id_experimento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

INSERT INTO `experimentos` VALUES (1,'Quadrado Latino - INFO 30 (Parcial)','IFMA - Campus SRM');
CREATE TABLE `grupos` (
  `id_grupo` int(11) NOT NULL auto_increment,
  `grupo` varchar(100) default NULL,
  PRIMARY KEY  (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

INSERT INTO `grupos` VALUES (1,'INFO 30 - 2019 (Parcial)');
CREATE TABLE `participantes` (
  `id_participante` int(11) NOT NULL auto_increment,
  `id_grupo` varchar(30) default NULL,
  `participante` varchar(100) default NULL,
  `sorteado` int(11) default '0',
  PRIMARY KEY  (`id_participante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

INSERT INTO `participantes` VALUES (1,'1','EDUARDO SÃ / LORRAINY SA',0);
INSERT INTO `participantes` VALUES (2,'1','ROMULO ASSIS / JOEL CATTANI',0);
INSERT INTO `participantes` VALUES (3,'1','RODRIGO BARROS / LIVIA SILVA',0);
INSERT INTO `participantes` VALUES (4,'1','ANA BORGES / GESSICA SILVA',0);
INSERT INTO `participantes` VALUES (5,'1','ISADORA CAVALCANTE / NYAILA FERREIRA',0);
INSERT INTO `participantes` VALUES (6,'1','AWILLA OLIVEIRA / LAURA LOPES',0);
INSERT INTO `participantes` VALUES (7,'1','ALEXANDRE SOUZA / MARIA LIMA',0);
INSERT INTO `participantes` VALUES (8,'1','DOUGLAS COSTA / JOACY JÃšNIOR',0);
INSERT INTO `participantes` VALUES (9,'1','DANIEL ARAÃšJO / EMANNUELLA SILVA',0);
INSERT INTO `participantes` VALUES (10,'1','PAULO GOMES / MARIA SILVA',0);
INSERT INTO `participantes` VALUES (11,'1','MURILO ARRAIS / LETICIA OLIVEIRA',0);
INSERT INTO `participantes` VALUES (12,'1','BRENNAY SILVA / EBERSON VIEIRA',0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

CREATE TABLE `sessoes` (
  `id_sessao` int(11) NOT NULL auto_increment,
  `id_atividade1` int(11) default NULL,
  `id_atividade2` int(11) default NULL,
  `id_experimento` int(11) default NULL,
  PRIMARY KEY  (`id_sessao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

CREATE TABLE `sessoes_atividades` (
  `id_sess_ativ` int(11) NOT NULL auto_increment,
  `id_sessao` int(11) default NULL,
  `id_atividade` int(11) default NULL,
  `data_realizacao` datetime default NULL,
  `local` varchar(50) default NULL,
  PRIMARY KEY  (`id_sess_ativ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

CREATE TABLE `unplugged_fases` (
  `id_fase` int(11) NOT NULL auto_increment,
  `level` int(11) default NULL,
  `picture` varchar(100) default NULL,
  `game` varchar(30) default NULL,
  `url` varchar(100) default NULL,
  PRIMARY KEY  (`id_fase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `unplugged_fases` VALUES (1,1,'levels/bee/bee1.jpg','bee','course1/stage/7/puzzle/1');
INSERT INTO `unplugged_fases` VALUES (2,2,'levels/bee/bee2.jpg','bee','course1/stage/7/puzzle/2');
INSERT INTO `unplugged_fases` VALUES (3,3,'levels/bee/bee3.jpg','bee','course1/stage/7/puzzle/3');
INSERT INTO `unplugged_fases` VALUES (4,4,'levels/bee/bee4.jpg','bee','course1/stage/7/puzzle/4');
INSERT INTO `unplugged_fases` VALUES (5,5,'levels/bee/bee5.jpg','bee','course1/stage/7/puzzle/5');
INSERT INTO `unplugged_fases` VALUES (6,6,'levels/bee/bee6.jpg','bee','course1/stage/7/puzzle/6');
INSERT INTO `unplugged_fases` VALUES (7,7,'levels/bee/bee7.jpg','bee','course1/stage/7/puzzle/7');
INSERT INTO `unplugged_fases` VALUES (8,8,'levels/bee/bee8.jpg','bee','course1/stage/7/puzzle/8');
INSERT INTO `unplugged_fases` VALUES (9,9,'levels/bee/bee9.jpg','bee','course1/stage/7/puzzle/9');
INSERT INTO `unplugged_fases` VALUES (10,10,'levels/bee/bee10.jpg','bee','course1/stage/7/puzzle/10');
INSERT INTO `unplugged_fases` VALUES (11,11,'levels/bee/bee11.jpg','bee','course1/stage/7/puzzle/11');
INSERT INTO `unplugged_fases` VALUES (12,12,'levels/bee/bee12.jpg','bee','course1/stage/7/puzzle/12');
INSERT INTO `unplugged_fases` VALUES (13,13,'levels/bee/bee13.jpg','bee','course1/stage/7/puzzle/13');
INSERT INTO `unplugged_fases` VALUES (14,1,'levels/birds/birds1.jpg','birds','course1/stage/4/puzzle/1');
INSERT INTO `unplugged_fases` VALUES (15,2,'levels/birds/birds2.jpg','birds','course1/stage/4/puzzle/2');
INSERT INTO `unplugged_fases` VALUES (16,3,'levels/birds/birds3.jpg','birds','course1/stage/4/puzzle/3');
INSERT INTO `unplugged_fases` VALUES (17,4,'levels/birds/birds4.jpg','birds','course1/stage/4/puzzle/4');
INSERT INTO `unplugged_fases` VALUES (18,5,'levels/birds/birds5.jpg','birds','course1/stage/4/puzzle/5');
INSERT INTO `unplugged_fases` VALUES (19,6,'levels/birds/birds6.jpg','birds','course1/stage/4/puzzle/6');
INSERT INTO `unplugged_fases` VALUES (20,7,'levels/birds/birds7.jpg','birds','course1/stage/4/puzzle/7');
INSERT INTO `unplugged_fases` VALUES (21,8,'levels/birds/birds8.jpg','birds','course1/stage/4/puzzle/8');
INSERT INTO `unplugged_fases` VALUES (22,9,'levels/birds/birds9.jpg','birds','course1/stage/4/puzzle/9');
INSERT INTO `unplugged_fases` VALUES (23,10,'levels/birds/birds10.jpg','birds','course1/stage/4/puzzle/10');
INSERT INTO `unplugged_fases` VALUES (24,11,'levels/birds/birds11.jpg','birds','course1/stage/4/puzzle/11');
INSERT INTO `unplugged_fases` VALUES (25,12,'levels/birds/birds12.jpg','birds','course1/stage/4/puzzle/12');
INSERT INTO `unplugged_fases` VALUES (26,13,'levels/birds/birds13.jpg','birds','course1/stage/4/puzzle/13');

/*!40101 SET NAMES latin1 */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
