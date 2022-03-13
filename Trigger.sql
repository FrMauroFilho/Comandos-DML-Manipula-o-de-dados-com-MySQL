create table tab_faturamento (
Data_venda date null, total_venda float);

select * from tab_faturamento;
select * from vendedores;

delete from notas;
delete from itens_notas;


insert into notas (numero, data_venda, CPF, matricula, imposto)
values ('0203','2019-05-08', '1471156710', '235', 0.10);

insert into itens_notas (numero, codigo, quantidade, preco)
values ('0203','1000889',100,10);

insert into itens_notas (numero, codigo, quantidade, preco)
values ('0203','1002334',100,10);


select* from notas;
select * from itens_notas;

select a.data_venda, sum(b.quantidade*b.preco)  from notas a 
inner join itens_notas b 
on a.numero = b.numero
group by data_venda;


insert into tab_faturamento
select a.data_venda, sum(b.quantidade*b.preco)  from notas a 
inner join itens_notas b 
on a.numero = b.numero
group by data_venda;

insert into notas (numero, data_venda, CPF, matricula, imposto)
values ('0205','2019-05-08', '1471156710', '235', 0.10);
insert into itens_notas (numero, codigo, quantidade, preco)
values ('0205','1000889',100,10);
insert into itens_notas (numero, codigo, quantidade, preco)
values ('0205','1002334',100,10);
delete from tab_faturamento;
insert into tab_faturamento
select a.data_venda, sum(b.quantidade*b.preco)  from notas a 
inner join itens_notas b 
on a.numero = b.numero
group by data_venda;


delimiter // 
create trigger tg_calcula_faturamento_insert after insert on itens_notas
for each row begin 
delete from tab_faturamento;
insert into tab_faturamento
select a.data_venda, sum(b.quantidade*b.preco)  from notas a 
inner join itens_notas b 
on a.numero = b.numero
group by data_venda;
end//


select * from tab_faturamento;
delete from tab_faturamento;

