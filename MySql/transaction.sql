/*transação não confirmada*/

START TRANSACTION;
UPDATE vendedores SET COMISSAO = COMISSAO * 1.15;
SELECT * FROM vendedores;
ROLLBACK;

/*transação confirmada*/

START TRANSACTION;
UPDATE vendedores SET COMISSAO = COMISSAO * 1.15;
SELECT * FROM vendedores;
COMMIT;