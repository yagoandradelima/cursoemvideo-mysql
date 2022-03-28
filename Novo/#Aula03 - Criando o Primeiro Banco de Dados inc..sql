#use "database" (sem aspas) é pra que eu abra um banco de dados e execute meus comandos nele
use cadastros;

#Esse comando cria um banco de dados
create database cadastros;

#Esse comando cria uma tabela
create table pessoas(
	#em preto eu tenho o nome do meu registro e em azul eu tenho o tipo primitivo dele
	nome varchar(30), 
    idade tinyint,
    peso char(1),
    altura float,
    sexo float,
    nacionalidade varchar(20)
); #o ; define o final de um comando

#descreve a estrutura de uma tabela
describe pessoas;