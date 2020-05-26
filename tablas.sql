CREATE DATABASE sm_db;

\c sm_db

CREATE TABLE cliente(
  rutCliente varchar(10) PRIMARY KEY,
  nombreCliente varchar(20),
  telefonoCliente integer,
  correoCliente varchar(20),
  direccionDespacho varchar(20),
  fechaNaciento date
);

CREATE TABLE emprendedor(
  rutEmprendedor varchar(10) PRIMARY KEY,
  nombreEmprendedor varchar(20),
  telefonoEmprendedor integer,
  correoEmprendedor varchar(20),
  pagWeb varchar(20),
  direccionLocal varchar(20)
);

CREATE TABLE productos(
  codigoProducto varchar(10) PRIMARY KEY,
  nombreProducto varchar(20),
  categoriaProducto varchar(15),
  tamaño integer,
  peso integer,
  color varchar(10),
  materiaPrincipal varchar(10)
);

CREATE TABLE servicios(
  codigoServicio varchar(10) PRIMARY KEY,
  nombreServicio varchar(20),
  categoriaServicio varchar(20),
  restriccionEdad integer,
  tiempo integer
);

CREATE TABLE ofrece(
  rutEmprendedor varchar(10) REFERENCES emprendedor(rutEmprendedor),
  codigoServicio varchar(10) REFERENCES servicios(codigoServicio),
  codigoProducto varchar(10) REFERENCES productos(codigoProducto),
  PRIMARY KEY (rutEmprendedor)
);

CREATE TABLE medioPago(
  idePago varchar(10) PRIMARY KEY,
  tipo varchar(10),
  monto integer,
  fecha date
);

CREATE TABLE maestro(
  ideMaestro integer PRIMARY KEY,
  descripcion text
);

CREATE TABLE perfil(
  rutPerfil varchar(10) PRIMARY KEY,
  claveIngreso varchar(12)
);

CREATE TABLE vender(
  rutCliente varchar(10) REFERENCES cliente(rutCliente),
  rutEmprendedor varchar(10) REFERENCES emprendedor(rutEmprendedor),
  idePago varchar(10) REFERENCES medioPago(idePago),
  ideMaestro integer REFERENCES maestro(ideMaestro),
  oferta integer,
  cantidad integer,
  fechaVenta date,
  iva integer,
  totalBruto integer,
  totalNeto integer,
  PRIMARY KEY (rutCliente, rutEmprendedor, idePago)
);