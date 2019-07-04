use unplugged_opencv;
delete from atividades_participantes;
delete from atividades_respostas;
delete from experimentos;
delete from grupos;
delete from participantes;
delete from quadrados_replicas;

alter table atividades_participantes AUTO_INCREMENT = 1;
alter table atividades_respostas AUTO_INCREMENT = 1;
alter table experimentos AUTO_INCREMENT = 1;
alter table grupos AUTO_INCREMENT = 1;
alter table participantes AUTO_INCREMENT = 1;
alter table quadrados_replicas AUTO_INCREMENT = 1;
