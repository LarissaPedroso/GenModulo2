CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nomePersonagens VARCHAR(255) NOT NULL,
    nivel INT,
    poderAtaque INT,
    poderDefesa INT,
    PRIMARY KEY (id)
);
ALTER TABLE tb_personagens ADD COLUMN classesID BIGINT;
