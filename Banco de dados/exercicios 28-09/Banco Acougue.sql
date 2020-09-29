create database `db_cidade_das_carnes`;

use `db_cidade_das_carnes`;

create table`tb_categoria`(
	`id_categoria` int not null auto_increment,
    `tipo_categoria` varchar(50),
    `ativo` boolean,
    primary key(`id_categoria`)
);



create table `tb_produto`(
	`id_produto` int not null auto_increment,
	`nome_produto`varchar(50),
    `preco` decimal(10,2),
    `validade`date,
    `id_categoria`int not null,
    primary key (`id_produto`),
    foreign key (`id_categoria`) references tb_categoria(`id_categoria`)
);

insert into tb_categoria(tipo_categoria,ativo)values('Carne Bovina',true);
insert into tb_categoria(tipo_categoria,ativo)values('Carne Suína',true);
insert into tb_categoria(tipo_categoria,ativo)values('Aves',true);
insert into tb_categoria(tipo_categoria,ativo)values('Peixe',true);

insert into tb_produto(nome_produto,preco,validade,id_categoria)values ('Contrafilé',45.50,"2020-09-30",1);
insert into tb_produto(nome_produto,preco,validade,id_categoria)values ('Filé Mignon',55.00,"2020-09-30",1);
insert into tb_produto(nome_produto,preco,validade,id_categoria)values ('Picanha',55.00,"2020-09-30",1);
insert into tb_produto(nome_produto,preco,validade,id_categoria)values ('File de Frango',15.00,"2020-09-30",3);
insert into tb_produto(nome_produto,preco,validade,id_categoria)values ('Coxa com Sobrecoxa',20.00,"2020-09-30",3);
insert into tb_produto(nome_produto,preco,validade,id_categoria)values ('Peito de Frango ',20.00,"2020-09-30",3);
insert into tb_produto(nome_produto,preco,validade,id_categoria)values('Filé de Tilápia',23.45,"020-09-30",4);
insert into tb_produto(nome_produto,preco,validade,id_categoria)values('Filé de Salmão',55.45,"020-09-30",4);
insert into tb_produto(nome_produto,preco,validade,id_categoria)values('Bisteca',55.45,"020-09-30",2);

select * from tb_categoria;


select * from tb_produto where preco > 50;

select * from tb_produto where preco > 3 and preco <60 ;

select * from tb_produto where  nome_produto like 'C%';

select * from tb_produto 
inner join tb_categoria on 
tb_produto.id_categoria = tb_categoria.id_categoria;

select * from tb_produto where id_categoria =4;

select * from tb_produto 
inner join tb_categoria on 
tb_produto.id_categoria=4 and tb_categoria.id_categoria =4;