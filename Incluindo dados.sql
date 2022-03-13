use vendas_sucos;

insert into produtos( codigo, descritor, sabor, tamanho, embalagem, preco_lista)
values ( '1040107', 'Light - 350 mL- Melância', 'Melância', '350 mL', 'Lata', 4.56);

SELECT 
    *
FROM
    produtos;

insert into produtos( codigo, descritor, sabor, tamanho, embalagem, preco_lista)
values ( '1040108', 'Light - 350 mL- Graviola', 'Graviola', '350 mL', 'Lata', 4.00);

insert into produtos
values ( '1040109', 'Light - 350 mL- Açai', 'Açai', '350 mL', 'Lata', 5.60);

insert into produtos
values ( '1040110', 'Light - 350 mL- Jaca', 'Jaca', '350 mL', 'Lata', 6.00),
	   ( '1040111', 'Light - 350 mL- Manga', 'Manga', '350 mL', 'Lata', 3.50);
       
insert into produtos
values ( '1040111', 'Light - 350 mL- Manga', 'Manga', '350 mL', 'Lata', 3.50);


INSERT INTO clientes
(CPF,NOME,ENDERECO,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA)
VALUES 
('1471156710','Érica Carvalho','R. Iriquitia','Jardins','São Paulo','SP','80012212','19900901',27,'F',170000,24500,0),
('19290992743','Fernando Cavalcante','R. Dois de Fevereiro','Água Santa','Rio de Janeiro','RJ','22000000','20000212',18,'M',100000,20000,1),
('2600586709','César Teixeira','Rua Conde de Bonfim','Tijuca','Rio de Janeiro','RJ','22020001','20000312',18,'M',120000,22000,0);

select * from clientes;