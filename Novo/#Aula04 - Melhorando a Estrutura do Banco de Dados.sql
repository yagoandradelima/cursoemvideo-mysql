#Melhorando a estrutura do banco de dados
create database cadastros 
#Essas duas linhas abaixo estruturam um set de caractere voltado para a linguagem latina e acentuados
default character set utf8
default collate utf8_general_ci;


drop table pessoas;

create table pessoas(
	#AUTO_INCREMENT é para que a cada novo registro o id acrescente +1 a seu valor
	id int NOT NULL auto_increment,
	#NOT NULL impede que o registro fique em branco
	nome varchar(30) NOT NULL,
    #date é data padrão
    nascimento date,
    #enum impede que o usuário cadastre algo fora do que foi declarado em ()
    sexo enum('M','F'),
    /*
    Em decimal(x, y), x é quantidade de caracteres reservados e y é a quantidade de números
    depois da vírgula
    */
    peso decimal(5,2),
    altura decimal(3,2),
    #DEFAULT coloca como padrão, caso nada seja digitado, o que está entre as aspas
    #nesse caso 'Brasil'
    nacionalidade varchar(20) DEFAULT 'Brasil',
#coloca o id como chave primária, assim não se cadastra uma mesma pessoa mais de uma vez    
primary key (id)
) default charset = utf8;