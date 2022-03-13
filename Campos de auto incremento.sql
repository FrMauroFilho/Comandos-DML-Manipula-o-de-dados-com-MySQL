create table tab_identity (id int auto_increment, descritor varchar(20), primary key (ID));
insert into tab_identity (descritor) values ('cliente1');

select * from tab_identity;

insert into tab_identity (descritor) values ('cliente2');
insert into tab_identity (descritor) values ('cliente7');
insert into tab_identity (id, descritor) values (100, 'cliente6'); 

delete from tab_identity where id = 5;