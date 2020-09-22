create database db_loja1;
use db_loja1;

create table tb_clientes(
	codigo INT,
    nome VARCHAR(60),
    dataNascimento DATE,
    telefone CHAR(8) 



);

create table tb_venda(
	id_venda INT,
    produto varchar(255),
    preco decimal(10,2),
    horario_venda datetime default current_timestamp,/*hora da inserção de valores*/
    data_entrega date,
    hora_entrega time  



);
insert into tb_venda(produto,preco,data_entrega,hora_entrega) values ( "Ecosport",69000.00,"2018-12-03","13:40:00");

select * from tb_venda