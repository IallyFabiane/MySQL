CREATE DEFINER=`root`@`localhost` PROCEDURE `cliente_jovem_velho`(cpf varchar(20))
BEGIN
DECLARE resultado varchar(20);
DECLARE dataNascimento date;
SELECT DATA_NASCIMENTO INTO dataNascimento FROM clientes WHERE CPF = cpf LIMIT 1;
	IF dataNascimento < '2000-01-01' THEN
		SET resultado =  'cliente velho';
	ELSE
		SET resultado =  'cliente jovem';
    END IF;
    SELECT resultado;
END