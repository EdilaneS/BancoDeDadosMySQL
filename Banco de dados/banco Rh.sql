create database db_Rh;

use db_Rh;

create table tb_funcionarios(
	id bigint(5) primary key auto_increment,
    nome varchar(50),
    rg varchar(50),
    cpf varchar(50),
    salario decimal(10,2)
    );
    
    insert into tb_funcionarios (nome,rg,cpf,salario) values ("Carlos","65478392-7","986.867.094-16",2500.00);
    insert into tb_funcionarios (nome,rg,cpf,salario) values ("João","674868392-7","986.867.094-16",2300.00);
    insert into tb_funcionarios (nome,rg,cpf,salario) values ("Marcos","764878392-7","986.867.094-16",1500.00);
    insert into tb_funcionarios (nome,rg,cpf,salario) values ("Maria","45678392-9","986.867.094-16",1000.00);
    insert into tb_funcionarios (nome,rg,cpf,salario) values ("Noélia","65478392-8","986.867.094-16",1700.00);
    
    select * from tb_funcionarios where salario > 2000.00;
	select * from tb_funcionarios where salario < 2000.00;
    
    update tb_funcionarios set nome = "ZeZé" where id= 3; 
    
    select * from tb_funcionarios;
    
