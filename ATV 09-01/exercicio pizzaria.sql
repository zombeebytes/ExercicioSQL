CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
----------------------------------------------------------------------
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(255),
tamanho VARCHAR(10),
valor DECIMAL(6,2),
PRIMARY KEY (id)
);
INSERT INTO tb_pizzas(sabor, tamanho, valor)
VALUES ("4 Queijos", "Grande", 60.00),
("Margherita", "Grande", 42.90),
("Mussarela", "Broto", 29.90),
("Brócolis", "Grande", 58.90),
("Abóbrinha", "Grande", 49.90),
("Chocolate", "Broto", 37.90),
("Ratatouille", "Grande", 53.80),
("Banana com Doce de Leite", "Broto", 35.90);
ALTER TABLE tb_categorias ADD COLUMN quantidade INT;
ALTER TABLE tb_categorias ADD FOREIGN KEY (quantidade) 
REFERENCES tb_categorias(id_categoria); 

select * from tb_pizzas;
----------------------------------------------------------------------
CREATE TABLE tb_categorias(
id_categoria INT PRIMARY KEY,
categoria VARCHAR(50) NOT NULL,
desc_categoria VARCHAR(255));
INSERT INTO tb_categorias(id_categoria, categoria, desc_categoria)
VALUES(1, "Salgada", "Massa tradicional com recheios variados"),
(2, "Doce", "Massa tradicional com recheios doces"),
(3, "Vegetariana", "Massa tradicional com recheio sem carne"),
(4, "Especial", "Massa fina com borda recheada"),
(5, "Vegana", "Massa tradicional com recheio sem ingredientes de origem animal"); 
SELECT * FROM tb_categorias;
----------------------------------------------------------------------
SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE sabor LIKE 'M%';
SELECT * FROM tb_pizzas WHERE sabor LIKE '%M%';
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id = tb_categorias.id_categoria;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id = tb_categorias.id_categoria WHERE tb_categorias.categoria = 'Vegana';

