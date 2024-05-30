CREATE DATABASE [Filmes]

create table Atores
(
	Id int IDENTITY (1,1) PRIMARY KEY not null,
	PrimeiroNome varchar(20) null,
	UltimoNome varchar(20) null,
	Genero char(1) null
)

create table ElencoFilmes
(
	Id int IDENTITY (1,1) PRIMARY KEY not null,
	IdAtor int not null,
	IdFilme int null,
	Papel varchar(30) null

	CONSTRAINT FK_ElencoFilmes_Atores FOREIGN KEY (IdAtor) 
	REFERENCES Atores(Id),

	CONSTRAINT FK_ElencoFilmes_Filmes FOREIGN KEY (IdFilme) 
	REFERENCES Atores(Id)
)

create table Filmes
(
	Id int IDENTITY (1,1) PRIMARY KEY not null,
	Nome varchar(50) null,
	Ano int null,
	Duracao int null
)

create table Generos
(
	Id int IDENTITY (1,1) PRIMARY KEY not null,
	Genero varchar(20) null
)

create table FilmesGenero
(
	Id int IDENTITY (1,1) PRIMARY KEY not null,
	IdGenero int null,
	IdFilme int null,

	CONSTRAINT FK_FilmeGenero_Generos FOREIGN KEY (IdGenero)
	REFERENCES Generos(Id),

	CONSTRAINT FK_FilmesGeneros_Filme FOREIGN KEY (IdFilme)
	REFERENCES Filmes(Id)
)





