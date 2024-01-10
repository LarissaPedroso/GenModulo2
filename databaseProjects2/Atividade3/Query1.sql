-- Etapa 1
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
idCategoria INT AUTO_INCREMENT PRIMARY KEY,
nomeCategoria VARCHAR(100) NOT NULL,
descricaoCategoria TEXT
);
