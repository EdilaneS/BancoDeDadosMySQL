create database db_escola;

use db_escola;

create table tb_aluno(
	id bigint(5) primary key auto_increment,
    nome varchar(50),
    rg varchar(50),
    turma varchar(20),
    nota double
);

insert into tb_aluno(nome,rg,turma,nota) values ("Carol","674868392-7","turmaA",7.5);
insert into tb_aluno(nome,rg,turma,nota) values ("Carlos","674868392-7","turmaB",5.5);
insert into tb_aluno(nome,rg,turma,nota) values ("Rafael","374866792-7","turmaC",4.5);
insert into tb_aluno(nome,rg,turma,nota) values ("Augusto","874887692-7","turmaD",6.5);
insert into tb_aluno(nome,rg,turma,nota) values ("Maria","774863492-7","turmaA",3.0);
insert into tb_aluno(nome,rg,turma,nota) values ("Camila","674868392-7","turmaB",7.0);
insert into tb_aluno(nome,rg,turma,nota) values ("João","744868392-7","turmaC",5.0);
insert into tb_aluno(nome,rg,turma,nota) values ("Vitor","974868392-7","turmaD",2.5);

select * from tb_aluno where nota > 7.0;
select * from tb_aluno where nota < 7.0;

update tb_aluno set rg="94657839-6" where id=8;

drop table tb_aluno;

select * from tb_aluno;
