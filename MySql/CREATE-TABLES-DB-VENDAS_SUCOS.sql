CREATE TABLE produtos (
	CODIGO varchar(10) NOT NULL,
    DESCRITOR varchar(100) NULL,
    SABOR varchar(50) NULL,
    TAMANHO varchar(50) NULL,
    EMBALAGEM varchar(50) NULL,
    PRECO_LISTA float NULL,
    PRIMARY KEY (CODIGO)
);

CREATE TABLE vendedores (
	MATRICULA varchar(5) NOT NULL,
    NOME varchar(100) NULL,
    BAIRRO varchar(50) NULL,
    COMISSAO float NULL,
    DATA_ADMISSAO date NULL,
    FERIAS bit(1) NULL,
    PRIMARY KEY (MATRICULA)
);