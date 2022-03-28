/*
RELAÇÃO MUITOS PARA MUITOS NA PRÁTICA
Na relação muitos para muitos você faz com que o losangulo de relação se torne uma nova tabela que vai receber atributos próprios simples
e também as chaves primárias de gafanhotos e cursos. Isso faz com que essas chaves se tornem ESTRANGEIRAS dentro dele

A Relação entre as ENTIDADES e as RELAÇÕES transformadas em entidades (losangulos de relacionamento) é de 1 para muitos. Isso é uma tática utilizada
para conseguir relacionar tabelas na relação muitos para muitos.  
*/

create table gafanhoto_assiste_curso(
	id int NOT NULL auto_increment,
	data date,
	idgafanhoto int,
    idcurso int,
    primary key (id),
    foreign key (idgafanhoto) references gafanhotos(id),
    foreign key (idcurso) references cursos(idcursos)
)DEFAULT CHARSET = utf8;

select * from gafanhoto_assiste_curso;

/*
A letra 'g' e 'a' são apelidos!
*/

select g.id, g.nome, g.nacionalidade, a.idgafanhoto, a.idcurso, c.nome, c.carga from gafanhotos g 
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso
group by g.id;

insert into gafanhoto_assiste_curso values (default, '2014-03-01','1','2');
