ASELECT * FROM Clientes

-- Manipulando linhas 
-- ATUALIZE Clientes, CONFIGURE Renda_mensal = (para) '2500.00' ONDE o ID_CLI = '1';
UPDATE Clientes 
SET RENDA_MENSAL = '2500.00'
WHERE ID_CLI = '1';

-- Manipulando e alterando uma linha com mais de uma coluna
UPDATE Clientes 
SET RENDA_MENSAL = '2350.00', SCORE = '397', STATUS_CLI = 'Ativo'
WHERE ID_CLI = '1';

--------------------
DELETE FROM Cursos
WHERE COD_CURSO = '7'

----------------------
--DESATIVO O MEU AUTOINCREMENTO PARA CONSEGUIR PREENCHER MANUALMENTE
SET IDENTITY_INSERT Cursos ON;
GO

INSERT INTO Cursos
(
    COD_CURSO,
    NOME_CURSO,
    CARGA_HR,
    QTD_SEMESTRE,
    UNIVERSIDADE,
    ANO_INICIO
)
VALUES
(
    7,
    'Artes',
    3200,
    8,
    'Universidade Paulista',
    2021
);
GO

-- VOLTA A DEIXAR O SQL SERVER GERAR O ID AUTOMATICAMENTE
SET IDENTITY_INSERT Cursos OFF;
GO

SELECT * FROM Cursos

--DML

