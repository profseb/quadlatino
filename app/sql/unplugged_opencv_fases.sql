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

INSERT INTO `atividades_participantes` VALUES (1,1,16);
INSERT INTO `atividades_participantes` VALUES (2,2,16);
INSERT INTO `atividades_participantes` VALUES (3,3,10);
INSERT INTO `atividades_participantes` VALUES (4,4,10);
INSERT INTO `atividades_participantes` VALUES (5,5,7);
INSERT INTO `atividades_participantes` VALUES (6,6,7);
INSERT INTO `atividades_participantes` VALUES (7,7,2);
INSERT INTO `atividades_participantes` VALUES (8,8,2);
INSERT INTO `atividades_participantes` VALUES (9,1,18);
INSERT INTO `atividades_participantes` VALUES (10,2,18);
INSERT INTO `atividades_participantes` VALUES (11,3,14);
INSERT INTO `atividades_participantes` VALUES (12,4,14);
INSERT INTO `atividades_participantes` VALUES (13,5,1);
INSERT INTO `atividades_participantes` VALUES (14,6,1);
INSERT INTO `atividades_participantes` VALUES (15,7,13);
INSERT INTO `atividades_participantes` VALUES (16,8,13);
INSERT INTO `atividades_participantes` VALUES (17,1,20);
INSERT INTO `atividades_participantes` VALUES (18,2,20);
INSERT INTO `atividades_participantes` VALUES (19,3,4);
INSERT INTO `atividades_participantes` VALUES (20,4,4);
INSERT INTO `atividades_participantes` VALUES (21,5,19);
INSERT INTO `atividades_participantes` VALUES (22,6,19);
INSERT INTO `atividades_participantes` VALUES (23,7,6);
INSERT INTO `atividades_participantes` VALUES (24,8,6);
INSERT INTO `atividades_participantes` VALUES (25,1,5);
INSERT INTO `atividades_participantes` VALUES (26,2,5);
INSERT INTO `atividades_participantes` VALUES (27,3,15);
INSERT INTO `atividades_participantes` VALUES (28,4,15);
INSERT INTO `atividades_participantes` VALUES (29,5,12);
INSERT INTO `atividades_participantes` VALUES (30,6,12);
INSERT INTO `atividades_participantes` VALUES (31,7,11);
INSERT INTO `atividades_participantes` VALUES (32,8,11);
INSERT INTO `atividades_participantes` VALUES (33,1,3);
INSERT INTO `atividades_participantes` VALUES (34,2,3);
INSERT INTO `atividades_participantes` VALUES (35,3,17);
INSERT INTO `atividades_participantes` VALUES (36,4,17);
INSERT INTO `atividades_participantes` VALUES (37,5,8);
INSERT INTO `atividades_participantes` VALUES (38,6,8);
INSERT INTO `atividades_participantes` VALUES (39,7,9);
INSERT INTO `atividades_participantes` VALUES (40,8,9);
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

INSERT INTO `participantes` VALUES (1,'1','JOAO CASTRO / TASSIA RODRIGUES',1);
INSERT INTO `participantes` VALUES (2,'1','MARIA SOUSA / MARIA LIMA',1);
INSERT INTO `participantes` VALUES (3,'1','KAYSSON NASCIMENTO / INGRED SOUSA',1);
INSERT INTO `participantes` VALUES (4,'1','CARLOS CARREIRO / GUILHERME SILVA',1);
INSERT INTO `participantes` VALUES (5,'1','SABRINA BRITO / DANIARA NASCIMENTO',1);
INSERT INTO `participantes` VALUES (6,'1','ALVARO SOUSA / BEATRIZ ROCHA',1);
INSERT INTO `participantes` VALUES (7,'1','KAUANI SANTOS / PEDRO MOREIRA',1);
INSERT INTO `participantes` VALUES (8,'1','EDIJON FILHO / ISMAEL SILVA',1);
INSERT INTO `participantes` VALUES (9,'1','EMERSON SANTOS / ANDRE OLIVEIRA',1);
INSERT INTO `participantes` VALUES (10,'1','MAIZA SOUSA / MARCOS PEREIRA',1);
INSERT INTO `participantes` VALUES (11,'1','MARINA SILVA / FRANKLYN DEUS',1);
INSERT INTO `participantes` VALUES (12,'1','THALYTA PINTO / GABRIEL NOGUEIRA',1);
INSERT INTO `participantes` VALUES (13,'1','LUIS SILVA / MYCHELE BRITO',1);
INSERT INTO `participantes` VALUES (14,'1','KAROLANY AUZIER / JHONNATA COELHO',1);
INSERT INTO `participantes` VALUES (15,'1','JOYCE SOUSA / ISABELA SILVA',1);
INSERT INTO `participantes` VALUES (16,'1','JOSE LEITE / GENIEL ROCHA',1);
INSERT INTO `participantes` VALUES (17,'1','KAIRON ARAUJO / DANILO ALVES',1);
INSERT INTO `participantes` VALUES (18,'1','VITORIA SILVA / DIEGO GAMA',1);
INSERT INTO `participantes` VALUES (19,'1','EMMILE SOLINO / VICTOR BARROS',1);
INSERT INTO `participantes` VALUES (20,'1','JAMES JUNIOR / ARIANA COSTA',1);
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

INSERT INTO `quadrados_replicas` VALUES (1,1,1,2,3,4);
INSERT INTO `quadrados_replicas` VALUES (2,1,5,6,7,8);
INSERT INTO `quadrados_replicas` VALUES (3,1,9,10,11,12);
INSERT INTO `quadrados_replicas` VALUES (4,1,13,14,15,16);
INSERT INTO `quadrados_replicas` VALUES (5,1,17,18,19,20);
INSERT INTO `quadrados_replicas` VALUES (6,1,21,22,23,24);
INSERT INTO `quadrados_replicas` VALUES (7,1,25,26,27,28);
INSERT INTO `quadrados_replicas` VALUES (8,1,29,30,31,32);
INSERT INTO `quadrados_replicas` VALUES (9,1,33,34,35,36);
INSERT INTO `quadrados_replicas` VALUES (10,1,37,38,39,40);
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
