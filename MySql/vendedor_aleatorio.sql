CREATE DEFINER=`root`@`localhost` FUNCTION `vendedor_aleatorio`() RETURNS varchar(100) CHARSET utf8mb4
BEGIN
	DECLARE retorno VARCHAR(100);
    DECLARE num_max_tabela INT;
	DECLARE num_aleatorio INT;
    SELECT COUNT(*) INTO num_max_tabela FROM vendedores;
	SET num_aleatorio = NumeroAleatorio(1, num_max_tabela);
	SET num_aleatorio = num_aleatorio - 1;
	SELECT NOME INTO retorno FROM vendedores
	LIMIT num_aleatorio, 1;
RETURN retorno;
END