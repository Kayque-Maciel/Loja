INSERT INTO Estado (ID, Nome, UF) VALUES 
    (0, 'São Paulo', 'SP'),
    (0, 'Rio de Janeiro', 'RJ'),
    (0, 'Minas Gerais', 'MG');

INSERT INTO Municipio (ID, Estado_ID, Nome, CodIBGE) VALUES 
    (0, 1, 'São Paulo', 3550308),
    (0, 2, 'Rio de Janeiro', 3304557),
    (0, 3, 'Belo Horizonte', 3106200);

INSERT INTO Cliente (ID, Nome, CPF, Celular, EndLogradouro, EndNumero, EndMunicipio, EndCEP, Municipio_ID) VALUES 
    (0, 'João Silva', '12345678901', '11987654321', 'Rua A', '100', 1, '01234567', 1),
    (0, 'Maria Souza', '98765432101', '21987654321', 'Avenida B', '200', 2, '87654321', 2),
    (0, 'Pedro Oliveira', '45678912301', '31987654321', 'Praça C', '300', 3, '76543210', 3);

INSERT INTO ContaReceber (ID, Cliente_ID, FaturaVendaID, DataConta, DataVencimento, Valor, Situação) VALUES 
    (0, 1, 101, '2023-01-15', '2023-02-15', 1500.00, '1 - Conta registrada'),
    (0, 2, 102, '2023-02-20', '2023-03-20', 2500.00, '2 - Conta cancelada'),
    (0, 3, 103, '2023-03-25', '2023-04-25', 3500.00, '3 - Conta paga');