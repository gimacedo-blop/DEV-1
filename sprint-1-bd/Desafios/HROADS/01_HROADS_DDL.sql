CREATE TABLE SENAI_HROADS_MANHA

CREATE TABLE TiposHabilidade (
idTipo				INT PRIMARY KEY IDENTITY
,Nome				VARCHAR(200) NOT NULL
)

CREATE TABLE Habilidades (
idHabilidades		INT PRIMARY KEY IDENTITY
,idTipo				INT FOREIGN KEY REFERENCES TiposHabilidade(idTipo)
,Nome				VARCHAR(200) NOT NULL
)

CREATE TABLE Classes (
idClasses			INT PRIMARY KEY IDENTITY
,idHabilidades		INT FOREIGN KEY REFERENCES Habilidades(idHabilidades)
,Nome				VARCHAR(200) NOT NULL			
)

CREATE TABLE Personagens (
idPersonagens		INT PRIMARY KEY IDENTITY
,idClasses			INT FOREIGN KEY REFERENCES Classes(idClasses)
,Nome				VARCHAR(200) NOT NULL
,QntVida			INT NOT NULL
,QntMana			INT NOT NULL
,DataAtualizacao	DATE NOT NULL
,DataCriacao		DATE NOT NULL
)


