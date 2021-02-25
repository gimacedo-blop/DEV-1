CREATE DATABASE PClinics
USE PClinics;

CREATE TABLE Donos
(
	idDono		INT PRIMARY KEY IDENTITY --Chave Primária tabela "Dono"
	,Nome		VARCHAR(200) NOT NULL --NÃO NULO, Nome do dono com limite de 200 caracteres
	,Telefones	VARCHAR(20) NOT NULL --NÃO NULO, Telefone do dono com limite de 20 caracteres
);

CREATE TABLE Pet
(
	idPet		INT PRIMARY KEY IDENTITY --Chave Primária tabela "Pet"
	,idDono		INT FOREIGN KEY REFERENCES Donos(idDono) --Chave Estrangeira da tabela "Donos"
	,Nome		VARCHAR(50) NOT NULL --Nome do Pet, com limite de até 50 caracteres
	,DataNascimento		DATE NOT NULL --Data de Nacimento do pet
	,Tipo		VARCHAR(30) NOT NULL --Tipo do pet
	,Raca		VARCHAR(25) NOT NULL --Raça do pet
);

CREATE TABLE Clinica
(
	idClinica		INT PRIMARY KEY IDENTITY --Chave Primária tabela "Clinica"
	,Endereco		VARCHAR(200) NOT NULL --Endereço da Clínica
	,CNPJ			VARCHAR(20) NOT NULL --CNPJ da Clínica
);

CREATE TABLE Veterinarios
(
	idVet		INT PRIMARY KEY IDENTITY
	,idClinica	INT FOREIGN KEY REFERENCES Clinica(idClinica) --Chave Estrangeira tabela "Clinica"
);

CREATE TABLE Atendimento
(
	idAtendimento		INT PRIMARY KEY IDENTITY --Chave Primária tabela "Atendimento"
	,idPet				INT FOREIGN KEY REFERENCES Pet(idPet) --Chave Estrangeita pertencente a tabela "Pet"
	,idVet				INT FOREIGN KEY REFERENCES Veterinarios(idVet) --Chave estrangeira pertencente a tabela "Veterinarios"
	,DataAtendimento	DATE NOT NULL --Data de Atendimento
	,Horario			SMALLDATETIME NOT NULL --Horário de Atendimento
);


ALTER TABLE  Veterinarios
ADD Nome VARCHAR(200) NOT NULL

ALTER TABLE Atendimento
ALTER COLUMN Horario TIME NOT NULL