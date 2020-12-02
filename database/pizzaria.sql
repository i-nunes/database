CREATE DATABASE db_pizzaria;
use db_pizzaria;

CREATE TABLE tb_categoria(
	id_cat int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50)
	);
CREATE TABLE tb_pizza(
	id_pizz int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome varchar(100),
    preco double,
    ingredientes varchar(255),
    tamanho char(5),
    id_cat int,
    FOREIGN KEY (id_cat) REFERENCES tb_categoria (id_cat)
	);
    
INSERT INTO tb_categoria (nome) VALUES ('Doce'), ('Salgada'), ('Vegetariana'), ('Especial'), ('Broto');
INSERT INTO tb_pizza (nome, preco, ingredientes, tamanho, id_cat) VALUES 
	('Mussarela', 20.0, 'Mussarela e molho de tomate', 'M', 2),
	('Mussarela de soja', 25.0, 'Mussarela de soja e molho de tomare', 'M', 3),
	('Calabresa', 22.0, 'Calabresa e cebola', 'M', 2),
	('Monte a sua', 35.0, 'Podendo misturar até 4 ingredientes', 'G', 4),
	('Sensação', 25.0, 'Chocolate, morango e leite condensado', 'M', 1),
	('Prestígio', 18.0, 'Chocolate, coco ralado e leite condensado', 'P', 1),
	('Mussarela', 10.0, 'Mussarela e mohlo de tomate', 'P', 5),
	('Frango c/ Catupiry', 30.0, 'Frango desfiado com catupiry', 'G', 2);
    
SELECT * FROM tb_pizza WHERE preco > 20.0;
SELECT (tb_pizza.nome), (tb_pizza.preco) FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.id_cat = tb_categoria.id_cat; 
SELECT * FROM tb_pizza WHERE id_cat = 1;