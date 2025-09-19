CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
    descricao VARCHAR(500) NOT NULL,
    faixa_preco VARCHAR(100)
);

CREATE TABLE tb_pizzas (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
    categorias_id BIGINT NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    descricao VARCHAR(500) NOT NULL,
    tamanho VARCHAR(100) NOT NULL,
    CONSTRAINT fk_categorias FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (nome, descricao, faixa_preco) VALUES
('Salgadas', 'Pizzas com recheios salgados tradicionais', 'Econômica'),
('Doces', 'Pizzas com chocolate, frutas e coberturas doces', 'Médio'),
('Veganas', 'Pizzas sem ingredientes de origem animal', 'Médio'),
('Premium', 'Pizzas com ingredientes especiais e importados', 'Alto'),
('Tradicionais', 'Pizzas clássicas como mussarela, calabresa e portuguesa', 'Econômica');

INSERT INTO tb_pizzas (nome, categorias_id, valor, descricao, tamanho) VALUES
('Calabresa', 1, 35.90, 'Mussarela, calabresa fatiada e cebola', 'Média'),
('Chocolate com Morango', 2, 40.50, 'Chocolate derretido, morangos frescos e chantilly', 'Grande'),
('Marguerita Vegana', 3, 38.00, 'Tomate, manjericão fresco e queijo vegano', 'Média'),
('Quatro Queijos Premium', 4, 105.00, 'Mussarela, gorgonzola, provolone e parmesão', 'Grande'),
('Mussarela', 5, 30.00, 'Mussarela, molho de tomate e orégano', 'Pequena'),
('Frango com Catupiry', 1, 66.00, 'Frango desfiado, catupiry e milho', 'Grande'),
('Banana com Canela', 2, 37.50, 'Banana, canela e açúcar caramelizado', 'Média'),
('Portuguesa', 5, 45.00, 'Mussarela, presunto, ovos, cebola, pimentão e azeitonas', 'Grande');

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas p INNER JOIN tb_categorias c ON p.categorias_id = c.id
WHERE c.nome = 'Doces';


