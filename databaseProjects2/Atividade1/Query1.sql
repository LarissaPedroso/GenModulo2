CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
nomeClasse VARCHAR(255) NOT NULL,
descricao TEXT,
PRIMARY KEY (id)
);