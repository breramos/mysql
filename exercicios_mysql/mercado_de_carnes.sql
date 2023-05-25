CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(100),
    PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
    ('Carnes Bovinas', 'Cortes bovinos diversos'),
    ('Carnes Suínas', 'Cortes suínos diversos'),
    ('Aves', 'Frangos e cortes de aves diversas'),
    ('Peixes', 'Peixes frescos e frutos do mar'),
    ('Frutas', 'Frutas diversas');
CREATE TABLE tb_produtos (
    id_produto INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    descricao_produto VARCHAR(100),
    preco_produto DECIMAL(8,2) NOT NULL,
    quantidade_produto INT NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco_produto, quantidade_produto, id_categoria) VALUES
    ('Picanha', 'Corte nobre de carne bovina', 69.90, 20, 1),
    ('Coxinha da Asa', 'Corte de frango para churrasco', 7.90, 50, 3),
    ('Salmão', 'Peixe fresco importado', 120.00, 10, 4),
    ('Banana Prata', 'Fruta doce e versátil', 3.99, 100, 5),
    ('Lombo Suíno', 'Corte magro de carne suína', 32.90, 30, 2),
    ('Sardinha', 'Peixe fresco nacional', 9.99, 40, 4),
    ('Abacaxi', 'Fruta cítrica e refrescante', 6.50, 50, 5),
    ('Cupim', 'Corte de carne bovina para churrasco', 55.00, 15, 1);
    
    SELECT * FROM tb_produtos WHERE preco_produto > 50.00;

-- Retorna todos os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE preco_produto BETWEEN 50.00 AND 150.00;

-- Retorna todos os produtos que possuam a letra C no atributo nome
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';


SELECT tb_produtos.nome_produto, tb_produtos.preco_produto, tb_categorias.nome_categoria 
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;


SELECT tb_produtos.nome_produto, tb_produtos.preco_produto, tb_categorias.nome_categoria 
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;




