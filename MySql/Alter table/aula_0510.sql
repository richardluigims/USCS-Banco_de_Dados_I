create database aula_0510;

CREATE TABLE carg (
  codigo_carg char(3) NOT NULL,
  nome_carg char(35) NOT NULL,
  classe_carg char(1) NOT NULL   DEFAULT 'P',
  tipo_contrato_carg char(1)  NOT NULL  DEFAULT 'H',
  salario_piso_carg decimal(7,2) NOT NULL DEFAULT 0.00,
  salario_teto_carg decimal(7,2) NOT NULL DEFAULT 0.00,
  ind_comissao_carg char(1) NOT NULL,  
  PRIMARY KEY (codigo_carg)
);

CREATE TABLE func (
  numero_func smallint(6) NOT NULL,
  nome_func varchar(40) NOT NULL,
  cpf_func char(11) NOT NULL,
  data_admissao_func date NOT NULL,
  data_saida_func date DEFAULT NULL,
  situacao_func char(1) NOT NULL DEFAULT 'A',
  codigo_carg char(3) NOT NULL,
  salario_base_func decimal(7,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (numero_func)
);

CREATE TABLE dpto (
  codigo_dpto char(3) NOT NULL,
  nome_dpto char(30) NOT NULL,
  numero_gerente smallint(6) DEFAULT NULL,
  PRIMARY KEY (codigo_dpto)
);

CREATE TABLE aloc (
  codigo_dpto char(3) NOT NULL,
  numero_func smallint(6) NOT NULL,
  PRIMARY KEY (codigo_dpto,numero_func)
);

CREATE TABLE pgto (
  ano_ref_pgto int(4) NOT NULL,
  mes_ref_pgto int(2) NOT NULL,
  numero_func smallint(6) NOT NULL,
  sal_base_pgto decimal(7,2) NOT NULL DEFAULT 0.00,
  total_desc_pgto decimal(7,2) NOT NULL DEFAULT 0.00,
  total_horas_pgto decimal(3,0) NOT NULL DEFAULT 0,
  PRIMARY KEY (ano_ref_pgto,mes_ref_pgto,numero_func)
);

CREATE TABLE hist (
  numero_hist smallint(6) NOT NULL,
  numero_func smallint(6) NOT NULL,
  data_ini_hist timestamp NOT NULL,
  codigo_carg char(3) NOT NULL,
  salario_base_func decimal(7,2) NOT NULL,
  PRIMARY KEY (numero_hist,numero_func)
);
