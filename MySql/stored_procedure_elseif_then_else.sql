CREATE DEFINER=`root`@`localhost` PROCEDURE `Preco_Produto`(codigo VARCHAR(50))
BEGIN
	DECLARE preco FLOAT;
    DECLARE mensagem VARCHAR(30);
    SELECT PRECO_LISTA INTO preco FROM produtos WHERE CODIGO = codigo LIMIT 1;
	IF preco >= 12 THEN
      SET mensagem = 'produto caro';
	ELSEIF preco <= 7 AND preco < 12 THEN
	  SET mensagem = 'produto acessível';
	ELSE
	   SET mensagem = 'produto barato';
	END IF;
    SELECT mensagem;
END
