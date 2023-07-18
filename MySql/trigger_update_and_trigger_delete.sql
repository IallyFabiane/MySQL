DELIMITER //
CREATE 
    TRIGGER  tg_calcula_faturamento_update
 AFTER UPDATE ON itens_notas FOR EACH ROW 
    BEGIN 
    DELETE FROM tab_faturamento;

INSERT INTO tab_faturamento
SELECT 
    A.DATA_VENDA, SUM(B.QUANTIDADE * B.PRECO) AS TOTAL_VENDAS
FROM
    notas A
        INNER JOIN
    itens_notas B ON A.NUMERO = B.NUMERO
GROUP BY A.DATA_VENDA;
END
//

DELIMITER //
CREATE 
    TRIGGER  tg_calcula_faturamento_delete
 AFTER DELETE ON itens_notas FOR EACH ROW 
    BEGIN 
    DELETE FROM tab_faturamento;

INSERT INTO tab_faturamento
SELECT 
    A.DATA_VENDA, SUM(B.QUANTIDADE * B.PRECO) AS TOTAL_VENDAS
FROM
    notas A
        INNER JOIN
    itens_notas B ON A.NUMERO = B.NUMERO
GROUP BY A.DATA_VENDA;
END
//