create table cadastros(
	id int NOT NULL auto_increment,
    nome varchar(30),
    profissao varchar(20) NOT NULL DEFAULT '',
    nascimento date,
primary key (id)
)DEFAULT charset = utf8;

ALTER TABLE cadastros
ADD COLUMN  sexo enum ('M','F');

ALTER TABLE cadastros
ADD COLUMN peso float (5,2);

ALTER TABLE cadastros
ADD COLUMN altura float (3,2);

ALTER TABLE cadastros
ADD COLUMN nacionalidade varchar(10) DEFAULT 'Brasil';

select * from cadastros;

CREATE TABLE cursos(
	idcurso int auto_increment,
    nome varchar(30) unique,
    descrição text,
    carga tinyint,
    totaulas int,
    ano year DEFAULT '2016',
primary key (idcurso)
)DEFAULT CHARSET = utf8;

ALTER TABLE cadastros
RENAME TO gafanhotos;

INSERT INTO cursos VALUES
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','FGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à linguagem Java','10','29','2000'),
('6','MySQL','Bancos de Dados MySQL','30','15','2016'),
('7','Word','Curso Completo de Word','40','30','2016'),
('8','Sapateado','Danças Ritmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','37','2018'),
('10','YouTuber','Gerar polêmica e ganhar inscritos','5','2','2018');


INSERT INTO gafanhotos VALUES
	(DEFAULT,'Godofredo',DEFAULT, '1984-01-02', 'M', '78.50', '1.83',DEFAULT);

select * from gafanhotos;

INSERT INTO gafanhotos VALUES
(DEFAULT, 'Maria', DEFAULT, '1999-12-30', 'F', '55.20', '1.65', 'Portugal'),
(DEFAULT, 'Creuza', DEFAULT, '1920-12-31', 'F', '50.20', '1.65', 'Brasil'),
(DEFAULT, 'Adalgiza', DEFAULT, '1931-11-02', 'F', '63.20', '1.75', 'Irlanda'),
(DEFAULT, 'Cláudio', DEFAULT, '1975-04-22', 'M', '99.00', '2.15', DEFAULT),
(DEFAULT, 'Pedro', DEFAULT, '1975-06-22', 'M', '87.20', '2.00', 'Brasil'),
(DEFAULT, 'Janaína', DEFAULT, '1987-11-12', 'F', '75.40', '1.66', 'EUA');

select * from gafanhotos;
select * from cursos;
