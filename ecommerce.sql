CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
	idProduto int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome varchar(60),
    preco double NOT NULL,
    quantidade int NOT NULL,
    wireless boolean
	);

INSERT INTO tb_produtos (nome, preco, quantidade, wireless) VALUES
			('Smartphone', 1500.00, 1, True),
            ('Teclado Mecânico', 140.0, 1, True),
			('Roteador', 80.0, 1, False),
            ('Kit de Cabos USB', 50.0, 4, NULL),
            ('PC gamer', 8000.0, 1, False),
            ('Headset', 300.0, 1, True),
            ('Microfone', 550.0, 1, False),
            ('SSD 1T', 1200.0, 1, NULL);
            
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;
            
UPDATE tb_produtos SET preco = 7000.00 WHERE nome = 'PC gamer';