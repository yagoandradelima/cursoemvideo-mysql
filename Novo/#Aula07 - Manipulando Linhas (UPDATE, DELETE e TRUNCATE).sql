/*
0.00 - Nas aulas anteriores eu acabei tentando manipular o banco de dados pra fazer os comandos
funcionarem e isso fez com que o banco ficasse diferente do que o necessário para continuar as
aulas. Por isso corrigi ele nos comandos abaixo
*/

ALTER TABLE gafanhotos
DROP COLUMN prof;

ALTER TABLE gafanhotos
DROP COLUMN codigo;

#Funcionei o NOT NULL DEFAULT ''!!!!!
ALTER TABLE gafanhotos
ADD COLUMN profissao varchar(20) NOT NULL DEFAULT '' AFTER nome;

SELECT * FROM gafanhotos;

#------------------------------------------------------------------------#

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

SELECT * FROM cursos;

/*
1.0 - Eu não consigo manipular mais de uma linha por vez, mas posso manipular mais de um
campo por linha

1.1 - Abaixo eu vou manipular uma linhas. Primeira começo com o comando UPDATE e depois eu uso
SET para realizar a modificação. WHERE identifica qual linha eu quero que seja modificada. Para
evitar erros, eu uso esse comando atrelado à chave primária para ter certeza de onde eu tô mexendo
*/

UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = '1';

SELECT * FROM cursos;

/*
1.2 - Alterando várias colunas em uma linha
*/

SELECT * FROM cursos;

UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '4';

UPDATE cursos
SET nome = 'Java'
WHERE idcurso = '5';

UPDATE cursos
SET carga = '40', ano = '2015'
WHERE idcurso = '5'
#LIMIT impede que mais do número de linhas informadas seja afetado
#Caso possivelmente mais de uma linha seja afetada, a ordem alfabetica é usada como critério
LIMIT 1;

/*
1.3 - Deletando linhas
*/
DELETE FROM cursos
WHERE idcurso = '8';

DELETE FROM cursos
WHERE idcurso = '9' and '10';

/*
1.4 - Deletando os dados de uma tabela inteira

TRUNCATE TABLE cursos

*/
