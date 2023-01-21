create database db_generation_game_online;

use db_generation_game_online;

-- 1 Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, 
-- relevantes para classificar os personagens do Game Online. --
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    poder VARCHAR(50) NOT NULL,
    raca VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

-- 4 Insira 5 registros na tabela tb_classes.  -- 
insert into tb_classes(poder,raca)
values('Super Força','Ogro');

insert into tb_classes(poder,raca)
values('Furtividade','Goblin');

insert into tb_classes(poder,raca)
values('Voar/Fogo','Garcula');

insert into tb_classes(poder,raca)
values('Teletranporte','Noturno');

insert into tb_classes(poder,raca)
values('Feitiçaria','Bruxo');

SELECT * FROM tb_classes;

-- 2 Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, 
-- relevantes aos personagens do Game Online.
-- 3 Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens. --
CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    ataque BIGINT(50) NOT NULL,
    defesa BIGINT(50) NOT NULL,
    vida INT(50) NOT NULL,
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY(classe_id) references tb_classes(id) -- criando chave secundária--
);

--  5 Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira 
-- para criar a relação com a tabela tb_classes. -- 
insert into tb_personagens (nome,ataque,defesa,vida,classe_id)
values('Sherek',2000,1800,3000,1);

insert into tb_personagens (nome,ataque,defesa,vida,classe_id)
values('Smigol',300,500,1300,2);

insert into tb_personagens (nome,ataque,defesa,vida,classe_id)
values('Dragon',4000,5000,5500,3);

insert into tb_personagens (nome,ataque,defesa,vida,classe_id)
values('Blecaute',1660,1400,2000,4);

insert into tb_personagens (nome,ataque,defesa,vida,classe_id)
values('Mike',1200,1600,1500,5);

insert into tb_personagens (nome,ataque,defesa,vida,classe_id)
values('Fiona',2000,1800,3000,1);

insert into tb_personagens (nome,ataque,defesa,vida,classe_id)
values('Mister',1200,1600,1500,5);

insert into tb_personagens (nome,ataque,defesa,vida,classe_id)
values('Tempestade',3000,4000,4500,3);

SELECT * FROM tb_personagens;

-- 6 Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000. --
select id,nome,ataque from tb_personagens where ataque > 2000;

-- 7 Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000. -- 
select id,nome,defesa from tb_personagens where defesa between 1000 and 2000 order by nome,defesa desc;

-- 8 Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.--
select id,nome,defesa from tb_personagens where nome like '%c%';

-- 9 Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.-- 
select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id where raca = 'Ogro';

-- 10 Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela
--  tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens
-- da classe dos arqueiros). -- 

select nome,raca from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id where raca = 'Ogro';