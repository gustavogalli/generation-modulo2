CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

CREATE TABLE tb_produto(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(15),
    preco DECIMAL(5, 2),
    eletrico boolean,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id)
);

CREATE TABLE tb_categoria(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM("Hidráulico", "Iluminação", "Ferramentas", "Jardim"),
    peso DECIMAL(5, 2)
);

select * from tb_categoria;

INSERT INTO tb_categoria (tipo, peso) VALUES
("Hidráulico", 300),
("Iluminação", 250),
("Ferramentas", 450),
("Jardim", 350),
("Ferramentas", 700);

INSERT INTO tb_produto (nome, eletrico, preco, id_categoria) VALUES
("Torneira", false, 39.90, 1),
("Lustre", true, 121.90, 2),
("Serrote", false, 78.90, 3),
("Pá", false, 14.90, 4),
("Tico-tico", true, 99.90, 5),
("Martelo", false, 36.90, 3),
("Banco", false, 215.90, 4),
("Lâmpada", true, 9.90, 2);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco > 3 AND preco < 60;
SELECT * FROM tb_produto WHERE nome LIKE "T%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.id_categoria = tb_categoria.id;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.id_categoria = tb_categoria.id WHERE eletrico = true;