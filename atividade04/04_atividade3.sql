CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_produto(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(15),
    marca VARCHAR(10),
    preco DECIMAL(5, 2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id)
);

CREATE TABLE tb_categoria(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    controlado boolean,
    peso DECIMAL(5, 2)
);

INSERT INTO tb_categoria (controlado, peso) VALUES
(true, 110),
(false, 90),
(false, 75),
(true, 85),
(false, 100);

INSERT INTO tb_produto (nome, marca, preco, id_categoria) VALUES
("Aspirina", "BioGen", 9.90, 3),
("Resfenol", "InGrip", 51.90, 2),
("Doril", "InGrip", 20.90, 3),
("Advil", "NeoQmq", 39.90, 1),
("Viagra", "Bayer", 69.90, 2),
("Rinosoro", "Rinosoro", 29.90, 4),
("Preservativo", "Olla", 75.90, 4),
("Termômetro", "Bayer", 109.90, 5);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco > 3 AND preco < 60;
SELECT * FROM tb_produto WHERE nome LIKE "A%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.id_categoria = tb_categoria.id;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.id_categoria = tb_categoria.id WHERE controlado = false;