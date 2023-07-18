DELIMITER //
CREATE PROCEDURE `mostra_numero_alias1`()
BEGIN
	select ( 1 + 2 ) - 5 as resultado;
END//

CALL mostra_numero_alias1;
