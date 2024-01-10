-- Etapa 2 e 3
CREATE TABLE tb_produtos(
idProdutos INT AUTO_INCREMENT PRIMARY KEY,
nomeProduto VARCHAR(70) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
marca VARCHAR(50),
descricaoProduto TEXT,
idCategoria INT,
FOREIGN KEY (idCategoria) REFERENCES tb_categorias(idCategoria)
);
