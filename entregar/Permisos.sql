--permisos administrador
GRANT SELECT,INSERT,DELETE,UPDATE ON s.Emprendedor  TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.Cliente  TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.Producto  TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.Direccion  TO administrador ;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.Categoria  TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.MedioPago  TO administrador ;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.Maestro  TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.Monto  TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.Region  TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.Servicio  TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.Ciudad TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.Tiene  TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.Atiende  TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.Despacho  TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.compraServicio  TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.ofreceServicio TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.ofreceProducto TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON s.compraProducto TO administrador;

--permisos vendedor
GRANT SELECT, UPDATE, DELETE ON s.Servicio  TO vendedor;
GRANT SELECT, UPDATE, DELETE ON s.Producto  TO vendedor;
GRANT SELECT, UPDATE, DELETE ON s.ofreceServicio TO vendedor;
GRANT SELECT, UPDATE, DELETE ON s.ofreceProducto TO vendedor;
GRANT SELECT ON s.Cliente TO vendedor;
--GRANT SELECT ON s.V1 TO vendedor;


--PERMISOS cliente
GRANT UPDATE,DELETE ON s.Cliente TO  cliente;

GRANT SELECT (nombreServicio) ON s.Servicio To cliente;
GRANT SELECT (restriccionEdad) ON s.Servicio To cliente;
GRANT SELECT (nombreCategoria) ON s.Categoria To cliente;

GRANT SELECT (precio) ON s.ofreceServicio TO cliente;
GRANT SELECT (fechaFinS) ON s.ofreceServicio to cliente;

GRANT SELECT (nombre) ON s.Producto TO cliente;
GRANT SELECT (peso) ON s.Producto TO cliente;
GRANT SELECT (color) ON s.Producto TO cliente;
GRANT SELECT (materiaPrincipal) ON s.Producto TO cliente;
GRANT SELECT (fechaFinP) ON s.ofreceProducto TO cliente;
GRANT SELECT (stock) ON s.ofreceProducto TO cliente; 

GRANT SELECT (nombreEmprendedor) ON s.Emprendedor TO cliente;
GRANT SELECT (correoEmprendedor) ON s.Emprendedor TO cliente;
GRANT SELECT (idDireccion) ON s.Atiende TO cliente;
GRANT SELECT (telefonoEmprendedor) ON s.Emprendedor TO cliente;