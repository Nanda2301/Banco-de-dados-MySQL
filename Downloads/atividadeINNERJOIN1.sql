CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
    atributo VARCHAR(500) NOT NULL,
    habilidades VARCHAR(500) NOT NULL,
    nivel_dificuldade VARCHAR(100)
);

CREATE TABLE tb_personagens (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
    classe_id BIGINT NOT NULL,
    nivel INT NOT NULL,
    hp INT NOT NULL,
    xp INT NOT NULL,
    data_criacao DATE NOT NULL,
    CONSTRAINT fk_classe FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

ALTER TABLE tb_personagens
ADD ataque INT NOT NULL DEFAULT 0,
ADD mana INT NOT NULL DEFAULT 0,
ADD desafa INT NOT NULL DEFAULT 0;

ALTER TABLE tb_personagens CHANGE desafa defesa INT NOT NULL DEFAULT 0;

INSERT INTO tb_classe (nome, atributo, habilidades, nivel_dificuldade) VALUES
('Guerreiro', 'Força e Defesa', 'Golpe Poderoso, Escudo de Ferro', 'Fácil'),
('Mago', 'Inteligência e Mana', 'Bola de Fogo, Teletransporte', 'Médio'),
('Arqueiro', 'Destreza e Precisão', 'Flecha Veloz, Disparo Triplo', 'Médio'),
('Assassino', 'Agilidade e Crítico', 'Ataque Furtivo, Veneno Mortal', 'Difícil'),
('Clérigo', 'Sabedoria e Cura', 'Cura Divina, Barreira de Luz', 'Médio');

INSERT INTO tb_personagens (nome, classe_id, nivel, hp, xp, data_criacao, ataque, mana, defesa) VALUES
('Thorgar', 1, 10, 1200, 3500, '2025-09-01', 2150, 50, 1200),     
('Elandra', 2, 12, 800, 5000, '2025-09-02', 90, 300, 2100),    
('Kaelith', 3, 8, 950, 2200, '2025-09-05', 120, 120, 3580),      
('Shadowfang', 4, 15, 700, 7200, '2025-09-07', 2200, 100, 70),  
('Lyanna', 5, 9, 1000, 3100, '2025-09-08', 80, 250, 150),      
('Ragnar', 1, 5, 600, 900, '2025-09-10', 100, 40, 4120),        
('Mirella', 2, 7, 750, 1800, '2025-09-12', 2070, 220, 90),      
('Aldren', 3, 11, 1100, 4700, '2025-09-15', 130, 110, 1100);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%e%';

SELECT 
    p.id, 
    p.nome AS personagem, 
    c.nome AS classe, 
    p.nivel, 
    p.hp, 
    p.ataque, 
    p.defesa, 
    p.mana
FROM tb_personagens p
INNER JOIN tb_classe c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';

SELECT p.id, p.nome AS personagem, c.nome AS classe, p.nivel, p.hp, p.ataque, p.defesa, p.mana
FROM tb_personagens p
INNER JOIN tb_classe c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';

