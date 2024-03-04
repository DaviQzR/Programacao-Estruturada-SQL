--Exercícios:

CREATE DATABASE progsql
GO
USE progsql
GO

-- 1) Fazer em SQL Server os seguintes algoritmos:

-- a) Dado um número inteiro. Calcule e mostre o seu fatorial. (Não usar entrada superior a 12)

DECLARE @num INT, @cont INT, @result INT;
SET @num = 5
SET @cont = 1
SET @result = 1
 
WHILE (@cont <= @num)
BEGIN
    SET @result = @result * @cont
    SET @cont = @cont + 1
END
 
PRINT 'O fatorial de ' + CAST(@num AS VARCHAR(10)) + ' é: ' + CAST(@result AS VARCHAR(20));


/*b) Dados A, B, e C de uma equação do 2o grau da fórmula AX2+BX+C=0. Verifique e mostre a
existência de raízes reais e se caso exista, calcule e mostre. Caso não existam, exibir mensagem.
*/
DECLARE @A FLOAT = 1.0, @B FLOAT = -3.0, @C FLOAT = 2.0;
DECLARE @delta FLOAT;
 
SET @delta = @B * @B - 4 * @A * @C;
 
IF @delta > 0
BEGIN
    DECLARE @x1 FLOAT, @x2 FLOAT;
    SET @x1 = (-@B + SQRT(@delta)) / (2 * @A)
    SET @x2 = (-@B - SQRT(@delta)) / (2 * @A)
    PRINT 'As raízes reais são: ' + CAST(@x1 AS VARCHAR(20)) + ' e ' + CAST(@x2 AS VARCHAR(20));
END
ELSE IF @delta = 0
BEGIN
    DECLARE @x FLOAT;
    SET @x = -@B / (2 * @A)
    PRINT 'Existe uma raiz real: ' + CAST(@x AS VARCHAR(20))
END
ELSE
BEGIN
    PRINT 'Não existem raízes reais.'
END


/*c) Calcule e mostre quantos anos serão necessários para que Ana seja maior que Maria sabendo
que Ana tem 1,10 m e cresce 3 cm ao ano e Maria tem 1,5 m e cresce 2 cm ao ano.
*/
DECLARE @alturaAna FLOAT = 1.10
DECLARE @alturaMaria FLOAT = 1.50
DECLARE @crescimentoAna FLOAT = 0.03
DECLARE @crescimentoMaria FLOAT = 0.02
DECLARE @anos INT = 0
 
WHILE @alturaAna <= @alturaMaria
BEGIN
    SET @alturaAna = @alturaAna + @crescimentoAna
    SET @alturaMaria = @alturaMaria + @crescimentoMaria
    SET @anos = @anos + 1
END
 
PRINT 'Serão necessários ' + CAST(@anos AS VARCHAR(10)) + ' anos para que Ana seja maior que Maria.';


/*d) Seja a seguinte série: 1, 4, 4, 2, 5, 5, 3, 6, 6, 4, 7, 7, ...
Escreva uma aplicação que a escreva N termos
*/
DECLARE		@cont	INT	 = 10
DECLARE		@num 	INT	 = 1

WHILE @num <= @cont 
BEGIN 
	PRINT @num
	PRINT @num + 3
	PRINT @num + 3
	SET @num = @num + 1
END

/*
e) Considerando a tabela abaixo, gere uma massa de dados, com 50 registros, para fins de teste
com as regras estabelecidas (Não usar constraints na criação da tabela)
Produto
Codigo       Nome          Valor          Vencimento
INT (PK)    VARCHAR(30)   DECIMAL(7,2)    DATE         

• Código inicia em 50001 e incrementa de 1 em 1
• Nome segue padrão simples: Produto 1, Produto 2, Produto 3, etc.
• Valor, gerar um número aleatório* entre 10.00 e 100.00
• Vencimento, gerar um número aleatório* entre 3 e 7 e usando a função específica para
soma de datas no SQL Server, somar o valor gerado à data de hoje.

* Função RAND() gera números aleatórios entre 0 e 0,9999...
*/
CREATE TABLE produto (
    codigo INT,
    nome VARCHAR(30),
    valor DECIMAL(7,2),
    vencimento DATE,
    PRIMARY KEY (codigo)
);
 
DECLARE @codigo INT = 50001;
DECLARE @cont   INT = 1;
DECLARE @nome   VARCHAR(30);
DECLARE @valor DECIMAL(7,2);
DECLARE @vencimento DATE;
 
WHILE @cont <= 50
BEGIN
    SET @nome = 'Produto' + CAST(@cont AS VARCHAR(10));
    SET @valor = CAST((RAND() * (100.00 - 10.00) + 10.00) AS DECIMAL(7,2));
    SET @vencimento = DATEADD(DAY, CAST((RAND() * (7 - 3) + 3) AS INT), GETDATE());
 
    INSERT INTO produto (codigo, nome, valor, vencimento)
    VALUES (@codigo, @nome, @valor, @vencimento);
 
    SET @codigo = @codigo + 1;
    SET @cont = @cont + 1;
END;
 
SELECT * FROM produto;
