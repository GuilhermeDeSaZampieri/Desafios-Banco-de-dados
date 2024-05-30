select*from Atores
select*from Filmes
select*from ElencoFilmes
select*from Generos
select*from FilmesGenero

--Seleciona nome e ano da tabela filmes
Select Nome, Ano From Filmes

--Seleciona nome, ano e dura��o da tabela filmes com base no ano crescente
Select 
Nome, 
Ano,
Duracao From Filmes Order by Ano

-- Busca o filme de volta para o futuro seu ano e dura��o
Select
Nome,
Ano,
Duracao
from Filmes
where Nome = 'De Volta para o Futuro'

--Buscar os filmes lan�ados em 1977
Select
Nome,
Ano,
Duracao
from Filmes
where Ano = 1997;

--Buscar os filmes lan�ados AP�S o ano 2000
Select
Nome,
Ano,
Duracao
from Filmes
where Ano > 2000

--Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
Select
Nome,
Ano,
Duracao
from Filmes
where Duracao > 100 AND Duracao < 150
order by Duracao

-- Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela Quantidade de fimes por ano
Select
Ano,
Count(*) quantidade
from Filmes
group by Ano
Order by quantidade desc

--Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
Select 
Id,
PrimeiroNome,
UltimoNome,
Genero
from Atores
where Genero = 'M'

--Buscar os Atrizes do g�nero Feminino, retornando o PrimeiroNome, UltimoNome
Select 
Id,
PrimeiroNome,
UltimoNome,
Genero
from Atores
where Genero = 'F'

--Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
Select 
Id,
PrimeiroNome,
UltimoNome,
Genero
from Atores
where Genero = 'F'
order by PrimeiroNome 

--Buscar o nome do filme e o g�nero
Select
F.Nome,
G.Genero
from FilmesGenero FG
INNER JOIN  Filmes F  ON FG.IdFilme = F.Id
INNER JOIN  Generos G ON FG.IdGenero = G.Id;

--Buscar o nome do filme e o g�nero do tipo "Mist�rio"
select 
	F.Nome,
	G.Genero
from FilmesGenero FG
Inner JOIN Filmes F ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id  
where Genero = 'Mist�rio'

--  Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

select
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	EF.Papel
from 
ElencoFilmes Ef
Inner JOIN Atores a  ON a.Id = Ef.IdAtor
Inner Join Filmes f ON f.Id = Ef.IdFilme
