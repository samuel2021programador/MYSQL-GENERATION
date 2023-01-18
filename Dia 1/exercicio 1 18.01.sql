create database exercicio1;

-- selecionando banco de dados--
-- 1 Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará 
-- com as informações dos colaboradores desta empresa.  -- 
use exercicio1;
-- 2 Crie uma tabela de colaboradores e determine 5 atributos 
-- relevantes dos colaboradores para se trabalhar com o serviço deste RH. --
CREATE TABLE colaboradores (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    salario DOUBLE NOT NULL,
    cargo VARCHAR(50),
    setor VARCHAR(30),
    idade int not null,
    PRIMARY KEY (id)
);

select * from colaboradores;
-- 3 Insira nesta tabela no mínimo 5 dados (registros). --
insert into colaboradores(nome,salario,cargo,setor,idade)
values('Samuca',6000.00,'Pleno','Confiabilidade',19);

insert into colaboradores(nome,salario,cargo,setor,idade)
values("Geovana",5000.00,"Junior","Confiabilidade",17);

insert into colaboradores(nome,salario,cargo,setor,idade)
values("Ryan",4000.00,"Junior","Confiabilidade",20);

----- 4 - Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000 -------
select * from colaboradores where salario > 2000;
-- 5 Faça um select que retorne todes os colaboradores com o salário menor do que 2000 --
select nome,salario from colaboradores where salario < 2000;

-- 6 Ao término atualize um registro desta tabela através de uma query de atualização --
update colaboradores set salario = 100 where id = 2;