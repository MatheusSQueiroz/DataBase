CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1,1),
	Duracao VARCHAR(255) NOT NULL,
	Modalidade VARCHAR(255) NOT NULL,
	PRIMARY KEY (Id)
);

INSERT INTO tb_categorias
(Duracao, Modalidade)
VALUES
('Curta', 'EAD'),
('M�dia', 'EAD'),
('Longa', 'EAD'),
('Curta', 'Presencial'),
('M�dia', 'Presencial'),
('Longa', 'Presencial');


CREATE TABLE tb_cursos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	AreaAtua��o VARCHAR(255) NOT NULL,
	Valor DECIMAL (6,2) NOT NULL,
	PRIMARY KEY (Id),
	Categoria_id BIGINT,
	FOREIGN KEY (Categoria_id) REFERENCES tb_categorias(Id)
);

SELECT * FROM tb_cursos;

INSERT INTO tb_cursos
(Nome, Descricao, AreaAtua��o, Valor, Categoria_id)
VALUES
('Python', 'Curso de introdu��o ao python', 'Tecnologia', 189.90, 1),
('Java', 'Curso de introdu��o ao Java', 'Tecnologia', 319.90, 2),
('Java POO', 'Curso de introdu��o a Programa�ao orientada a objetos', 'Tecnologia', 189.90, 3),
('Scrum', 'Curso de gest�o de equipes e tempo', 'Gest�o', 499.90, 4),
('Ruby', 'Curso de introdu��o ao python', 'Tecnologia', 169.90, 5),
('Gest�o de Projetos', 'Introdu��o a cria��o de projetos', 'Gest�o', 1999.90, 6),
('SQLServer', 'Curso de Banco de dados com SQLServer', 'Banco de dados', 189.90, 1),
('ASP.NET', 'Curso completo de ASP.NET', 'Tecnologia', 1399.90, 6),
('Python', 'Curso de introdu��o ao python', 'Tecnologia', 589.90, 3);


SELECT * FROM tb_cursos WHERE Valor > 500;

SELECT * FROM tb_cursos WHERE Valor BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE Nome LIKE 'J%';

SELECT tb_cursos.Id, Nome, Descricao, AreaAtua��o, Valor, Duracao, Modalidade
FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_cursos.Categoria_id;

SELECT tb_cursos.Id, Nome, Descricao, AreaAtua��o, Valor, Duracao, Modalidade
FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_cursos.Categoria_id WHERE AreaAtua��o = 'Gest�o';