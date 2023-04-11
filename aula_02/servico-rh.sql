CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
	nome varchar(255) not null,
    idade int,
    cargo varchar(255) not null,
    email varchar(255) not null,
    salario decimal(6,2) not null,
    primary key (id)
    );
    
SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, idade, cargo, email, salario)
values("Pedro da Silva Santos", 42, "Gerente", "pedrosilva@empresa.com.br", 4000.00);

INSERT INTO tb_colaboradores(nome, idade, cargo, email, salario)
values("Joaquim José Nascimento", 35, "Analista de sistemas", "joaquimjose@empresa.com.br", 3600.00);

INSERT INTO tb_colaboradores(nome, idade, cargo, email, salario)
values("Roberta Cruz Sousa", 50 , "Contadora", "robertasousa@empresa.com.br", 5000.00);

INSERT INTO tb_colaboradores(nome, idade, cargo, email, salario)
values("Alberto Ferreira Penteado", 24, "Auxiliar de Serviços Gerais", "albertoferreira@empresa.com.br", 1800.00);

INSERT INTO tb_colaboradores(nome, idade, cargo, email, salario)
values("Adélia Pereira Sampaio", 22, "Estoquista", "adeliasampaio@empresa.com.br", 1500.00);

INSERT INTO tb_colaboradores(nome, idade, cargo, email, salario)
values("Giovanna Araújo Soares", 29, "Auxiliar administrativo", "giovannasoares@empresa.com.br", 2000.00);
    
SELECT * FROM tb_colaboradores
WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores
WHERE salario < 2000.00;

UPDATE tb_colaboradores
SET cargo = "Analista de Sistemas"
WHERE id = 2;

UPDATE tb_colaboradores
SET cargo = "Auxiliar Administrativo"
WHERE id = 6;

