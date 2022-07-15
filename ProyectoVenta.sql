Drop database if exists DBProyectoVentas;
create database DBProyectoVentas;

use DBProyectoVentas;

Create table Cliente(
	codigoCliente int not null auto_increment,
    DPICliente varchar(15) not null,
    nombresCliente varchar (200) not null,
    direccionCliente varchar(150) not null,
    estado varchar (1) not null,
    primary key PK_codigoCliente (codigoCliente)
);


Create table Empleado(
	codigoEmpleado int not null auto_increment,
    DPIEmpleado varchar(15) not null,
    nombresEmpleado varchar(200) not null,
    telefonoEmpleado varchar(8) not null,
    estado varchar(1) not null,
    usuario varchar (15) not null,
    primary key PK_codigoEmpleado (codigoEmpleado)

);


create table Producto(
	codigoProducto int not null auto_increment,
    nombreProducto varchar(200) not null,
    precio double not null,
    stock int not null,
    estado varchar(1) not null,
	primary key PK_codigoProducto (codigoProducto)
);



create table Venta(
	codigoVenta int not null auto_increment,
    numeroSerie varchar(255) not null,
    fechaVenta date not null,
    monto double not null,
    estado varchar(1) not null,
	codigoCliente int not null,
    codigoEmpleado int not null,
    
    primary key PK_codigoVenta (codigoVenta),
    constraint FK_Venta_Cliente foreign key (codigoCliente) references Cliente (codigoCliente),
    constraint FK_Venta_Empleado foreign key (codigoEmpleado) references Empleado (codigoEmpleado)
);


Create table DetalleVenta(
	codigoDetalleVenta int not null auto_increment,
    codigoProducto int not null,
    cantidad int not null,
    precioVenta double not null,
    codigoVenta int not null,
    primary key PK_codigoDetalleVenta (codigoDetalleVenta),
    
    constraint FK_DetalleVenta_Producto foreign key (codigoProducto) references Producto (codigoProducto),
	constraint FK_DetalleVenta_Venta foreign key (codigoVenta) references Venta (codigoVenta)
);


insert into Cliente(DPICliente, nombresCliente, direccionCliente, estado)
	values ('123','Alejandro yuman','Guatemala','1');
insert into Cliente(DPICliente, nombresCliente, direccionCliente, estado)    
    values ('456','Carlos Alexander','Guatemala','1');
insert into Cliente(DPICliente, nombresCliente, direccionCliente, estado)    
    values ('789','Alison Yuman','Guatemala','1');
insert into Cliente(DPICliente, nombresCliente, direccionCliente, estado)    
    values ('987','Alba Godoy','Guatemala','1');
insert into Cliente(DPICliente, nombresCliente, direccionCliente, estado)    
    values ('654','Alexander Hernandez','Guatemala','1');



insert into Empleado(DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values('555','Juan Perez','54789562','1','JPerez');
insert into Empleado(DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values('555','Robert Muñoz','47851236','1','RMunoz');
insert into Empleado(DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values('555','Pablo Mariano','44789568','1','PMariano');
    
    
    
insert into Producto(nombreProducto, precio, stock, estado)
	values('Teclado Logitech','199.00','10','1');
insert into Producto(nombreProducto, precio, stock, estado)
	values('Mouse Logitech','299.00','15','1');
    
    
select * from Cliente;
select * from Empleado;




