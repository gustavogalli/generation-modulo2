CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(10),
    tamanho VARCHAR(10)
);

CREATE TABLE tb_pizza(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(10),
    valor DECIMAL(5, 2),
    vegetariana boolean,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id)
);

INSERT INTO tb_categoria (categoria, tamanho) VALUES
("Salgada", "Grande"),
("Salgada", "Pequena"),
("Salgada", "Brotinho"),
("Doce", "Grande"),
("Doce", "Pequena");

INSERT INTO tb_pizza (sabor, valor, vegetariana, id_categoria) VALUES
("Calabresa", 25.99, false, 1),
("Muçarela", 22.99, true, 1),
("Portuguesa", 29.99, false, 2),
("Marguerita", 17.99, true, 3),
("Frango", 29.99, false, 2),
("Requeijão", 39.90, true, 2),
("Prestígio", 39.99, true, 4),
("Chocolate", 29.99, true, 5);


SELECT * FROM tb_pizza WHERE valor > 45;
SELECT * FROM tb_pizza WHERE valor > 29 AND valor < 60;
SELECT * FROM tb_pizza WHERE sabor LIKE "C%";
SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.id_categoria = tb_categoria.id;
SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.id_categoria = tb_categoria.id WHERE tb_categoria.tamanho = "Pequena";