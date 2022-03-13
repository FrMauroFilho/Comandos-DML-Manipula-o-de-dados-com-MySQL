CREATE TABLE tab_padrao (
    id INT AUTO_INCREMENT,
    descritor VARCHAR(20),
    endereco VARCHAR(100) NULL,
    cidade VARCHAR(50) DEFAULT 'Rio de Janeiro',
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP (),
    PRIMARY KEY (ID)
);

insert into tab_padrao (descritor, endereco, cidade, data_criacao) 
value ('cliente X', 'rua projetada A', 'São Paulo', '2019-01-01');

select * from tab_padrao;

insert into tab_padrao (descritor) 
value ('cliente Y');