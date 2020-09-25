create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
	id_classe int PRIMARY KEY AUTO_INCREMENT,
	categoria enum('Atirador','Guerreiro','Mago'),
	arma enum ('Metralhadora', 'Espada', 'Magia')
);

create table tb_personagem(
	id_personagem int PRIMARY KEY AUTO_INCREMENT,
	nome varchar(45),
    poder_ataque int,
    poder_defesa int,
	qt_vida int unsigned,
    id_classe int,
  FOREIGN KEY(id_classe) REFERENCES tb_classe (id_classe)
);

insert into tb_classe(categoria,arma) values('Atirador','Metralhadora'); 
insert into tb_classe(categoria,arma) values('Guerreiro','Espada'); 
insert into tb_classe(categoria,arma) values('Mago','Magia'); 

insert into tb_personagem(nome,poder_ataque,poder_defesa,qt_vida,id_classe) values('Eve',2500,1000,10,1); 
insert into tb_personagem(nome,poder_ataque,poder_defesa,qt_vida,id_classe) values('Claus',2000,2000,9,2); 
insert into tb_personagem(nome,poder_ataque,poder_defesa,qt_vida,id_classe) values('Clarque',2500,3000,5,2); 
insert into tb_personagem(nome,poder_ataque,poder_defesa,qt_vida,id_classe) values('Notora',3500,5000,8,3); 
insert into tb_personagem(nome,poder_ataque,poder_defesa,qt_vida,id_classe) values('Konor',1500,1500,7,3); 
insert into tb_personagem(nome,poder_ataque,poder_defesa,qt_vida,id_classe) values('kate',1700,1300,10,1); 

select * from tb_personagem where poder_ataque>2000;
select * from tb_personagem where poder_defesa >= 1000 and poder_defesa <=2000;
select * from tb_personagem where nome like '%C%';



