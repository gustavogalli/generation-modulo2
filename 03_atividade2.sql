CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20),
    marca VARCHAR(15),
    valor DECIMAL(6, 2),
    qtde_estoque INT
);

INSERT INTO produtos (nome, marca, valor, qtde_estoque) VALUES
("TV", "Samsung", 1299.99, 65),
("Celular K10", "LG", 659.90, 34),
("Geladeira", "Brastemp", 899.00, 14),
("Sofá", "ConfortLar", 5200.00, 5),
("Mesa", "Madeirart", 790.00, 8),
("Cadeira Gamer", "Shazam", 1500.00, 16),
("Notebook", "Dell", 2349.90, 21),
("Mouse inteligente", "Dell", 129.90, 17);

SELECT * FROM produtos WHERE valor > 500;

SELECT * FROM produtos WHERE valor < 500;

UPDATE produtos SET marca = "MadeirArt" WHERE id = 5;

SELECT * FROM produtos;