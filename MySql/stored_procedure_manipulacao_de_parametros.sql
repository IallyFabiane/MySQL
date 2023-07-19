DELIMITER //
CREATE PROCEDURE `inclui_novo_produto`(vCodigo varchar(50), vNome varchar (50), 
vSabor varchar (50), vTamanho varchar (50), vEmbalagem varchar (50), vPreco decimal(10,2))
BEGIN
	INSERT INTO produtos VALUES(vCodigo, vNome, vSabor, vTamanho, vEmbalagem, vPreco);
END
//

CALL inclui_novo_produto ('400001','Sabor do Mar - 500mL - Watermelon','Melancia', '500 mL', 'Vidro', 4.67);