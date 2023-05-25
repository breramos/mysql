CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_ecommerce (
id bigint auto_increment,
nome varchar (255) not null ,
preco decimal not null, 
quantidade int,
marca varchar (255) not null,
Datadoproduto date not null,
primary key (id)
);

SELECT * FROM tb_ecommerce;

INSERT INTO tb_ecommerce(nome, preco, quantidade, marca, Datadoproduto)
VALUES ("TV", 3.400, 100, "samsung", "2021-10-09");
INSERT INTO tb_ecommerce(nome, preco, quantidade, marca, Datadoproduto)
VALUES ("celular", 5.400, 50, "samsung", "2020-10-05");
INSERT INTO tb_ecommerce(nome, preco, quantidade, marca, Datadoproduto)
VALUES ("TV", 3.000, 100, "LG", "2023-05-09");
INSERT INTO tb_ecommerce(nome, preco, quantidade, marca, Datadoproduto)
VALUES ("Notbook", 4.000, 100, "postivo", "2019-10-09");
INSERT INTO tb_ecommerce(nome, preco, quantidade, marca, Datadoproduto)
VALUES ("Notbook", 5.000, 100, "Samsung", "2023-01-10");
INSERT INTO tb_ecommerce(nome, preco, quantidade, marca, Datadoproduto)
VALUES ("Carregador", 300, 100, "tubo", "2019-10-09");
INSERT INTO tb_ecommerce(nome, preco, quantidade, marca, Datadoproduto)
VALUES ("Carregador", 150, 100, "Samsung", "2019-07-09");
INSERT INTO tb_ecommerce(nome, preco, quantidade, marca, Datadoproduto)
VALUES ("Fone de Ouvido", 50, 100, "liga tudo", "2022-10-09");

ALTER TABLE tb_ecommerce MODIFY preco decimal(4,3);

SELECT * FROM tb_ecommerce WHERE preco > 500;
SELECT * FROM tb_ecommerce WHERE preco < 500;

UPDATE tb_ecommerce SET preco = 3.00  WHERE id = 6;