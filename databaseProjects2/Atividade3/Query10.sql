-- Etapa 10
SELECT nomeProduto, preco, marca, tb_categorias.nomeCategoria, tb_categorias.descricaoCategoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.idCategoria = tb_categorias.idCategoria
WHERE tb_categorias.nomeCategoria = "Medicação";