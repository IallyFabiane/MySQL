SELECT * FROM tabela_de_clientes WHERE BAIRRO IN (
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores);