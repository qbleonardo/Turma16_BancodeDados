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