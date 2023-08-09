CREATE TABLE usuario(
	id serial PRIMARY KEY,
	nome varchar(255),
	email varchar(255),
	senha varchar(255)
);
CREATE TABLE patrimonio(
	id serial PRIMARY KEY,
	nome varchar(255),
	data_criacao timestamp,
	valor decimal,
	usuario_id integer,
	CONSTRAINT fk_patrimonio_usuario FOREIGN KEY(usuario_id) REFERENCES usuario(id)
);
CREATE TABLE divida(
	id serial PRIMARY KEY,
	nome varchar(255),
	data_criacao timestamp,
	valor decimal,
	usuario_id integer,
	CONSTRAINT fk_divida_usuario FOREIGN KEY(usuario_id) REFERENCES usuario(id)
);
