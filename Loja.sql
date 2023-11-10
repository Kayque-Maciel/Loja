create database Loja
DEFAULT CHARSET = utf8
DEFAULT COLLATE = utf8_general_ci;

use Loja;

create table ContaReceber(
	ID int auto_increment not null primary key,
    Cliente_ID int,
    FaturaVendaID int,
    DataConta date not null,
    DataVencimento date not null,
    Valor decimal(18,2) not null,
    Situação enum ('1 - Conta registrada', '2 - Conta cancelada', '3 - Conta paga') not null
    );
    
    create table Cliente(
	ID int auto_increment not null primary key,
    Nome varchar(80) not null,
    CPF char(11) not null,
    Celular char(11),
    EndLogradouro varchar(100) not null,
    EndNumero varchar(10) not null,
    EndMunicipio int not null,
    EndCEP char(8),
    Municipio_ID int not null
    );
    
    create table Municipio(
	ID int auto_increment not null primary key,
    Estado_ID int not null,
    Nome varchar(80),
    CodIBGE int not null
    );
    
    create table Estado(
	ID int auto_increment not null primary key,
    Nome varchar(50),
    UF char(2)
    );

ALTER TABLE ContaReceber
ADD CONSTRAINT fk_ContaReceber_Cliente
FOREIGN KEY (Cliente_ID) 
REFERENCES Cliente(ID);

ALTER TABLE Cliente
ADD CONSTRAINT fk_Cliente_Municipio
FOREIGN KEY (Municipio_ID) 
REFERENCES Municipio(ID);

ALTER TABLE Municipio
ADD CONSTRAINT fk_Municipio_Estado
FOREIGN KEY (Estado_ID) 
REFERENCES Estado(ID);


    