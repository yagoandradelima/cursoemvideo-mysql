/*
#1 - UMA LISTA COM AS PROFISSÕES DOS GAFANHOTOS E SEUS RESPECTIVOS QUANTITATIVOS
*/

SELECT profissao, count(*) FROM gafanhotos
GROUP BY profissao
ORDER BY count(*);

/*
#2 - QUANTOS GAFANHOTOS HOMENS E GAFANHOTOS MULHERES NASCERAM APÓS 01/01/2005?
*/
#Meu erro nos primeiros dois códigos SQL foi dar GROUP no nascimento e não
#no sexo

#Calculando mulheres = 2
SELECT nome, nascimento, count(*) FROM gafanhotos
WHERE nascimento > '2005-01-01' AND sexo = 'F'
GROUP BY nascimento;

#Calculando Homens = 8
SELECT nome, nascimento, count(*) FROM gafanhotos
WHERE nascimento > '2005-01-01' AND sexo = 'M'
GROUP BY nascimento;

#Calculando da Maneira que o Guanabara explicou
#Primeiro, verificar quantos homens e mulheres nasceram acima da data estipulada
#Depois agrupar por sexo
#Fazer uma contagem do agrupamento
SELECT sexo, count(*) FROM gafanhotos
WHERE nascimento > '2005-01-01'
GROUP BY sexo
ORDER BY count(*);

/*
#3 - UMA LISTA COM OS GAFANHOTOS QUE NASCERAM FORA DO BRASIL, MOSTRANDO O PAÍS DE ORIGEM E 
O TOTAL DE PESSOAS NASCIDAS LÁ. SÓ NOS INTERESSAM OS PAÍSEM QUE TIVEREM MAIS DE 3 GAFANHOTOS
COM ESSA NACIONALIDADE
*/
#Prestar MUITA atenção em como usar o HAVING, ele é importante

SELECT nacionalidade, count(*) FROM gafanhotos
WHERE nacionalidade != 'Brasil'
GROUP BY nacionalidade
HAVING count(nacionalidade) >= 3
ORDER BY count(*);

/*
#4 - UMA LISTA AGRUPADA PELA ALTURA DOS GAFANHOTOS MOSTRANDO QUANTAS PESSOAS PESAM MAIS QUE 100KG E ESTÃO ACIMA DA MÉDIA DA
ALTURA DE TODOS OS CADASTRADOS
*/

select avg(altura) from gafanhotos;

#Em tese o código deveria ter pelo menos um HAVING com o SELECT AVG dentro, mas eu adaptei e achei interessante assim
select altura, peso, count(*) from gafanhotos
where peso > 100 AND altura > (select avg(altura) from gafanhotos)
group by altura
order by count(*);
