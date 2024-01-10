INSERT INTO tb_escola(nome, disciplina, professor, notas, faltas)
VALUES
("Alice", "Bilogia", "Diego", 2.0, 2),
("Carlos", "Matemática", "Johnnata", 3.0, 10),
("Tiago", "História", "Giovanni", 8.0, 50),
("Luan", "Português", "Beatriz", 9.0, 11),
("Isabella", "Inglês", "Larissa", 9.0, 3),
("Paula", "Artes", "Amanda", 7.5, 7),
("Hilda", "Música", "Andréa", 6.5, 12),
("Roberta", "Geografia", "Otavio", 4.5, 9);

SELECT * FROM tb_escola ORDER BY nome ASC; 