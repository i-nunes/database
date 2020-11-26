CREATE DATABASE db_rh;
use db_rh;

CREATE TABLE tb_contribuintes ( 
        idContribuinte int NOT NULL PRIMARY KEY AUTO_INCREMENT,
        nome varchar(60) NOT NULL,
        salario int,
        funcao varchar(30),
        area varchar(30)
	);
  
    
INSERT INTO tb_contribuintes (nome, salario, funcao, area) VALUES 
			('Leticia', 1400.00, 'Auxiliar Administrativa', 'Comercial'), 
            ('Jonathan', 6500.00, 'Gerente do time de marketing', 'Marketing'),
            ('Vanessa', 20000.00, 'CTO', 'Técnico'),
            ('Alex', 3000.00, 'Desenvolvedor junior', 'Técnico'),
            ('Caroline', 5000.00, 'Gerente Administrativa', 'Comercial');
            
SELECT * FROM tb_contribuintes WHERE salario >= 2000;
SELECT * FROM tb_contribuintes WHERE salario < 2000;

UPDATE tb_contribuintes SET salario = 2000 WHERE nome = 'Leticia';

