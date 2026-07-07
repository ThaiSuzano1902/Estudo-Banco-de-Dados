
-- Vejo qual as minhas variaveis e tipos
EXEC sp_help 'Clientes';
-- Todas as colunas que tenho
EXEC sp_columns 'Clientes';

--sp = Stored Procedure (A famosa Proc)

-- Ao invés de escrever este SELECT toda vez:
SELECT *
FROM Clientes
WHERE SEXO = 'F';
GO

-- Posso criar minha própria Stored Procedure, para "automatizar" esse processo:
CREATE PROCEDURE ListarClientesFemininos
AS
BEGIN
    SELECT *
    FROM Clientes
    WHERE SEXO = 'F';
END;
GO

-- Em seguida posso executar:
EXEC ListarClientesFemininos;


-- IMPORTANTE: Antes de qualquer procc que eu for rodar, preciso colocar o EXEC (significa: Executar) antes
-- Uma Procedure funciona como uma função do banco de dados, você a chama uma vez e ela executa todos os comandos programados.

---------------------------------------------------------
-- Algumas Procedures do SQL Server
---------------------------------------------------------

sp_help        -- Informações detalhadas sobre tabelas, views e outros objetos.
sp_helpdb      -- Informações sobre bancos de dados.
sp_tables      -- Lista as tabelas.
sp_columns     -- Lista as colunas de uma tabela.
sp_who         -- Mostra conexões e processos ativos.
sp_databases   -- Lista os bancos de dados.
sp_rename      -- Renomeia tabelas, colunas e outros objetos.

---------------------------------------------------------
-- IMPORTANTE
---------------------------------------------------------

-- EXEC = Execute (Executar)

-- Para EXECUTAR uma Stored Procedure, normalmente utilizamos:
EXEC NomeDaProcedure;

-- Para CRIAR uma Stored Procedure utilizamos:
CREATE PROCEDURE NomeDaProcedure;