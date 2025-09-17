CREATE DATABASE School;

USE School;

CREATE TABLE estudantes (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    turma VARCHAR(50) NOT NULL,
    nota_final DECIMAL(4,2) NOT NULL
);

INSERT INTO estudantes (nome, idade, turma, nota_final) VALUES
('Lucas Andrade', 16, '72', 8.5),
('Beatriz Santos', 15, '72', 6.8),
('Pedro Almeida', 17, '09', 9.0),
('Juliana Costa', 16, '09', 7.5),
('Marcos Lima', 15, '65', 5.0),
('Aline Rocha', 16, '89', 8.0),
('Renato Silva', 17, '89', 4.9),
('Carla Souza', 16, '09', 7.9);

SELECT * FROM estudantes WHERE nota_final > 7;

SELECT * FROM estudantes WHERE nota_final < 7;

UPDATE estudantes SET nota_final = 7.2 WHERE id = 2;