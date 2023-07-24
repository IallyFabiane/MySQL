CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_looping_multiplas_colunas`()
BEGIN
    DECLARE fimDoCursor INT DEFAULT 0;
    DECLARE nome, endereco VARCHAR(150);
    DECLARE cidade, estado, cep VARCHAR(50);
    DECLARE c CURSOR FOR
        SELECT nome, endereco, cidade, estado, cep FROM clientes;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fimDoCursor = 1;
    OPEN c;
    
    WHILE fimDoCursor = 0 DO
        FETCH c INTO nome, endereco, cidade, estado, cep;
        IF fimDoCursor = 0 THEN 
            SELECT CONCAT(nome, ' - Endereço: ', endereco, ', ', cidade, ', ', estado, ' - CEP: ', cep);
        END IF;
    END WHILE;
    
    CLOSE c;
END