create database db_generation_game_online;
use db_generation_game_online;

Create table tb_classe (
		id bigint auto_increment,
        nomeClasse varchar(20) not null,
        habilidade varchar(30) not null,
        armas varchar(30) not null,
        primary key (id)
);

use db_generation_game_online;

Create table tb_personagem(
		id bigint auto_increment,
        nome varchar(10) not null,
        raca varchar(20) not null,
        lvl int(2) not null,
        poderAtaque int(30) not null,
        poderDefesa int(30) not null,
		classe_id bigint not null,
        
        primary key (id),
        foreign key (classe_id) references tb_classe (id)
);
