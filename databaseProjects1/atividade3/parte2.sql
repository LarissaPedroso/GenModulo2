CREATE TABLE tb_escola(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
disciplina VARCHAR(100) NOT NULL,
professor VARCHAR(255) NOT NULL,
notas DECIMAL(6,2),
faltas INT,
PRIMARY KEY(id)
);
