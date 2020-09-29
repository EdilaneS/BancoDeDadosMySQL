
create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;	

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
    `marca` varchar (50),
    `id_categoria`int not null,
    primary key (`id_produto`),
    constraint foreign key (`id_categoria`) references tb_categoria(`id_categoria`)
);


insert into tb_categoria(tipo_categoria,ativo)values('Eletrico',true);
insert into tb_categoria(tipo_categoria,ativo)values('Hidraulico',true);
insert into tb_categoria(tipo_categoria,ativo)values('Madeira',true);
insert into tb_categoria(tipo_categoria,ativo)values('Massas',true);
insert into tb_categoria(tipo_categoria,ativo)values('Acabamento',true);

insert into tb_produto(nome_produto,preco,marca,id_categoria)values('Tomada',10.00,'Pial Legrand',1);
insert into tb_produto(nome_produto,preco,marca,id_categoria)values('Lampada',35.00,'Philips',1);
insert into tb_produto(nome_produto,preco,marca,id_categoria)values('Chuveiro',98.90,'Lorenzetti ',2);
insert into tb_produto(nome_produto,preco,marca,id_categoria)values('Canos',10.99,'Tigre ',2);
insert into tb_produto(nome_produto,preco,marca,id_categoria)values('Batente',125.23,'Mad ',3);
insert into tb_produto(nome_produto,preco,marca,id_categoria)values('Porta',129.51,'Mad ',3);
insert into tb_produto(nome_produto,preco,marca,id_categoria)values('Cimento',24.90,'Votoran ',4);
insert into tb_produto(nome_produto,preco,marca,id_categoria)values('Argamassa',34.90,'Votomassa',4);
insert into tb_produto(nome_produto,preco,marca,id_categoria)values('Tinta',179.90,'Tigre ',5);
insert into tb_produto(nome_produto,preco,marca,id_categoria)values('Piso',27.90,'Tigre ',5);

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


