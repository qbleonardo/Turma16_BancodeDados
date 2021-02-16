create database db_escola;
use db_escola;

Create table tb_alunos(
	id bigint auto_increment,
    nome char(10) not null,
    idade int (2) not null,
    ano char (2) not null,
    turma char not null,
    nota int (2) not null,
	PRIMARY KEY (id)
);