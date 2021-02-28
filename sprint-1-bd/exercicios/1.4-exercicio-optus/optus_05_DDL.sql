CREATE DATABASE Optus; --Criar DB "Optus"
use Optus; --Acessar DB "Optus"

CREATE TABLE Usuario --Criar tabela "Usuario"
(
	idUsuario		INT PRIMARY KEY IDENTITY --Chave Primária tabela "Usuario"
	,Nome			VARCHAR(200) NOT NULL --Nome do Usuário
	,Email			VARCHAR(250) NOT NULL --Email do Usuário
	,Senha			VARCHAR(100) NOT NULL --Senha do Usuário
	,TipoPermissao	BIT NOT NULL --Dois tipos de permissão, comum e adiministrador
);

CREATE TABLE Favoritos
(
	idFavoritos		INT PRIMARY KEY IDENTITY --Chave Primária da tabela "Favoritos"
	,idUsuario		INT FOREIGN KEY REFERENCES Usuario(idUsuario) --Chave Estrangeira da tabela "Usuário"
);

CREATE TABLE Artistas
(
	idArtistas		INT PRIMARY KEY IDENTITY --Chave Primária da tabela "Artistas"
	,idFavoritos	INT FOREIGN KEY REFERENCES Favoritos(idFavoritos) --Chave Estrangeira da tabela "Favoritos"
	,Nome			VARCHAR(100) NOT NULL --Nome do Artista
);

CREATE TABLE Albuns
(
	idAlbuns		INT PRIMARY KEY IDENTITY --Chave Primária da tabela "Albuns"
	,idArtistas		INT FOREIGN KEY REFERENCES Artistas(idArtistas) --Chave Estrangeira da tabela "Artistas"	
	,Titulo			VARCHAR(150) NOT NULL --Título Álbum
	,DataLancamento	DATE NOT NULL --Data de lançamento
	,Duracao		NUMERIC(3,2) NOT NULL --Duração do álbum
	,Localizacao	VARCHAR(100) NOT NULL --Localização do Álbum
	,StatusVisu		BIT NOT NULL --Status do álbum, ativo ou não	
);

CREATE TABLE Estilos
(
	idEstilosINT	INT PRIMARY KEY IDENTITY --Chave Primária tabela "estilos"
	,idAlbuns		INT FOREIGN KEY REFERENCES Albuns(idAlbuns) --Chave Estrangeira tabela "Albuns"
	,Nome			VARCHAR(30) NOT NULL --Nome do estilo musical
);




ALTER TABLE Albuns
DROP COLUMN Duracao

ALTER TABLE Albuns
ADD Duracao TIME NOT NULL


SELECT * FROM Usuario

