INSERT INTO cliente(rutCliente, nombreCliente, telefonoCliente, correoCliente, direccionDespacho, fechaNaciento)
VALUES ('20423565', 'Alejandro', 982375344, 'alejandro@gmail.com', 'Freire #1423', '12/05/1995'),
  ('20123565', 'Andrea', 982355344, 'andreaxd@gmail.com', 'Freire #1433', '22/05/1995'),
  ('20423365', 'Pedro', 982375345, 'pedroa@gmail.com', 'Freire #1323', '12/05/1994'),
  ('12763565', 'Roberto', 982375346, 'rob@gmail.com', 'Lynch #1421', '12/05/1975'),
  ('20415565', 'Fabiola', 982375347, 'fabi@gmail.com', 'Carrera #432', '12/12/1990'),
  ('15423565', 'Juan', 982375348, 'jj@gmail.com', 'Freire #2423', '09/05/1982'),
  ('18423941', 'Sandra', 982375349, 'sandra@gmail.com', 'Carrera #1223', '12/05/1993'),
  ('10923318', 'Rene', 972375344, 'ddrene@gmail.com', 'Mackena #1962', '12/01/1980'),
  ('15353565', 'Marco', 962375344, 'marc@gmail.com', 'Lynch #123', '12/05/1984'),
  ('19423565', 'Alejandro', 952375344, 'jano@gmail.com', 'Freire #1023', '12/05/1996');

INSERT INTO emprendedor(rutEmprendedor, nombreEmprendedor, telefonoEmprendedor, correoEmprendedor, pagWeb, direccionLocal)
VALUES ('20423565', 'Eduardo', 982370344, 'ed@gmail.com', 'www.sitio1.cl', 'Freire #1723'),
  ('20323565', 'sofia', 982351344, 'sofi@gmail.com', 'www.sitio2.cl', 'Freire #1533'),
  ('20423165', 'Rodrigo', 982375245, 'rod@gmail.com', 'www.sitio3.cl', 'Freire #323'),
  ('12753565', 'pablo', 982373346, 'pablo@gmail.com', 'www.sitio4.cl', 'Lynch #421'),
  ('21415565', 'Fabiana', 982374347, 'fabixd@gmail.com', 'www.sitio5.cl', 'Carrera #4432'),
  ('14423565', 'Jose', 982376348, 'jje@gmail.com', 'www.sitio6.cl', 'Freire #423'),
  ('18423942', 'Sandro', 982377349, 'sandro@gmail.com', 'www.sitio7.cl', 'Carrera #223'),
  ('10823318', 'Renekton', 972378344, 'renek@gmail.com', 'www.sitio8.cl', 'Mackena #962'),
  ('15453565', 'Marco Polo', 962379344, 'marcpolo@gmail.com', 'www.sitio9.cl', 'Lynch #3123'),
  ('19423561', 'Alejandria', 952375144, 'dria@gmail.com', 'www.sitio10.cl', 'Freire #2023');

INSERT INTO productos(codigoProducto,nombreProducto,categoriaProducto,tamaño,peso,color,materiaPrincipal)
VALUES ('P111' , 'Samsung A30' , 'celulares' , 15 , 1 , 'Blanco', 'plastico'),
       ('P222' , 'Huawei P30' , 'celulares' , 14 ,1 , 'azul', 'plastico'),
       ('P333' , 'Lavadora' , 'Hogar y cocina' , 85 , 29 , 'plateada' , 'metal'),
       ('P444' , 'diccionario' , 'libros' , 14 , 88 ,'Rojo', 'celulosa'), 
       ('P555', 'cigarros' , 'otros' , 8 , 1 , 'blanco' , 'tabaco'),
       ('P666' , 'playstation 4' , 'computacion' , 3.9 , 1 , 'negro' , 'plastico'),
       ('P777' , 'refrigerador' ,'electronica' , 170 , 132 , 'gris' , 'plastico'),
       ('P888' , 'cuaderno' , 'libreria' , 24 , 3 , 'azul' , 'celulosa' ),
       ('P999' , 'torta' , 'alimentacion' , 16 , 150 , 'blanca' , 'harina'),
       ('P100' , 'zapatillas' , 'moda y calzado' , 7 , 6 , 'verdes' , 'plastico');
  
    
INSERT INTO servicios(codigoServicio, nombreServicio, categoriaServicio, restriccionEdad, tiempo)
VALUES ('S111','internet','Tecnologia',18,1),
      ('S222','mascotas','veterenarios',18,1), 	
      ('S333','niñera','cuidado', 18,1),
      ('S444','Asistente','otros', 18,1),
      ('S555','Jardineria','trabajo', 18,1),
      ('S666','dentista','tratamiento', 18,1),
      ('S777','lenguaje','clases particulares', 18, 1),
      ('S888','Ropa','vestuario', 18, 1),
      ('S999','pizzas','alimentacion', 18,1),
      ('S100','vehiculos','limpiesa',18, 1);   

INSERT INTO ofrece(rutEmprendedor,codigoServicio,codigoProducto)
VALUES ('20423565', 'S111', 'P333'),
      ('20323565', 'S666', 'P100'),
      ('20423165', 'S333', 'P222'),
      ('12753565', 'S888', 'P555'),
      ('21415565', 'S100', 'P999'),
      ('14423565', 'S222', 'P777'),
      ('18423942', 'S444', 'P111'),
      ('10823318', 'S999', 'P666'),
      ('15453565', 'S555', 'P444'),
      ('19423561', 'S777', 'P888');



INSERT INTO medioPago(idePago,tipo,monto,fecha)
VALUES('A1', 'tarjeta', 150000,'12/1/2020'),
    ('A2', 'efectivo', 50000,'11/1/2020'),
    ('A3', 'tarjeta', 120000,'19/1/2020'),
    ('B1', 'online', 230000,'25/1/2020'),
    ('B2', 'efectivo', 560000,'22/12/2019'),
    ('B3', 'tarjeta', 120000,'15/1/2020'),
    ('C1', 'tarjeta', 120000,'12/1/2020'),
    ('C2', 'online', 80000,'26/1/2020'),
    ('C3', 'tarjeta', 20000,'28/12/2019'),
    ('A4', 'Efectivo', 360000,'18/12/2019');
    
    
          

INSERT INTO maestro(ideMaestro,descripcion)
VALUES(1, 'datos venta 1 ....'),
     (2, 'datos venta 2 ....'),
     (3, 'datos venta 3 ....'),
     (4, 'datos venta 4 ....'),
     (5, 'datos venta 5 ....'),
     (6, 'datos venta 6 ....'),
     (7, 'datos venta 7 ....'),
     (8, 'datos venta 8 ....'),
     (9, 'datos venta 8 ....'),
     (10, 'datos venta 8 ....');


INSERT INTO perfil(rutPerfil,claveIngreso)
VALUES ('20423565', 'clave1'),
       ('20323565', 'clave2'),
       ('20423165', 'clave3'),
       ('12753565', 'clave4'),
       ('21415565', 'clave5'),
       ('14423565', 'clave6'),
       ('18423942', 'clave7'),
       ('10823318', 'clave8'),
       ('15453565', 'clave9'),
       ('19423561', 'clave10');

  
INSERT INTO vender(rutCliente,rutEmprendedor,idePago,ideMaestro,oferta,cantidad,fechaVenta,iva,totalBruto,totalNeto)
VALUES ('20423565', '21415565','A1', 1, 120000, 3, '12/1/2020',19,8,6),
  ('20123565', '20423565', 'A2', 2, 42000, 2, '11/1/2020',19,4,5),
  ('20423365', '20323565', 'A3', 3, 100000, 1, '19/1/2020',19,8,6),
  ('12763565', '20423165', 'B1', 4, 190000, 1, '25/1/2020',19,9,6),
  ('20415565', '12753565', 'B2', 5, 410000, 1, '22/12/2019',19,3,6),
  ('15423565', '21415565', 'B3', 6, 80000, 2, '15/1/2020',19,1,2),
  ('18423941', '14423565', 'C1', 7, 90000, 3, '12/1/2020',19,4,2),
  ('10923318', '18423942', 'C2', 8, 65000, 4, '12/1/2020',19,4,3),
  ('15353565', '10823318', 'C3', 9, 17000, 2, '28/12/2019',19,5,8),
  ('19423565', '15453565', 'A4', 10, 220000, 1, '18/12/2019',19,7,1);
