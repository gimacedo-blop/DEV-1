select * from Atendimento
select * from Clinica
select * from Donos
select * from Pet

select Nome, CRMV, RazaoSocial AS [Clínica] from Veterinarios
INNER JOIN Clinica
ON Veterinarios.idClinica = Clinica.idClinica

select * from Pet
where Raca like 'S%'

select Tipo AS [Tipo do Pet] from Pet
where  Tipo like '%O'

select Pet.Nome, Donos.Nome from Pet
inner join Donos
on Donos.idDono = Pet.idDono


				   