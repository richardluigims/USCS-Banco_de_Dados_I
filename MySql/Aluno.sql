create database uscs;
create table aluno (ra int auto_increment primary key, nome varchar(40), cpf char(11), sexo char(1)); /* auto_increment ---> cria os valores sozinho, caso não sejam fornecidos */
create table aluno2 (ra int auto_increment primary key, nome varchar(40), cpf char(11), sexo char(1));
select * from aluno; /* mostrar tabela ---> comando: '*' */
insert into aluno (ra, nome, cpf, sexo) values (100, 'Eduardo', '12345678901', 'M'); 
insert into aluno (nome, cpf, sexo) values ('Richard', '12345678901', 'M');
insert into aluno (ra, nome, cpf, sexo) values (10, 'Pedro', '12345678901', 'M'); 
insert into aluno (ra, nome, cpf, sexo) values (null, 'Luiz', '12345678901', 'M'); /* 0 ou null ---> assume auto increment */
insert into aluno (ra, nome, cpf, sexo) values (0, 'Luigi', '12345678901', 'M'); 
insert into aluno values (150, 'Luiz', '12345678901', 'M'); /* se omitir os campos, tem que passar todos os valores */
insert into aluno values (200, 'Lucas', '12345678901', 'M'); 
insert into aluno2 values (0, 'Luigi', '12345678901', 'M'); 
select * from aluno2;
insert into aluno2 values (01, 'Richard', '12345678901', 'M'); 
delete from aluno where ra = 103;
update aluno set sexo = 'F' where ra = 104;
update aluno set nome = 'Luigi' where ra = 103;
update aluno set nome = 'Luiza' where ra = 104;
