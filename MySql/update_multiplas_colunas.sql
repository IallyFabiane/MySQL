UPDATE produtos 
SET 
    PRECO_LISTA = 5.00
WHERE
    CODIGO = 1000889;

UPDATE produtos 
SET 
    EMBALAGEM = 'PET',
    TAMANHO = '1 Litro',
    DESCRITOR = 'Sabor da Montanha- 1 Litro - Uva'
WHERE
    CODIGO = 1000889;
 
UPDATE clientes 
SET 
    ENDERECO = 'R. Jorge Emílio 23',
    BAIRRO = 'Santo Amaro',
    CIDADE = ' São Paulo',
    ESTADO = 'SP',
    CEP = 8833223
WHERE
    CPF = '19290992743';