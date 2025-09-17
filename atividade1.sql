CREATE DATABASE RH_Tech;
USE RH_Tech;

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    departamento VARCHAR(50),
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE NOT NULL
);

INSERT INTO colaboradores (nome, cargo, departamento, salario, data_admissao) VALUES
('Ana Souza', 'Analista de RH', 'Recursos Humanos', 4500.00, '2021-03-10'),
('João Silva', 'Desenvolvedor', 'TI', 5200.00, '2020-08-15'),
('Maria Oliveira', 'Assistente Administrativo', 'Administrativo', 1800.00, '2022-01-05'),
('Carlos Pereira', 'Gerente Financeiro', 'Financeiro', 7000.00, '2019-11-20'),
('Fernanda Brito', 'Estagiária', 'TI', 2500.00, '2025-12-01');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 2000.00 WHERE id = 3; 