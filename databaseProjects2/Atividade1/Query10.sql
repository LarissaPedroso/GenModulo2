SELECT nomePersonagens, nivel, poderAtaque, poderDefesa, tb_classes.nomeClasse 
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classesID = tb_classes.id
WHERE tb_classes.nomeClasse = "Arqueiro";
