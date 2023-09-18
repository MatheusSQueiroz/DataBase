CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
			IdMatricula BIGINT IDENTITY(1,1),
			Nome VARCHAR (255) NOT NULL,
			Setor VARCHAR (255) NOT NULL,
			Salario DECIMAL(6,2) NOT NULL,
			CPF VARCHAR (11) NOT NULL,
			Sexo CHAR(1),
			PRIMARY KEY (IdMatricula)
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios
(Nome, Setor, Salario, CPF, Sexo)
VALUES
('Matheus', 'Software', 5000.00, '12345678900', 'M'),
('Bugson', 'Qualidade', 8000.00, '11122233344', 'M'),
('Fulana', 'Análise', 9500.00, '00099988877', 'F'),
('Ciclana', 'Varejo', 2000.00, '78945612301', 'F'),
('Beltrana', 'Recursos Humanos', 4000.00, '59874632105', 'F');

SELECT * FROM tb_funcionarios WHERE Salario > 2000.00;

INSERT INTO tb_funcionarios
(Nome, Setor, Salario, CPF, Sexo)
VALUES
('Zézinho', 'Vendas', 1200.00, '89545678900', 'M'),
('Buguinha', 'Suporte', 1500.00, '77122233344', 'F');

SELECT * FROM tb_funcionarios WHERE Salario < 2000.00;

UPDATE tb_funcionarios SET Salario = 1850.00 WHERE IdMatricula = 7;

SELECT * FROM tb_funcionarios;