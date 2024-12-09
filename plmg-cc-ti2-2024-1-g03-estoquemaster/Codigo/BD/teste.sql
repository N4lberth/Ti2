CREATE TABLE usuario (
	id_user INTEGER NOT NULL,
	nome_user VARCHAR(45),
	email_user VARCHAR(60),
	senha_user VARCHAR(30),
	PRIMARY KEY (id_user)
);

INSERT INTO usuario VALUES 
(1, 'Gabriel Glatz Campos', 'gabrielglatzc@gmail.com', 'senhagabriel@1'),
(2, 'Mateus Nunes', 'mateusnunes@gmail.com', 'senhanunes@02'),
(3, 'Pedro Nunes', 'pedronunes@gmail.com', 'senhapedro@3'),
(4, 'Matheus Japa', 'matheusjapa@gmail.com', 'senhajapa@4'),
(5, 'Berth', 'berth@gmail.com', 'senhaberth@5');

CREATE TABLE categoria (
	id_cate INTEGER NOT NULL,
	nome_cate VARCHAR(45),
	PRIMARY KEY (id_cate)
);

INSERT INTO categoria VALUES 
(1, 'Eletrônicos'),
(2, 'Livros'),
(3, 'Roupas');

CREATE TABLE produto (
	id_prod INTEGER NOT NULL,
	nome_prod VARCHAR(100),
	quant_prod INTEGER,
	preco_prod DECIMAL(10,2),
	imagem_prod BYTEA,
	user_id INTEGER,
	cate_id INTEGER,
	PRIMARY KEY (id_prod),
	FOREIGN KEY (user_id) REFERENCES usuario (id_user),
	FOREIGN KEY (cate_id) REFERENCES categoria (id_cate)
);

INSERT INTO produto VALUES 
(1, 'Smartphone', 10, 1999.99, NULL, 1, 1),
(2, 'Livro de SQL', 20, 49.99, NULL, 2, 2),
(3, 'Camiseta', 15, 29.99, NULL, 3, 3);