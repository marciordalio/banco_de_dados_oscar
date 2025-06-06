# banco_de_dados_oscar
🏆Modelagem de Banco de Dados: Sistema de Premiações Estilo Oscar

# 🏆 Vale a Pena Premiar?

Este repositório contém um exercício proposto em aula com a temática **"Oscar"**. A proposta nos levou a refletir sobre o real valor dos prêmios e reconhecimentos, tanto na vida pessoal quanto profissional.

## 🎯 Objetivo

Refletir e discutir sobre o significado de receber ou conceder prêmios, entendendo:

- O que é ser reconhecido?
- O valor simbólico e emocional dos prêmios.
- A diferença entre reconhecimento verdadeiro e vaidade.
- Se prêmios medem realmente esforço e mérito.



## 💬 Reflexão

> "Alguns diriam que prêmios são apenas uma forma de massagear o ego. Outros, que são a prova de que estamos no caminho certo."

Durante o exercício, exploramos diferentes pontos de vista sobre premiações. Chegamos à conclusão de que:

- Prêmios podem ser importantes, mas não são tudo.
- A maior recompensa é a **satisfação pessoal** de fazer algo com propósito.
- Nem todo prêmio é merecido, e nem todo mérito é premiado.
- O reconhecimento deve vir acompanhado de significado, não apenas status.


## 🧠 Discussões Geradas

- O que nos motiva mais: reconhecimento externo ou realização interna?
- Será que os prêmios valorizam as pessoas certas?
- Vale mais um troféu ou a consciência tranquila de ter feito o seu melhor?


## ❓Conclusão

**Vale a pena premiar?**  
A resposta não é simples. O exercício nos mostrou que, apesar de prêmios terem valor simbólico, **o verdadeiro sucesso está em encontrar sentido no que fazemos**.





## 📚 Sobre o Exercício

Trabalho realizado em aula como forma de estimular pensamento crítico, autoconhecimento e debate em grupo.  
Tema central: **Reconhecimento e Mérito** através do símbolo do Oscar.



# 🏆 Nomeados ao Oscar

Este repositório contém a base de dados dos indicados ao Oscar em formato SQL. Ideal para praticar comandos CRUD com MySQL.

---

## 🧠 Atividades Resolvidas

### 1. Atualize os registros da tabela com os dados do Oscar 2025

R: Use o comando abaixo para inserir novos registros com dados atualizados do Oscar.

```sql
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, nome_do_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST PICTURE', 'Nome Produção', 'Nome Filme', 'false');
```

---

### 2. Qual o total de registros na tabela indicados?

R: Depende dos dados importados. Use:

```sql
SELECT COUNT(*) FROM indicados_ao_oscar;
```

---

### 3. Qual o número de indicações por categoria agrupadas por categoria?

R: 2

```sql
SELECT categoria, COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
GROUP BY categoria
ORDER BY total_indicacoes DESC;
```

---

### 4. Quantas vezes Natalie Portman foi indicada ao Oscar?

R: 3 vezes

```sql
SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_do_indicado LIKE '%Natalie Portman%';
```

---

### 5. Quantos Oscars Natalie Portman ganhou?

R: 1 vez

```sql
SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_do_indicado LIKE '%Natalie Portman%' AND vencedor = 'true';
```

---

### 6. Quantas vezes Viola Davis foi indicada ao Oscar?

R: 4 vezes

```sql
SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_do_indicado LIKE '%Viola Davis%';
```

---

### 7. Quantos Oscars Viola Davis ganhou?

R: 1 vez

```sql
SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_do_indicado LIKE '%Viola Davis%' AND vencedor = 'true';
```

---

### 8. Amy Adams já ganhou algum Oscar?

R: Não

```sql
SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_do_indicado LIKE '%Amy Adams%' AND vencedor = 'true';
```

---

### 9. Quais os atores/atrizes que foram indicados mais de uma vez?

R: Lista com nomes e número de indicações

```sql
SELECT nome_do_indicado, COUNT(*) AS indicacoes
FROM indicados_ao_oscar
WHERE categoria LIKE '%ACTOR%' OR categoria LIKE '%ACTRESS%'
GROUP BY nome_do_indicado
HAVING COUNT(*) > 1
ORDER BY indicacoes DESC;
```

---

### 10. A série de filmes Toy Story ganhou Oscars em quais anos?

R: 1996, 2011, 2020

```sql
SELECT ano_cerimonia 
FROM indicados_ao_oscar
WHERE nome_do_filme LIKE '%Toy Story%' AND vencedor = 'true';
```

---

### 11. A partir de que ano a categoria "ACTRESS" deixa de existir?

R: 2016 (último registro com essa grafia específica)

```sql
SELECT MAX(ano_cerimonia)
FROM indicados_ao_oscar
WHERE categoria = 'ACTRESS';
```

---

### 12. Quem ganhou o primeiro Oscar para Melhor Atriz? Em que ano?

R: Janet Gaynor em 1928

```sql
SELECT nome_do_indicado, ano_cerimonia
FROM indicados_ao_oscar
WHERE categoria = 'ACTRESS' AND vencedor = 'true'
ORDER BY ano_cerimonia ASC
LIMIT 1;
```

---

### 13. No campo "vencedor", altere todos os valores com "true" para 1 e todos os "false" para 0

```sql
UPDATE indicados_ao_oscar SET vencedor = '1' WHERE vencedor = 'true';
UPDATE indicados_ao_oscar SET vencedor = '0' WHERE vencedor = 'false';
```

---

### 14. Em qual edição do Oscar "Crash" concorreu?

R: Edição 78 (2006)

```sql
SELECT DISTINCT cerimonia
FROM indicados_ao_oscar
WHERE nome_do_filme LIKE '%Crash%';
```

---

### 15. O filme Central do Brasil aparece no Oscar?

R: Sim

```sql
SELECT * 
FROM indicados_ao_oscar
WHERE nome_do_filme LIKE '%Central do Brasil%';
```

---

### 16. Inclua no banco 3 filmes que nunca foram nomeados ao Oscar, mas que merecem ser

```sql
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, nome_do_filme, vencedor)
VALUES 
(1994, 1995, 67, 'BEST PICTURE', 'Shawshank Redemption', 'Um Sonho de Liberdade', '0'),
(2001, 2002, 74, 'BEST PICTURE', 'David Lynch', 'Cidade dos Sonhos', '0'),
(1999, 2000, 72, 'BEST PICTURE', 'Jim Carrey', 'O Show de Truman', '0');
```

---

### 17. Denzel Washington já ganhou algum Oscar?

R: Sim

```sql
SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_do_indicado LIKE '%Denzel Washington%' AND vencedor = '1';
```

---

### 18. Quais os filmes que ganharam o Oscar de Melhor Filme?

```sql
SELECT nome_do_filme, ano_cerimonia
FROM indicados_ao_oscar
WHERE categoria LIKE '%PICTURE%' AND vencedor = '1';
```

---

### 19. Sidney Poitier foi o primeiro ator negro indicado ao Oscar. Em que ano e por qual filme?

R: 1959, por *The Defiant Ones*

```sql
SELECT nome_do_filme, ano_cerimonia
FROM indicados_ao_oscar
WHERE nome_do_indicado LIKE '%Sidney Poitier%'
ORDER BY ano_cerimonia ASC
LIMIT 1;
```

---

### 20. Quais os filmes que ganharam o Oscar de Melhor Filme e Melhor Diretor na mesma cerimônia?

```sql
SELECT a.nome_do_filme, a.ano_cerimonia
FROM indicados_ao_oscar a
JOIN indicados_ao_oscar b ON a.ano_cerimonia = b.ano_cerimonia AND a.nome_do_filme = b.nome_do_filme
WHERE a.categoria LIKE '%PICTURE%' AND b.categoria LIKE '%DIRECTING%'
AND a.vencedor = '1' AND b.vencedor = '1';
```

---

### 21. Denzel Washington e Jamie Foxx já concorreram ao Oscar no mesmo ano?

R: Sim, em 2005

```sql
SELECT DISTINCT ano_cerimonia
FROM indicados_ao_oscar
WHERE nome_do_indicado IN ('Denzel Washington', 'Jamie Foxx')
GROUP BY ano_cerimonia
HAVING COUNT(DISTINCT nome_do_indicado) = 2;
```


