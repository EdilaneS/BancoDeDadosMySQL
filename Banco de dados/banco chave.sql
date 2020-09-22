create database db_chaves;

use db_chaves;

create table Pessoas(
	id_pessoa integer primary key auto_increment,
    nome varchar(255)
);

create table carro(
	id_carro integer primary key auto_increment,
    nome varchar(255),
    marca varchar(255),
    id_pessoa integer,
    constraint fk_pessoa foreign key (id_pessoa) references Pessoas(id_pessoa)
    );
    
    insert into Pessoas(nome) values ('juliana'),('julio'),('marcio');
    
    insert into Carro(Nome, Marca, id_Pessoa) values ('gol','wolks',2), ('palio','fiat',3);
   
   select * from Pessoas;
	select * from Carro;
   
   truncate Pessoas;