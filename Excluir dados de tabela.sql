
INSERT INTO PRODUTOS (CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
  VALUES ('1001001','Sabor dos Alpes 700 ml - Manga','Manga','700 ml','Garrafa',7.50),
  ('1001000','Sabor dos Alpes 700 ml - Melão','Melão','700 ml','Garrafa',7.50),
  ('1001002','Sabor dos Alpes 700 ml - Graviola','Graviola','700 ml','Garrafa',7.50),
  ('1001003','Sabor dos Alpes 700 ml - Tangerina','Tangerina','700 ml','Garrafa',7.50),
  ('1001004','Sabor dos Alpes 700 ml - Abacate','Abacate','700 ml','Garrafa',7.50),
  ('1001005','Sabor dos Alpes 700 ml - Açai','Açai','700 ml','Garrafa',7.50),
  ('1001006','Sabor dos Alpes 1 Litro - Manga','Manga','1 Litro','Garrafa',7.50),
  ('1001007','Sabor dos Alpes 1 Litro - Melão','Melão','1 Litro','Garrafa',7.50),
  ('1001008','Sabor dos Alpes 1 Litro - Graviola','Graviola','1 Litro','Garrafa',7.50),
  ('1001009','Sabor dos Alpes 1 Litro - Tangerina','Tangerina','1 Litro','Garrafa',7.50),
  ('1001010','Sabor dos Alpes 1 Litro - Abacate','Abacate','1 Litro','Garrafa',7.50),
  ('1001011','Sabor dos Alpes 1 Litro - Açai','Açai','1 Litro','Garrafa',7.50);


SELECT * FROM PRODUTOS WHERE SUBSTRING(DESCRITOR,1,15) = 'Sabor dos Alpes';

delete from produtos where codigo = '1001000';

delete from produtos where tamanho = '1 Litro' and substring(Descritor,1,15) = 'Sabor dos Alpes';

select codigo_do_produto from sucos_vendas.tabela_de_produtos;

select codigo from vendas_sucos.produtos 
where codigo not in (select codigo_do_produto from sucos_vendas.tabela_de_produtos);

delete from produtos where codigo not in (select codigo_do_produto from sucos_vendas.tabela_de_produtos);

select * from notas;

select* from notas A 
inner join sucos_vendas.notas_fiscais B
on A.CPF = B.CPF;

update notas A 
inner join sucos_vendas.notas_fiscais B
on A.CPF = B.CPF
set a.data_venda = b.data_venda;

select A.CPF, B.NOME, B.IDADE from notas A
inner join clientes B 
on A.CPF = B.CPF  
group by a.cpf;

delete a from notas A
inner join clientes B 
on A.CPF = B.CPF
where idade <=18;
