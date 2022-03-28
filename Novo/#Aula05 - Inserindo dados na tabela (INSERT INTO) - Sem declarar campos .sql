
/*
1 - O id eu posso deletar tanto da tupla de cima, quanto da de baixo. 
Ele é AUTO_INCREMENT significando que terá valor 1 quando começar a rodar.

2 - Se eu quiser posso colocar uma constraint DEFAULT no id

3 - Ao contrário do outro exemplo, caso as informações adicionadas estejam na mesma ordem das colunas
dos registros, eu posso remover '(id, nome, nascimento, sexo, peso, altura, nacionalidade)'

*/
insert into pessoas values
(DEFAULT, 'Adalgiza', '1930-11-26', 'F', '63.2', '1.75', 'Irlanda');

/*
Lembrando que cada ponto e vírgula é um comando diferente sendo executado!
*/ 

select * from pessoas;

/*
Abaixo vou inserir várias pessoas de uma única vez
*/

INSERT INTO pessoas VALUES
(DEFAULT, 'Ana', '1930-08-26', 'F', '67.2', '1.85', 'EUA'), #para inserir mais de um, usar vírgula
(DEFAULT, 'Paulo', '1998-08-27', 'M', '85.2', '1.98', 'Alemanha'),
(DEFAULT, 'Lucas', '1977-09-18', 'M', '77.2', '1.55', 'Zimbabue'),
(DEFAULT, 'Carla', '1980-04-05', 'F', '67.2', '1.66', DEFAULT); #final do comando, ponto e vírgula!

