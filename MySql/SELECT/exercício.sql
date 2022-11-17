insert into dpto values ('ABC', 'DPTO ABC', NULL);

-- Listar o codigo dos departamentos que não possuem nenhum funcionario alocado

select d.codigo_dpto from dpto d left join aloc a using (codigo_dpto) where a.numero_func is null;

select d.codigo_dpto from dpto d left join aloc a using (codigo_dpto) where a.codigo_dpto is null;

SELECT a.codigo_dpto FROM aloc a;

SELECT distinct a.codigo_dpto FROM aloc a; /* distinct elimina linhas repetidas */

SELECT d.codigo_dpto from dpto d;

SELECT distinct d.codigo_dpto FROM dpto d WHERE codigo_dpto NOT IN (SELECT distinct a.codigo_dpto FROM aloc a);
