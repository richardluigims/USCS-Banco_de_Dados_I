select avg(salario_base_func) from func; /* média do campo */

select avg(salario_base_func) from func where codigo_carg = 'DBA'; /* média de um cargo específico */

select avg(salario_base_func) from func where codigo_carg in('DBA', 'PGM'); /* pega todos os salários dos cargos escolhidos e encontra a média */

select codigo_carg, avg(salario_base_func) from func group by codigo_carg; /* listar a média salarial de todos os cargos */

/* se quiser o menor ---> min
se quiser o maior ---> max */

select min(salario_base_func), max(salario_base_func) from func; /* salario mínimo e máximo de todos os cargos */

select count(*) from func; /* todas as linhas */

select codigo_carg, count(*) from func group by codigo_carg; /* contar quantos funcionários em cada cargo */

select codigo_carg, count(*) from func group by codigo_carg having count(*) > 20; /* listar cargos com mais de 20 funcionários */

select codigo_carg, count(*) as qtde from func group by codigo_carg having qtde > 20; /* utilizando alias */

select codigo_carg, count(*) qtde from func group by codigo_carg having qtde > 20; /* alias sem as */

select codigo_carg codigo, count(*) qtde from func group by codigo_carg having qtde > 20; /* dando nomes para alguns campos */

select numero_func, nome_func, f.codigo_carg, c.codigo_carg, nome_carg from func f, carg c where f.codigo_carg = c.codigo_carg; /* utilizando duas tabelas */

select numero_func, nome_func, f.codigo_carg, c.codigo_carg, nome_carg from func f inner join carg c using(codigo_carg); /* melhor jeito */

select numero_func, nome_func, f.codigo_carg, c.codigo_carg, nome_carg from func f inner join carg c on f.codigo_carg = c.codigo_carg; /* podemos usar using se o nome da chave primária se manter ao se tornar estrangeira, on para qualquer caso */

select * from func f inner join carg c on f.codigo_carg = c.codigo_carg; /* mostra todas as colunas de func e carg, repete codigo_carg */

select * from func f inner join carg c using(codigo_carg); /* também mostra todas as colunas, mas mostra codigo_carg apenas 1 vez */

select codigo_dpto, nome_dpto, numero_gerente from dpto d;

select nome_func nome_gerente from dpto d inner join func f on f.numero_func = d.numero_gerente;

select codigo_dpto, nome_dpto, numero_gerente, nome_func nome_gerente from dpto d left join func f on f.numero_func = d.numero_gerente;

/* inner join ---> despreza a linha onde não há o casamento das condições
left join ---> mostra a linha mesmo que não casem as condições */
/* as colunas à esquerda são do dpto, dpto comanda a consulta
colunas à direita são do func */

select * from func f right join dpto d on f.numero_func = d.numero_gerente;

/* right join executa o contrário do left join */
