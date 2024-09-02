-- ex 1
select Nome, Ano from Filmes

-- ex 2
select Nome, Ano, Duracao from Filmes order by Ano

-- ex 3
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro'

-- ex 4
select Nome, Ano, Duracao from Filmes where	Ano = 1997

-- ex 5
select Nome, Ano, Duracao from Filmes where	Ano > 2000

-- ex 6
select Nome, Ano, Duracao from Filmes where	Duracao > 100 and Duracao < 150 order by Duracao

-- ex 7
select Ano, Count(*) Quantidade from Filmes group by Ano order by Quantidade desc

-- ex 8
select PrimeiroNome, UltimoNome from Atores where Genero = 'M'

-- ex 9
select PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome, UltimoNome 

-- ex 10
select F.Nome, G.Genero from Filmes F
inner join FilmesGenero FG on F.Id = FG.IdFilme
inner join Generos G on FG.IdGenero = G.Id

-- ex 11
select F.Nome, G.Genero from Filmes F
inner join FilmesGenero FG on F.Id = FG.IdFilme
inner join Generos G on FG.IdGenero = G.Id and G.Genero = 'Mistério'

-- ex 12
select F.Nome as NomeFilme, A.PrimeiroNome, A.UltimoNome, EF.Papel from Filmes F
inner join ElencoFilme EF on F.Id = EF.IdFilme
inner join Atores A on A.Id = EF.IdAtor