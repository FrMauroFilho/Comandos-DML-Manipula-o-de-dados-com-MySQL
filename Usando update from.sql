select * from vendedores;
select * from sucos_vendas.tabela_de_vendedores;

select de_ferias as ferias from sucos_vendas.tabela_de_vendedores;

select * from vendedores A 
inner join sucos_vendas.tabela_de_vendedores B 
on a.matricula = substring(b.matricula,3,3);

update vendedores A  
inner join sucos_vendas.tabela_de_vendedores B 
on a.matricula = substring(b.matricula,3,3)
set A.Ferias = B.de_ferias;

select A.nome, B.nome, B.bairro, B.volume_compra from vendedores A 
inner join clientes B 
on A.bairro = B.bairro;

update clientes B 
inner join vendedores A 
on A.bairro = B.bairro
set B.volume_compra = B.volume_compra*1.30; 
