CREATE DATABASE School;

USE School;

CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(50),
    nota_final DECIMAL(4,2) NOT NULL,
    matricula DATE NOT NULL
);

INSERT INTO estudantes (nome, idade, turma, nota_final, matricula) VALUES
('Lucas Andrade', 16, '1A', 8.5, '2022-01-10'),
('Beatriz Santos', 15, '1A', 6.8, '2022-01-10'),
('Pedro Almeida', 17, '2B', 9.0, '2021-01-15'),
('Juliana Costa', 16, '2B', 7.5, '2021-01-15'),
('Marcos Lima', 15, '1B', 5.0, '2022-01-10'),
('Aline Rocha', 16, '3C', 8.0, '2020-01-12'),
('Renato Silva', 17, '3C', 4.9, '2020-01-12'),
('Carla Souza', 16, '2A', 7.9, '2021-01-15');

SELECT * FROM estudantes WHERE nota_final > 7;

SELECT * FROM estudantes WHERE nota_final < 7;

UPDATE estudantes SET nota_final = 7.2 WHERE id = 2;