create database db_farmacia_do_bem;
use db_farmacia_do_bem; 

Create table tb_categoria(
		id bigint auto_increment,
		tipo varchar(30) not null, 
		entrega boolean,
        troca boolean,
        PRIMARY KEY (id)
); 

use db_farmacia_do_bem;

Create table tb_produto(
		id bigint auto_increment,
		produto varchar(30) not null,
        preco decimal(10,2) not null,
        marca varchar(20) not null,
        estoque int(5) not null,
        categoria_id bigint, 
        
        PRIMARY KEY (id),
        FOREIGN KEY (categoria_id) references tb_categoria (id)
);	



