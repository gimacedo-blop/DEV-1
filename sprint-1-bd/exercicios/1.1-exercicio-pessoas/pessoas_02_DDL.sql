CREATE DATABASE Pessoas; --Cria o banco de dados "Pessoas"

USE Pessoas; --Acessar Banco de Dados "Pessoas"
CREATE TABLE Emails
(
	idEmails		INT PRIMARY KEY IDENTITY
	,EnderecoEmail	VARCHAR(250) NOT NULL --NÃO NULO	
);

CREATE TABLE Telefones
(
	idTelefones		INT PRIMARY KEY IDENTITY
	,NumeroTelefone	VARCHAR (20)	NOT NULL
);

CREATE TABLE Pessoas
(
	idPessoas		INT PRIMARY KEY IDENTITY
	,idEmails		INT FOREIGN KEY REFERENCES Emails(idEmails)
	,idTelefones	INT FOREIGN KEY REFERENCES Telefones(idTelefones)
	,Nome			VARCHAR(200) NOT NULL --NÃO NULO
	,CNH			VARCHAR(20) NOT NULL --NÃO NULO
);


