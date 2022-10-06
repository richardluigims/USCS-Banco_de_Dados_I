alter table func add foreign key (codigo_carg) references carg (codigo_carg);

alter table dpto add foreign key (numero_gerente) references func (numero_func);

alter table aloc add foreign key (codigo_dpto) references dpto (codigo_dpto), add foreign key (numero_func) references func (numero_func);

alter table pgto add foreign key (numero_func) references func (numero_func);

alter table hist add foreign key (numero_func) references func (numero_func), add foreign key (codigo_carg) references carg (codigo_carg); 
