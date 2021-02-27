USE PClinics
INSERT INTO Donos(Nome,Telefones)
VALUES			 ('Samuel Santos', '(11) 99562-2201')
				,('João Augusto', '(11) 96223-3314')
				,('Ingrid Silveira', '(11) 98854-2199')
INSERT INTO Pet(Nome, DataNascimento, Tipo, Raca, idDono)
VALUES		   ('Rico', '14-01-2016', 'Cachorro', 'Boxer', 2)
			  ,('Floco','10-02-2017','Cachorro','Samoieda', 3)
			  ,('Garfield','27-09-2015','Gato','Siberiano',1)
INSERT INTO Clinica (Endereco,CNPJ)
VALUES				('Rua Otomaina - Jardim Vila Formosa, São Paulo', '39.156.489/002-89')

INSERT INTO Veterinarios(Nome, idClinica)
VALUES					 ('Manuel Santos', 1)
					    ,('Pedro Oliveira', 1)
						,('Luis Silva',1)

INSERT INTO Atendimento (idVet,idPet,DataAtendimento,Horario)
VALUES				     (2,3,'23/02/2021', '10:00')
						,(3,1,'23/02/2021','9:00')
						,(1, 2, '23/02/2021','9:30')

DELETE FROM Atendimento WHERE idAtendimento = 5
DELETE FROM Atendimento WHERE idAtendimento = 6
DELETE FROM Atendimento WHERE idAtendimento = 7

ALTER TABLE Clinica
DROP COLUMN RazaoSocial

ALTER TABLE Clinica
ADD RazaoSocial VARCHAR(200)

ALTER TABLE Veterinarios
ADD CRMV VARCHAR(200) 

INSERT INTO Clinica (RazaoSocial)
