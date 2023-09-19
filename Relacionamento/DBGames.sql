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
('Feiticeiro', 'C�rculo dos Sombrios'),
('Guerreiro', 'Sparta'),
('Mago', 'Covil dos Elementalistas'),
('M�dico', 'SUS'),
('Elfo', 'Dobbys'),
('Atirador', 'HeadShoots'),
('N�mades', 'Andarilhos');

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
('Malachias Sombrastral', 800, 7000, 55, 'Vestimenta M�gica', 'Manipula��o dos elementos', 1),
('Le�nidas', 7575, 1000, 87, 'F�ria', 'F�ria da Tempestade', 2),
('Gandalf S�biovento', 6000, 1205, 79, 'Necromancia', 'Invoca��o', 3),
('Oliver Curativo', 3687, 8500, 49, 'Cura M�gica', 'Ressurrei��o', 4),
('Malfoy', 1700, 9000, 99, 'Invisibilidade', 'Flechas M�gicas', 5),
('Swagger',6000, 7000, 61, 'Vis�o Aprimorada', 'Tiros incendi�rios', 6),
('Luna Peregrina', 2178, 6850, 46, 'Magia xam�nica', 'Tempestade do Deserto', 7),
('Bob Lee', 800, 987, 15, 'Resit�ncia', 'Olho de falc�o', 6);

SELECT * FROM tb_personagens WHERE PoderAtaque > 2000;

SELECT * FROM tb_personagens WHERE PoderDefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE Nome LIKE '%C%';

 SELECT tb_personagens.Id,Nome, PoderAtaque, PoderDefesa, Nivel, Caracteristica, GolpeEspecial, NomeClasse, Guilda   FROM tb_personagens INNER JOIN tb_classes ON tb_classes.Id = tb_personagens.Classe_id;