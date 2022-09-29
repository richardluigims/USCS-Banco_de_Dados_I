create database aula_2809_2;

create table carg (codigo_carg char(3) primary key, nome_carg char(35) not null, classe_carg char(1) not null, tipo_contrato_carg char(1) not null, salario_piso_carg decimal(7,2) unsigned not null, salario_teto_carg decimal(7,2) unsigned not null, ind_comissao_carg char(1) not null);

create table func (numero_func smallint unsigned primary key, nome_func varchar(40) not null, cpf_func char(11) not null, data_admissão_func date not null, data_saída_func date, situação_func char(1) not null, codigo_carg char(3) not null, salario_base_func decimal(7,2) unsigned not null, foreign key (codigo_carg) references carg (codigo_carg));

create table dpto (codigo_dpto char(3) primary key, nome_dpto char(30) not null, numero_gerente smallint unsigned, foreign key (numero_gerente) references func (numero_func));

create table pgto (ano_ref_pgto int, mes_ref_pgto int, numero_func smallint unsigned, sal_base_pgto decimal(7,2) unsigned not null, total_desc_pgto decimal(7,2) unsigned not null, total_horas_pgto decimal(3,0) unsigned not null, primary key (ano_ref_pgto,  mes_ref_pgto, numero_func), foreign key (numero_func) references func (numero_func));

create table hist (numero_hist smallint, numero_func smallint unsigned, data_ini_hist timestamp not null, codigo_carg char(3) not null, salario_base_func decimal(7,2) unsigned not null, primary key (numero_hist, numero_func), foreign key (numero_func) references func (numero_func), foreign key (codigo_carg) references carg (codigo_carg));

create table aloc (codigo_dpto char(3), numero_func smallint unsigned, primary key (codigo_dpto, numero_func), foreign key (codigo_dpto) references dpto (codigo_dpto), foreign key (numero_func) references func (numero_func));
