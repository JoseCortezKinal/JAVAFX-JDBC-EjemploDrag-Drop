-- drop database EjemploDragDrop;

create database EjemploDragDrop;

use EjemploDragDrop;

create table Productos(
	productoId int not null auto_increment,
    nombre varchar(30) not null,
    imagen BLOB,
    primary key Imagen(productoId)
);

delimiter $$
create procedure sp_agregarProducto(nom varchar(30), img BLOB)
begin
	insert into Productos(nombre, imagen) values
		(nom, img);
end $$
delimiter ;

delimiter $$
create procedure sp_buscarProducto(imgId int)
begin
	select I.nombre, I.imagen from imagen I
		where imagenId = imgId;
end $$
delimiter ;




