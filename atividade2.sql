CREATE DATABASE E_commerce;
USE E_commerce;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(500) NOT NULL,
    categoria VARCHAR(100),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    fornecedor VARCHAR(150)
);

INSERT INTO produtos (nome, categoria, preco, estoque, fornecedor) VALUES 
('Notebook Dell', 'Informática', 3500.00, 10, 'Dell'),
('Mouse Gamer', 'Acessórios', 150.00, 50, 'Logitech'),
('Teclado Mecânico', 'Acessórios', 420.00, 30, 'HyperX'),
('Monitor 24"', 'Informática', 900.00, 20, 'Samsung'),
('Smartphone Galaxy', 'Telefonia', 2800.00, 15, 'Samsung'),
('Fone Bluetooth', 'Acessórios', 250.00, 40, 'JBL'),
('Cadeira Gamer', 'Móveis', 1200.00, 8, 'DXRacer'),
('HD Externo 1TB', 'Armazenamento', 480.00, 25, 'Seagate');

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET  preco = 460.00 WHERE id = 8;