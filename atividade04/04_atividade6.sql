CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE tb_curso(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(15),
    duracao int,
    instrutor VARCHAR(15),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id)
);

CREATE TABLE tb_categoria(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    stack ENUM("Front-end", "Back-end"),
    longo boolean
);

INSERT INTO tb_categoria (stack, longo) VALUES
("Front-end", true),
("Back-end", true),
("Front-end", false),
("Back-end", false),
("Front-end", true);

INSERT INTO tb_curso (nome, duracao, instrutor, id_categoria) VALUES
("HTML", 40, "Guanabara", 3),
("Python", 80, "Guanabara", 2),
("CSS", 80, "Alura", 1),
("Java", 120, "Cod3r", 2),
("JavaScript", 120, "Cod3r", 5),
("Git", 40, "Cod3r", 4),
("GitHub", 40, "Alura", 4),
("Angular", 120, "Cod3r", 1);

SELECT * FROM tb_curso WHERE duracao > 50;
SELECT * FROM tb_curso WHERE duracao > 39 AND duracao < 81;
SELECT * FROM tb_curso WHERE nome LIKE "J%";
SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_curso.id_categoria = tb_categoria.id;
SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_curso.id_categoria = tb_categoria.id WHERE longo = true;