
/*Inserindo dados em uma tabela de um banco com base em uma query de tabela que está em outro banco*/

SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR, EMBALAGEM, TAMANHO, SABOR, PRECO_DE_LISTA AS PRECO_LISTA FROM sucos_vendas.tabela_de_produtos WHERE CODIGO_DO_PRODUTO NOT IN (SELECT CODIGO FROM produtos);

INSERT INTO produtos SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR, SABOR, TAMANHO, EMBALAGEM,PRECO_DE_LISTA AS PRECO_LISTA FROM sucos_vendas.tabela_de_produtos WHERE CODIGO_DO_PRODUTO NOT IN (SELECT CODIGO FROM produtos);