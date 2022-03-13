use vendas_sucos;

create table tabela_de_vendas (
numero varchar(5) not null, 
data_venda date null,
CPF varchar(11) not null, 
matricula varchar (5) not null,
imposto float null, 
primary key (numero));

alter table tabela_de_vendas add constraint FK_clientes
foreign key (CPF) references clientes (cpf);

alter table tabela_de_vendas add constraint FK_vendedores
foreign key (matricula) references vendedores (matricula);

ALTER TABLE itens_notas ADD CONSTRAINT FK_NOTAS
FOREIGN KEY (NUMERO)
REFERENCES NOTAS (NUMERO);

ALTER TABLE itens_notas ADD CONSTRAINT FK_PRODUTOS
FOREIGN KEY (CODIGO)
REFERENCES PRODUTOS (CODIGO);
