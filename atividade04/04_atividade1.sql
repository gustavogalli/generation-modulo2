CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(15),
    magia BOOLEAN
);

INSERT INTO tb_classe (nome, magia) VALUES
("Arqueiro", false),
("Mago", true),
("Guerreiro", false),
("Anão", false),
("Goblin", true);

CREATE TABLE tb_personagens(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(10),
    ataque INT,
    defesa INT,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classe (id)
);

INSERT INTO tb_personagens (nome, ataque, defesa, id_classe) VALUES
("Legolas", 1000, 800, 1),
("Gandalf", 3000, 2500, 2),
("Aragorn", 2000, 1800, 3),
("Gimli", 1000, 1100, 4),
("Azog", 900, 400, 5),
("Boromir", 1500, 1200, 3),
("Saruman", 2900, 3000, 2),
("Sauron", 10000, 10000, 3);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "G%";
SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_personagens.id_classe = tb_classe.id;
SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_personagens.id_classe = tb_classe.id WHERE tb_classe.nome = "Guerreiro";