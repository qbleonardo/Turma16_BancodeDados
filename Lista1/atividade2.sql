create database db_ecommerce;
use db_ecommerce;

Create table tb_Produtos (
	id bigint auto_increment,
	produto varchar(30) not null,
    preco decimal(10,2) not null,
    modelo char(20) not null,
    cor char(20) not null,
    marca char(20) not null,
    PRIMARY KEY (id)
);

insert into tb_produtos (produto,preco,modelo,cor,marca) VALUES ("Câmera",2000,"GX01","Preta","Sony");
insert into tb_produtos (produto,preco,modelo,cor,marca) VALUES ("Computador",1500,"GamerT10","Branco","DELL");
insert into tb_produtos (produto,preco,modelo,cor,marca) VALUES ("Celular",600,"GalaxyS1","Cinza","Samsung");
insert into tb_produtos (produto,preco,modelo,cor,marca) VALUES ("Aparelho de som",400,"SoundedHigh","Preto/Cinza","LG");
insert into tb_produtos (produto,preco,modelo,cor,marca) VALUES ("Estante",300,"Bubinga","Marrom","MadeiraMadeira");
insert into tb_produtos (produto,preco,modelo,cor,marca) VALUES ("Sofa",250,"Couro","Preto","Espaço Sofá");
insert into tb_produtos (produto,preco,modelo,cor,marca) VALUES ("Mesa",970,"Quatro pés", "Branca","Madesa Móveis");
insert into tb_produtos (produto,preco,modelo,cor,marca) VALUES ("Rack",450,"Clássico","Vermelho Acetinado","Mobly");

select * from tb_produtos;
select produto,preco,modelo,cor,marca from tb_produtos where preco >500;
select produto,preco,modelo,cor,marca from tb_produtos where preco <500;

update tb_produtos set preco = 290 where id = 3;