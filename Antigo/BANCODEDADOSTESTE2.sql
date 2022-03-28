desc pessoas;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
add column codigo int first;

alter table gafanhotos
modify column profissao varchar(30) not null default '' ;  

alter table gafanhotos
change column profissao prof varchar(30) not null default '' ;  

alter table pessoas
rename to gafanhotos;
 
select * from pessoas;

create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int,
ano year default '2016'
) default charset = utf8;

alter table cursos
add column matricula int first;

describe cursos;

alter table cursos
add primary key (matricula); 
