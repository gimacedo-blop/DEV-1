CREATE DATABASE Locadora; --Criar DB "Locadora"

USE Locadora; --Acessar DB "Locadora"
CREATE TABLE Empresa
(
<<<<<<< HEAD
	idEmpresa		INT PRIMARY KEY IDENTITY --Chave Prim·ra da tabela "Empresa"
	,Endereco		VARCHAR(200) NOT NULL --EndereÁo da Empresa, pode conter atÈ 200 caracteres e n„o pode ser deixado em branco
	,CNPJ			VARCHAR(20) NOT NULL --CNPJ da Empresa, pode conter atÈ 20 caracteres
=======
	idEmpresa		INT PRIMARY KEY IDENTITY--Chave Prim√°ra da tabela "Empresa"
	,Endereco		VARCHAR(200) NOT NULL --Endere√ßo da Empresa, pode conter at√© 200 caracteres e n√£o pode ser deixado em branco
	,CNPJ			VARCHAR(20) NOT NULL --CNPJ da Empresa, pode conter at√© 20 caracteres
>>>>>>> f0594db2b248195fb06a3e744875595df2777006
);
 
CREATE TABLE Veiculos
 (
	idVeiculos		INT PRIMARY KEY IDENTITY --Chave Prim√°ria tabela "Veiculos"
	,idEmpresa		INT FOREIGN KEY REFERENCES Empresa(idEmpresa) --Chave Estrangeira da tabela "Empresa"
	,Placas			VARCHAR(10)	NOT NULL --N√∫mero da placa dos ve√≠culos, podendo conter at√© 10 caracteres e esse campo n√£o pode ser deixado em branco
	,Modelos		VARCHAR(150) NOT NULL --Modelo dos ve√≠culos
	,Marcas			VARCHAR(150) NOT NULL --Marca dos ve√≠culos
 );

CREATE TABLE Alugueis
 (
	idAlugueis		INT PRIMARY KEY IDENTITY --Chave prim√°ria tabela "Veiculos"
	,idVeiculos		INT FOREIGN KEY REFERENCES Veiculos(idVeiculos) --Chave estrangeira pertencente a tabela "Veiculos"
<<<<<<< HEAD
	,DataRetirada	DATE NOT NULL	--Data em que o veÌculo foi alugado e retirado
	,DataEntrega	DATE NOT NULL	--Data de entrega do veÌculo
	,ValorAluguel	SMALLMONEY NOT NULL	--Valor do aluguel do carro
=======
	,DataRetirada	DATE NOT NULL	--Data em que o ve√≠culo foi alugado e retirado
	,DataEntrega	DATE NOT NULL	--Data de entrega do ve√≠culo
	,ValorAluguel	NUMERIC(5,2) NOT NULL	--Valor do aluguel do carro
>>>>>>> f0594db2b248195fb06a3e744875595df2777006
 );

CREATE TABLE Cliente
 (
	idCliente		INT PRIMARY KEY IDENTITY --Chave Prim√°ria tabela "Cliente"
	,idAlugueis	 	INT FOREIGN KEY REFERENCES Alugueis(idAlugueis) --Chave Estrangeira pertencente a tabela "Alugueis"
<<<<<<< HEAD
	,Nome			VARCHAR(150) NOT NULL --Nome do Cliente, com o limite de atÈ 150 caracteres
	,Telefones		VARCHAR(20) NOT NULL --N˙mero do Cliente, com o limite de atÈ 20 caracteres
	,CPF			VARCHAR(20) NOT NULL --N˙mero do CPF do cliente, com o limite de atÈ 20 caracteres
	,RG				VARCHAR(20) NOT NULL --N˙mero do RG do Cliente, com o limite de atÈ 10 caracteres
 );
  
=======
	,Nome			VARCHAR(150) NOT NULL --Nome do Cliente, com o limite de at√© 150 caracteres
	,Telefones		VARCHAR(20) NOT NULL --N√∫mero do Cliente, com o limite de at√© 20 caracteres
	,CPF			VARCHAR(20) NOT NULL --N√∫mero do CPF do cliente, com o limite de at√© 20 caracteres
	,RG				VARCHAR(10) NOT NULL --N√∫mero do RG do Cliente, com o limite de at√© 10 caracteres
 );
>>>>>>> f0594db2b248195fb06a3e744875595df2777006
