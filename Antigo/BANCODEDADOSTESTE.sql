CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci; 

CREATE TABLE pessoas (
id int NOT NULL auto_increment,
nome varchar(30) NOT NULL,
nascimento date, 
sexo enum('M','F') NOT NULL,
peso decimal(5,2), 
altura decimal (3,2),
nacionalidade varchar(20) default 'Brasileiro',
primary key (id)
) default charset = utf8;

insert into pessoas values
('11', default, 'Helena Burnett', 'Jurista', '1997-01-03', 'F', '79.5', '1.55', 'Enorme', default);

describe pessoas;

alter table pessoas
add column busto varchar(10) after altura;

select * from pessoas;



