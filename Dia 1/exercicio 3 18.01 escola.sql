-- 1 Crie um banco de dados para um registro de uma escola,
-- onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. -- 
create database escola;

use escola;

-- 2 Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos estudantes para se trabalhar com o serviço dessa escola. -- 
create table estudante(
	id int not null auto_increment,
    nome varchar (100 )not null,
    idade int not null,
    materia varchar (100 ) not null,
    serie int not null,
    nota int not null,
    primary key(id)
);

-- 3 Insira nesta tabela no mínimo 8 dados (registros). -- 
select * from estudante; 

insert into estudante(nome,idade,materia,serie,nota)
values('Samuca',15,'Matematica',9,10);

insert into estudante(nome,idade,materia,serie,nota)
values('Geovana',14,'Matematica',8,6);

insert into estudante(nome,idade,materia,serie,nota)
values('Carlos',12,'Matematica',7,4);

insert into estudante(nome,idade,materia,serie,nota)
values('Ayrton',15,'Matematica',9,9);

insert into estudante(nome,idade,materia,serie,nota)
values('Arthur',15,'Matematica',9,8);

insert into estudante(nome,idade,materia,serie,nota)
values('Joice',15,'Matematica',9,3);

insert into estudante(nome,idade,materia,serie,nota)
values('Bruna',15,'Matematica',9,0);

insert into estudante(nome,idade,materia,serie,nota)
values('Barbará',15,'Matematica',9,10);

-- 4 Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0. -- 
select id,nome from estudante where nota > 7;

-- 5 Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0 --
select id,nome from estudante where nota < 7;

-- 6 Ao término atualize um registro desta tabela através de uma query de atualização. --
update estudante set nota = 5 where id = 8;

