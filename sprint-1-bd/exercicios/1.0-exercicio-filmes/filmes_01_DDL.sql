CREATE DATABASE Filmes; --Cria um banco de dados chamado 'Filmes'
USE Filmes; --Acessa o banco de dados 'Filmes'

--DDL
CREATE TABLE Generos
(
	idGenero	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL -- NÃO NULO
);

CREATE TABLE Filmes
(
	idFilmes	INT PRIMARY KEY IDENTITY 
	,idGenero	INT FOREIGN KEY REFERENCES Generos (idGenero)
	,Titulo		VARCHAR(200) NOT NULL --NÃO NULO
);

