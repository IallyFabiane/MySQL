CREATE DEFINER=`root`@`localhost` PROCEDURE `procura_sabor_produto`(codigoProduto varchar(50))
BEGIN
    DECLARE sabor varchar(50);
    
    SELECT SABOR INTO sabor FROM produtos WHERE CODIGO = codigoProduto;
    
    IF sabor IS NULL THEN
        SELECT 'Sabor não encontrado ou nulo';
    ELSE
        SELECT sabor;
    END IF;
END