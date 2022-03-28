/*
OPERADOR LÓGICO (LIKE)
1 - LIKE é um operador que testa semelhança (diferente de igualdade)! E ele não é CASE SENSITIVE

1.1 - % é um operador coringa que substitui nenhum ou vários caracteres. A posição dele na busca interfere no resultado
mesmo que seja a mesma busca com posição diferente dos caracteres. Em caso de uso do _%a%_ isso não significa que o A vai estar
no meio, já que % também significa NENHUM caractere

1.2 - A acentuação no A é visto como caractere A pelo % e até mesmo na leitura do SQL

1.3 - Caso eu não queria filtrar pela semelhança, mas sim pelo contrário, basta usar NOT LIKE 
*/
SELECT * FROM cursos
WHERE nome LIKE 'P%'; 

SELECT * FROM cursos
WHERE nome LIKE '%a';

SELECT * FROM cursos
WHERE nome LIKE 'Ph%p'; 



/*
1.4 - Existe uma outra wildcard além do %, o _. Caso eu use _ na barra de pesquisa eu, obrigatoriamente, exijo que onde o _
estiver, tenha UM caractere por _ utilizado.
*/

SELECT * FROM cursos
WHERE nome LIKE 'Ph%p_';

/*
1.5 - O DISTINCT mostra no RESULT SET apenas uma única ocorrência do que foi cadastrado. Ao invés de mostrar a quantidade completa.
Se tiver dúvidas, só executar o comando abaixo e verificar o resultado.
*/

SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade;

/*
1.6 - COUNT é uma função de agregação. Ele conta a quantidade de um determinado dado em que eu configurei
um parâmetro (ou posso simplesmente não ter configurado nada). Qualquer dúvida, basta executar o código abaixo.
*/

SELECT count(nacionalidade) FROM gafanhotos
WHERE nacionalidade <> 'Brasil';

select distinct nacionalidade from gafanhotos
where nacionalidade <> 'Brasil';

/*
1.8 - O MAX funciona para achar o maior valor dentro da coluna selecionada e o MIN da mesma maneira. Ambos me permitem usar outras
colunas para serem mostradas.  
*/
#Percebe que o max(totaulas) e o nome vão ser exibidos em tela
select max(totaulas), nome from cursos
where ano = '2016';

/*
1.9 - SUM soma os valores de uma determinada coluna

2.0 - AVG tira a média do valor de uma determinada coluna (avarage)
*/

SELECT SUM(totaulas) FROM cursos
WHERE ano = '2016';

#O valor é 23.75 e não 23.000 kkkk
SELECT AVG(totaulas) FROM cursos
WHERE ano = '2016';