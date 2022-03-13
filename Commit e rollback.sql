start transaction;

select * from vendedores;

update vendedores set comissao = comissao*1.15;

rollback;

commit;

start transaction;

INSERT INTO `vendas_sucos`.`vendedores`
(`matricula`,
`nome`,
`bairro`,
`comissao`,
`data_admissao`,
`ferias`)
VALUES
('99199',
'João da silva2',
'Icaraí',
0.08,
'2012-01-15',
0);



rollback;