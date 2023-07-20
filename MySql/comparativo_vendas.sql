CREATE DEFINER=`root`@`localhost` PROCEDURE `Comparativo_Vendas`(data1 date, data2 date)
BEGIN
    DECLARE variacaoPercentual float;
    DECLARE mensagem varchar(30);
    
    SELECT SUM(B.QUANTIDADE * B.PRECO) INTO @TOTAL_VENDA1 FROM 
        notas A INNER JOIN itens_notas B
        ON A.NUMERO = B.NUMERO
        WHERE A.DATA_VENDA = data1;
    
    SELECT SUM(B.QUANTIDADE * B.PRECO) INTO @TOTAL_VENDA2 FROM 
        notas A INNER JOIN itens_notas B
        ON A.NUMERO = B.NUMERO
        WHERE A.DATA_VENDA = data2;
    
    SET variacaoPercentual = (@TOTAL_VENDA2 - @TOTAL_VENDA1) / (@TOTAL_VENDA1 * 100);
    
    IF @TOTAL_VENDA1 THEN
        SET mensagem = 'Verde';
    ELSEIF @TOTAL_VENDA2 THEN
        SET mensagem = 'Amarelo';
    ELSE
        SET mensagem = 'Vermelho';
    END IF;
    
    SELECT mensagem;
END