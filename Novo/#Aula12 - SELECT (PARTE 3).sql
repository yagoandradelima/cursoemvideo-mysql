 /*
 1 - O GROUP é um comando de agrupamento. Apesar de ter um RESULT SET muito parecido com DISTINCT, se você usar um COUNT
 vai logo perceber que o resultado do agrupamento é diferente.
 */
 
SELECT totaulas FROM cursos
ORDER BY totaulas; 
 
SELECT DISTINCT totaulas FROM cursos
order by totaulas;
 
SELECT totaulas, count(*) from cursos
GROUP BY totaulas
ORDER BY count(*), totaulas;

select carga, count(nome) from cursos
where totaulas = 30
group by carga;

/*
1.1 - HAVING é um comando utilizado para aumentar o filtro do parâmetro de GROUP BY. O HAVING só funciona se ele estiver mostrando
a coluna atrelada ao GROUP BY, ou seja, ele daria erro se eu fosse buscar o HAVING dentro de cargas, por exemplo
*/
#A partir desse ponto, não realizei mais anotações. O que você precisa saber é: a leitura desse código é simples
#basta dar sequência que dá pra entender

select * from cursos 
group by ano;

select ano, count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*) desc;

select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > '2015'
group by carga;

select * from gafanhotos;

/*
1.2 - Eu posso trabalhar SELECT dentro de SELECT. No caso abaixo eu quero agrupar e selecionar somente
os cursos cujas cargas sejam acima da média, mas como a média pode mudar constantemente no decorrer de novos cadastros
eu peguei o cálculo da média como código de SELECT e joguei dentro de um parâmetro.
*/

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos)
order by count(*);