#1 - SELECIONE UMA LISTA COM TODAS AS MULHERES NO CADASTRO
SELECT nome, sexo FROM gafanhotos
WHERE sexo = 'F';

/*
#2 - SELECIONE UMA LISTA COM OS DADOS DE TODOS AQUELES QUE NASCERAM ENTRE 1/JAN/2000
E 31/DEZ/2015 
*/
SELECT * FROM gafanhotos
ORDER BY nascimento;

#Prestar atenção no formato de data ser YYYY-MM-DD
SELECT nome, nascimento FROM gafanhotos
WHERE  nascimento > '2000-01-01' AND nascimento < '2015-12-31'
ORDER BY nascimento;

SELECT * FROM gafanhotos
WHERE  nascimento > '2000-01-01' AND nascimento < '2015-12-31'
ORDER BY nascimento;

/*
#3 - SELECIONE UMA LISTA COM TODOS OS HOMENS QUE TRABALHAM COMO PROGRAMADOR
*/

SELECT nome, profissao FROM gafanhotos
WHERE profissao LIKE 'Prog%';

/*
#4 - SELECIONE UMA LISTA COM OS DADOS DE TODAS AS MULHERES QUE NASCERAM NO BRASIL E QUE TÊM
SEU NOME INICIANDO COM A LETRA J
*/

SELECT * FROM gafanhotos
WHERE nacionalidade = 'Brasil' AND nome LIKE 'J%' AND sexo = 'F';

/*
#5 - UMA LISTA COM O NOME E NACIONALIDADE DE TODOS OS HOMENS QUE TÊM SILVA NO NOME, NÃO NASCERAM NO BRASIL E PESAM MENOS
QUE 100KG
*/

SELECT nome, nacionalidade FROM gafanhotos
WHERE nome LIKE '%Silva%' AND nacionalidade != 'Brasil' AND peso < '100';

/*
#6 - QUAL É A MAIOR ALTURA ENTRE GAFANHOTOS HOMENS QUE MORAM NO BRASIL?
*/

SELECT max(altura) FROM gafanhotos
WHERE nacionalidade = 'Brasil' AND sexo = 'M';

/*
#7 - QUAL É A MÉDIA DE PESO DOS GAFANHOTOS CADASTRADOS
*/

SELECT avg(peso) FROM gafanhotos;


/*
#8 - QUAL O MENOR PESO ENTRE AS GAFANHOTOS MULHERES QUE NASCERAM FORA DO BRASIL E ENTRE 01/JAN/1990 E 31/DEZ/2000
*/

SELECT nome, min(peso), nacionalidade, nascimento FROM gafanhotos
WHERE nacionalidade != 'Brasil' AND nascimento > '1990-01-01' AND nascimento < '2000-12-31';

/*
#9 - QUANTAS GAFANHOTOS MULHERES TEM MAIS DE 1,90 DE ALTURA
*/

#usa o . e não a ,
select * from gafanhotos
where sexo = 'F' AND altura > '1.90';