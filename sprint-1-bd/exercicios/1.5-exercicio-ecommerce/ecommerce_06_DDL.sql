USE Ecommerce

CREATE TABLE Lojas(
idLoja		INT PRIMARY KEY IDENTITY	--Chave Primária tabela "Lojas"
,Nome		VARCHAR(200) NOT NULL		--Coluna "Nome" tipo VARCHAR com limite de 200 caracteres		
)

CREATE TABLE Categorias(
idCategoria	INT PRIMARY KEY IDENTITY	--Chave Primária tabela "Categorias"
,idLoja		INT FOREIGN KEY REFERENCES Lojas(idLoja) --Chave Estrangeira tabela "Lojas"
,Nome		VARCHAR(200) NOT NULL		--Coluna "Nome" tipo VARCHAR 200 caracteres	
)

CREATE TABLE Subcategorias(
idSubCategoria	INT PRIMARY KEY IDENTITY --Chave Primária tabela "Subcategorias"
,idCategoria	INT FOREIGN KEY REFERENCES Categorias(idCategoria)	--Chave Estrangeira tabela "Categorias"
,Nome			VARCHAR(200) NOT NULL --Coluna "Nome" tipo VARCHAR 200 caracteres	
)

CREATE TABLE Produtos(
idProduto		INT PRIMARY KEY IDENTITY
,idSubCategoria	INT FOREIGN KEY REFERENCES Subcategorias(idSubCategoria)
,Nome			VARCHAR(200) NOT NULL
,Valor			SMALLMONEY NOT NULL
)

CREATE TABLE Cliente(
idCliente		INT PRIMARY KEY IDENTITY
,Nome			VARCHAR(200) NOT NULL 
)

CREATE TABLE Pedidos(
idPedido		INT PRIMARY KEY IDENTITY
,NumPedido		VARCHAR(20) NOT NULL
,idCliente		INT FOREIGN KEY REFERENCES Cliente(idCliente)
,DataPedido		DATE NOT NULL
,StatusPedido	VARCHAR(50) NOT NULL
)


CREATE TABLE ProdutosPedidos (
idPedido	INT PRIMARY KEY IDENTITY
,idProduto	INT FOREIGN KEY REFERENCES Produtos(idProduto)
)

DROP TABLE ProdutosPedidos

SELECT * FROM Produtos