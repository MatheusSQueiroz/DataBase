CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	Id BIGINT IDENTITY(1,1),
	NomeClasse VARCHAR(255) NOT NULL,
	Guilda VARCHAR(255) NOT NULL,
	PRIMARY KEY (Id)
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes
(NomeClasse, Guilda)
VALUES
('Feiticeiro', 'Círculo dos Sombrios'),
('Guerreiro', 'Sparta'),
('Mago', 'Covil dos Elementalistas'),
('Médico', 'SUS'),
('Elfo', 'Dobbys'),
('Atirador', 'HeadShoots'),
('Nômades', 'Andarilhos');

CREATE TABLE tb_personagens(
	Id BIGINT IDENTITY (1,1),
	Nome VARCHAR(255) NOT NULL,
	PoderAtaque INT NOT NULL,
	PoderDefesa INT NOT NULL,
	Nivel INT NOT NULL,
	Caracteristica VARCHAR(255) NOT NULL,
	GolpeEspecial VARCHAR(255) NOT NULL
	PRIMARY KEY (Id),	Classe_id BIGINT,	FOREIGN KEY (Classe_id) REFERENCES tb_classes(Id)
);

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens
(Nome, PoderAtaque, PoderDefesa, Nivel, Caracteristica, GolpeEspecial, Classe_id)
VALUES
('Malachias Sombrastral', 800, 7000, 55, 'Vestimenta Mágica', 'Manipulação dos elementos', 1),
('Leônidas', 7575, 1000, 87, 'Fúria', 'Fúria da Tempestade', 2),
('Gandalf Sábiovento', 6000, 1205, 79, 'Necromancia', 'Invocação', 3),
('Oliver Curativo', 3687, 8500, 49, 'Cura Mágica', 'Ressurreição', 4),
('Malfoy', 1700, 9000, 99, 'Invisibilidade', 'Flechas Mágicas', 5),
('Swagger',6000, 7000, 61, 'Visão Aprimorada', 'Tiros incendiários', 6),
('Luna Peregrina', 2178, 6850, 46, 'Magia xamânica', 'Tempestade do Deserto', 7),
('Bob Lee', 800, 987, 15, 'Resitência', 'Olho de falcão', 6);

SELECT * FROM tb_personagens WHERE PoderAtaque > 2000;

SELECT * FROM tb_personagens WHERE PoderDefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE Nome LIKE '%C%';

 SELECT tb_personagens.Id,Nome, PoderAtaque, PoderDefesa, Nivel, Caracteristica, GolpeEspecial, NomeClasse, Guilda   FROM tb_personagens INNER JOIN tb_classes ON tb_classes.Id = tb_personagens.Classe_id;