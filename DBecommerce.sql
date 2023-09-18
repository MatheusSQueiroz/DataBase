CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
		Id BIGINT IDENTITY(1,1),
		Nome VARCHAR (255) NOT NULL,
		Categoria VARCHAR (255) NOT NULL,
		Preco DECIMAL (6,2) NOT NULL,
		Marca VARCHAR (255) NOT NULL,
		Quantidade INT NOT NULL
		PRIMARY KEY (Id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos
(Nome, Categoria, Preco, Marca, Quantidade)
VALUES
('Bicicleta','Brinquedos', 499.99, 'Candide', 50),
('Pista HotWhells','Brinquedos', 619.90, 'Mattel', 10),
('Turbina','Automoveis', 1700.99, 'MasterPower', 3),
('Suspensão','Automoveis', 899.99, 'Tebão', 7),
('Bexiga','Festas', 7.99, 'Buum', 180),
('Shampoo','Cuidados Pessoais', 27.99, 'Elseve', 90),
('Camiseta Lisa','Vestuario', 39.90, 'Hering', 500),
('Calça Cargo','Vestuario', 99.90, 'Khelf', 170);

SELECT * FROM tb_produtos WHERE Preco > 500.00;
SELECT * FROM tb_produtos WHERE Preco < 500.00;

UPDATE tb_produtos SET Marca = 'São Roque' WHERE Id = 5;