create database db_generation_game_online;
use db_generation_game_online;

Create table tb_classe (
		id bigint auto_increment,
        nomeClasse varchar(20) not null,
        habilidade varchar(30) not null,
        armas varchar(30) not null,
        primary key (id)
);

insert into tb_classe (nomeClasse, habilidade, armas) VALUES ("Guerreiro","Manusear armas pesadas","Espadas");
insert into tb_classe (nomeClasse, habilidade, armas) VALUES ("Bruxo", "Uso de magias", "Cajado");
insert into tb_classe (nomeClasse, habilidade, armas) VALUES ("Ranger","Poderes da natureza","Arco");
insert into tb_classe (nomeClasse, habilidade, armas) VALUES ("Paladino","Força de um Berserk","Espadas/Machados");
insert into tb_classe (nomeClasse, habilidade, armas) VALUES ("Monge","Artes marciais","Bastões");

select * from tb_classe;

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

insert into tb_personagem (nome, raca, lvl, poderAtaque, poderDefesa, classe_id) VALUES ("Darkness","Humano",90,3500,990,1);
insert into tb_personagem (nome, raca, lvl, poderAtaque, poderDefesa, classe_id) VALUES ("Elf","Elfo",50,750,1000,2);
insert into tb_personagem (nome, raca, lvl, poderAtaque, poderDefesa, classe_id) VALUES ("Buddy","Humano",30,550,400,6);
insert into tb_personagem (nome, raca, lvl, poderAtaque, poderDefesa, classe_id) VALUES ("Hordi","Meio Humano",90,2000,2400,3);
insert into tb_personagem (nome, raca, lvl, poderAtaque, poderDefesa, classe_id) VALUES ("Codini","Orc",60,1500,760,4);
insert into tb_personagem (nome, raca, lvl, poderAtaque, poderDefesa, classe_id) VALUES ("Mark","Humanoide",99,4000,2500,1);
insert into tb_personagem (nome, raca, lvl, poderAtaque, poderDefesa, classe_id) VALUES ("Deriko","Morto-vivo",70,1500,3300,2);
insert into tb_personagem (nome, raca, lvl, poderAtaque, poderDefesa, classe_id) VALUES ("Catur","Meio Humano",45,660,547,3);

select * from tb_personagem where poderAtaque > 2000;
select * from tb_personagem where poderDefesa between 1000 and 2000;
select * from tb_personagem where nome like "%c%";

select * from tb_personagem
	inner join tb_classe on tb_classe.id = tb_personagem.classe_id

