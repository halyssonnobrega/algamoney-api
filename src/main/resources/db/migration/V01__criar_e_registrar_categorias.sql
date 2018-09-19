CREATE TABLE alga_categoria (
	codigo BIGSERIAL PRIMARY KEY NOT NULL,
	nome VARCHAR(50) NOT NULL
);

INSERT INTO alga_categoria (nome) values ('Lazer');
INSERT INTO alga_categoria (nome) values ('Alimentação');
INSERT INTO alga_categoria (nome) values ('Supermercado');
INSERT INTO alga_categoria (nome) values ('Farmácia');
INSERT INTO alga_categoria (nome) values ('Outros');