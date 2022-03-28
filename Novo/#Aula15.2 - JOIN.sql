
/*
1 - REALIZANDO JOINs
1.1 - Sem o ON o JOIN fica maluco e coloca todo mundo com todo mundo no RESULT SET
1.2 - Nesse caso abaixo, estou executado o INNER JOIN, mas o INNER pode ser dispensado
1.3 - Caso eu queira diminuir o codigo, posso usa o AS pra reduzir o nome das entidades
1.4 - Um OUTER JOIN também inclui os campos que não possuem essa relação entre tabelas
*/

select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

/*
1.5 - O RIGHT ou LEFT OUTER JOIN mostra quem está do lado direito ou esquerdo do JOIN 
no RESULT SET. Pra visualizar melhor, basta dar executar nos códigos abaixo

1.6 - Caso eu queira, posso remover o OUTER quando incluir LEFT ou RIGHT no comando. Automaticamente
ao inlcuir um deles, o OUTER fica subentendido
*/

#TODOS OS COMANDOS ESTÃO DIRECIONADOS PARA UMA RELAÇÃO UM-PARA-MUITOS (gafanhotos-para-cursos)

#LEFT E RIGHT OUTER JOIN
select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido;

select g.nome, c.nome, c.ano
from gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido;