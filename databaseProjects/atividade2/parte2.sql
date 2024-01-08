CREATE TABLE tb_livraria (
    id BIGINT AUTO_INCREMENT,
    livro VARCHAR(175) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    paginas int,
    editora VARCHAR(100),
    preco DECIMAL(6,2),
    PRIMARY KEY (id)
);