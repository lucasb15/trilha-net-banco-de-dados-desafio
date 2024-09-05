-- 1
SELECT
	Nome,
	Ano
FROM Filmes;

-- 2
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY ANO;

-- 3
SELECT
	Nome,
	Ano,
	Duracao
From Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997';

-- 5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > '2000';

-- 6
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao BETWEEN 101 AND 149
ORDER BY Duracao ASC;

-- 7
SELECT
	Ano,
	COUNT(Ano) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8
SELECT
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'M';

-- 9
SELECT
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- 10
SELECT
	FLM.Nome,
	GNR.Genero
FROM Filmes FLM
INNER JOIN FilmesGenero FGN
ON FLM.Id = FGN.IdFilme
INNER JOIN Generos GNR
ON FGN.IdGenero = GNR.Id;

-- 11
SELECT
	FLM.Nome,
	GNR.Genero
FROM Filmes FLM
INNER JOIN FilmesGenero FGN
ON FLM.Id = FGN.IdFilme
INNER JOIN Generos GNR
ON FGN.IdGenero = GNR.Id
WHERE GNR.Genero = 'Mistério';

--12
SELECT
	FLM.Nome,
	ATR.PrimeiroNome,
	ATR.UltimoNome,
	ELF.Papel
FROM Filmes FLM
INNER JOIN ElencoFilme ELF
ON FLM.Id = ELF.IdFilme
INNER JOIN Atores ATR
ON ELF.IdAtor = ATR.Id;