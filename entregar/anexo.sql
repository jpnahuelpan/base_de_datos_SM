create schema anexo;

create table anexo.user(
	usuario VARCHAR (100),
	privilegios VARCHAR(15),
	PRIMARY KEY (usuario)
);
	
CREATE OR REPLACE FUNCTION anexo.anadir_usuario(anexo.user.usuario%type,anexo.user.privilegios%type)
RETURNS VOID AS $$
BEGIN
	INSERT INTO anexo.user(usuario,privilegios)
	VALUES ($1,$2);
END $$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION anexo.devolver_privilegios(anexo.user.usuario%type)
RETURNS anexo.user.privilegios%type AS $$
BEGIN
	RETURN(SELECT privilegios FROM anexo.user WHERE usuario=$1);
END $$
LANGUAGE plpgsql;