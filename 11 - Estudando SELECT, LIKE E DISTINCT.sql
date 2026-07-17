USE TABELA_TESTE;

SELECT * FROM Cursos;
SELECT * FROM Clientes;
--------------------------------------------------
-- LIKE = "PARECIDO"
-- Busca textos que seguem um determinado padrão.

-- Começa com a letra C
SELECT *
FROM Cursos
WHERE NOME_CURSO LIKE 'C%';

-- % = "seguido de qualquer coisa"
-- Leitura:
-- Procure um NOME_CURSO que comece com "C" e depois seguido de qualquer coisa

--------------------------------------------------

-- Termina com a letra A
SELECT *
FROM Cursos
WHERE NOME_CURSO LIKE '%A';

-- Agora é o contrário.
-- Pode existir qualquer coisa antes, mas obrigatoriamente termina com "A".

--------------------------------------------------

-- Contém a letra A em qualquer posição
SELECT *
FROM Cursos
WHERE NOME_CURSO LIKE '%A%';

-- Pode ter qualquer coisa antes e depois.
-- O importante é que exista um "A" no meio.

--------------------------------------------------

-- NÃO contém a letra A
SELECT *
FROM Cursos
WHERE NOME_CURSO NOT LIKE '%A%';

-- Faz exatamente o oposto da consulta acima.
--------------------------------------------------

-- Começa com "PH" e termina com "P"
SELECT *
FROM Cursos
WHERE NOME_CURSO LIKE 'PH%P';

-- Leitura:
-- Começa com PH...
-- Depois pode vir qualquer coisa...
-- ...e obrigatoriamente termina com P.

--------------------------------------------------

SELECT *
FROM Cursos
WHERE NOME_CURSO LIKE '%A_C%';

-- % = qualquer quantidade de caracteres
-- _ = exatamente UM caractere

-- Leitura:
-- Pode ter qualquer coisa antes...
-- depois encontra um A...
-- depois exatamente 1 caractere...
-- depois um C...
-- e depois qualquer coisa.

--------------------------------------------------
-- DISTINCT = REMOVE OS VALORES REPETIDOS

-- Quero ver apenas os tipos de sexo cadastrados.
SELECT DISTINCT SEXO
FROM Clientes
ORDER BY SEXO;

-- Exemplo de retorno:
-- M
-- F

--------------------------------------------------

-- Quero ver apenas as cargas horárias existentes,
-- sem repetir valores.
SELECT DISTINCT CARGA_HR
FROM Cursos
ORDER BY CARGA_HR DESC;