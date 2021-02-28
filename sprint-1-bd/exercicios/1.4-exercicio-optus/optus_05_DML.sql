use Optus

insert into Usuario(Nome, Email, Senha, TipoPermissao)
values				('Augusto Pontes', 'augusto_pontes@gmail.com', 'augustopontes**20',0)
				   ,('Luiz Santos','luiz_santos@outlook.com','LUISAN1357',0)
				   ,('Gustavo Muniz','gustavo.muniz@outlook.com','gustavoMUN*88',1)
				   ,('Isabella da Silva','isabella_silva@gmail.com','isabellva01-29',0)
				   ,('Giovanna de Souza', 'giovanna_souza@outlook.com.br', 'giovanna-souuza10', 1)

insert into Favoritos (idUsuario)
values				  (1)
					 ,(1)
					 ,(2)
					 ,(2)
					 ,(3)
					 ,(3)
					 ,(4)
					 ,(5)
					 ,(5)
insert into Artistas (Nome, idFavoritos)
values				 ('Joji', 7)
					,('Rich Brian', 1)
					,('Michael Jackson', 6)
					,('Childish Gambino', 5)
					,('Tyler the Creator', 2)
					,('Kanye West', 3)
					,('Tupac', 4)
					,('Daft Punk', 8)

insert into Albuns (Titulo, DataLancamento, Duracao, Localizacao, StatusVisu, idArtistas)
values			   ('Nectar','25/09/2020','00:53:05','EUA',1,1)
				  ,('The Sailor','26/07/2019','00:44:00','EUA',1,2)
				  ,('Bad','31/08/1987','00:48:40','EUA',1,3)
				  ,('"Awaken, my love!"','02/12/2016','00:48:57','EUA',1,4)
				  ,('Flower Boy', '27/07/2017', '00:45:00', 'EUA', 1, 5)
				  ,('Jesus is King','25/10/2019','00:27:04', 'EUA', 1, 6)
				  ,('All Eyez on Me', '13/02/1995', '02:13:00', 'EUA', 1, 7)
				  ,('Homework','01/01/1997', '01:13:53', 'Fran�a', 1, 8)

insert into Estilos (Nome, idAlbuns)
values				('Alternative', 2)
				   ,('Hip-Hop', 3)
				   ,('Pop', 4)
				   ,('Indie', 2)
				   ,('Rock', 4)
				   ,('Soul', 5)
				   ,('R&B', 5)
				   ,('Jazz Rap', 6)
				   ,('Christian Hip-Hop', 7)
				   ,('Gospel', 7)
				   ,('Gangsta Rap', 8)
				   ,('Techno', 9)


SELECT * FROM Albuns

UPDATE Albuns
SET StatusVisu = 0
WHERE idAlbuns = 7 

