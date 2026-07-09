--Não existe no SQL Servver: CREATE TABLE IF NOT EXISTS Cursos()

IF OBJECT_ID('dbo.Cursos', 'U') IS NULL
BEGIN -- Tipo um try catch, se a condição acima for verdadeira, executa um bloco de comando. É semelhante às chaves { } em linguagens como Java e JavaScript.
	CREATE TABLE dbo.Cursos(
	NOME_CURSO varchar(50) NOT NULL UNIQUE,
	CARGA_HR INT,
	QTD_SEMESTRE int,
	UNIVERSIDADE VARCHAR(150),
	ANO_INICIO SMALLINT DEFAULT '2026'
	);
END

USE TABELA_TESTE
SELECT * FROM Cursos

-- Acrescentando a coluna cod_cli com autoincremento
ALTER TABLE Cursos
ADD COD_CURSO INT IDENTITY (1,1) NOT NULL -- autoincremento
-- Adicionado a chave primaria nela.
ALTER TABLE Cursos
ADD PRIMARY KEY (COD_CURSO)

--Criando minha proc
CREATE PROCEDURE CadastrarCursos
	@NOME_CURSO varchar(50),
	@CARGA_HR INT,
	@QTD_SEMESTRE int,
	@UNIVERSIDADE VARCHAR(150),
	@ANO_INICIO SMALLINT
AS
BEGIN --EXECUTA O BLOCO ABAIXO
INSERT INTO Cursos 
(NOME_CURSO, CARGA_HR, QTD_SEMESTRE, UNIVERSIDADE, ANO_INICIO)
VALUES
	(
	@NOME_CURSO, 
	@CARGA_HR, 
	@QTD_SEMESTRE, 
	@UNIVERSIDADE, 
	@ANO_INICIO
	)
END;
GO

EXEC CadastrarCursos
    @NOME_CURSO = 'Análise e Desenvolvimento de Sistemas',
    @CARGA_HR = 2400,
    @QTD_SEMESTRE = 5,
    @UNIVERSIDADE = 'Universidade Nove de Julho',
    @ANO_INICIO = 2026;
GO

EXEC CadastrarCursos
    @NOME_CURSO = 'Ciência da Computação',
    @CARGA_HR = 3200,
    @QTD_SEMESTRE = 8,
    @UNIVERSIDADE = 'Universidade de São Paulo',
    @ANO_INICIO = 2025;
GO


SELECT * FROM Cursos
SELECT * FROM Clientes

EXEC CadastrarCursos
    @NOME_CURSO = 'Licenciatura em Geografia',
    @CARGA_HR = 3200,
    @QTD_SEMESTRE = 8,
    @UNIVERSIDADE = 'Universidade de São Paulo',
    @ANO_INICIO = 2026;
GO

EXEC SP_HELP Cursos