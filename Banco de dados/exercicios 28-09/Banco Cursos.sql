create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
	id_categoria int not null auto_increment,
    tipo_categoria varchar(50),
    carga_horaria int,
    primary key (id_categoria)
);



create table tb_curso(
	id_curso int not null auto_increment,
	nome_curso varchar(50),
	preco decimal(10,2),
    duracao varchar(50),
    id_categoria int,
    primary key(id_curso),
    constraint foreign key (`id_categoria`) references tb_categoria(`id_categoria`)
);

insert into tb_categoria (tipo_categoria,carga_horaria)
values('Exatas',2990),
	  ('Humanas',3990),
      ('Biológicas',2490);
      

insert into tb_curso(nome_curso,preco,duracao,id_categoria)
values('Analise e Desenvolvimento de Sistemas',30.00,'40 horas/semana',1),
	  ('Matemática',25.00,'35 horas/semana',1),
      ('Sociologia',35.00,'35 horas/semana',2),
      ('História',55.00,'35 horas/semana',2),
      ('Biomedicina',54.00,'35 horas/semana',3),
      ('Enfermagem',25.00,'35 horas/semana',3);


select * from tb_curso where preco > 50.00;

select * from tb_curso where preco > 3 and preco <60 ;

select * from tb_curso where  nome_curso like 'A%';

select * from tb_curso 
inner join tb_categoria on 
tb_curso.id_categoria = tb_categoria.id_categoria;

select * from tb_curso where id_categoria =3;

select * from tb_curso 
inner join tb_categoria on 
tb_curso.id_categoria=3 and tb_categoria.id_categoria =3;


