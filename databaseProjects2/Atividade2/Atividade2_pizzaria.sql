-- Etapa 1
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id INT AUTO_INCREMENT PRIMARY KEY,
nomeCategoria VARCHAR(100) NOT NULL,
disponivel BOOLEAN
);

-- Etapa 2
CREATE TABLE tb_pizzas(
id INT AUTO_INCREMENT PRIMARY KEY,
nomePizza VARCHAR(100) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
borda BOOLEAN,
descricao TEXT
);
-- Tive que alterar a tabela, pois coloquei o tipo como BOOLEAN, porém percebi que VARCHAR seria melhor
ALTER TABLE tb_pizzas MODIFY borda VARCHAR(50);

-- Etapa 3
ALTER TABLE tb_pizzas ADD COLUMN categoriasID BIGINT;
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoriasID) REFERENCES tb_categorias(id);
ALTER TABLE tb_pizzas MODIFY categoriasID INT;
-- Tive que alterar a tabela, pois o ID de categorias era INT e na linha 23 eu coloquei como BIGINT

-- Etapa 4
INSERT INTO tb_categorias(nomeCategoria, disponivel)
VALUES
("Salgada", TRUE),
("Doce", TRUE),
("Vegana Doce", TRUE),
("Vegana Salgada", TRUE),
("Especial", False);
-- SELECT * FROM tb_categorias;

-- Etapa 5
INSERT INTO tb_pizzas(nomePizza, preco, borda, categoriasID)
VALUES
("Marguerita", 50.00, "Catupiry/Cheddar", 1),
("Mussarela", 55.00, "Opção não disponível", 4),
("Calabresa", 45.00, "Catupiry/Cheddar", 1),
("Mista", 90.00, "Catupiry/Cheddar", 5),
("Bacon", 120.00, "Catupiry/Cheddar", 1),
("Brigadeiro", 70.00, "Opção não disponível", 2),
("Romeu e Julieta", 60.00, "Opção não disponível", 3),
("Acelga", 40.00, "Opção não disponível", 4);
-- SELECT * FROM tb_pizzas;

-- Etapa 6
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Etapa 7
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 and 100.00;

-- Etapa 8
SELECT * FROM tb_pizzas WHERE nomePizza LIKE "%m%";

-- Etapa 9
SELECT nomePizza, preco, borda, descricao, tb_categorias.nomeCategoria, tb_categorias.disponivel
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriasID = tb_categorias.id;

-- Etapa 10
SELECT nomePizza, preco, borda, descricao, tb_categorias.nomeCategoria, tb_categorias.disponivel
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriasID = tb_categorias.id
WHERE tb_categorias.nomeCategoria = "Vegana Salgada";
