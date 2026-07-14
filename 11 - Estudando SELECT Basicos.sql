/*====================================================
    SELECT - CONSULTAS BÁSICAS
====================================================*/

-- SELECT *
-- Exibe todas as colunas da tabela.

SELECT *
FROM Clientes;


/*====================================================
    ORDER BY
====================================================*/

-- ORDER BY
-- Ordena os registros em ordem crescente (ASC é o padrão).

SELECT *
FROM Clientes
ORDER BY NOME_CLIENTE;

-- DESC
-- Ordena em ordem decrescente.

SELECT *
FROM Cursos
ORDER BY QTD_SEMESTRE DESC;


/*====================================================
    SELECIONANDO COLUNAS ESPECÍFICAS
====================================================*/

-- Exibe somente as colunas desejadas.

SELECT
    NOME_CLIENTE,
    CPF,
    SEXO
FROM Clientes
ORDER BY NOME_CLIENTE;

-- A ordem das colunas exibidas depende da ordem
-- em que elas aparecem no SELECT.

SELECT
    UNIVERSIDADE,
    NOME_CURSO,
    QTD_SEMESTRE
FROM Cursos
ORDER BY QTD_SEMESTRE;


/*====================================================
    WHERE
====================================================*/

-- WHERE
-- Filtra os registros que atendem a uma condição.

SELECT *
FROM Clientes
WHERE SEXO = 'M'
ORDER BY NOME_CLIENTE;

SELECT
    UNIVERSIDADE,
    NOME_CURSO,
    QTD_SEMESTRE
FROM Cursos
WHERE QTD_SEMESTRE <= 5
ORDER BY QTD_SEMESTRE,
         NOME_CURSO;


/*====================================================
    BETWEEN
====================================================*/

-- BETWEEN
-- Filtra um intervalo de valores.
-- Equivale a:
-- >= valor_inicial AND <= valor_final

SELECT
    UNIVERSIDADE,
    NOME_CURSO,
    ANO_INICIO
FROM Cursos
WHERE ANO_INICIO BETWEEN 2025 AND 2026
ORDER BY ANO_INICIO,
         NOME_CURSO;


/*====================================================
    IN
====================================================*/

-- IN
-- Verifica se o valor pertence a uma lista.

SELECT
    NOME_CLIENTE,
    CPF,
    DATA_NASCIMENTO
FROM Clientes
WHERE RENDA_MENSAL IN (3500.00, 2000.00, 5100.00)
ORDER BY CPF;


/*====================================================
    OPERADORES LÓGICOS
====================================================*/

------------------------------------------------------
-- AND
-- Todas as condições devem ser verdadeiras.

SELECT
    NOME_CLIENTE,
    CPF,
    DATA_NASCIMENTO
FROM Clientes
WHERE RENDA_MENSAL > 3500.00
    AND SCORE > 500
ORDER BY DATA_NASCIMENTO;


------------------------------------------------------
-- OR
-- Basta uma das condições ser verdadeira.

SELECT *
FROM Cursos
WHERE CARGA_HR > 3000 OR QTD_SEMESTRE >= 4;