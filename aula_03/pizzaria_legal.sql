CREATE DATABASE db_pizzaria_legal;
-- Crie um banco de dados para um serviço de uma Pizzaria
USE db_pizzaria_legal;
-- Crie a tabela tb_categorias e determine pelo menos 2 atributos,
CREATE TABLE tb_categorias(
id bigint auto_increment,
Tipo_pizza VARCHAR(255),
  descricao VARCHAR(255),
  primary key (id)
);

SELECT * FROM tb_categorias;

-- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias (Tipo_pizza, descricao) 
VALUES("salgada", "ingredientes salgados");
INSERT INTO tb_categorias (Tipo_pizza, descricao) 
VALUES("Doce", "ingredientes doces ");
INSERT INTO tb_categorias (Tipo_pizza, descricao) 
VALUES("vegana", "ingredientes sem derivados animal");
INSERT INTO tb_categorias (Tipo_pizza, descricao) 
VALUES("meio a meio ", "dois sabores");
INSERT INTO tb_categorias (Tipo_pizza, descricao) 
VALUES("Especial", "ingredientes exclusivos ");

-- Crie a tabela tb_pizzas e determine 4 atributos
CREATE TABLE tb_pizzas( 
	id bigint auto_increment,
    preco decimal (19,2) not null,
    tamanho varchar (5) not null,
    sabores varchar (255) not null,
    borda varchar (10) not null,
    id_categoria bigint,
    primary key (id),
    foreign key (id_categoria) references tb_categorias (id)
);

SELECT * FROM tb_pizzas;
-- Insira 8 registros na tabela tb_pizzas
INSERT INTO tb_pizzas (preco, tamanho, sabores, borda, id_categoria) 
VALUES(33.00, "G", "mussarela", "sem", 1);
INSERT INTO tb_pizzas (preco, tamanho, sabores, borda, id_categoria) 
VALUES(49.00, "P", "calabresa", "com", 1);
INSERT INTO tb_pizzas (preco, tamanho, sabores, borda, id_categoria) 
VALUES(60.00, "M", "Brigadeiro", "com", 2);
INSERT INTO tb_pizzas (preco, tamanho, sabores, borda, id_categoria) 
VALUES(100.00, "G", "Morango com chocolate", "com", 2);
INSERT INTO tb_pizzas (preco, tamanho, sabores, borda, id_categoria) 
VALUES(75.00, "M", "vagan", "sem", 3);
INSERT INTO tb_pizzas (preco, tamanho, sabores, borda, id_categoria) 
VALUES(95.00, "G", " frago e mussarela com brocolis", "com", 4);
INSERT INTO tb_pizzas (preco, tamanho, sabores, borda, id_categoria) 
VALUES(84.00, "M", "calabresa mussarela", "com", 4);
INSERT INTO tb_pizzas (preco, tamanho, sabores, borda, id_categoria) 
VALUES(98.00, "g", "a moda da casa", "com", 5);

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 45.00;
-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.

SELECT * FROM tb_pizzas WHERE sabores LIKE '%M%';

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas 
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id = tb_categorias.id;
