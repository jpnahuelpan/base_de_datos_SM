create role administrador;
create role vendedor;
create role cliente;

CREATE ROLE admin1
WITH LOGIN PASSWORD 'admin1'
VALID UNTIL '2025-01-01'
IN ROLE administrador;

create user Raul password 'Raul' in role vendedor;
create user Manuel password 'Manuel' in role vendedor;
create user Jose password 'Jose' in role vendedor;

select anexo.anadir_usuario('Raul','vendedor');
select anexo.anadir_usuario('Manuel','vendedor');
select anexo.anadir_usuario('Jose','vendedor');


--select * from anexo.user where privilegios='vendedor';

--select * from pf.vendedor;
