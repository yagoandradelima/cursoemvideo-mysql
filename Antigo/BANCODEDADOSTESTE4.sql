select * from cursos
order by nome desc;

select nome, carga, ano from cursos
order by ano;

select nome, carga, ano from cursos
order by nome, ano;

select nome from cursos
where ano <= '2016'   "!=" "=>" 
order by nome;

select nome, ano from cursos
where ano between 2013 and 2016
order by ano desc, nome;   

select nome, ano from cursos
where ano in (2012);    

select * from cursos
where nome like 'a%'; 

