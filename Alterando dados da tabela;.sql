SELECT 
    *
FROM
    produtos;

UPDATE produtos 
SET 
    preco_lista = 5
WHERE
    codigo = '1000889';

UPDATE produtos 
SET 
    embalagem = 'PET',
    tamanho = '1 Litro',
    descritor = 'Sabor da Montanha - 1 Litro - Uva'
WHERE
    codigo = '1000889'; 
    
select	* from produtos where sabor = 'maracujá';

UPDATE produtos 
SET 
    preco_lista = preco_lista * 1.10
WHERE
    sabor = 'Maracujá';

select * from clientes;

UPDATE CLIENTES
SET ENDERECO = 'R. Jorge Emilio 23',
BAIRRO = 'Santo Amaro',
CIDADE = 'São Paulo',
ESTADO = 'SP',
CEP = '8833223'
WHERE CPF = '19290992743';

UPDATE clientes 
SET 
    endereco = 'R. Jorge Emílio 23',
    bairro = 'Santo Amaro',
    cidade = 'São Paulo',
    estado = 'SP',
    CEP = '8833223'
WHERE
    cpf =  19290992743;