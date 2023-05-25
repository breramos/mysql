CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_escola(
id bigint auto_increment,
nome varchar (255) not null,
nota int not null, 
serie varchar (30) not null,
idade int not null, 
genero varchar(10) not null,
primary key (id)
);

SELECT * FROM tb_escola;

INSERT INTO tb_escola(nome, nota, serie, idade, genero)
VALUES ("Luisa", 8, "5 serie", 11, "F");
INSERT INTO tb_escola(nome, nota, serie, idade, genero)
VALUES ("Joao", 5, "5 serie", 12, "M");
INSERT INTO tb_escola(nome, nota, serie, idade, genero)
VALUES ("gabriel", 10, "5 serie", 11, "M");
INSERT INTO tb_escola(nome, nota, serie, idade, genero)
VALUES ("Joaquim", 9, "2 serie", 7, "M");
INSERT INTO tb_escola(nome, nota, serie, idade, genero)
VALUES ("Joana", 3, "2 serie", 7, "F");

SELECT * FROM tb_escola WHERE nota > 7.0;
SELECT * FROM tb_escola WHERE nota < 7.0;

UPDATE tb_escola SET genero = "outros"  WHERE id = 3;