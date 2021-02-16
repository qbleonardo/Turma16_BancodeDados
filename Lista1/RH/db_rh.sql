create database db_rh;
use db_rh; 

Create table tb_funcionarios(
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    idade int(2), 
    salario decimal(10,2) not null,
    cargo CHAR(20) not null,
    horasTrabalhada int(2),
    primary key(id)
);