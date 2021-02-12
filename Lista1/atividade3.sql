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

insert into tb_alunos (nome,idade,ano,turma,nota) VALUES ("Marcos",15,"01","B",8);
insert into tb_alunos (nome,idade,ano,turma,nota) VALUES ("Victoria",16,"02","A",4);
insert into tb_alunos (nome,idade,ano,turma,nota) VALUES ("Rafael",17,"03","D",9);
insert into tb_alunos (nome,idade,ano,turma,nota) VALUES ("Matheus",16,"02","C",7);
insert into tb_alunos (nome,idade,ano,turma,nota) VALUES ("Bruno",15,"01","A",5);
insert into tb_alunos (nome,idade,ano,turma,nota) VALUES ("Ricardo",17,"03","B",6);
insert into tb_alunos (nome,idade,ano,turma,nota) VALUES ("Daniel",18,"03","C",3);
insert into tb_alunos (nome,idade,ano,turma,nota) VALUES ("José",16,"02","B",10);

select nome,idade,ano,turma,nota from tb_alunos where nota <7;
select nome,idade,ano,turma,nota from tb_alunos where nota >7;

update tb_alunos set nome = "João" where id = 1;


