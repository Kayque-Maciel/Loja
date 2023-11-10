CREATE VIEW ContasNaoPagas AS
SELECT CR.ID AS 'ID da conta a receber', 
       C.Nome AS 'Nome do Cliente', 
       C.CPF, 
       CR.DataVencimento AS 'Data de vencimento da conta', 
       CR.Valor AS 'Valor da conta'
FROM ContaReceber CR
JOIN Cliente C ON CR.Cliente_ID = C.ID
WHERE CR.Situação = '1 - Conta registrada';

SELECT * FROM ContasNaoPagas;

