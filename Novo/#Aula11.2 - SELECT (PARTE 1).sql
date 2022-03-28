/*
1 - Usando SELECT e criando um parâmetro de ordem crescente de uma coluna. DESC após o nome da coluna indica
que a ordenação é descrescente

1.1 - ASC é ascendente, mas basta não incluir nada que ele automaticamente ordena de maneira crescente
*/

select * from cursos
ORDER BY nome desc;

/*
1.2 - SELECT com novos indicadores

1.21 - Caso eu queira uma visão diferente, posso mudar a posição do nome das colunas dentro do select
e a apresentação do filtro vai me exibir da maneira como eu coloquei no SELECT. Quer ver? Troca a posição
do 'nome, carga, ano' ali embaixo e visualiza

1.22 - A visualização muda de acordo com a posição de cada componente dentro do SELECT. É importante saber
organizar a ordem pra que a formatação não saia desajustada

1.23 - Para filtrar linhas eu vou utilizar novamente o WHERE pra filtrar os parâmetros

1.24 - O meu resultado irá conter somente os campos que pedi para serem selecionados. Os parâmetros de filtr (WHERE, 
ORDER BY) não necessariamente vão apresentar seus resultados no RESULT SET.
*/

SELECT ano, nome, carga FROM cursos
ORDER by ano, nome;

SELECT nome, carga FROM cursos
WHERE ano = '2016'
ORDER BY nome;

/*
1.25 - Existem operadores relacionais no MySQL também. 
<= Menor ou igual
>= Maio ou igual
= igual a
< menor
> maior
!= ou <> diferente
BETWEEN 'a' AND 'b' - Entre valores a e b
IN ()- Dentro do valor estipulado
AND - E - Funciona da mesma maneira do operador lógico padrão. Só irá filtrar as linhas que estejam dentro
dos dois parâmetros apresentados
OR - OU - Irá filtrar as linhas que tenham pelo menos um dos valores dentro dos parâmetros
*/

SELECT nome, descricao, ano FROM cursos
WHERE ano <= '2015'
ORDER BY ano, nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano > '2016'
ORDER BY ano, nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano BETWEEN '2014' AND '2016'
ORDER BY ano desc, nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano IN ('2014','2016')
ORDER BY ano, nome desc;

SELECT nome, carga, totaulas FROM cursos
WHERE carga > 35 AND totaulas < 30
ORDER BY ano;