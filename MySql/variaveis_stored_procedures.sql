USE `vendas_sucos`;
DROP procedure IF EXISTS `sp_EXERCICIO`;

DELIMITER $$
USE `vendas_sucos`$$
CREATE PROCEDURE `sp_EXERCICIO` ()
BEGIN
  DECLARE cliente VARCHAR(10);
  DECLARE idade int;
  DECLARE data_nascimento date;
  DECLARE custo float;
  SET cliente =  'João';
  SET idade =  10;
  SET data_nascimento = '2007-10-01';
  SET custo = 10.23;
  SELECT cliente;
  SELECT idade;
  SELECT data_nascimento;
  SELECT custo;
END$$

DELIMITER ;

CALL sp_EXERCICIO;