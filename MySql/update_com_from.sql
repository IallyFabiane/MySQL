SELECT 
    *
FROM
    vendedores;
SELECT 
    *
FROM
    sucos_vendas.tabela_de_vendedores;

SELECT 
    *
FROM
    vendedores A
        INNER JOIN
    sucos_vendas.tabela_de_vendedores B ON A.MATRICULA = SUBSTRING(B.MATRICULA, 3, 3);
    
UPDATE vendedores A
        INNER JOIN
    sucos_vendas.tabela_de_vendedores B ON A.MATRICULA = SUBSTRING(B.MATRICULA, 3, 3) 
SET 
    A.FERIAS = B.DE_FERIAS;