insert into pessoas
/*
1 - O id eu posso deletar tanto da tupla de cima, quanto da de baixo.
Ele é AUTO_INCREMENT significando que terá valor 1 quando começar a rodar.

2 - Se eu quiser posso colocar uma constraint DEFAULT no id.
*/

(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(DEFAULT, 'Creuza', '1920-10-20', 'F', '50.2', '1.65', DEFAULT);

select * from pessoas;