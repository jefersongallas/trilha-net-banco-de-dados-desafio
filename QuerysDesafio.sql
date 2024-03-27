--1
select Nome, Ano from Filmes

--2 No enunciado é solicitado nome e ano dos filmes, porém a imagem de exemplo, mostra a duração, então abaixo encontram-se as duas formas
select Nome, Ano from Filmes order by Ano
select Nome, Ano, Duracao from Filmes order by Ano

--3
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro'

--4 A partir daqui, no enunciado não é especificado os campos que devem ser trazidos, então passei a utilizar o * apesar de na imagem não trazer o id
select * from Filmes where Ano = 1997

--5 A partir daqui, no enunciado não é especificado os campos que devem ser trazidos, então passei a utilizar o * apesar de na imagem não trazer o id
select * from Filmes where Ano > 2000

--6
select * from Filmes where Duracao > 100 and Duracao < 150 order by Duracao

--7 Novamente, o enunciado cita ordernar pela duração, enquanto a imagem mostra ordernado pela quantidade
select Ano, COUNT(*) AS Quantidade from filmes group by Ano order by Quantidade desc

--8
select * from Atores where Genero = 'M' --Conforme Imagem
select PrimeiroNome, UltimoNome from Atores where Genero = 'M' --Conforme enunciado

--9
select * from Atores where Genero = 'F' order by PrimeiroNome --Conforme Imagem
select PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome --Conforme enunciado

--10
select Nome, Genero from Filmes f
inner join FilmesGenero fg on f.Id = fg.IdFilme
inner join Generos g on fg.IdGenero = g.Id

--11
select Nome, g.Genero from Filmes f
inner join FilmesGenero fg on f.Id = fg.IdFilme
inner join Generos g on fg.IdGenero = g.Id
where Genero = 'Mistério'

--12
select Nome, PrimeiroNome, UltimoNome, Papel from Filmes f
inner join ElencoFilme ef on f.id = ef.IdFilme
inner join Atores a on ef.IdAtor = a.Id