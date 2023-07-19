CREATE DEFINER=`root`@`localhost` PROCEDURE `inclui_novo_produto`(vCodigo varchar(50), vNome varchar (50), 
vSabor varchar (50), vTamanho varchar (50), vEmbalagem varchar (50), vPreco decimal(10,2))
BEGIN
	DECLARE mensagem varchar(100);
    DECLARE EXIT HANDLER FOR 1062
    BEGIN
		SET mensagem = 'Problema com a chave primária.';
		SELECT mensagem;
    END;
	INSERT INTO produtos VALUES(vCodigo, vNome, vSabor, vTamanho, vEmbalagem, vPreco);
    SET mensagem = 'Produto adicionado com sucesso!!!';
	SELECT mensagem;
END