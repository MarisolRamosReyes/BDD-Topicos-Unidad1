EXEC sp_addlinkedserver
@server ='10.235.242.150',
@srvproduct ='SQL SERVER';
GO

EXEC sp_addlinkedsrvlogin
@rmtsrvname =N'10.235.242.150',
@useself ='false',
@rmtuser = N'sa',
@rmtpassword = N'123456'
GO

/*Tabla Cliente*/

insert into [10.235.242.150].TiendaDeRopa.dbo.CLIENTE(Nombre,APaterno,AMaterno,Teléfono,Dirección)values('Marisol','Ramos','Reyes','8661953793','Matamoros#351');
insert into [10.235.242.150].TiendaDeRopa.dbo.CLIENTE(Nombre,APaterno,AMaterno,Teléfono,Dirección)values('Daniela','Ramos','Reyes','8662346789','Matamoros#351');
insert into [10.235.242.150].TiendaDeRopa.dbo.CLIENTE(Nombre,APaterno,AMaterno,Teléfono,Dirección)values('Yael Jesús','Reyes','Martínez','8662389782','Calle PrifJosefa ');
insert into [10.235.242.150].TiendaDeRopa.dbo.CLIENTE(Nombre,APaterno,AMaterno,Teléfono,Dirección)values('Karla Patricia','Hernandez','Martinez','8662857190','Constitución');
insert into [10.235.242.150].TiendaDeRopa.dbo.CLIENTE(Nombre,APaterno,AMaterno,Teléfono,Dirección)values('Genaro','Cruz','Tapia','8663458350','02Abril');
insert into [10.235.242.150].TiendaDeRopa.dbo.CLIENTE(Nombre,APaterno,AMaterno,Teléfono,Dirección)values('Dora Luz','Reyes','Jaquez','8662907245','Matamoros#351');

insert into CLIENTE(Nombre,APaterno,AMaterno,Teléfono,Dirección)values('Yoana','Rangel','Carrillo','8664357287','Escobilla#657');
insert into CLIENTE(Nombre,APaterno,AMaterno,Teléfono,Dirección)values('Saul','Armendariz','Zamarripa','8669854034','Galaz#453');
insert into CLIENTE(Nombre,APaterno,AMaterno,Teléfono,Dirección)values('Katerin','Fuentes','Martínez','866572589','Charmandel#481 ');
insert into CLIENTE(Nombre,APaterno,AMaterno,Teléfono,Dirección)values('Fernada','Tapia','Dominguez','8666476465','Carranza#572');

Select * from CLIENTE
Select * from [10.235.242.150].TiendaDeRopa.dbo.CLIENTE


/*Tabla PROVEEDOR*/

insert into PROVEEDOR(Nombre,APaterno,AMaterno,Telefono,Direccion)values('Luis','Garcia','Torres','8661953793','Sepulveda#210');
insert into PROVEEDOR(Nombre,APaterno,AMaterno,Telefono,Direccion)values('Pablo Armando','Ramirez','Ortiz','866341243','Matamoros#351');
insert into PROVEEDOR(Nombre,APaterno,AMaterno,Telefono,Direccion)values('Gabriela','Hernandez','Zapata','8662389782','Calle PrifJosefa ');
insert into [10.235.242.150].TiendaDeRopa.dbo.PROVEEDOR(Nombre,APaterno,AMaterno,Telefono,Direccion)values('Moises','Díaz','Rodirguez','8662857190','Constitución');
insert into [10.235.242.150].TiendaDeRopa.dbo.PROVEEDOR(Nombre,APaterno,AMaterno,Telefono,Direccion)values('Genaro Israel','Godinez','Soto','8663458350','02Abril');
insert into [10.235.242.150].TiendaDeRopa.dbo.PROVEEDOR(Nombre,APaterno,AMaterno,Telefono,Direccion)values('Karen','Robledo','','8662907245','Matamoros#351');
Select * from PROVEEDOR
Select * from [10.235.242.150].TiendaDeRopa.dbo.PROVEEDOR

/*Tabla Departamento*/
insert into [10.235.242.150].TiendaDeRopa.dbo.DEPARTAMENTO(Nombre)values('Dama');
insert into [10.235.242.150].TiendaDeRopa.dbo.DEPARTAMENTO(Nombre)values('Caballero');
insert into [10.235.242.150].TiendaDeRopa.dbo.DEPARTAMENTO(Nombre)values('Niños');
insert into [10.235.242.150].TiendaDeRopa.dbo.DEPARTAMENTO(Nombre)values('Niñas');
insert into [10.235.242.150].TiendaDeRopa.dbo.DEPARTAMENTO(Nombre)values('Jovenes');
insert into [10.235.242.150].TiendaDeRopa.dbo.DEPARTAMENTO(Nombre)values('Bebes');

insert into DEPARTAMENTO(Nombre)values('Dama');
insert into DEPARTAMENTO(Nombre)values('Caballero');
insert into DEPARTAMENTO(Nombre)values('Niños');
insert into DEPARTAMENTO(Nombre)values('Niñas');
insert into DEPARTAMENTO(Nombre)values('Jovenes');
insert into DEPARTAMENTO(Nombre)values('Bebes');

Select * from DEPARTAMENTO
Select * from [10.235.242.150].TiendaDeRopa.dbo.DEPARTAMENTO

/*Tabla Marca*/

insert into [10.235.242.150].TiendaDeRopa.dbo.MARCA(Nombre)values('LEVIS');
insert into [10.235.242.150].TiendaDeRopa.dbo.MARCA(Nombre)values('LEE');
insert into [10.235.242.150].TiendaDeRopa.dbo.MARCA(Nombre)values('VANS');
insert into [10.235.242.150].TiendaDeRopa.dbo.MARCA(Nombre)values('HUMO');
insert into [10.235.242.150].TiendaDeRopa.dbo.MARCA(Nombre)values('Cuidado con el perro');
insert into [10.235.242.150].TiendaDeRopa.dbo.MARCA(Nombre)values('Cherokee');

insert into MARCA(Nombre)values('SARA');
insert into MARCA(Nombre)values('FOREVER21');
insert into MARCA(Nombre)values('Nike');
insert into MARCA(Nombre)values('Hugo Boss');
Select * from MARCA

Select * from [10.235.242.150].TiendaDeRopa.dbo.MARCA

/*Tabla Talla*/
insert into [10.235.242.150].TiendaDeRopa.dbo.TALLA(NoTalla)values('5');
insert into [10.235.242.150].TiendaDeRopa.dbo.TALLA(NoTalla)values('7');
insert into [10.235.242.150].TiendaDeRopa.dbo.TALLA(NoTalla)values('9');
insert into [10.235.242.150].TiendaDeRopa.dbo.TALLA(NoTalla)values('11');
insert into [10.235.242.150].TiendaDeRopa.dbo.TALLA(NoTalla)values('13');
insert into [10.235.242.150].TiendaDeRopa.dbo.TALLA(NoTalla)values('15');
insert into [10.235.242.150].TiendaDeRopa.dbo.TALLA(NoTalla)values('17');

insert into TALLA(NoTalla)values('28');
insert into TALLA(NoTalla)values('30');
insert into TALLA(NoTalla)values('32');
insert into TALLA(NoTalla)values('34');
insert into TALLA(NoTalla)values('36');
insert into TALLA(NoTalla)values('38');
insert into TALLA(NoTalla)values('40');


Select * from TALLA;
Select * from [10.235.242.150].TiendaDeRopa.dbo.TALLA

Insert into PRENDA(IdMarca,IdTalla,IdDepartamento,IdProveedor,Precio,Cantidad)values(1,1,1,1,350,5);
Insert into PRENDA(IdMarca,IdTalla,IdDepartamento,IdProveedor,Precio,Cantidad)values(2,2,2,2,250,5);
Insert into PRENDA(IdMarca,IdTalla,IdDepartamento,IdProveedor,Precio,Cantidad)values(3,3,3,3,150,10);

Insert into [10.235.242.150].TiendaDeRopa.dbo.PRENDA(IdMarca,IdTalla,IdDepartamento,IdProveedor,Precio,Cantidad)values(1,1,1,1,240,6);
Insert into [10.235.242.150].TiendaDeRopa.dbo.PRENDA(IdMarca,IdTalla,IdDepartamento,IdProveedor,Precio,Cantidad)values(2,2,2,2,270,7);
Insert into [10.235.242.150].TiendaDeRopa.dbo.PRENDA(IdMarca,IdTalla,IdDepartamento,IdProveedor,Precio,Cantidad)values(3,3,3,3,180,8);

Select * from PRENDA;

Insert into VENTA(IdCliente,IdPrenda,Fecha)values(4,1,'2023-09-04');
Insert into VENTA(IdCliente,IdPrenda,Fecha)values(2,2,'2023-09-05');
Insert into VENTA(IdCliente,IdPrenda,Fecha)values(5,3,'2023-09-05');

Insert into [10.235.242.150].TiendaDeRopa.dbo.VENTA(IdCliente,IdPrenda,Fecha)values(4,1,'2023-09-01');
Insert into [10.235.242.150].TiendaDeRopa.dbo.VENTA(IdCliente,IdPrenda,Fecha)values(2,2,'2023-09-02');
Insert into [10.235.242.150].TiendaDeRopa.dbo.VENTA(IdCliente,IdPrenda,Fecha)values(5,3,'2023-09-03');
Select * from [10.235.242.150].TiendaDeRopa.dbo.CLIENTE;
Select * from VENTA;


/*Seleccion donde me cuente el numero de prendas que tiene cada marca*/
Select P.Cantidad, M.Nombre  FROM PRENDA P INNER JOIN [10.235.242.150].TiendaDeRopa.dbo.MARCA M ON P.IdMarca =M.IdMarca;

/*Insertar un nuevo registro en la tabla de marca*/
insert into [10.235.242.150].TiendaDeRopa.dbo.MARCA(Nombre)values('LACOSTE');
Select * from [10.235.242.150].TiendaDeRopa.dbo.MARCA;

/*Modificar el nombre de una marca de ropa*/

UPDATE [10.235.242.150].TiendaDeRopa.dbo.MARCA 
SET Nombre = 'SHEIN' WHERE IdMarca=5;
Select * from [10.235.242.150].TiendaDeRopa.dbo.MARCA;

/*Eliminar el registro de un cliente*/
Delete From [10.235.242.150].TiendaDeRopa.dbo.CLIENTE WHERE IdCliente =5;
Select * from [10.235.242.150].TiendaDeRopa.dbo.CLIENTE;




Select * from [10.235.242.150].TiendaDeRopa.dbo.CLIENTE;
Select * from [10.235.242.150].TiendaDeRopa.dbo.PROVEEDOR;
Select * from [10.235.242.150].TiendaDeRopa.dbo.DEPARTAMENTO;
Select * from [10.235.242.150].TiendaDeRopa.dbo.MARCA;
Select * from [10.235.242.150].TiendaDeRopa.dbo.TALLA;

Select * from [10.235.242.150].TiendaDeRopa.dbo.PRENDA;

Select * from [10.235.242.150].TiendaDeRopa.dbo.VENTA;

