CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1,1),
	NomeCategoria VARCHAR (255) NOT NULL,
	Marca VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias
(NomeCategoria, Marca)
VALUES
('Construção', 'Votorantim'),
('Pintura', 'Suvinil'),
('Construção', 'Poty'),
('Pintura', 'Lukscolor'),
('Hidráulico', 'Amanco'),
('Hidráulico', 'Tigre');

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY(1,1),
	NomeProduto VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Preco DECIMAL(6,2) NOT NULL,
	Estoque INT NOT NULL,
	Garantia DATE NOT NULL
	PRIMARY KEY(Id),
	Categoria_id BIGINT,
	FOREIGN KEY(Categoria_id) REFERENCES tb_categorias(Id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos
(NomeProduto, Descricao, Preco, Estoque, Garantia, Categoria_id)
VALUES
('Cimento', 'Cimento cola', 28.90, 500, '2025-01-19', 1),
('Cimento', 'Cimento cola', 23.90, 750, '2024-07-19', 3),
('Cano PVC', 'Para ligações residenciais', 13.90, 50, '2023-12-19', 5),
('Cano PVC', 'Para ligações residenciais', 17.90, 80, '2024-01-01', 6),
('Tinta', 'Semi-brilho', 182.90, 100, '2025-11-19', 2),
('Tinta', 'Tinta fosca', 128.90, 70, '2025-05-19', 4),
('Cano de cobre', 'Para ligações industriais', 58.90, 500, '2025-01-19', 5),
('Tinta', 'Tinta para edificios', 298.90, 500, '2027-01-19', 6);

SELECT * FROM tb_produtos WHERE Preco > 100;

SELECT * FROM tb_produtos WHERE Preco BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE NomeProduto LIKE '%C%';

SELECT tb_produtos.Id, NomeProduto, Descricao, Preco, Estoque, Garantia, NomeCategoria, Marca
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.Categoria_id;

SELECT tb_produtos.Id, NomeProduto, Descricao, Preco, Estoque, Garantia, NomeCategoria, Marca
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.Categoria_id WHERE NomeCategoria = 'Construção';