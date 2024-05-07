-- drop database EjemploDragDrop;

create database EjemploDragDrop;

use EjemploDragDrop;

create table Productos(
	productoId int not null auto_increment,
    nombre varchar(30) not null,
    imagen LONGBLOB,
    primary key Imagen(productoId)
);

delimiter $$
create procedure sp_agregarProducto(nom varchar(30), img LONGBLOB)
begin
	insert into Productos(nombre, imagen) values
		(nom, img);
end $$
delimiter ;

delimiter $$
create procedure sp_buscarProducto(proId int)
begin
	select P.productoId, P.nombre, P.imagen from Productos P
		where productoId = proId;
end $$
delimiter ;

select * from Productos;

call sp_buscarProducto(1);

