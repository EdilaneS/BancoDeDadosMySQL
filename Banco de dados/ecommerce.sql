create database db_ecommerce;

use db_ecommerce;

create table tb_produto(
	id bigint(5) primary key auto_increment,
    nome varchar(50),
    marca varchar(50),
	quantidade int,
	valor decimal(10,2)
   );

insert into tb_produto(nome,marca,quantidade,valor) values ("Celular","Samsung",3,1500.00);
insert into tb_produto(nome,marca,quantidade,valor) values ("Notebook","Dell",5,3000.00);
insert into tb_produto(nome,marca,quantidade,valor) values ("Carregador","Samsung",7,150.00);
insert into tb_produto(nome,marca,quantidade,valor) values ("Fone","Sony",4,100.00);
insert into tb_produto(nome,marca,quantidade,valor) values ("Celular","LG",3,1000.00);
insert into tb_produto(nome,marca,quantidade,valor) values ("Notebook","Samsung",3,1800.00);
insert into tb_produto(nome,marca,quantidade,valor) values ("Celular","Apple",8,2500.00);
insert into tb_produto(nome,marca,quantidade,valor) values ("Fone","Sansung",3,50.00);

select * from tb_produto where valor > 500.00;
select * from tb_produto where valor < 500.00;

update tb_produto set quantidade=8 where id=4;