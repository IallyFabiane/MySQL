SELECT NOME, TIMESTAMPDIFF (YEAR, DATA_DE_NASCIMENTO, CURDATE()) AS    IDADE
FROM  tabela_de_clientes;
