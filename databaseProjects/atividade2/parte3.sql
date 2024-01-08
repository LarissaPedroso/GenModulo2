INSERT INTO tb_livraria(livro, autor, paginas, editora, preco)
VALUES
("Harry Potter e o Prisioneiro de Azkaban", "J.K.Rowling", 288, "Rocco", 69.90),
("Jogos Vorazes", "Suzzane Collins", 400, "Rocco", 64.90),
("1984", "George Orwell", 387, "Pe Da Letra", 17.99),
("Dom Quixote de La Mancha", "Miguel De Cervantes", 832, "Garnier", 169.00),
("O conto da Aia", "Margaret Atwood", 387, "Rocco", 59.90),
("A Maldição do Tigre", "Houck Collen", 368, "Porta Editora", 549.99),
("Game of Thronese", "George R.R. Martin", 4800, "Editora Leya", 750.99),
("The Lyrics", "Paul McCartney", 912,"Allen Lane", 665.76);

SELECT id as "Cod", livro as "Livro", autor as "Autor", paginas as "Páginas", preco as "Preço" FROM tb_livraria;
