CREATE DEFINER=`root`@`localhost` PROCEDURE `incrementador_id`(numeroInicial int, numeroFinal int)
BEGIN
	DECLARE contador int;
    DELETE FROM tab_looping;
    SET contador  =  numeroInicial;
	WHILE contador <= numeroFinal
    DO 
		INSERT INTO tab_looping (ID) VALUES (contador);
        SET contador  = contador + 1;
    END WHILE;
    SELECT * FROM tab_looping;
END