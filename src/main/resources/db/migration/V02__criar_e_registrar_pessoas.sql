CREATE TABLE alga_pessoa (
	codigo BIGSERIAL PRIMARY KEY NOT NULL,
	nome VARCHAR(50) NOT NULL,
	ativo BOOLEAN  NOT NULL,
	logradouro VARCHAR(50) NOT NULL,
	numero VARCHAR(5) NOT NULL,
	complemento VARCHAR(50) NOT NULL,
	bairro VARCHAR(50) NOT NULL,
	cep VARCHAR(9) NOT NULL,
	cidade VARCHAR(50) NOT NULL,
	estado VARCHAR(50) NOT NULL
);

INSERT INTO alga_pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('João', true, 'Rua 19', '5A', 'Casa 1', 'Torres', '32150-200', 'Pinhaes', 'Pernambuco');
INSERT INTO alga_pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('João', true, 'Rua Coronel', '1', 'Casa', 'Lagoa', '98843-300', 'Recife', 'Maceio');
INSERT INTO alga_pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('João', true, 'Rua dos Ingleses', '200', 'Apt', 'Oeiras', '10020-223', 'Lisboa', 'Lisboa');
INSERT INTO alga_pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('João', true, 'Rua da Penha', '5003', 'Casa', 'Marbug', '40011-213', 'Frankfurt', 'Munich');
