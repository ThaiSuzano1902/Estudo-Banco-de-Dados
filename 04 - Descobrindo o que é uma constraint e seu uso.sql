-- Isso é uma DML (Data Manipulation Language), manipulação de dados
EXEC CadastrarCliente
    @NOME_CLIENTE = 'Jessica Mendes Oliveira',
    @CPF = '12343578934',
    @DATA_NASCIMENTO = '1986-02-07',
    @RENDA_MENSAL = 2300.00,
    @PROFISSAO = 'Gerente Sr. de Marketing',
    @SCORE = 700,
    @STATUS_CLI = 'Ativo',
    @SEXO = 'F';

SELECT * FROM Clientes

-- Acrescentando a coluna "AREA".
-- Caso nenhum valor seja informado, o SQL Server preencherá automaticamente com 'PREENCHER'.
ALTER TABLE Clientes
ADD AREA VARCHAR(10) NOT NULL DEFAULT 'PREENCHER';


-- Ao utilizar DEFAULT, o SQL Server cria uma CONSTRAINT (restrição).
-- Constraint = uma regra aplicada pelo SQL Server para garantir a integridade dos dados.
-- Neste caso, a regra é: "Se AREA não for informada, utilize 'PREENCHER'."
-- Enquanto essa constraint existir, a coluna não poderá ser excluída diretamente.

-- Para descobrir o nome da constraint criada:
EXEC sp_help 'Clientes';

-- Removendo a constraint:
ALTER TABLE Clientes
DROP CONSTRAINT DF__Clientes__AREA__6FE99F9F;

-- Agora a coluna pode ser removida:
ALTER TABLE Clientes
DROP COLUMN AREA;

--Então a regra geral do SQL Server é:
--"Eu nunca removo automaticamente objetos que dependem de outro objeto. O DBA ou desenvolvedor precisa decidir o que remover."
-- Por isso o ideal é eu dropar a constraint (a regra que criei), onde eu vejo o nome pelo sp_help, porque assim eu asseguro que a minha coluna não afete outros objetos ou objetos que dependem dele

