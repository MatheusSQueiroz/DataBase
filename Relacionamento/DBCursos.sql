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
('Média', 'EAD'),
('Longa', 'EAD'),
('Curta', 'Presencial'),
('Média', 'Presencial'),
('Longa', 'Presencial');


CREATE TABLE tb_cursos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	AreaAtuação VARCHAR(255) NOT NULL,
	Valor DECIMAL (6,2) NOT NULL,
	PRIMARY KEY (Id),
	Categoria_id BIGINT,
	FOREIGN KEY (Categoria_id) REFERENCES tb_categorias(Id)
);

SELECT * FROM tb_cursos;

INSERT INTO tb_cursos
(Nome, Descricao, AreaAtuação, Valor, Categoria_id)
VALUES
('Python', 'Curso de introdução ao python', 'Tecnologia', 189.90, 1),
('Java', 'Curso de introdução ao Java', 'Tecnologia', 319.90, 2),
('Java POO', 'Curso de introdução a Programaçao orientada a objetos', 'Tecnologia', 189.90, 3),
('Scrum', 'Curso de gestão de equipes e tempo', 'Gestão', 499.90, 4),
('Ruby', 'Curso de introdução ao python', 'Tecnologia', 169.90, 5),
('Gestão de Projetos', 'Introdução a criação de projetos', 'Gestão', 1999.90, 6),
('SQLServer', 'Curso de Banco de dados com SQLServer', 'Banco de dados', 189.90, 1),
('ASP.NET', 'Curso completo de ASP.NET', 'Tecnologia', 1399.90, 6),
('Python', 'Curso de introdução ao python', 'Tecnologia', 589.90, 3);


SELECT * FROM tb_cursos WHERE Valor > 500;

SELECT * FROM tb_cursos WHERE Valor BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE Nome LIKE 'J%';

SELECT tb_cursos.Id, Nome, Descricao, AreaAtuação, Valor, Duracao, Modalidade
FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_cursos.Categoria_id;

SELECT tb_cursos.Id, Nome, Descricao, AreaAtuação, Valor, Duracao, Modalidade
FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_cursos.Categoria_id WHERE AreaAtuação = 'Gestão';