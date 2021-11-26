CREATE DATABASE db_cidade_das_frutas;
USE db_cidade_das_frutas;

CREATE TABLE tb_produto(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(15),
    preco DECIMAL(5, 2),
    organico boolean,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id)
);

CREATE TABLE tb_categoria(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM("Fruta", "Legume", "Verdura"),
    peso DECIMAL(5, 2)
);

select * from tb_categoria;

INSERT INTO tb_categoria (tipo, peso) VALUES
("Fruta", 110),
("Legume", 150),
("Verdura", 200),
("Fruta", 300),
("Legume", 350);

INSERT INTO tb_produto (nome, organico, preco, id_categoria) VALUES
("Maçã", false, 29.90, 1),
("Uva", false, 61.90, 4),
("Repolho", true, 28.90, 5),
("Beterraba", true, 44.90, 2),
("Alface", true, 79.90, 3),
("Couve", true, 28.90, 3),
("Espinafre", false, 65.90, 3),
("Melancia", false, 999.90, 4);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco > 3 AND preco < 60;
SELECT * FROM tb_produto WHERE nome LIKE "M%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.id_categoria = tb_categoria.id;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.id_categoria = tb_categoria.id WHERE organico = true;