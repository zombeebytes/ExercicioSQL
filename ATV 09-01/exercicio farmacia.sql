CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;
----------------------------------------------------------------------
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR(255),
descricao_categoria VARCHAR(500),
PRIMARY KEY(id)
);
INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ("Higiene Pessoal", "Produtos de higiene"),
("Maquiagens", "Cosméticos para aumentar a auto estima"),
("Medicamentos", "Medicamentos para o tratamento de doenças"),
("Suplemento Alimentar", "Vitaminas e Suplementos"),
("Bebidas", "Bebidas gaseificadas, sem açucar, água e outros");
SELECT * FROM tb_categorias;
----------------------------------------------------------------------
CREATE TABLE tb_produtos(
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR(255),
estoque INT,
preco DECIMAL (6,2),
classe VARCHAR(255));
ALTER TABLE tb_produtos ADD FOREIGN KEY (id) REFERENCES tb_categorias;

INSERT INTO tb_produtos(nome_produto, estoque, preco, classe)
VALUES ("Dipirona Monoidratada", 20, 6.99, "Analgésico"),
("Amoxicilina", 10, 52.90, "Antibiótico"),
("Lenços Umedecidos", 12, 10.80, "Higiene"),
("Fralda Infantil", 50, 69.90, "Higiene"),
("Kit Shampoo", 8, 55.00, "Beleza"),
("Paracetamol", 25, 10.25, "Analgésico"),
("Vitamina C", 14, 11.80, "Vitamina"),
("Esmalte", 6, 7.90, "Beleza");
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.nome_produto = tb_categorias.nome_categoria;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.nome_produto = tb_categorias.nome_categoria WHERE 'Medicamentos';






