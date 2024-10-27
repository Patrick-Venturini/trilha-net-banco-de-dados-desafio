--1
SELECT [Nome]
      ,[Ano]
  FROM [Filmes].[dbo].[Filmes]

--2
SELECT [Nome]
      ,[Ano]
	  ,[Duracao]
  FROM [Filmes].[dbo].[Filmes]
  ORDER BY [ANO]

--3
SELECT [Nome]
      ,[Ano]
	  ,[Duracao]
  FROM [Filmes].[dbo].[Filmes]
  WHERE [NOME] = 'De Volta para o Futuro';

--4
SELECT [Nome]
      ,[Ano]
	  ,[Duracao]
  FROM [Filmes].[dbo].[Filmes]
  WHERE [ANO] = '1997';

--5
SELECT [Nome]
      ,[Ano]
	  ,[Duracao]
  FROM [Filmes].[dbo].[Filmes]
  WHERE [ANO] > '2000';

--6
SELECT [Nome]
      ,[Ano]
	  ,[Duracao]
  FROM [Filmes].[dbo].[Filmes]
  WHERE [DURACAO] BETWEEN 101 AND 149
  ORDER BY [DURACAO];

--7
SELECT Ano
	  ,COUNT(*) AS Quantidade
	  FROM Filmes
	  GROUP BY Ano
	  ORDER BY Quantidade DESC, Ano DESC;


--8
SELECT *
      FROM [Filmes].[dbo].[Atores]
	  WHERE GENERO = 'M';

--9
SELECT *
      FROM [Filmes].[dbo].[Atores]
	  WHERE GENERO = 'F'
	  ORDER BY [PrimeiroNome];

--10
SELECT F.Nome
	  ,G.Genero 
	  FROM Filmes AS F
	  INNER JOIN FilmesGenero AS FG
      ON F.Id = FG.IdFilme
      INNER JOIN Generos AS G
      ON G.Id = FG.IdGenero;

--11
SELECT F.Nome
	  ,G.Genero 
	  FROM Filmes AS F
	  INNER JOIN FilmesGenero AS FG
      ON F.Id = FG.IdFilme
      INNER JOIN Generos AS G
      ON G.Id = FG.IdGenero
	  WHERE Genero = 'Mistério';


--12
SELECT F.NOME
      ,A.PrimeiroNome
	  ,A.UltimoNome
	  ,E.Papel
	  FROM Filmes AS F
	  INNER JOIN ElencoFilme AS E
	  ON F.Id = E.IdFilme
	  INNER JOIN Atores AS A
	  ON A.Id = E.IdAtor


