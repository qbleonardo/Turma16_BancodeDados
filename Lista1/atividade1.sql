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

insert into tb_funcionarios (nome,idade,salario,cargo,horasTrabalhada) VALUES ("Eric",26, 1500,"Consultor",08);
insert into tb_funcionarios (nome,idade,salario,cargo,horasTrabalhada) VALUES ("Pedro",21, 1000,"Recrutador",06);
insert into tb_funcionarios (nome,idade,salario,cargo,horasTrabalhada) VALUES ("Claudia",24, 3500,"Supervisor", 12);
insert into tb_funcionarios (nome,idade,salario,cargo,horasTrabalhada) VALUES ("Luiza",22, 5700,"Gestora",12);
insert into tb_funcionarios (nome,idade,salario,cargo,horasTrabalhada) VALUES ("João",29,2000,"Assistente",08); 


select salario from tb_funcionarios where salario > 2000;
select salario from tb_funcionarios where salario < 2000;

update tb_funcionarios set salario = 1999 where id = 1;