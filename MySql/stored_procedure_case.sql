CREATE DEFINER=`root`@`localhost` PROCEDURE `Comparativo_Vendas_Case_Cond`(DataInicial DATE, DataFinal DATE)
BEGIN
	DECLARE FaturamentoInicial FLOAT;
	DECLARE FaturamentoFinal FLOAT;
	DECLARE Variacao float;
	SELECT SUM(B.QUANTIDADE * B.PRECO) INTO FaturamentoInicial FROM 
	notas A INNER JOIN itens_notas B
	ON A.NUMERO = B.NUMERO
	WHERE A.DATA_VENDA = DataInicial;
	SELECT SUM(B.QUANTIDADE * B.PRECO) INTO FaturamentoFinal FROM 
	notas A INNER JOIN itens_notas B
	ON A.NUMERO = B.NUMERO
	WHERE A.DATA_VENDA = DataFinal ;
	SET Variacao = ((FaturamentoFinal / FaturamentoInicial) -1) * 100; 
	CASE
	WHEN Variacao > 10 THEN SELECT 'Verde';
	WHEN Variacao > -10 AND Variacao < 10 THEN  SELECT 'Amarelo';
	WHEN Variacao <= -10 THEN SELECT 'Vermelho';
	END CASE;
END