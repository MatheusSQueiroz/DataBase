CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
		Id BIGINT IDENTITY(1,1),
		Nome VARCHAR (255) NOT NULL,
		Serie INT NOT NULL,
		RGM INT NOT NULL,
		Sexo CHAR(1) NOT NULL,
		Telefone VARCHAR(11) NOT NULL,
		Email VARCHAR(50) NOT NULL,
		MediaNotas DECIMAL(5, 1),
		PRIMARY KEY (Id)
);

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos
(Nome, Serie, RGM, Sexo, Telefone, Email, MediaNotas)
VALUES
('Matheus', 8, 185984, 'M', '70707070', 'm@gmail.com', 5.0),
('Zézinho', 7, 122231, 'M', '123456789', 'z@gmail.com', 9.0),
('Fulana', 8, 2222222, 'F', '321654987', 'f@gmail.com', 8.0),
('Ciclana', 1, 946516, 'F', '789456123', 'c@gmail.com', 7.5),
('Beltrana', 5, 57572, 'F', '12684645', 'b@gmail.com', 6.5),
('Bugson', 4, 125984, 'M', '098451254', 'bug@gmail.com', 8.5),
('Matheus', 2, 2575225, 'M', '3616884', 'mq@gmail.com', 10.0),
('Jorgin', 9, 7777777, 'M', '61656628', 'j@gmail.com', 3.5);

SELECT * FROM tb_alunos WHERE MediaNotas > 7.00;

SELECT * FROM tb_alunos WHERE MediaNotas < 7.00;

UPDATE tb_alunos SET Nome = 'Queiroz' WHERE RGM = 2575225;