CREATE DATABASE TiendaDeRopa
USE master;
go
IF DB_ID (N'TiendaDeRopa') is not null
DROP DATABASE TiendaDeRopa;
GO
CREATE DATABASE TiendaDeRopa
ON
( NAME = TiendaDeRopa_dat,
    FILENAME = 'C:\Topicos\TiendaDeRopa.mdf',
    SIZE = 10,
    MAXSIZE = 50,
    FILEGROWTH = 5 )
LOG ON
( NAME = TiendaDeRopa_log,
    FILENAME = 'C:\Topicos\TiendaDeRopa.ldf',
    SIZE = 5MB,
    MAXSIZE = 25MB,
    FILEGROWTH = 5MB );
GO
Use TiendaDeRopa;
GO
CREATE TABLE CLIENTE
(
	 IdCliente int identity(1,1) not null,
	 Nombre varchar(30) not null, 
	 APaterno  varchar(30) not null, 
	 AMaterno  varchar(30) not null, 
	 Teléfono varchar(30) not null, 
	 Dirección  varchar(30) not null , 
	 Estatus bit default 1 Not null
)
GO
CREATE TABLE DEPARTAMENTO
(
	 IdDEPARTAMENTO int identity(1,1) not null,
	 Nombre varchar(30) not null, 
	 Estatus bit default 1 Not null
)
GO
CREATE TABLE MARCA
(
	 IdMarca int identity(1,1) not null,
	 Nombre varchar(30) not null, 
	 Estatus bit default 1 Not null
)
GO
CREATE TABLE PROVEEDOR
(
	 IdProveedor int identity(1,1) not null,
	 Nombre varchar(30) not null, 
	 APaterno  varchar(30) not null, 
	 AMaterno  varchar(30) not null, 
	 Telefono varchar(30) not null, 
	 Direccion  varchar(30) not null , 
	 Estatus bit default 1 Not null
)
GO
CREATE TABLE TALLA
(
	 IdTalla int identity(1,1) not null,
	 NoTalla int not null, 
	 Estatus bit default 1 Not null
)
GO
CREATE TABLE PRENDA
(
	IdPrenda int identity(1,1) not null, 
	IdMarca int not null, 
	IdTalla int not null, 
	IdDepartamento int not null, 
	IdProveedor int not null, 
	Precio int not null, 
	Cantidad int not null, 
	Estatus bit default 1 Not null
)
GO 
Create TABLE VENTA
(
	IdVenta int identity(1,1) not null,
	IdCliente int not null, 
	IdPrenda int not null, 
	Fecha date not null,
	Estatus bit default 1 Not null
)

/*Llaves primarias*/
Alter Table CLIENTE add constraint PK_Cliente Primary Key (IdCliente)
Alter Table DEPARTAMENTO add constraint PK_Departamento Primary Key (IdDepartamento)
Alter Table MARCA add constraint PK_MARCA Primary Key (IdMARCA)
Alter Table PROVEEDOR add constraint PK_PROVEEDOR Primary Key (IdProveedor)
Alter Table TALLA add constraint PK_Talla Primary Key (IdTalla)
Alter Table PRENDA add constraint PK_Prenda Primary Key (IdPrenda)
Alter Table VENTA add constraint PK_Venta Primary Key (IdVenta)

/*Llaves Foraneas*/
Alter Table PRENDA ADD CONSTRAINT FK_PrendaMarca Foreign Key (IdPrenda)References
MARCA(IdMarca)
Alter Table PRENDA ADD CONSTRAINT FK_PrendaTalla Foreign Key (IdPrenda)References
TALLA(IdTalla)
Alter Table PRENDA ADD CONSTRAINT FK_PrendaDepartamento Foreign Key (IdPrenda)References
DEPARTAMENTO(IdDepartamento)
Alter Table PRENDA ADD CONSTRAINT FK_PrendaProveedor Foreign Key (IdPrenda)References
PROVEEDOR(IdProveedor)

Alter Table VENTA ADD CONSTRAINT FK_VentaCliente Foreign Key (IdVenta)References
Cliente(IdCliente)
Alter Table VENTA ADD CONSTRAINT FK_VentaPrenda Foreign Key (IdVenta)References
PRENDA(IdPrenda)

/*Indices*/
Create Index IX_Cliente ON CLIENTE(IdCliente)
Create Index IX_Departamento ON DEPARTAMENTO(IdDepartamento)
Create Index IX_Marca ON MARCA(IdMarca)
Create Index IX_Proveedor ON PROVEEDOR(IdProveedor)
Create Index IX_Talla ON TALLA(IdTalla)
Create Index IX_Prenda ON PRENDA(IdPrenda)
Create Index IX_Venta ON Venta(IdVenta)