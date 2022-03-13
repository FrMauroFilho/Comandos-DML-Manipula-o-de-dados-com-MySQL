select * from sucos_vendas.tabela_de_clientes;

select * from clientes;

SELECT 
    CPF,
    nome, 
    ENDERECO_1 as endereco,
    bairro,
    cidade,
    estado,
    CEP,
    DATA_DE_NASCIMENTO as data_nascimento, 
    idade,
    sexo,
    limite_de_credito as limite_credito,
    VOLUME_DE_COMPRA as volume_compra,
    primeira_compra
FROM
    sucos_vendas.tabela_de_clientes
	where CPF not in (select CPF from clientes);
    

insert into clientes
SELECT 
    CPF,
    nome, 
    ENDERECO_1 as endereco,
    bairro,
    cidade,
    estado,
    CEP,
    DATA_DE_NASCIMENTO as data_nascimento, 
    idade,
    sexo,
    limite_de_credito as limite_credito,
    VOLUME_DE_COMPRA as volume_compra,
    primeira_compra
FROM
    sucos_vendas.tabela_de_clientes
	where CPF not in (select CPF from clientes);