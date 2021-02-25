CREATE DATABASE Locadora; --Criar DB "Locadora"

USE Locadora; --Acessar DB "Locadora"
CREATE TABLE Empresa
(
	idEmpresa		INT PRIMARY KEY IDENTITY--Chave Primára da tabela "Empresa"
	,Endereco		VARCHAR(200) NOT NULL --Endereço da Empresa, pode conter até 200 caracteres e não pode ser deixado em branco
	,CNPJ			VARCHAR(20) NOT NULL --CNPJ da Empresa, pode conter até 20 caracteres
);
 
CREATE TABLE Veiculos
 (
	idVeiculos		INT PRIMARY KEY IDENTITY --Chave Primária tabela "Veiculos"
	,idEmpresa		INT FOREIGN KEY REFERENCES Empresa(idEmpresa) --Chave Estrangeira da tabela "Empresa"
	,Placas			VARCHAR(10)	NOT NULL --Número da placa dos veículos, podendo conter até 10 caracteres e esse campo não pode ser deixado em branco
	,Modelos		VARCHAR(150) NOT NULL --Modelo dos veículos
	,Marcas			VARCHAR(150) NOT NULL --Marca dos veículos
 );

CREATE TABLE Alugueis
 (
	idAlugueis		INT PRIMARY KEY IDENTITY --Chave primária tabela "Veiculos"
	,idVeiculos		INT FOREIGN KEY REFERENCES Veiculos(idVeiculos) --Chave estrangeira pertencente a tabela "Veiculos"
	,DataRetirada	DATE NOT NULL	--Data em que o veículo foi alugado e retirado
	,DataEntrega	DATE NOT NULL	--Data de entrega do veículo
	,ValorAluguel	NUMERIC(5,2) NOT NULL	--Valor do aluguel do carro
 );

CREATE TABLE Cliente
 (
	idCliente		INT PRIMARY KEY IDENTITY --Chave Primária tabela "Cliente"
	,idAlugueis	 	INT FOREIGN KEY REFERENCES Alugueis(idAlugueis) --Chave Estrangeira pertencente a tabela "Alugueis"
	,Nome			VARCHAR(150) NOT NULL --Nome do Cliente, com o limite de até 150 caracteres
	,Telefones		VARCHAR(20) NOT NULL --Número do Cliente, com o limite de até 20 caracteres
	,CPF			VARCHAR(20) NOT NULL --Número do CPF do cliente, com o limite de até 20 caracteres
	,RG				VARCHAR(10) NOT NULL --Número do RG do Cliente, com o limite de até 10 caracteres
 );
