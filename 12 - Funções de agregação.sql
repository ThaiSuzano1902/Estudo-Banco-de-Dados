--------------------------------------------------
-- FUNÇÕES DE AGREGAÇÃO
-- Retornam UM ÚNICO VALOR a partir de vários registros.

--------------------------------------------------
-- COUNT() -> Conta registros

-- Quantos clientes estão cadastrados?
SELECT COUNT(*)
FROM Clientes;

--------------------------------------------------
-- MAX() -> Maior valor

-- Visualizando a quantidade de semestres
SELECT *
FROM Cursos
ORDER BY QTD_SEMESTRE;

-- Qual é a maior quantidade de semestres?
SELECT MAX(QTD_SEMESTRE)
FROM Cursos;

--------------------------------------------------
-- MAX() + WHERE

-- Primeiro, veja os cursos de 2025
SELECT *
FROM Cursos
WHERE ANO_INICIO = '2025';

-- Entre os cursos de 2025,
-- qual possui a MAIOR carga horária?
SELECT MAX(CARGA_HR)
FROM Cursos
WHERE ANO_INICIO = '2025';

--------------------------------------------------
-- MIN() -> Menor valor

-- Qual é a menor quantidade de semestres?
SELECT MIN(QTD_SEMESTRE)
FROM Cursos;

-- IMPORTANTE: FUNÇÃO DE AGREGAÇÃO SEMPRE VAI PEGAR O PRIMEIRO RESULTADO
--------------------------------------------------
-- SUM() -> Soma os valores

-- Soma da renda mensal dos clientes inativos
SELECT SUM(RENDA_MENSAL)
FROM Clientes
WHERE STATUS_CLI = 'Inativo';

--------------------------------------------------
-- AVG() -> Calcula a média

-- Média da carga horária dos cursos
SELECT AVG(CARGA_HR)
FROM Cursos;

/*
COUNT() -> Conta registros.

MAX() -> Maior valor.

MIN() -> Menor valor.

SUM() -> Soma todos os valores.

AVG() -> Calcula a média.

WHERE -> Filtra antes da função de agregação executar.
*/