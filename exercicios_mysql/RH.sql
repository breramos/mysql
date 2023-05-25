CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_rh(
	id bigint auto_increment,
	nome varchar (255) not null,
    salario decimal,
    cargo varchar (255) not null,
    setor varchar (255) not null,
    horario time not null, 
    primary key (id)
);

SELECT * FROM tb_rh;

INSERT INTO tb_rh(nome, salario, cargo, setor, horario)
VALUES ("Sandra", 4.500, "Gerente", "vendas", "8:00:00");
INSERT INTO tb_rh(nome, salario, cargo, setor, horario)
VALUES ("Jennifer", 2.500, "Vendedora", "vendas", "10:00:00");
INSERT INTO tb_rh(nome, salario, cargo, setor, horario)
VALUES ("Danielle", 1.500, "Jovem aprediz", "vendas", "12:00:00");
INSERT INTO tb_rh(nome, salario, cargo, setor, horario)
VALUES ("Jessica", 2.000, "ADM", "RH", "09:00:00");
INSERT INTO tb_rh(nome, salario, cargo, setor, horario)
VALUES ("Jeanine", 1.000, "Jovem aprediz", "rh", "12:00:00");

ALTER TABLE tb_rh MODIFY salario decimal(6,3);

SELECT * FROM tb_rh WHERE salario > 2.000;
SELECT * FROM tb_rh WHERE salario < 2.000;

UPDATE tb_rh SET salario = 1.000  WHERE id = 3;