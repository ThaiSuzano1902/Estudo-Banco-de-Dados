-- Alterando a minha proc para a nova coluna AREA

ALTER PROCEDURE CadastrarCliente
    @NOME_CLIENTE VARCHAR(100),
    @CPF VARCHAR(11),
    @DATA_NASCIMENTO DATE,
    @SEXO VARCHAR (10),
    @PROFISSAO VARCHAR (300),
    @AREA VARCHAR(30), -- O meu novo parametro
    @RENDA_MENSAL DECIMAL (18,2),
    @SCORE INT,
    @STATUS_CLI VARCHAR (100)
AS
BEGIN
    INSERT INTO Clientes
(NOME_CLIENTE,CPF, DATA_NASCIMENTO, SEXO, PROFISSAO, AREA, RENDA_MENSAL, SCORE, STATUS_CLI)
VALUES
(
    @NOME_CLIENTE,
    @CPF,
    @DATA_NASCIMENTO,
    @SEXO, 
    @PROFISSAO, 
    @AREA,
    @RENDA_MENSAL,
    @SCORE,
    @STATUS_CLI
)
END;
GO

EXEC CadastrarCliente 
    @NOME_CLIENTE = 'João Gabriel da Luz',
    @CPF = '12343478911',
    @DATA_NASCIMENTO = '1990-05-15',
    @SEXO = 'M',
    @PROFISSAO = 'Analista de Sistemas',
    @AREA = 'Tecnologia', 
    @RENDA_MENSAL = 5500.00,
    @SCORE = 850,
    @STATUS_CLI = 'Ativo';

-- Para conferir se gravou certo:
SELECT * FROM Clientes 
WHERE CPF = '12343478911';

--Visualizo toda a tabela
SELECT * FROM Clientes

EXEC sp_help Clientes