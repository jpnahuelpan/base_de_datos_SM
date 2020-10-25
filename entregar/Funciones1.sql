CREATE OR REPLACE FUNCTION s.ingresar_vendedor(VARCHAR,
	VARCHAR,
	VARCHAR,
	integer,
	VARCHAR) 
RETURNS void AS $$
INSERT INTO s.Emprendedor(rutEmprendedor,
	nombreEmprendedor,
	paginaWeb,
	telefonoEmprendedor,
	correoEmprendedor) values($1,
	$2,
	$3,
	$4,
	$5) ;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION s.modificar_vendedor(VARCHAR,
	VARCHAR,
	VARCHAR,
	integer,
	VARCHAR) 
RETURNS void AS $$
UPDATE s.Emprendedor
SET nombreEmprendedor = $2,
	paginaWeb = $3,
	telefonoEmprendedor = $4,
	correoEmprendedor = $5
where rutEmprendedor = $1;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION s.eliminar_vendedor(VARCHAR)
RETURNS void AS $$
DELETE from s.Emprendedor where rutEmprendedor=$1;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION s.ingresar_cliente(VARCHAR,
	VARCHAR,
	DATE,
	integer,
	VARCHAR) 
RETURNS void AS $$
INSERT INTO s.Cliente(rutCliente,
	nombreCliente,
	fechaNacimiento,
	telefonoCliente,
	correoCliente) values($1,
	$2,
	$3,
	$4,
	$5) ;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION s.modificar_cliente(VARCHAR,
	VARCHAR,
	DATE,
	integer,
	VARCHAR) 
RETURNS void AS $$
UPDATE s.Cliente
SET nombreCliente = $2,
	fechaNacimiento = $3,
	telefonoCliente = $4,
	correoCliente = $5
where rutCliente = $1;
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION s.eliminar_cliente(VARCHAR)
RETURNS void AS $$
DELETE from s.Cliente where rutCliente=$1;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION s.ingresar_producto(integer,
	VARCHAR,
	integer,
	integer,
	VARCHAR,
    VARCHAR) 
RETURNS void AS $$
INSERT INTO s.Producto(idProducto,
	nombre,
	tamaño,
	peso,
	color,
    materiaPrincipal) values($1,
	$2,
	$3,
	$4,
	$5,
    $6);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION s.modificar_producto(integer,
	VARCHAR,
	integer,
	integer,
	VARCHAR,
    VARCHAR) 
RETURNS void AS $$
UPDATE s.Producto
SET nombre = $2,
	tamaño = $3,
	peso = $4,
	color = $5,
    materiaPrincipal =$6
where idProducto = $1;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION s.eliminar_producto(integer)
RETURNS void AS $$
DELETE from s.Producto where idProducto=$1;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION s.ingresar_mediopago(integer,
	VARCHAR) 
RETURNS void AS $$
INSERT INTO s.MedioPago(idMedioPago,
	tipo) values($1,
	$2);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION s.modificar_mediopago(integer,
	VARCHAR) 
RETURNS void AS $$
UPDATE s.MedioPago
SET tipo = $2
where idMedioPago = $1;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION s.eliminar_mediopago(integer)
RETURNS void AS $$
DELETE from s.MedioPago where idMedioPago=$1;
$$ LANGUAGE SQL;