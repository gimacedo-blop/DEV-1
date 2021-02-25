CREATE DATABASE PClinics
USE PClinics;

CREATE TABLE Donos
(
	idDono		INT PRIMARY KEY IDENTITY --Chave Prim�ria tabela "Dono"
	,Nome		VARCHAR(200) NOT NULL --N�O NULO, Nome do dono com limite de 200 caracteres
	,Telefones	VARCHAR(20) NOT NULL --N�O NULO, Telefone do dono com limite de 20 caracteres
);

CREATE TABLE Pet
(
	idPet		INT PRIMARY KEY IDENTITY --Chave Prim�ria tabela "Pet"
	,idDono		INT FOREIGN KEY REFERENCES Donos(idDono) --Chave Estrangeira da tabela "Donos"
	,Nome		VARCHAR(50) NOT NULL --Nome do Pet, com limite de at� 50 caracteres
	,DataNascimento		DATE NOT NULL --Data de Nacimento do pet
	,Tipo		VARCHAR(30) NOT NULL --Tipo do pet
	,Raca		VARCHAR(25) NOT NULL --Ra�a do pet
);

CREATE TABLE Clinica
(
	idClinica		INT PRIMARY KEY IDENTITY --Chave Prim�ria tabela "Clinica"
	,Endereco		VARCHAR(200) NOT NULL --Endere�o da Cl�nica
	,CNPJ			VARCHAR(20) NOT NULL --CNPJ da Cl�nica
);

CREATE TABLE Veterinarios
(
	idVet		INT PRIMARY KEY IDENTITY
	,idClinica	INT FOREIGN KEY REFERENCES Clinica(idClinica) --Chave Estrangeira tabela "Clinica"
);

CREATE TABLE Atendimento
(
	idAtendimento		INT PRIMARY KEY IDENTITY --Chave Prim�ria tabela "Atendimento"
	,idPet				INT FOREIGN KEY REFERENCES Pet(idPet) --Chave Estrangeita pertencente a tabela "Pet"
	,idVet				INT FOREIGN KEY REFERENCES Veterinarios(idVet) --Chave estrangeira pertencente a tabela "Veterinarios"
	,DataAtendimento	DATE NOT NULL --Data de Atendimento
	,Horario			SMALLDATETIME NOT NULL --Hor�rio de Atendimento
);


ALTER TABLE  Veterinarios
ADD Nome VARCHAR(200) NOT NULL

ALTER TABLE Atendimento
ALTER COLUMN Horario TIME NOT NULL