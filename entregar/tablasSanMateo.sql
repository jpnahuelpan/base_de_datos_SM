DROP DATABASE pele_version;
CREATE DATABASE pele_version;

\c pele_version;

create schema s;

CREATE TABLE s.Emprendedor(
	rutEmprendedor VARCHAR(12) PRIMARY KEY,
	nombreEmprendedor VARCHAR(50),
	paginaWeb VARCHAR(100),
	telefonoEmprendedor integer,
	correoEmprendedor VARCHAR(100)
);

CREATE TABLE s.Cliente(
	rutCliente VARCHAR(12) PRIMARY KEY,
	nombreCliente VARCHAR(50),
	fechaNacimiento DATE,
	telefonoCliente integer,
	correoCliente VARCHAR(100) 
);

CREATE TABLE s.Producto(
	idProducto integer PRIMARY KEY,
	nombre VARCHAR(50),
	tamaño integer,
	peso integer,
	color VARCHAR(50),
	materiaPrincipal VARCHAR(50)
);

CREATE TABLE s.Direccion(
	idDireccion integer PRIMARY KEY,
	calle VARCHAR(50),
	numero integer,
	pasaje VARCHAR(50)
);

CREATE TABLE s.Categoria(
	idCategoria integer PRIMARY KEY,
	nombreCategoria VARCHAR(50)
);

CREATE TABLE s.MedioPago(
	idMedioPago integer PRIMARY KEY,
	tipo VARCHAR(50)
);

CREATE TABLE s.Maestro(
	idMaestro integer PRIMARY KEY,
	TipoVenta VARCHAR(50),
	Descripcion VARCHAR(200),
	fechaMaestro DATE,
	despacho BOOLEAN
);

CREATE TABLE s.Monto(
	montoNeto integer PRIMARY KEY,
	montoBruto integer
);

CREATE TABLE s.Region(
	region VARCHAR(100) PRIMARY KEY
	
);

CREATE TABLE s.Servicio(
	idServicio integer PRIMARY KEY,
	nombreServicio VARCHAR(50),
	tamaño integer,
	restriccionEdad SMALLINT,
	idCategoria integer,
	FOREIGN KEY(idCategoria) REFERENCES s.Categoria(idCategoria) on update cascade on delete cascade
); 

CREATE TABLE s.Ciudad(
	ciudad VARCHAR(50) PRIMARY KEY,
	region VARCHAR (100),
	FOREIGN KEY(region) REFERENCES s.Region(region) on update cascade on delete cascade
);
CREATE TABLE s.Tiene(
	idDireccion integer,
	ciudad VARCHAR(50),
	FOREIGN KEY(ciudad) REFERENCES s.Ciudad(ciudad) on update cascade on delete cascade,
	FOREIGN KEY(idDireccion) REFERENCES s.Direccion(idDireccion) on update cascade on delete cascade,
	PRIMARY KEY(idDireccion,ciudad)
);

CREATE TABLE s.Atiende(
	idDireccion integer,
	rutEmprendedor VARCHAR(12),
	FOREIGN KEY(idDireccion) REFERENCES s.Direccion(idDireccion) on update cascade on delete cascade,
	FOREIGN KEY(rutEmprendedor) REFERENCES s.Emprendedor(rutEmprendedor) on update cascade on delete cascade,	
	PRIMARY KEY (idDireccion, rutEmprendedor)
);

CREATE TABLE s.Despacho(
	idDireccion integer,
	rutCliente VARCHAR(12),
	FOREIGN KEY(idDireccion) REFERENCES s.Direccion(idDireccion) on update cascade on delete cascade,
	FOREIGN KEY(rutCliente) REFERENCES s.Cliente(rutCliente) on update cascade on delete cascade,
	PRIMARY KEY(idDireccion, rutCliente)
);
--DROP TABLE S.compraServicio;
CREATE TABLE s.compraServicio(
	rutCliente VARCHAR(12),
	idMaestro integer,
	idMedioPago integer,
	idServicio integer,
	FOREIGN KEY(rutCliente) REFERENCES s.Cliente(rutCliente) on update cascade on delete cascade,
	FOREIGN KEY(idServicio) REFERENCES s.Servicio(idServicio) on update cascade on delete cascade,
	FOREIGN KEY(idMaestro) REFERENCES s.Maestro(idMaestro) on update cascade on delete cascade,
	FOREIGN KEY(idMedioPago) REFERENCES s.MedioPago(idMedioPago) on update cascade on delete cascade,
	PRIMARY KEY(rutCliente,idMaestro,idMedioPago,idServicio)

);

CREATE TABLE s.ofreceServicio(
	rutEmprendedor VARCHAR(12),
	idServicio integer,
	fechaInicioS DATE,
	fechaFinS DATE,
	precio integer,
	FOREIGN KEY(rutEmprendedor) REFERENCES s.Emprendedor(rutEmprendedor) on update cascade on delete cascade,
	FOREIGN KEY(idServicio) REFERENCES s.Servicio(idServicio) on update cascade on delete cascade,
	PRIMARY KEY(rutEmprendedor,idServicio,fechaInicioS)
);


CREATE TABLE s.ofreceProducto(
	rutEmprendedor VARCHAR(12),
	idProducto integer,
	fechaInicioP DATE,
	fechaFinP DATE,
	stock integer,
	FOREIGN KEY(rutEmprendedor) REFERENCES s.Emprendedor(rutEmprendedor) on update cascade on delete cascade,
	FOREIGN KEY(idProducto) REFERENCES s.Producto(idProducto) on update cascade on delete cascade,
	PRIMARY KEY(rutEmprendedor,idProducto, fechaInicioP)
);
--DROP TABLE S.compraProducto;
CREATE TABLE s.compraProducto(
	idProducto integer,
	rutCliente VARCHAR(12),
	montoNeto integer,
	idMaestro integer,
	idMedioPago integer,
	FOREIGN KEY(idProducto) REFERENCES s.Producto(idProducto) on update cascade on delete cascade,
	FOREIGN KEY(rutCliente) REFERENCES s.Cliente(rutCliente) on update cascade on delete cascade,
	FOREIGN KEY(montoNeto) REFERENCES s.Monto(montoNeto) on update cascade on delete cascade,
	FOREIGN KEY(idMaestro) REFERENCES s.Maestro(idMaestro) on update cascade on delete cascade,
	FOREIGN KEY(idMedioPago) REFERENCES s.MedioPago(idMedioPago) on update cascade on delete cascade,
	PRIMARY KEY(idProducto,rutCliente,montoNeto,idMaestro,idMedioPago)

);
