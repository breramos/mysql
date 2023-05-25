CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(255),
  PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(255),
  preco DECIMAL(10,2) NOT NULL,
  estoque INT NOT NULL,
  categoria_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
  ('Medicamentos', 'Produtos para saúde e tratamento de doenças'),
  ('Higiene Pessoal', 'Produtos para higiene e cuidados pessoais'),
  ('Cosméticos', 'Produtos de beleza e cuidados com a pele'),
  ('Suplementos', 'Produtos para complementar a dieta'),
  ('Alimentos', 'Produtos alimentícios saudáveis');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES
  ('Dipirona', 'Analgésico e antitérmico', 5.99, 100, 1),
  ('Sabonete Dove', 'Hidratante para o corpo', 3.50, 50, 2),
  ('Protetor Solar Neutrogena', 'Protege contra os raios UVA e UVB', 29.99, 30, 3),
  ('Multivitamínico Centrum', 'Complementa a dieta com vitaminas e minerais', 79.90, 20, 4),
  ('Barra de Cereal Nutry', 'Snack saudável para a pausa do dia', 2.49, 200, 5),
  ('Creme para o Rosto Nivea', 'Hidratante facial', 23.50, 15, 3),
  ('Shampoo Seda', 'Limpa e hidrata o cabelo', 10.00, 40, 2),
  ('Colágeno em pó Sanavita', 'Suplemento alimentar para melhorar a pele e articulações', 55.90, 10, 4);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.nome, tb_produtos.descricao, tb_produtos.preco, tb_produtos.estoque, tb_categorias.nome 
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.descricao, tb_produtos.preco, tb_produtos.estoque, tb_categorias.nome 
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Cosméticos';