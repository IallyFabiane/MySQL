CREATE DEFINER=`root`@`localhost` FUNCTION `f_Acha_Tipo_Sabor`(sabor varchar(50)) RETURNS varchar(20) CHARSET utf8mb4
BEGIN
	DECLARE retorno varchar(20) DEFAULT '';
	CASE sabor
	WHEN 'Lima/limão' THEN SET retorno = 'cítrico';
	WHEN 'Cereja' THEN SET retorno = 'frutas vermelhas';
	ELSE SET retorno = 'outros';
    END CASE;
RETURN retorno;
END