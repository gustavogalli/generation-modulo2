CREATE DATABASE empresa;
USE empresa;

CREATE TABLE funcionaries(
	matricula INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40),
    sexo ENUM('M', 'F'),
    salario DECIMAL(7,2),
    setor VARCHAR(20)
);

INSERT INTO funcionaries (nome, sexo, salario, setor) VALUES ("Gustavo Galli", "M", 1000.00, "TI");
INSERT INTO funcionaries (nome, sexo, salario, setor) VALUES ("Michelle Souza", "F", 1400.00, "TI");
INSERT INTO funcionaries (nome, sexo, salario, setor) VALUES ("Gustavo Boaz", "M", 1250.00, "Recursos Humanos");
INSERT INTO funcionaries (nome, sexo, salario, setor) VALUES ("Anderson Abreu", "M", 2500.00, "Financeiro");
INSERT INTO funcionaries (nome, sexo, salario, setor) VALUES ("Ana Pardo", "F", 11370.00, "CEO");

SELECT * FROM funcionaries WHERE salario > 2000;
SELECT * FROM funcionaries WHERE salario < 2000;

UPDATE funcionaries SET salario = 3000.00 WHERE matricula = 3;

SELECT * FROM funcionaries;