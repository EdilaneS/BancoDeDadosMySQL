create database db_deletar;
use db_deletar;

create table consumidores(
	id int primary key auto_increment,
    nome varchar(30)
);

insert into consumidores(nome) values ("marcelo"), ("julia");

delete from consumidores where id=1;

select * from consumidores;

