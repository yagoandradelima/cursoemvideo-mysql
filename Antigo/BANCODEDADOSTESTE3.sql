select * from gafanhotos;

select * from cursos;

desc cursos;

alter table cursos
drop column ano;

alter table cursos
add column ano year default '2016';

insert into cursos values 
('10004', 'Engenharia de dados', 'Aprenda a gerenciar dados', '50', '5', '2012'),
('10005', 'Culinária', 'Aprenda a fazer Sushi', '70', '7', default),
('10006', 'Administração', 'Aprenda a gerir seu próprio negócio', '70', '9', default);

update cursos
set nome = 'Banco de Dados'
where matricula = '10004';

update cursos
set descricao = 'Aprenda a cozinhar', ano = '2015'
where matricula = '10005';

update cursos
set carga = '60'
where carga = '70'
limit 2; 

delete from cursos 
where matricula  = '10003';

select * from cursos;

truncate table cursos;


