USE db_quitanda;

SELECT * FROM tb_produtos;

-- Selecionando produtos e ordenando em ordem decrescente pelo seu pre�o
SELECT * FROM tb_produtos ORDER BY Nome DESC;

-- Selecionando produtos e ordenando em ordem crescente pelo seu pre�o
SELECT * FROM tb_produtos ORDER BY Preco ASC;

-- Selecionando produtos com id diferente de 1 
SELECT * FROM tb_produtos WHERE NOT Id = 1;

-- Selecionando produtos com id diferente de 1 
SELECT * FROM tb_produtos WHERE Id != 1;

-- Selecionando produtos com pre�o de 6,16,5 
SELECT * FROM tb_produtos WHERE Preco IN(6,16,5);

-- Selecionando produtos com pre�o de 6,16,5 e ordenando por nome
SELECT * FROM tb_produtos WHERE Preco IN(6,16,5) ORDER BY Nome;

-- Selecionando produtos com um pre�o entre 8 e 13
SELECT * FROM tb_produtos WHERE Preco BETWEEN 8 AND 13;

-- Selecionando produtos que terminam com A
SELECT * FROM tb_produtos WHERE Nome LIKE '%A';

-- Selecionando produtos que come�am com M
SELECT * FROM tb_produtos WHERE Nome LIKE 'M%';

-- Selecionando produtos que cont�m a letra U 
SELECT * FROM tb_produtos WHERE Nome LIKE '%U%';

-- Contando todas as linhas da tabela
SELECT COUNT(*) AS 'N�mero de linhas' FROM tb_produtos;

-- Somando os valores de todos os produtos na tabela
SELECT SUM(Preco) AS 'Soma dos produtos' FROM tb_produtos;

-- Tirando a m�dia dos produtos na tabela (Preco / Linha)
SELECT AVG(Preco) AS 'M�dia dos valores' FROM tb_produtos;

-- Selecionando o valor m�ximo dos produtos
SELECT MAX(Preco) AS 'Pre�o m�ximo' FROM tb_produtos;

-- Selecionando o valor m�nimo dos produtos
SELECT MIN(Preco) AS 'Pre�o minimo' FROM tb_produtos;

