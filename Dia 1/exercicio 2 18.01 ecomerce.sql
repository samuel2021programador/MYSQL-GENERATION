-- Crie um banco de dados para um e-commerce -- 
-- onde o sistema trabalhará com as informações dos produtos deste e-commerce -- 

create database SaturnoInvestidor; --  1 criando banco  --

use SaturnoInvestidor; -- selecionando banco  --

-- 2 Crie uma tabela de produtos e determine 5 atributos--
-- relevantes dos produtos para se trabalhar com o serviço deste e-commerce.--
CREATE TABLE produtos (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    valor DOUBLE NOT NULL,
    setor VARCHAR(100) NOT NULL,
    descrição VARCHAR(200) NOT NULL,
    slogan VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
)

-- 3 Insira nesta tabela no mínimo 8 dados (registros) --
select * from produtos;

insert into produtos (nome,valor,setor,descrição,slogan)
values('SaturnoPhone',7000,'eletronicos','Tecnologia de Saturno','Aparelhos Saturno Inovações de outro mundo');

insert into produtos (nome,valor,setor,descrição,slogan)
values('SaturnoFone',490,'eletronicos','Fones de outro mundo','Aparelhos Saturno Inovações de outro mundo');

insert into produtos (nome,valor,setor,descrição,slogan)
values('CapinhasSaturno',100,'eletronicos','Proteção de outro mundo','Aparelhos Saturno Inovações de outro mundo');

insert into produtos (nome,valor,setor,descrição,slogan)
values('SSS',170.000,'eletronicos','Moto voadora','Aparelhos Saturno Inovações de outro mundo');

insert into produtos (nome,valor,setor,descrição,slogan)
values('UNIVERSESSS',700.000,'eletronicos','Carro voador','Aparelhos Saturno Inovações de outro mundo');

insert into produtos (nome,valor,setor,descrição,slogan)
values('SATURNO7',7000,'eletronicos','Game de outro mundo','Aparelhos Saturno Inovações de outro mundo');

insert into produtos (nome,valor,setor,descrição,slogan)
values('TenisWold',200.000,'eletronicos','Tenis flutuante','Aparelhos Saturno Inovações de outro mundo');

insert into produtos (nome,valor,setor,descrição,slogan)
values('SaturnoCoins',1000,'eletronicos','Moeda de Saturno','Aparelhos Saturno Inovações de outro mundo');

-- 4 - Faça um SELECT que retorne todos os produtos com o valor maior do que 500 --
select id,nome from produtos where valor > 500;

-- 5 -Faça um SELECT que retorne todes os produtos com o valor menor do que 500 -- 
select id,nome from produtos where valor < 500;

-- 6 Ao término atualize um registro desta tabela através de uma query de atualização -- 
update produtos set valor = 100 where id = 8;
 