USE db_quitanda;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
	nome varchar(255) not null,
    quantidade int,
    preco decimal(6,2) not null,
    primary key (id)
    );
    
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, quantidade, preco)
values("laranja", 50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values("banana", 200, 12.80);
INSERT INTO tb_produtos(nome, quantidade, preco)
values("uva", 1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values("pêra", 300, 2.99);
INSERT INTO tb_produtos(nome, quantidade, preco)
values("tomate italiano", 70, 9.99);

-- Buscas específicas

SELECT * FROM tb_produtos 
WHERE preco != 3;

-- Desabilitar a segurança no SQL
SET SQL_SAFE_UPDATES = 0;

-- Update é para atualizar informações daentro dos campos das colunas
-- Instrução Update indica a tabela que eu quero atualizar
-- Set indica qual informação nova eu quero passar
-- Where faz a referência de qual linha o SQL vai se basear para fazer esse update
UPDATE tb_produtos
SET preco = 5.00
WHERE id = 1;

-- Deletar alguma linha ou deletar informações específicas dentro dos campos da coluna
-- Delete apaga dados
DELETE FROM tb_produtos WHERE id = 6;

-- Altera a condição da coluna que foi colocada lá na instrução Create
-- Indica que o decimal terá 6 casas antes da vírgula e 2 depois
ALTER TABLE tb_produtos MODIFY preco decimal(6,2); 

-- Adicionar outra coluna
ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

-- Deletar uma coluna específica. 
-- Instrução Drop é relacionada a grandes escalas, tipo tabelas, banco de dados, colunas, coisas grandes
-- Drop apaga estrutura
ALTER TABLE tb_produtos DROP descricao;

-- Alterar nome da coluna
ALTER TABLE tb_produtos CHANGE nome nomedoproduto VARCHAR(255);

-- Alterar novamente o nome da coluna
ALTER TABLE tb_produtos CHANGE nomedoproduto nome_produto VARCHAR(255);

