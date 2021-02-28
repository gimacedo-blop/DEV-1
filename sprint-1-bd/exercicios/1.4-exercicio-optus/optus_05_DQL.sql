USE Optus

SELECT * FROM Estilos
SELECT Titulo, DataLancamento, Localizacao, StatusVisu FROM Albuns
SELECT * FROM Artistas
SELECT * FROM Favoritos
SELECT * FROM Usuario

SELECT  Nome, TipoPermissao FROM Usuario
WHERE TipoPermissao = 1

SELECT Titulo AS [Álbum], DataLancamento FROM Albuns
WHERE DataLancamento > '01-01-2018'

SELECT Titulo AS [Álbum], StatusVisu AS [Status], Artistas.Nome, Estilos.Nome FROM Albuns
INNER JOIN Artistas
ON Albuns.idArtistas = Artistas.idArtistas
INNER JOIN Estilos
ON Albuns.idAlbuns = Estilos.idAlbuns
WHERE StatusVisu = 1




