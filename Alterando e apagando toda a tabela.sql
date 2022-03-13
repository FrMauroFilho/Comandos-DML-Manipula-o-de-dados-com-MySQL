CREATE TABLE `produtos2` (
  `codigo` varchar(10) NOT NULL,
  `descritor` varchar(100) DEFAULT NULL,
  `sabor` varchar(50) DEFAULT NULL,
  `tamanho` varchar(50) DEFAULT NULL,
  `embalagem` varchar(50) DEFAULT NULL,
  `preco_lista` float DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ;

insert into produtos2
select * from produtos; 

select * from produtos2;

update produtos2
set preco_lista = 8;

delete from produtos2;