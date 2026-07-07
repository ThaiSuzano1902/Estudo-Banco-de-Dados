--Seleciono a tabela que criei
Select * from Clientes

-- Vejo qual as minhas variaveis e tipos
EXEC sp_help 'Clientes';

-- Exclui o meu BD: DROP DATABASE TABELA_TESTE
--Acrescenta nova coluna com restrição(check)
ALTER TABLE Clientes 
ADD SEXO VARCHAR (10) NOT NULL
    CONSTRAINT VALIDA_SEXO -- RESTRIÇÃO [NOME DA FUNCIONALIDADE]
    CHECK (SEXO IN ('F', 'M', 'LGBTQ+'))

INSERT INTO Clientes
(NOME_CLIENTE, CPF, DATA_NASCIMENTO, RENDA_MENSAL, PROFISSAO, SCORE, STATUS_CLI, SEXO)
VALUES
('Joana Silva', '23877609801', '2001-10-04','2.400', 'Professora de Geografia','220','VERDE','F')

SELECT * FROM Clientes