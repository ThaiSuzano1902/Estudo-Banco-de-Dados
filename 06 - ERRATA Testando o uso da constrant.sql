ALTER TABLE Clientes
ADD AREA VARCHAR(30) NOT NULL
CONSTRAINT DF_Clientes_AREA -- Aqui eu estou definindo o nome da minha constraint, isso facilita sua identificação e manutenção, pois não será necessário
DEFAULT 'PREENCHER';

SELECT * FROM Clientes

-- Renomeia tabelas, colunas e outros objetos.
EXEC sp_rename 'Clientes.PROF', 'PROFISSAO','COLUMN';

-- Preencher colunas AREA que estavam como "Preencher
UPDATE Clientes 
SET AREA = 'Operações' 
WHERE PROFISSAO = 'CLT';

UPDATE Clientes 
SET AREA = 'Artes Cênicas' 
WHERE PROFISSAO = 'Atriz';

UPDATE Clientes 
SET AREA = 'Audiovisual' 
WHERE PROFISSAO = 'Dublador';

UPDATE Clientes 
SET SEXO = 'LGBTQI+' 
WHERE NOME_CLIENTE = 'João Da Silva Lopes';

SELECT * FROM Clientes

-- 1. Apaga a restrição atual
ALTER TABLE Clientes 
DROP CONSTRAINT VALIDA_SEXO;

-- 2. Cria a nova restrição incluindo o 'LGBTQI+'
ALTER TABLE Clientes 
ADD CONSTRAINT VALIDA_SEXO 
CHECK (SEXO IN ('F', 'M', 'LGBTQ+', 'LGBTQI+'));