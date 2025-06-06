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

R:10891


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

- Adam Driver — 2  
- Agnes Moorehead — 4  
- Akim Tamiroff — 2  
- Al Pacino — 9  
- Alan Arkin — 4  
- Albert Finney — 5  
- Alec Guinness — 4  
- Alice Brady — 2  
- Amy Adams — 6  
- Andrew Garfield — 2  
- Angela Bassett — 2  
- Angela Lansbury — 3  
- Angelina Jolie — 2  
- Anjelica Huston — 3  
- Ann-Margret — 2  
- Anna Magnani — 2  
- Anne Bancroft — 5  
- Anne Baxter — 2  
- Anne Hathaway — 2  
- Anne Revere — 3  
- Annette Bening — 5  
- Anthony Hopkins — 6  
- Anthony Quinn — 4  
- Arthur Kennedy — 5  
- Arthur O'Connell — 2  
- Audrey Hepburn — 5  
- Barbara Stanwyck — 4  
- Barbra Streisand — 2  
- Barry Fitzgerald — 2  
- Basil Rathbone — 2  
- Ben Kingsley — 4  
- Benedict Cumberbatch — 2  
- Benicio Del Toro — 2  
- Bette Davis — 11  
- Bette Midler — 2  
- Beulah Bondi — 2  
- Billy Bob Thornton — 2  
- Bing Crosby — 3  
- Brad Pitt — 4  
- Bradley Cooper — 5  
- Brenda Blethyn — 2  
- Bruce Dern — 2  
- Burgess Meredith — 2  
- Burt Lancaster — 4  
- Carey Mulligan — 3  
- Cary Grant — 2  
- Casey Affleck — 2  
- Cate Blanchett — 8  
- Catherine Keener — 2  
- Cecil Kellaway — 2  
- Celeste Holm — 3  
- Charles Bickford — 3  
- Charles Boyer — 4  
- Charles Coburn — 3  
- Charles Durning — 2  
- Charles Laughton — 3  
- Charlize Theron — 3  
- Cher — 2  
- Christian Bale — 4  
- Christoph Waltz — 2  
- Christopher Plummer — 3  
- Christopher Walken — 2  
- Claire Trevor — 3  
- Clark Gable — 3  
- Claude Rains — 4  
- Claudette Colbert — 3  
- Clifton Webb — 3  
- Clint Eastwood — 2  
- Colin Firth — 2  
- Dame Edith Evans — 3  
- Dame May Whitty — 2  
- Daniel Day-Lewis — 5  
- Daniel Kaluuya — 2  
- Deborah Kerr — 6  
- Debra Winger — 3  
- Denzel Washington — 9  
- Diane Keaton — 4  
- Diane Ladd — 3  
- Dianne Wiest — 3  
- Djimon Hounsou — 2  
- Dustin Hoffman — 7  
- Dyan Cannon — 2  
- Ed Harris — 4  
- Eddie Albert — 2  
- Eddie Redmayne — 2  
- Edmond O'Brien — 2  
- Edmund Gwenn — 2  
- Edward Norton — 3  
- Eileen Heckart — 2  
- Eleanor Parker — 3  
- Elizabeth Taylor — 5  
- Ellen Burstyn — 6  
- Elsa Lanchester — 2  
- Emily Watson — 2  
- Emma Stone — 4  
- Emma Thompson — 4  
- Estelle Parsons — 2  
- Ethan Hawke — 2  
- Ethel Barrymore — 4  
- Fay Bainter — 3  
- Faye Dunaway — 3  
- Frances McDormand — 6  
- Frank Morgan — 2  
- Frank Sinatra — 2  
- Fredric March — 5  
- Gale Sondergaard — 2  
- Gary Cooper — 5  
- Gary Oldman — 3  
- Geena Davis — 2  
- Gena Rowlands — 2  
- Gene Hackman — 5  
- Geoffrey Rush — 4  
- George Arliss — 2  
- George C. Scott — 4  
- George Clooney — 4  
- Geraldine Page — 8  
- Gig Young — 3  
- Gladys Cooper — 3  
- Glenda Jackson — 4  
- Glenn Close — 8  
- Gloria Grahame — 2  
- Gloria Swanson — 3  
- Goldie Hawn — 2  
- Grace Kelly — 2  
- Greer Garson — 7  
- Gregory Peck — 5  
- Greta Garbo — 3  
- Heath Ledger — 2  
- Helen Hayes — 2  
- Helen Hunt — 2  
- Helen Mirren — 4  
- Helena Bonham Carter — 2  
- Henry Fonda — 2  
- Hilary Swank — 2  
- Holly Hunter — 4  
- Hugh Griffith — 2  
- Humphrey Bogart — 3  
- Ian McKellen — 2  
- Ingrid Bergman — 7  
- Irene Dunne — 5  
- Isabelle Adjani — 2  
- J. Carrol Naish — 2  
- J.K. Simmons — 2  
- Jack Lemmon — 8  
- Jack Nicholson — 12  
- Jack Palance — 3  
- Jack Warden — 2  
- Jacki Weaver — 2  
- James Cagney — 3  
- James Dean — 2  
- James Mason — 3  
- James Stewart — 5  
- James Whitmore — 2  
- James Woods — 2  
- Jamie Foxx — 2  
- Jane Alexander — 4  
- Jane Fonda — 7  
- Jane Wyman — 4  
- Janet Gaynor — 2  
- Janet McTeer — 2  
- Jason Robards — 3  
- Javier Bardem — 4  
- Jean Simmons — 2  
- Jeff Bridges — 7  
- Jennifer Jones — 5  
- Jennifer Lawrence — 4  
- Jeremy Renner — 2  
- Jessica Chastain — 3  
- Jessica Lange — 6  
- Jessica Tandy — 2  
- Jill Clayburgh — 2  
- Joan Allen — 3  
- Joan Crawford — 3  
- Joan Cusack — 2  
- Joan Fontaine — 3  
- Joanne Woodward — 4  
- Joaquin Phoenix — 4  
- Jodie Foster — 5  
- Joe Pesci — 3  
- John Garfield — 2  
- John Gielgud — 2  
- John Hurt — 2  
- John Lithgow — 2  
- John Malkovich — 2  
- John Travolta — 2  
- John Wayne — 2  
- Johnny Depp — 3  
- Jon Voight — 4  
- Jonah Hill — 2  
- José Ferrer — 3  
- Joyce Redman — 2  
- Judd Hirsch — 2  
- Jude Law — 2  
- Judi Dench — 8  
- Judy Davis — 2  
- Judy Garland — 2  
- Julia Roberts — 4  
- Julianne Moore — 5  
- Julie Andrews — 3  
- Julie Christie — 4  
- Julie Walters — 2  
- Juliette Binoche — 2  
- Karl Malden — 2  
- Kate Winslet — 7  
- Katharine Hepburn — 12  
- Kathy Bates — 4  
- Keira Knightley — 2  
- Kenneth Branagh — 2  
- Kevin Spacey — 2  
- Kim Stanley — 2  
- Kirk Douglas — 3  
- Laura Dern — 3  
- Laura Linney — 3  
- Laurence Olivier — 9  
- Lee Grant — 4  
- Lee J. Cobb — 2  
- Leonardo DiCaprio — 6  
- Leslie Caron — 2  
- Leslie Howard — 2  
- Liv Ullmann — 2  
- Liza Minnelli — 2  
- Loretta Young — 2  
- Luise Rainer — 2  
- Lynn Redgrave — 2  
- Madeline Kahn — 2  
- Maggie Smith — 6  
- Mahershala Ali — 2  
- Marcello Mastroianni — 3  
- Marcia Gay Harden — 2  
- Margot Robbie — 2  
- Maria Ouspenskaya — 2  
- Marie Dressler — 2  
- Marion Cotillard — 2  
- Marisa Tomei — 3  
- Marjorie Rambeau — 2  
- Mark Ruffalo — 4  
- Marlon Brando — 8  
- Marsha Mason — 4  
- Martin Landau — 3  
- Mary McDonnell — 2  
- Matt Damon — 3  
- Maureen Stapleton — 4  
- Max von Sydow — 2  
- Maximilian Schell — 3  
- Melinda Dillon — 2  
- Melissa Leo — 2  
- Melissa McCarthy — 2  
- Mel



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

R: 1976 

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

R:  (2006)

```sql
SELECT DISTINCT cerimonia
FROM indicados_ao_oscar
WHERE nome_do_filme LIKE '%Crash%';
```

---

### 15. O filme Central do Brasil aparece no Oscar?

R: Não

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

R: Sim, 2

```sql
SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_do_indicado LIKE '%Denzel Washington%' AND vencedor = '1';
```

---

### 18. Quais os filmes que ganharam o Oscar de Melhor Filme?
R:
- 'Lawrence of Arabia', '1962'
- 'Tom Jones', '1963'
- 'My Fair Lady', '1964'
- 'The Sound of Music', '1965'
- 'A Man for All Seasons', '1966'
- 'In the Heat of the Night', '1967'
- 'Oliver!', '1968'
- 'Midnight Cowboy', '1969'
- 'Patton', '1970'
- 'The French Connection', '1971'
- 'The Godfather', '1972'
- 'The Sting', '1973'
- 'The Godfather Part II', '1974'
- 'One Flew over the Cuckoo\'s Nest', '1975'
- 'Rocky', '1976'
- 'Annie Hall', '1977'
- 'The Deer Hunter', '1978'
- 'Kramer vs. Kramer', '1979'
- 'Ordinary People', '1980'
- 'Chariots of Fire', '1981'
- 'Gandhi', '1982'
- 'Terms of Endearment', '1983'
- 'Amadeus', '1984'
- 'Out of Africa', '1985'
- 'Platoon', '1986'
- 'The Last Emperor', '1987'
- 'Rain Man', '1988'
- 'Driving Miss Daisy', '1989'
- 'Dances With Wolves', '1990'
- 'The Silence of the Lambs', '1991'
- 'Unforgiven', '1992'
- 'Schindler\'s List', '1993'
- 'Forrest Gump', '1994'
- 'Braveheart', '1995'
- 'The English Patient', '1996'
- 'Titanic', '1997'
- 'Shakespeare in Love', '1998'
- 'American Beauty', '1999'
- 'Gladiator', '2000'
- 'A Beautiful Mind', '2001'
- 'Chicago', '2002'
- 'The Lord of the Rings: The Return of the King', '2003'
- 'Million Dollar Baby', '2004'
- 'Crash', '2005'
- 'The Departed', '2006'
- 'No Country for Old Men', '2007'
- 'Slumdog Millionaire', '2008'
- 'The Hurt Locker', '2009'
- 'The King\'s Speech', '2010'
- 'The Artist', '2011'
- 'Argo', '2012'
- '12 Years a Slave', '2013'
- 'Birdman or (The Unexpected Virtue of Ignorance)', '2014'
- 'Spotlight', '2015'
- 'Moonlight', '2016'
- 'The Shape of Water', '2017'
- 'Green Book', '2018'
- 'Parasite', '2019'
- 'Nomadland', '2020'
- 'CODA', '2021'
- 'Everything Everywhere All at Once', '2022'
- 'Oppenheimer', '2023'

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
R:
| Filme                                         | Ano  | Cerimônia |
|-----------------------------------------------|------|-----------|
| Lawrence of Arabia                             | 1962 | 35        |
| Tom Jones                                     | 1963 | 36        |
| My Fair Lady                                  | 1964 | 37        |
| The Sound of Music                            | 1965 | 38        |
| A Man for All Seasons                         | 1966 | 39        |
| Oliver!                                       | 1968 | 41        |
| Midnight Cowboy                               | 1969 | 42        |
| Patton                                        | 1970 | 43        |
| The French Connection                         | 1971 | 44        |
| The Sting                                     | 1973 | 46        |
| The Godfather Part II                         | 1974 | 47        |
| One Flew over the Cuckoo's Nest               | 1975 | 48        |
| Rocky                                         | 1976 | 49        |
| Annie Hall                                    | 1977 | 50        |
| The Deer Hunter                               | 1978 | 51        |
| Kramer vs. Kramer                             | 1979 | 52        |
| Ordinary People                               | 1980 | 53        |
| Gandhi                                        | 1982 | 55        |
| Terms of Endearment                           | 1983 | 56        |
| Amadeus                                       | 1984 | 57        |
| Out of Africa                                 | 1985 | 58        |
| Platoon                                       | 1986 | 59        |
| The Last Emperor                              | 1987 | 60        |
| Rain Man                                      | 1988 | 61        |
| Dances With Wolves                            | 1990 | 63        |
| The Silence of the Lambs                      | 1991 | 64        |
| Unforgiven                                    | 1992 | 65        |
| Schindler's List                             | 1993 | 66        |
| Forrest Gump                                  | 1994 | 67        |
| Braveheart                                    | 1995 | 68        |
| The English Patient                          | 1996 | 69        |
| Titanic                                       | 1997 | 70        |
| American Beauty                               | 1999 | 72        |
| A Beautiful Mind                              | 2001 | 74        |
| The Lord of the Rings: The Return of the King | 2003 | 76        |
| Million Dollar Baby                           | 2004 | 77        |
| The Departed                                  | 2006 | 79        |
| No Country for Old Men                        | 2007 | 80        |
| Slumdog Millionaire                           | 2008 | 81        |
| The Hurt Locker                               | 2009 | 82        |
| The King's Speech                            | 2010 | 83        |
| The Artist                                    | 2011 | 84        |
| Birdman or (The Unexpected Virtue of Ignorance) | 2014 | 87    |
| The Shape of Water                            | 2017 | 90        |
| Parasite                                      | 2019 | 92        |
| Nomadland                                     | 2020 | 93        |
| Everything Everywhere All at Once             | 2022 | 95        |
| Oppenheimer                                   | 2023 | 96        |

```sql
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

```

---

### 21. Denzel Washington e Jamie Foxx já concorreram ao Oscar no mesmo ano?

R:Não

```sql
SELECT DISTINCT ano_cerimonia
FROM indicados_ao_oscar
WHERE nome_do_indicado IN ('Denzel Washington', 'Jamie Foxx')
GROUP BY ano_cerimonia
HAVING COUNT(DISTINCT nome_do_indicado) = 2;
```




# [Arquivo MySQL Banco de Dados - Oscar](https://github.com/marciordalio/sistema-hospitalar-db-/blob/main/banco_de_dados_MySQL_parte_2)


