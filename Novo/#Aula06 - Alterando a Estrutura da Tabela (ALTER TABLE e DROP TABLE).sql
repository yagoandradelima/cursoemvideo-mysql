/*
1 - ALTER TABLE altera algo na tabela
1.1 - ADD COLUMN acrescenta uma coluna na minha tabela (ou um campo se preferir)
1.2 - DROP COLUMN remove uma coluna

2 - o comando DESC é o mesmo que DESCRIBE
*/
ALTER TABLE pessoas
ADD COLUMN profissao varchar(10);

SELECT * FROM pessoas;

ALTER TABLE pessoas
DROP COLUMN profissao;

/*
1.3 - Em ADD COLUMN 'coluna a inserir' 'tipo primitivo' AFTER 'coluna do DB'. AFTER indica que 
aquela coluna será adicionada após uma determinada coluna do DB

1.4 - Não existe comando BEFORE ou BETWEEN pra esses casos. Por padrão, não adicionar uma posição
significa que a coluna ficará na última posição

1.5 - Para colocar uma coluna em primeira posição, você deve colocar o FIRST. 
ADD COLUMN 'coluna a ser inserida' 'tipo primitivo' FIRST
*/

ALTER TABLE pessoas
ADD COLUMN profissao varchar(10) AFTER nome;

ALTER TABLE pessoas
#Posso simplificar removendo o COLUMN desse comando sem alterar o resultado
ADD codigo INT FIRST;

/*
1.6 - Para modificar uma coluna eu uso o comando MODIFY. Esse comando me permite alterar
tamanho, quantidade e até tipo primitivo da coluna

1.7 - MODIFY não pode ser usado para alterar o nome de uma coluna

1.8 - Colunas novas não poder ter uma constraint NOT NULL sob risco de dar erro (já que os valores
inseridos nela são todos NULL). Para evitar esse erro é interessante usar DEFAULT '', assim, por padrão
todos os campos serão preenchidos com '' e não ficarão nulos
*/

ALTER TABLE pessoas
MODIFY COLUMN profissao varchar(20) NOT NULL DEFAULT '';
#Não consegui fazer NOT NULL e DEFAULT funcionar :( 

SELECT * FROM pessoas;

/*
1.9 - O CHANGE altera tudo, inclusive o nome da coluna
*/
ALTER TABLE pessoas
CHANGE COLUMN profissao prof VARCHAR(20);

/*
1.10 - RENAME TO muda o nome da tabela inteira
*/
ALTER TABLE pessoas
RENAME TO gafanhotos;

DESC gafanhotos;


/*
1.11 - CREATE TABLE IF NOT EXISTS e o CREATE TABLE IF EXISTS é uma condição de parâmetro onde 
a criação ou delete só ocorre caso a tabela exista ou não

1.12 - Caso eu crie uma nova tabela sem o IF EXISTS ou NOT EXISTS com o memso nome de uma tabela
existente, eu vou sobrescrever a tabela já cadastrada
*/

CREATE TABLE IF NOT EXISTS cursos(
	#UNIQUE impede que dois registros tenham o mesmo nome e não serve como PRIMARY KEY
	nome varchar(30) NOT NULL UNIQUE,
    descricao text,
    #UNSIGNED economiza um bite pra cada registro preenchido(?)
    carga int UNSIGNED,
    totaulas int,
    ano year DEFAULT '2016' #Mesmo sendo numérico, tem que usar aspas simples para declarar dados
)DEFAULT CHARSET = utf8;

/*
1.13 - Não existe comando para modificar uma coluna e adicionar chave primária. Tem que utilizar
dois
*/

ALTER TABLE cursos
ADD COLUMN idcurso int FIRST; #Não usar espaços para nomes de colunas

/*
1.14 - Adicionando uma PRIMARY KEY após a criação da tabela
*/

ALTER TABLE cursos
ADD PRIMARY KEY (idcursos);

CREATE TABLE IF NOT EXISTS fodase(
	registro varchar(40)
);

/*
1.15 - Deletando uma tabela abaixo
*/

DROP TABLE IF EXISTS fodase;

