select c.nombreCliente
from Cliente c,compraProducto p, Maestro m
where (c.rutCliente=p.rutCliente and p.idmaestro=m.idmaestro) and (m.fechaMaestro>'01-01-2012' and m.fechaMaestro<'31-12-2014' )
group by c.nombreCliente;

select c.nombreCliente
from Cliente c,compraProducto p, Maestro m, Producto t
where (c.rutCliente=p.rutCliente and p.idMaestro=m.idMaestro and p.idProducto=t.idProducto) and (m.fechaMaestro>'01-01-2012' and m.fechaMaestro<'31-12-2014' )
group by c.nombreCliente;

select t.ciudad
from tiene t 
where idDireccion in (
						select  d.idDireccion
						from Direccion d, Atiende a, Emprendedor e, ofreceServicio o, Servicio s
						where (s.idServicio=o.idServicio and o.rutEmprendedor=e.rutEmprendedor) and (e.rutEmprendedor=a.rutEmprendedor and a.idDireccion=d.idDireccion)
						);
						

)
select t.ciudad
from tiene t
where t.idDireccion in(
						select d.idDireccion
						from Direccion d, Despacho e, Cliente c, compraProducto m, Producto p
						where (p.idProducto=m.idProducto and m.rutCliente=c.rutCliente) and (c.rutCliente=e.rutCliente and e.idDireccion=d.idDireccion)
																							
);



create or replace view descuento(cliente,mes, totalPagado, nroCompras) as
select c.nombrecliente, p.montoNeto, count(*)
from Cliente c, Maestro m, compraProducto p,compraServicio s
where (c.rutCliente=s.rutCliente and s.idMaestro=m.idMaestro and m.fecha=MONTH(GET DATE()) ) or (c.rutCliente=p.rutCliente and p.idMaestro=m.idMaestro and m.fecha=MONTH(GET DATE()))
group by m.idMaestro;
select * from descuento;
select cliente, mes, nroCompras, totalPagado
where totalPagado= (select max(c2.totalpagado)
				   from descuento c2
				   );
