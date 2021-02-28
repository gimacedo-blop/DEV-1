CREATE DATABASE Optus; --Criar DB "Optus"
use Optus; --Acessar DB "Optus"

CREATE TABLE Usuario --Criar tabela "Usuario"
(
	idUsuario		INT PRIMARY KEY IDENTITY --Chave Prim�ria tabela "Usuario"
	,Nome			VARCHAR(200) NOT NULL --Nome do Usu�rio
	,Email			VARCHAR(250) NOT NULL --Email do Usu�rio
	,Senha			VARCHAR(100) NOT NULL --Senha do Usu�rio
	,TipoPermissao	BIT NOT NULL --Dois tipos de permiss�o, comum e adiministrador
);

CREATE TABLE Favoritos
(
	idFavoritos		INT PRIMARY KEY IDENTITY --Chave Prim�ria da tabela "Favoritos"
	,idUsuario		INT FOREIGN KEY REFERENCES Usuario(idUsuario) --Chave Estrangeira da tabela "Usu�rio"
);

CREATE TABLE Artistas
(
	idArtistas		INT PRIMARY KEY IDENTITY --Chave Prim�ria da tabela "Artistas"
	,idFavoritos	INT FOREIGN KEY REFERENCES Favoritos(idFavoritos) --Chave Estrangeira da tabela "Favoritos"
	,Nome			VARCHAR(100) NOT NULL --Nome do Artista
);

CREATE TABLE Albuns
(
	idAlbuns		INT PRIMARY KEY IDENTITY --Chave Prim�ria da tabela "Albuns"
	,idArtistas		INT FOREIGN KEY REFERENCES Artistas(idArtistas) --Chave Estrangeira da tabela "Artistas"	
	,Titulo			VARCHAR(150) NOT NULL --T�tulo �lbum
	,DataLancamento	DATE NOT NULL --Data de lan�amento
	,Duracao		NUMERIC(3,2) NOT NULL --Dura��o do �lbum
	,Localizacao	VARCHAR(100) NOT NULL --Localiza��o do �lbum
	,StatusVisu		BIT NOT NULL --Status do �lbum, ativo ou n�o	
);

CREATE TABLE Estilos
(
	idEstilosINT	INT PRIMARY KEY IDENTITY --Chave Prim�ria tabela "estilos"
	,idAlbuns		INT FOREIGN KEY REFERENCES Albuns(idAlbuns) --Chave Estrangeira tabela "Albuns"
	,Nome			VARCHAR(30) NOT NULL --Nome do estilo musical
);




ALTER TABLE Albuns
DROP COLUMN Duracao

ALTER TABLE Albuns
ADD Duracao TIME NOT NULL


SELECT * FROM Usuario

