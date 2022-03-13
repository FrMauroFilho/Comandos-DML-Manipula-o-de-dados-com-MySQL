select * from notas;
select * from itens_notas;

select * from tab_faturamento;

update itens_notas set quantidade = 200 
where numero = '0203' and codigo = '1002334';

delete from itens_notas
where numero = '0203' and codigo = '1002334';

delimiter // 
create trigger tg_calcula_faturamento_update after update on itens_notas
for each row begin 
delete from tab_faturamento;
insert into tab_faturamento
select a.data_venda, sum(b.quantidade*b.preco)  from notas a 
inner join itens_notas b 
on a.numero = b.numero
group by data_venda;
end//

delimiter // 
create trigger tg_calcula_faturamento_delete after delete on itens_notas
for each row begin 
delete from tab_faturamento;
insert into tab_faturamento
select a.data_venda, sum(b.quantidade*b.preco)  from notas a 
inner join itens_notas b 
on a.numero = b.numero
group by data_venda;
end//

insert into notas (numero, data_venda, CPF, matricula, imposto)
values ('0206','2019-05-08', '1471156710', '235', 0.10);
insert into itens_notas (numero, codigo, quantidade, preco)
values ('0206','1000889',100,10);
insert into itens_notas (numero, codigo, quantidade, preco)
values ('0206','1002334',100,10);

delete from itens_notas
where numero = '0206' and codigo = '1002334';

update itens_notas set quantidade = 400 
where numero = '0201' and codigo = '1002334';