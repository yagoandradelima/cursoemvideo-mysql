/*
As TABELAS também podem ser chamadas de ENTIDADES e as COLUNAS de ATRIBUTOS. As RELAÇÕES são os eventos de relacionamento
entre duas entidades. Como um cadastro dentro da entidade pode se relacionar 'n' vezes com os cadastros da outra entidade
é dito que essa numeração de relacionamento se chama CARDINALIDADE.

RELACIONAMENTO MUITOS-PRA-MUITOS
n relações entre as entidades

RELACIONAMENTO UM-PRA-UM
relação de 1 cadastro para 1 cadastro dentro das entidades

RELACIONAMENTO UM-PRA-MUITOS
Bem intuitivo, UMA relação para MUITOS

CHAVE ESTRANGEIRA
É a chave primária de outra entidade. Basicamente você cria um atributo para caber ela na entidade receptora
e depois referencia a chave primária. Tem um exemplo mais abaixo. As chaves estrangeiras são o que permitem
a relação entre tabelas
*/

describe gafanhotos;
describe cursos;

#Criando o ATRIBUTO para receber a chave primária de outra entidade. Essa daqui vai ser a chave estrangeira
#para a ENTIDADE gafanhotos, mas é a chave primária relacionada à ENTIDADE cursos
alter table gafanhotos
add column cursopreferido int;

/*
1 - Adicionando uma chave estrangeira e relacionando ela

Se você der DESCRIBE, vai perceber que na coluna key, cursopreferido vai
ter MUL agora. Isso é porquê ele virou uma CHAVE MULTIPLA (ou estrangeira)
*/ 
#SETANDO curso preferido com idcurso pra virar chave estrangeira
ALTER TABLE gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

SELECT*from gafanhotos;

select * from cursos;

#Aqui eu crio a relação entre as TUPLAS
update gafanhotos set cursopreferido = '6' where id = '1';


#Não adianta tenta apagar, ele tá relacionado em chave estrangeira
delete from cursos
where idcurso = '6';

#Ele deletou o 28 porque não existe relação dele com a entidade gafanhotos
delete from cursos
where idcurso = '28';


