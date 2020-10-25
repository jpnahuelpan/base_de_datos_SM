CREATE role Administrador;
CREATE USER user_administrador WITH PASSWORD 'administrador' IN ROLE Administrador;
GRANT ALL PRIVILEGES ON DATABASE sm_db TO user_administrador;

CREATE role Vendedor;
GRANT INSERT, DELETE, UPDATE ON productos, servicios TO Vendedor;
GRANT SELECT ON cliente TO Vendedor; 
--GRANT SELECT ON VIEW V1 (todavia no hacemos la vista V1)

CREATE ROLE Cliente;
GRANT DELETE, UPDATE ON cliente TO Cliente;
GRANT SELECT (nombreProducto,categoriaProducto) ON productos TO Cliente;
GRANT SELECT (nombreEmprendedor, correoEmprendedor, telefonoEmprendedor, direccionLocal) ON emprendedor TO Cliente;