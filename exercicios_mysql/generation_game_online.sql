CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;
CREATE TABLE tb_classes (
  id INT AUTO_INCREMENT,
  nome VARCHAR(50),
  descricao VARCHAR(200),
  primary key (id)
);

SELECT * FROM tb_classes;
INSERT INTO tb_classes (nome, descricao) 
VALUES('Guerreiro', 'Personagem especializado em combate corpo a corpo.');
INSERT INTO tb_classes (nome, descricao) 
VALUES("Mago", "Personagem especializado em magias e feitiços.");
INSERT INTO tb_classes (nome, descricao) 
VALUES("Arqueiro", "Personagem especializado em ataques à distância.");
INSERT INTO tb_classes (nome, descricao) 
VALUES("Ladrão", "Personagem especializado em furtividade e roubo.");
INSERT INTO tb_classes (nome, descricao) 
VALUES("Cavaleiro", "Personagem especializado em montaria e combate montado.");

CREATE TABLE tb_personagens (
  id INT AUTO_INCREMENT,
  nome VARCHAR(255),
  poder_ataque INT,
  poder_defesa INT,
  id_classe INT,
  primary key (id),
  FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe)
values ("vrodou", 1000, 500, 1);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe)
values ("magia", 5000, 4500, 2);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe)
values ("possio", 567, 2220, 3);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe)
values ("agua", 3222, 54444, 4);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe)
values ("fenix", 7000, 800, 5);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe)
values ("magouuu", 8000, 500, 6);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe)
values ("oiu", 900, 4000, 1);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe)
values ("vjuuu", 9000, 200, 3);


SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%ou%';

SELECT tb_personagens.*, tb_classes.nome AS classe_nome
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;

SELECT tb_personagens.*, tb_classes.nome AS classe_nome
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.nome = "mago";

