mysql -uroot -p

create database bd_almacen character set utf8 collate utf8_general_ci;

use bd_almacen;

create table productos (
id int(11) not null,
descripcion varchar(250) default null,
stock int(11) default null
) engine=InnoDB default charset=utf8;

insert into productos (`id`, `descripcion`, `stock`) VALUES(1, 'Celular Samsung J7', 105);
insert into productos (`id`, `descripcion`, `stock`) VALUES(2, 'Laptop 15* Sony', 55);
insert into productos (`id`, `descripcion`, `stock`) VALUES(3, 'ipod Pro 10*', 30);

alter table productos
add primary key (id);

alter table productos
modify id int(11) not null auto_increment, auto_increment=8;

commit;
