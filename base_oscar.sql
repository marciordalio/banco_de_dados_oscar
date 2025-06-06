USE oscar_database;

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, nome_do_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST PICTURE', 'Nome Produção', 'Nome Filme', 'false');

SELECT COUNT(*) FROM indicados_ao_oscar;

SELECT categoria, COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
GROUP BY categoria
ORDER BY total_indicacoes DESC;

SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_do_indicado LIKE '%Natalie Portman%';

SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_do_indicado LIKE '%Natalie Portman%' AND vencedor = 'true';

SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_do_indicado LIKE '%Viola Davis%';

SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_do_indicado LIKE '%Viola Davis%' AND vencedor = 'true';

SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_do_indicado LIKE '%Amy Adams%' AND vencedor = 'true';

SELECT nome_do_indicado, COUNT(*) AS indicacoes
FROM indicados_ao_oscar
WHERE categoria LIKE '%ACTOR%' OR categoria LIKE '%ACTRESS%'
GROUP BY nome_do_indicado
HAVING COUNT(*) > 1
ORDER BY indicacoes DESC;

SELECT ano_cerimonia 
FROM indicados_ao_oscar
WHERE nome_do_filme LIKE '%Toy Story%' AND vencedor = 'true';

SELECT MAX(ano_cerimonia)
FROM indicados_ao_oscar
WHERE categoria = 'ACTRESS';

SELECT nome_do_indicado, ano_cerimonia
FROM indicados_ao_oscar
WHERE categoria = 'ACTRESS' AND vencedor = 'true'
ORDER BY ano_cerimonia ASC
LIMIT 1;

UPDATE indicados_ao_oscar SET vencedor = '1' WHERE vencedor = 'true';
UPDATE indicados_ao_oscar SET vencedor = '0' WHERE vencedor = 'false';

SELECT DISTINCT cerimonia
FROM indicados_ao_oscar
WHERE nome_do_filme LIKE '%Crash%';

SELECT * 
FROM indicados_ao_oscar
WHERE nome_do_filme LIKE '%Central do Brasil%';

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, nome_do_filme, vencedor)
VALUES 
(1994, 1995, 67, 'BEST PICTURE', 'Shawshank Redemption', 'Um Sonho de Liberdade', '0'),
(2001, 2002, 74, 'BEST PICTURE', 'David Lynch', 'Cidade dos Sonhos', '0'),
(1999, 2000, 72, 'BEST PICTURE', 'Jim Carrey', 'O Show de Truman', '0');

SELECT COUNT(*) FROM indicados_ao_oscar WHERE nome_do_indicado LIKE '%Denzel Washington%' AND vencedor = 'true'; 

SELECT nome_do_filme, ano_filmagem FROM indicados_ao_oscar WHERE categoria = 'BEST PICTURE' AND vencedor = 'true';

SELECT nome_do_filme, ano_cerimonia
FROM indicados_ao_oscar
WHERE nome_do_indicado LIKE '%Sidney Poitier%'
ORDER BY ano_cerimonia ASC
LIMIT 1;

SELECT DISTINCT a.nome_do_filme, a.ano_filmagem, a.cerimonia
FROM indicados_ao_oscar a
JOIN indicados_ao_oscar b 
  ON a.nome_do_filme = b.nome_do_filme
  AND a.ano_cerimonia = b.ano_cerimonia
  AND a.cerimonia = b.cerimonia
WHERE a.categoria = 'BEST PICTURE' 
  AND b.categoria = 'DIRECTING'
  AND a.vencedor = 'true' 
  AND b.vencedor = 'true';

SELECT DISTINCT ano_cerimonia
FROM indicados_ao_oscar
WHERE nome_do_indicado IN ('Denzel Washington', 'Jamie Foxx')
GROUP BY ano_cerimonia
HAVING COUNT(DISTINCT nome_do_indicado) = 2;

SELECT DISTINCT ano_cerimonia
FROM indicados_ao_oscar
WHERE nome_do_indicado IN ('Denzel Washington', 'Jamie Foxx')
GROUP BY ano_cerimonia
HAVING COUNT(DISTINCT nome_do_indicado) = 2;

