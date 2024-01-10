SELECT nomePersonagens, nivel, poderAtaque, poderDefesa, tb_classes.nomeClasse, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classesID = tb_classes.id;