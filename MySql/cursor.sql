CREATE DEFINER=`root`@`localhost` PROCEDURE `Cursor_Looping`()
BEGIN
    DECLARE fimDoCursor int DEFAULT (0);
	DECLARE nome varchar(50);
    DECLARE c CURSOR FOR 
    SELECT NOME FROM clientes LIMIT 4;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fimDoCursor = 1;
    OPEN c;
    WHILE fimDoCursor = 0
    DO 
		FETCH c INTO nome;
		IF fimDoCursor  = 0 THEN
			SELECT nome;
		END IF;
    END WHILE;
    CLOSE c;
END
